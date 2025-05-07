import winim/com, os, strutils

if not existsEnv("DXSDK_DIR"):
  raise newException(CatchableError, "Please add DirectX SDK to environment path")

proc getDirectXDir: string {.compileTime.} = 
  result = getEnv("DXSDK_DIR").replace("\\", "/")

when defined(i368):
  const path = "\"" & getDirectXDir() & "/Lib/x86/d3d9.lib\""
  {.passL: path.}
else:
  const path = "\"" & getDirectXDir() & "/Lib/x64/d3d9.lib\""
  {.passL: path.}

const pathFile = getEnv("DXSDK_DIR") & "Include\\"
{.pragma: d3d9_header, header: pathFile & "d3d9.h".}
{.pragma: d3d9types_header, header: pathFile & "d3d9types.h".}
{.pragma: d3d9caps_header, header: pathFile & "d3d9caps.h".}
{.pragma: d3dx9math_header, header: pathFile & "d3dx9math.h".}
{.pragma: d3dx9core_header, header: pathFile & "d3dx9core.h".}


const 
  D3D_OK* = S_OK
  D3D_SDK_VERSION*: uint = 31
  D3DADAPTER_DEFAULT* = 0
  D3DCREATE_SOFTWARE_VERTEXPROCESSING*: DWORD = 0x00000020
  D3DCREATE_HARDWARE_VERTEXPROCESSING*: DWORD = 0x00000040
  D3DCLEAR_TARGET*: DWORD = 0x00000001
  D3DCLEAR_ZBUFFER*: DWORD = 0x00000002
  D3DCLEAR_STENCIL*: DWORD =  0x00000004

  D3DFVF_RESERVED0* = 0x001
  D3DFVF_POSITION_MASK* = 0x400E
  D3DFVF_XYZ* = 0x002
  D3DFVF_XYZRHW* = 0x004
  D3DFVF_XYZB1* = 0x006
  D3DFVF_XYZB2* = 0x008
  D3DFVF_XYZB3* = 0x00a
  D3DFVF_XYZB4* = 0x00c
  D3DFVF_XYZB5* = 0x00e
  D3DFVF_XYZW* = 0x4002

  D3DFVF_NORMAL* = 0x010
  D3DFVF_PSIZE* = 0x020
  D3DFVF_DIFFUSE* = 0x040
  D3DFVF_SPECULAR* = 0x080

  D3DFVF_TEXCOUNT_MASK* = 0xf00
  D3DFVF_TEXCOUNT_SHIFT* = 8
  D3DFVF_TEX0* = 0x000
  D3DFVF_TEX1* = 0x100
  D3DFVF_TEX2* = 0x200
  D3DFVF_TEX3* = 0x300
  D3DFVF_TEX4* = 0x400
  D3DFVF_TEX5* = 0x500
  D3DFVF_TEX6* = 0x600
  D3DFVF_TEX7* = 0x700
  D3DFVF_TEX8* = 0x800

  D3DFVF_LASTBETA_UBYTE4* = 0x1000
  D3DFVF_LASTBETA_D3DCOLOR* = 0x8000
  D3DFVF_RESERVED2* = 0x6000  # 2 reserved bits

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

  D3DTA_SELECTMASK* =        0x0000000f  # mask for arg selector
  D3DTA_DIFFUSE* =           0x00000000  # select diffuse color (read only)
  D3DTA_CURRENT* =           0x00000001  # select stage destination register (read/write)
  D3DTA_TEXTURE* =           0x00000002  # select texture color (read only)
  D3DTA_TFACTOR* =           0x00000003  # select D3DRS_TEXTUREFACTOR (read only)
  D3DTA_SPECULAR* =          0x00000004  # select specular color (read only)
  D3DTA_TEMP* =              0x00000005  # select temporary register color (read/write)
  D3DTA_CONSTANT* =          0x00000006  # select texture stage constant
  D3DTA_COMPLEMENT* =        0x00000010  # take 1.0 - x (read modifier)
  D3DTA_ALPHAREPLICATE* =    0x00000020  # replicate alpha to color components (read modifier)


  # Usages */
  D3DUSAGE_RENDERTARGET* =       0x00000001.int32
  D3DUSAGE_DEPTHSTENCIL* =       0x00000002.int32
  D3DUSAGE_DYNAMIC* =            0x00000200.int32

  D3DUSAGE_AUTOGENMIPMAP* =      0x00000400.int32
  D3DUSAGE_DMAP* =               0x00004000.int32

  # The following usages are valid only for querying CheckDeviceFormat
  D3DUSAGE_QUERY_LEGACYBUMPMAP* =            0x00008000.int32
  D3DUSAGE_QUERY_SRGBREAD* =                 0x00010000.int32 
  D3DUSAGE_QUERY_FILTER* =                    0x00020000.int32 
  D3DUSAGE_QUERY_SRGBWRITE* =                 0x00040000.int32 
  D3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING* =  0x00080000.int32 
  D3DUSAGE_QUERY_VERTEXTEXTURE* =             0x00100000.int32 

  # Usages for Vertex/Index buffers */
  D3DUSAGE_WRITEONLY* =           0x00000008.int32 
  D3DUSAGE_SOFTWAREPROCESSING* =  0x00000010.int32 
  D3DUSAGE_DONOTCLIP* =           0x00000020.int32 
  D3DUSAGE_POINTS* =              0x00000040.int32 
  D3DUSAGE_RTPATCHES* =           0x00000080.int32 
  D3DUSAGE_NPATCHES* =            0x00000100.int32 

  D3DLOCK_READONLY* =           0x00000010.int32 
  D3DLOCK_DISCARD* =            0x00002000.int32 
  D3DLOCK_NOOVERWRITE* =        0x00001000.int32 
  D3DLOCK_NOSYSLOCK* =          0x00000800.int32 
  D3DLOCK_DONOTWAIT* =          0x00004000.int32             

  D3DLOCK_NO_DIRTY_UPDATE* =     0x00008000.int32 

template MAKEFOURCC*(ch0: char, ch1: char, ch2: char, ch3: char): auto = (cast[DWORD](cast[BYTE](ch0)) or (cast[DWORD](cast[BYTE](ch1)) shl 8) or (cast[DWORD](cast[BYTE](ch2)) shl 16) or (cast[DWORD](cast[BYTE](ch3)) shl 24 ))
template D3DFVF_TEXCOORDSIZE3*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT3 shl (CoordIndex*2 + 16))
template D3DFVF_TEXCOORDSIZE2*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT2)
template D3DFVF_TEXCOORDSIZE4*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT4 shl (CoordIndex*2 + 16))
template D3DFVF_TEXCOORDSIZE1*(CoordIndex: untyped): untyped = (D3DFVF_TEXTUREFORMAT1 shl (CoordIndex*2 + 16))

# d3d9types.h ------------------------------------------

