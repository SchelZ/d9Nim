import winim/lean
import d3d9
import nimgl/imgui

import impl_dx9
import impl_win32

var
  g_d3d: ptr IDirect3D9 = nil
  g_dev: ptr IDirect3DDevice9 = nil
  g_pp: D3DPRESENT_PARAMETERS
  g_hwnd: HWND = 0

proc createDevice(hwnd: HWND): bool =
  g_d3d = Direct3DCreate9(UINT(D3D_SDK_VERSION))
  if g_d3d == nil:
    return false

  zeroMem(addr g_pp, sizeof(g_pp))
  g_pp.Windowed = TRUE
  g_pp.SwapEffect = D3DSWAPEFFECT_DISCARD
  g_pp.hDeviceWindow = hwnd
  g_pp.BackBufferFormat = D3DFMT_UNKNOWN
  g_pp.EnableAutoDepthStencil = TRUE
  g_pp.AutoDepthStencilFormat = D3DFMT_D16
  g_pp.PresentationInterval = DWORD(D3DPRESENT_INTERVAL_ONE) # vsync

  # Try HW VP then fallback to SW VP
  var hr = g_d3d.CreateDevice(
    UINT(D3DADAPTER_DEFAULT),
    D3DDEVTYPE_HAL,
    hwnd,
    DWORD(D3DCREATE_HARDWARE_VERTEXPROCESSING),
    addr g_pp,
    addr g_dev
  )

  if FAILED(hr) or g_dev == nil:
    hr = g_d3d.CreateDevice(
      UINT(D3DADAPTER_DEFAULT),
      D3DDEVTYPE_HAL,
      hwnd,
      DWORD(D3DCREATE_SOFTWARE_VERTEXPROCESSING),
      addr g_pp,
      addr g_dev
    )
    if FAILED(hr) or g_dev == nil:
      return false
  echo hr
  return true

proc cleanupDevice() =
  if g_dev != nil:
    g_dev.Release()
    g_dev = nil
  if g_d3d != nil:
    g_d3d.Release()
    g_d3d = nil

proc resetDevice(): bool =
  igDX9InvalidateDeviceObjects()
  let hr = g_dev.Reset(addr g_pp)
  if FAILED(hr):
    return false
  discard igDX9CreateDeviceObjects()
  return true

proc renderFrame() =
  # Handle device lost
  let coop = g_dev.TestCooperativeLevel()
  if coop == D3DERR_DEVICELOST:
    Sleep(10)
    return
  if coop == D3DERR_DEVICENOTRESET:
    discard resetDevice()
    return

  # Start new frame (same flow as NimGL example)
  igDX9NewFrame()
  igWin32NewFrame()
  igNewFrame()

  # Demo UI
  var showDemo = true
  igShowDemoWindow(addr showDemo)

  igBegin("Hello, DX9 + Win32 (Nim)")
  igText("This follows the NimGL frame flow.")
  igText("FPS: %.1f", igGetIO().framerate)
  igEnd()

  igRender()

  # Render
  g_dev.SetRenderState(D3DRS_ZENABLE, 0)
  g_dev.SetRenderState(D3DRS_ALPHABLENDENABLE, 1)
  g_dev.SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA.int32)
  g_dev.SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA.int32)
  g_dev.SetRenderState(D3DRS_ALPHATESTENABLE, FALSE)
  g_dev.SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE.int32)
  g_dev.SetRenderState(D3DRS_LIGHTING, FALSE)
  g_dev.SetRenderState(D3DRS_SCISSORTESTENABLE, TRUE)

  g_dev.Clear(0, nil, D3DCLEAR_TARGET or D3DCLEAR_ZBUFFER, D3DCOLOR_XRGB(30, 30, 40), 1.0, 0)

  if SUCCEEDED(g_dev.BeginScene()):
    igDX9RenderDrawData(igGetDrawData())
    g_dev.EndScene()

  g_dev.Present(nil, nil, HWND(0), nil)
var g_imguiAlive = false

proc WndProc(hwnd: HWND, msg: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
  if g_imguiAlive:
    discard igWin32WndProcHandler(hwnd, msg, wParam, lParam)

  case msg
  of WM_SIZE:
    if g_dev != nil and wParam != SIZE_MINIMIZED:
      g_pp.BackBufferWidth  = UINT(LOWORD(lParam))
      g_pp.BackBufferHeight = UINT(HIWORD(lParam))
      discard resetDevice()
    return 0

  of WM_DESTROY:
    PostQuitMessage(0)
    return 0

  else:
    discard

  DefWindowProcW(hwnd, msg, wParam, lParam)

proc main() =
  let hInst = GetModuleHandleW(nil)

  var wc: WNDCLASSW
  zeroMem(addr wc, sizeof(wc))
  wc.lpfnWndProc = WndProc
  wc.hInstance = hInst
  wc.lpszClassName = "NimDX9ImGui"
  wc.hCursor = LoadCursorW(0, IDC_ARROW)
  discard RegisterClassW(addr wc)

  g_hwnd = CreateWindowW(
    wc.lpszClassName,
    "DX9 + Win32 + Dear ImGui (Nim)",
    DWORD(WS_OVERLAPPEDWINDOW),
    100, 100, 1280, 720,
    HWND(0), HMENU(0), hInst, nil
  )
  ShowWindow(g_hwnd, SW_SHOW)
  UpdateWindow(g_hwnd)
  let context = igCreateContext()
  if not createDevice(g_hwnd):
    cleanupDevice()
    quit "Failed to create D3D9 device"

  # # ImGui init (same idea as NimGL example)
  # igStyleColorsDark()

  if not igWin32Init(g_hwnd):
    quit "igWin32Init failed"
  if not igDX9Init(g_dev):
    quit "igDX9Init failed"
  discard igDX9CreateDeviceObjects()
  g_imguiAlive = true
  var msg: MSG
  while true:
    while PeekMessageW(addr msg, 0, 0, 0, PM_REMOVE) != 0:
      if msg.message == WM_QUIT:
        g_imguiAlive = false
        # shutdown
        igDX9Shutdown()
        igWin32Shutdown()
        igDestroyContext(context)
        cleanupDevice()
        return
      TranslateMessage(addr msg)
      DispatchMessageW(addr msg)

    renderFrame()

main()
