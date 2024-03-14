import winim/lean, d3d9

var 
  d3d: LPDIRECT3D9
  d3ddev: LPDIRECT3DDEVICE9
  d3dpp: D3DPRESENT_PARAMETERS

proc initD3D(hwnd: HWND): void = 
    d3d = Direct3DCreate9(D3D_SDK_VERSION) 

    ZeroMemory(d3dpp.addr, sizeof(d3dpp))
    d3dpp.Windowed = true 
    d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD  
    d3dpp.hDeviceWindow = hwnd
    d3dpp.BackBufferFormat = D3DFMT_UNKNOWN
    d3dpp.EnableAutoDepthStencil = true
    d3dpp.AutoDepthStencilFormat = D3DFMT_D16
    discard d3d.CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, hwnd, D3DCREATE_SOFTWARE_VERTEXPROCESSING, d3dpp.addr, d3ddev.addr)

proc render_frame(): void =
    discard d3ddev.Clear(0, nil, D3DCLEAR_TARGET, D3DCOLOR_XRGB(0, 40, 100), 1.0, 0)
    discard d3ddev.BeginScene()

    discard d3ddev.EndScene()
    discard d3ddev.Present(nil, nil, nil, nil)


proc cleanD3D(): void =
    discard d3ddev.Release()   
    discard d3d.Release()  

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
        hwnd: HWND
        msg: MSG
        wc: WNDCLASS

    wc.style = CS_HREDRAW or CS_VREDRAW
    wc.lpfnWndProc = WindowProc
    wc.cbClsExtra = 0
    wc.cbWndExtra = 0
    wc.hInstance = hInstance
    wc.hIcon = LoadIcon(0, IDI_APPLICATION)
    wc.hCursor = LoadCursor(0, IDC_ARROW)
    wc.hbrBackground = GetStockObject(WHITE_BRUSH)
    wc.lpszMenuName = nil
    wc.lpszClassName = "HelloWin"

    if RegisterClass(wc) == 0:
        MessageBox(0, "This program requires Windows NT!", "HelloWin", MB_ICONERROR)
        return

    hwnd = CreateWindow("HelloWin", "The Hello Program", WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, 0, 0, hInstance, nil)

    ShowWindow(hwnd, SW_SHOW)
    initD3D(hwnd)

    while GetMessage(msg, 0, 0, 0) != 0:
        TranslateMessage(msg)
        DispatchMessage(msg)
        render_frame()
    cleanD3D()
main()
