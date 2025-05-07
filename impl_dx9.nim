# This is not fully working, still fixing some errors with directx9

import imgui

when defined(windows):
  import d3d9

var 
  g_pd3dDevice: LPDIRECT3DDEVICE9 = nil
  g_pVB: LPDIRECT3DVERTEXBUFFER9 = nil
  g_pIB: LPDIRECT3DINDEXBUFFER9 = nil
  g_FontTexture: LPDIRECT3DTEXTURE9 = nil
  g_VertexBufferSize: int = 5000
  g_IndexBufferSize: int = 10000


type 
  CUSTOMVERTEX {.pure.} = object 
    pos*: array[3, float]
    col*: int32
    uv*: array[2, float]


const D3DFVF_CUSTOMVERTEX = (D3DFVF_XYZ or D3DFVF_DIFFUSE or D3DFVF_TEX1)

# template IMGUI_COL_TO_DX9_ARGB*(col: untyped): untyped = (((col) and 0xFF00FF00) or (((col) and 0xFF0000) shr 16) or (((col) and 0xff) shl 16))


proc igDX9SetupRenderState*(data: ptr ImDrawData): void =
  var vp: D3DVIEWPORT9 
  vp.X = 0; vp.Y = 0
  vp.Width = (data.displaySize.x).int32; vp.Height = (data.displaySize.y).int32
  vp.MinZ = 0.0; vp.MaxZ = 1.0
  discard g_pd3dDevice.SetViewport(vp.addr)

  # Setup render state: fixed-pipeline, alpha-blending, no face culling, no depth testing, shade mode (for gradient), bilinear sampling.
  discard g_pd3dDevice.SetPixelShader(nil)
  discard g_pd3dDevice.SetVertexShader(nil)
  discard g_pd3dDevice.SetRenderState(D3DRS_CULLMODE, ord(D3DCULL.D3DCULL_NONE))
  discard g_pd3dDevice.SetRenderState(D3DRS_ZENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_ALPHABLENDENABLE, true)
  discard g_pd3dDevice.SetRenderState(D3DRS_BLENDOP, ord(D3DBLENDOP.D3DBLENDOP_ADD))
  discard g_pd3dDevice.SetRenderState(D3DRS_SRCBLEND, ord(D3DBLEND.D3DBLEND_SRCALPHA))
  discard g_pd3dDevice.SetRenderState(D3DRS_DESTBLEND, ord(D3DBLEND.D3DBLEND_INVSRCALPHA))
  discard g_pd3dDevice.SetRenderState(D3DRS_SEPARATEALPHABLENDENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_SRCBLENDALPHA, ord(D3DBLEND.D3DBLEND_ONE))
  discard g_pd3dDevice.SetRenderState(D3DRS_DESTBLENDALPHA, ord(D3DBLEND.D3DBLEND_INVSRCALPHA))
  discard g_pd3dDevice.SetRenderState(D3DRS_SCISSORTESTENABLE, true)
  discard g_pd3dDevice.SetRenderState(D3DRS_FOGENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_RANGEFOGENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_SPECULARENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_STENCILENABLE, false)
  discard g_pd3dDevice.SetRenderState(D3DRS_CLIPPING, true)
  discard g_pd3dDevice.SetRenderState(D3DRS_LIGHTING, false)
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLOROP, ord(D3DTEXTUREOP.D3DTOP_MODULATE))
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG1, D3DTA_TEXTURE)
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_COLORARG2, D3DTA_DIFFUSE)
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAOP, ord(D3DTEXTUREOP.D3DTOP_MODULATE))
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE)
  discard g_pd3dDevice.SetTextureStageState(0, D3DTSS_ALPHAARG2, D3DTA_DIFFUSE)
  discard g_pd3dDevice.SetTextureStageState(1, D3DTSS_COLOROP, ord(D3DTEXTUREOP.D3DTOP_DISABLE))
  discard g_pd3dDevice.SetTextureStageState(1, D3DTSS_ALPHAOP, ord(D3DTEXTUREOP.D3DTOP_DISABLE))
  discard g_pd3dDevice.SetSamplerState(0, D3DSAMP_MINFILTER, ord(D3DTEXTUREFILTERTYPE.D3DTEXF_LINEAR))
  discard g_pd3dDevice.SetSamplerState(0, D3DSAMP_MAGFILTER, ord(D3DTEXTUREFILTERTYPE.D3DTEXF_LINEAR))

  let
    L: float32  = data.displayPos.x + 0.5
    R: float32  = data.displayPos.x + data.displaySize.x + 0.5 
    T: float32  = data.displayPos.y + 0.5
    B: float32  = data.displayPos.y + data.displaySize.y + 0.5

  var 
    mat_identity: D3DMATRIX
    mat_projection: D3DMATRIX

  mat_identity.m = [[1.0f, 0.0f, 0.0f, 0.0f],  [0.0f, 1.0f, 0.0f, 0.0f],  [0.0f, 0.0f, 1.0f, 0.0f],  [0.0f, 0.0f, 0.0f, 1.0f]]
  mat_projection.m = [
      [ 2.0f/(R-L),   0.0f,         0.0f,   0.0f ],
      [ 0.0f,         2.0f/(T-B),   0.0f,   0.0f ],
      [ 0.0f,         0.0f,        -1.0f,   0.0f ],
      [ (R+L)/(L-R),  (T+B)/(B-T),  0.0f,   1.0f ],]

  discard g_pd3dDevice.SetTransform(D3DTS_WORLD, mat_identity.addr)
  discard g_pd3dDevice.SetTransform(D3DTS_VIEW, mat_identity.addr)
  discard g_pd3dDevice.SetTransform(D3DTS_PROJECTION, mat_projection.addr)



