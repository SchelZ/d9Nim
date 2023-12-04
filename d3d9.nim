import winim/lean, d3d9types

{.passL: "Lib/x64/d3d9.lib".}

type 
  D3DDEVTYPE {.pure.} = enum
    D3DDEVTYPE_HAL         = 1,
    D3DDEVTYPE_REF         = 2,
    D3DDEVTYPE_SW          = 3,

    D3DDEVTYPE_FORCE_DWORD  = 0x7fffffff

type 
  D3DRECT {.importcpp: "struct _D3DRECT", header: "Include/d3d9types.h".} = object
    x1: LONG
    y1: LONG
    x2: LONG
    y2: LONG

type
  RECTT {.importcpp: "struct tagRECT", header: "windef.h".} = object
    x1: LONG
    y1: LONG
    x2: LONG
    y2: LONG

type 
  RGNDATAHEADER {.importcpp: "struct _RGNDATAHEADER", header: "wingdi.h".} = object
    dwSize: DWORD
    iType:  DWORD
    nCount:  DWORD
    nRgnSize: DWORD
    rcBound: RECTT

type 
  RGNDATA {.importcpp: "struct _RGNDATA", header: "wingdi.h".} = object
    rdh: RGNDATAHEADER
    Buffer: char


type
  IDirect3DDevice9 {.importcpp: "IDirect3DDevice9", header: "Include/d3d9.h", inheritable, pure.} = object
    Release: proc (): ULONG  {.stdcall.}
    Clear: proc (Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: DWORD, Z: float, Stencil: DWORD): HRESULT {.stdcall.}
    BeginScene: proc (): HRESULT {.stdcall.}
    EndScene: proc (): HRESULT {.stdcall.}
    Present: proc (pSourceRect: ptr RECTT, pDestRect: ptr RECTT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.stdcall.}
    Reset: proc (pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall.}
  
  LPDIRECT3DDEVICE9 {.header: "Include/d3d9.h", importcpp: "LPDIRECT3DDEVICE9".} = ptr IDirect3DDevice9
  PDIRECT3DDEVICE9 {.header: "Include/d3d9.h", importcpp: "PDIRECT3DDEVICE9".} = ptr IDirect3DDevice9

type
  IDirect3D9 {.importcpp: "IDirect3D9", header: "Include/d3d9.h", inheritable, pure.} = object
    Release: proc (): ULONG {.stdcall.}
    CreateDevice: proc (Adapter: uint, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}

  LPDIRECT3D9 {.importcpp: "LPDIRECT3D9", header: "Include/d3d9.h".} = ptr IDirect3D9
  PDIRECT3D9 {.importcpp: "PDIRECT3D9", header: "Include/d3d9.h".} = ptr IDirect3D9

const 
  D3D_SDK_VERSION: uint = 31
  D3DADAPTER_DEFAULT: uint = 0
  D3DCREATE_SOFTWARE_VERTEXPROCESSING: DWORD = 0x00000020
  D3DCREATE_HARDWARE_VERTEXPROCESSING: DWORD = 0x00000040
  D3DCLEAR_TARGET: DWORD = 0x00000001

func Direct3DCreate9(SDKVersion: uint): ptr IDirect3D9 {.importcpp: "Direct3DCreate9(@)", header: "Include/d3d9.h", stdcall.}

proc D3DCOLOR_ARGB(a: int, r: int, g: int, b: int): DWORD = 
  return (cast[DWORD](((((a) and 0xff) shl 24) or (((r) and 0xff) shl 16) or (((g) and 0xff) shl 8) or ((b) and 0xff))))

proc D3DCOLOR_XRGB(r: int, g: int, b: int): DWORD = 
  return D3DCOLOR_ARGB(0xff,r,g,b) 

