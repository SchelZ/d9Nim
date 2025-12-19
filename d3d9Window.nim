import winim/lean
import nimgl/imgui

import d3d9
import impl_win32
import impl_dx9

# ------------------------------------------------------------
# Globals
# ------------------------------------------------------------

var
  g_hWnd: HWND = 0
  g_D3D: ptr IDirect3D9 = nil
  g_Device: ptr IDirect3DDevice9 = nil
  g_PP: D3DPRESENT_PARAMETERS

  g_Running = true

# ------------------------------------------------------------
# Win32 WndProc
# ------------------------------------------------------------

proc WndProc(hwnd: HWND, msg: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
  if igWin32WndProcHandler(hwnd, msg, wParam, lParam) != 0:
    return 1

  case msg
  of WM_SIZE:
    if g_Device != nil and wParam != SIZE_MINIMIZED:
      g_PP.BackBufferWidth  = lParam.int32
      g_PP.BackBufferHeight = lParam.int32
      igDX9InvalidateDeviceObjects()
      discard g_Device.Reset(g_PP.addr)
      igDX9CreateDeviceObjects()
    return 0

  of WM_SYSCOMMAND:
    if (wParam and 0xfff0) == SC_KEYMENU:
      return 0

  of WM_DESTROY:
    PostQuitMessage(0)
    g_Running = false
    return 0

  else:
    return DefWindowProcW(hwnd, msg, wParam, lParam)

# ------------------------------------------------------------
# D3D9 Init / Shutdown
# ------------------------------------------------------------

proc CreateDevice(hwnd: HWND) =
  g_D3D = Direct3DCreate9(UINT(D3D_SDK_VERSION))
  if g_D3D.isNil:
    quit "Direct3DCreate9 failed"

  zeroMem(g_PP.addr, sizeof(g_PP))
  g_PP.Windowed = TRUE
  g_PP.SwapEffect = D3DSWAPEFFECT_DISCARD
  g_PP.BackBufferFormat = D3DFMT_UNKNOWN
  g_PP.EnableAutoDepthStencil = TRUE
  g_PP.AutoDepthStencilFormat = D3DFMT_D16
  g_PP.PresentationInterval = 1
  g_PP.hDeviceWindow = hwnd

  let hr = g_D3D.CreateDevice(
    UINT(D3DADAPTER_DEFAULT),
    D3DDEVTYPE_HAL,
    hwnd,
    DWORD(D3DCREATE_SOFTWARE_VERTEXPROCESSING),
    g_PP.addr,
    g_Device.addr
  )

  if FAILED(hr):
    quit "CreateDevice failed"


proc CleanupDevice() =
  if g_Device != nil:
    g_Device.Release()
    g_Device = nil

  if g_D3D != nil:
    g_D3D.Release()
    g_D3D = nil

# ------------------------------------------------------------
# Rendering
# ------------------------------------------------------------

proc RenderFrame() =
  if g_Device == nil:
    return

  let hrTest = g_Device.TestCooperativeLevel()
  if hrTest == D3DERR_DEVICELOST:
    Sleep(10)
    return
  elif hrTest == D3DERR_DEVICENOTRESET:
    igDX9InvalidateDeviceObjects()
    g_Device.Reset(g_PP.addr)
    igDX9CreateDeviceObjects()

  g_Device.Clear(0, nil, D3DCLEAR_TARGET.int32, D3DCOLOR_XRGB(30, 30, 30), 1.0, 0)

  if SUCCEEDED(g_Device.BeginScene()):
    igRender()
    igDX9RenderDrawData(igGetDrawData())
    discard g_Device.EndScene()

  discard g_Device.Present(nil, nil, 0, nil)

# ------------------------------------------------------------
# Main
# ------------------------------------------------------------

proc main() =
  let hInst = GetModuleHandleW(nil)

  var wc: WNDCLASSW
  wc.lpfnWndProc = WndProc
  wc.hInstance = hInst
  wc.lpszClassName = "NimDX9"
  wc.hCursor = LoadCursorW(0, IDC_ARROW)
  discard RegisterClassW(wc)

  let g_hWnd = CreateWindowW(
    wc.lpszClassName,
    "DX9 Texture + VB/IB",
    DWORD(WS_OVERLAPPEDWINDOW),
    100, 100, 900, 700,
    HWND(0), HMENU(0), hInst, nil
  )


  ShowWindow(g_hWnd, SW_SHOWDEFAULT)
  UpdateWindow(g_hWnd)

  # ------------------------------------------------------------
  # Init D3D + ImGui
  # ------------------------------------------------------------

  CreateDevice(g_hWnd)

  igCreateContext(nil)
  igStyleColorsDark(nil)

  discard igWin32Init(g_hWnd)
  discard igDX9Init(g_Device)
  discard igDX9CreateDeviceObjects()

  # ------------------------------------------------------------
  # Main loop
  # ------------------------------------------------------------

  var msg: MSG
  while g_Running:
    while PeekMessageW(msg.addr, 0, 0, 0, PM_REMOVE) != 0:
      TranslateMessage(msg.addr)
      DispatchMessageW(msg.addr)

    igWin32NewFrame()
    igDX9NewFrame()
    igNewFrame()

    # ---------------- UI ----------------
    igBegin("DX9 ImGui Window", nil)
    igText("DirectX 9 + Nim + ImGui")
    igText("FPS: %.1f", igGetIO().framerate)
    if igButton("Exit"):
      g_Running = false
    igEnd()
    # ------------------------------------

    igEndFrame()
    RenderFrame()

  # ------------------------------------------------------------
  # Shutdown
  # ------------------------------------------------------------

  igDX9Shutdown()
  igWin32Shutdown()
  igDestroyContext(nil)
  CleanupDevice()

main()