proc igDX9RenderDrawData*(data: ptr ImDrawData): void = 
  if data.displaySize.x <= 0.0 or data.displaySize.y <= 0.0: 
    return

  if g_pVB == nil or g_VertexBufferSize < data.totalVtxCount:
    if g_pVB != nil: 
      discard g_pVB.Release() 
      g_pVB = nil

    g_VertexBufferSize = data.totalVtxCount + 5000

    if g_pd3dDevice.CreateVertexBuffer(cast[int32](g_VertexBufferSize * sizeof(CUSTOMVERTEX)), D3DUSAGE_DYNAMIC or D3DUSAGE_WRITEONLY, D3DFVF_CUSTOMVERTEX, D3DPOOL_DEFAULT, g_pVB.addr, nil) < 0:
      return

  if g_pIB == nil or g_IndexBufferSize < data.totalIdxCount:
    if g_pIB != nil: 
      discard g_pIB.Release() 
      g_pIB = nil
      g_IndexBufferSize = data.totalIdxCount + 10000
      if g_pd3dDevice.CreateIndexBuffer(cast[int32](g_IndexBufferSize * sizeof(ImDrawIdx)), D3DUSAGE_DYNAMIC or D3DUSAGE_WRITEONLY, if sizeof(ImDrawIdx) == 2: D3DFMT_INDEX16 else: D3DFMT_INDEX32, D3DPOOL_DEFAULT, g_pIB.addr, nil) < 0:
        return
    
  var d3d9_state_block: ptr IDirect3DStateBlock9 = nil
  if g_pd3dDevice.CreateStateBlock(D3DSBT_ALL, d3d9_state_block.addr) < 0:
    return

  var 
    last_world: D3DMATRIX 
    last_view: D3DMATRIX 
    last_projection: D3DMATRIX

    vtx_dst: ptr CUSTOMVERTEX
    idx_dst: ptr ImDrawIdx

  discard g_pd3dDevice.GetTransform(D3DTS_WORLD, last_world.addr)
  discard g_pd3dDevice.GetTransform(D3DTS_VIEW, last_view.addr)
  discard g_pd3dDevice.GetTransform(D3DTS_PROJECTION, last_projection.addr)

  if g_pVB.Lock(0, cast[int32](data.totalVtxCount * sizeof(CUSTOMVERTEX)), cast[ptr pointer](vtx_dst.addr), D3DLOCK_DISCARD) < 0:
    return
  if g_pIB.Lock(0, cast[int32](data.totalIdxCount * sizeof(ImDrawIdx)), cast[ptr pointer](idx_dst.addr), D3DLOCK_DISCARD) < 0:
    return  

  for n in 0 ..< data.cmdListsCount:
    var cmd_list = data.cmdLists[n]
    for i in 0 ..< cmd_list.vtxBuffer.size:
      var vtx_src = cmd_list.vtxBuffer.data[i]
      vtx_dst.pos[0] = vtx_src.pos.x
      vtx_dst.pos[1] = vtx_src.pos.y
      vtx_dst.pos[2] = 0.0f
      vtx_dst.col = cast[int32]((vtx_src.col and 0xFF00FF00.uint32) or ((vtx_src.col and 0xFF0000.uint32) shr 16) or ((vtx_src.col and 0xFF.uint32) shr 16))
      vtx_dst.uv[0] = vtx_src.uv.x
      vtx_dst.uv[1] = vtx_src.uv.y
      # vtx_dst = vtx_dst + 1
      # vtx_src = vtx_src + 1
    copyMem(idx_dst, cmd_list.idxBuffer.data, cmd_list.idxBuffer.size * sizeof(ImDrawIdx))
    # idx_dst = idx_dst.sizeof() + cmd_list.idxBuffer.sizeof()
  
  discard g_pVB.Unlock()
  discard g_pIB.Unlock()
  discard g_pd3dDevice.SetStreamSource(0'i32, g_pVB, 0'i32, sizeof(CUSTOMVERTEX).int32)
  discard g_pd3dDevice.SetIndices(g_pIB)
  discard g_pd3dDevice.SetFVF(D3DFVF_CUSTOMVERTEX)

  igDX9SetupRenderState(data)
  var 
    global_vtx_offset: int = 0
    global_idx_offset: int = 0
    clip_off: ImVec2 = data.displayPos




