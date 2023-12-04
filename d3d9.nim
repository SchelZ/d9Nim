import winim/com

when defined(i368):
  {.passL: "Lib/x86/d3d9.lib".}
else:
  {.passL: "Lib/x64/d3d9.lib".}
{.pragma: d3d9_header, header: "Include/d3d9.h".}
{.pragma: d3d9types_header, header: "Include/d3d9types.h".}


type 
  D3DMULTISAMPLE_TYPE* {.importcpp: "enum _D3DMULTISAMPLE_TYPE", d3d9types_header, pure.} = enum
    D3DMULTISAMPLE_NONE            =  0,
    D3DMULTISAMPLE_NONMASKABLE     =  1,
    D3DMULTISAMPLE_2_SAMPLES       =  2,
    D3DMULTISAMPLE_3_SAMPLES       =  3,
    D3DMULTISAMPLE_4_SAMPLES       =  4,
    D3DMULTISAMPLE_5_SAMPLES       =  5,
    D3DMULTISAMPLE_6_SAMPLES       =  6,
    D3DMULTISAMPLE_7_SAMPLES       =  7,
    D3DMULTISAMPLE_8_SAMPLES       =  8,
    D3DMULTISAMPLE_9_SAMPLES       =  9,
    D3DMULTISAMPLE_10_SAMPLES      = 10,
    D3DMULTISAMPLE_11_SAMPLES      = 11,
    D3DMULTISAMPLE_12_SAMPLES      = 12,
    D3DMULTISAMPLE_13_SAMPLES      = 13,
    D3DMULTISAMPLE_14_SAMPLES      = 14,
    D3DMULTISAMPLE_15_SAMPLES      = 15,
    D3DMULTISAMPLE_16_SAMPLES      = 16,

    D3DMULTISAMPLE_FORCE_DWORD     = 0x7fffffff

  D3DFORMAT* {.importcpp: "enum _D3DFORMAT", d3d9types_header, pure.} = enum
    D3DFMT_UNKNOWN              =  0,

    D3DFMT_R8G8B8               = 20,
    D3DFMT_A8R8G8B8             = 21,
    D3DFMT_X8R8G8B8             = 22,
    D3DFMT_R5G6B5               = 23,
    D3DFMT_X1R5G5B5             = 24,
    D3DFMT_A1R5G5B5             = 25,
    D3DFMT_A4R4G4B4             = 26,
    D3DFMT_R3G3B2               = 27,
    D3DFMT_A8                   = 28,
    D3DFMT_A8R3G3B2             = 29,
    D3DFMT_X4R4G4B4             = 30,
    D3DFMT_A2B10G10R10          = 31,
    D3DFMT_A8B8G8R8             = 32,
    D3DFMT_X8B8G8R8             = 33,
    D3DFMT_G16R16               = 34,
    D3DFMT_A2R10G10B10          = 35,
    D3DFMT_A16B16G16R16         = 36,

    D3DFMT_A8P8                 = 40,
    D3DFMT_P8                   = 41,

    D3DFMT_L8                   = 50,
    D3DFMT_A8L8                 = 51,
    D3DFMT_A4L4                 = 52,

    D3DFMT_V8U8                 = 60,
    D3DFMT_L6V5U5               = 61,
    D3DFMT_X8L8V8U8             = 62,
    D3DFMT_Q8W8V8U8             = 63,
    D3DFMT_V16U16               = 64,
    D3DFMT_A2W10V10U10          = 67,

    # D3DFMT_UYVY                 = MAKEFOURCC('U', 'Y', 'V', 'Y'),
    # D3DFMT_R8G8_B8G8            = MAKEFOURCC('R', 'G', 'B', 'G'),
    # D3DFMT_YUY2                 = MAKEFOURCC('Y', 'U', 'Y', '2'),
    # D3DFMT_G8R8_G8B8            = MAKEFOURCC('G', 'R', 'G', 'B'),
    # D3DFMT_DXT1                 = MAKEFOURCC('D', 'X', 'T', '1'),
    # D3DFMT_DXT2                 = MAKEFOURCC('D', 'X', 'T', '2'),
    # D3DFMT_DXT3                 = MAKEFOURCC('D', 'X', 'T', '3'),
    # D3DFMT_DXT4                 = MAKEFOURCC('D', 'X', 'T', '4'),
    # D3DFMT_DXT5                 = MAKEFOURCC('D', 'X', 'T', '5'),

    D3DFMT_D16_LOCKABLE         = 70,
    D3DFMT_D32                  = 71,
    D3DFMT_D15S1                = 73,
    D3DFMT_D24S8                = 75,
    D3DFMT_D24X8                = 77,
    D3DFMT_D24X4S4              = 79,
    D3DFMT_D16                  = 80,

    D3DFMT_L16                  = 81,
    
    D3DFMT_D32F_LOCKABLE        = 82,
    D3DFMT_D24FS8               = 83,

    D3DFMT_VERTEXDATA           =100,
    D3DFMT_INDEX16              =101,
    D3DFMT_INDEX32              =102,

    D3DFMT_Q16W16V16U16         =110,

    # D3DFMT_MULTI2_ARGB8         = MAKEFOURCC('M','E','T','1'),

    # Floating point surface formats

    # s10e5 formats (16-bits per channel)
    D3DFMT_R16F                 = 111,
    D3DFMT_G16R16F              = 112,
    D3DFMT_A16B16G16R16F        = 113,

    # IEEE s23e8 formats (32-bits per channel)
    D3DFMT_R32F                 = 114,
    D3DFMT_G32R32F              = 115,
    D3DFMT_A32B32G32R32F        = 116,

    D3DFMT_CxV8U8               = 117,
    D3DFMT_FORCE_DWORD          = 0x7fffffff

  D3DSWAPEFFECT* {.importcpp: "enum _D3DSWAPEFFECT", d3d9types_header, pure.} = enum
    D3DSWAPEFFECT_DISCARD           = 1,
    D3DSWAPEFFECT_FLIP              = 2,
    D3DSWAPEFFECT_COPY              = 3,

    D3DSWAPEFFECT_FORCE_DWORD       = 0x7fffffff

  D3DPRESENT_PARAMETERS* {.importcpp: "struct _D3DPRESENT_PARAMETERS_", d3d9types_header.} = object
    BackBufferWidth*: uint
    BackBufferHeight*: uint
    BackBufferFormat*: D3DFORMAT
    BackBufferCount*: uint

    MultiSampleType*: D3DMULTISAMPLE_TYPE
    MultiSampleQuality*: DWORD

    SwapEffect*: D3DSWAPEFFECT
    hDeviceWindow*: HWND
    Windowed*: bool
    EnableAutoDepthStencil*: bool
    AutoDepthStencilFormat*: D3DFORMAT
    Flags*: DWORD

    # FullScreen_RefreshRateInHz must be zero for Windowed mode #
    FullScreen_RefreshRateInHz*: uint
    PresentationInterval*: uint

  D3DDEVTYPE* {.pure.} = enum
    D3DDEVTYPE_HAL         = 1,
    D3DDEVTYPE_REF         = 2,
    D3DDEVTYPE_SW          = 3,

    D3DDEVTYPE_FORCE_DWORD  = 0x7fffffff

  D3DRECT* {.importcpp: "struct _D3DRECT", d3d9types_header, pure.} = object
    x1*: LONG
    y1*: LONG
    x2*: LONG
    y2*: LONG

  RECTT* {.importcpp: "struct tagRECT", header: "windef.h", pure.} = object
    x1*: LONG
    y1*: LONG
    x2: LONG
    y2: LONG

  RGNDATAHEADER* {.importcpp: "struct _RGNDATAHEADER", header: "wingdi.h", pure.} = object
    dwSize*: DWORD
    iType*:  DWORD
    nCount*:  DWORD
    nRgnSize*: DWORD
    rcBound*: RECTT

  RGNDATA* {.importcpp: "struct _RGNDATA", header: "wingdi.h", pure.} = object
    rdh*: RGNDATAHEADER
    Buffer*: array[1, char]


