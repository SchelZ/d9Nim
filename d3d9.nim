import os, strutils
import winim/lean

static:
  if not existsEnv("DXSDK_DIR"):
    doAssert false, "DXSDK_DIR is missing at compile-time. Set it to your DirectX SDK (June 2010) folder."

const dxPath* = (if existsEnv("DXSDK_DIR"): getEnv("DXSDK_DIR").replace("\\", "/") else: "")

when dxPath.len != 0:
  const dxInclude = "-I\"" & dxPath & "/Include\""
  {.passC: dxInclude.}

  when defined(i386):
    {.passL: "\"" & dxPath & "/Lib/x86/d3d9.lib\"".}
    {.passL: "\"" & dxPath & "/Lib/x86/d3dx9.lib\"".}
  else:
    {.passL: "\"" & dxPath & "/Lib/x64/d3d9.lib\"".}
    {.passL: "\"" & dxPath & "/Lib/x64/d3dx9.lib\"".}

{.pragma: d3d9h, header: "d3d9.h".}
{.pragma: d3dx9h, header: "d3dx9core.h".}
{.pragma: d3dx9mathh, header: "d3dx9math.h".}

const
  D3D_SDK_VERSION* = 32'u32
  D3DADAPTER_DEFAULT* = 0'u32
  D3DCREATE_SOFTWARE_VERTEXPROCESSING* = 0x00000020'u32
  D3DCLEAR_TARGET* = 0x00000001'u32

  D3DFVF_XYZRHW* = 0x004'u32
  D3DFVF_DIFFUSE* = 0x040'u32
  D3DFVF_TEX1* = 0x100'u32

  D3DTA_SELECTMASK* = 0x0000000F'u32
  D3DTA_DIFFUSE* = 0x00000000'u32
  D3DTA_CURRENT* = 0x00000001'u32
  D3DTA_TEXTURE* = 0x00000002'u32

type
  D3DDEVTYPE* {.importcpp: "D3DDEVTYPE", d3d9h, size: 4.} = enum
    D3DDEVTYPE_HAL = 1
    D3DDEVTYPE_REF = 2
    D3DDEVTYPE_SW  = 3

  D3DSWAPEFFECT* {.importcpp: "D3DSWAPEFFECT", d3d9h, size: 4.} = enum
    D3DSWAPEFFECT_DISCARD = 1
    D3DSWAPEFFECT_FLIP    = 2
    D3DSWAPEFFECT_COPY    = 3

  D3DFORMAT* {.importcpp: "D3DFORMAT", d3d9h, size: 4.} = enum
    D3DFMT_UNKNOWN = 0
    D3DFMT_A8R8G8B8 = 21
    D3DFMT_X8R8G8B8 = 22
    D3DFMT_R5G6B5   = 23
    D3DFMT_D16      = 80
    D3DFMT_D24S8    = 75
    D3DFMT_INDEX16  = 101
    D3DFMT_INDEX32  = 102

  D3DPOOL* {.importcpp: "D3DPOOL", d3d9h, size: 4.} = enum
    D3DPOOL_DEFAULT   = 0
    D3DPOOL_MANAGED   = 1
    D3DPOOL_SYSTEMMEM = 2
    D3DPOOL_SCRATCH   = 3
  
  D3DRESOURCETYPE* {.importcpp: "D3DRESOURCETYPE", d3d9h, size: 4.} = enum
    D3DRTYPE_SURFACE      = 1
    D3DRTYPE_VOLUME       = 2
    D3DRTYPE_TEXTURE      = 3
    D3DRTYPE_VOLUMETEXTURE= 4
    D3DRTYPE_CUBETEXTURE  = 5
    D3DRTYPE_VERTEXBUFFER = 6
    D3DRTYPE_INDEXBUFFER  = 7

  D3DPRIMITIVETYPE* {.importcpp: "D3DPRIMITIVETYPE", d3d9h, size: 4.} = enum
    D3DPT_TRIANGLELIST = 4

  D3DMULTISAMPLE_TYPE* {.importcpp: "D3DMULTISAMPLE_TYPE", d3d9h, size: 4.} = enum
    D3DMULTISAMPLE_NONE = 0

  D3DBACKBUFFER_TYPE* {.importcpp: "D3DBACKBUFFER_TYPE", d3d9h, size: 4.} = enum
    D3DBACKBUFFER_TYPE_MONO = 0

  D3DRENDERSTATETYPE* {.importcpp: "D3DRENDERSTATETYPE", d3d9h, size: 4.} = enum
    D3DRS_ZENABLE = 7
    D3DRS_LIGHTING = 137

  D3DTEXTURESTAGESTATETYPE* {.importcpp: "D3DTEXTURESTAGESTATETYPE", d3d9h, size: 4.} = enum
    D3DTSS_COLOROP = 1
    D3DTSS_COLORARG1 = 2
    D3DTSS_COLORARG2 = 3
    D3DTSS_ALPHAOP = 4
    D3DTSS_ALPHAARG1 = 5
    D3DTSS_ALPHAARG2 = 6

  D3DSAMPLERSTATETYPE* {.importcpp: "D3DSAMPLERSTATETYPE", d3d9h, size: 4.} = enum
    D3DSAMP_ADDRESSU = 1
    D3DSAMP_ADDRESSV = 2
    D3DSAMP_MAGFILTER = 5
    D3DSAMP_MINFILTER = 6
    D3DSAMP_MIPFILTER = 7

  D3DTEXTUREOP* {.importcpp: "D3DTEXTUREOP", d3d9h, size: 4.} = enum
    D3DTOP_DISABLE = 1
    D3DTOP_SELECTARG1 = 2
    D3DTOP_SELECTARG2 = 3
    D3DTOP_MODULATE = 4

  D3DTEXTUREFILTERTYPE* {.importcpp: "D3DTEXTUREFILTERTYPE", d3d9h, size: 4.} = enum
    D3DTEXF_NONE = 0
    D3DTEXF_POINT = 1
    D3DTEXF_LINEAR = 2

  D3DTEXTUREADDRESS* {.importcpp: "D3DTEXTUREADDRESS", d3d9h, size: 4.} = enum
    D3DTADDRESS_WRAP = 1
    D3DTADDRESS_MIRROR = 2
    D3DTADDRESS_CLAMP = 3