type 
  D3DSHADEMODE* {.importcpp: "enum _D3DSHADEMODE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DSHADE_FLAT               = 1,
    D3DSHADE_GOURAUD            = 2,
    D3DSHADE_PHONG              = 3,
    D3DSHADE_FORCE_DWORD        = 0x7fffffff # force 32-bit size enum */

  D3DFILLMODE* {.importcpp: "enum _D3DFILLMODE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DFILL_POINT               = 1,
    D3DFILL_WIREFRAME           = 2,
    D3DFILL_SOLID               = 3,
    D3DFILL_FORCE_DWORD         = 0x7fffffff # force 32-bit size enum */

  D3DBLEND* {.importcpp: "enum _D3DBLEND", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DBLEND_ZERO               = 1,
    D3DBLEND_ONE                = 2,
    D3DBLEND_SRCCOLOR           = 3,
    D3DBLEND_INVSRCCOLOR        = 4,
    D3DBLEND_SRCALPHA           = 5,
    D3DBLEND_INVSRCALPHA        = 6,
    D3DBLEND_DESTALPHA          = 7,
    D3DBLEND_INVDESTALPHA       = 8,
    D3DBLEND_DESTCOLOR          = 9,
    D3DBLEND_INVDESTCOLOR       = 10,
    D3DBLEND_SRCALPHASAT        = 11,
    D3DBLEND_BOTHSRCALPHA       = 12,
    D3DBLEND_BOTHINVSRCALPHA    = 13,
    D3DBLEND_BLENDFACTOR        = 14, # Only supported if D3DPBLENDCAPS_BLENDFACTOR is on */
    D3DBLEND_INVBLENDFACTOR     = 15, # Only supported if D3DPBLENDCAPS_BLENDFACTOR is on */
    D3DBLEND_FORCE_DWORD        = 0x7fffffff # force 32-bit size enum */

  D3DBLENDOP* {.importcpp: "enum _D3DBLENDOP", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DBLENDOP_ADD              = 1,
    D3DBLENDOP_SUBTRACT         = 2,
    D3DBLENDOP_REVSUBTRACT      = 3,
    D3DBLENDOP_MIN              = 4,
    D3DBLENDOP_MAX              = 5,
    D3DBLENDOP_FORCE_DWORD      = 0x7fffffff # force 32-bit size enum */

  D3DTEXTUREADDRESS* {.importcpp: "enum _D3DTEXTUREADDRESS", d3d9types_header, pure, size: int32.sizeof.} = enum
      D3DTADDRESS_WRAP            = 1,
      D3DTADDRESS_MIRROR          = 2,
      D3DTADDRESS_CLAMP           = 3,
      D3DTADDRESS_BORDER          = 4,
      D3DTADDRESS_MIRRORONCE      = 5,
      D3DTADDRESS_FORCE_DWORD     = 0x7fffffff # force 32-bit size enum */

  D3DCULL* {.importcpp: "enum _D3DCULL", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DCULL_NONE                = 1,
    D3DCULL_CW                  = 2,
    D3DCULL_CWW                 = 3,
    D3DCULL_FORCE_DWORD         = 0x7fffffff

  D3DLOCKED_RECT* {.importcpp: "struct _D3DLOCKED_RECT", d3d9types_header, pure.} = object
    Pitch*: int
    pBits*: pointer

  D3DVIEWPORT9* {.importcpp: "struct _D3DVIEWPORT9", d3d9types_header, pure.} = object
    X*: DWORD
    Y*: DWORD             # Viewport Top left */
    Width*: DWORD
    Height*: DWORD       # Viewport Dimensions */
    MinZ*: float         # Min/max of clip Volume */
    MaxZ*: float

  # destination/source parameter register type
  #
  D3DSHADER_PARAM_REGISTER_TYPE* {.importcpp: "enum _D3DSHADER_PARAM_REGISTER_TYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
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

    # s10e5 formats (16-bits per channe 
    D3DFMT_R16F                 = 111,
    D3DFMT_G16R16F              = 112,
    D3DFMT_A16B16G16R16F        = 113,

    # IEEE s23e8 formats (32-bits per channe 
    D3DFMT_R32F                 = 114,
    D3DFMT_G32R32F              = 115,
    D3DFMT_A32B32G32R32F        = 116,

    D3DFMT_CxV8U8               = 117,
    D3DFMT_FORCE_DWORD          = 0x7fffffff

  # Surface Description */  
  D3DSURFACE_DESC* {.importcpp: "struct _D3DSURFACE_DESC", d3d9types_header, pure.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL

    MultiSampleType*: D3DMULTISAMPLE_TYPE
    MultiSampleQuality*: DWORD
    Width*: UINT
    Height*: UINT

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
    hDeviceWindow*: pointer
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

  D3DRENDERSTATETYPE* {.importcpp: "enum _D3DRENDERSTATETYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DRS_ZENABLE                   = 7,    # D3DZBUFFERTYPE (or TRUE/FALSE for legacy) */
    D3DRS_FILLMODE                  = 8,    # D3DFILLMODE */
    D3DRS_SHADEMODE                 = 9,    # D3DSHADEMODE */
    D3DRS_ZWRITEENABLE              = 14,   # TRUE to enable z writes */
    D3DRS_ALPHATESTENABLE           = 15,   # TRUE to enable alpha tests */
    D3DRS_LASTPIXEL                 = 16,   # TRUE for last-pixel on lines */
    D3DRS_SRCBLEND                  = 19,   # D3DBLEND */
    D3DRS_DESTBLEND                 = 20,   # D3DBLEND */
    D3DRS_CULLMODE                  = 22,   # D3DCULL */
    D3DRS_ZFUNC                     = 23,   # D3DCMPFUNC */
    D3DRS_ALPHAREF                  = 24,   # D3DFIXED */
    D3DRS_ALPHAFUNC                 = 25,   # D3DCMPFUNC */
    D3DRS_DITHERENABLE              = 26,   # TRUE to enable dithering */
    D3DRS_ALPHABLENDENABLE          = 27,   # TRUE to enable alpha blending */
    D3DRS_FOGENABLE                 = 28,   # TRUE to enable fog blending */
    D3DRS_SPECULARENABLE            = 29,   # TRUE to enable specular */
    D3DRS_FOGCOLOR                  = 34,   # D3DCOLOR */
    D3DRS_FOGTABLEMODE              = 35,   # D3DFOGMODE */
    D3DRS_FOGSTART                  = 36,   # Fog start (for both vertex and pixel fog) */
    D3DRS_FOGEND                    = 37,   # Fog end      */
    D3DRS_FOGDENSITY                = 38,   # Fog density  */
    D3DRS_RANGEFOGENABLE            = 48,   # Enables range-based fog */
    D3DRS_STENCILENABLE             = 52,   # BOOL enable/disable stenciling */
    D3DRS_STENCILFAIL               = 53,   # D3DSTENCILOP to do if stencil test fails */
    D3DRS_STENCILZFAIL              = 54,   # D3DSTENCILOP to do if stencil test passes and Z test fails */
    D3DRS_STENCILPASS               = 55,   # D3DSTENCILOP to do if both stencil and Z tests pass */
    D3DRS_STENCILFUNC               = 56,   # D3DCMPFUNC fn.  Stencil Test passes if ((ref & mask) stencilfn (stencil & mask)) is true */
    D3DRS_STENCILREF                = 57,   # Reference value used in stencil test */
    D3DRS_STENCILMASK               = 58,   # Mask value used in stencil test */
    D3DRS_STENCILWRITEMASK          = 59,   # Write mask applied to values written to stencil buffer */
    D3DRS_TEXTUREFACTOR             = 60,   # D3DCOLOR used for multi-texture blend */
    D3DRS_WRAP0                     = 128,  # wrap for 1st texture coord. set */
    D3DRS_WRAP1                     = 129,  # wrap for 2nd texture coord. set */
    D3DRS_WRAP2                     = 130,  # wrap for 3rd texture coord. set */
    D3DRS_WRAP3                     = 131,  # wrap for 4th texture coord. set */
    D3DRS_WRAP4                     = 132,  # wrap for 5th texture coord. set */
    D3DRS_WRAP5                     = 133,  # wrap for 6th texture coord. set */
    D3DRS_WRAP6                     = 134,  # wrap for 7th texture coord. set */
    D3DRS_WRAP7                     = 135,  # wrap for 8th texture coord. set */
    D3DRS_CLIPPING                  = 136,
    D3DRS_LIGHTING                  = 137,
    D3DRS_AMBIENT                   = 139,
    D3DRS_FOGVERTEXMODE             = 140,
    D3DRS_COLORVERTEX               = 141,
    D3DRS_LOCALVIEWER               = 142,
    D3DRS_NORMALIZENORMALS          = 143,
    D3DRS_DIFFUSEMATERIALSOURCE     = 145,
    D3DRS_SPECULARMATERIALSOURCE    = 146,
    D3DRS_AMBIENTMATERIALSOURCE     = 147,
    D3DRS_EMISSIVEMATERIALSOURCE    = 148,
    D3DRS_VERTEXBLEND               = 151,
    D3DRS_CLIPPLANEENABLE           = 152,
    D3DRS_POINTSIZE                 = 154,   # float point size */
    D3DRS_POINTSIZE_MIN             = 155,   # float point size min threshold */
    D3DRS_POINTSPRITEENABLE         = 156,   # BOOL point texture coord control */
    D3DRS_POINTSCALEENABLE          = 157,   # BOOL point size scale enable */
    D3DRS_POINTSCALE_A              = 158,   # float point attenuation A value */
    D3DRS_POINTSCALE_B              = 159,   # float point attenuation B value */
    D3DRS_POINTSCALE_C              = 160,   # float point attenuation C value */
    D3DRS_MULTISAMPLEANTIALIAS      = 161,  #BOOL - set to do FSAA with multisample buffer
    D3DRS_MULTISAMPLEMASK           = 162,  #DWORD - per-sample enable/disable
    D3DRS_PATCHEDGESTYLE            = 163,  #Sets whether patch edges will use float style tessellation
    D3DRS_DEBUGMONITORTOKEN         = 165,  #DEBUG ONLY - token to debug monitor
    D3DRS_POINTSIZE_MAX             = 166,   # float point size max threshold */
    D3DRS_INDEXEDVERTEXBLENDENABLE  = 167,
    D3DRS_COLORWRITEENABLE          = 168,  #per-channel write enable
    D3DRS_TWEENFACTOR               = 170,   #float tween factor
    D3DRS_BLENDOP                   = 171,   #D3DBLENDOP setting
    D3DRS_POSITIONDEGREE            = 172,   #NPatch position interpolation degree. D3DDEGREE_LINEAR or D3DDEGREE_CUBIC (default)
    D3DRS_NORMALDEGREE              = 173,   #NPatch normal interpolation degree. D3DDEGREE_LINEAR (default) or D3DDEGREE_QUADRATIC
    D3DRS_SCISSORTESTENABLE         = 174,
    D3DRS_SLOPESCALEDEPTHBIAS       = 175,
    D3DRS_ANTIALIASEDLINEENABLE     = 176,
    D3DRS_MINTESSELLATIONLEVEL      = 178,
    D3DRS_MAXTESSELLATIONLEVEL      = 179,
    D3DRS_ADAPTIVETESS_X            = 180,
    D3DRS_ADAPTIVETESS_Y            = 181,
    D3DRS_ADAPTIVETESS_Z            = 182,
    D3DRS_ADAPTIVETESS_W            = 183,
    D3DRS_ENABLEADAPTIVETESSELLATION = 184,
    D3DRS_TWOSIDEDSTENCILMODE       = 185,   # BOOL enable/disable 2 sided stenciling */
    D3DRS_CCW_STENCILFAIL           = 186,   # D3DSTENCILOP to do if ccw stencil test fails */
    D3DRS_CCW_STENCILZFAIL          = 187,   # D3DSTENCILOP to do if ccw stencil test passes and Z test fails */
    D3DRS_CCW_STENCILPASS           = 188,   # D3DSTENCILOP to do if both ccw stencil and Z tests pass */
    D3DRS_CCW_STENCILFUNC           = 189,   # D3DCMPFUNC fn.  ccw Stencil Test passes if ((ref & mask) stencilfn (stencil & mask)) is true */
    D3DRS_COLORWRITEENABLE1         = 190,   # Additional ColorWriteEnables for the devices that support D3DPMISCCAPS_INDEPENDENTWRITEMASKS */
    D3DRS_COLORWRITEENABLE2         = 191,   # Additional ColorWriteEnables for the devices that support D3DPMISCCAPS_INDEPENDENTWRITEMASKS */
    D3DRS_COLORWRITEENABLE3         = 192,   # Additional ColorWriteEnables for the devices that support D3DPMISCCAPS_INDEPENDENTWRITEMASKS */
    D3DRS_BLENDFACTOR               = 193,   # D3DCOLOR used for a constant blend factor during alpha blending for devices that support D3DPBLENDCAPS_BLENDFACTOR */
    D3DRS_SRGBWRITEENABLE           = 194,   # Enable rendertarget writes to be DE-linearized to SRGB (for formats that expose D3DUSAGE_QUERY_SRGBWRITE) */
    D3DRS_DEPTHBIAS                 = 195,
    D3DRS_WRAP8                     = 198,   # Additional wrap states for vs_3_0+ attributes with D3DDECLUSAGE_TEXCOORD */
    D3DRS_WRAP9                     = 199,
    D3DRS_WRAP10                    = 200,
    D3DRS_WRAP11                    = 201,
    D3DRS_WRAP12                    = 202,
    D3DRS_WRAP13                    = 203,
    D3DRS_WRAP14                    = 204,
    D3DRS_WRAP15                    = 205,
    D3DRS_SEPARATEALPHABLENDENABLE  = 206,  # TRUE to enable a separate blending function for the alpha channel */
    D3DRS_SRCBLENDALPHA             = 207,  # SRC blend factor for the alpha channel when D3DRS_SEPARATEDESTALPHAENABLE is TRUE */
    D3DRS_DESTBLENDALPHA            = 208,  # DST blend factor for the alpha channel when D3DRS_SEPARATEDESTALPHAENABLE is TRUE */
    D3DRS_BLENDOPALPHA              = 209,  # Blending operation for the alpha channel when D3DRS_SEPARATEDESTALPHAENABLE is TRUE */
    D3DRS_FORCE_DWORD               = 0x7fffffff, # force 32-bit size enum */

  # 
  # State enumerants for per-stage processing of fixed function pixel processing
  # Two of these affect fixed function vertex processing as well: TEXTURETRANSFORMFLAGS and TEXCOORDINDEX.
  D3DTEXTURESTAGESTATETYPE* {.importcpp: "enum _D3DTEXTURESTAGESTATETYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DTSS_COLOROP        =  1, # D3DTEXTUREOP - per-stage blending controls for color channels */
    D3DTSS_COLORARG1      =  2, # D3DTA_* (texture arg) */
    D3DTSS_COLORARG2      =  3, # D3DTA_* (texture arg) */
    D3DTSS_ALPHAOP        =  4, # D3DTEXTUREOP - per-stage blending controls for alpha channel */
    D3DTSS_ALPHAARG1      =  5, # D3DTA_* (texture arg) */
    D3DTSS_ALPHAARG2      =  6, # D3DTA_* (texture arg) */
    D3DTSS_BUMPENVMAT00   =  7, # float (bump mapping matrix) */
    D3DTSS_BUMPENVMAT01   =  8, # float (bump mapping matrix) */
    D3DTSS_BUMPENVMAT10   =  9, # float (bump mapping matrix) */
    D3DTSS_BUMPENVMAT11   = 10, # float (bump mapping matrix) */
    D3DTSS_TEXCOORDINDEX  = 11, # identifies which set of texture coordinates index this texture */
    D3DTSS_BUMPENVLSCALE  = 22, # float scale for bump map luminance */
    D3DTSS_BUMPENVLOFFSET = 23, # float offset for bump map luminance */
    D3DTSS_TEXTURETRANSFORMFLAGS = 24, # D3DTEXTURETRANSFORMFLAGS controls texture transform */
    D3DTSS_COLORARG0      = 26, # D3DTA_* third arg for triadic ops */
    D3DTSS_ALPHAARG0      = 27, # D3DTA_* third arg for triadic ops */
    D3DTSS_RESULTARG      = 28, # D3DTA_* arg for result (CURRENT or TEMP) */
    D3DTSS_CONSTANT       = 32, # Per-stage constant D3DTA_CONSTANT */
    D3DTSS_FORCE_DWORD   = 0x7fffffff # force 32-bit size enum */

  #
  # State enumerants for per-sampler texture processing.
  #
  D3DSAMPLERSTATETYPE* {.importcpp: "enum _D3DSAMPLERSTATETYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DSAMP_ADDRESSU       = 1,  # D3DTEXTUREADDRESS for U coordinate */
    D3DSAMP_ADDRESSV       = 2,  # D3DTEXTUREADDRESS for V coordinate */
    D3DSAMP_ADDRESSW       = 3,  # D3DTEXTUREADDRESS for W coordinate */
    D3DSAMP_BORDERCOLOR    = 4,  # D3DCOLOR */
    D3DSAMP_MAGFILTER      = 5,  # D3DTEXTUREFILTER filter to use for magnification */
    D3DSAMP_MINFILTER      = 6,  # D3DTEXTUREFILTER filter to use for minification */
    D3DSAMP_MIPFILTER      = 7,  # D3DTEXTUREFILTER filter to use between mipmaps during minification */
    D3DSAMP_MIPMAPLODBIAS  = 8,  # float Mipmap LOD bias */
    D3DSAMP_MAXMIPLEVEL    = 9,  # DWORD 0..(n-1) LOD index of largest map to use (0 == largest) */
    D3DSAMP_MAXANISOTROPY  = 10, # DWORD maximum anisotropy */
    D3DSAMP_SRGBTEXTURE    = 11, # Default = 0 (which means Gamma 1.0, no correction required.) else correct for Gamma = 2.2 */
    D3DSAMP_ELEMENTINDEX   = 12, # When multi-element texture is assigned to sampler, this indicates which element index to use.  Default = 0.  */
    D3DSAMP_DMAPOFFSET     = 13, # Offset in vertices in the pre-sampled displacement map. Only valid for D3DDMAPSAMPLER sampler  */
    D3DSAMP_FORCE_DWORD   = 0x7fffffff # force 32-bit size enum */

  D3DTEXTUREOP* {.importcpp: "enum _D3DTEXTUREOP", d3d9types_header, pure, size: int32.sizeof.} = enum
    # Control
    D3DTOP_DISABLE              = 1,      # disables stage
    D3DTOP_SELECTARG1           = 2,      # the default
    D3DTOP_SELECTARG2           = 3,

    # Modulate
    D3DTOP_MODULATE             = 4,      # multiply args together
    D3DTOP_MODULATE2X           = 5,      # multiply and  1 bit
    D3DTOP_MODULATE4X           = 6,      # multiply and  2 bits

    # Add
    D3DTOP_ADD                  =  7,   # add arguments together
    D3DTOP_ADDSIGNED            =  8,   # add with -0.5 bias
    D3DTOP_ADDSIGNED2X          =  9,   # as above but left  1 bit
    D3DTOP_SUBTRACT             = 10,   # Arg1 - Arg2, with no saturation
    D3DTOP_ADDSMOOTH            = 11,   # add 2 args, subtract product
                                        # Arg1 + Arg2 - Arg1*Arg2
                                        # = Arg1 + (1-Arg1)*Arg2

    # Linear alpha blend: Arg1*(Alpha) + Arg2*(1-Alpha)
    D3DTOP_BLENDDIFFUSEALPHA    = 12, # iterated alpha
    D3DTOP_BLENDTEXTUREALPHA    = 13, # texture alpha
    D3DTOP_BLENDFACTORALPHA     = 14, # alpha from D3DRS_TEXTUREFACTOR

    # Linear alpha blend with pre-multiplied arg1 input: Arg1 + Arg2*(1-Alpha)
    D3DTOP_BLENDTEXTUREALPHAPM  = 15, # texture alpha
    D3DTOP_BLENDCURRENTALPHA    = 16, # by alpha of current color

    # Specular mapping
    D3DTOP_PREMODULATE            = 17,     # modulate with next texture before use
    D3DTOP_MODULATEALPHA_ADDCOLOR = 18,     # Arg1.RGB + Arg1.A*Arg2.RGB
                                            # COLOROP only
    D3DTOP_MODULATECOLOR_ADDALPHA = 19,     # Arg1.RGB*Arg2.RGB + Arg1.A
                                            # COLOROP only
    D3DTOP_MODULATEINVALPHA_ADDCOLOR = 20,  # (1-Arg1.A)*Arg2.RGB + Arg1.RGB
                                            # COLOROP only
    D3DTOP_MODULATEINVCOLOR_ADDALPHA = 21,  # (1-Arg1.RGB)*Arg2.RGB + Arg1.A
                                            # COLOROP only

    # Bump mapping
    D3DTOP_BUMPENVMAP           = 22, # per pixel env map perturbation
    D3DTOP_BUMPENVMAPLUMINANCE  = 23, # with luminance channel

    # This can do either diffuse or specular bump mapping with correct input.
    # Performs the function (Arg1.R*Arg2.R + Arg1.G*Arg2.G + Arg1.B*Arg2.B)
    # where each component has been scaled and offset to make it signed.
    # The result is replicated into all four (including alpha) channels.
    # This is a valid COLOROP only.
    D3DTOP_DOTPRODUCT3          = 24,

    # Triadic ops
    D3DTOP_MULTIPLYADD          = 25, # Arg0 + Arg1*Arg2
    D3DTOP_LERP                 = 26, # (Arg0)*Arg1 + (1-Arg0)*Arg2
    D3DTOP_FORCE_DWORD = 0x7fffffff

  D3DTEXTUREFILTERTYPE* {.importcpp: "enum _D3DTEXTUREFILTERTYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
    D3DTEXF_NONE            = 0,    # filtering disabled (valid for mip filter only)
    D3DTEXF_POINT           = 1,    # nearest
    D3DTEXF_LINEAR          = 2,    # linear interpolation
    D3DTEXF_ANISOTROPIC     = 3,    # anisotropic
    D3DTEXF_PYRAMIDALQUAD   = 6,    # 4-sample tent
    D3DTEXF_GAUSSIANQUAD    = 7,    # 4-sample gaussian
    D3DTEXF_FORCE_DWORD     = 0x7fffffff   # force 32-bit size enum

  # D3DTRANSFORMSTATETYPE* {.importcpp: "enum _D3DTRANSFORMSTATETYPE", d3d9types_header, pure, size: int32.sizeof.} = enum
  #   D3DTS_VIEW          = 2,
  #   D3DTS_PROJECTION    = 3,
  #   D3DTS_TEXTURE0      = 16,
  #   D3DTS_TEXTURE1      = 17,
  #   D3DTS_TEXTURE2      = 18,
  #   D3DTS_TEXTURE3      = 19,
  #   D3DTS_TEXTURE4      = 20,
  #   D3DTS_TEXTURE5      = 21,
  #   D3DTS_TEXTURE6      = 22,
  #   D3DTS_TEXTURE7      = 23,
  #   D3DTS_FORCE_DWORD    = 0x7fffffff # force 32-bit size enum */

  D3DVERTEXBUFFER_DESC* {.importcpp: "struct _D3DVERTEXBUFFER_DESC", d3d9types_header, pure.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL
    Size*: UINT
    FVF*: DWORD

  D3DMATRIX* {.importcpp: "struct _D3DMATRIX", d3d9types_header, bycopy, union, pure.} = object
    v11*: float32 
    v12*: float32 
    v13*: float32 
    v14*: float32
    v21*: float32 
    v22*: float32 
    v23*: float32 
    v24*: float32
    v31*: float32 
    v32*: float32 
    v33*: float32 
    v34*: float32
    v41*: float32 
    v42*: float32 
    v43*: float32
    v44*: float32
    m*: array[4, array[4, float32]]

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


# proc D3DTS_WORLDMATRIX(index: int): D3DTRANSFORMSTATETYPE = 
#   return D3DTRANSFORMSTATETYPE(index + 256)
# const
#   D3DTS_WORLD* = D3DTS_WORLDMATRIX(0)
#   D3DTS_WORLD1* = D3DTS_WORLDMATRIX(1)
#   D3DTS_WORLD2* = D3DTS_WORLDMATRIX(2)
#   D3DTS_WORLD3* = D3DTS_WORLDMATRIX(3)  

# d3d9caps.h ------------------------------------------
const 
  D3DVS20CAPS_PREDICATION* = (1 shl 0)
  D3DVS20_MAX_DYNAMICFLOWCONTROLDEPTH* = 24
  D3DVS20_MIN_DYNAMICFLOWCONTROLDEPTH* = 0
  D3DVS20_MAX_NUMTEMPS* = 32
  D3DVS20_MIN_NUMTEMPS* = 12
  D3DVS20_MAX_STATICFLOWCONTROLDEPTH* = 4
  D3DVS20_MIN_STATICFLOWCONTROLDEPTH* = 1

type
  D3DVSHADERCAPS2_0* {.importcpp: "struct _D3DVSHADERCAPS2_0", d3d9caps_header, pure.} = object
    Caps*: DWORD
    DynamicFlowControlDepth*: int
    NumTemps*: int
    StaticFlowControlDepth*: int


  D3DPSHADERCAPS2_0* {.importcpp: "struct _D3DPSHADERCAPS2_0", d3d9caps_header, pure.} = object
    Caps*: DWORD
    DynamicFlowControlDepth*: int
    NumTemps*: int
    StaticFlowControlDepth*: int
    NumInstructionSlots*: int

  D3DCAPS9* {.importcpp: "struct _D3DCAPS9", d3d9caps_header, pure.} = object
    #Device Info */
    DeviceType*: D3DDEVTYPE
    AdapterOrdinal*: uint

    # Caps from DX7 Draw */
    Caps: DWORD
    Caps2: DWORD
    Caps3*: DWORD
    PresentationIntervals*: DWORD

    # Cursor Caps */
    # DWORD   CursorCaps;

    # # 3D Device Caps */
    # DWORD   DevCaps;

    # DWORD   PrimitiveMiscCaps;
    # DWORD   RasterCaps;
    # DWORD   ZCmpCaps;
    # DWORD   SrcBlendCaps;
    # DWORD   DestBlendCaps;
    # DWORD   AlphaCmpCaps;
    # DWORD   ShadeCaps;
    # DWORD   TextureCaps;
    # DWORD   TextureFilterCaps;          # D3DPTFILTERCAPS for IDirect3DTexture9's
    # DWORD   CubeTextureFilterCaps;      # D3DPTFILTERCAPS for IDirect3DCubeTexture9's
    # DWORD   VolumeTextureFilterCaps;    # D3DPTFILTERCAPS for IDirect3DVolumeTexture9's
    # DWORD   TextureAddressCaps;         # D3DPTADDRESSCAPS for IDirect3DTexture9's
    # DWORD   VolumeTextureAddressCaps;   # D3DPTADDRESSCAPS for IDirect3DVolumeTexture9's

    # DWORD   LineCaps;                   # D3DLINECAPS

    # DWORD   MaxTextureWidth, MaxTextureHeight;
    # DWORD   MaxVolumeExtent;

    # DWORD   MaxTextureRepeat;
    # DWORD   MaxTextureAspectRatio;
    # DWORD   MaxAnisotropy;
    # float   MaxVertexW;

    # float   GuardBandLeft;
    # float   GuardBandTop;
    # float   GuardBandRight;
    # float   GuardBandBottom;

    # float   ExtentsAdjust;
    # DWORD   StencilCaps;

    # DWORD   FVFCaps;
    # DWORD   TextureOpCaps;
    # DWORD   MaxTextureBlendStages;
    # DWORD   MaxSimultaneousTextures;

    # DWORD   VertexProcessingCaps;
    # DWORD   MaxActiveLights;
    # DWORD   MaxUserClipPlanes;
    # DWORD   MaxVertexBlendMatrices;
    # DWORD   MaxVertexBlendMatrixIndex;

    # float   MaxPointSize;

    # DWORD   MaxPrimitiveCount;          # max number of primitives per DrawPrimitive call
    # DWORD   MaxVertexIndex;
    # DWORD   MaxStreams;
    # DWORD   MaxStreamStride;            # max stride for SetStreamSource

    # DWORD   VertexShaderVersion;
    # DWORD   MaxVertexShaderConst;       # number of vertex shader constant registers

    # DWORD   PixelShaderVersion;
    # float   PixelShader1xMaxValue;      # max value storable in registers of ps.1.x shaders

    # # Here are the DX9 specific ones
    # DWORD   DevCaps2;

    # float   MaxNpatchTessellationLevel;
    # DWORD   Reserved5;

    # UINT    MasterAdapterOrdinal;       # ordinal of master adaptor for adapter group
    # UINT    AdapterOrdinalInGroup;      # ordinal inside the adapter group
    # UINT    NumberOfAdaptersInGroup;    # number of adapters in this adapter group (only if master)
    # DWORD   DeclTypes;                  # Data types, supported in vertex declarations
    # DWORD   NumSimultaneousRTs;         # Will be at least 1
    # DWORD   StretchRectFilterCaps;      # Filter caps supported by StretchRect
    # D3DVSHADERCAPS2_0 VS20Caps;
    # D3DPSHADERCAPS2_0 PS20Caps;
    # DWORD   VertexTextureFilterCaps;    # D3DPTFILTERCAPS for IDirect3DTexture9's for texture, used in vertex shaders
    # DWORD   MaxVShaderInstructionsExecuted; # maximum number of vertex shader instructions that can be executed
    # DWORD   MaxPShaderInstructionsExecuted; # maximum number of pixel shader instructions that can be executed
    # DWORD   MaxVertexShader30InstructionSlots; 
    # DWORD   MaxPixelShader30InstructionSlots;




# typedef interface IDirect3DResource9            IDirect3DResource9;
# typedef interface IDirect3DBaseTexture9         IDirect3DBaseTexture9;
# typedef interface IDirect3DTexture9             IDirect3DTexture9;
# typedef interface IDirect3DVolumeTexture9       IDirect3DVolumeTexture9;
# typedef interface IDirect3DCubeTexture9         IDirect3DCubeTexture9;
# typedef interface IDirect3DVertexBuffer9        IDirect3DVertexBuffer9;
# typedef interface IDirect3DIndexBuffer9         IDirect3DIndexBuffer9;
# typedef interface IDirect3DSurface9             IDirect3DSurface9;
# typedef interface IDirect3DVolume9              IDirect3DVolume9;
# typedef interface IDirect3DSwapChain9           IDirect3DSwapChain9;
# typedef interface IDirect3DQuery9               IDirect3DQuery9;

type
  D3DXVECTOR2* {.importcpp: "struct D3DXVECTOR2", d3dx9math_header, pure.} = object
    x*, y*: float32
  LPD3DXVECTOR2* {.importcpp: "LPD3DXVECTOR2",  d3dx9math_header.} = ptr D3DXVECTOR2

proc Vector*(x: float32, y: float32): D3DXVECTOR2 =
  D3DXVECTOR2(x: x, y: y)

type 
  IDirect3DResource9* {.importcpp: "IDirect3DResource9", d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DResource9 methods ***#
    # GetDevice)(THIS_ IDirect3DDevice9** ppDevice) PURE;
    # SetPrivateData)(THIS_ REFGUID refguid,CONST void* pData,DWORD SizeOfData,DWORD Flags) PURE;
    # GetPrivateData)(THIS_ REFGUID refguid,void* pData,DWORD* pSizeOfData) PURE;
    # FreePrivateData)(THIS_ REFGUID refguid) PURE;
    # DWORD, SetPriority)(THIS_ DWORD PriorityNew) PURE;
    # DWORD, GetPriority)(THIS) PURE;
    # void, PreLoad)(THIS) PURE;
    # D3DRESOURCETYPE, GetType)(THIS) PURE;

  IDirect3DSurface9* {.importcpp: "IDirect3DSurface9", d3d9_header, inheritable, pure.} = object of IDirect3DResource9
  LPDIRECT3DSURFACE9* {.importcpp: "LPDIRECT3DSURFACE9",  d3d9_header.} = ptr IDirect3DSurface9
  PDIRECT3DSURFACE9* {.importcpp: "PDIRECT3DSURFACE9",  d3d9_header.} = ptr IDirect3DSurface9

  IDirect3D9* {.importcpp: "IDirect3D9",  d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3D9 methods ***/
    RegisterSoftwareDevice*: proc (pInitializeFunction: pointer): HRESULT {.stdcall.}
    GetAdapterCount*: proc (): UINT {.stdcall.}
    # STDMETHOD(GetAdapterIdentifier)(THIS_ UINT Adapter,DWORD Flags,D3DADAPTER_IDENTIFIER9* pIdentifier) PURE;
    # STDMETHOD_(UINT, GetAdapterModeCount)(THIS_ UINT Adapter,D3DFORMAT Format) PURE;
    # STDMETHOD(EnumAdapterModes)(THIS_ UINT Adapter,D3DFORMAT Format,UINT Mode,D3DDISPLAYMODE* pMode) PURE;
    # STDMETHOD(GetAdapterDisplayMode)(THIS_ UINT Adapter,D3DDISPLAYMODE* pMode) PURE;
    # STDMETHOD(CheckDeviceType)(THIS_ UINT iAdapter,D3DDEVTYPE DevType,D3DFORMAT DisplayFormat,D3DFORMAT BackBufferFormat,BOOL bWindowed) PURE;
    # STDMETHOD(CheckDeviceFormat)(THIS_ UINT Adapter,D3DDEVTYPE DeviceType,D3DFORMAT AdapterFormat,DWORD Usage,D3DRESOURCETYPE RType,D3DFORMAT CheckFormat) PURE;
    CheckDeviceMultiSampleType*: proc (Adapter: UINT, DeviceType: D3DDEVTYPE, SurfaceFormat: D3DFORMAT, Windowed: BOOL, MultiSampleType: D3DMULTISAMPLE_TYPE, pQualityLevels: ptr DWORD): HRESULT {.stdcall.}
    CheckDepthStencilMatch*: proc (Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, RenderTargetFormat: D3DFORMAT, DepthStencilFormat: D3DFORMAT): HRESULT {.stdcall.}
    CheckDeviceFormatConversion*: proc (Adapter: UINT, DeviceType: D3DDEVTYPE, SourceFormat: D3DFORMAT, TargetFormat: D3DFORMAT): HRESULT {.stdcall.}
    GetDeviceCaps*: proc (Adapter: UINT, DeviceType: D3DDEVTYPE, pCaps: ptr D3DCAPS9): HRESULT {.stdcall.}
    GetAdapterMonitor*: proc (Adapter: UINT): HMONITOR {.stdcall.}
    CreateDevice*: proc (Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: pointer, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
  LPDIRECT3D9* {.importcpp: "LPDIRECT3D9",  d3d9_header.} = ptr IDirect3D9
  PDIRECT3D9* {.importcpp: "PDIRECT3D9",  d3d9_header.} = ptr IDirect3D9

  IDirect3DDevice9* {.importcpp: "IDirect3DDevice9", d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    # IDirect3DDevice9 methods ***/
    TestCooperativeLevel*: proc(): HRESULT {.stdcall.}
    GetAvailableTextureMem*: proc(): uint {.stdcall.}
    EvictManagedResources*: proc(): HRESULT {.stdcall.}
    GetDirect3D*: proc(ppD3D9: ptr ptr IDirect3D9): HRESULT {.stdcall.}
    GetDeviceCaps*: proc(pCaps: ptr D3DCAPS9): HRESULT {.stdcall.}
    GetDisplayMode*: proc(iSwapChain: uint, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall.}
    GetCreationParameters*: proc(pParameters: ptr D3DDEVICE_CREATION_PARAMETERS): HRESULT {.stdcall.}
    SetCursorProperties*: proc(XHotSpot: uint, YHotSpot: uint, pCursorBitmap: ptr IDirect3DSurface9): HRESULT {.stdcall.}
    SetCursorPosition*: proc(X: int,Y: int, Flags: DWORD): void {.stdcall.}
    ShowCursor*: proc(bShow: bool): bool {.stdcall.}
    Clear*: proc(Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: DWORD, Z: float, Stencil: DWORD): HRESULT {.stdcall.}
    BeginScene*: proc(): HRESULT {.stdcall.}
    EndScene*: proc(): HRESULT {.stdcall.}
    Present*: proc(pSourceRect: ptr RECTT, pDestRect: ptr RECTT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.stdcall.}
    Reset*: proc(pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall.}
    SetVertexShader*: proc(pShader: ptr IDirect3DVertexShader9): HRESULT {.stdcall.}
    GetVertexShader*: proc(pShader: ptr ptr IDirect3DVertexShader9): HRESULT {.stdcall.}
    SetViewport*: proc(pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall.}
    SetPixelShader*: proc(pShader: ptr IDirect3DPixelShader9): HRESULT {.stdcall.}
    GetPixelShader*: proc(ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.stdcall.}
    SetRenderState*: proc(State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.stdcall.}
    GetRenderState*: proc(State: D3DRENDERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall.}
    GetTextureStageState*: proc(Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall.}
    SetTextureStageState*: proc(Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.stdcall.}
    GetSamplerState*: proc(Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall.}
    SetSamplerState*: proc(Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.stdcall.}
    ValidateDevice*: proc(pNumPasses: ptr DWORD): HRESULT {.stdcall.}
    CreateVertexBuffer*: proc(Length: UINT, Usage: DWORD, FVF: DWORD, Pool: D3DPOOL, ppVertexBuffer: ptr ptr IDirect3DVertexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall.}
    CreateIndexBuffer*: proc(Length: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppIndexBuffer: ptr ptr IDirect3DIndexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall.}
    CreateStateBlock*: proc(Type: D3DSTATEBLOCKTYPE, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.stdcall.}
    SetStreamSource*: proc(StreamNumber: UINT, pStreamData: ptr IDirect3DVertexBuffer9, OffsetInBytes: UINT, Stride: UINT): HRESULT {.stdcall.}
    SetFVF*: proc(FVF: DWORD): HRESULT {.stdcall.}
    SetIndices*: proc(pIndexData: ptr IDirect3DIndexBuffer9): HRESULT {.stdcall.}
    GetIndices*: proc(ppIndexData: ptr ptr IDirect3DIndexBuffer9): HRESULT {.stdcall.}
    CreateTexture*: proc(Width: UINT, Height: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppTexture: ptr ptr IDirect3DTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall.}

    # SetTransform*: proc(State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall.}
    # GetTransform*: proc(State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall.}
  LPDIRECT3DDEVICE9* {.importcpp: "LPDIRECT3DDEVICE9", d3d9_header.} = ptr IDirect3DDevice9
  PDIRECT3DDEVICE9* {.importcpp: "PDIRECT3DDEVICE9", d3d9_header.} = ptr IDirect3DDevice9

  IDirect3DStateBlock9* {.importcpp: "IDirect3DStateBlock9",  d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DStateBlock9 methods ***#
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
    Capture*: proc(): HRESULT {.stdcall.}
    Apply*: proc(): HRESULT {.stdcall.}
  LPDIRECT3DSTATEBLOCK9* {.importcpp: "LPDIRECT3DSTATEBLOCK9",  d3d9_header.} = ptr IDirect3DStateBlock9
  PDIRECT3DSTATEBLOCK9* {.importcpp: "PDIRECT3DSTATEBLOCK9",  d3d9_header.} = ptr IDirect3DStateBlock9

  IDirect3DVertexDeclaration9* {.importcpp: "IDirect3DVertexDeclaration9",  d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DVertexDeclaration9 methods ***#
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
  LPDIRECT3DVERTEXDECLARATION9* {.importcpp: "LPDIRECT3DVERTEXDECLARATION9",  d3d9_header.} = ptr IDirect3DVertexDeclaration9
  PDIRECT3DVERTEXDECLARATION9* {.importcpp: "PDIRECT3DVERTEXDECLARATION9",  d3d9_header.} = ptr IDirect3DVertexDeclaration9

  IDirect3DVertexShader9* {.importcpp: "IDirect3DVertexShader9",  d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DVertexShader9 methods ***#
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
  LPDIRECT3DVERTEXSHADER9* {.importcpp: "LPDIRECT3DVERTEXSHADER9",  d3d9_header.} = ptr IDirect3DVertexShader9
  PDIRECT3DVERTEXSHADER9* {.importcpp: "PDIRECT3DVERTEXSHADER9",  d3d9_header.} = ptr IDirect3DVertexShader9

  IDirect3DPixelShader9* {.importcpp: "IDirect3DPixelShader9", d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DPixelShader9 methods ***#
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
  LPDIRECT3DPIXELSHADER9* {.importcpp: "LPDIRECT3DPIXELSHADER9", d3d9_header.} = ptr IDirect3DPixelShader9
  PDIRECT3DPIXELSHADER9* {.importcpp: "PDIRECT3DPIXELSHADER9", d3d9_header.} = ptr IDirect3DPixelShader9


  IDirect3DVertexBuffer9* {.importcpp: "IDirect3DVertexBuffer9", d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DVertexBuffer9 methods ***/
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
    SetPriority*: proc(PriorityNew: DWORD): DWORD {.stdcall.}
    GetPriority*: proc(): DWORD {.stdcall.}
    PreLoad*: proc(): void {.stdcall.}
    GetType*: proc(): D3DRESOURCETYPE {.stdcall.}
    Lock*: proc(OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.stdcall.}
    Unlock*: proc(): HRESULT {.stdcall.}
    GetDesc*: proc(pDesc: ptr D3DVERTEXBUFFER_DESC): HRESULT {.stdcall.}
  LPDIRECT3DVERTEXBUFFER9* {.importcpp: "LPDIRECT3DVERTEXBUFFER9", d3d9_header.} = ptr IDirect3DVertexBuffer9
  PDIRECT3DVERTEXBUFFER9* {.importcpp: "PDIRECT3DVERTEXBUFFER9", d3d9_header.} = ptr IDirect3DVertexBuffer9


  IDirect3DIndexBuffer9* {.importcpp: "IDirect3DIndexBuffer9", d3d9_header, inheritable, pure.} = object
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DIndexBuffer9 methods ***/
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
    SetPriority*: proc(PriorityNew: DWORD): DWORD {.stdcall.}
    GetPriority*: proc(): DWORD {.stdcall.}
    PreLoad*: proc(): void {.stdcall.}
    GetType*: proc(): D3DRESOURCETYPE {.stdcall.}
    Lock*: proc(OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.stdcall.}
    Unlock*: proc(): HRESULT {.stdcall.}
    GetDesc*: proc(pDesc: ptr D3DVERTEXBUFFER_DESC): HRESULT {.stdcall.}
  LPDIRECT3DINDEXBUFFER9* {.importcpp: "LPDIRECT3DINDEXBUFFER9", d3d9_header.} = ptr IDirect3DIndexBuffer9
  PDIRECT3DINDEXBUFFER9* {.importcpp: "PDIRECT3DINDEXBUFFER9", d3d9_header.} = ptr IDirect3DIndexBuffer9

  IDirect3DBaseTexture9* {.importcpp: "IDirect3DBaseTexture9",  d3d9_header, inheritable, pure.} = object
  IDirect3DTexture9* {.importcpp: "IDirect3DTexture9",  d3d9_header, inheritable, pure.} = object of IDirect3DBaseTexture9
    #*** IUnknown methods ***/
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}

    #*** IDirect3DTexture9 methods ***/
    SetPriority*: proc(PriorityNew: DWORD): DWORD {.stdcall.}
    GetPriority*: proc(): DWORD {.stdcall.}
    PreLoad*: proc(): void {.stdcall.}
    GetType*: proc(): D3DRESOURCETYPE {.stdcall.}
    SetLOD*: proc(LODNew: DWORD): DWORD {.stdcall.}
    GetLOD*: proc(): DWORD {.stdcall.}
    GetLevelCount*: proc(): DWORD {.stdcall.}
    SetAutoGenFilterType*: proc(FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall.}
    GetAutoGenFilterType*: proc(): D3DTEXTUREFILTERTYPE {.stdcall.}
    GenerateMipSubLevels*: proc(): void {.stdcall.}
    GetLevelDesc*: proc(Level: UINT, pDesc: ptr D3DSURFACE_DESC): HRESULT {.stdcall.}
    GetSurfaceLevel*: proc(Level: UINT, ppSurfaceLevel: ptr ptr IDirect3DSurface9): HRESULT {.stdcall.}
    LockRect*: proc(Level: UINT, pLockedRect: ptr D3DLOCKED_RECT, pRect: pointer, Flags: DWORD): HRESULT {.stdcall.}
    UnlockRect*: proc(Level: UINT): HRESULT {.stdcall.}
    AddDirtyRect*: proc(pDirtyRect: ptr RECTT): HRESULT {.stdcall.}
  LPDIRECT3DTEXTURE9* {.importcpp: "LPDIRECT3DTEXTURE9", d3d9_header.} = ptr IDirect3DTexture9
  PDIRECT3DTEXTURE9* {.importcpp: "PDIRECT3DTEXTURE9", d3d9_header.} = ptr IDirect3DTexture9 

  ID3DXLine* {.importcpp: "ID3DXLine",  d3dx9core_header, inheritable, pure.} = object
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall.}
    Begin*: proc(): HRESULT {.stdcall.}
    Draw*: proc(pVertexList: ptr D3DXVECTOR2, dwVertexListCount: DWORD, color: DWORD): HRESULT {.stdcall.}
    SetPattern*: proc(dwPattern: DWORD): HRESULT {.stdcall.}
    GetPattern*: proc(): DWORD {.stdcall.}
    SetPatternScale*: proc(fPatternScale: float): HRESULT {.stdcall.}
    GetPatternScale*: proc(): float {.stdcall.}
    SetWidth*: proc(fWidth: float): HRESULT {.stdcall.}
    GetWidth*: proc(): float {.stdcall.}
    SetAntialias*: proc(bAntialias: bool): HRESULT {.stdcall.}
    GetAntialias*: proc(): bool {.stdcall.}
    SetGLLines: proc(bGLLines: bool): HRESULT {.stdcall.}
    GetGLLines*: proc(): bool {.stdcall.}
    End*: proc(): HRESULT {.stdcall.}
    OnLostDevice*: proc(): HRESULT {.stdcall.}
    OnResetDevice*: proc(): HRESULT {.stdcall.}
  LPD3DXLINE* {.importcpp: "LPD3DXLINE", d3dx9core_header.} = ptr ID3DXLine

  ID3DXSprite* {.importcpp: "ID3DXSprite",  d3dx9core_header, inheritable, pure.} = object
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}
    Begin*: proc(): HRESULT {.stdcall.}
    # STDMETHOD(Draw)(THIS_ LPDIRECT3DTEXTURE9 pTexture, CONST RECT *pSrcRect, CONST D3DXVECTOR3 *pCenter, CONST D3DXVECTOR3 *pPosition, D3DCOLOR Color) PURE;
    Flush*: proc(): HRESULT {.stdcall.}
    End*: proc(): HRESULT {.stdcall.}
    OnLostDevice*: proc(): int32 {.stdcall.}
    OnResetDevice*: proc(): int32 {.stdcall.}
  LPD3DXSPRITE* {.importcpp: "LPD3DXSPRITE", d3dx9core_header.} = ptr ID3DXSprite

  ID3DXFont* {.importcpp: "ID3DXFont",  d3dx9core_header, inheritable, pure.} = object
    QueryInterface*: proc (riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall.}
    AddRef*: proc (): ULONG {.stdcall.}
    Release*: proc (): ULONG {.stdcall.}
    GetDevice*: proc(ppDevice: ptr ptr IDirect3DDevice9): int32 {.stdcall.}
    DrawTextW*: proc (pSprite: LPD3DXSPRITE, pString: LPCWSTR, count: int32, pRect: pointer, Format: uint, color: int32): int32 {.stdcall.}

    OnLostDevice*: proc(): int32 {.stdcall.}
    OnResetDevice*: proc(): int32 {.stdcall.}
  LPD3DXFONT* {.importcpp: "LPD3DXFONT", d3dx9core_header.} = ptr ID3DXFont

proc D3DXCreateLine*(pDevice: LPDIRECT3DDEVICE9, ppLine: ptr LPD3DXLINE): HRESULT {.importcpp: "D3DXCreateLine(@, @)",  d3dx9core_header, stdcall, discardable.}
proc D3DXCreateFont*(pDevice: LPDIRECT3DDEVICE9, height: int, width: uint, weight: uint, mipLevel: uint, intalic: bool, charset: DWORD, outputPrecision: DWORD, quality: DWORD, pitchAndFamily: DWORD, pFaceName: LPCWSTR, ppFont: ptr LPD3DXFONT): HRESULT {.importcpp: "D3DXCreateFontW(@)", d3dx9core_header, stdcall, discardable.}
func Direct3DCreate9*(SDKVersion: uint): ptr IDirect3D9 {.importcpp: "Direct3DCreate9(@)", d3d9_header, stdcall.}
func D3DCOLOR_ARGB*(a: int, r: int, g: int, b: int): DWORD = 
  return (cast[int32](((((a) and 0xff) shl 24) or (((r) and 0xff) shl 16) or (((g) and 0xff) shl 8) or ((b) and 0xff))))

func D3DCOLOR_RGBA*(r: int, g: int, b: int, a: int): DWORD = D3DCOLOR_ARGB(a, r, g, b)
func D3DCOLOR_XRGB*(r: int, g: int, b: int): DWORD = D3DCOLOR_ARGB(0xff, r, g, b) 
func D3DCOLOR_XYUV*(y: int, u: int, v: int): DWORD = D3DCOLOR_ARGB(0xff, y, u, v)
func D3DCOLOR_AYUV*(a: int, y: int, u: int, v: int): DWORD = D3DCOLOR_ARGB(a, y, u, v)
