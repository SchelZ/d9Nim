import winim/com

when defined(i368):
  {.passL: "Lib/x86/d3d9.lib".}
else:
  {.passL: "Lib/x64/d3d9.lib".}
{.pragma: d3d9_header, header: "Include/d3d9.h".}
{.pragma: d3d9types_header, header: "Include/d3d9types.h".}

const 


  # destination parameter 
  D3DSP_DSTSHIFT_SHIFT* = 24
  D3DSP_DSTSHIFT_MASK* = 0x0F000000

  # destination/source parameter register type
  D3DSP_REGTYPE_SHIFT* = 28
  D3DSP_REGTYPE_SHIFT2* = 8
  D3DSP_REGTYPE_MASK* = 0x70000000
  D3DSP_REGTYPE_MASK2* = 0x00001800

  # Source operand addressing modes
  D3DVS_ADDRESSMODE_SHIFT* = 13
  D3DVS_ADDRESSMODE_MASK* = (1 shl D3DVS_ADDRESSMODE_SHIFT)
  D3DSHADER_ADDRESSMODE_SHIFT* = 13
  D3DSHADER_ADDRESSMODE_MASK* = (1 shl D3DSHADER_ADDRESSMODE_SHIFT)

  # Source operand swizzle definitions
  #
  D3DVS_SWIZZLE_SHIFT* = 16
  D3DVS_SWIZZLE_MASK* = 0x00FF0000

  # The following bits define where to take component X from:
  D3DVS_X_X* = (0 shl D3DVS_SWIZZLE_SHIFT)
  D3DVS_X_Y* = (1 shl D3DVS_SWIZZLE_SHIFT)
  D3DVS_X_Z* = (2 shl D3DVS_SWIZZLE_SHIFT)
  D3DVS_X_W* = (3 shl D3DVS_SWIZZLE_SHIFT)

  # The following bits define where to take component Y from:
  D3DVS_Y_X* = (0 shl (D3DVS_SWIZZLE_SHIFT + 2))
  D3DVS_Y_Y* = (1 shl (D3DVS_SWIZZLE_SHIFT + 2))
  D3DVS_Y_Z* = (2 shl (D3DVS_SWIZZLE_SHIFT + 2))
  D3DVS_Y_W* = (3 shl (D3DVS_SWIZZLE_SHIFT + 2))

  # The following bits define where to take component Z from:
  D3DVS_Z_X* = (0 shl (D3DVS_SWIZZLE_SHIFT + 4))
  D3DVS_Z_Y* = (1 shl (D3DVS_SWIZZLE_SHIFT + 4))
  D3DVS_Z_Z* = (2 shl (D3DVS_SWIZZLE_SHIFT + 4))
  D3DVS_Z_W* = (3 shl (D3DVS_SWIZZLE_SHIFT + 4))

  # The following bits define where to take component W from:
  D3DVS_W_X* = (0 shl (D3DVS_SWIZZLE_SHIFT + 6))
  D3DVS_W_Y* = (1 shl (D3DVS_SWIZZLE_SHIFT + 6))
  D3DVS_W_Z* = (2 shl (D3DVS_SWIZZLE_SHIFT + 6))
  D3DVS_W_W* = (3 shl (D3DVS_SWIZZLE_SHIFT + 6))

  # Value when there is no swizzle (X is taken from X, Y is taken from Y,
  # Z is taken from Z, W is taken from W
  #
  D3DVS_NOSWIZZLE* = (D3DVS_X_X or D3DVS_Y_Y or D3DVS_Z_Z or D3DVS_W_W)

  # source parameter swizzle
  D3DSP_SWIZZLE_SHIFT* = 16
  D3DSP_SWIZZLE_MASK* = 0x00FF0000

  D3DSP_NOSWIZZLE* = ( (0 shl (D3DSP_SWIZZLE_SHIFT + 0)) or (1 shl (D3DSP_SWIZZLE_SHIFT + 2)) or (2 shl (D3DSP_SWIZZLE_SHIFT + 4)) or (3 shl (D3DSP_SWIZZLE_SHIFT + 6)) )
  
  # pixel-shader swizzle ops
  D3DSP_REPLICATERED* = ( (0 shl (D3DSP_SWIZZLE_SHIFT + 0)) or (0 shl (D3DSP_SWIZZLE_SHIFT + 2)) or (0 shl (D3DSP_SWIZZLE_SHIFT + 4)) or (0 shl (D3DSP_SWIZZLE_SHIFT + 6)) )
  D3DSP_REPLICATEGREEN* = ( (1 shl (D3DSP_SWIZZLE_SHIFT + 0)) or (1 shl (D3DSP_SWIZZLE_SHIFT + 2)) or (1 shl (D3DSP_SWIZZLE_SHIFT + 4)) or (1 shl (D3DSP_SWIZZLE_SHIFT + 6)) )
  D3DSP_REPLICATEBLUE* = ( (2 shl (D3DSP_SWIZZLE_SHIFT + 0)) or (2 shl (D3DSP_SWIZZLE_SHIFT + 2)) or (2 shl (D3DSP_SWIZZLE_SHIFT + 4)) or (2 shl (D3DSP_SWIZZLE_SHIFT + 6)) )
  D3DSP_REPLICATEALPHA* = ( (3 shl (D3DSP_SWIZZLE_SHIFT + 0)) or (3 shl (D3DSP_SWIZZLE_SHIFT + 2)) or (3 shl (D3DSP_SWIZZLE_SHIFT + 4)) or (3 shl (D3DSP_SWIZZLE_SHIFT + 6)) )


  # source parameter modifiers
  D3DSP_SRCMOD_SHIFT* = 24
  D3DSP_SRCMOD_MASK* = 0x0F000000

