import winim/com, d3d9

var 
  d3d: LPDIRECT3D9
  d3ddev: LPDIRECT3DDEVICE9
  d3dpp: D3DPRESENT_PARAMETERS
  d3dFont: LPD3DXFONT

proc initD3D(hWnd: pointer): void = 
  d3d = Direct3DCreate9(D3D_SDK_VERSION) 

  ZeroMemory(d3dpp.addr, sizeof(d3dpp))
  d3dpp.Windowed = true
  d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD  
  d3dpp.hDeviceWindow = hWnd
  d3dpp.BackBufferFormat = D3DFMT_UNKNOWN
  d3dpp.EnableAutoDepthStencil = true
  d3dpp.AutoDepthStencilFormat = D3DFMT_D16
  d3d.CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, hWnd, D3DCREATE_SOFTWARE_VERTEXPROCESSING, d3dpp.addr, d3ddev.addr)
  D3DXCreateFont(d3ddev, 40, 0, FW_BOLD, 1, false, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, ANTIALIASED_QUALITY, DEFAULT_PITCH or FF_DONTCARE, "Arial", d3dFont.addr);

proc render_frame(): void =
  d3ddev.Clear(0, nil, D3DCLEAR_TARGET, D3DCOLOR_XRGB(0, 40, 100), 1.0, 0)
  d3ddev.BeginScene()

  var r: RECT
  SetRect(addr r, 100, 100, 0, 0)
  d3dFont.DrawTextW(nil, "Directx9 from nim!", -1, r.addr, DT_NOCLIP, D3DCOLOR_XRGB(255, 255, 0))

  d3ddev.EndScene()
  d3ddev.Present(nil, nil, 0, nil)

proc cleanD3D(): void =
  d3dFont.Release()
  d3ddev.Release()   
  d3d.Release()  

proc WindowProc(hwnd: HWND, message: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
  case message
  of WM_PAINT:
    var ps: PAINTSTRUCT
    var hdc = BeginPaint(hwnd, ps)
    defer: EndPaint(hwnd, ps)

    var rect: RECT
    GetClientRect(hwnd, rect)
    DrawText(hdc, "Hello, Windows!", -1, rect, DT_SINGLELINE or DT_CENTER or DT_VCENTER)
    return 0

  of WM_DESTROY:
    PostQuitMessage(0)
    return 0

  else:
    return DefWindowProc(hwnd, message, wParam, lParam)

proc main() =
  var
    hInstance = GetModuleHandle(nil)
    msg: MSG
    wndclass: WNDCLASS
    hwnd: pointer
  wndclass.style = CS_HREDRAW or CS_VREDRAW
  wndclass.lpfnWndProc = WindowProc
  wndclass.cbClsExtra = 0
  wndclass.cbWndExtra = 0
  wndclass.hInstance = hInstance
  wndclass.hIcon = LoadIcon(0, IDI_APPLICATION)
  wndclass.hCursor = LoadCursor(0, IDC_ARROW)
  wndclass.hbrBackground = GetStockObject(WHITE_BRUSH)
  wndclass.lpszMenuName = nil
  wndclass.lpszClassName = "HelloWin"

  if RegisterClass(wndclass) == 0:
    MessageBox(0, "This program requires Windows NT!", "HelloWin", MB_ICONERROR)
    return

  hwnd = cast[pointer](CreateWindow(wndclass.lpszClassName, "The Hello Program", WS_OVERLAPPEDWINDOW, 100, 100, 1280, 800, nil, nil, wndclass.hInstance, nil))

  initD3D(hwnd)
  ShowWindow(cast[HWND](hwnd), SW_SHOW)
  UpdateWindow(cast[HWND](hwnd))


  while GetMessage(msg, 0, 0, 0) != 0:
    TranslateMessage(msg)
    DispatchMessage(msg)
    render_frame()
  cleanD3D()
main()