type
  IDirect3DDevice9* {.importcpp: "IDirect3DDevice9", d3d9_header, inheritable, pure.} = object
    Release*: proc (): ULONG  {.stdcall.}
    Clear*: proc (Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: DWORD, Z: float, Stencil: DWORD): HRESULT {.stdcall.}
    BeginScene*: proc (): HRESULT {.stdcall.}
    EndScene*: proc (): HRESULT {.stdcall.}
    Present*: proc (pSourceRect: ptr RECTT, pDestRect: ptr RECTT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.stdcall.}
    Reset*: proc (pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall.}
  
  LPDIRECT3DDEVICE9* {.importcpp: "LPDIRECT3DDEVICE9", d3d9_header.} = ptr IDirect3DDevice9
  PDIRECT3DDEVICE9* {.importcpp: "PDIRECT3DDEVICE9", d3d9_header.} = ptr IDirect3DDevice9

type
  IDirect3D9* {.importcpp: "IDirect3D9",  d3d9_header, inheritable, pure.} = object
    Release*: proc (): ULONG {.stdcall.}
    CreateDevice*: proc (Adapter: uint, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}

  LPDIRECT3D9* {.importcpp: "LPDIRECT3D9",  d3d9_header.} = ptr IDirect3D9
  PDIRECT3D9* {.importcpp: "PDIRECT3D9",  d3d9_header.} = ptr IDirect3D9

const 
  D3D_SDK_VERSION*: uint = 31
  D3DADAPTER_DEFAULT*: uint = 0
  D3DCREATE_SOFTWARE_VERTEXPROCESSING*: DWORD = 0x00000020
  D3DCREATE_HARDWARE_VERTEXPROCESSING*: DWORD = 0x00000040
  D3DCLEAR_TARGET*: DWORD = 0x00000001

func Direct3DCreate9*(SDKVersion: uint): ptr IDirect3D9 {.importcpp: "Direct3DCreate9(@)", d3d9_header, stdcall.}

func D3DCOLOR_ARGB*(a: int, r: int, g: int, b: int): DWORD = 
  return (cast[DWORD](((((a) and 0xff) shl 24) or (((r) and 0xff) shl 16) or (((g) and 0xff) shl 8) or ((b) and 0xff))))

func D3DCOLOR_XRGB*(r: int, g: int, b: int): DWORD = 
  return D3DCOLOR_ARGB(0xff,r,g,b) 
