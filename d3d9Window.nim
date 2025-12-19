import winim/lean
import d3d9

type
  TVertex = object
    x, y, z, rhw: float32
    color: DWORD
    tu, tv: float32

var
  d3d: ptr IDirect3D9
  dev: ptr IDirect3DDevice9
  pp: D3DPRESENT_PARAMETERS

  backbuf: ptr IDirect3DSurface9
  origRT: ptr IDirect3DSurface9
  origDS: ptr IDirect3DSurface9

  rt: ptr IDirect3DSurface9
  ds: ptr IDirect3DSurface9

  vb: ptr IDirect3DVertexBuffer9
  ib: ptr IDirect3DIndexBuffer9
  tex: ptr IDirect3DTexture9

proc fillChecker(t: ptr IDirect3DTexture9; w, h: int) =
  var lr: D3DLOCKED_RECT
  let hr = t.LockRect(0, lr.addr, nil, 0)
  if FAILED(hr): quit "LockRect failed"
  let pitch = int(lr.Pitch)
  let base = cast[ptr uint8](lr.pBits)
  for y in 0..<h:
    let row = cast[ptr UncheckedArray[uint32]](
      cast[pointer](cast[uint](base) + uint(y * pitch))
    )
    for x in 0..<w:
      let c = ((x shr 4) xor (y shr 4)) and 1
      let col = if c == 0: 0xFFFFD080'u32 else: 0xFF2040FF'u32
      row[x] = col
  discard t.UnlockRect(0)

proc initD3D(hwnd: HWND) =
  if dxPath.len == 0: quit "DXSDK_DIR not set"

  d3d = Direct3DCreate9(UINT(D3D_SDK_VERSION))
  if d3d.isNil: quit "Direct3DCreate9 failed"

  zeroMem(pp.addr, sizeof(pp))
  pp.Windowed = TRUE
  pp.SwapEffect = D3DSWAPEFFECT_DISCARD
  pp.hDeviceWindow = hwnd
  pp.BackBufferFormat = D3DFMT_UNKNOWN

  let hrDev = d3d.CreateDevice(
    UINT(D3DADAPTER_DEFAULT),
    D3DDEVTYPE_HAL,
    hwnd,
    DWORD(D3DCREATE_SOFTWARE_VERTEXPROCESSING),
    pp.addr,
    dev.addr
  )
  if FAILED(hrDev) or dev.isNil: quit "CreateDevice failed"

  dev.GetRenderTarget(0, origRT.addr)
  dev.GetDepthStencilSurface(origDS.addr)
  dev.GetBackBuffer(0, 0, D3DBACKBUFFER_TYPE_MONO, backbuf.addr)

  dev.CreateRenderTarget(512, 512, D3DFMT_A8R8G8B8, 0, 0, TRUE, rt.addr, nil)
  dev.CreateDepthStencilSurface(512, 512, D3DFMT_D16, 0, 0, TRUE, ds.addr, nil)

  dev.SetRenderTarget(0, rt)
  dev.SetDepthStencilSurface(ds)

  dev.SetRenderState(D3DRS_LIGHTING, 0)
  dev.SetRenderState(D3DRS_ZENABLE, 0)

  dev.CreateTexture(256, 256, 1, 0, D3DFMT_A8R8G8B8, D3DPOOL_MANAGED, tex.addr, nil)
  if tex.isNil: quit "CreateTexture failed"
  fillChecker(tex, 256, 256)

  dev.SetSamplerState(0, D3DSAMP_MAGFILTER, DWORD(D3DTEXF_LINEAR))
  dev.SetSamplerState(0, D3DSAMP_MINFILTER, DWORD(D3DTEXF_LINEAR))
  dev.SetSamplerState(0, D3DSAMP_MIPFILTER, DWORD(D3DTEXF_NONE))
  dev.SetSamplerState(0, D3DSAMP_ADDRESSU, DWORD(D3DTADDRESS_CLAMP))
  dev.SetSamplerState(0, D3DSAMP_ADDRESSV, DWORD(D3DTADDRESS_CLAMP))

  dev.SetTextureStageState(0, D3DTSS_COLOROP, DWORD(D3DTOP_MODULATE))
  dev.SetTextureStageState(0, D3DTSS_COLORARG1, DWORD(D3DTA_TEXTURE))
  dev.SetTextureStageState(0, D3DTSS_COLORARG2, DWORD(D3DTA_DIFFUSE))
  dev.SetTextureStageState(0, D3DTSS_ALPHAOP, DWORD(D3DTOP_SELECTARG1))
  dev.SetTextureStageState(0, D3DTSS_ALPHAARG1, DWORD(D3DTA_TEXTURE))

  let fvf = DWORD(D3DFVF_XYZRHW or D3DFVF_DIFFUSE or D3DFVF_TEX1)

  dev.CreateVertexBuffer(UINT(sizeof(TVertex) * 4), 0, fvf, D3DPOOL_MANAGED, vb.addr, nil)
  dev.CreateIndexBuffer(UINT(sizeof(uint16) * 6), 0, D3DFMT_INDEX16, D3DPOOL_MANAGED, ib.addr, nil)

  if vb.isNil or ib.isNil: quit "Create VB/IB failed"

  var pv: pointer
  vb.Lock(0, 0, pv.addr, 0)
  let v = cast[ptr UncheckedArray[TVertex]](pv)

  v[0] = TVertex(x: 64,  y: 64,  z: 0, rhw: 1, color: D3DCOLOR_XRGB(255, 255, 255), tu: 0, tv: 0)
  v[1] = TVertex(x: 448, y: 64,  z: 0, rhw: 1, color: D3DCOLOR_XRGB(255, 255, 255), tu: 1, tv: 0)
  v[2] = TVertex(x: 448, y: 448, z: 0, rhw: 1, color: D3DCOLOR_XRGB(255, 255, 255), tu: 1, tv: 1)
  v[3] = TVertex(x: 64,  y: 448, z: 0, rhw: 1, color: D3DCOLOR_XRGB(255, 255, 255), tu: 0, tv: 1)

  discard vb.Unlock()

  var pi: pointer
  ib.Lock(0, 0, pi.addr, 0)
  let idx = cast[ptr UncheckedArray[uint16]](pi)
  idx[0] = 0
  idx[1] = 1
  idx[2] = 2
  idx[3] = 0
  idx[4] = 2
  idx[5] = 3
  discard ib.Unlock()