# const MAKEFOURCC: proc (ch0: int, ch1: char, ch2: char, ch3: char) = (cast[DWORD](cast[BYTE](ch0)) or (cast[DWORD](cast[BYTE](ch1) shl 8)) or ((DWORD)(BYTE)(ch2) shl 16) or ((DWORD)(BYTE)(ch3) shl 24 ))

  # Texture coordinate format bits in the FVF id
  D3DFVF_TEXTUREFORMAT2* = 0         # Two floating point values
  D3DFVF_TEXTUREFORMAT1* = 3         # One floating point value
  D3DFVF_TEXTUREFORMAT3* = 1         # Three floating point values
  D3DFVF_TEXTUREFORMAT4* = 2         # Four floating point values

  # RefreshRate pre-defines */
  D3DPRESENT_RATE_DEFAULT* = 0x00000000

  # Values for D3DPRESENT_PARAMETERS.Flags
  D3DPRESENTFLAG_LOCKABLE_BACKBUFFER* = 0x00000001
  D3DPRESENTFLAG_DISCARD_DEPTHSTENCIL* = 0x00000002
  D3DPRESENTFLAG_DEVICECLIP* = 0x00000004
  D3DPRESENTFLAG_VIDEO* = 0x00000010


template MAKEFOURCC*(ch0: char, ch1: char, ch2: char, ch3: char): auto = (cast[DWORD](cast[BYTE](ch0)) or (cast[DWORD](cast[BYTE](ch1)) shl 8) or (cast[DWORD](cast[BYTE](ch2)) shl 16) or (cast[DWORD](cast[BYTE](ch3)) shl 24 ))
template D3DFVF_TEXCOORDSIZE3*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT3 shl (CoordIndex*2 + 16))
template D3DFVF_TEXCOORDSIZE2*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT2)
template D3DFVF_TEXCOORDSIZE4*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT4 shl (CoordIndex*2 + 16))
template D3DFVF_TEXCOORDSIZE1*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT1 shl (CoordIndex*2 + 16))


