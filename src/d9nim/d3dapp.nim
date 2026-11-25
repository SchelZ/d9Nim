## Window and device setup with a render loop.
##
## Create D3DPOOL_DEFAULT resources in onDeviceReset and release them in
## onDeviceLost, they don't survive a device reset.

import std/[monotimes, times]
import winim/lean
import ./d3d9

type
  FrameProc* = proc (app: D3DApp, dt: float32)
  AppProc* = proc (app: D3DApp)
  MessageProc* = proc (app: D3DApp, msg: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT

  D3DApp* = ref object
    hwnd*: HWND
    d3d*: ptr IDirect3D9
    dev*: ptr IDirect3DDevice9
    pp*: D3DPRESENT_PARAMETERS
    clearColor*: D3DCOLOR
    autoClear*: bool
    onFrame*: FrameProc
    onDeviceReset*: AppProc
    onDeviceLost*: AppProc
    onResize*: AppProc
    onMessage*: MessageProc   ## return non-zero if you handled the message
    fps*: float32
    frameCount*: int
    resetHooks, lostHooks: seq[AppProc]
    messageHooks: seq[MessageProc]
    beforeFrameHooks: seq[FrameProc]
    afterFrameHooks: seq[FrameProc]
    shutdownHooks: seq[AppProc]
    running, needsReset, resourcesAlive, minimized: bool
    pendingError: ref Exception
    fpsFrames: int
    fpsTime: float

const WindowClass = "d9nimApp"

proc width*(app: D3DApp): int {.inline.} = int(app.pp.BackBufferWidth)
proc height*(app: D3DApp): int {.inline.} = int(app.pp.BackBufferHeight)

# extra callbacks for libraries, so they don't replace the user's ones
proc addResetHook*(app: D3DApp, p: AppProc) = app.resetHooks.add p
proc addLostHook*(app: D3DApp, p: AppProc) = app.lostHooks.add p
proc addMessageHook*(app: D3DApp, p: MessageProc) = app.messageHooks.add p
proc addBeforeFrameHook*(app: D3DApp, p: FrameProc) = app.beforeFrameHooks.add p
proc addAfterFrameHook*(app: D3DApp, p: FrameProc) = app.afterFrameHooks.add p
proc addShutdownHook*(app: D3DApp, p: AppProc) = app.shutdownHooks.add p

proc deviceLost(app: D3DApp) =
  if not app.resourcesAlive: return
  app.resourcesAlive = false
  if app.onDeviceLost != nil: app.onDeviceLost(app)
  for i in countdown(app.lostHooks.high, 0): app.lostHooks[i](app)

proc deviceReset(app: D3DApp) =
  if app.resourcesAlive: return
  for h in app.resetHooks: h(app)
  if app.onDeviceReset != nil: app.onDeviceReset(app)
  app.resourcesAlive = true

proc reset*(app: D3DApp): bool {.discardable.} =
  ## Resets the device with app.pp. Returns false if the device is still lost.
  app.deviceLost()
  if FAILED app.dev.Reset(addr app.pp):
    app.needsReset = true
    return false
  app.needsReset = false
  app.deviceReset()
  true

proc close*(app: D3DApp) =
  if app.hwnd != 0: DestroyWindow(app.hwnd)

proc wndProc(hwnd: HWND, msg: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
  let app = cast[D3DApp](GetWindowLongPtrW(hwnd, GWLP_USERDATA))
  if app == nil or app.pendingError != nil:
    return DefWindowProcW(hwnd, msg, wParam, lParam)
  # don't let exceptions go through Windows, run() raises them
  try:
    for h in app.messageHooks:
      let r = h(app, msg, wParam, lParam)
      if r != 0: return r
    if app.onMessage != nil:
      let r = app.onMessage(app, msg, wParam, lParam)
      if r != 0: return r
    case msg
    of WM_SIZE:
      app.minimized = wParam == SIZE_MINIMIZED
      let w = UINT(LOWORD(lParam))
      let h = UINT(HIWORD(lParam))
      if not app.minimized and w > 0 and h > 0 and
         (w != app.pp.BackBufferWidth or h != app.pp.BackBufferHeight):
        app.pp.BackBufferWidth = w
        app.pp.BackBufferHeight = h
        app.needsReset = true
      return 0
    of WM_SYSCOMMAND:
      if (wParam and 0xFFF0) == SC_KEYMENU: return 0    # don't open the menu on Alt
    of WM_DESTROY:
      app.running = false
      SetWindowLongPtrW(hwnd, GWLP_USERDATA, 0)
      app.hwnd = 0
      GC_unref(app)
      return 0
    else: discard
  except Exception as e:
    app.pendingError = e
    return 0
  DefWindowProcW(hwnd, msg, wParam, lParam)

proc registerClass() =
  var wc: WNDCLASSEXW
  if GetClassInfoExW(GetModuleHandleW(nil), WindowClass, addr wc) != 0: return
  wc.cbSize = UINT(sizeof(wc))
  wc.style = CS_HREDRAW or CS_VREDRAW
  wc.lpfnWndProc = wndProc
  wc.hInstance = GetModuleHandleW(nil)
  wc.hCursor = LoadCursorW(0, IDC_ARROW)
  wc.hIcon = LoadIconW(0, IDI_APPLICATION)
  wc.lpszClassName = WindowClass
  if RegisterClassExW(addr wc) == 0:
    raise newException(OSError, "RegisterClassExW failed")

proc newD3DApp*(title = "d9Nim", width = 1280, height = 720,
                vsync = true, depthBuffer = true, resizable = true,
                show = true): D3DApp =
  ## Creates the window and the device. Raises D3DError if the device can't be created.
  result = D3DApp(clearColor: D3DCOLOR_XRGB(0, 0, 0), autoClear: true)
  registerClass()

  let style = if resizable: WS_OVERLAPPEDWINDOW
              else: WS_OVERLAPPED or WS_CAPTION or WS_SYSMENU or WS_MINIMIZEBOX
  var r = RECT(left: 0, top: 0, right: LONG(width), bottom: LONG(height))
  AdjustWindowRect(addr r, DWORD(style), FALSE)
  result.hwnd = CreateWindowW(WindowClass, title, DWORD(style), CW_USEDEFAULT, CW_USEDEFAULT,
                              r.right - r.left, r.bottom - r.top, 0, 0, GetModuleHandleW(nil), nil)
  if result.hwnd == 0:
    raise newException(OSError, "CreateWindowW failed")
  GC_ref(result)   # unref in WM_DESTROY
  SetWindowLongPtrW(result.hwnd, GWLP_USERDATA, cast[LONG_PTR](result))

  result.d3d = Direct3DCreate9(D3D_SDK_VERSION)
  if result.d3d == nil:
    DestroyWindow(result.hwnd)
    raise newException(D3DError, "Direct3DCreate9 failed: no Direct3D 9 runtime")

  result.pp.Windowed = TRUE
  result.pp.SwapEffect = D3DSWAPEFFECT_DISCARD
  result.pp.hDeviceWindow = result.hwnd
  result.pp.BackBufferFormat = D3DFMT_UNKNOWN
  result.pp.BackBufferWidth = UINT(width)
  result.pp.BackBufferHeight = UINT(height)
  result.pp.PresentationInterval = if vsync: D3DPRESENT_INTERVAL_ONE else: D3DPRESENT_INTERVAL_IMMEDIATE
  if depthBuffer:
    result.pp.EnableAutoDepthStencil = TRUE
    result.pp.AutoDepthStencilFormat = D3DFMT_D24S8

  var hr: HRESULT = -1
  for flags in [D3DCREATE_HARDWARE_VERTEXPROCESSING, D3DCREATE_SOFTWARE_VERTEXPROCESSING]:
    hr = result.d3d.CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, result.hwnd, flags,
                                 addr result.pp, addr result.dev)
    if SUCCEEDED(hr): break
    if depthBuffer and result.pp.AutoDepthStencilFormat == D3DFMT_D24S8:
      result.pp.AutoDepthStencilFormat = D3DFMT_D16
      hr = result.d3d.CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, result.hwnd, flags,
                                   addr result.pp, addr result.dev)
      if SUCCEEDED(hr): break
  if FAILED(hr):
    release result.d3d
    DestroyWindow(result.hwnd)
    check hr, "CreateDevice"

  if show:
    ShowWindow(result.hwnd, SW_SHOW)
    UpdateWindow(result.hwnd)