proc igDX9Init*(device: ptr IDirect3DDevice9): bool {.discardable.} = 
  let io = igGetIO()
  io.backendRendererName = "imgui_impl_dx9"
  io.backendFlags = (io.backendFlags.int32 or ImGuiBackendFlags.RendererHasVtxOffset.int32).ImGuiBackendFlags  # We can honor the ImDrawCmd::VtxOffset field, allowing for large meshes.

  g_pd3dDevice = device
  discard g_pd3dDevice.AddRef()
  return true

proc igDX9InavidateDeviceObjects*(): void = 
  if not cast[bool](g_pd3dDevice): 
    return
  if cast[bool](g_pVB): 
    discard g_pVB.Release() 
    g_pVB = nil
  if cast[bool](g_pIB): 
    discard g_pIB.Release() 
    g_pIB = nil
  if cast[bool](g_FontTexture): 
    discard g_FontTexture.Release() 
    g_FontTexture = nil 
    igGetIO().fonts.texID = nil

proc igDX9Shutdown*(): void = 
  igDX9InavidateDeviceObjects()
  if not cast[bool](g_pd3dDevice): 
    discard g_pd3dDevice.Release()
    g_pd3dDevice = nil


proc igDX9CreateFontsTexture*(): bool {.discardable.} =
  let io = igGetIO()
  var 
    pixels: ptr uint8 
    text_w: int32 
    text_h: int32
    bytes_per_pixel: int32
    tex_locked_rect: D3DLOCKED_RECT

  io.fonts.getTexDataAsRGBA32(pixels.addr, text_w.addr, text_h.addr, bytes_per_pixel.addr)

  # Upload texture to graphics system
  g_FontTexture = nil
  if g_pd3dDevice.CreateTexture(text_w, text_h, 1, D3DUSAGE_DYNAMIC, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, g_FontTexture.addr, nil) < 0:
    return false
  if g_FontTexture.LockRect(0, tex_locked_rect.addr, nil, 0) != D3D_OK:
    return false
  for y in 0 ..< text_h:
    copyMem(cast[cuchar](tex_locked_rect.pBits) + tex_locked_rect.Pitch * y, pixels + (text_w * bytes_per_pixel) * y, (text_w * bytes_per_pixel))
    g_FontTexture.UnlockRect(0)

  # Store our identifier
  io.fonts.texID = cast[ImTextureID](g_FontTexture)

  return true


proc igDX9CreateDeviceObjects*(): bool {.discardable.} =
  if g_pd3dDevice == nil:
    return false
  if not igDX9CreateFontsTexture():
    return false
  return true

proc igDX9NewFrame*(): void = 
  if g_FontTexture == nil:
    igDX9CreateDeviceObjects()