type
  D3DRECT* {.importcpp: "D3DRECT", d3d9h, bycopy, pure.} = object
    x1*, y1*, x2*, y2*: int32

  D3DLOCKED_RECT* {.importcpp: "D3DLOCKED_RECT", d3d9h, bycopy, pure.} = object
    Pitch*: int32
    pBits*: pointer

  D3DSURFACE_DESC* {.importcpp: "D3DSURFACE_DESC", d3d9h, bycopy, pure.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: uint32
    Pool*: D3DPOOL
    MultiSampleType*: D3DMULTISAMPLE_TYPE
    MultiSampleQuality*: uint32
    Width*: uint32
    Height*: uint32

  D3DDISPLAYMODE* {.importcpp: "D3DDISPLAYMODE", d3d9h, bycopy, pure.} = object
    Width*: uint32
    Height*: uint32
    RefreshRate*: uint32
    Format*: D3DFORMAT

  D3DVIEWPORT9* {.importcpp: "D3DVIEWPORT9", d3d9h, bycopy, pure.} = object
    X*, Y*: uint32
    Width*, Height*: uint32
    MinZ*, MaxZ*: FLOAT

  D3DPRESENT_PARAMETERS* {.importcpp: "D3DPRESENT_PARAMETERS", d3d9h, bycopy, pure.} = object
    BackBufferWidth*: UINT
    BackBufferHeight*: UINT
    BackBufferFormat*: D3DFORMAT
    BackBufferCount*: UINT
    MultiSampleType*: UINT
    MultiSampleQuality*: DWORD
    SwapEffect*: D3DSWAPEFFECT
    hDeviceWindow*: HWND
    Windowed*: BOOL
    EnableAutoDepthStencil*: BOOL
    AutoDepthStencilFormat*: D3DFORMAT
    Flags*: DWORD
    FullScreen_RefreshRateInHz*: UINT
    PresentationInterval*: UINT

  

type
  IDirect3D9* {.importcpp: "IDirect3D9", d3d9h, pure.} = object
  IDirect3DDevice9* {.importcpp: "IDirect3DDevice9", d3d9h, pure.} = object
  IDirect3DResource9* {.importcpp: "IDirect3DResource9", d3d9h, pure.} = object
  IDirect3DSurface9* {.importcpp: "IDirect3DSurface9", d3d9h, pure.} = object
  IDirect3DVertexBuffer9* {.importcpp: "IDirect3DVertexBuffer9", d3d9h, pure.} = object
  IDirect3DIndexBuffer9* {.importcpp: "IDirect3DIndexBuffer9", d3d9h, pure.} = object
  IDirect3DBaseTexture9* {.importcpp: "IDirect3DBaseTexture9", d3d9h, pure.} = object
  IDirect3DTexture9* {.importcpp: "IDirect3DTexture9", d3d9h, pure.} = object
  ID3DXFont* {.importcpp: "ID3DXFont", d3dx9h, pure.} = object

proc Direct3DCreate9*(sdk: UINT): ptr IDirect3D9
  {.importc: "Direct3DCreate9", header: "d3d9.h", stdcall.}

proc Release*(self: ptr IDirect3D9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DDevice9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DResource9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DSurface9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DVertexBuffer9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DIndexBuffer9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr IDirect3DTexture9): ULONG {.importcpp: "#->Release()", d3d9h, discardable.}
proc Release*(self: ptr ID3DXFont): ULONG {.importcpp: "#->Release()", d3dx9h, discardable.}

proc CreateDevice*(self: ptr IDirect3D9,
    Adapter: UINT,
    DeviceType: D3DDEVTYPE,
    hFocusWindow: HWND,
    BehaviorFlags: DWORD,
    pPresentationParameters: ptr D3DPRESENT_PARAMETERS,
    ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT
  {.importcpp: "#->CreateDevice(@)", d3d9h.}

proc Reset*(self: ptr IDirect3DDevice9, pp: ptr D3DPRESENT_PARAMETERS): HRESULT
  {.importcpp: "#->Reset(@)", d3d9h, discardable.}

proc Clear*(self: ptr IDirect3DDevice9,
    Count: DWORD,
    pRects: pointer,
    Flags: DWORD,
    Color: DWORD,
    Z: FLOAT,
    Stencil: DWORD): HRESULT
  {.importcpp: "#->Clear(@)", d3d9h, discardable.}

proc BeginScene*(self: ptr IDirect3DDevice9): HRESULT {.importcpp: "#->BeginScene()", d3d9h, discardable.}
proc EndScene*(self: ptr IDirect3DDevice9): HRESULT {.importcpp: "#->EndScene()", d3d9h, discardable.}

proc Present*(self: ptr IDirect3DDevice9,
      pSourceRect: pointer,
      pDestRect: pointer,
      hDestWindowOverride: HWND,
      pDirtyRegion: pointer): HRESULT
  {.importcpp: "#->Present(@)", d3d9h, discardable.}

proc SetRenderState*(self: ptr IDirect3DDevice9, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT
  {.importcpp: "#->SetRenderState(@)", d3d9h, discardable.}

proc GetBackBuffer*(self: ptr IDirect3DDevice9,
      iSwapChain: UINT,
      iBackBuffer: UINT,
      Type: D3DBACKBUFFER_TYPE,
      ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->GetBackBuffer(@)", d3d9h, discardable.}


proc CreateRenderTarget*(self: ptr IDirect3DDevice9,
  Width, Height: UINT,
  Format: D3DFORMAT,
  MultiSample: UINT,
  MultiSampleQuality: DWORD,
  Lockable: BOOL,
  ppSurface: ptr ptr IDirect3DSurface9,
  pSharedHandle: pointer): HRESULT
  {.importcpp: "#->CreateRenderTarget(@)", d3d9h, discardable.}

proc GetRenderTarget*(self: ptr IDirect3DDevice9, Index: DWORD, ppRenderTarget: ptr ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->GetRenderTarget(@)", d3d9h, discardable.}

proc SetRenderTarget*(self: ptr IDirect3DDevice9, Index: DWORD, pRenderTarget: ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->SetRenderTarget(@)", d3d9h, discardable.}

proc CreateDepthStencilSurface*(self: ptr IDirect3DDevice9,
  Width, Height: UINT,
  Format: D3DFORMAT,
  MultiSample: UINT,
  MultiSampleQuality: DWORD,
  Discard: BOOL,
  ppSurface: ptr ptr IDirect3DSurface9,
  pSharedHandle: pointer): HRESULT
  {.importcpp: "#->CreateDepthStencilSurface(@)", d3d9h, discardable.}

proc GetDepthStencilSurface*(self: ptr IDirect3DDevice9, ppSurface: ptr ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->GetDepthStencilSurface(@)", d3d9h, discardable.}

proc SetDepthStencilSurface*(self: ptr IDirect3DDevice9, pSurface: ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->SetDepthStencilSurface(@)", d3d9h, discardable.}

proc ColorFill*(self: ptr IDirect3DDevice9, pSurface: ptr IDirect3DSurface9, pRect: pointer, Color: DWORD): HRESULT
  {.importcpp: "#->ColorFill(@)", d3d9h, discardable.}

proc StretchRect*(self: ptr IDirect3DDevice9,
  pSourceSurface: ptr IDirect3DSurface9,
  pSourceRect: pointer,
  pDestSurface: ptr IDirect3DSurface9,
  pDestRect: pointer,
  Filter: DWORD): HRESULT
  {.importcpp: "#->StretchRect(@)", d3d9h, discardable.}

proc CreateVertexBuffer*(self: ptr IDirect3DDevice9,
  Length: UINT,
  Usage: DWORD,
  FVF: DWORD,
  Pool: D3DPOOL,
  ppVertexBuffer: ptr ptr IDirect3DVertexBuffer9,
  pSharedHandle: pointer): HRESULT
  {.importcpp: "#->CreateVertexBuffer(@)", d3d9h, discardable.}

proc Lock*(self: ptr IDirect3DVertexBuffer9,
  OffsetToLock: UINT,
  SizeToLock: UINT,
  ppbData: ptr pointer,
  Flags: DWORD): HRESULT
  {.importcpp: "#->Lock(@)", d3d9h, discardable.}

proc Unlock*(self: ptr IDirect3DVertexBuffer9): HRESULT {.importcpp: "#->Unlock()", d3d9h, discardable.}

proc CreateIndexBuffer*(self: ptr IDirect3DDevice9,
  Length: UINT,
  Usage: DWORD,
  Format: D3DFORMAT,
  Pool: D3DPOOL,
  ppIndexBuffer: ptr ptr IDirect3DIndexBuffer9,
  pSharedHandle: pointer): HRESULT
  {.importcpp: "#->CreateIndexBuffer(@)", d3d9h, discardable.}

proc Lock*(self: ptr IDirect3DIndexBuffer9,
  OffsetToLock: UINT,
  SizeToLock: UINT,
  ppbData: ptr pointer,
  Flags: DWORD): HRESULT
  {.importcpp: "#->Lock(@)", d3d9h, discardable.}

proc Unlock*(self: ptr IDirect3DIndexBuffer9): HRESULT {.importcpp: "#->Unlock()", d3d9h, discardable.}

proc SetIndices*(self: ptr IDirect3DDevice9, pIndexData: ptr IDirect3DIndexBuffer9): HRESULT
  {.importcpp: "#->SetIndices(@)", d3d9h, discardable.}

proc SetFVF*(self: ptr IDirect3DDevice9, FVF: DWORD): HRESULT {.importcpp: "#->SetFVF(@)", d3d9h, discardable.}

proc SetStreamSource*(self: ptr IDirect3DDevice9,
  StreamNumber: UINT,
  pStreamData: ptr IDirect3DVertexBuffer9,
  OffsetInBytes: UINT,
  Stride: UINT): HRESULT
  {.importcpp: "#->SetStreamSource(@)", d3d9h, discardable.}

proc DrawIndexedPrimitive*(self: ptr IDirect3DDevice9,
  PrimitiveType: D3DPRIMITIVETYPE,
  BaseVertexIndex: INT,
  MinVertexIndex: UINT,
  NumVertices: UINT,
  startIndex: UINT,
  primCount: UINT): HRESULT
  {.importcpp: "#->DrawIndexedPrimitive(@)", d3d9h, discardable.}

proc CreateTexture*(self: ptr IDirect3DDevice9,
  Width: UINT,
  Height: UINT,
  Levels: UINT,
  Usage: DWORD,
  Format: D3DFORMAT,
  Pool: D3DPOOL,
  ppTexture: ptr ptr IDirect3DTexture9,
  pSharedHandle: pointer): HRESULT
  {.importcpp: "#->CreateTexture(@)", d3d9h, discardable.}

proc GetLevelDesc*(self: ptr IDirect3DTexture9,
    Level: uint32,
    outDesc: ptr D3DSURFACE_DESC): HRESULT
  {.importcpp: "#->GetLevelDesc(@)", d3d9h, discardable.}

proc GetSurfaceLevel*(self: ptr IDirect3DTexture9,
    Level: uint32,
    outSurf: ptr ptr IDirect3DSurface9): HRESULT
  {.importcpp: "#->GetSurfaceLevel(@)", d3d9h, discardable.}

proc LockRect*(self: ptr IDirect3DTexture9,
  Level: UINT,
  pLockedRect: ptr D3DLOCKED_RECT,
  pRect: pointer,
  Flags: DWORD): HRESULT
  {.importcpp: "#->LockRect(@)", d3d9h, discardable.}

proc UnlockRect*(self: ptr IDirect3DTexture9, Level: UINT): HRESULT
  {.importcpp: "#->UnlockRect(@)", d3d9h, discardable.}

proc GetDesc*(self: ptr IDirect3DSurface9, outDesc: ptr D3DSURFACE_DESC): HRESULT
  {.importcpp: "#->GetDesc(@)", d3d9h, discardable.}

proc D3DXCreateFontW*(dev: ptr IDirect3DDevice9,
                      Height: int32, Width: uint32,
                      Weight: uint32, MipLevels: uint32,
                      Italic: WINBOOL,
                      CharSet, OutputPrecision, Quality, PitchAndFamily: uint32,
                      FaceName: LPCWSTR,
                      outFont: ptr ptr ID3DXFont): HRESULT
  {.importc: "D3DXCreateFontW", d3dx9h, stdcall, discardable.}

proc DrawTextW*(self: ptr ID3DXFont,
                sprite: pointer,
                str: LPCWSTR,
                count: int32,
                rect: ptr RECT,
                format: uint32,
                color: uint32): int32
  {.importcpp: "#->DrawTextW(@)", d3dx9h, discardable.}

proc SetTexture*(self: ptr IDirect3DDevice9, Stage: DWORD, pTexture: ptr IDirect3DTexture9): HRESULT
  {.importcpp: "#->SetTexture(@)", d3d9h, discardable.}

proc SetSamplerState*(self: ptr IDirect3DDevice9, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT
  {.importcpp: "#->SetSamplerState(@)", d3d9h, discardable.}

proc SetTextureStageState*(self: ptr IDirect3DDevice9, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT
  {.importcpp: "#->SetTextureStageState(@)", d3d9h, discardable.}

template FAILED*(hr: HRESULT): bool = hr < 0
template SUCCEEDED*(hr: HRESULT): bool = hr >= 0

proc D3DCOLOR_ARGB*(a: int, r: int, g: int, b: int): int32 = (DWORD((a and 0xFF).uint32) shl 24) or (DWORD((r and 0xFF).uint32) shl 16) or (DWORD((g and 0xFF).uint32) shl 8) or DWORD((b and 0xFF).uint32)
proc D3DCOLOR_RGBA*(r: int, g: int, b: int, a: int): int32 = D3DCOLOR_ARGB(a, r, g, b)
proc D3DCOLOR_XRGB*(r: int, g: int, b: int): int32 = D3DCOLOR_ARGB(0xff, r, g, b) 
proc D3DCOLOR_XYUV*(y: int, u: int, v: int): int32 = D3DCOLOR_ARGB(0xff, y, u, v)
proc D3DCOLOR_AYUV*(a: int, y: int, u: int, v: int): int32 = D3DCOLOR_ARGB(a, y, u, v)