type 

  # destination/source parameter register type
  #
  D3DSHADER_PARAM_REGISTER_TYPE* {.importcpp: "enum _D3DSHADER_PARAM_REGISTER_TYPE", d3d9types_header, pure.} = enum
    D3DSPR_TEMP           =  0, # Temporary Register File
    D3DSPR_INPUT          =  1, # Input Register File
    D3DSPR_CONST          =  2, # Constant Register File
    D3DSPR_ADDR           =  3, # Address Register (VS)
    # D3DSPR_TEXTURE        =  3, # Texture Register File (PS)
    D3DSPR_RASTOUT        =  4, # Rasterizer Register File
    D3DSPR_ATTROUT        =  5, # Attribute Output Register File
    D3DSPR_TEXCRDOUT      =  6, # Texture Coordinate Output Register File
    # D3DSPR_OUTPUT         =  6, # Output register file for VS3.0+
    D3DSPR_CONSTINT       =  7, # Constant Integer Vector Register File
    D3DSPR_COLOROUT       =  8, # Color Output Register File
    D3DSPR_DEPTHOUT       =  9, # Depth Output Register File
    D3DSPR_SAMPLER        = 10, # Sampler State Register File
    D3DSPR_CONST2         = 11, # Constant Register File  2048 - 4095
    D3DSPR_CONST3         = 12, # Constant Register File  4096 - 6143
    D3DSPR_CONST4         = 13, # Constant Register File  6144 - 8191
    D3DSPR_CONSTBOOL      = 14, # Constant Boolean register file
    D3DSPR_LOOP           = 15, # Loop counter register file
    D3DSPR_TEMPFLOAT16    = 16, # 16-bit float temp register file
    D3DSPR_MISCTYPE       = 17, # Miscellaneous (single) registers.
    D3DSPR_LABEL          = 18, # Label
    D3DSPR_PREDICATE      = 19, # Predicate register
    D3DSPR_FORCE_DWORD  = 0x7fffffff,         # force 32-bit size enum

  D3DSHADER_MISCTYPE_OFFSETS* {.importcpp: "enum _D3DSHADER_MISCTYPE_OFFSETS", d3d9types_header, pure.} = enum
    D3DSMO_POSITION = 0, # Input position x,y,z,rhw (PS)
    D3DSMO_FACE = 1 # Floating point primitive area (PS)

  # Register offsets in the Rasterizer Register File
  #
  D3DVS_RASTOUT_OFFSETS* {.importcpp: "enum _D3DVS_RASTOUT_OFFSETS", d3d9types_header, pure.} = enum
    D3DSRO_POSITION = 0,
    D3DSRO_FOG,
    D3DSRO_POINT_SIZE,
    D3DSRO_FORCE_DWORD  = 0x7fffffff # force 32-bit size enum

  #---------------------------------------------------------------------
  # Source operand addressing modes
  #
  D3DVS_ADDRESSMODE_TYPE* {.importcpp: "enum _D3DVS_ADDRESSMODE_TYPE", d3d9types_header, pure.} = enum
    D3DVS_ADDRMODE_ABSOLUTE  = (0 shl D3DVS_ADDRESSMODE_SHIFT),
    D3DVS_ADDRMODE_RELATIVE  = (1 shl D3DVS_ADDRESSMODE_SHIFT),
    D3DVS_ADDRMODE_FORCE_DWORD = 0x7fffffff # force 32-bit size enum

  D3DSHADER_ADDRESSMODE_TYPE* {.importcpp: "enum _D3DSHADER_ADDRESSMODE_TYPE", d3d9types_header, pure.} = enum
    D3DSHADER_ADDRMODE_ABSOLUTE  = (0 shl D3DSHADER_ADDRESSMODE_SHIFT),
    D3DSHADER_ADDRMODE_RELATIVE  = (1 shl D3DSHADER_ADDRESSMODE_SHIFT),
    D3DSHADER_ADDRMODE_FORCE_DWORD = 0x7fffffff # force 32-bit size enum

  #---------------------------------------------------------------------
  # High order surfaces
  #
  D3DBASISTYPE* {.importcpp: "enum _D3DBASISTYPE", d3d9types_header, pure.} = enum
    D3DBASIS_BEZIER      = 0,
    D3DBASIS_BSPLINE     = 1,
    D3DBASIS_CATMULL_ROM = 2, # In D3D8 this used to be D3DBASIS_INTERPOLATE #
    D3DBASIS_FORCE_DWORD = 0x7fffffff

  D3DDEGREETYPE* {.importcpp: "enum _D3DDEGREETYPE", d3d9types_header, pure.} = enum
    D3DDEGREE_LINEAR      = 1,
    D3DDEGREE_QUADRATIC   = 2,
    D3DDEGREE_CUBIC       = 3,
    D3DDEGREE_QUINTIC     = 5,
    D3DDEGREE_FORCE_DWORD = 0x7fffffff

  D3DPATCHEDGESTYLE* {.importcpp: "enum _D3DPATCHEDGESTYLE", d3d9types_header, pure.} = enum
    D3DPATCHEDGE_DISCRETE    = 0,
    D3DPATCHEDGE_CONTINUOUS  = 1,
    D3DPATCHEDGE_FORCE_DWORD = 0x7fffffff

  D3DSTATEBLOCKTYPE* {.importcpp: "enum _D3DSTATEBLOCKTYPE", d3d9types_header, pure.} = enum
    D3DSBT_ALL           = 1, # capture all state
    D3DSBT_PIXELSTATE    = 2, # capture pixel state
    D3DSBT_VERTEXSTATE   = 3, # capture vertex state
    D3DSBT_FORCE_DWORD   = 0x7fffffff

  # The D3DVERTEXBLENDFLAGS type is used with D3DRS_VERTEXBLEND state.
  #
  D3DVERTEXBLENDFLAGS* {.importcpp: "enum _D3DVERTEXBLENDFLAGS", d3d9types_header, pure.} = enum
    D3DVBF_DISABLE  = 0,     # Disable vertex blending
    D3DVBF_1WEIGHTS = 1,     # 2 matrix blending
    D3DVBF_2WEIGHTS = 2,     # 3 matrix blending
    D3DVBF_3WEIGHTS = 3,     # 4 matrix blending
    D3DVBF_TWEENING = 255,   # blending using D3DRS_TWEENFACTOR
    D3DVBF_0WEIGHTS = 256,   # one matrix is used with weight 1.0
    D3DVBF_FORCE_DWORD = 0x7fffffff # force 32-bit size enum

  D3DTEXTURETRANSFORMFLAGS* {.importcpp: "enum _D3DTEXTURETRANSFORMFLAGS", d3d9types_header, pure.} = enum
    D3DTTFF_DISABLE         = 0,    # texture coordinates are passed directly
    D3DTTFF_COUNT1          = 1,    # rasterizer should expect 1-D texture coords
    D3DTTFF_COUNT2          = 2,    # rasterizer should expect 2-D texture coords
    D3DTTFF_COUNT3          = 3,    # rasterizer should expect 3-D texture coords
    D3DTTFF_COUNT4          = 4,    # rasterizer should expect 4-D texture coords
    D3DTTFF_PROJECTED       = 256,  # texcoords to be divided by COUNTth element
    D3DTTFF_FORCE_DWORD     = 0x7fffffff

  #---------------------------------------------------------------------
  # Direct3D9 Device types #
  D3DDEVTYPE* {.importcpp: "enum _D3DDEVTYPE", d3d9types_header, pure.} = enum
    D3DDEVTYPE_HAL         = 1,
    D3DDEVTYPE_REF         = 2,
    D3DDEVTYPE_SW          = 3,

    D3DDEVTYPE_FORCE_DWORD  = 0x7fffffff

  # Multi-Sample buffer types #
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

    D3DFMT_VERTEXDATA           = 100,
    D3DFMT_INDEX16              = 101,
    D3DFMT_INDEX32              = 102,

    D3DFMT_Q16W16V16U16         = 110,

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

  # Display Modes */
  D3DDISPLAYMODE* {.importcpp: "struct _D3DDISPLAYMODE", d3d9types_header, pure.} = object
    Width*: uint
    Height*: uint
    RefreshRate*: uint
    Format*: D3DFORMAT

  # Creation Parameters */
  D3DDEVICE_CREATION_PARAMETERS* {.importcpp: "struct _D3DDEVICE_CREATION_PARAMETERS", d3d9types_header, pure.} = object
    AdapterOrdinal*: uint
    DeviceType*: D3DDEVTYPE
    hFocusWindow*: HWND
    BehaviorFlags*: DWORD

  # SwapEffects */
  D3DSWAPEFFECT* {.importcpp: "enum _D3DSWAPEFFECT", d3d9types_header, pure.} = enum
    D3DSWAPEFFECT_DISCARD           = 1,
    D3DSWAPEFFECT_FLIP              = 2,
    D3DSWAPEFFECT_COPY              = 3,
    D3DSWAPEFFECT_FORCE_DWORD       = 0x7fffffff

  # Pool types */
  D3DPOOL* {.importcpp: "enum _D3DPOOL", d3d9types_header, pure.} = enum
    D3DPOOL_DEFAULT                 = 0,
    D3DPOOL_MANAGED                 = 1,
    D3DPOOL_SYSTEMMEM               = 2,
    D3DPOOL_SCRATCH                 = 3,
    D3DPOOL_FORCE_DWORD             = 0x7fffffff

  # Resize Optional Parameters */
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

  # Gamma Ramp: Same as DX7 */
  D3DGAMMARAMP* {.importcpp: "struct _D3DGAMMARAMP", d3d9types_header, pure.} = object
    red*: array[256, WORD]
    green*: array[256, WORD]
    blue*: array[256, WORD]

  # Back buffer types */
  D3DBACKBUFFER_TYPE* {.importcpp: "enum _D3DBACKBUFFER_TYPE", d3d9types_header, pure.} = enum
    D3DBACKBUFFER_TYPE_MONO         = 0,
    D3DBACKBUFFER_TYPE_LEFT         = 1,
    D3DBACKBUFFER_TYPE_RIGHT        = 2,
    D3DBACKBUFFER_TYPE_FORCE_DWORD  = 0x7fffffff

  # Types */
  D3DRESOURCETYPE* {.importcpp: "enum _D3DRESOURCETYPE", d3d9types_header, pure.} = enum
    D3DRTYPE_SURFACE                =  1,
    D3DRTYPE_VOLUME                 =  2,
    D3DRTYPE_TEXTURE                =  3,
    D3DRTYPE_VOLUMETEXTURE          =  4,
    D3DRTYPE_CUBETEXTURE            =  5,
    D3DRTYPE_VERTEXBUFFER           =  6,
    D3DRTYPE_INDEXBUFFER            =  7,
    D3DRTYPE_FORCE_DWORD            = 0x7fffffff

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