proc render() =
  dev.SetRenderTarget(0, rt)
  dev.SetDepthStencilSurface(ds)

  dev.ColorFill(rt, nil, D3DCOLOR_XRGB(20, 20, 60))
  dev.BeginScene()

  dev.SetTexture(0, tex)
  let fvf = DWORD(D3DFVF_XYZRHW or D3DFVF_DIFFUSE or D3DFVF_TEX1)
  dev.SetFVF(fvf)
  dev.SetStreamSource(0, vb, 0, UINT(sizeof(TVertex)))
  dev.SetIndices(ib)
  dev.DrawIndexedPrimitive(D3DPT_TRIANGLELIST, 0, 0, 4, 0, 2)

  dev.EndScene()

  dev.SetRenderTarget(0, origRT)
  dev.SetDepthStencilSurface(origDS)

  dev.StretchRect(rt, nil, backbuf, nil, 0)
  dev.Present(nil, nil, HWND(0), nil)

proc cleanup() =
  if tex != nil: tex.Release()
  if ib != nil: ib.Release()
  if vb != nil: vb.Release()
  if rt != nil: rt.Release()
  if ds != nil: ds.Release()
  if origRT != nil: origRT.Release()
  if origDS != nil: origDS.Release()
  if backbuf != nil: backbuf.Release()
  if dev != nil: dev.Release()
  if d3d != nil: d3d.Release()

proc WndProc(hwnd: HWND, msg: UINT, w: WPARAM, l: LPARAM): LRESULT {.stdcall.} =
  if msg == WM_DESTROY:
    PostQuitMessage(0)
    return 0
  DefWindowProcW(hwnd, msg, w, l)

proc main() =
  let hInst = GetModuleHandleW(nil)

  var wc: WNDCLASSW
  wc.lpfnWndProc = WndProc
  wc.hInstance = hInst
  wc.lpszClassName = "NimDX9"
  wc.hCursor = LoadCursorW(0, IDC_ARROW)
  discard RegisterClassW(wc)

  let hwnd = CreateWindowW(
    wc.lpszClassName,
    "DX9 Texture + VB/IB",
    DWORD(WS_OVERLAPPEDWINDOW),
    100, 100, 900, 700,
    HWND(0), HMENU(0), hInst, nil
  )

  ShowWindow(hwnd, SW_SHOW)
  UpdateWindow(hwnd)

  initD3D(hwnd)

  var msg: MSG
  while true:
    while PeekMessageW(msg.addr, 0, 0, 0, PM_REMOVE) != 0:
      if msg.message == WM_QUIT:
        cleanup()
        return
      TranslateMessage(msg.addr)
      DispatchMessageW(msg.addr)
    render()

main()