proc shutdown(app: D3DApp) =
  app.deviceLost()
  for i in countdown(app.shutdownHooks.high, 0): app.shutdownHooks[i](app)
  release app.dev
  release app.d3d
  if app.hwnd != 0: DestroyWindow(app.hwnd)

proc renderFrame(app: D3DApp, dt: float32) =
  let coop = app.dev.TestCooperativeLevel()
  if coop == D3DERR_DEVICELOST:
    app.deviceLost()
    Sleep(20)
    return
  if coop == D3DERR_DEVICENOTRESET or app.needsReset:
    if not app.reset(): return
    if app.onResize != nil: app.onResize(app)
    return

  for h in app.beforeFrameHooks: h(app, dt)
  if app.autoClear:
    var flags = D3DCLEAR_TARGET
    if app.pp.EnableAutoDepthStencil != 0:
      flags = flags or D3DCLEAR_ZBUFFER
      if app.pp.AutoDepthStencilFormat == D3DFMT_D24S8: flags = flags or D3DCLEAR_STENCIL
    app.dev.Clear(0, nil, flags, app.clearColor, 1.0, 0)
  if SUCCEEDED app.dev.BeginScene():
    try:
      if app.onFrame != nil: app.onFrame(app, dt)
      for h in app.afterFrameHooks: h(app, dt)
    finally:
      app.dev.EndScene()
  if app.dev.Present(nil, nil, 0, nil) == D3DERR_DEVICELOST:
    app.deviceLost()

proc run*(app: D3DApp) =
  ## Runs until the window is closed, then releases everything.
  app.running = true
  app.deviceReset()
  var last = getMonoTime()
  app.fpsTime = 0
  var msg: MSG
  try:
    while app.running:
      while PeekMessageW(addr msg, 0, 0, 0, PM_REMOVE) != 0:
        if msg.message == WM_QUIT: app.running = false
        TranslateMessage(addr msg)
        DispatchMessageW(addr msg)
      if app.pendingError != nil:
        let e = app.pendingError
        app.pendingError = nil
        raise e
      if not app.running: break
      if app.minimized:
        Sleep(10)
        last = getMonoTime()
        continue
      let now = getMonoTime()
      let dt = float32(float((now - last).inNanoseconds) / 1e9)
      last = now
      app.renderFrame(dt)
      inc app.frameCount
      inc app.fpsFrames
      app.fpsTime += dt
      if app.fpsTime >= 0.5:
        app.fps = float32(float(app.fpsFrames) / app.fpsTime)
        app.fpsFrames = 0
        app.fpsTime = 0
  finally:
    app.shutdown()
