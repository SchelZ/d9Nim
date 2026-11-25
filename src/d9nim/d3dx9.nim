## D3DX 9 bindings (d3dx9*.h).
## Generated from the DirectX SDK (June 2010) headers, don't edit by hand.
## Needs d3dx9_43.dll from the DirectX End-User Runtimes (June 2010).

when not defined(windows):
  {.error: "Direct3D 9 is only available on Windows.".}

import winim/lean
import d3d9

{.push hint[Name]: off, stackTrace: off, lineTrace: off.}

when defined(nimHasQuirky):
  {.pragma: d9m, inline, quirky.}
  {.pragma: d9md, inline, discardable, quirky.}
else:
  {.pragma: d9m, inline.}
  {.pragma: d9md, inline, discardable.}

type
  IStream* = object of IUnknown
  LPD3DXFLOAT16* = ptr D3DXFLOAT16
  LPD3DXVECTOR2* = ptr D3DXVECTOR2
  LPD3DXVECTOR2_16F* = ptr D3DXVECTOR2_16F
  D3DXVECTOR3* = D3DVECTOR
  LPD3DXVECTOR3* = ptr D3DXVECTOR3
  LPD3DXVECTOR3_16F* = ptr D3DXVECTOR3_16F
  LPD3DXVECTOR4* = ptr D3DXVECTOR4
  LPD3DXVECTOR4_16F* = ptr D3DXVECTOR4_16F
  D3DXMATRIX* = D3DMATRIX
  LPD3DXMATRIX* = ptr D3DXMATRIX
  D3DXMATRIXA16* = D3DXMATRIX
  LPD3DXMATRIXA16* = ptr D3DXMATRIX
  LPD3DXQUATERNION* = ptr D3DXQUATERNION
  LPD3DXPLANE* = ptr D3DXPLANE
  LPD3DXCOLOR* = ptr D3DXCOLOR
  LPD3DXMATRIXSTACK* = ptr ID3DXMatrixStack
  LPD3DXBUFFER* = ptr ID3DXBuffer
  LPD3DXSPRITE* = ptr ID3DXSprite
  LPD3DXFONT_DESCA* = ptr D3DXFONT_DESCA
  LPD3DXFONT_DESCW* = ptr D3DXFONT_DESCW
  D3DXFONT_DESC* = D3DXFONT_DESCW
  LPD3DXFONT_DESC* = LPD3DXFONT_DESCW
  LPD3DXFONT* = ptr ID3DXFont
  LPD3DXRTS_DESC* = ptr D3DXRTS_DESC
  LPD3DXRENDERTOSURFACE* = ptr ID3DXRenderToSurface
  LPD3DXRTE_DESC* = ptr D3DXRTE_DESC
  LPD3DXRenderToEnvMap* = ptr ID3DXRenderToEnvMap
  LPD3DXLINE* = ptr ID3DXLine
  D3DXF_FILEFORMAT* = DWORD
  D3DXF_FILESAVEOPTIONS* = DWORD
  D3DXF_FILELOADOPTIONS* = DWORD
  LPD3DXFILE* = ptr ID3DXFile
  LPLPD3DXFILE* = ptr LPD3DXFILE
  LPD3DXFILEENUMOBJECT* = ptr ID3DXFileEnumObject
  LPLPD3DXFILEENUMOBJECT* = ptr LPD3DXFILEENUMOBJECT
  LPD3DXFILESAVEOBJECT* = ptr ID3DXFileSaveObject
  LPLPD3DXFILESAVEOBJECT* = ptr LPD3DXFILESAVEOBJECT
  LPD3DXFILEDATA* = ptr ID3DXFileData
  LPLPD3DXFILEDATA* = ptr LPD3DXFILEDATA
  LPD3DXFILESAVEDATA* = ptr ID3DXFileSaveData
  LPLPD3DXFILESAVEDATA* = ptr LPD3DXFILESAVEDATA
  LPD3DXBASEMESH* = ptr ID3DXBaseMesh
  LPD3DXMESH* = ptr ID3DXMesh
  LPD3DXPMESH* = ptr ID3DXPMesh
  LPD3DXSPMESH* = ptr ID3DXSPMesh
  LPD3DXSKININFO* = ptr ID3DXSkinInfo
  LPD3DXPATCHMESH* = ptr ID3DXPatchMesh
  LPD3DXTEXTUREGUTTERHELPER* = ptr ID3DXTextureGutterHelper
  LPD3DXPRTBUFFER* = ptr ID3DXPRTBuffer
  LPD3DXATTRIBUTERANGE* = ptr D3DXATTRIBUTERANGE
  LPD3DXMATERIAL* = ptr D3DXMATERIAL
  LPD3DXEFFECTDEFAULT* = ptr D3DXEFFECTDEFAULT
  LPD3DXEFFECTINSTANCE* = ptr D3DXEFFECTINSTANCE
  LPD3DXATTRIBUTEWEIGHTS* = ptr D3DXATTRIBUTEWEIGHTS
  LPD3DXWELDEPSILONS* = ptr D3DXWELDEPSILONS
  LPD3DXBONECOMBINATION* = ptr D3DXBONECOMBINATION
  LPD3DXPATCHINFO* = ptr D3DXPATCHINFO
  LPD3DXINTERSECTINFO* = ptr D3DXINTERSECTINFO
  LPD3DXUVATLASCB* = proc(fPercentDone: float32, lpUserContext: pointer): HRESULT {.stdcall.}
  LPD3DXIMTSIGNALCALLBACK* = proc(uv: ptr D3DXVECTOR2, uPrimitiveID: UINT, uSignalDimension: UINT, pUserData: pointer, pfSignalOut: ptr float32): HRESULT {.stdcall.}
  LPD3DXSHPRTSIMCB* = proc(fPercentDone: float32, lpUserContext: pointer): HRESULT {.stdcall.}
  LPD3DXPRTCOMPBUFFER* = ptr ID3DXPRTCompBuffer
  LPD3DXPRTENGINE* = ptr ID3DXPRTEngine
  D3DXHANDLE* = cstring
  LPD3DXHANDLE* = ptr D3DXHANDLE
  LPD3DXMACRO* = ptr D3DXMACRO
  LPD3DXSEMANTIC* = ptr D3DXSEMANTIC
  LPD3DXREGISTER_SET* = ptr D3DXREGISTER_SET
  LPD3DXPARAMETER_CLASS* = ptr D3DXPARAMETER_CLASS
  LPD3DXPARAMETER_TYPE* = ptr D3DXPARAMETER_TYPE
  LPD3DXCONSTANTTABLE_DESC* = ptr D3DXCONSTANTTABLE_DESC
  LPD3DXCONSTANT_DESC* = ptr D3DXCONSTANT_DESC
  LPD3DXCONSTANTTABLE* = ptr ID3DXConstantTable
  LPD3DXTEXTURESHADER* = ptr ID3DXTextureShader
  LPD3DXINCLUDE_TYPE* = ptr D3DXINCLUDE_TYPE
  LPD3DXINCLUDE* = ptr ID3DXInclude
  LPD3DXSHADER_CONSTANTTABLE* = ptr D3DXSHADER_CONSTANTTABLE
  LPD3DXSHADER_CONSTANTINFO* = ptr D3DXSHADER_CONSTANTINFO
  LPD3DXSHADER_TYPEINFO* = ptr D3DXSHADER_TYPEINFO
  LPD3DXSHADER_STRUCTMEMBERINFO* = ptr D3DXSHADER_STRUCTMEMBERINFO
  LPD3DXEFFECTPOOL* = ptr ID3DXEffectPool
  LPD3DXBASEEFFECT* = ptr ID3DXBaseEffect
  LPD3DXEFFECTSTATEMANAGER* = ptr ID3DXEffectStateManager
  LPD3DXEFFECT* = ptr ID3DXEffect
  LPD3DXEFFECTCOMPILER* = ptr ID3DXEffectCompiler
  LPD3DXFILL2D* = proc(pOut: ptr D3DXVECTOR4, pTexCoord: ptr D3DXVECTOR2, pTexelSize: ptr D3DXVECTOR2, pData: pointer) {.stdcall.}
  LPD3DXFILL3D* = proc(pOut: ptr D3DXVECTOR4, pTexCoord: ptr D3DXVECTOR3, pTexelSize: ptr D3DXVECTOR3, pData: pointer) {.stdcall.}
  LPD3DXMESHDATA* = ptr D3DXMESHDATA
  LPD3DXMESHCONTAINER* = ptr D3DXMESHCONTAINER
  LPD3DXFRAME* = ptr D3DXFRAME
  LPD3DXALLOCATEHIERARCHY* = ptr ID3DXAllocateHierarchy
  LPD3DXLOADUSERDATA* = ptr ID3DXLoadUserData
  LPD3DXSAVEUSERDATA* = ptr ID3DXSaveUserData
  LPD3DXANIMATIONSET* = ptr ID3DXAnimationSet
  LPD3DXKEY_VECTOR3* = ptr D3DXKEY_VECTOR3
  LPD3DXKEY_QUATERNION* = ptr D3DXKEY_QUATERNION
  LPD3DXKEY_CALLBACK* = ptr D3DXKEY_CALLBACK
  LPD3DXKEYFRAMEDANIMATIONSET* = ptr ID3DXKeyframedAnimationSet
  LPD3DXCOMPRESSEDANIMATIONSET* = ptr ID3DXCompressedAnimationSet
  LPD3DXTRACK_DESC* = ptr D3DXTRACK_DESC
  LPD3DXEVENT_DESC* = ptr D3DXEVENT_DESC
  D3DXEVENTHANDLE* = DWORD
  LPD3DXEVENTHANDLE* = ptr D3DXEVENTHANDLE
  LPD3DXANIMATIONCALLBACKHANDLER* = ptr ID3DXAnimationCallbackHandler
  LPD3DXANIMATIONCONTROLLER* = ptr ID3DXAnimationController

  D3DXPATCHMESHTYPE* = distinct int32
  D3DXCLEANTYPE* = distinct int32
  D3DXTANGENT* = distinct int32
  D3DXIMT* = distinct int32
  D3DXUVATLAS* = distinct int32
  D3DXEFFECTDEFAULTTYPE* = distinct int32
  D3DXSHCOMPRESSQUALITYTYPE* = distinct int32
  D3DXSHGPUSIMOPT* = distinct int32
  D3DXREGISTER_SET* = distinct int32
  D3DXPARAMETER_CLASS* = distinct int32
  D3DXPARAMETER_TYPE* = distinct int32
  D3DXINCLUDE_TYPE* = distinct int32
  D3DXIMAGE_FILEFORMAT* = distinct int32
  D3DXMESHDATATYPE* = distinct int32
  D3DXCALLBACK_SEARCH_FLAGS* = distinct int32
  D3DXPLAYBACK_TYPE* = distinct int32
  D3DXCOMPRESSION_FLAGS* = distinct int32
  D3DXPRIORITY_TYPE* = distinct int32
  D3DXEVENT_TYPE* = distinct int32
  D3DXTRANSITION_TYPE* = distinct int32

  D3DXMESHDATA_u* {.pure, union, bycopy.} = object
    pMesh*: LPD3DXMESH
    pPMesh*: LPD3DXPMESH
    pPatchMesh*: LPD3DXPATCHMESH

  D3DXEVENT_DESC_u* {.pure, union, bycopy.} = object
    Weight*: float32
    Speed*: float32
    Position*: DOUBLE
    Enable*: BOOL

  D3DXFLOAT16* {.pure, bycopy.} = object
    value*: WORD

  D3DXVECTOR2* {.pure, bycopy.} = object
    x*: float32
    y*: float32

  D3DXVECTOR2_16F* {.pure, bycopy.} = object
    x*: D3DXFLOAT16
    y*: D3DXFLOAT16

  D3DXVECTOR3_16F* {.pure, bycopy.} = object
    x*: D3DXFLOAT16
    y*: D3DXFLOAT16
    z*: D3DXFLOAT16

  D3DXVECTOR4* {.pure, bycopy.} = object
    x*: float32
    y*: float32
    z*: float32
    w*: float32

  D3DXVECTOR4_16F* {.pure, bycopy.} = object
    x*: D3DXFLOAT16
    y*: D3DXFLOAT16
    z*: D3DXFLOAT16
    w*: D3DXFLOAT16

  D3DXQUATERNION* {.pure, bycopy.} = object
    x*: float32
    y*: float32
    z*: float32
    w*: float32

  D3DXPLANE* {.pure, bycopy.} = object
    a*: float32
    b*: float32
    c*: float32
    d*: float32

  D3DXCOLOR* {.pure, bycopy.} = object
    r*: float32
    g*: float32
    b*: float32
    a*: float32

  D3DXFONT_DESCA* {.pure, bycopy.} = object
    Height*: INT
    Width*: UINT
    Weight*: UINT
    MipLevels*: UINT
    Italic*: BOOL
    CharSet*: BYTE
    OutputPrecision*: BYTE
    Quality*: BYTE
    PitchAndFamily*: BYTE
    FaceName*: array[32, CHAR]

  D3DXFONT_DESCW* {.pure, bycopy.} = object
    Height*: INT
    Width*: UINT
    Weight*: UINT
    MipLevels*: UINT
    Italic*: BOOL
    CharSet*: BYTE
    OutputPrecision*: BYTE
    Quality*: BYTE
    PitchAndFamily*: BYTE
    FaceName*: array[32, WCHAR]

  D3DXRTS_DESC* {.pure, bycopy.} = object
    Width*: UINT
    Height*: UINT
    Format*: D3DFORMAT
    DepthStencil*: BOOL
    DepthStencilFormat*: D3DFORMAT

  D3DXRTE_DESC* {.pure, bycopy.} = object
    Size*: UINT
    MipLevels*: UINT
    Format*: D3DFORMAT
    DepthStencil*: BOOL
    DepthStencilFormat*: D3DFORMAT

  D3DXF_FILELOADRESOURCE* {.pure, bycopy.} = object
    hModule*: HMODULE
    lpName*: cstring
    lpType*: cstring

  D3DXF_FILELOADMEMORY* {.pure, bycopy.} = object
    lpMemory*: pointer
    dSize*: uint

  D3DXATTRIBUTERANGE* {.pure, bycopy.} = object
    AttribId*: DWORD
    FaceStart*: DWORD
    FaceCount*: DWORD
    VertexStart*: DWORD
    VertexCount*: DWORD

  D3DXMATERIAL* {.pure, bycopy.} = object
    MatD3D*: D3DMATERIAL9
    pTextureFilename*: cstring

  D3DXEFFECTDEFAULT* {.pure, bycopy.} = object
    pParamName*: cstring
    Type*: D3DXEFFECTDEFAULTTYPE
    NumBytes*: DWORD
    pValue*: pointer

  D3DXEFFECTINSTANCE* {.pure, bycopy.} = object
    pEffectFilename*: cstring
    NumDefaults*: DWORD
    pDefaults*: LPD3DXEFFECTDEFAULT

  D3DXATTRIBUTEWEIGHTS* {.pure, bycopy.} = object
    Position*: float32
    Boundary*: float32
    Normal*: float32
    Diffuse*: float32
    Specular*: float32
    Texcoord*: array[8, float32]
    Tangent*: float32
    Binormal*: float32

  D3DXWELDEPSILONS* {.pure, bycopy.} = object
    Position*: float32
    BlendWeights*: float32
    Normal*: float32
    PSize*: float32
    Specular*: float32
    Diffuse*: float32
    Texcoord*: array[8, float32]
    Tangent*: float32
    Binormal*: float32
    TessFactor*: float32

  D3DXBONECOMBINATION* {.pure, bycopy.} = object
    AttribId*: DWORD
    FaceStart*: DWORD
    FaceCount*: DWORD
    VertexStart*: DWORD
    VertexCount*: DWORD
    BoneId*: ptr DWORD

  D3DXPATCHINFO* {.pure, bycopy.} = object
    PatchType*: D3DXPATCHMESHTYPE
    Degree*: D3DDEGREETYPE
    Basis*: D3DBASISTYPE

  D3DXINTERSECTINFO* {.pure, bycopy.} = object
    FaceIndex*: DWORD
    U*: float32
    V*: float32
    Dist*: float32

  D3DXSHMATERIAL* {.pure, bycopy.} = object
    Diffuse*: D3DCOLORVALUE
    bMirror*: BOOL
    bSubSurf*: BOOL
    RelativeIndexOfRefraction*: float32
    Absorption*: D3DCOLORVALUE
    ReducedScattering*: D3DCOLORVALUE

  D3DXSHPRTSPLITMESHVERTDATA* {.pure, bycopy.} = object
    uVertRemap*: UINT
    uSubCluster*: UINT
    ucVertStatus*: UCHAR

  D3DXSHPRTSPLITMESHCLUSTERDATA* {.pure, bycopy.} = object
    uVertStart*: UINT
    uVertLength*: UINT
    uFaceStart*: UINT
    uFaceLength*: UINT
    uClusterStart*: UINT
    uClusterLength*: UINT

  XFILECOMPRESSEDANIMATIONSET* {.pure, bycopy.} = object
    CompressedBlockSize*: DWORD
    TicksPerSec*: float32
    PlaybackType*: DWORD
    BufferLength*: DWORD

  D3DXMACRO* {.pure, bycopy.} = object
    Name*: cstring
    Definition*: cstring

  D3DXSEMANTIC* {.pure, bycopy.} = object
    Usage*: UINT
    UsageIndex*: UINT

  D3DXCONSTANTTABLE_DESC* {.pure, bycopy.} = object
    Creator*: cstring
    Version*: DWORD
    Constants*: UINT

  D3DXCONSTANT_DESC* {.pure, bycopy.} = object
    Name*: cstring
    RegisterSet*: D3DXREGISTER_SET
    RegisterIndex*: UINT
    RegisterCount*: UINT
    Class*: D3DXPARAMETER_CLASS
    Type*: D3DXPARAMETER_TYPE
    Rows*: UINT
    Columns*: UINT
    Elements*: UINT
    StructMembers*: UINT
    Bytes*: UINT
    DefaultValue*: pointer

  D3DXSHADER_CONSTANTTABLE* {.pure, bycopy.} = object
    Size*: DWORD
    Creator*: DWORD
    Version*: DWORD
    Constants*: DWORD
    ConstantInfo*: DWORD
    Flags*: DWORD
    Target*: DWORD

  D3DXSHADER_CONSTANTINFO* {.pure, bycopy.} = object
    Name*: DWORD
    RegisterSet*: WORD
    RegisterIndex*: WORD
    RegisterCount*: WORD
    Reserved*: WORD
    TypeInfo*: DWORD
    DefaultValue*: DWORD

  D3DXSHADER_TYPEINFO* {.pure, bycopy.} = object
    Class*: WORD
    Type*: WORD
    Rows*: WORD
    Columns*: WORD
    Elements*: WORD
    StructMembers*: WORD
    StructMemberInfo*: DWORD

  D3DXSHADER_STRUCTMEMBERINFO* {.pure, bycopy.} = object
    Name*: DWORD
    TypeInfo*: DWORD

  D3DXEFFECT_DESC* {.pure, bycopy.} = object
    Creator*: cstring
    Parameters*: UINT
    Techniques*: UINT
    Functions*: UINT

  D3DXPARAMETER_DESC* {.pure, bycopy.} = object
    Name*: cstring
    Semantic*: cstring
    Class*: D3DXPARAMETER_CLASS
    Type*: D3DXPARAMETER_TYPE
    Rows*: UINT
    Columns*: UINT
    Elements*: UINT
    Annotations*: UINT
    StructMembers*: UINT
    Flags*: DWORD
    Bytes*: UINT

  D3DXTECHNIQUE_DESC* {.pure, bycopy.} = object
    Name*: cstring
    Passes*: UINT
    Annotations*: UINT

  D3DXPASS_DESC* {.pure, bycopy.} = object
    Name*: cstring
    Annotations*: UINT
    pVertexShaderFunction*: ptr DWORD
    pPixelShaderFunction*: ptr DWORD

  D3DXFUNCTION_DESC* {.pure, bycopy.} = object
    Name*: cstring
    Annotations*: UINT

  D3DXIMAGE_INFO* {.pure, bycopy.} = object
    Width*: UINT
    Height*: UINT
    Depth*: UINT
    MipLevels*: UINT
    Format*: D3DFORMAT
    ResourceType*: D3DRESOURCETYPE
    ImageFileFormat*: D3DXIMAGE_FILEFORMAT

  D3DXMESHDATA* {.pure, bycopy.} = object
    Type*: D3DXMESHDATATYPE
    u*: D3DXMESHDATA_u

  D3DXMESHCONTAINER* {.pure, bycopy.} = object
    Name*: cstring
    MeshData*: D3DXMESHDATA
    pMaterials*: LPD3DXMATERIAL
    pEffects*: LPD3DXEFFECTINSTANCE
    NumMaterials*: DWORD
    pAdjacency*: ptr DWORD
    pSkinInfo*: LPD3DXSKININFO
    pNextMeshContainer*: ptr D3DXMESHCONTAINER

  D3DXFRAME* {.pure, bycopy.} = object
    Name*: cstring
    TransformationMatrix*: D3DXMATRIX
    pMeshContainer*: LPD3DXMESHCONTAINER
    pFrameSibling*: ptr D3DXFRAME
    pFrameFirstChild*: ptr D3DXFRAME

  D3DXKEY_VECTOR3* {.pure, bycopy.} = object
    Time*: float32
    Value*: D3DXVECTOR3

  D3DXKEY_QUATERNION* {.pure, bycopy.} = object
    Time*: float32
    Value*: D3DXQUATERNION

  D3DXKEY_CALLBACK* {.pure, bycopy.} = object
    Time*: float32
    pCallbackData*: pointer

  D3DXTRACK_DESC* {.pure, bycopy.} = object
    Priority*: D3DXPRIORITY_TYPE
    Weight*: float32
    Speed*: float32
    Position*: DOUBLE
    Enable*: BOOL

  D3DXEVENT_DESC* {.pure, bycopy.} = object
    Type*: D3DXEVENT_TYPE
    Track*: UINT
    StartTime*: DOUBLE
    Duration*: DOUBLE
    Transition*: D3DXTRANSITION_TYPE
    u*: D3DXEVENT_DESC_u

  ID3DXMatrixStack* = object of IUnknown
  ID3DXMatrixStackVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXMatrixStack, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXMatrixStack): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXMatrixStack): ULONG {.stdcall, raises: [].}
    Pop*: proc(self: ptr ID3DXMatrixStack): HRESULT {.stdcall, raises: [].}
    Push*: proc(self: ptr ID3DXMatrixStack): HRESULT {.stdcall, raises: [].}
    LoadIdentity*: proc(self: ptr ID3DXMatrixStack): HRESULT {.stdcall, raises: [].}
    LoadMatrix*: proc(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    MultMatrix*: proc(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    MultMatrixLocal*: proc(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    RotateAxis*: proc(self: ptr ID3DXMatrixStack, pV: ptr D3DXVECTOR3, Angle: float32): HRESULT {.stdcall, raises: [].}
    RotateAxisLocal*: proc(self: ptr ID3DXMatrixStack, pV: ptr D3DXVECTOR3, Angle: float32): HRESULT {.stdcall, raises: [].}
    RotateYawPitchRoll*: proc(self: ptr ID3DXMatrixStack, Yaw: float32, Pitch: float32, Roll: float32): HRESULT {.stdcall, raises: [].}
    RotateYawPitchRollLocal*: proc(self: ptr ID3DXMatrixStack, Yaw: float32, Pitch: float32, Roll: float32): HRESULT {.stdcall, raises: [].}
    Scale*: proc(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.stdcall, raises: [].}
    ScaleLocal*: proc(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.stdcall, raises: [].}
    Translate*: proc(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.stdcall, raises: [].}
    TranslateLocal*: proc(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.stdcall, raises: [].}
    GetTop*: proc(self: ptr ID3DXMatrixStack): ptr D3DXMATRIX {.stdcall, raises: [].}

  ID3DXBuffer* = object of IUnknown
  ID3DXBufferVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXBuffer, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXBuffer): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXBuffer): ULONG {.stdcall, raises: [].}
    GetBufferPointer*: proc(self: ptr ID3DXBuffer): pointer {.stdcall, raises: [].}
    GetBufferSize*: proc(self: ptr ID3DXBuffer): DWORD {.stdcall, raises: [].}

  ID3DXSprite* = object of IUnknown
  ID3DXSpriteVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXSprite, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXSprite): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXSprite): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXSprite, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    GetTransform*: proc(self: ptr ID3DXSprite, pTransform: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetTransform*: proc(self: ptr ID3DXSprite, pTransform: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetWorldViewRH*: proc(self: ptr ID3DXSprite, pWorld: ptr D3DXMATRIX, pView: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetWorldViewLH*: proc(self: ptr ID3DXSprite, pWorld: ptr D3DXMATRIX, pView: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    Begin*: proc(self: ptr ID3DXSprite, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    Draw*: proc(self: ptr ID3DXSprite, pTexture: LPDIRECT3DTEXTURE9, pSrcRect: ptr RECT, pCenter: ptr D3DXVECTOR3, pPosition: ptr D3DXVECTOR3, Color: D3DCOLOR): HRESULT {.stdcall, raises: [].}
    Flush*: proc(self: ptr ID3DXSprite): HRESULT {.stdcall, raises: [].}
    End*: proc(self: ptr ID3DXSprite): HRESULT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXSprite): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXSprite): HRESULT {.stdcall, raises: [].}

  ID3DXFont* = object of IUnknown
  ID3DXFontVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFont, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFont): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFont): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXFont, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    GetDescA*: proc(self: ptr ID3DXFont, pDesc: ptr D3DXFONT_DESCA): HRESULT {.stdcall, raises: [].}
    GetDescW*: proc(self: ptr ID3DXFont, pDesc: ptr D3DXFONT_DESCW): HRESULT {.stdcall, raises: [].}
    GetTextMetricsA*: proc(self: ptr ID3DXFont, pTextMetrics: ptr TEXTMETRICA): BOOL {.stdcall, raises: [].}
    GetTextMetricsW*: proc(self: ptr ID3DXFont, pTextMetrics: ptr TEXTMETRICW): BOOL {.stdcall, raises: [].}
    GetDC*: proc(self: ptr ID3DXFont): HDC {.stdcall, raises: [].}
    GetGlyphData*: proc(self: ptr ID3DXFont, Glyph: UINT, ppTexture: ptr LPDIRECT3DTEXTURE9, pBlackBox: ptr RECT, pCellInc: ptr POINT): HRESULT {.stdcall, raises: [].}
    PreloadCharacters*: proc(self: ptr ID3DXFont, First: UINT, Last: UINT): HRESULT {.stdcall, raises: [].}
    PreloadGlyphs*: proc(self: ptr ID3DXFont, First: UINT, Last: UINT): HRESULT {.stdcall, raises: [].}
    PreloadTextA*: proc(self: ptr ID3DXFont, pString: cstring, Count: INT): HRESULT {.stdcall, raises: [].}
    PreloadTextW*: proc(self: ptr ID3DXFont, pString: LPCWSTR, Count: INT): HRESULT {.stdcall, raises: [].}
    DrawTextA*: proc(self: ptr ID3DXFont, pSprite: LPD3DXSPRITE, pString: cstring, Count: INT, pRect: LPRECT, Format: DWORD, Color: D3DCOLOR): INT {.stdcall, raises: [].}
    DrawTextW*: proc(self: ptr ID3DXFont, pSprite: LPD3DXSPRITE, pString: LPCWSTR, Count: INT, pRect: LPRECT, Format: DWORD, Color: D3DCOLOR): INT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXFont): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXFont): HRESULT {.stdcall, raises: [].}

  ID3DXRenderToSurface* = object of IUnknown
  ID3DXRenderToSurfaceVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXRenderToSurface, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXRenderToSurface): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXRenderToSurface): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXRenderToSurface, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXRenderToSurface, pDesc: ptr D3DXRTS_DESC): HRESULT {.stdcall, raises: [].}
    BeginScene*: proc(self: ptr ID3DXRenderToSurface, pSurface: LPDIRECT3DSURFACE9, pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall, raises: [].}
    EndScene*: proc(self: ptr ID3DXRenderToSurface, MipFilter: DWORD): HRESULT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXRenderToSurface): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXRenderToSurface): HRESULT {.stdcall, raises: [].}

  ID3DXRenderToEnvMap* = object of IUnknown
  ID3DXRenderToEnvMapVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXRenderToEnvMap, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXRenderToEnvMap): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXRenderToEnvMap): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXRenderToEnvMap, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXRenderToEnvMap, pDesc: ptr D3DXRTE_DESC): HRESULT {.stdcall, raises: [].}
    BeginCube*: proc(self: ptr ID3DXRenderToEnvMap, pCubeTex: LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, raises: [].}
    BeginSphere*: proc(self: ptr ID3DXRenderToEnvMap, pTex: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    BeginHemisphere*: proc(self: ptr ID3DXRenderToEnvMap, pTexZPos: LPDIRECT3DTEXTURE9, pTexZNeg: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    BeginParabolic*: proc(self: ptr ID3DXRenderToEnvMap, pTexZPos: LPDIRECT3DTEXTURE9, pTexZNeg: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    Face*: proc(self: ptr ID3DXRenderToEnvMap, Face: D3DCUBEMAP_FACES, MipFilter: DWORD): HRESULT {.stdcall, raises: [].}
    End*: proc(self: ptr ID3DXRenderToEnvMap, MipFilter: DWORD): HRESULT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXRenderToEnvMap): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXRenderToEnvMap): HRESULT {.stdcall, raises: [].}

  ID3DXLine* = object of IUnknown
  ID3DXLineVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXLine, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXLine): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXLine): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXLine, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    Begin*: proc(self: ptr ID3DXLine): HRESULT {.stdcall, raises: [].}
    Draw*: proc(self: ptr ID3DXLine, pVertexList: ptr D3DXVECTOR2, dwVertexListCount: DWORD, Color: D3DCOLOR): HRESULT {.stdcall, raises: [].}
    DrawTransform*: proc(self: ptr ID3DXLine, pVertexList: ptr D3DXVECTOR3, dwVertexListCount: DWORD, pTransform: ptr D3DXMATRIX, Color: D3DCOLOR): HRESULT {.stdcall, raises: [].}
    SetPattern*: proc(self: ptr ID3DXLine, dwPattern: DWORD): HRESULT {.stdcall, raises: [].}
    GetPattern*: proc(self: ptr ID3DXLine): DWORD {.stdcall, raises: [].}
    SetPatternScale*: proc(self: ptr ID3DXLine, fPatternScale: float32): HRESULT {.stdcall, raises: [].}
    GetPatternScale*: proc(self: ptr ID3DXLine): float32 {.stdcall, raises: [].}
    SetWidth*: proc(self: ptr ID3DXLine, fWidth: float32): HRESULT {.stdcall, raises: [].}
    GetWidth*: proc(self: ptr ID3DXLine): float32 {.stdcall, raises: [].}
    SetAntialias*: proc(self: ptr ID3DXLine, bAntialias: BOOL): HRESULT {.stdcall, raises: [].}
    GetAntialias*: proc(self: ptr ID3DXLine): BOOL {.stdcall, raises: [].}
    SetGLLines*: proc(self: ptr ID3DXLine, bGLLines: BOOL): HRESULT {.stdcall, raises: [].}
    GetGLLines*: proc(self: ptr ID3DXLine): BOOL {.stdcall, raises: [].}
    End*: proc(self: ptr ID3DXLine): HRESULT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXLine): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXLine): HRESULT {.stdcall, raises: [].}

  ID3DXFile* = object of IUnknown
  ID3DXFileVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFile, arg0: REFIID, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFile): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFile): ULONG {.stdcall, raises: [].}
    CreateEnumObject*: proc(self: ptr ID3DXFile, arg0: pointer, arg1: D3DXF_FILELOADOPTIONS, arg2: ptr ptr ID3DXFileEnumObject): HRESULT {.stdcall, raises: [].}
    CreateSaveObject*: proc(self: ptr ID3DXFile, arg0: pointer, arg1: D3DXF_FILESAVEOPTIONS, arg2: D3DXF_FILEFORMAT, arg3: ptr ptr ID3DXFileSaveObject): HRESULT {.stdcall, raises: [].}
    RegisterTemplates*: proc(self: ptr ID3DXFile, arg0: pointer, arg1: uint): HRESULT {.stdcall, raises: [].}
    RegisterEnumTemplates*: proc(self: ptr ID3DXFile, arg0: ptr ID3DXFileEnumObject): HRESULT {.stdcall, raises: [].}

  ID3DXFileSaveObject* = object of IUnknown
  ID3DXFileSaveObjectVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFileSaveObject, arg0: REFIID, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFileSaveObject): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFileSaveObject): ULONG {.stdcall, raises: [].}
    GetFile*: proc(self: ptr ID3DXFileSaveObject, arg0: ptr ptr ID3DXFile): HRESULT {.stdcall, raises: [].}
    AddDataObject*: proc(self: ptr ID3DXFileSaveObject, arg0: REFGUID, arg1: cstring, arg2: ptr GUID, arg3: uint, arg4: pointer, arg5: ptr ptr ID3DXFileSaveData): HRESULT {.stdcall, raises: [].}
    Save*: proc(self: ptr ID3DXFileSaveObject): HRESULT {.stdcall, raises: [].}

  ID3DXFileSaveData* = object of IUnknown
  ID3DXFileSaveDataVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFileSaveData, arg0: REFIID, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFileSaveData): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFileSaveData): ULONG {.stdcall, raises: [].}
    GetSave*: proc(self: ptr ID3DXFileSaveData, arg0: ptr ptr ID3DXFileSaveObject): HRESULT {.stdcall, raises: [].}
    GetName*: proc(self: ptr ID3DXFileSaveData, arg0: cstring, arg1: ptr uint): HRESULT {.stdcall, raises: [].}
    GetId*: proc(self: ptr ID3DXFileSaveData, arg0: LPGUID): HRESULT {.stdcall, raises: [].}
    GetType*: proc(self: ptr ID3DXFileSaveData, arg0: ptr GUID): HRESULT {.stdcall, raises: [].}
    AddDataObject*: proc(self: ptr ID3DXFileSaveData, arg0: REFGUID, arg1: cstring, arg2: ptr GUID, arg3: uint, arg4: pointer, arg5: ptr ptr ID3DXFileSaveData): HRESULT {.stdcall, raises: [].}
    AddDataReference*: proc(self: ptr ID3DXFileSaveData, arg0: cstring, arg1: ptr GUID): HRESULT {.stdcall, raises: [].}

  ID3DXFileEnumObject* = object of IUnknown
  ID3DXFileEnumObjectVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFileEnumObject, arg0: REFIID, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFileEnumObject): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFileEnumObject): ULONG {.stdcall, raises: [].}
    GetFile*: proc(self: ptr ID3DXFileEnumObject, arg0: ptr ptr ID3DXFile): HRESULT {.stdcall, raises: [].}
    GetChildren*: proc(self: ptr ID3DXFileEnumObject, arg0: ptr uint): HRESULT {.stdcall, raises: [].}
    GetChild*: proc(self: ptr ID3DXFileEnumObject, arg0: uint, arg1: ptr ptr ID3DXFileData): HRESULT {.stdcall, raises: [].}
    GetDataObjectById*: proc(self: ptr ID3DXFileEnumObject, arg0: REFGUID, arg1: ptr ptr ID3DXFileData): HRESULT {.stdcall, raises: [].}
    GetDataObjectByName*: proc(self: ptr ID3DXFileEnumObject, arg0: cstring, arg1: ptr ptr ID3DXFileData): HRESULT {.stdcall, raises: [].}

  ID3DXFileData* = object of IUnknown
  ID3DXFileDataVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXFileData, arg0: REFIID, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXFileData): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXFileData): ULONG {.stdcall, raises: [].}
    GetEnum*: proc(self: ptr ID3DXFileData, arg0: ptr ptr ID3DXFileEnumObject): HRESULT {.stdcall, raises: [].}
    GetName*: proc(self: ptr ID3DXFileData, arg0: cstring, arg1: ptr uint): HRESULT {.stdcall, raises: [].}
    GetId*: proc(self: ptr ID3DXFileData, arg0: LPGUID): HRESULT {.stdcall, raises: [].}
    Lock*: proc(self: ptr ID3DXFileData, arg0: ptr uint, arg1: ptr pointer): HRESULT {.stdcall, raises: [].}
    Unlock*: proc(self: ptr ID3DXFileData): HRESULT {.stdcall, raises: [].}
    GetType*: proc(self: ptr ID3DXFileData, arg0: ptr GUID): HRESULT {.stdcall, raises: [].}
    IsReference*: proc(self: ptr ID3DXFileData): BOOL {.stdcall, raises: [].}
    GetChildren*: proc(self: ptr ID3DXFileData, arg0: ptr uint): HRESULT {.stdcall, raises: [].}
    GetChild*: proc(self: ptr ID3DXFileData, arg0: uint, arg1: ptr ptr ID3DXFileData): HRESULT {.stdcall, raises: [].}

  ID3DXBaseMesh* = object of IUnknown
  ID3DXBaseMeshVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXBaseMesh, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXBaseMesh): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXBaseMesh): ULONG {.stdcall, raises: [].}
    DrawSubset*: proc(self: ptr ID3DXBaseMesh, AttribId: DWORD): HRESULT {.stdcall, raises: [].}
    GetNumFaces*: proc(self: ptr ID3DXBaseMesh): DWORD {.stdcall, raises: [].}
    GetNumVertices*: proc(self: ptr ID3DXBaseMesh): DWORD {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr ID3DXBaseMesh): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXBaseMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetNumBytesPerVertex*: proc(self: ptr ID3DXBaseMesh): DWORD {.stdcall, raises: [].}
    GetOptions*: proc(self: ptr ID3DXBaseMesh): DWORD {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXBaseMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    CloneMeshFVF*: proc(self: ptr ID3DXBaseMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    CloneMesh*: proc(self: ptr ID3DXBaseMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    GetVertexBuffer*: proc(self: ptr ID3DXBaseMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.stdcall, raises: [].}
    GetIndexBuffer*: proc(self: ptr ID3DXBaseMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.stdcall, raises: [].}
    LockVertexBuffer*: proc(self: ptr ID3DXBaseMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockVertexBuffer*: proc(self: ptr ID3DXBaseMesh): HRESULT {.stdcall, raises: [].}
    LockIndexBuffer*: proc(self: ptr ID3DXBaseMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockIndexBuffer*: proc(self: ptr ID3DXBaseMesh): HRESULT {.stdcall, raises: [].}
    GetAttributeTable*: proc(self: ptr ID3DXBaseMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, pAttribTableSize: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertPointRepsToAdjacency*: proc(self: ptr ID3DXBaseMesh, pPRep: ptr DWORD, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertAdjacencyToPointReps*: proc(self: ptr ID3DXBaseMesh, pAdjacency: ptr DWORD, pPRep: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GenerateAdjacency*: proc(self: ptr ID3DXBaseMesh, Epsilon: float32, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    UpdateSemantics*: proc(self: ptr ID3DXBaseMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}

  ID3DXMesh* = object of ID3DXBaseMesh
  ID3DXMeshVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXMesh, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXMesh): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXMesh): ULONG {.stdcall, raises: [].}
    DrawSubset*: proc(self: ptr ID3DXMesh, AttribId: DWORD): HRESULT {.stdcall, raises: [].}
    GetNumFaces*: proc(self: ptr ID3DXMesh): DWORD {.stdcall, raises: [].}
    GetNumVertices*: proc(self: ptr ID3DXMesh): DWORD {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr ID3DXMesh): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetNumBytesPerVertex*: proc(self: ptr ID3DXMesh): DWORD {.stdcall, raises: [].}
    GetOptions*: proc(self: ptr ID3DXMesh): DWORD {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    CloneMeshFVF*: proc(self: ptr ID3DXMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    CloneMesh*: proc(self: ptr ID3DXMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    GetVertexBuffer*: proc(self: ptr ID3DXMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.stdcall, raises: [].}
    GetIndexBuffer*: proc(self: ptr ID3DXMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.stdcall, raises: [].}
    LockVertexBuffer*: proc(self: ptr ID3DXMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockVertexBuffer*: proc(self: ptr ID3DXMesh): HRESULT {.stdcall, raises: [].}
    LockIndexBuffer*: proc(self: ptr ID3DXMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockIndexBuffer*: proc(self: ptr ID3DXMesh): HRESULT {.stdcall, raises: [].}
    GetAttributeTable*: proc(self: ptr ID3DXMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, pAttribTableSize: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertPointRepsToAdjacency*: proc(self: ptr ID3DXMesh, pPRep: ptr DWORD, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertAdjacencyToPointReps*: proc(self: ptr ID3DXMesh, pAdjacency: ptr DWORD, pPRep: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GenerateAdjacency*: proc(self: ptr ID3DXMesh, Epsilon: float32, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    UpdateSemantics*: proc(self: ptr ID3DXMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    LockAttributeBuffer*: proc(self: ptr ID3DXMesh, Flags: DWORD, ppData: ptr ptr DWORD): HRESULT {.stdcall, raises: [].}
    UnlockAttributeBuffer*: proc(self: ptr ID3DXMesh): HRESULT {.stdcall, raises: [].}
    Optimize*: proc(self: ptr ID3DXMesh, Flags: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, ppOptMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    OptimizeInplace*: proc(self: ptr ID3DXMesh, Flags: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    SetAttributeTable*: proc(self: ptr ID3DXMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, cAttribTableSize: DWORD): HRESULT {.stdcall, raises: [].}

  ID3DXPMesh* = object of ID3DXBaseMesh
  ID3DXPMeshVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXPMesh, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXPMesh): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXPMesh): ULONG {.stdcall, raises: [].}
    DrawSubset*: proc(self: ptr ID3DXPMesh, AttribId: DWORD): HRESULT {.stdcall, raises: [].}
    GetNumFaces*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetNumVertices*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXPMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetNumBytesPerVertex*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetOptions*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXPMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    CloneMeshFVF*: proc(self: ptr ID3DXPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    CloneMesh*: proc(self: ptr ID3DXPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    GetVertexBuffer*: proc(self: ptr ID3DXPMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.stdcall, raises: [].}
    GetIndexBuffer*: proc(self: ptr ID3DXPMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.stdcall, raises: [].}
    LockVertexBuffer*: proc(self: ptr ID3DXPMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockVertexBuffer*: proc(self: ptr ID3DXPMesh): HRESULT {.stdcall, raises: [].}
    LockIndexBuffer*: proc(self: ptr ID3DXPMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockIndexBuffer*: proc(self: ptr ID3DXPMesh): HRESULT {.stdcall, raises: [].}
    GetAttributeTable*: proc(self: ptr ID3DXPMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, pAttribTableSize: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertPointRepsToAdjacency*: proc(self: ptr ID3DXPMesh, pPRep: ptr DWORD, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    ConvertAdjacencyToPointReps*: proc(self: ptr ID3DXPMesh, pAdjacency: ptr DWORD, pPRep: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GenerateAdjacency*: proc(self: ptr ID3DXPMesh, Epsilon: float32, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    UpdateSemantics*: proc(self: ptr ID3DXPMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    ClonePMeshFVF*: proc(self: ptr ID3DXPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, raises: [].}
    ClonePMesh*: proc(self: ptr ID3DXPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, raises: [].}
    SetNumFaces*: proc(self: ptr ID3DXPMesh, Faces: DWORD): HRESULT {.stdcall, raises: [].}
    SetNumVertices*: proc(self: ptr ID3DXPMesh, Vertices: DWORD): HRESULT {.stdcall, raises: [].}
    GetMaxFaces*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetMinFaces*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetMaxVertices*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    GetMinVertices*: proc(self: ptr ID3DXPMesh): DWORD {.stdcall, raises: [].}
    Save*: proc(self: ptr ID3DXPMesh, pStream: ptr IStream, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD): HRESULT {.stdcall, raises: [].}
    Optimize*: proc(self: ptr ID3DXPMesh, Flags: DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, ppOptMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    OptimizeBaseLOD*: proc(self: ptr ID3DXPMesh, Flags: DWORD, pFaceRemap: ptr DWORD): HRESULT {.stdcall, raises: [].}
    TrimByFaces*: proc(self: ptr ID3DXPMesh, NewFacesMin: DWORD, NewFacesMax: DWORD, rgiFaceRemap: ptr DWORD, rgiVertRemap: ptr DWORD): HRESULT {.stdcall, raises: [].}
    TrimByVertices*: proc(self: ptr ID3DXPMesh, NewVerticesMin: DWORD, NewVerticesMax: DWORD, rgiFaceRemap: ptr DWORD, rgiVertRemap: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GetAdjacency*: proc(self: ptr ID3DXPMesh, pAdjacency: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GenerateVertexHistory*: proc(self: ptr ID3DXPMesh, pVertexHistory: ptr DWORD): HRESULT {.stdcall, raises: [].}

  ID3DXSPMesh* = object of IUnknown
  ID3DXSPMeshVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXSPMesh, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXSPMesh): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXSPMesh): ULONG {.stdcall, raises: [].}
    GetNumFaces*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetNumVertices*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXSPMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetOptions*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXSPMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    CloneMeshFVF*: proc(self: ptr ID3DXSPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pAdjacencyOut: ptr DWORD, pVertexRemapOut: ptr DWORD, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    CloneMesh*: proc(self: ptr ID3DXSPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, pAdjacencyOut: ptr DWORD, pVertexRemapOut: ptr DWORD, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    ClonePMeshFVF*: proc(self: ptr ID3DXSPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pVertexRemapOut: ptr DWORD, pErrorsByFace: ptr float32, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, raises: [].}
    ClonePMesh*: proc(self: ptr ID3DXSPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, pVertexRemapOut: ptr DWORD, pErrorsbyFace: ptr float32, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, raises: [].}
    ReduceFaces*: proc(self: ptr ID3DXSPMesh, Faces: DWORD): HRESULT {.stdcall, raises: [].}
    ReduceVertices*: proc(self: ptr ID3DXSPMesh, Vertices: DWORD): HRESULT {.stdcall, raises: [].}
    GetMaxFaces*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetMaxVertices*: proc(self: ptr ID3DXSPMesh): DWORD {.stdcall, raises: [].}
    GetVertexAttributeWeights*: proc(self: ptr ID3DXSPMesh, pVertexAttributeWeights: LPD3DXATTRIBUTEWEIGHTS): HRESULT {.stdcall, raises: [].}
    GetVertexWeights*: proc(self: ptr ID3DXSPMesh, pVertexWeights: ptr float32): HRESULT {.stdcall, raises: [].}

  ID3DXPatchMesh* = object of IUnknown
  ID3DXPatchMeshVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXPatchMesh, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXPatchMesh): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXPatchMesh): ULONG {.stdcall, raises: [].}
    GetNumPatches*: proc(self: ptr ID3DXPatchMesh): DWORD {.stdcall, raises: [].}
    GetNumVertices*: proc(self: ptr ID3DXPatchMesh): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXPatchMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetControlVerticesPerPatch*: proc(self: ptr ID3DXPatchMesh): DWORD {.stdcall, raises: [].}
    GetOptions*: proc(self: ptr ID3DXPatchMesh): DWORD {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXPatchMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    GetPatchInfo*: proc(self: ptr ID3DXPatchMesh, PatchInfo: LPD3DXPATCHINFO): HRESULT {.stdcall, raises: [].}
    GetVertexBuffer*: proc(self: ptr ID3DXPatchMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.stdcall, raises: [].}
    GetIndexBuffer*: proc(self: ptr ID3DXPatchMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.stdcall, raises: [].}
    LockVertexBuffer*: proc(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockVertexBuffer*: proc(self: ptr ID3DXPatchMesh): HRESULT {.stdcall, raises: [].}
    LockIndexBuffer*: proc(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr pointer): HRESULT {.stdcall, raises: [].}
    UnlockIndexBuffer*: proc(self: ptr ID3DXPatchMesh): HRESULT {.stdcall, raises: [].}
    LockAttributeBuffer*: proc(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr ptr DWORD): HRESULT {.stdcall, raises: [].}
    UnlockAttributeBuffer*: proc(self: ptr ID3DXPatchMesh): HRESULT {.stdcall, raises: [].}
    GetTessSize*: proc(self: ptr ID3DXPatchMesh, fTessLevel: float32, Adaptive: DWORD, NumTriangles: ptr DWORD, NumVertices: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GenerateAdjacency*: proc(self: ptr ID3DXPatchMesh, Tolerance: float32): HRESULT {.stdcall, raises: [].}
    CloneMesh*: proc(self: ptr ID3DXPatchMesh, Options: DWORD, pDecl: ptr D3DVERTEXELEMENT9, pMesh: ptr LPD3DXPATCHMESH): HRESULT {.stdcall, raises: [].}
    Optimize*: proc(self: ptr ID3DXPatchMesh, flags: DWORD): HRESULT {.stdcall, raises: [].}
    SetDisplaceParam*: proc(self: ptr ID3DXPatchMesh, Texture: LPDIRECT3DBASETEXTURE9, MinFilter: D3DTEXTUREFILTERTYPE, MagFilter: D3DTEXTUREFILTERTYPE, MipFilter: D3DTEXTUREFILTERTYPE, Wrap: D3DTEXTUREADDRESS, dwLODBias: DWORD): HRESULT {.stdcall, raises: [].}
    GetDisplaceParam*: proc(self: ptr ID3DXPatchMesh, Texture: ptr LPDIRECT3DBASETEXTURE9, MinFilter: ptr D3DTEXTUREFILTERTYPE, MagFilter: ptr D3DTEXTUREFILTERTYPE, MipFilter: ptr D3DTEXTUREFILTERTYPE, Wrap: ptr D3DTEXTUREADDRESS, dwLODBias: ptr DWORD): HRESULT {.stdcall, raises: [].}
    Tessellate*: proc(self: ptr ID3DXPatchMesh, fTessLevel: float32, pMesh: LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    TessellateAdaptive*: proc(self: ptr ID3DXPatchMesh, pTrans: ptr D3DXVECTOR4, dwMaxTessLevel: DWORD, dwMinTessLevel: DWORD, pMesh: LPD3DXMESH): HRESULT {.stdcall, raises: [].}

  ID3DXSkinInfo* = object of IUnknown
  ID3DXSkinInfoVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXSkinInfo, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXSkinInfo): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXSkinInfo): ULONG {.stdcall, raises: [].}
    SetBoneInfluence*: proc(self: ptr ID3DXSkinInfo, bone: DWORD, numInfluences: DWORD, vertices: ptr DWORD, weights: ptr float32): HRESULT {.stdcall, raises: [].}
    SetBoneVertexInfluence*: proc(self: ptr ID3DXSkinInfo, boneNum: DWORD, influenceNum: DWORD, weight: float32): HRESULT {.stdcall, raises: [].}
    GetNumBoneInfluences*: proc(self: ptr ID3DXSkinInfo, bone: DWORD): DWORD {.stdcall, raises: [].}
    GetBoneInfluence*: proc(self: ptr ID3DXSkinInfo, bone: DWORD, vertices: ptr DWORD, weights: ptr float32): HRESULT {.stdcall, raises: [].}
    GetBoneVertexInfluence*: proc(self: ptr ID3DXSkinInfo, boneNum: DWORD, influenceNum: DWORD, pWeight: ptr float32, pVertexNum: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GetMaxVertexInfluences*: proc(self: ptr ID3DXSkinInfo, maxVertexInfluences: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GetNumBones*: proc(self: ptr ID3DXSkinInfo): DWORD {.stdcall, raises: [].}
    FindBoneVertexInfluenceIndex*: proc(self: ptr ID3DXSkinInfo, boneNum: DWORD, vertexNum: DWORD, pInfluenceIndex: ptr DWORD): HRESULT {.stdcall, raises: [].}
    GetMaxFaceInfluences*: proc(self: ptr ID3DXSkinInfo, pIB: LPDIRECT3DINDEXBUFFER9, NumFaces: DWORD, maxFaceInfluences: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetMinBoneInfluence*: proc(self: ptr ID3DXSkinInfo, MinInfl: float32): HRESULT {.stdcall, raises: [].}
    GetMinBoneInfluence*: proc(self: ptr ID3DXSkinInfo): float32 {.stdcall, raises: [].}
    SetBoneName*: proc(self: ptr ID3DXSkinInfo, Bone: DWORD, pName: cstring): HRESULT {.stdcall, raises: [].}
    GetBoneName*: proc(self: ptr ID3DXSkinInfo, Bone: DWORD): cstring {.stdcall, raises: [].}
    SetBoneOffsetMatrix*: proc(self: ptr ID3DXSkinInfo, Bone: DWORD, pBoneTransform: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetBoneOffsetMatrix*: proc(self: ptr ID3DXSkinInfo, Bone: DWORD): LPD3DXMATRIX {.stdcall, raises: [].}
    Clone*: proc(self: ptr ID3DXSkinInfo, ppSkinInfo: ptr LPD3DXSKININFO): HRESULT {.stdcall, raises: [].}
    Remap*: proc(self: ptr ID3DXSkinInfo, NumVertices: DWORD, pVertexRemap: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetFVF*: proc(self: ptr ID3DXSkinInfo, FVF: DWORD): HRESULT {.stdcall, raises: [].}
    SetDeclaration*: proc(self: ptr ID3DXSkinInfo, pDeclaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr ID3DXSkinInfo): DWORD {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr ID3DXSkinInfo, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, raises: [].}
    UpdateSkinnedMesh*: proc(self: ptr ID3DXSkinInfo, pBoneTransforms: ptr D3DXMATRIX, pBoneInvTransposeTransforms: ptr D3DXMATRIX, pVerticesSrc: pointer, pVerticesDst: pointer): HRESULT {.stdcall, raises: [].}
    ConvertToBlendedMesh*: proc(self: ptr ID3DXSkinInfo, pMesh: LPD3DXMESH, Options: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, pMaxFaceInfl: ptr DWORD, pNumBoneCombinations: ptr DWORD, ppBoneCombinationTable: ptr LPD3DXBUFFER, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    ConvertToIndexedBlendedMesh*: proc(self: ptr ID3DXSkinInfo, pMesh: LPD3DXMESH, Options: DWORD, paletteSize: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, pMaxVertexInfl: ptr DWORD, pNumBoneCombinations: ptr DWORD, ppBoneCombinationTable: ptr LPD3DXBUFFER, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}

  ID3DXPRTBuffer* = object of IUnknown
  ID3DXPRTBufferVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXPRTBuffer, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXPRTBuffer): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXPRTBuffer): ULONG {.stdcall, raises: [].}
    GetNumSamples*: proc(self: ptr ID3DXPRTBuffer): UINT {.stdcall, raises: [].}
    GetNumCoeffs*: proc(self: ptr ID3DXPRTBuffer): UINT {.stdcall, raises: [].}
    GetNumChannels*: proc(self: ptr ID3DXPRTBuffer): UINT {.stdcall, raises: [].}
    IsTexture*: proc(self: ptr ID3DXPRTBuffer): BOOL {.stdcall, raises: [].}
    GetWidth*: proc(self: ptr ID3DXPRTBuffer): UINT {.stdcall, raises: [].}
    GetHeight*: proc(self: ptr ID3DXPRTBuffer): UINT {.stdcall, raises: [].}
    Resize*: proc(self: ptr ID3DXPRTBuffer, NewSize: UINT): HRESULT {.stdcall, raises: [].}
    LockBuffer*: proc(self: ptr ID3DXPRTBuffer, Start: UINT, NumSamples: UINT, ppData: ptr ptr float32): HRESULT {.stdcall, raises: [].}
    UnlockBuffer*: proc(self: ptr ID3DXPRTBuffer): HRESULT {.stdcall, raises: [].}
    ScaleBuffer*: proc(self: ptr ID3DXPRTBuffer, Scale: float32): HRESULT {.stdcall, raises: [].}
    AddBuffer*: proc(self: ptr ID3DXPRTBuffer, pBuffer: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    AttachGH*: proc(self: ptr ID3DXPRTBuffer, arg0: LPD3DXTEXTUREGUTTERHELPER): HRESULT {.stdcall, raises: [].}
    ReleaseGH*: proc(self: ptr ID3DXPRTBuffer): HRESULT {.stdcall, raises: [].}
    EvalGH*: proc(self: ptr ID3DXPRTBuffer): HRESULT {.stdcall, raises: [].}
    ExtractTexture*: proc(self: ptr ID3DXPRTBuffer, Channel: UINT, StartCoefficient: UINT, NumCoefficients: UINT, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    ExtractToMesh*: proc(self: ptr ID3DXPRTBuffer, NumCoefficients: UINT, Usage: D3DDECLUSAGE, UsageIndexStart: UINT, pScene: LPD3DXMESH): HRESULT {.stdcall, raises: [].}

  ID3DXPRTCompBuffer* = object of IUnknown
  ID3DXPRTCompBufferVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXPRTCompBuffer, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXPRTCompBuffer): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXPRTCompBuffer): ULONG {.stdcall, raises: [].}
    GetNumSamples*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    GetNumCoeffs*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    GetNumChannels*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    IsTexture*: proc(self: ptr ID3DXPRTCompBuffer): BOOL {.stdcall, raises: [].}
    GetWidth*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    GetHeight*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    GetNumClusters*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    GetNumPCA*: proc(self: ptr ID3DXPRTCompBuffer): UINT {.stdcall, raises: [].}
    NormalizeData*: proc(self: ptr ID3DXPRTCompBuffer): HRESULT {.stdcall, raises: [].}
    ExtractBasis*: proc(self: ptr ID3DXPRTCompBuffer, Cluster: UINT, pClusterBasis: ptr float32): HRESULT {.stdcall, raises: [].}
    ExtractClusterIDs*: proc(self: ptr ID3DXPRTCompBuffer, pClusterIDs: ptr UINT): HRESULT {.stdcall, raises: [].}
    ExtractPCA*: proc(self: ptr ID3DXPRTCompBuffer, StartPCA: UINT, NumExtract: UINT, pPCACoefficients: ptr float32): HRESULT {.stdcall, raises: [].}
    ExtractTexture*: proc(self: ptr ID3DXPRTCompBuffer, StartPCA: UINT, NumpPCA: UINT, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    ExtractToMesh*: proc(self: ptr ID3DXPRTCompBuffer, NumPCA: UINT, Usage: D3DDECLUSAGE, UsageIndexStart: UINT, pScene: LPD3DXMESH): HRESULT {.stdcall, raises: [].}

  ID3DXTextureGutterHelper* = object of IUnknown
  ID3DXTextureGutterHelperVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXTextureGutterHelper, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXTextureGutterHelper): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXTextureGutterHelper): ULONG {.stdcall, raises: [].}
    GetWidth*: proc(self: ptr ID3DXTextureGutterHelper): UINT {.stdcall, raises: [].}
    GetHeight*: proc(self: ptr ID3DXTextureGutterHelper): UINT {.stdcall, raises: [].}
    ApplyGuttersFloat*: proc(self: ptr ID3DXTextureGutterHelper, pDataIn: ptr float32, NumCoeffs: UINT, Width: UINT, Height: UINT): HRESULT {.stdcall, raises: [].}
    ApplyGuttersTex*: proc(self: ptr ID3DXTextureGutterHelper, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    ApplyGuttersPRT*: proc(self: ptr ID3DXTextureGutterHelper, pBuffer: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ResampleTex*: proc(self: ptr ID3DXTextureGutterHelper, pTextureIn: LPDIRECT3DTEXTURE9, pMeshIn: LPD3DXMESH, Usage: D3DDECLUSAGE, UsageIndex: UINT, pTextureOut: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    GetFaceMap*: proc(self: ptr ID3DXTextureGutterHelper, pFaceData: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetBaryMap*: proc(self: ptr ID3DXTextureGutterHelper, pBaryData: ptr D3DXVECTOR2): HRESULT {.stdcall, raises: [].}
    GetTexelMap*: proc(self: ptr ID3DXTextureGutterHelper, pTexelData: ptr D3DXVECTOR2): HRESULT {.stdcall, raises: [].}
    GetGutterMap*: proc(self: ptr ID3DXTextureGutterHelper, pGutterData: ptr BYTE): HRESULT {.stdcall, raises: [].}
    SetFaceMap*: proc(self: ptr ID3DXTextureGutterHelper, pFaceData: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetBaryMap*: proc(self: ptr ID3DXTextureGutterHelper, pBaryData: ptr D3DXVECTOR2): HRESULT {.stdcall, raises: [].}
    SetTexelMap*: proc(self: ptr ID3DXTextureGutterHelper, pTexelData: ptr D3DXVECTOR2): HRESULT {.stdcall, raises: [].}
    SetGutterMap*: proc(self: ptr ID3DXTextureGutterHelper, pGutterData: ptr BYTE): HRESULT {.stdcall, raises: [].}

  ID3DXPRTEngine* = object of IUnknown
  ID3DXPRTEngineVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXPRTEngine, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXPRTEngine): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXPRTEngine): ULONG {.stdcall, raises: [].}
    SetMeshMaterials*: proc(self: ptr ID3DXPRTEngine, ppMaterials: ptr ptr D3DXSHMATERIAL, NumMeshes: UINT, NumChannels: UINT, bSetAlbedo: BOOL, fLengthScale: float32): HRESULT {.stdcall, raises: [].}
    SetPerVertexAlbedo*: proc(self: ptr ID3DXPRTEngine, pDataIn: pointer, NumChannels: UINT, Stride: UINT): HRESULT {.stdcall, raises: [].}
    SetPerTexelAlbedo*: proc(self: ptr ID3DXPRTEngine, pAlbedoTexture: LPDIRECT3DTEXTURE9, NumChannels: UINT, pGH: LPD3DXTEXTUREGUTTERHELPER): HRESULT {.stdcall, raises: [].}
    GetVertexAlbedo*: proc(self: ptr ID3DXPRTEngine, pVertColors: ptr D3DXCOLOR, NumVerts: UINT): HRESULT {.stdcall, raises: [].}
    SetPerTexelNormal*: proc(self: ptr ID3DXPRTEngine, pNormalTexture: LPDIRECT3DTEXTURE9): HRESULT {.stdcall, raises: [].}
    ExtractPerVertexAlbedo*: proc(self: ptr ID3DXPRTEngine, pMesh: LPD3DXMESH, Usage: D3DDECLUSAGE, NumChannels: UINT): HRESULT {.stdcall, raises: [].}
    ResampleBuffer*: proc(self: ptr ID3DXPRTEngine, pBufferIn: LPD3DXPRTBUFFER, pBufferOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    GetAdaptedMesh*: proc(self: ptr ID3DXPRTEngine, pD3DDevice: LPDIRECT3DDEVICE9, pFaceRemap: ptr UINT, pVertRemap: ptr UINT, pfVertWeights: ptr float32, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, raises: [].}
    GetNumVerts*: proc(self: ptr ID3DXPRTEngine): UINT {.stdcall, raises: [].}
    GetNumFaces*: proc(self: ptr ID3DXPRTEngine): UINT {.stdcall, raises: [].}
    SetMinMaxIntersection*: proc(self: ptr ID3DXPRTEngine, fMin: float32, fMax: float32): HRESULT {.stdcall, raises: [].}
    RobustMeshRefine*: proc(self: ptr ID3DXPRTEngine, MinEdgeLength: float32, MaxSubdiv: UINT): HRESULT {.stdcall, raises: [].}
    SetSamplingInfo*: proc(self: ptr ID3DXPRTEngine, NumRays: UINT, UseSphere: BOOL, UseCosine: BOOL, Adaptive: BOOL, AdaptiveThresh: float32): HRESULT {.stdcall, raises: [].}
    ComputeDirectLightingSH*: proc(self: ptr ID3DXPRTEngine, SHOrder: UINT, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeDirectLightingSHAdaptive*: proc(self: ptr ID3DXPRTEngine, SHOrder: UINT, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeDirectLightingSHGPU*: proc(self: ptr ID3DXPRTEngine, pD3DDevice: LPDIRECT3DDEVICE9, Flags: UINT, SHOrder: UINT, ZBias: float32, ZAngleBias: float32, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeSS*: proc(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeSSAdaptive*: proc(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeBounce*: proc(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeBounceAdaptive*: proc(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeVolumeSamplesDirectSH*: proc(self: ptr ID3DXPRTEngine, SHOrderIn: UINT, SHOrderOut: UINT, NumVolSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeVolumeSamples*: proc(self: ptr ID3DXPRTEngine, pSurfDataIn: LPD3DXPRTBUFFER, SHOrder: UINT, NumVolSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeSurfSamplesDirectSH*: proc(self: ptr ID3DXPRTEngine, SHOrder: UINT, NumSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pSampleNorms: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ComputeSurfSamplesBounce*: proc(self: ptr ID3DXPRTEngine, pSurfDataIn: LPD3DXPRTBUFFER, NumSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pSampleNorms: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    FreeSSData*: proc(self: ptr ID3DXPRTEngine): HRESULT {.stdcall, raises: [].}
    FreeBounceData*: proc(self: ptr ID3DXPRTEngine): HRESULT {.stdcall, raises: [].}
    ComputeLDPRTCoeffs*: proc(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, SHOrder: UINT, pNormOut: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    ScaleMeshChunk*: proc(self: ptr ID3DXPRTEngine, uMeshChunk: UINT, fScale: float32, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    MultiplyAlbedo*: proc(self: ptr ID3DXPRTEngine, pDataOut: LPD3DXPRTBUFFER): HRESULT {.stdcall, raises: [].}
    SetCallBack*: proc(self: ptr ID3DXPRTEngine, pCB: LPD3DXSHPRTSIMCB, Frequency: float32, lpUserContext: pointer): HRESULT {.stdcall, raises: [].}
    ShadowRayIntersects*: proc(self: ptr ID3DXPRTEngine, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3): BOOL {.stdcall, raises: [].}
    ClosestRayIntersects*: proc(self: ptr ID3DXPRTEngine, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3, pFaceIndex: ptr DWORD, pU: ptr float32, pV: ptr float32, pDist: ptr float32): BOOL {.stdcall, raises: [].}

  ID3DXConstantTable* = object of IUnknown
  ID3DXConstantTableVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXConstantTable, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXConstantTable): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXConstantTable): ULONG {.stdcall, raises: [].}
    GetBufferPointer*: proc(self: ptr ID3DXConstantTable): pointer {.stdcall, raises: [].}
    GetBufferSize*: proc(self: ptr ID3DXConstantTable): DWORD {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXConstantTable, pDesc: ptr D3DXCONSTANTTABLE_DESC): HRESULT {.stdcall, raises: [].}
    GetConstantDesc*: proc(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, pConstantDesc: ptr D3DXCONSTANT_DESC, pCount: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetSamplerIndex*: proc(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE): UINT {.stdcall, raises: [].}
    GetConstant*: proc(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetConstantByName*: proc(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetConstantElement*: proc(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    SetDefaults*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    SetValue*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    SetBool*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, b: BOOL): HRESULT {.stdcall, raises: [].}
    SetBoolArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetInt*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, n: INT): HRESULT {.stdcall, raises: [].}
    SetIntArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetFloat*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, f: float32): HRESULT {.stdcall, raises: [].}
    SetFloatArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetVector*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    SetVectorArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrix*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixPointerArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTranspose*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposeArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposePointerArray*: proc(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXTextureShader* = object of IUnknown
  ID3DXTextureShaderVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXTextureShader, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXTextureShader): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXTextureShader): ULONG {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr ID3DXTextureShader, ppFunction: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    GetConstantBuffer*: proc(self: ptr ID3DXTextureShader, ppConstantBuffer: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXTextureShader, pDesc: ptr D3DXCONSTANTTABLE_DESC): HRESULT {.stdcall, raises: [].}
    GetConstantDesc*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pConstantDesc: ptr D3DXCONSTANT_DESC, pCount: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetConstant*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetConstantByName*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetConstantElement*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    SetDefaults*: proc(self: ptr ID3DXTextureShader): HRESULT {.stdcall, raises: [].}
    SetValue*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    SetBool*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, b: BOOL): HRESULT {.stdcall, raises: [].}
    SetBoolArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetInt*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, n: INT): HRESULT {.stdcall, raises: [].}
    SetIntArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetFloat*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, f: float32): HRESULT {.stdcall, raises: [].}
    SetFloatArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetVector*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    SetVectorArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrix*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixPointerArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTranspose*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposeArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposePointerArray*: proc(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXInclude* {.pure, inheritable.} = object
    lpVtbl*: pointer
  ID3DXIncludeVtbl* {.pure.} = object
    Open*: proc(self: ptr ID3DXInclude, IncludeType: D3DXINCLUDE_TYPE, pFileName: cstring, pParentData: pointer, ppData: ptr pointer, pBytes: ptr UINT): HRESULT {.stdcall, raises: [].}
    Close*: proc(self: ptr ID3DXInclude, pData: pointer): HRESULT {.stdcall, raises: [].}

  ID3DXEffectPool* = object of IUnknown
  ID3DXEffectPoolVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXEffectPool, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXEffectPool): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXEffectPool): ULONG {.stdcall, raises: [].}

  ID3DXBaseEffect* = object of IUnknown
  ID3DXBaseEffectVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXBaseEffect, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXBaseEffect): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXBaseEffect): ULONG {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXBaseEffect, pDesc: ptr D3DXEFFECT_DESC): HRESULT {.stdcall, raises: [].}
    GetParameterDesc*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pDesc: ptr D3DXPARAMETER_DESC): HRESULT {.stdcall, raises: [].}
    GetTechniqueDesc*: proc(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, pDesc: ptr D3DXTECHNIQUE_DESC): HRESULT {.stdcall, raises: [].}
    GetPassDesc*: proc(self: ptr ID3DXBaseEffect, hPass: D3DXHANDLE, pDesc: ptr D3DXPASS_DESC): HRESULT {.stdcall, raises: [].}
    GetFunctionDesc*: proc(self: ptr ID3DXBaseEffect, hShader: D3DXHANDLE, pDesc: ptr D3DXFUNCTION_DESC): HRESULT {.stdcall, raises: [].}
    GetParameter*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterByName*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterBySemantic*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pSemantic: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterElement*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechnique*: proc(self: ptr ID3DXBaseEffect, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechniqueByName*: proc(self: ptr ID3DXBaseEffect, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetPass*: proc(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetPassByName*: proc(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr ID3DXBaseEffect, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetFunctionByName*: proc(self: ptr ID3DXBaseEffect, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotation*: proc(self: ptr ID3DXBaseEffect, hObject: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotationByName*: proc(self: ptr ID3DXBaseEffect, hObject: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    SetValue*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    GetValue*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    SetBool*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, b: BOOL): HRESULT {.stdcall, raises: [].}
    GetBool*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL): HRESULT {.stdcall, raises: [].}
    SetBoolArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetBoolArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetInt*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, n: INT): HRESULT {.stdcall, raises: [].}
    GetInt*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT): HRESULT {.stdcall, raises: [].}
    SetIntArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetIntArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetFloat*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, f: float32): HRESULT {.stdcall, raises: [].}
    GetFloat*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32): HRESULT {.stdcall, raises: [].}
    SetFloatArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetFloatArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetVector*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    GetVector*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    SetVectorArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetVectorArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrix*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrix*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixPointerArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixPointerArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTranspose*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrixTranspose*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposeArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposeArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposePointerArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposePointerArray*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetString*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pString: cstring): HRESULT {.stdcall, raises: [].}
    GetString*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppString: ptr cstring): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetTexture*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppTexture: ptr LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetPixelShader*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppPShader: ptr LPDIRECT3DPIXELSHADER9): HRESULT {.stdcall, raises: [].}
    GetVertexShader*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppVShader: ptr LPDIRECT3DVERTEXSHADER9): HRESULT {.stdcall, raises: [].}
    SetArrayRange*: proc(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, uStart: UINT, uEnd: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXEffectStateManager* = object of IUnknown
  ID3DXEffectStateManagerVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXEffectStateManager, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXEffectStateManager): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXEffectStateManager): ULONG {.stdcall, raises: [].}
    SetTransform*: proc(self: ptr ID3DXEffectStateManager, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    SetMaterial*: proc(self: ptr ID3DXEffectStateManager, pMaterial: ptr D3DMATERIAL9): HRESULT {.stdcall, raises: [].}
    SetLight*: proc(self: ptr ID3DXEffectStateManager, Index: DWORD, pLight: ptr D3DLIGHT9): HRESULT {.stdcall, raises: [].}
    LightEnable*: proc(self: ptr ID3DXEffectStateManager, Index: DWORD, Enable: BOOL): HRESULT {.stdcall, raises: [].}
    SetRenderState*: proc(self: ptr ID3DXEffectStateManager, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr ID3DXEffectStateManager, Stage: DWORD, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    SetTextureStageState*: proc(self: ptr ID3DXEffectStateManager, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    SetSamplerState*: proc(self: ptr ID3DXEffectStateManager, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    SetNPatchMode*: proc(self: ptr ID3DXEffectStateManager, NumSegments: float32): HRESULT {.stdcall, raises: [].}
    SetFVF*: proc(self: ptr ID3DXEffectStateManager, FVF: DWORD): HRESULT {.stdcall, raises: [].}
    SetVertexShader*: proc(self: ptr ID3DXEffectStateManager, pShader: LPDIRECT3DVERTEXSHADER9): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantF*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr float32, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantI*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr INT, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantB*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr BOOL, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShader*: proc(self: ptr ID3DXEffectStateManager, pShader: LPDIRECT3DPIXELSHADER9): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantF*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr float32, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantI*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr INT, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantB*: proc(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr BOOL, RegisterCount: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXEffect* = object of ID3DXBaseEffect
  ID3DXEffectVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXEffect, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXEffect): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXEffect): ULONG {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXEffect, pDesc: ptr D3DXEFFECT_DESC): HRESULT {.stdcall, raises: [].}
    GetParameterDesc*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pDesc: ptr D3DXPARAMETER_DESC): HRESULT {.stdcall, raises: [].}
    GetTechniqueDesc*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE, pDesc: ptr D3DXTECHNIQUE_DESC): HRESULT {.stdcall, raises: [].}
    GetPassDesc*: proc(self: ptr ID3DXEffect, hPass: D3DXHANDLE, pDesc: ptr D3DXPASS_DESC): HRESULT {.stdcall, raises: [].}
    GetFunctionDesc*: proc(self: ptr ID3DXEffect, hShader: D3DXHANDLE, pDesc: ptr D3DXFUNCTION_DESC): HRESULT {.stdcall, raises: [].}
    GetParameter*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterByName*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterBySemantic*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pSemantic: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterElement*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechnique*: proc(self: ptr ID3DXEffect, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechniqueByName*: proc(self: ptr ID3DXEffect, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetPass*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetPassByName*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr ID3DXEffect, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetFunctionByName*: proc(self: ptr ID3DXEffect, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotation*: proc(self: ptr ID3DXEffect, hObject: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotationByName*: proc(self: ptr ID3DXEffect, hObject: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    SetValue*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    GetValue*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    SetBool*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, b: BOOL): HRESULT {.stdcall, raises: [].}
    GetBool*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pb: ptr BOOL): HRESULT {.stdcall, raises: [].}
    SetBoolArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetBoolArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetInt*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, n: INT): HRESULT {.stdcall, raises: [].}
    GetInt*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pn: ptr INT): HRESULT {.stdcall, raises: [].}
    SetIntArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetIntArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetFloat*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, f: float32): HRESULT {.stdcall, raises: [].}
    GetFloat*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pf: ptr float32): HRESULT {.stdcall, raises: [].}
    SetFloatArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetFloatArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetVector*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    GetVector*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    SetVectorArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetVectorArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrix*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrix*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixPointerArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixPointerArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTranspose*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrixTranspose*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposeArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposeArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposePointerArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposePointerArray*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetString*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pString: cstring): HRESULT {.stdcall, raises: [].}
    GetString*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppString: ptr cstring): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetTexture*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppTexture: ptr LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetPixelShader*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppPShader: ptr LPDIRECT3DPIXELSHADER9): HRESULT {.stdcall, raises: [].}
    GetVertexShader*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, ppVShader: ptr LPDIRECT3DVERTEXSHADER9): HRESULT {.stdcall, raises: [].}
    SetArrayRange*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, uStart: UINT, uEnd: UINT): HRESULT {.stdcall, raises: [].}
    GetPool*: proc(self: ptr ID3DXEffect, ppPool: ptr LPD3DXEFFECTPOOL): HRESULT {.stdcall, raises: [].}
    SetTechnique*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE): HRESULT {.stdcall, raises: [].}
    GetCurrentTechnique*: proc(self: ptr ID3DXEffect): D3DXHANDLE {.stdcall, raises: [].}
    ValidateTechnique*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE): HRESULT {.stdcall, raises: [].}
    FindNextValidTechnique*: proc(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE, pTechnique: ptr D3DXHANDLE): HRESULT {.stdcall, raises: [].}
    IsParameterUsed*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, hTechnique: D3DXHANDLE): BOOL {.stdcall, raises: [].}
    Begin*: proc(self: ptr ID3DXEffect, pPasses: ptr UINT, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    BeginPass*: proc(self: ptr ID3DXEffect, Pass: UINT): HRESULT {.stdcall, raises: [].}
    CommitChanges*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    EndPass*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    End*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr ID3DXEffect, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.stdcall, raises: [].}
    OnLostDevice*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    OnResetDevice*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    SetStateManager*: proc(self: ptr ID3DXEffect, pManager: LPD3DXEFFECTSTATEMANAGER): HRESULT {.stdcall, raises: [].}
    GetStateManager*: proc(self: ptr ID3DXEffect, ppManager: ptr LPD3DXEFFECTSTATEMANAGER): HRESULT {.stdcall, raises: [].}
    BeginParameterBlock*: proc(self: ptr ID3DXEffect): HRESULT {.stdcall, raises: [].}
    EndParameterBlock*: proc(self: ptr ID3DXEffect): D3DXHANDLE {.stdcall, raises: [].}
    ApplyParameterBlock*: proc(self: ptr ID3DXEffect, hParameterBlock: D3DXHANDLE): HRESULT {.stdcall, raises: [].}
    DeleteParameterBlock*: proc(self: ptr ID3DXEffect, hParameterBlock: D3DXHANDLE): HRESULT {.stdcall, raises: [].}
    CloneEffect*: proc(self: ptr ID3DXEffect, pDevice: LPDIRECT3DDEVICE9, ppEffect: ptr LPD3DXEFFECT): HRESULT {.stdcall, raises: [].}
    SetRawValue*: proc(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pData: pointer, ByteOffset: UINT, Bytes: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXEffectCompiler* = object of ID3DXBaseEffect
  ID3DXEffectCompilerVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXEffectCompiler, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXEffectCompiler): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXEffectCompiler): ULONG {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr ID3DXEffectCompiler, pDesc: ptr D3DXEFFECT_DESC): HRESULT {.stdcall, raises: [].}
    GetParameterDesc*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pDesc: ptr D3DXPARAMETER_DESC): HRESULT {.stdcall, raises: [].}
    GetTechniqueDesc*: proc(self: ptr ID3DXEffectCompiler, hTechnique: D3DXHANDLE, pDesc: ptr D3DXTECHNIQUE_DESC): HRESULT {.stdcall, raises: [].}
    GetPassDesc*: proc(self: ptr ID3DXEffectCompiler, hPass: D3DXHANDLE, pDesc: ptr D3DXPASS_DESC): HRESULT {.stdcall, raises: [].}
    GetFunctionDesc*: proc(self: ptr ID3DXEffectCompiler, hShader: D3DXHANDLE, pDesc: ptr D3DXFUNCTION_DESC): HRESULT {.stdcall, raises: [].}
    GetParameter*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterByName*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterBySemantic*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pSemantic: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetParameterElement*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechnique*: proc(self: ptr ID3DXEffectCompiler, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetTechniqueByName*: proc(self: ptr ID3DXEffectCompiler, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetPass*: proc(self: ptr ID3DXEffectCompiler, hTechnique: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetPassByName*: proc(self: ptr ID3DXEffectCompiler, hTechnique: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr ID3DXEffectCompiler, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetFunctionByName*: proc(self: ptr ID3DXEffectCompiler, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotation*: proc(self: ptr ID3DXEffectCompiler, hObject: D3DXHANDLE, Index: UINT): D3DXHANDLE {.stdcall, raises: [].}
    GetAnnotationByName*: proc(self: ptr ID3DXEffectCompiler, hObject: D3DXHANDLE, pName: cstring): D3DXHANDLE {.stdcall, raises: [].}
    SetValue*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    GetValue*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.stdcall, raises: [].}
    SetBool*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, b: BOOL): HRESULT {.stdcall, raises: [].}
    GetBool*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pb: ptr BOOL): HRESULT {.stdcall, raises: [].}
    SetBoolArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetBoolArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetInt*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, n: INT): HRESULT {.stdcall, raises: [].}
    GetInt*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pn: ptr INT): HRESULT {.stdcall, raises: [].}
    SetIntArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetIntArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetFloat*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, f: float32): HRESULT {.stdcall, raises: [].}
    GetFloat*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pf: ptr float32): HRESULT {.stdcall, raises: [].}
    SetFloatArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetFloatArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetVector*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    GetVector*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.stdcall, raises: [].}
    SetVectorArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetVectorArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrix*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrix*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixPointerArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixPointerArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTranspose*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    GetMatrixTranspose*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposeArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposeArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetMatrixTransposePointerArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    GetMatrixTransposePointerArray*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.stdcall, raises: [].}
    SetString*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pString: cstring): HRESULT {.stdcall, raises: [].}
    GetString*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppString: ptr cstring): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetTexture*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppTexture: ptr LPDIRECT3DBASETEXTURE9): HRESULT {.stdcall, raises: [].}
    GetPixelShader*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppPShader: ptr LPDIRECT3DPIXELSHADER9): HRESULT {.stdcall, raises: [].}
    GetVertexShader*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, ppVShader: ptr LPDIRECT3DVERTEXSHADER9): HRESULT {.stdcall, raises: [].}
    SetArrayRange*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, uStart: UINT, uEnd: UINT): HRESULT {.stdcall, raises: [].}
    SetLiteral*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, Literal: BOOL): HRESULT {.stdcall, raises: [].}
    GetLiteral*: proc(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pLiteral: ptr BOOL): HRESULT {.stdcall, raises: [].}
    CompileEffect*: proc(self: ptr ID3DXEffectCompiler, Flags: DWORD, ppEffect: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    CompileShader*: proc(self: ptr ID3DXEffectCompiler, hFunction: D3DXHANDLE, pTarget: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, raises: [].}

  ID3DXAllocateHierarchy* {.pure, inheritable.} = object
    lpVtbl*: pointer
  ID3DXAllocateHierarchyVtbl* {.pure.} = object
    CreateFrame*: proc(self: ptr ID3DXAllocateHierarchy, Name: cstring, ppNewFrame: ptr LPD3DXFRAME): HRESULT {.stdcall, raises: [].}
    CreateMeshContainer*: proc(self: ptr ID3DXAllocateHierarchy, Name: cstring, pMeshData: ptr D3DXMESHDATA, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD, pAdjacency: ptr DWORD, pSkinInfo: LPD3DXSKININFO, ppNewMeshContainer: ptr LPD3DXMESHCONTAINER): HRESULT {.stdcall, raises: [].}
    DestroyFrame*: proc(self: ptr ID3DXAllocateHierarchy, pFrameToFree: LPD3DXFRAME): HRESULT {.stdcall, raises: [].}
    DestroyMeshContainer*: proc(self: ptr ID3DXAllocateHierarchy, pMeshContainerToFree: LPD3DXMESHCONTAINER): HRESULT {.stdcall, raises: [].}

  ID3DXLoadUserData* {.pure, inheritable.} = object
    lpVtbl*: pointer
  ID3DXLoadUserDataVtbl* {.pure.} = object
    LoadTopLevelData*: proc(self: ptr ID3DXLoadUserData, pXofChildData: LPD3DXFILEDATA): HRESULT {.stdcall, raises: [].}
    LoadFrameChildData*: proc(self: ptr ID3DXLoadUserData, pFrame: LPD3DXFRAME, pXofChildData: LPD3DXFILEDATA): HRESULT {.stdcall, raises: [].}
    LoadMeshChildData*: proc(self: ptr ID3DXLoadUserData, pMeshContainer: LPD3DXMESHCONTAINER, pXofChildData: LPD3DXFILEDATA): HRESULT {.stdcall, raises: [].}

  ID3DXSaveUserData* {.pure, inheritable.} = object
    lpVtbl*: pointer
  ID3DXSaveUserDataVtbl* {.pure.} = object
    AddFrameChildData*: proc(self: ptr ID3DXSaveUserData, pFrame: ptr D3DXFRAME, pXofSave: LPD3DXFILESAVEOBJECT, pXofFrameData: LPD3DXFILESAVEDATA): HRESULT {.stdcall, raises: [].}
    AddMeshChildData*: proc(self: ptr ID3DXSaveUserData, pMeshContainer: ptr D3DXMESHCONTAINER, pXofSave: LPD3DXFILESAVEOBJECT, pXofMeshData: LPD3DXFILESAVEDATA): HRESULT {.stdcall, raises: [].}
    AddTopLevelDataObjectsPre*: proc(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.stdcall, raises: [].}
    AddTopLevelDataObjectsPost*: proc(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.stdcall, raises: [].}
    RegisterTemplates*: proc(self: ptr ID3DXSaveUserData, pXFileApi: LPD3DXFILE): HRESULT {.stdcall, raises: [].}
    SaveTemplates*: proc(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.stdcall, raises: [].}

  ID3DXAnimationSet* = object of IUnknown
  ID3DXAnimationSetVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXAnimationSet, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXAnimationSet): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXAnimationSet): ULONG {.stdcall, raises: [].}
    GetName*: proc(self: ptr ID3DXAnimationSet): cstring {.stdcall, raises: [].}
    GetPeriod*: proc(self: ptr ID3DXAnimationSet): DOUBLE {.stdcall, raises: [].}
    GetPeriodicPosition*: proc(self: ptr ID3DXAnimationSet, Position: DOUBLE): DOUBLE {.stdcall, raises: [].}
    GetNumAnimations*: proc(self: ptr ID3DXAnimationSet): UINT {.stdcall, raises: [].}
    GetAnimationNameByIndex*: proc(self: ptr ID3DXAnimationSet, Index: UINT, ppName: ptr cstring): HRESULT {.stdcall, raises: [].}
    GetAnimationIndexByName*: proc(self: ptr ID3DXAnimationSet, pName: cstring, pIndex: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetSRT*: proc(self: ptr ID3DXAnimationSet, PeriodicPosition: DOUBLE, Animation: UINT, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.stdcall, raises: [].}
    GetCallback*: proc(self: ptr ID3DXAnimationSet, Position: DOUBLE, Flags: DWORD, pCallbackPosition: ptr DOUBLE, ppCallbackData: ptr pointer): HRESULT {.stdcall, raises: [].}

  ID3DXKeyframedAnimationSet* = object of ID3DXAnimationSet
  ID3DXKeyframedAnimationSetVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXKeyframedAnimationSet, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXKeyframedAnimationSet): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXKeyframedAnimationSet): ULONG {.stdcall, raises: [].}
    GetName*: proc(self: ptr ID3DXKeyframedAnimationSet): cstring {.stdcall, raises: [].}
    GetPeriod*: proc(self: ptr ID3DXKeyframedAnimationSet): DOUBLE {.stdcall, raises: [].}
    GetPeriodicPosition*: proc(self: ptr ID3DXKeyframedAnimationSet, Position: DOUBLE): DOUBLE {.stdcall, raises: [].}
    GetNumAnimations*: proc(self: ptr ID3DXKeyframedAnimationSet): UINT {.stdcall, raises: [].}
    GetAnimationNameByIndex*: proc(self: ptr ID3DXKeyframedAnimationSet, Index: UINT, ppName: ptr cstring): HRESULT {.stdcall, raises: [].}
    GetAnimationIndexByName*: proc(self: ptr ID3DXKeyframedAnimationSet, pName: cstring, pIndex: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetSRT*: proc(self: ptr ID3DXKeyframedAnimationSet, PeriodicPosition: DOUBLE, Animation: UINT, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.stdcall, raises: [].}
    GetCallback*: proc(self: ptr ID3DXKeyframedAnimationSet, Position: DOUBLE, Flags: DWORD, pCallbackPosition: ptr DOUBLE, ppCallbackData: ptr pointer): HRESULT {.stdcall, raises: [].}
    GetPlaybackType*: proc(self: ptr ID3DXKeyframedAnimationSet): D3DXPLAYBACK_TYPE {.stdcall, raises: [].}
    GetSourceTicksPerSecond*: proc(self: ptr ID3DXKeyframedAnimationSet): DOUBLE {.stdcall, raises: [].}
    GetNumScaleKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.stdcall, raises: [].}
    GetScaleKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pScaleKeys: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    GetScaleKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pScaleKey: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    SetScaleKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pScaleKey: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    GetNumRotationKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.stdcall, raises: [].}
    GetRotationKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pRotationKeys: LPD3DXKEY_QUATERNION): HRESULT {.stdcall, raises: [].}
    GetRotationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pRotationKey: LPD3DXKEY_QUATERNION): HRESULT {.stdcall, raises: [].}
    SetRotationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pRotationKey: LPD3DXKEY_QUATERNION): HRESULT {.stdcall, raises: [].}
    GetNumTranslationKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.stdcall, raises: [].}
    GetTranslationKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pTranslationKeys: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    GetTranslationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pTranslationKey: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    SetTranslationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pTranslationKey: LPD3DXKEY_VECTOR3): HRESULT {.stdcall, raises: [].}
    GetNumCallbackKeys*: proc(self: ptr ID3DXKeyframedAnimationSet): UINT {.stdcall, raises: [].}
    GetCallbackKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, pCallbackKeys: LPD3DXKEY_CALLBACK): HRESULT {.stdcall, raises: [].}
    GetCallbackKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Key: UINT, pCallbackKey: LPD3DXKEY_CALLBACK): HRESULT {.stdcall, raises: [].}
    SetCallbackKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Key: UINT, pCallbackKey: LPD3DXKEY_CALLBACK): HRESULT {.stdcall, raises: [].}
    UnregisterScaleKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.stdcall, raises: [].}
    UnregisterRotationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.stdcall, raises: [].}
    UnregisterTranslationKey*: proc(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.stdcall, raises: [].}
    RegisterAnimationSRTKeys*: proc(self: ptr ID3DXKeyframedAnimationSet, pName: cstring, NumScaleKeys: UINT, NumRotationKeys: UINT, NumTranslationKeys: UINT, pScaleKeys: ptr D3DXKEY_VECTOR3, pRotationKeys: ptr D3DXKEY_QUATERNION, pTranslationKeys: ptr D3DXKEY_VECTOR3, pAnimationIndex: ptr DWORD): HRESULT {.stdcall, raises: [].}
    Compress*: proc(self: ptr ID3DXKeyframedAnimationSet, Flags: DWORD, Lossiness: float32, pHierarchy: LPD3DXFRAME, ppCompressedData: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    UnregisterAnimation*: proc(self: ptr ID3DXKeyframedAnimationSet, Index: UINT): HRESULT {.stdcall, raises: [].}

  ID3DXCompressedAnimationSet* = object of ID3DXAnimationSet
  ID3DXCompressedAnimationSetVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXCompressedAnimationSet, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXCompressedAnimationSet): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXCompressedAnimationSet): ULONG {.stdcall, raises: [].}
    GetName*: proc(self: ptr ID3DXCompressedAnimationSet): cstring {.stdcall, raises: [].}
    GetPeriod*: proc(self: ptr ID3DXCompressedAnimationSet): DOUBLE {.stdcall, raises: [].}
    GetPeriodicPosition*: proc(self: ptr ID3DXCompressedAnimationSet, Position: DOUBLE): DOUBLE {.stdcall, raises: [].}
    GetNumAnimations*: proc(self: ptr ID3DXCompressedAnimationSet): UINT {.stdcall, raises: [].}
    GetAnimationNameByIndex*: proc(self: ptr ID3DXCompressedAnimationSet, Index: UINT, ppName: ptr cstring): HRESULT {.stdcall, raises: [].}
    GetAnimationIndexByName*: proc(self: ptr ID3DXCompressedAnimationSet, pName: cstring, pIndex: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetSRT*: proc(self: ptr ID3DXCompressedAnimationSet, PeriodicPosition: DOUBLE, Animation: UINT, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.stdcall, raises: [].}
    GetCallback*: proc(self: ptr ID3DXCompressedAnimationSet, Position: DOUBLE, Flags: DWORD, pCallbackPosition: ptr DOUBLE, ppCallbackData: ptr pointer): HRESULT {.stdcall, raises: [].}
    GetPlaybackType*: proc(self: ptr ID3DXCompressedAnimationSet): D3DXPLAYBACK_TYPE {.stdcall, raises: [].}
    GetSourceTicksPerSecond*: proc(self: ptr ID3DXCompressedAnimationSet): DOUBLE {.stdcall, raises: [].}
    GetCompressedData*: proc(self: ptr ID3DXCompressedAnimationSet, ppCompressedData: ptr LPD3DXBUFFER): HRESULT {.stdcall, raises: [].}
    GetNumCallbackKeys*: proc(self: ptr ID3DXCompressedAnimationSet): UINT {.stdcall, raises: [].}
    GetCallbackKeys*: proc(self: ptr ID3DXCompressedAnimationSet, pCallbackKeys: LPD3DXKEY_CALLBACK): HRESULT {.stdcall, raises: [].}

  ID3DXAnimationCallbackHandler* {.pure, inheritable.} = object
    lpVtbl*: pointer
  ID3DXAnimationCallbackHandlerVtbl* {.pure.} = object
    HandleCallback*: proc(self: ptr ID3DXAnimationCallbackHandler, Track: UINT, pCallbackData: pointer): HRESULT {.stdcall, raises: [].}

  ID3DXAnimationController* = object of IUnknown
  ID3DXAnimationControllerVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr ID3DXAnimationController, iid: REFIID, ppv: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr ID3DXAnimationController): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr ID3DXAnimationController): ULONG {.stdcall, raises: [].}
    GetMaxNumAnimationOutputs*: proc(self: ptr ID3DXAnimationController): UINT {.stdcall, raises: [].}
    GetMaxNumAnimationSets*: proc(self: ptr ID3DXAnimationController): UINT {.stdcall, raises: [].}
    GetMaxNumTracks*: proc(self: ptr ID3DXAnimationController): UINT {.stdcall, raises: [].}
    GetMaxNumEvents*: proc(self: ptr ID3DXAnimationController): UINT {.stdcall, raises: [].}
    RegisterAnimationOutput*: proc(self: ptr ID3DXAnimationController, pName: cstring, pMatrix: ptr D3DXMATRIX, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.stdcall, raises: [].}
    RegisterAnimationSet*: proc(self: ptr ID3DXAnimationController, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    UnregisterAnimationSet*: proc(self: ptr ID3DXAnimationController, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    GetNumAnimationSets*: proc(self: ptr ID3DXAnimationController): UINT {.stdcall, raises: [].}
    GetAnimationSet*: proc(self: ptr ID3DXAnimationController, Index: UINT, ppAnimationSet: ptr LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    GetAnimationSetByName*: proc(self: ptr ID3DXAnimationController, szName: cstring, ppAnimationSet: ptr LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    AdvanceTime*: proc(self: ptr ID3DXAnimationController, TimeDelta: DOUBLE, pCallbackHandler: LPD3DXANIMATIONCALLBACKHANDLER): HRESULT {.stdcall, raises: [].}
    ResetTime*: proc(self: ptr ID3DXAnimationController): HRESULT {.stdcall, raises: [].}
    GetTime*: proc(self: ptr ID3DXAnimationController): DOUBLE {.stdcall, raises: [].}
    SetTrackAnimationSet*: proc(self: ptr ID3DXAnimationController, Track: UINT, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    GetTrackAnimationSet*: proc(self: ptr ID3DXAnimationController, Track: UINT, ppAnimSet: ptr LPD3DXANIMATIONSET): HRESULT {.stdcall, raises: [].}
    SetTrackPriority*: proc(self: ptr ID3DXAnimationController, Track: UINT, Priority: D3DXPRIORITY_TYPE): HRESULT {.stdcall, raises: [].}
    SetTrackSpeed*: proc(self: ptr ID3DXAnimationController, Track: UINT, Speed: float32): HRESULT {.stdcall, raises: [].}
    SetTrackWeight*: proc(self: ptr ID3DXAnimationController, Track: UINT, Weight: float32): HRESULT {.stdcall, raises: [].}
    SetTrackPosition*: proc(self: ptr ID3DXAnimationController, Track: UINT, Position: DOUBLE): HRESULT {.stdcall, raises: [].}
    SetTrackEnable*: proc(self: ptr ID3DXAnimationController, Track: UINT, Enable: BOOL): HRESULT {.stdcall, raises: [].}
    SetTrackDesc*: proc(self: ptr ID3DXAnimationController, Track: UINT, pDesc: LPD3DXTRACK_DESC): HRESULT {.stdcall, raises: [].}
    GetTrackDesc*: proc(self: ptr ID3DXAnimationController, Track: UINT, pDesc: LPD3DXTRACK_DESC): HRESULT {.stdcall, raises: [].}
    SetPriorityBlend*: proc(self: ptr ID3DXAnimationController, BlendWeight: float32): HRESULT {.stdcall, raises: [].}
    GetPriorityBlend*: proc(self: ptr ID3DXAnimationController): float32 {.stdcall, raises: [].}
    KeyTrackSpeed*: proc(self: ptr ID3DXAnimationController, Track: UINT, NewSpeed: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    KeyTrackWeight*: proc(self: ptr ID3DXAnimationController, Track: UINT, NewWeight: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    KeyTrackPosition*: proc(self: ptr ID3DXAnimationController, Track: UINT, NewPosition: DOUBLE, StartTime: DOUBLE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    KeyTrackEnable*: proc(self: ptr ID3DXAnimationController, Track: UINT, NewEnable: BOOL, StartTime: DOUBLE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    KeyPriorityBlend*: proc(self: ptr ID3DXAnimationController, NewBlendWeight: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    UnkeyEvent*: proc(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): HRESULT {.stdcall, raises: [].}
    UnkeyAllTrackEvents*: proc(self: ptr ID3DXAnimationController, Track: UINT): HRESULT {.stdcall, raises: [].}
    UnkeyAllPriorityBlends*: proc(self: ptr ID3DXAnimationController): HRESULT {.stdcall, raises: [].}
    GetCurrentTrackEvent*: proc(self: ptr ID3DXAnimationController, Track: UINT, EventType: D3DXEVENT_TYPE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    GetCurrentPriorityBlend*: proc(self: ptr ID3DXAnimationController): D3DXEVENTHANDLE {.stdcall, raises: [].}
    GetUpcomingTrackEvent*: proc(self: ptr ID3DXAnimationController, Track: UINT, hEvent: D3DXEVENTHANDLE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    GetUpcomingPriorityBlend*: proc(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): D3DXEVENTHANDLE {.stdcall, raises: [].}
    ValidateEvent*: proc(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): HRESULT {.stdcall, raises: [].}
    GetEventDesc*: proc(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE, pDesc: LPD3DXEVENT_DESC): HRESULT {.stdcall, raises: [].}
    CloneAnimationController*: proc(self: ptr ID3DXAnimationController, MaxNumAnimationOutputs: UINT, MaxNumAnimationSets: UINT, MaxNumTracks: UINT, MaxNumEvents: UINT, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, raises: [].}

proc `==`*(a, b: D3DXPATCHMESHTYPE): bool {.borrow.}
converter toDWORD*(x: D3DXPATCHMESHTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXCLEANTYPE): bool {.borrow.}
converter toDWORD*(x: D3DXCLEANTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXTANGENT): bool {.borrow.}
converter toDWORD*(x: D3DXTANGENT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXIMT): bool {.borrow.}
converter toDWORD*(x: D3DXIMT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXUVATLAS): bool {.borrow.}
converter toDWORD*(x: D3DXUVATLAS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXEFFECTDEFAULTTYPE): bool {.borrow.}
converter toDWORD*(x: D3DXEFFECTDEFAULTTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXSHCOMPRESSQUALITYTYPE): bool {.borrow.}
converter toDWORD*(x: D3DXSHCOMPRESSQUALITYTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXSHGPUSIMOPT): bool {.borrow.}
converter toDWORD*(x: D3DXSHGPUSIMOPT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXREGISTER_SET): bool {.borrow.}
converter toDWORD*(x: D3DXREGISTER_SET): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXPARAMETER_CLASS): bool {.borrow.}
converter toDWORD*(x: D3DXPARAMETER_CLASS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXPARAMETER_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXPARAMETER_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXINCLUDE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXINCLUDE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXIMAGE_FILEFORMAT): bool {.borrow.}
converter toDWORD*(x: D3DXIMAGE_FILEFORMAT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXMESHDATATYPE): bool {.borrow.}
converter toDWORD*(x: D3DXMESHDATATYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXCALLBACK_SEARCH_FLAGS): bool {.borrow.}
converter toDWORD*(x: D3DXCALLBACK_SEARCH_FLAGS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXPLAYBACK_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXPLAYBACK_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXCOMPRESSION_FLAGS): bool {.borrow.}
converter toDWORD*(x: D3DXCOMPRESSION_FLAGS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXPRIORITY_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXPRIORITY_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXEVENT_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXEVENT_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DXTRANSITION_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DXTRANSITION_TYPE): DWORD {.inline.} = DWORD(x)

const
  D3DXPATCHMESH_RECT* = D3DXPATCHMESHTYPE(1'i32)
  D3DXPATCHMESH_TRI* = D3DXPATCHMESHTYPE(2'i32)
  D3DXPATCHMESH_NPATCH* = D3DXPATCHMESHTYPE(3'i32)
  D3DXPATCHMESH_FORCE_DWORD* = D3DXPATCHMESHTYPE(0x7FFFFFFF'i32)

const
  D3DXCLEAN_BACKFACING* = D3DXCLEANTYPE(1'i32)
  D3DXCLEAN_BOWTIES* = D3DXCLEANTYPE(2'i32)
  D3DXCLEAN_SKINNING* = D3DXCLEANTYPE(1'i32)
  D3DXCLEAN_OPTIMIZATION* = D3DXCLEANTYPE(1'i32)
  D3DXCLEAN_SIMPLIFICATION* = D3DXCLEANTYPE(3'i32)

const
  D3DXTANGENT_WRAP_U* = D3DXTANGENT(1'i32)
  D3DXTANGENT_WRAP_V* = D3DXTANGENT(2'i32)
  D3DXTANGENT_WRAP_UV* = D3DXTANGENT(3'i32)
  D3DXTANGENT_DONT_NORMALIZE_PARTIALS* = D3DXTANGENT(4'i32)
  D3DXTANGENT_DONT_ORTHOGONALIZE* = D3DXTANGENT(8'i32)
  D3DXTANGENT_ORTHOGONALIZE_FROM_V* = D3DXTANGENT(0x00000010'i32)
  D3DXTANGENT_ORTHOGONALIZE_FROM_U* = D3DXTANGENT(0x00000020'i32)
  D3DXTANGENT_WEIGHT_BY_AREA* = D3DXTANGENT(0x00000040'i32)
  D3DXTANGENT_WEIGHT_EQUAL* = D3DXTANGENT(0x00000080'i32)
  D3DXTANGENT_WIND_CW* = D3DXTANGENT(0x00000100'i32)
  D3DXTANGENT_CALCULATE_NORMALS* = D3DXTANGENT(0x00000200'i32)
  D3DXTANGENT_GENERATE_IN_PLACE* = D3DXTANGENT(0x00000400'i32)

const
  D3DXIMT_WRAP_U* = D3DXIMT(1'i32)
  D3DXIMT_WRAP_V* = D3DXIMT(2'i32)
  D3DXIMT_WRAP_UV* = D3DXIMT(3'i32)

const
  D3DXUVATLAS_DEFAULT* = D3DXUVATLAS(0'i32)
  D3DXUVATLAS_GEODESIC_FAST* = D3DXUVATLAS(1'i32)
  D3DXUVATLAS_GEODESIC_QUALITY* = D3DXUVATLAS(2'i32)

const
  D3DXEDT_STRING* = D3DXEFFECTDEFAULTTYPE(1'i32)
  D3DXEDT_FLOATS* = D3DXEFFECTDEFAULTTYPE(2'i32)
  D3DXEDT_DWORD* = D3DXEFFECTDEFAULTTYPE(3'i32)
  D3DXEDT_FORCEDWORD* = D3DXEFFECTDEFAULTTYPE(0x7FFFFFFF'i32)

const
  D3DXSHCQUAL_FASTLOWQUALITY* = D3DXSHCOMPRESSQUALITYTYPE(1'i32)
  D3DXSHCQUAL_SLOWHIGHQUALITY* = D3DXSHCOMPRESSQUALITYTYPE(2'i32)
  D3DXSHCQUAL_FORCE_DWORD* = D3DXSHCOMPRESSQUALITYTYPE(0x7FFFFFFF'i32)

const
  D3DXSHGPUSIMOPT_SHADOWRES256* = D3DXSHGPUSIMOPT(1'i32)
  D3DXSHGPUSIMOPT_SHADOWRES512* = D3DXSHGPUSIMOPT(0'i32)
  D3DXSHGPUSIMOPT_SHADOWRES1024* = D3DXSHGPUSIMOPT(2'i32)
  D3DXSHGPUSIMOPT_SHADOWRES2048* = D3DXSHGPUSIMOPT(3'i32)
  D3DXSHGPUSIMOPT_HIGHQUALITY* = D3DXSHGPUSIMOPT(4'i32)
  D3DXSHGPUSIMOPT_FORCE_DWORD* = D3DXSHGPUSIMOPT(0x7FFFFFFF'i32)

const
  D3DXRS_BOOL* = D3DXREGISTER_SET(0'i32)
  D3DXRS_INT4* = D3DXREGISTER_SET(1'i32)
  D3DXRS_FLOAT4* = D3DXREGISTER_SET(2'i32)
  D3DXRS_SAMPLER* = D3DXREGISTER_SET(3'i32)
  D3DXRS_FORCE_DWORD* = D3DXREGISTER_SET(0x7FFFFFFF'i32)

const
  D3DXPC_SCALAR* = D3DXPARAMETER_CLASS(0'i32)
  D3DXPC_VECTOR* = D3DXPARAMETER_CLASS(1'i32)
  D3DXPC_MATRIX_ROWS* = D3DXPARAMETER_CLASS(2'i32)
  D3DXPC_MATRIX_COLUMNS* = D3DXPARAMETER_CLASS(3'i32)
  D3DXPC_OBJECT* = D3DXPARAMETER_CLASS(4'i32)
  D3DXPC_STRUCT* = D3DXPARAMETER_CLASS(5'i32)
  D3DXPC_FORCE_DWORD* = D3DXPARAMETER_CLASS(0x7FFFFFFF'i32)

const
  D3DXPT_VOID* = D3DXPARAMETER_TYPE(0'i32)
  D3DXPT_BOOL* = D3DXPARAMETER_TYPE(1'i32)
  D3DXPT_INT* = D3DXPARAMETER_TYPE(2'i32)
  D3DXPT_FLOAT* = D3DXPARAMETER_TYPE(3'i32)
  D3DXPT_STRING* = D3DXPARAMETER_TYPE(4'i32)
  D3DXPT_TEXTURE* = D3DXPARAMETER_TYPE(5'i32)
  D3DXPT_TEXTURE1D* = D3DXPARAMETER_TYPE(6'i32)
  D3DXPT_TEXTURE2D* = D3DXPARAMETER_TYPE(7'i32)
  D3DXPT_TEXTURE3D* = D3DXPARAMETER_TYPE(8'i32)
  D3DXPT_TEXTURECUBE* = D3DXPARAMETER_TYPE(9'i32)
  D3DXPT_SAMPLER* = D3DXPARAMETER_TYPE(10'i32)
  D3DXPT_SAMPLER1D* = D3DXPARAMETER_TYPE(11'i32)
  D3DXPT_SAMPLER2D* = D3DXPARAMETER_TYPE(12'i32)
  D3DXPT_SAMPLER3D* = D3DXPARAMETER_TYPE(13'i32)
  D3DXPT_SAMPLERCUBE* = D3DXPARAMETER_TYPE(14'i32)
  D3DXPT_PIXELSHADER* = D3DXPARAMETER_TYPE(15'i32)
  D3DXPT_VERTEXSHADER* = D3DXPARAMETER_TYPE(16'i32)
  D3DXPT_PIXELFRAGMENT* = D3DXPARAMETER_TYPE(17'i32)
  D3DXPT_VERTEXFRAGMENT* = D3DXPARAMETER_TYPE(18'i32)
  D3DXPT_UNSUPPORTED* = D3DXPARAMETER_TYPE(19'i32)
  D3DXPT_FORCE_DWORD* = D3DXPARAMETER_TYPE(0x7FFFFFFF'i32)

const
  D3DXINC_LOCAL* = D3DXINCLUDE_TYPE(0'i32)
  D3DXINC_SYSTEM* = D3DXINCLUDE_TYPE(1'i32)
  D3DXINC_FORCE_DWORD* = D3DXINCLUDE_TYPE(0x7FFFFFFF'i32)

const
  D3DXIFF_BMP* = D3DXIMAGE_FILEFORMAT(0'i32)
  D3DXIFF_JPG* = D3DXIMAGE_FILEFORMAT(1'i32)
  D3DXIFF_TGA* = D3DXIMAGE_FILEFORMAT(2'i32)
  D3DXIFF_PNG* = D3DXIMAGE_FILEFORMAT(3'i32)
  D3DXIFF_DDS* = D3DXIMAGE_FILEFORMAT(4'i32)
  D3DXIFF_PPM* = D3DXIMAGE_FILEFORMAT(5'i32)
  D3DXIFF_DIB* = D3DXIMAGE_FILEFORMAT(6'i32)
  D3DXIFF_HDR* = D3DXIMAGE_FILEFORMAT(7'i32)
  D3DXIFF_PFM* = D3DXIMAGE_FILEFORMAT(8'i32)
  D3DXIFF_FORCE_DWORD* = D3DXIMAGE_FILEFORMAT(0x7FFFFFFF'i32)

const
  D3DXMESHTYPE_MESH* = D3DXMESHDATATYPE(1'i32)
  D3DXMESHTYPE_PMESH* = D3DXMESHDATATYPE(2'i32)
  D3DXMESHTYPE_PATCHMESH* = D3DXMESHDATATYPE(3'i32)
  D3DXMESHTYPE_FORCE_DWORD* = D3DXMESHDATATYPE(0x7FFFFFFF'i32)

const
  D3DXCALLBACK_SEARCH_EXCLUDING_INITIAL_POSITION* = D3DXCALLBACK_SEARCH_FLAGS(1'i32)
  D3DXCALLBACK_SEARCH_BEHIND_INITIAL_POSITION* = D3DXCALLBACK_SEARCH_FLAGS(2'i32)
  D3DXCALLBACK_SEARCH_FORCE_DWORD* = D3DXCALLBACK_SEARCH_FLAGS(0x7FFFFFFF'i32)

const
  D3DXPLAY_LOOP* = D3DXPLAYBACK_TYPE(0'i32)
  D3DXPLAY_ONCE* = D3DXPLAYBACK_TYPE(1'i32)
  D3DXPLAY_PINGPONG* = D3DXPLAYBACK_TYPE(2'i32)
  D3DXPLAY_FORCE_DWORD* = D3DXPLAYBACK_TYPE(0x7FFFFFFF'i32)

const
  D3DXCOMPRESS_DEFAULT* = D3DXCOMPRESSION_FLAGS(0'i32)
  D3DXCOMPRESS_FORCE_DWORD* = D3DXCOMPRESSION_FLAGS(0x7FFFFFFF'i32)

const
  D3DXPRIORITY_LOW* = D3DXPRIORITY_TYPE(0'i32)
  D3DXPRIORITY_HIGH* = D3DXPRIORITY_TYPE(1'i32)
  D3DXPRIORITY_FORCE_DWORD* = D3DXPRIORITY_TYPE(0x7FFFFFFF'i32)

const
  D3DXEVENT_TRACKSPEED* = D3DXEVENT_TYPE(0'i32)
  D3DXEVENT_TRACKWEIGHT* = D3DXEVENT_TYPE(1'i32)
  D3DXEVENT_TRACKPOSITION* = D3DXEVENT_TYPE(2'i32)
  D3DXEVENT_TRACKENABLE* = D3DXEVENT_TYPE(3'i32)
  D3DXEVENT_PRIORITYBLEND* = D3DXEVENT_TYPE(4'i32)
  D3DXEVENT_FORCE_DWORD* = D3DXEVENT_TYPE(0x7FFFFFFF'i32)

const
  D3DXTRANSITION_LINEAR* = D3DXTRANSITION_TYPE(0'i32)
  D3DXTRANSITION_EASEINEASEOUT* = D3DXTRANSITION_TYPE(1'i32)
  D3DXTRANSITION_FORCE_DWORD* = D3DXTRANSITION_TYPE(0x7FFFFFFF'i32)

const
  D3DX_DEFAULT* = -1'i32
  D3DX_DEFAULT_NONPOW2* = -2'i32
  D3DX_DEFAULT_FLOAT* = 3.402823466e+38'f32
  D3DX_FROM_FILE* = -3'i32
  D3DFMT_FROM_FILE* = D3DFORMAT(-3'i32)
  D3DXERR_CANNOTMODIFYINDEXBUFFER* = 0x88760B54'i32
  D3DXERR_INVALIDMESH* = 0x88760B55'i32
  D3DXERR_CANNOTATTRSORT* = 0x88760B56'i32
  D3DXERR_SKINNINGNOTSUPPORTED* = 0x88760B57'i32
  D3DXERR_TOOMANYINFLUENCES* = 0x88760B58'i32
  D3DXERR_INVALIDDATA* = 0x88760B59'i32
  D3DXERR_LOADEDMESHASNODATA* = 0x88760B5A'i32
  D3DXERR_DUPLICATENAMEDFRAGMENT* = 0x88760B5B'i32
  D3DXERR_CANNOTREMOVELASTITEM* = 0x88760B5C'i32
  D3DX_PI* = 3.141592654'f32
  D3DX_1BYPI* = 0.318309886'f32
  D3DX_16F_DIG* = 3'i32
  D3DX_16F_EPSILON* = 4.8875809'f32
  D3DX_16F_MANT_DIG* = 11'i32
  D3DX_16F_MAX* = 65504.0'f32
  D3DX_16F_MAX_10_EXP* = 4'i32
  D3DX_16F_MAX_EXP* = 15'i32
  D3DX_16F_MIN* = 6.1035156'f32
  D3DX_16F_MIN_10_EXP* = -4'i32
  D3DX_16F_MIN_EXP* = -14'i32
  D3DX_16F_RADIX* = 2'i32
  D3DX_16F_ROUNDS* = 1'i32
  D3DXSH_MINORDER* = 2'i32
  D3DXSH_MAXORDER* = 6'i32
  D3DX_VERSION* = 0x00000902'i32
  D3DX_SDK_VERSION* = 43'i32
  D3DXSPRITE_DONOTSAVESTATE* = 1'i32
  D3DXSPRITE_DONOTMODIFY_RENDERSTATE* = 2'i32
  D3DXSPRITE_OBJECTSPACE* = 4'i32
  D3DXSPRITE_BILLBOARD* = 8'i32
  D3DXSPRITE_ALPHABLEND* = 0x00000010'i32
  D3DXSPRITE_SORT_TEXTURE* = 0x00000020'i32
  D3DXSPRITE_SORT_DEPTH_FRONTTOBACK* = 0x00000040'i32
  D3DXSPRITE_SORT_DEPTH_BACKTOFRONT* = 0x00000080'i32
  D3DXSPRITE_DO_NOT_ADDREF_TEXTURE* = 0x00000100'i32
  D3DXF_FILEFORMAT_BINARY* = 0'i32
  D3DXF_FILEFORMAT_TEXT* = 1'i32
  D3DXF_FILEFORMAT_COMPRESSED* = 2'i32
  D3DXF_FILESAVE_TOFILE* = 0'i32
  D3DXF_FILESAVE_TOWFILE* = 1'i32
  D3DXF_FILELOAD_FROMFILE* = 0'i32
  D3DXF_FILELOAD_FROMWFILE* = 1'i32
  D3DXF_FILELOAD_FROMRESOURCE* = 2'i32
  D3DXF_FILELOAD_FROMMEMORY* = 3'i32
  D3DXFERR_BADOBJECT* = 0x88760384'i32
  D3DXFERR_BADVALUE* = 0x88760385'i32
  D3DXFERR_BADTYPE* = 0x88760386'i32
  D3DXFERR_NOTFOUND* = 0x88760387'i32
  D3DXFERR_NOTDONEYET* = 0x88760388'i32
  D3DXFERR_FILENOTFOUND* = 0x88760389'i32
  D3DXFERR_RESOURCENOTFOUND* = 0x8876038A'i32
  D3DXFERR_BADRESOURCE* = 0x8876038B'i32
  D3DXFERR_BADFILETYPE* = 0x8876038C'i32
  D3DXFERR_BADFILEVERSION* = 0x8876038D'i32
  D3DXFERR_BADFILEFLOATSIZE* = 0x8876038E'i32
  D3DXFERR_BADFILE* = 0x8876038F'i32
  D3DXFERR_PARSEERROR* = 0x88760390'i32
  D3DXFERR_BADARRAYSIZE* = 0x88760391'i32
  D3DXFERR_BADDATAREFERENCE* = 0x88760392'i32
  D3DXFERR_NOMOREOBJECTS* = 0x88760393'i32
  D3DXFERR_NOMOREDATA* = 0x88760394'i32
  D3DXFERR_BADCACHEFILE* = 0x88760395'i32
  D3DXMESH_32BIT* = 1'i32
  D3DXMESH_DONOTCLIP* = 2'i32
  D3DXMESH_POINTS* = 4'i32
  D3DXMESH_RTPATCHES* = 8'i32
  D3DXMESH_NPATCHES* = 16384'i32
  D3DXMESH_VB_SYSTEMMEM* = 16'i32
  D3DXMESH_VB_MANAGED* = 32'i32
  D3DXMESH_VB_WRITEONLY* = 64'i32
  D3DXMESH_VB_DYNAMIC* = 128'i32
  D3DXMESH_VB_SOFTWAREPROCESSING* = 32768'i32
  D3DXMESH_IB_SYSTEMMEM* = 256'i32
  D3DXMESH_IB_MANAGED* = 512'i32
  D3DXMESH_IB_WRITEONLY* = 1024'i32
  D3DXMESH_IB_DYNAMIC* = 2048'i32
  D3DXMESH_IB_SOFTWAREPROCESSING* = 65536'i32
  D3DXMESH_VB_SHARE* = 4096'i32
  D3DXMESH_USEHWONLY* = 8192'i32
  D3DXMESH_SYSTEMMEM* = 272'i32
  D3DXMESH_MANAGED* = 544'i32
  D3DXMESH_WRITEONLY* = 1088'i32
  D3DXMESH_DYNAMIC* = 2176'i32
  D3DXMESH_SOFTWAREPROCESSING* = 98304'i32
  D3DXPATCHMESH_DEFAULT* = 0'i32
  D3DXMESHSIMP_VERTEX* = 1'i32
  D3DXMESHSIMP_FACE* = 2'i32
  MAX_FVF_DECL_SIZE* = 65'i32
  D3DXWELDEPSILONS_WELDALL* = 1'i32
  D3DXWELDEPSILONS_WELDPARTIALMATCHES* = 2'i32
  D3DXWELDEPSILONS_DONOTREMOVEVERTICES* = 4'i32
  D3DXWELDEPSILONS_DONOTSPLIT* = 8'i32
  UNUSED16* = 0x0000FFFF'i32
  UNUSED32* = 0xFFFFFFFF'i32
  D3DXMESHOPT_COMPACT* = 16777216'i32
  D3DXMESHOPT_ATTRSORT* = 33554432'i32
  D3DXMESHOPT_VERTEXCACHE* = 67108864'i32
  D3DXMESHOPT_STRIPREORDER* = 134217728'i32
  D3DXMESHOPT_IGNOREVERTS* = 268435456'i32
  D3DXMESHOPT_DONOTSPLIT* = 536870912'i32
  D3DXMESHOPT_DEVICEINDEPENDENT* = 4194304'i32
  XSKINEXP_TEMPLATES* = "xof 0303txt 0032         template XSkinMeshHeader          {              <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>              WORD nMaxSkinWeightsPerVertex;              WORD nMaxSkinWeightsPerFace;              WORD nBones;          }          template VertexDuplicationIndices          {              <B8D65549-D7C9-4995-89CF-53A9A8B031E3>              DWORD nIndices;              DWORD nOriginalVertices;              array DWORD indices[nIndices];          }          template FaceAdjacency          {              <A64C844A-E282-4756-8B80-250CDE04398C>              DWORD nIndices;              array DWORD indices[nIndices];          }          template SkinWeights          {              <6F0D123B-BAD2-4167-A0D0-80224F25FABB>              STRING transformNodeName;              DWORD nWeights;              array DWORD vertexIndices[nWeights];              array float weights[nWeights];              Matrix4x4 matrixOffset;          }          template Patch          {              <A3EB5D44-FC22-429D-9AFB-3221CB9719A6>              DWORD nControlIndices;              array DWORD controlIndices[nControlIndices];          }          template PatchMesh          {              <D02C95CC-EDBA-4305-9B5D-1820D7704BBF>              DWORD nVertices;              array Vector vertices[nVertices];              DWORD nPatches;              array Patch patches[nPatches];              [ ... ]          }          template PatchMesh9          {              <B9EC94E1-B9A6-4251-BA18-94893F02C0EA>              DWORD Type;              DWORD Degree;              DWORD Basis;              DWORD nVertices;              array Vector vertices[nVertices];              DWORD nPatches;              array Patch patches[nPatches];              [ ... ]          } template EffectFloats          {              <F1CFE2B3-0DE3-4e28-AFA1-155A750A282D>              DWORD nFloats;              array float Floats[nFloats];          }          template EffectString          {              <D55B097E-BDB6-4c52-B03D-6051C89D0E42>              STRING Value;          }          template EffectDWord          {              <622C0ED0-956E-4da9-908A-2AF94F3CE716>              DWORD Value;          } template EffectParamFloats          {              <3014B9A0-62F5-478c-9B86-E4AC9F4E418B>              STRING ParamName;              DWORD nFloats;              array float Floats[nFloats];          } template EffectParamString          {              <1DBC4C88-94C1-46ee-9076-2C28818C9481>              STRING ParamName;              STRING Value;          }          template EffectParamDWord          {              <E13963BC-AE51-4c5d-B00F-CFA3A9D97CE5>              STRING ParamName;              DWORD Value;          }          template EffectInstance          {              <E331F7E4-0559-4cc2-8E99-1CEC1657928F>              STRING EffectFilename;              [ ... ]          } template AnimTicksPerSecond          {              <9E415A43-7BA6-4a73-8743-B73D47E88476>              DWORD AnimTicksPerSecond;          }          template CompressedAnimationSet          {              <7F9B00B3-F125-4890-876E-1C42BF697C4D>              DWORD CompressedBlockSize;              FLOAT TicksPerSec;              DWORD PlaybackType;              DWORD BufferLength;              array DWORD CompressedData[BufferLength];          } "
  XEXTENSIONS_TEMPLATES* = "xof 0303txt 0032         template FVFData          {              <B6E70A0E-8EF9-4e83-94AD-ECC8B0C04897>              DWORD dwFVF;              DWORD nDWords;              array DWORD data[nDWords];          }          template VertexElement          {              <F752461C-1E23-48f6-B9F8-8350850F336F>              DWORD Type;              DWORD Method;              DWORD Usage;              DWORD UsageIndex;          }          template DeclData          {              <BF22E553-292C-4781-9FEA-62BD554BDD93>              DWORD nElements;              array VertexElement Elements[nElements];              DWORD nDWords;              array DWORD data[nDWords];          }          template PMAttributeRange          {              <917E0427-C61E-4a14-9C64-AFE65F9E9844>              DWORD iFaceOffset;              DWORD nFacesMin;              DWORD nFacesMax;              DWORD iVertexOffset;              DWORD nVerticesMin;              DWORD nVerticesMax;          }          template PMVSplitRecord          {              <574CCC14-F0B3-4333-822D-93E8A8A08E4C>              DWORD iFaceCLW;              DWORD iVlrOffset;              DWORD iCode;          }          template PMInfo          {              <B6C3E656-EC8B-4b92-9B62-681659522947>              DWORD nAttributes;              array PMAttributeRange attributeRanges[nAttributes];              DWORD nMaxValence;              DWORD nMinLogicalVertices;              DWORD nMaxLogicalVertices;              DWORD nVSplits;              array PMVSplitRecord splitRecords[nVSplits];              DWORD nAttributeMispredicts;              array DWORD attributeMispredicts[nAttributeMispredicts];          } "
  D3DXSHADER_DEBUG* = 1'i32
  D3DXSHADER_SKIPVALIDATION* = 2'i32
  D3DXSHADER_SKIPOPTIMIZATION* = 4'i32
  D3DXSHADER_PACKMATRIX_ROWMAJOR* = 8'i32
  D3DXSHADER_PACKMATRIX_COLUMNMAJOR* = 0x00000010'i32
  D3DXSHADER_PARTIALPRECISION* = 0x00000020'i32
  D3DXSHADER_FORCE_VS_SOFTWARE_NOOPT* = 0x00000040'i32
  D3DXSHADER_FORCE_PS_SOFTWARE_NOOPT* = 0x00000080'i32
  D3DXSHADER_NO_PRESHADER* = 0x00000100'i32
  D3DXSHADER_AVOID_FLOW_CONTROL* = 0x00000200'i32
  D3DXSHADER_PREFER_FLOW_CONTROL* = 0x00000400'i32
  D3DXSHADER_ENABLE_BACKWARDS_COMPATIBILITY* = 0x00001000'i32
  D3DXSHADER_IEEE_STRICTNESS* = 0x00002000'i32
  D3DXSHADER_USE_LEGACY_D3DX9_31_DLL* = 0x00010000'i32
  D3DXSHADER_OPTIMIZATION_LEVEL0* = 0x00004000'i32
  D3DXSHADER_OPTIMIZATION_LEVEL1* = 0'i32
  D3DXSHADER_OPTIMIZATION_LEVEL2* = 0x0000C000'i32
  D3DXSHADER_OPTIMIZATION_LEVEL3* = 0x00008000'i32
  D3DXCONSTTABLE_LARGEADDRESSAWARE* = 0x00020000'i32
  D3DXFX_DONOTSAVESTATE* = 1'i32
  D3DXFX_DONOTSAVESHADERSTATE* = 2'i32
  D3DXFX_DONOTSAVESAMPLERSTATE* = 4'i32
  D3DXFX_NOT_CLONEABLE* = 0x00000800'i32
  D3DXFX_LARGEADDRESSAWARE* = 0x00020000'i32
  D3DX_PARAMETER_SHARED* = 1'i32
  D3DX_PARAMETER_LITERAL* = 2'i32
  D3DX_PARAMETER_ANNOTATION* = 4'i32
  D3DX_FILTER_NONE* = 1'i32
  D3DX_FILTER_POINT* = 2'i32
  D3DX_FILTER_LINEAR* = 3'i32
  D3DX_FILTER_TRIANGLE* = 4'i32
  D3DX_FILTER_BOX* = 5'i32
  D3DX_FILTER_MIRROR_U* = 0x00010000'i32
  D3DX_FILTER_MIRROR_V* = 0x00020000'i32
  D3DX_FILTER_MIRROR_W* = 0x00040000'i32
  D3DX_FILTER_MIRROR* = 0x00070000'i32
  D3DX_FILTER_DITHER* = 0x00080000'i32
  D3DX_FILTER_DITHER_DIFFUSION* = 0x00100000'i32
  D3DX_FILTER_SRGB_IN* = 0x00200000'i32
  D3DX_FILTER_SRGB_OUT* = 0x00400000'i32
  D3DX_FILTER_SRGB* = 0x00600000'i32
  D3DX_SKIP_DDS_MIP_LEVELS_MASK* = 0x0000001F'i32
  D3DX_SKIP_DDS_MIP_LEVELS_SHIFT* = 26'i32
  D3DX_NORMALMAP_MIRROR_U* = 0x00010000'i32
  D3DX_NORMALMAP_MIRROR_V* = 0x00020000'i32
  D3DX_NORMALMAP_MIRROR* = 0x00030000'i32
  D3DX_NORMALMAP_INVERTSIGN* = 0x00080000'i32
  D3DX_NORMALMAP_COMPUTE_OCCLUSION* = 0x00100000'i32
  D3DX_CHANNEL_RED* = 1'i32
  D3DX_CHANNEL_BLUE* = 2'i32
  D3DX_CHANNEL_GREEN* = 4'i32
  D3DX_CHANNEL_ALPHA* = 8'i32
  D3DX_CHANNEL_LUMINANCE* = 0x00000010'i32

let IID_ID3DXMatrixStack* = GUID(Data1: 0xC7885BA7'i32, Data2: 0xF990'u16, Data3: 0x4FE7'u16, Data4: [0x92'u8, 0x2D'u8, 0x85'u8, 0x15'u8, 0xE4'u8, 0x77'u8, 0xDD'u8, 0x85'u8])
let IID_ID3DXBuffer* = GUID(Data1: 0x8BA5FB08'i32, Data2: 0x5195'u16, Data3: 0x40E2'u16, Data4: [0xAC'u8, 0x58'u8, 0x0D'u8, 0x98'u8, 0x9C'u8, 0x3A'u8, 0x01'u8, 0x02'u8])
let IID_ID3DXSprite* = GUID(Data1: 0xBA0B762D'i32, Data2: 0x7D28'u16, Data3: 0x43EC'u16, Data4: [0xB9'u8, 0xDC'u8, 0x2F'u8, 0x84'u8, 0x44'u8, 0x3B'u8, 0x06'u8, 0x14'u8])
let IID_ID3DXFont* = GUID(Data1: 0xD79DBB70'i32, Data2: 0x5F21'u16, Data3: 0x4D36'u16, Data4: [0xBB'u8, 0xC2'u8, 0xFF'u8, 0x52'u8, 0x5C'u8, 0x21'u8, 0x3C'u8, 0xDC'u8])
let IID_ID3DXRenderToSurface* = GUID(Data1: 0x6985F346'i32, Data2: 0x2C3D'u16, Data3: 0x43B3'u16, Data4: [0xBE'u8, 0x8B'u8, 0xDA'u8, 0xAE'u8, 0x8A'u8, 0x03'u8, 0xD8'u8, 0x94'u8])
let IID_ID3DXRenderToEnvMap* = GUID(Data1: 0x313F1B4B'i32, Data2: 0xC7B0'u16, Data3: 0x4FA2'u16, Data4: [0x9D'u8, 0x9D'u8, 0x8D'u8, 0x38'u8, 0x0B'u8, 0x64'u8, 0x38'u8, 0x5E'u8])
let IID_ID3DXLine* = GUID(Data1: 0xD379BA7F'i32, Data2: 0x9042'u16, Data3: 0x4AC4'u16, Data4: [0x9F'u8, 0x5E'u8, 0x58'u8, 0x19'u8, 0x2A'u8, 0x4C'u8, 0x6B'u8, 0xD8'u8])
let IID_ID3DXFile* = GUID(Data1: 0xCEF08CF9'i32, Data2: 0x7B4F'u16, Data3: 0x4429'u16, Data4: [0x96'u8, 0x24'u8, 0x2A'u8, 0x69'u8, 0x0A'u8, 0x93'u8, 0x32'u8, 0x01'u8])
let IID_ID3DXFileSaveObject* = GUID(Data1: 0xCEF08CFA'i32, Data2: 0x7B4F'u16, Data3: 0x4429'u16, Data4: [0x96'u8, 0x24'u8, 0x2A'u8, 0x69'u8, 0x0A'u8, 0x93'u8, 0x32'u8, 0x01'u8])
let IID_ID3DXFileSaveData* = GUID(Data1: 0xCEF08CFB'i32, Data2: 0x7B4F'u16, Data3: 0x4429'u16, Data4: [0x96'u8, 0x24'u8, 0x2A'u8, 0x69'u8, 0x0A'u8, 0x93'u8, 0x32'u8, 0x01'u8])
let IID_ID3DXFileEnumObject* = GUID(Data1: 0xCEF08CFC'i32, Data2: 0x7B4F'u16, Data3: 0x4429'u16, Data4: [0x96'u8, 0x24'u8, 0x2A'u8, 0x69'u8, 0x0A'u8, 0x93'u8, 0x32'u8, 0x01'u8])
let IID_ID3DXFileData* = GUID(Data1: 0xCEF08CFD'i32, Data2: 0x7B4F'u16, Data3: 0x4429'u16, Data4: [0x96'u8, 0x24'u8, 0x2A'u8, 0x69'u8, 0x0A'u8, 0x93'u8, 0x32'u8, 0x01'u8])
let IID_ID3DXBaseMesh* = GUID(Data1: 0x7ED943DD'i32, Data2: 0x52E8'u16, Data3: 0x40B5'u16, Data4: [0xA8'u8, 0xD8'u8, 0x76'u8, 0x68'u8, 0x5C'u8, 0x40'u8, 0x63'u8, 0x30'u8])
let IID_ID3DXMesh* = GUID(Data1: 0x4020E5C2'i32, Data2: 0x1403'u16, Data3: 0x4929'u16, Data4: [0x88'u8, 0x3F'u8, 0xE2'u8, 0xE8'u8, 0x49'u8, 0xFA'u8, 0xC1'u8, 0x95'u8])
let IID_ID3DXPMesh* = GUID(Data1: 0x8875769A'i32, Data2: 0xD579'u16, Data3: 0x4088'u16, Data4: [0xAA'u8, 0xEB'u8, 0x53'u8, 0x4D'u8, 0x1A'u8, 0xD8'u8, 0x4E'u8, 0x96'u8])
let IID_ID3DXSPMesh* = GUID(Data1: 0x667EA4C7'i32, Data2: 0xF1CD'u16, Data3: 0x4386'u16, Data4: [0xB5'u8, 0x23'u8, 0x7C'u8, 0x02'u8, 0x90'u8, 0xB8'u8, 0x3C'u8, 0xC5'u8])
let IID_ID3DXSkinInfo* = GUID(Data1: 0x11EAA540'i32, Data2: 0xF9A6'u16, Data3: 0x4D49'u16, Data4: [0xAE'u8, 0x6A'u8, 0xE1'u8, 0x92'u8, 0x21'u8, 0xF7'u8, 0x0C'u8, 0xC4'u8])
let IID_ID3DXPatchMesh* = GUID(Data1: 0x3CE6CC22'i32, Data2: 0xDBF2'u16, Data3: 0x44F4'u16, Data4: [0x89'u8, 0x4D'u8, 0xF9'u8, 0xC3'u8, 0x4A'u8, 0x33'u8, 0x71'u8, 0x39'u8])
let IID_ID3DXPRTBuffer* = GUID(Data1: 0xF1827E47'i32, Data2: 0x00A8'u16, Data3: 0x49CD'u16, Data4: [0x90'u8, 0x8C'u8, 0x9D'u8, 0x11'u8, 0x95'u8, 0x5F'u8, 0x87'u8, 0x28'u8])
let IID_ID3DXPRTCompBuffer* = GUID(Data1: 0xA758D465'i32, Data2: 0xFE8D'u16, Data3: 0x45AD'u16, Data4: [0x9C'u8, 0xF0'u8, 0xD0'u8, 0x1E'u8, 0x56'u8, 0x26'u8, 0x6A'u8, 0x07'u8])
let IID_ID3DXTextureGutterHelper* = GUID(Data1: 0x838F01EC'i32, Data2: 0x9729'u16, Data3: 0x4527'u16, Data4: [0xAA'u8, 0xDB'u8, 0xDF'u8, 0x70'u8, 0xAD'u8, 0xE7'u8, 0xFE'u8, 0xA9'u8])
let IID_ID3DXPRTEngine* = GUID(Data1: 0x683A4278'i32, Data2: 0xCD5F'u16, Data3: 0x4D24'u16, Data4: [0x90'u8, 0xAD'u8, 0xC4'u8, 0xE1'u8, 0xB6'u8, 0x85'u8, 0x5D'u8, 0x53'u8])
let DXFILEOBJ_XSkinMeshHeader* = GUID(Data1: 0x3CF169CE'i32, Data2: 0xFF7C'u16, Data3: 0x44AB'u16, Data4: [0x93'u8, 0xC0'u8, 0xF7'u8, 0x8F'u8, 0x62'u8, 0xD1'u8, 0x72'u8, 0xE2'u8])
let DXFILEOBJ_VertexDuplicationIndices* = GUID(Data1: 0xB8D65549'i32, Data2: 0xD7C9'u16, Data3: 0x4995'u16, Data4: [0x89'u8, 0xCF'u8, 0x53'u8, 0xA9'u8, 0xA8'u8, 0xB0'u8, 0x31'u8, 0xE3'u8])
let DXFILEOBJ_FaceAdjacency* = GUID(Data1: 0xA64C844A'i32, Data2: 0xE282'u16, Data3: 0x4756'u16, Data4: [0x8B'u8, 0x80'u8, 0x25'u8, 0x0C'u8, 0xDE'u8, 0x04'u8, 0x39'u8, 0x8C'u8])
let DXFILEOBJ_SkinWeights* = GUID(Data1: 0x6F0D123B'i32, Data2: 0xBAD2'u16, Data3: 0x4167'u16, Data4: [0xA0'u8, 0xD0'u8, 0x80'u8, 0x22'u8, 0x4F'u8, 0x25'u8, 0xFA'u8, 0xBB'u8])
let DXFILEOBJ_Patch* = GUID(Data1: 0xA3EB5D44'i32, Data2: 0xFC22'u16, Data3: 0x429D'u16, Data4: [0x9A'u8, 0xFB'u8, 0x32'u8, 0x21'u8, 0xCB'u8, 0x97'u8, 0x19'u8, 0xA6'u8])
let DXFILEOBJ_PatchMesh* = GUID(Data1: 0xD02C95CC'i32, Data2: 0xEDBA'u16, Data3: 0x4305'u16, Data4: [0x9B'u8, 0x5D'u8, 0x18'u8, 0x20'u8, 0xD7'u8, 0x70'u8, 0x4B'u8, 0xBF'u8])
let DXFILEOBJ_PatchMesh9* = GUID(Data1: 0xB9EC94E1'i32, Data2: 0xB9A6'u16, Data3: 0x4251'u16, Data4: [0xBA'u8, 0x18'u8, 0x94'u8, 0x89'u8, 0x3F'u8, 0x02'u8, 0xC0'u8, 0xEA'u8])
let DXFILEOBJ_PMInfo* = GUID(Data1: 0xB6C3E656'i32, Data2: 0xEC8B'u16, Data3: 0x4B92'u16, Data4: [0x9B'u8, 0x62'u8, 0x68'u8, 0x16'u8, 0x59'u8, 0x52'u8, 0x29'u8, 0x47'u8])
let DXFILEOBJ_PMAttributeRange* = GUID(Data1: 0x917E0427'i32, Data2: 0xC61E'u16, Data3: 0x4A14'u16, Data4: [0x9C'u8, 0x64'u8, 0xAF'u8, 0xE6'u8, 0x5F'u8, 0x9E'u8, 0x98'u8, 0x44'u8])
let DXFILEOBJ_PMVSplitRecord* = GUID(Data1: 0x574CCC14'i32, Data2: 0xF0B3'u16, Data3: 0x4333'u16, Data4: [0x82'u8, 0x2D'u8, 0x93'u8, 0xE8'u8, 0xA8'u8, 0xA0'u8, 0x8E'u8, 0x4C'u8])
let DXFILEOBJ_FVFData* = GUID(Data1: 0xB6E70A0E'i32, Data2: 0x8EF9'u16, Data3: 0x4E83'u16, Data4: [0x94'u8, 0xAD'u8, 0xEC'u8, 0xC8'u8, 0xB0'u8, 0xC0'u8, 0x48'u8, 0x97'u8])
let DXFILEOBJ_VertexElement* = GUID(Data1: 0xF752461C'i32, Data2: 0x1E23'u16, Data3: 0x48F6'u16, Data4: [0xB9'u8, 0xF8'u8, 0x83'u8, 0x50'u8, 0x85'u8, 0x0F'u8, 0x33'u8, 0x6F'u8])
let DXFILEOBJ_DeclData* = GUID(Data1: 0xBF22E553'i32, Data2: 0x292C'u16, Data3: 0x4781'u16, Data4: [0x9F'u8, 0xEA'u8, 0x62'u8, 0xBD'u8, 0x55'u8, 0x4B'u8, 0xDD'u8, 0x93'u8])
let DXFILEOBJ_EffectFloats* = GUID(Data1: 0xF1CFE2B3'i32, Data2: 0x0DE3'u16, Data3: 0x4E28'u16, Data4: [0xAF'u8, 0xA1'u8, 0x15'u8, 0x5A'u8, 0x75'u8, 0x0A'u8, 0x28'u8, 0x2D'u8])
let DXFILEOBJ_EffectString* = GUID(Data1: 0xD55B097E'i32, Data2: 0xBDB6'u16, Data3: 0x4C52'u16, Data4: [0xB0'u8, 0x3D'u8, 0x60'u8, 0x51'u8, 0xC8'u8, 0x9D'u8, 0x0E'u8, 0x42'u8])
let DXFILEOBJ_EffectDWord* = GUID(Data1: 0x622C0ED0'i32, Data2: 0x956E'u16, Data3: 0x4DA9'u16, Data4: [0x90'u8, 0x8A'u8, 0x2A'u8, 0xF9'u8, 0x4F'u8, 0x3C'u8, 0xE7'u8, 0x16'u8])
let DXFILEOBJ_EffectParamFloats* = GUID(Data1: 0x3014B9A0'i32, Data2: 0x62F5'u16, Data3: 0x478C'u16, Data4: [0x9B'u8, 0x86'u8, 0xE4'u8, 0xAC'u8, 0x9F'u8, 0x4E'u8, 0x41'u8, 0x8B'u8])
let DXFILEOBJ_EffectParamString* = GUID(Data1: 0x1DBC4C88'i32, Data2: 0x94C1'u16, Data3: 0x46EE'u16, Data4: [0x90'u8, 0x76'u8, 0x2C'u8, 0x28'u8, 0x81'u8, 0x8C'u8, 0x94'u8, 0x81'u8])
let DXFILEOBJ_EffectParamDWord* = GUID(Data1: 0xE13963BC'i32, Data2: 0xAE51'u16, Data3: 0x4C5D'u16, Data4: [0xB0'u8, 0x0F'u8, 0xCF'u8, 0xA3'u8, 0xA9'u8, 0xD9'u8, 0x7C'u8, 0xE5'u8])
let DXFILEOBJ_EffectInstance* = GUID(Data1: 0xE331F7E4'i32, Data2: 0x0559'u16, Data3: 0x4CC2'u16, Data4: [0x8E'u8, 0x99'u8, 0x1C'u8, 0xEC'u8, 0x16'u8, 0x57'u8, 0x92'u8, 0x8F'u8])
let DXFILEOBJ_AnimTicksPerSecond* = GUID(Data1: 0x9E415A43'i32, Data2: 0x7BA6'u16, Data3: 0x4A73'u16, Data4: [0x87'u8, 0x43'u8, 0xB7'u8, 0x3D'u8, 0x47'u8, 0xE8'u8, 0x84'u8, 0x76'u8])
let DXFILEOBJ_CompressedAnimationSet* = GUID(Data1: 0x7F9B00B3'i32, Data2: 0xF125'u16, Data3: 0x4890'u16, Data4: [0x87'u8, 0x6E'u8, 0x1C'u8, 0x42'u8, 0xBF'u8, 0x69'u8, 0x7C'u8, 0x4D'u8])
let IID_ID3DXConstantTable* = GUID(Data1: 0xAB3C758F'i32, Data2: 0x093E'u16, Data3: 0x4356'u16, Data4: [0xB7'u8, 0x62'u8, 0x4D'u8, 0xB1'u8, 0x8F'u8, 0x1B'u8, 0x3A'u8, 0x01'u8])
let IID_ID3DXTextureShader* = GUID(Data1: 0x3E3D67F8'i32, Data2: 0xAA7A'u16, Data3: 0x405D'u16, Data4: [0xA8'u8, 0x57'u8, 0xBA'u8, 0x01'u8, 0xD4'u8, 0x75'u8, 0x84'u8, 0x26'u8])
let IID_ID3DXEffectPool* = GUID(Data1: 0x9537AB04'i32, Data2: 0x3250'u16, Data3: 0x412E'u16, Data4: [0x82'u8, 0x13'u8, 0xFC'u8, 0xD2'u8, 0xF8'u8, 0x67'u8, 0x79'u8, 0x33'u8])
let IID_ID3DXBaseEffect* = GUID(Data1: 0x017C18AC'i32, Data2: 0x103F'u16, Data3: 0x4417'u16, Data4: [0x8C'u8, 0x51'u8, 0x6B'u8, 0xF6'u8, 0xEF'u8, 0x1E'u8, 0x56'u8, 0xBE'u8])
let IID_ID3DXEffectStateManager* = GUID(Data1: 0x79AAB587'i32, Data2: 0x6DBC'u16, Data3: 0x4FA7'u16, Data4: [0x82'u8, 0xDE'u8, 0x37'u8, 0xFA'u8, 0x17'u8, 0x81'u8, 0xC5'u8, 0xCE'u8])
let IID_ID3DXEffect* = GUID(Data1: 0xF6CEB4B3'i32, Data2: 0x4E4C'u16, Data3: 0x40DD'u16, Data4: [0xB8'u8, 0x83'u8, 0x8D'u8, 0x8D'u8, 0xE5'u8, 0xEA'u8, 0x0C'u8, 0xD5'u8])
let IID_ID3DXEffectCompiler* = GUID(Data1: 0x51B8A949'i32, Data2: 0x1A31'u16, Data3: 0x47E6'u16, Data4: [0xBE'u8, 0xA0'u8, 0x4B'u8, 0x30'u8, 0xDB'u8, 0x53'u8, 0xF1'u8, 0xE0'u8])
let IID_ID3DXAnimationSet* = GUID(Data1: 0x698CFB3F'i32, Data2: 0x9289'u16, Data3: 0x4D95'u16, Data4: [0x9A'u8, 0x57'u8, 0x33'u8, 0xA9'u8, 0x4B'u8, 0x5A'u8, 0x65'u8, 0xF9'u8])
let IID_ID3DXKeyframedAnimationSet* = GUID(Data1: 0xFA4E8E3A'i32, Data2: 0x9786'u16, Data3: 0x407D'u16, Data4: [0x8B'u8, 0x4C'u8, 0x59'u8, 0x95'u8, 0x89'u8, 0x37'u8, 0x64'u8, 0xAF'u8])
let IID_ID3DXCompressedAnimationSet* = GUID(Data1: 0x6CC2480D'i32, Data2: 0x3808'u16, Data3: 0x4739'u16, Data4: [0x9F'u8, 0x88'u8, 0xDE'u8, 0x49'u8, 0xFA'u8, 0xCD'u8, 0x8D'u8, 0x4C'u8])
let IID_ID3DXAnimationController* = GUID(Data1: 0xAC8948EC'i32, Data2: 0xF86D'u16, Data3: 0x43E2'u16, Data4: [0x96'u8, 0xDE'u8, 0x31'u8, 0xFC'u8, 0x35'u8, 0xF9'u8, 0x6D'u8, 0x9E'u8])

proc D3DXFloat32To16Array*(pOut: ptr D3DXFLOAT16, pIn: ptr float32, n: UINT): ptr D3DXFLOAT16 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFloat16To32Array*(pOut: ptr float32, pIn: ptr D3DXFLOAT16, n: UINT): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2Normalize*(pOut: ptr D3DXVECTOR2, pV: ptr D3DXVECTOR2): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2Hermite*(pOut: ptr D3DXVECTOR2, pV1: ptr D3DXVECTOR2, pT1: ptr D3DXVECTOR2, pV2: ptr D3DXVECTOR2, pT2: ptr D3DXVECTOR2, s: float32): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2CatmullRom*(pOut: ptr D3DXVECTOR2, pV0: ptr D3DXVECTOR2, pV1: ptr D3DXVECTOR2, pV2: ptr D3DXVECTOR2, pV3: ptr D3DXVECTOR2, s: float32): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2BaryCentric*(pOut: ptr D3DXVECTOR2, pV1: ptr D3DXVECTOR2, pV2: ptr D3DXVECTOR2, pV3: ptr D3DXVECTOR2, f: float32, g: float32): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2Transform*(pOut: ptr D3DXVECTOR4, pV: ptr D3DXVECTOR2, pM: ptr D3DXMATRIX): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2TransformCoord*(pOut: ptr D3DXVECTOR2, pV: ptr D3DXVECTOR2, pM: ptr D3DXMATRIX): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2TransformNormal*(pOut: ptr D3DXVECTOR2, pV: ptr D3DXVECTOR2, pM: ptr D3DXMATRIX): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2TransformArray*(pOut: ptr D3DXVECTOR4, OutStride: UINT, pV: ptr D3DXVECTOR2, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2TransformCoordArray*(pOut: ptr D3DXVECTOR2, OutStride: UINT, pV: ptr D3DXVECTOR2, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec2TransformNormalArray*(pOut: ptr D3DXVECTOR2, OutStride: UINT, pV: ptr D3DXVECTOR2, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR2 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3Normalize*(pOut: ptr D3DXVECTOR3, pV: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3Hermite*(pOut: ptr D3DXVECTOR3, pV1: ptr D3DXVECTOR3, pT1: ptr D3DXVECTOR3, pV2: ptr D3DXVECTOR3, pT2: ptr D3DXVECTOR3, s: float32): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3CatmullRom*(pOut: ptr D3DXVECTOR3, pV0: ptr D3DXVECTOR3, pV1: ptr D3DXVECTOR3, pV2: ptr D3DXVECTOR3, pV3: ptr D3DXVECTOR3, s: float32): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3BaryCentric*(pOut: ptr D3DXVECTOR3, pV1: ptr D3DXVECTOR3, pV2: ptr D3DXVECTOR3, pV3: ptr D3DXVECTOR3, f: float32, g: float32): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3Transform*(pOut: ptr D3DXVECTOR4, pV: ptr D3DXVECTOR3, pM: ptr D3DXMATRIX): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3TransformCoord*(pOut: ptr D3DXVECTOR3, pV: ptr D3DXVECTOR3, pM: ptr D3DXMATRIX): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3TransformNormal*(pOut: ptr D3DXVECTOR3, pV: ptr D3DXVECTOR3, pM: ptr D3DXMATRIX): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3TransformArray*(pOut: ptr D3DXVECTOR4, OutStride: UINT, pV: ptr D3DXVECTOR3, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3TransformCoordArray*(pOut: ptr D3DXVECTOR3, OutStride: UINT, pV: ptr D3DXVECTOR3, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3TransformNormalArray*(pOut: ptr D3DXVECTOR3, OutStride: UINT, pV: ptr D3DXVECTOR3, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3Project*(pOut: ptr D3DXVECTOR3, pV: ptr D3DXVECTOR3, pViewport: ptr D3DVIEWPORT9, pProjection: ptr D3DXMATRIX, pView: ptr D3DXMATRIX, pWorld: ptr D3DXMATRIX): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3Unproject*(pOut: ptr D3DXVECTOR3, pV: ptr D3DXVECTOR3, pViewport: ptr D3DVIEWPORT9, pProjection: ptr D3DXMATRIX, pView: ptr D3DXMATRIX, pWorld: ptr D3DXMATRIX): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3ProjectArray*(pOut: ptr D3DXVECTOR3, OutStride: UINT, pV: ptr D3DXVECTOR3, VStride: UINT, pViewport: ptr D3DVIEWPORT9, pProjection: ptr D3DXMATRIX, pView: ptr D3DXMATRIX, pWorld: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec3UnprojectArray*(pOut: ptr D3DXVECTOR3, OutStride: UINT, pV: ptr D3DXVECTOR3, VStride: UINT, pViewport: ptr D3DVIEWPORT9, pProjection: ptr D3DXMATRIX, pView: ptr D3DXMATRIX, pWorld: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4Cross*(pOut: ptr D3DXVECTOR4, pV1: ptr D3DXVECTOR4, pV2: ptr D3DXVECTOR4, pV3: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4Normalize*(pOut: ptr D3DXVECTOR4, pV: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4Hermite*(pOut: ptr D3DXVECTOR4, pV1: ptr D3DXVECTOR4, pT1: ptr D3DXVECTOR4, pV2: ptr D3DXVECTOR4, pT2: ptr D3DXVECTOR4, s: float32): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4CatmullRom*(pOut: ptr D3DXVECTOR4, pV0: ptr D3DXVECTOR4, pV1: ptr D3DXVECTOR4, pV2: ptr D3DXVECTOR4, pV3: ptr D3DXVECTOR4, s: float32): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4BaryCentric*(pOut: ptr D3DXVECTOR4, pV1: ptr D3DXVECTOR4, pV2: ptr D3DXVECTOR4, pV3: ptr D3DXVECTOR4, f: float32, g: float32): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4Transform*(pOut: ptr D3DXVECTOR4, pV: ptr D3DXVECTOR4, pM: ptr D3DXMATRIX): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXVec4TransformArray*(pOut: ptr D3DXVECTOR4, OutStride: UINT, pV: ptr D3DXVECTOR4, VStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXVECTOR4 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixDeterminant*(pM: ptr D3DXMATRIX): float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixDecompose*(pOutScale: ptr D3DXVECTOR3, pOutRotation: ptr D3DXQUATERNION, pOutTranslation: ptr D3DXVECTOR3, pM: ptr D3DXMATRIX): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixTranspose*(pOut: ptr D3DXMATRIX, pM: ptr D3DXMATRIX): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixMultiply*(pOut: ptr D3DXMATRIX, pM1: ptr D3DXMATRIX, pM2: ptr D3DXMATRIX): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixMultiplyTranspose*(pOut: ptr D3DXMATRIX, pM1: ptr D3DXMATRIX, pM2: ptr D3DXMATRIX): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixInverse*(pOut: ptr D3DXMATRIX, pDeterminant: ptr float32, pM: ptr D3DXMATRIX): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixScaling*(pOut: ptr D3DXMATRIX, sx: float32, sy: float32, sz: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixTranslation*(pOut: ptr D3DXMATRIX, x: float32, y: float32, z: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationX*(pOut: ptr D3DXMATRIX, Angle: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationY*(pOut: ptr D3DXMATRIX, Angle: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationZ*(pOut: ptr D3DXMATRIX, Angle: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationAxis*(pOut: ptr D3DXMATRIX, pV: ptr D3DXVECTOR3, Angle: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationQuaternion*(pOut: ptr D3DXMATRIX, pQ: ptr D3DXQUATERNION): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixRotationYawPitchRoll*(pOut: ptr D3DXMATRIX, Yaw: float32, Pitch: float32, Roll: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixTransformation*(pOut: ptr D3DXMATRIX, pScalingCenter: ptr D3DXVECTOR3, pScalingRotation: ptr D3DXQUATERNION, pScaling: ptr D3DXVECTOR3, pRotationCenter: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixTransformation2D*(pOut: ptr D3DXMATRIX, pScalingCenter: ptr D3DXVECTOR2, ScalingRotation: float32, pScaling: ptr D3DXVECTOR2, pRotationCenter: ptr D3DXVECTOR2, Rotation: float32, pTranslation: ptr D3DXVECTOR2): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixAffineTransformation*(pOut: ptr D3DXMATRIX, Scaling: float32, pRotationCenter: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixAffineTransformation2D*(pOut: ptr D3DXMATRIX, Scaling: float32, pRotationCenter: ptr D3DXVECTOR2, Rotation: float32, pTranslation: ptr D3DXVECTOR2): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixLookAtRH*(pOut: ptr D3DXMATRIX, pEye: ptr D3DXVECTOR3, pAt: ptr D3DXVECTOR3, pUp: ptr D3DXVECTOR3): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixLookAtLH*(pOut: ptr D3DXMATRIX, pEye: ptr D3DXVECTOR3, pAt: ptr D3DXVECTOR3, pUp: ptr D3DXVECTOR3): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveRH*(pOut: ptr D3DXMATRIX, w: float32, h: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveLH*(pOut: ptr D3DXMATRIX, w: float32, h: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveFovRH*(pOut: ptr D3DXMATRIX, fovy: float32, Aspect: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveFovLH*(pOut: ptr D3DXMATRIX, fovy: float32, Aspect: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveOffCenterRH*(pOut: ptr D3DXMATRIX, l: float32, r: float32, b: float32, t: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixPerspectiveOffCenterLH*(pOut: ptr D3DXMATRIX, l: float32, r: float32, b: float32, t: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixOrthoRH*(pOut: ptr D3DXMATRIX, w: float32, h: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixOrthoLH*(pOut: ptr D3DXMATRIX, w: float32, h: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixOrthoOffCenterRH*(pOut: ptr D3DXMATRIX, l: float32, r: float32, b: float32, t: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixOrthoOffCenterLH*(pOut: ptr D3DXMATRIX, l: float32, r: float32, b: float32, t: float32, zn: float32, zf: float32): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixShadow*(pOut: ptr D3DXMATRIX, pLight: ptr D3DXVECTOR4, pPlane: ptr D3DXPLANE): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXMatrixReflect*(pOut: ptr D3DXMATRIX, pPlane: ptr D3DXPLANE): ptr D3DXMATRIX {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionToAxisAngle*(pQ: ptr D3DXQUATERNION, pAxis: ptr D3DXVECTOR3, pAngle: ptr float32) {.stdcall, dynlib: "d3dx9_43.dll", importc.}
proc D3DXQuaternionRotationMatrix*(pOut: ptr D3DXQUATERNION, pM: ptr D3DXMATRIX): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionRotationAxis*(pOut: ptr D3DXQUATERNION, pV: ptr D3DXVECTOR3, Angle: float32): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionRotationYawPitchRoll*(pOut: ptr D3DXQUATERNION, Yaw: float32, Pitch: float32, Roll: float32): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionMultiply*(pOut: ptr D3DXQUATERNION, pQ1: ptr D3DXQUATERNION, pQ2: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionNormalize*(pOut: ptr D3DXQUATERNION, pQ: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionInverse*(pOut: ptr D3DXQUATERNION, pQ: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionLn*(pOut: ptr D3DXQUATERNION, pQ: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionExp*(pOut: ptr D3DXQUATERNION, pQ: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionSlerp*(pOut: ptr D3DXQUATERNION, pQ1: ptr D3DXQUATERNION, pQ2: ptr D3DXQUATERNION, t: float32): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionSquad*(pOut: ptr D3DXQUATERNION, pQ1: ptr D3DXQUATERNION, pA: ptr D3DXQUATERNION, pB: ptr D3DXQUATERNION, pC: ptr D3DXQUATERNION, t: float32): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXQuaternionSquadSetup*(pAOut: ptr D3DXQUATERNION, pBOut: ptr D3DXQUATERNION, pCOut: ptr D3DXQUATERNION, pQ0: ptr D3DXQUATERNION, pQ1: ptr D3DXQUATERNION, pQ2: ptr D3DXQUATERNION, pQ3: ptr D3DXQUATERNION) {.stdcall, dynlib: "d3dx9_43.dll", importc.}
proc D3DXQuaternionBaryCentric*(pOut: ptr D3DXQUATERNION, pQ1: ptr D3DXQUATERNION, pQ2: ptr D3DXQUATERNION, pQ3: ptr D3DXQUATERNION, f: float32, g: float32): ptr D3DXQUATERNION {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneNormalize*(pOut: ptr D3DXPLANE, pP: ptr D3DXPLANE): ptr D3DXPLANE {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneIntersectLine*(pOut: ptr D3DXVECTOR3, pP: ptr D3DXPLANE, pV1: ptr D3DXVECTOR3, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneFromPointNormal*(pOut: ptr D3DXPLANE, pPoint: ptr D3DXVECTOR3, pNormal: ptr D3DXVECTOR3): ptr D3DXPLANE {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneFromPoints*(pOut: ptr D3DXPLANE, pV1: ptr D3DXVECTOR3, pV2: ptr D3DXVECTOR3, pV3: ptr D3DXVECTOR3): ptr D3DXPLANE {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneTransform*(pOut: ptr D3DXPLANE, pP: ptr D3DXPLANE, pM: ptr D3DXMATRIX): ptr D3DXPLANE {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPlaneTransformArray*(pOut: ptr D3DXPLANE, OutStride: UINT, pP: ptr D3DXPLANE, PStride: UINT, pM: ptr D3DXMATRIX, n: UINT): ptr D3DXPLANE {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXColorAdjustSaturation*(pOut: ptr D3DXCOLOR, pC: ptr D3DXCOLOR, s: float32): ptr D3DXCOLOR {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXColorAdjustContrast*(pOut: ptr D3DXCOLOR, pC: ptr D3DXCOLOR, c: float32): ptr D3DXCOLOR {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFresnelTerm*(CosTheta: float32, RefractionIndex: float32): float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateMatrixStack*(Flags: DWORD, ppStack: ptr LPD3DXMATRIXSTACK): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHEvalDirection*(pOut: ptr float32, Order: UINT, pDir: ptr D3DXVECTOR3): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHRotate*(pOut: ptr float32, Order: UINT, pMatrix: ptr D3DXMATRIX, pIn: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHRotateZ*(pOut: ptr float32, Order: UINT, Angle: float32, pIn: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHAdd*(pOut: ptr float32, Order: UINT, pA: ptr float32, pB: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHScale*(pOut: ptr float32, Order: UINT, pIn: ptr float32, Scale: float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHDot*(Order: UINT, pA: ptr float32, pB: ptr float32): float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHMultiply2*(pOut: ptr float32, pF: ptr float32, pG: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHMultiply3*(pOut: ptr float32, pF: ptr float32, pG: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHMultiply4*(pOut: ptr float32, pF: ptr float32, pG: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHMultiply5*(pOut: ptr float32, pF: ptr float32, pG: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHMultiply6*(pOut: ptr float32, pF: ptr float32, pG: ptr float32): ptr float32 {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHEvalDirectionalLight*(Order: UINT, pDir: ptr D3DXVECTOR3, RIntensity: float32, GIntensity: float32, BIntensity: float32, pROut: ptr float32, pGOut: ptr float32, pBOut: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHEvalSphericalLight*(Order: UINT, pPos: ptr D3DXVECTOR3, Radius: float32, RIntensity: float32, GIntensity: float32, BIntensity: float32, pROut: ptr float32, pGOut: ptr float32, pBOut: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHEvalConeLight*(Order: UINT, pDir: ptr D3DXVECTOR3, Radius: float32, RIntensity: float32, GIntensity: float32, BIntensity: float32, pROut: ptr float32, pGOut: ptr float32, pBOut: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHEvalHemisphereLight*(Order: UINT, pDir: ptr D3DXVECTOR3, Top: D3DXCOLOR, Bottom: D3DXCOLOR, pROut: ptr float32, pGOut: ptr float32, pBOut: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHProjectCubeMap*(uOrder: UINT, pCubeMap: LPDIRECT3DCUBETEXTURE9, pROut: ptr float32, pGOut: ptr float32, pBOut: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCheckVersion*(D3DSdkVersion: UINT, D3DXSdkVersion: UINT): BOOL {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXDebugMute*(Mute: BOOL): BOOL {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetDriverLevel*(pDevice: LPDIRECT3DDEVICE9): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSprite*(pDevice: LPDIRECT3DDEVICE9, ppSprite: ptr LPD3DXSPRITE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateFontA*(pDevice: LPDIRECT3DDEVICE9, Height: INT, Width: UINT, Weight: UINT, MipLevels: UINT, Italic: BOOL, CharSet: DWORD, OutputPrecision: DWORD, Quality: DWORD, PitchAndFamily: DWORD, pFaceName: cstring, ppFont: ptr LPD3DXFONT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateFontW*(pDevice: LPDIRECT3DDEVICE9, Height: INT, Width: UINT, Weight: UINT, MipLevels: UINT, Italic: BOOL, CharSet: DWORD, OutputPrecision: DWORD, Quality: DWORD, PitchAndFamily: DWORD, pFaceName: LPCWSTR, ppFont: ptr LPD3DXFONT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateFontIndirectA*(pDevice: LPDIRECT3DDEVICE9, pDesc: ptr D3DXFONT_DESCA, ppFont: ptr LPD3DXFONT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateFontIndirectW*(pDevice: LPDIRECT3DDEVICE9, pDesc: ptr D3DXFONT_DESCW, ppFont: ptr LPD3DXFONT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateRenderToSurface*(pDevice: LPDIRECT3DDEVICE9, Width: UINT, Height: UINT, Format: D3DFORMAT, DepthStencil: BOOL, DepthStencilFormat: D3DFORMAT, ppRenderToSurface: ptr LPD3DXRENDERTOSURFACE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateRenderToEnvMap*(pDevice: LPDIRECT3DDEVICE9, Size: UINT, MipLevels: UINT, Format: D3DFORMAT, DepthStencil: BOOL, DepthStencilFormat: D3DFORMAT, ppRenderToEnvMap: ptr LPD3DXRenderToEnvMap): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateLine*(pDevice: LPDIRECT3DDEVICE9, ppLine: ptr LPD3DXLINE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFileCreate*(lplpDirectXFile: ptr ptr ID3DXFile): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateMesh*(NumFaces: DWORD, NumVertices: DWORD, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateMeshFVF*(NumFaces: DWORD, NumVertices: DWORD, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSPMesh*(pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, pVertexAttributeWeights: ptr D3DXATTRIBUTEWEIGHTS, pVertexWeights: ptr float32, ppSMesh: ptr LPD3DXSPMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCleanMesh*(CleanType: D3DXCLEANTYPE, pMeshIn: LPD3DXMESH, pAdjacencyIn: ptr DWORD, ppMeshOut: ptr LPD3DXMESH, pAdjacencyOut: ptr DWORD, ppErrorsAndWarnings: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXValidMesh*(pMeshIn: LPD3DXMESH, pAdjacency: ptr DWORD, ppErrorsAndWarnings: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGeneratePMesh*(pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, pVertexAttributeWeights: ptr D3DXATTRIBUTEWEIGHTS, pVertexWeights: ptr float32, MinValue: DWORD, Options: DWORD, ppPMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSimplifyMesh*(pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, pVertexAttributeWeights: ptr D3DXATTRIBUTEWEIGHTS, pVertexWeights: ptr float32, MinValue: DWORD, Options: DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeBoundingSphere*(pFirstPosition: ptr D3DXVECTOR3, NumVertices: DWORD, dwStride: DWORD, pCenter: ptr D3DXVECTOR3, pRadius: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeBoundingBox*(pFirstPosition: ptr D3DXVECTOR3, NumVertices: DWORD, dwStride: DWORD, pMin: ptr D3DXVECTOR3, pMax: ptr D3DXVECTOR3): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeNormals*(pMesh: LPD3DXBASEMESH, pAdjacency: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateBuffer*(NumBytes: DWORD, ppBuffer: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshFromXA*(pFilename: cstring, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshFromXW*(pFilename: LPCWSTR, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshFromXInMemory*(Memory: pointer, SizeOfMemory: DWORD, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshFromXResource*(Module: HMODULE, Name: cstring, Type: cstring, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveMeshToXA*(pFilename: cstring, pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD, Format: DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveMeshToXW*(pFilename: LPCWSTR, pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD, Format: DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePMeshFromStream*(pStream: ptr IStream, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppPMesh: ptr LPD3DXPMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSkinInfo*(NumVertices: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, NumBones: DWORD, ppSkinInfo: ptr LPD3DXSKININFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSkinInfoFVF*(NumVertices: DWORD, FVF: DWORD, NumBones: DWORD, ppSkinInfo: ptr LPD3DXSKININFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshFromXof*(pxofMesh: LPD3DXFILEDATA, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: ptr DWORD, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSkinMeshFromXof*(pxofMesh: LPD3DXFILEDATA, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppAdjacency: ptr LPD3DXBUFFER, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pMatOut: ptr DWORD, ppSkinInfo: ptr LPD3DXSKININFO, ppMesh: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSkinInfoFromBlendedMesh*(pMesh: LPD3DXBASEMESH, NumBones: DWORD, pBoneCombinationTable: ptr D3DXBONECOMBINATION, ppSkinInfo: ptr LPD3DXSKININFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXTessellateNPatches*(pMeshIn: LPD3DXMESH, pAdjacencyIn: ptr DWORD, NumSegs: float32, QuadraticInterpNormals: BOOL, ppMeshOut: ptr LPD3DXMESH, ppAdjacencyOut: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGenerateOutputDecl*(pOutput: ptr D3DVERTEXELEMENT9, pInput: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadPatchMeshFromXof*(pXofObjMesh: LPD3DXFILEDATA, Options: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppMaterials: ptr LPD3DXBUFFER, ppEffectInstances: ptr LPD3DXBUFFER, pNumMaterials: PDWORD, ppMesh: ptr LPD3DXPATCHMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXRectPatchSize*(pfNumSegs: ptr float32, pdwTriangles: ptr DWORD, pdwVertices: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXTriPatchSize*(pfNumSegs: ptr float32, pdwTriangles: ptr DWORD, pdwVertices: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXTessellateRectPatch*(pVB: LPDIRECT3DVERTEXBUFFER9, pNumSegs: ptr float32, pdwInDecl: ptr D3DVERTEXELEMENT9, pRectPatchInfo: ptr D3DRECTPATCH_INFO, pMesh: LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXTessellateTriPatch*(pVB: LPDIRECT3DVERTEXBUFFER9, pNumSegs: ptr float32, pInDecl: ptr D3DVERTEXELEMENT9, pTriPatchInfo: ptr D3DTRIPATCH_INFO, pMesh: LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateNPatchMesh*(pMeshSysMem: LPD3DXMESH, pPatchMesh: ptr LPD3DXPATCHMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePatchMesh*(pInfo: ptr D3DXPATCHINFO, dwNumPatches: DWORD, dwNumVertices: DWORD, dwOptions: DWORD, pDecl: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, pPatchMesh: ptr LPD3DXPATCHMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXValidPatchMesh*(pMesh: LPD3DXPATCHMESH, dwcDegenerateVertices: ptr DWORD, dwcDegeneratePatches: ptr DWORD, ppErrorsAndWarnings: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetFVFVertexSize*(FVF: DWORD): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetDeclVertexSize*(pDecl: ptr D3DVERTEXELEMENT9, Stream: DWORD): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetDeclLength*(pDecl: ptr D3DVERTEXELEMENT9): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXDeclaratorFromFVF*(FVF: DWORD, pDeclarator: ptr D3DVERTEXELEMENT9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFVFFromDeclarator*(pDeclarator: ptr D3DVERTEXELEMENT9, pFVF: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXWeldVertices*(pMesh: LPD3DXMESH, Flags: DWORD, pEpsilons: ptr D3DXWELDEPSILONS, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXIntersect*(pMesh: LPD3DXBASEMESH, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3, pHit: ptr BOOL, pFaceIndex: ptr DWORD, pU: ptr float32, pV: ptr float32, pDist: ptr float32, ppAllHits: ptr LPD3DXBUFFER, pCountOfHits: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXIntersectSubset*(pMesh: LPD3DXBASEMESH, AttribId: DWORD, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3, pHit: ptr BOOL, pFaceIndex: ptr DWORD, pU: ptr float32, pV: ptr float32, pDist: ptr float32, ppAllHits: ptr LPD3DXBUFFER, pCountOfHits: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSplitMesh*(pMeshIn: LPD3DXMESH, pAdjacencyIn: ptr DWORD, MaxSize: DWORD, Options: DWORD, pMeshesOut: ptr DWORD, ppMeshArrayOut: ptr LPD3DXBUFFER, ppAdjacencyArrayOut: ptr LPD3DXBUFFER, ppFaceRemapArrayOut: ptr LPD3DXBUFFER, ppVertRemapArrayOut: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXIntersectTri*(p0: ptr D3DXVECTOR3, p1: ptr D3DXVECTOR3, p2: ptr D3DXVECTOR3, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3, pU: ptr float32, pV: ptr float32, pDist: ptr float32): BOOL {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSphereBoundProbe*(pCenter: ptr D3DXVECTOR3, Radius: float32, pRayPosition: ptr D3DXVECTOR3, pRayDirection: ptr D3DXVECTOR3): BOOL {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXBoxBoundProbe*(pMin: ptr D3DXVECTOR3, pMax: ptr D3DXVECTOR3, pRayPosition: ptr D3DXVECTOR3, pRayDirection: ptr D3DXVECTOR3): BOOL {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeTangentFrame*(pMesh: ptr ID3DXMesh, dwOptions: DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeTangentFrameEx*(pMesh: ptr ID3DXMesh, dwTextureInSemantic: DWORD, dwTextureInIndex: DWORD, dwUPartialOutSemantic: DWORD, dwUPartialOutIndex: DWORD, dwVPartialOutSemantic: DWORD, dwVPartialOutIndex: DWORD, dwNormalOutSemantic: DWORD, dwNormalOutIndex: DWORD, dwOptions: DWORD, pdwAdjacency: ptr DWORD, fPartialEdgeThreshold: float32, fSingularPointThreshold: float32, fNormalEdgeThreshold: float32, ppMeshOut: ptr ptr ID3DXMesh, ppVertexMapping: ptr ptr ID3DXBuffer): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeTangent*(Mesh: LPD3DXMESH, TexStage: DWORD, TangentIndex: DWORD, BinormIndex: DWORD, Wrap: DWORD, pAdjacency: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXUVAtlasCreate*(pMesh: LPD3DXMESH, uMaxChartNumber: UINT, fMaxStretch: float32, uWidth: UINT, uHeight: UINT, fGutter: float32, dwTextureIndex: DWORD, pdwAdjacency: ptr DWORD, pdwFalseEdgeAdjacency: ptr DWORD, pfIMTArray: ptr float32, pStatusCallback: LPD3DXUVATLASCB, fCallbackFrequency: float32, pUserContext: pointer, dwOptions: DWORD, ppMeshOut: ptr LPD3DXMESH, ppFacePartitioning: ptr LPD3DXBUFFER, ppVertexRemapArray: ptr LPD3DXBUFFER, pfMaxStretchOut: ptr float32, puNumChartsOut: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXUVAtlasPartition*(pMesh: LPD3DXMESH, uMaxChartNumber: UINT, fMaxStretch: float32, dwTextureIndex: DWORD, pdwAdjacency: ptr DWORD, pdwFalseEdgeAdjacency: ptr DWORD, pfIMTArray: ptr float32, pStatusCallback: LPD3DXUVATLASCB, fCallbackFrequency: float32, pUserContext: pointer, dwOptions: DWORD, ppMeshOut: ptr LPD3DXMESH, ppFacePartitioning: ptr LPD3DXBUFFER, ppVertexRemapArray: ptr LPD3DXBUFFER, ppPartitionResultAdjacency: ptr LPD3DXBUFFER, pfMaxStretchOut: ptr float32, puNumChartsOut: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXUVAtlasPack*(pMesh: ptr ID3DXMesh, uWidth: UINT, uHeight: UINT, fGutter: float32, dwTextureIndex: DWORD, pdwPartitionResultAdjacency: ptr DWORD, pStatusCallback: LPD3DXUVATLASCB, fCallbackFrequency: float32, pUserContext: pointer, dwOptions: DWORD, pFacePartitioning: LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeIMTFromPerVertexSignal*(pMesh: LPD3DXMESH, pfVertexSignal: ptr float32, uSignalDimension: UINT, uSignalStride: UINT, dwOptions: DWORD, pStatusCallback: LPD3DXUVATLASCB, pUserContext: pointer, ppIMTData: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeIMTFromSignal*(pMesh: LPD3DXMESH, dwTextureIndex: DWORD, uSignalDimension: UINT, fMaxUVDistance: float32, dwOptions: DWORD, pSignalCallback: LPD3DXIMTSIGNALCALLBACK, pUserData: pointer, pStatusCallback: LPD3DXUVATLASCB, pUserContext: pointer, ppIMTData: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeIMTFromTexture*(pMesh: LPD3DXMESH, pTexture: LPDIRECT3DTEXTURE9, dwTextureIndex: DWORD, dwOptions: DWORD, pStatusCallback: LPD3DXUVATLASCB, pUserContext: pointer, ppIMTData: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeIMTFromPerTexelSignal*(pMesh: LPD3DXMESH, dwTextureIndex: DWORD, pfTexelSignal: ptr float32, uWidth: UINT, uHeight: UINT, uSignalDimension: UINT, uComponents: UINT, dwOptions: DWORD, pStatusCallback: LPD3DXUVATLASCB, pUserContext: pointer, ppIMTData: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXConvertMeshSubsetToSingleStrip*(MeshIn: LPD3DXBASEMESH, AttribId: DWORD, IBOptions: DWORD, ppIndexBuffer: ptr LPDIRECT3DINDEXBUFFER9, pNumIndices: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXConvertMeshSubsetToStrips*(MeshIn: LPD3DXBASEMESH, AttribId: DWORD, IBOptions: DWORD, ppIndexBuffer: ptr LPDIRECT3DINDEXBUFFER9, pNumIndices: ptr DWORD, ppStripLengths: ptr LPD3DXBUFFER, pNumStrips: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXOptimizeFaces*(pbIndices: pointer, cFaces: UINT, cVertices: UINT, b32BitIndices: BOOL, pFaceRemap: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXOptimizeVertices*(pbIndices: pointer, cFaces: UINT, cVertices: UINT, b32BitIndices: BOOL, pVertexRemap: ptr DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePRTBuffer*(NumSamples: UINT, NumCoeffs: UINT, NumChannels: UINT, ppBuffer: ptr LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePRTBufferTex*(Width: UINT, Height: UINT, NumCoeffs: UINT, NumChannels: UINT, ppBuffer: ptr LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadPRTBufferFromFileA*(pFilename: cstring, ppBuffer: ptr LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadPRTBufferFromFileW*(pFilename: LPCWSTR, ppBuffer: ptr LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSavePRTBufferToFileA*(pFileName: cstring, pBuffer: LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSavePRTBufferToFileW*(pFileName: LPCWSTR, pBuffer: LPD3DXPRTBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadPRTCompBufferFromFileA*(pFilename: cstring, ppBuffer: ptr LPD3DXPRTCOMPBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadPRTCompBufferFromFileW*(pFilename: LPCWSTR, ppBuffer: ptr LPD3DXPRTCOMPBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSavePRTCompBufferToFileA*(pFileName: cstring, pBuffer: LPD3DXPRTCOMPBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSavePRTCompBufferToFileW*(pFileName: LPCWSTR, pBuffer: LPD3DXPRTCOMPBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePRTCompBuffer*(Quality: D3DXSHCOMPRESSQUALITYTYPE, NumClusters: UINT, NumPCA: UINT, pCB: LPD3DXSHPRTSIMCB, lpUserContext: pointer, pBufferIn: LPD3DXPRTBUFFER, ppBufferOut: ptr LPD3DXPRTCOMPBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureGutterHelper*(Width: UINT, Height: UINT, pMesh: LPD3DXMESH, GutterSize: float32, ppBuffer: ptr LPD3DXTEXTUREGUTTERHELPER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePRTEngine*(pMesh: LPD3DXMESH, pAdjacency: ptr DWORD, ExtractUVs: BOOL, pBlockerMesh: LPD3DXMESH, ppEngine: ptr LPD3DXPRTENGINE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXConcatenateMeshes*(ppMeshes: ptr LPD3DXMESH, NumMeshes: UINT, Options: DWORD, pGeomXForms: ptr D3DXMATRIX, pTextureXForms: ptr D3DXMATRIX, pDecl: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppMeshOut: ptr LPD3DXMESH): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHPRTCompSuperCluster*(pClusterIDs: ptr UINT, pScene: LPD3DXMESH, MaxNumClusters: UINT, NumClusters: UINT, pSuperClusterIDs: ptr UINT, pNumSuperClusters: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSHPRTCompSplitMeshSC*(pClusterIDs: ptr UINT, NumVertices: UINT, NumClusters: UINT, pSuperClusterIDs: ptr UINT, NumSuperClusters: UINT, pInputIB: pointer, InputIBIs32Bit: BOOL, NumFaces: UINT, ppIBData: ptr LPD3DXBUFFER, pIBDataLength: ptr UINT, OutputIBIs32Bit: BOOL, ppFaceRemap: ptr LPD3DXBUFFER, ppVertData: ptr LPD3DXBUFFER, pVertDataLength: ptr UINT, pSCClusterList: ptr UINT, pSCData: ptr D3DXSHPRTSPLITMESHCLUSTERDATA): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXAssembleShaderFromFileA*(pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXAssembleShaderFromFileW*(pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXAssembleShaderFromResourceA*(hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXAssembleShaderFromResourceW*(hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXAssembleShader*(pSrcData: cstring, SrcDataLen: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCompileShaderFromFileA*(pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pFunctionName: cstring, pProfile: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCompileShaderFromFileW*(pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pFunctionName: cstring, pProfile: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCompileShaderFromResourceA*(hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pFunctionName: cstring, pProfile: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCompileShaderFromResourceW*(hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pFunctionName: cstring, pProfile: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCompileShader*(pSrcData: cstring, SrcDataLen: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pFunctionName: cstring, pProfile: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXDisassembleShader*(pShader: ptr DWORD, EnableColorCode: BOOL, pComments: cstring, ppDisassembly: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetPixelShaderProfile*(pDevice: LPDIRECT3DDEVICE9): cstring {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetVertexShaderProfile*(pDevice: LPDIRECT3DDEVICE9): cstring {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFindShaderComment*(pFunction: ptr DWORD, FourCC: DWORD, ppData: ptr pointer, pSizeInBytes: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderSize*(pFunction: ptr DWORD): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderVersion*(pFunction: ptr DWORD): DWORD {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderInputSemantics*(pFunction: ptr DWORD, pSemantics: ptr D3DXSEMANTIC, pCount: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderOutputSemantics*(pFunction: ptr DWORD, pSemantics: ptr D3DXSEMANTIC, pCount: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderSamplers*(pFunction: ptr DWORD, pSamplers: ptr cstring, pCount: ptr UINT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderConstantTable*(pFunction: ptr DWORD, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetShaderConstantTableEx*(pFunction: ptr DWORD, Flags: DWORD, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureShader*(pFunction: ptr DWORD, ppTextureShader: ptr LPD3DXTEXTURESHADER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPreprocessShaderFromFileA*(pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, ppShaderText: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPreprocessShaderFromFileW*(pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, ppShaderText: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPreprocessShaderFromResourceA*(hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, ppShaderText: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPreprocessShaderFromResourceW*(hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, ppShaderText: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXPreprocessShader*(pSrcData: cstring, SrcDataSize: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, ppShaderText: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectPool*(ppPool: ptr LPD3DXEFFECTPOOL): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromFileA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromFileW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromResourceA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromResourceW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffect*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataLen: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromFileExA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pSkipConstants: cstring, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromFileExW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pSkipConstants: cstring, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromResourceExA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pSkipConstants: cstring, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectFromResourceExW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pSkipConstants: cstring, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectEx*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataLen: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, pSkipConstants: cstring, Flags: DWORD, pPool: LPD3DXEFFECTPOOL, ppEffect: ptr LPD3DXEFFECT, ppCompilationErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectCompilerFromFileA*(pSrcFile: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppCompiler: ptr LPD3DXEFFECTCOMPILER, ppParseErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectCompilerFromFileW*(pSrcFile: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppCompiler: ptr LPD3DXEFFECTCOMPILER, ppParseErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectCompilerFromResourceA*(hSrcModule: HMODULE, pSrcResource: cstring, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppCompiler: ptr LPD3DXEFFECTCOMPILER, ppParseErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectCompilerFromResourceW*(hSrcModule: HMODULE, pSrcResource: LPCWSTR, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppCompiler: ptr LPD3DXEFFECTCOMPILER, ppParseErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateEffectCompiler*(pSrcData: cstring, SrcDataLen: UINT, pDefines: ptr D3DXMACRO, pInclude: LPD3DXINCLUDE, Flags: DWORD, ppCompiler: ptr LPD3DXEFFECTCOMPILER, ppParseErrors: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXDisassembleEffect*(pEffect: LPD3DXEFFECT, EnableColorCode: BOOL, ppDisassembly: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetImageInfoFromFileA*(pSrcFile: cstring, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetImageInfoFromFileW*(pSrcFile: LPCWSTR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetImageInfoFromResourceA*(hSrcModule: HMODULE, pSrcResource: cstring, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetImageInfoFromResourceW*(hSrcModule: HMODULE, pSrcResource: LPCWSTR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXGetImageInfoFromFileInMemory*(pSrcData: pointer, SrcDataSize: UINT, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromFileA*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, pSrcFile: cstring, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromFileW*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, pSrcFile: LPCWSTR, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromResourceA*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, hSrcModule: HMODULE, pSrcResource: cstring, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromResourceW*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, hSrcModule: HMODULE, pSrcResource: LPCWSTR, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromFileInMemory*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, pSrcData: pointer, SrcDataSize: UINT, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromSurface*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, pSrcSurface: LPDIRECT3DSURFACE9, pSrcPalette: ptr PALETTEENTRY, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadSurfaceFromMemory*(pDestSurface: LPDIRECT3DSURFACE9, pDestPalette: ptr PALETTEENTRY, pDestRect: ptr RECT, pSrcMemory: pointer, SrcFormat: D3DFORMAT, SrcPitch: UINT, pSrcPalette: ptr PALETTEENTRY, pSrcRect: ptr RECT, Filter: DWORD, ColorKey: D3DCOLOR): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveSurfaceToFileA*(pDestFile: cstring, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcSurface: LPDIRECT3DSURFACE9, pSrcPalette: ptr PALETTEENTRY, pSrcRect: ptr RECT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveSurfaceToFileW*(pDestFile: LPCWSTR, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcSurface: LPDIRECT3DSURFACE9, pSrcPalette: ptr PALETTEENTRY, pSrcRect: ptr RECT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveSurfaceToFileInMemory*(ppDestBuf: ptr LPD3DXBUFFER, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcSurface: LPDIRECT3DSURFACE9, pSrcPalette: ptr PALETTEENTRY, pSrcRect: ptr RECT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromFileA*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, pSrcFile: cstring, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromFileW*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, pSrcFile: LPCWSTR, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromResourceA*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, hSrcModule: HMODULE, pSrcResource: cstring, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromResourceW*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, hSrcModule: HMODULE, pSrcResource: LPCWSTR, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromFileInMemory*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, pSrcData: pointer, SrcDataSize: UINT, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromVolume*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, pSrcVolume: LPDIRECT3DVOLUME9, pSrcPalette: ptr PALETTEENTRY, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadVolumeFromMemory*(pDestVolume: LPDIRECT3DVOLUME9, pDestPalette: ptr PALETTEENTRY, pDestBox: ptr D3DBOX, pSrcMemory: pointer, SrcFormat: D3DFORMAT, SrcRowPitch: UINT, SrcSlicePitch: UINT, pSrcPalette: ptr PALETTEENTRY, pSrcBox: ptr D3DBOX, Filter: DWORD, ColorKey: D3DCOLOR): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveVolumeToFileA*(pDestFile: cstring, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcVolume: LPDIRECT3DVOLUME9, pSrcPalette: ptr PALETTEENTRY, pSrcBox: ptr D3DBOX): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveVolumeToFileW*(pDestFile: LPCWSTR, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcVolume: LPDIRECT3DVOLUME9, pSrcPalette: ptr PALETTEENTRY, pSrcBox: ptr D3DBOX): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveVolumeToFileInMemory*(ppDestBuf: ptr LPD3DXBUFFER, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcVolume: LPDIRECT3DVOLUME9, pSrcPalette: ptr PALETTEENTRY, pSrcBox: ptr D3DBOX): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCheckTextureRequirements*(pDevice: LPDIRECT3DDEVICE9, pWidth: ptr UINT, pHeight: ptr UINT, pNumMipLevels: ptr UINT, Usage: DWORD, pFormat: ptr D3DFORMAT, Pool: D3DPOOL): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCheckCubeTextureRequirements*(pDevice: LPDIRECT3DDEVICE9, pSize: ptr UINT, pNumMipLevels: ptr UINT, Usage: DWORD, pFormat: ptr D3DFORMAT, Pool: D3DPOOL): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCheckVolumeTextureRequirements*(pDevice: LPDIRECT3DDEVICE9, pWidth: ptr UINT, pHeight: ptr UINT, pDepth: ptr UINT, pNumMipLevels: ptr UINT, Usage: DWORD, pFormat: ptr D3DFORMAT, Pool: D3DPOOL): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTexture*(pDevice: LPDIRECT3DDEVICE9, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTexture*(pDevice: LPDIRECT3DDEVICE9, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTexture*(pDevice: LPDIRECT3DDEVICE9, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromResourceA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromResourceW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromResourceA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromResourceW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromResourceA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromResourceW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileExA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileExW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileExA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileExW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileExA*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: cstring, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileExW*(pDevice: LPDIRECT3DDEVICE9, pSrcFile: LPCWSTR, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromResourceExA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromResourceExW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromResourceExA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromResourceExW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromResourceExA*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: cstring, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromResourceExW*(pDevice: LPDIRECT3DDEVICE9, hSrcModule: HMODULE, pSrcResource: LPCWSTR, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileInMemory*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileInMemory*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileInMemory*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextureFromFileInMemoryEx*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, Width: UINT, Height: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppTexture: ptr LPDIRECT3DTEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCubeTextureFromFileInMemoryEx*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, Size: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppCubeTexture: ptr LPDIRECT3DCUBETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateVolumeTextureFromFileInMemoryEx*(pDevice: LPDIRECT3DDEVICE9, pSrcData: pointer, SrcDataSize: UINT, Width: UINT, Height: UINT, Depth: UINT, MipLevels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, Filter: DWORD, MipFilter: DWORD, ColorKey: D3DCOLOR, pSrcInfo: ptr D3DXIMAGE_INFO, pPalette: ptr PALETTEENTRY, ppVolumeTexture: ptr LPDIRECT3DVOLUMETEXTURE9): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveTextureToFileA*(pDestFile: cstring, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcTexture: LPDIRECT3DBASETEXTURE9, pSrcPalette: ptr PALETTEENTRY): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveTextureToFileW*(pDestFile: LPCWSTR, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcTexture: LPDIRECT3DBASETEXTURE9, pSrcPalette: ptr PALETTEENTRY): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveTextureToFileInMemory*(ppDestBuf: ptr LPD3DXBUFFER, DestFormat: D3DXIMAGE_FILEFORMAT, pSrcTexture: LPDIRECT3DBASETEXTURE9, pSrcPalette: ptr PALETTEENTRY): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFilterTexture*(pBaseTexture: LPDIRECT3DBASETEXTURE9, pPalette: ptr PALETTEENTRY, SrcLevel: UINT, Filter: DWORD): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillTexture*(pTexture: LPDIRECT3DTEXTURE9, pFunction: LPD3DXFILL2D, pData: pointer): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillCubeTexture*(pCubeTexture: LPDIRECT3DCUBETEXTURE9, pFunction: LPD3DXFILL3D, pData: pointer): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillVolumeTexture*(pVolumeTexture: LPDIRECT3DVOLUMETEXTURE9, pFunction: LPD3DXFILL3D, pData: pointer): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillTextureTX*(pTexture: LPDIRECT3DTEXTURE9, pTextureShader: LPD3DXTEXTURESHADER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillCubeTextureTX*(pCubeTexture: LPDIRECT3DCUBETEXTURE9, pTextureShader: LPD3DXTEXTURESHADER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFillVolumeTextureTX*(pVolumeTexture: LPDIRECT3DVOLUMETEXTURE9, pTextureShader: LPD3DXTEXTURESHADER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXComputeNormalMap*(pTexture: LPDIRECT3DTEXTURE9, pSrcTexture: LPDIRECT3DTEXTURE9, pSrcPalette: ptr PALETTEENTRY, Flags: DWORD, Channel: DWORD, Amplitude: float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreatePolygon*(pDevice: LPDIRECT3DDEVICE9, Length: float32, Sides: UINT, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateBox*(pDevice: LPDIRECT3DDEVICE9, Width: float32, Height: float32, Depth: float32, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCylinder*(pDevice: LPDIRECT3DDEVICE9, Radius1: float32, Radius2: float32, Length: float32, Slices: UINT, Stacks: UINT, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateSphere*(pDevice: LPDIRECT3DDEVICE9, Radius: float32, Slices: UINT, Stacks: UINT, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTorus*(pDevice: LPDIRECT3DDEVICE9, InnerRadius: float32, OuterRadius: float32, Sides: UINT, Rings: UINT, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTeapot*(pDevice: LPDIRECT3DDEVICE9, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextA*(pDevice: LPDIRECT3DDEVICE9, hDC: HDC, pText: cstring, Deviation: float32, Extrusion: float32, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER, pGlyphMetrics: LPGLYPHMETRICSFLOAT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateTextW*(pDevice: LPDIRECT3DDEVICE9, hDC: HDC, pText: LPCWSTR, Deviation: float32, Extrusion: float32, ppMesh: ptr LPD3DXMESH, ppAdjacency: ptr LPD3DXBUFFER, pGlyphMetrics: LPGLYPHMETRICSFLOAT): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshHierarchyFromXA*(Filename: cstring, MeshOptions: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pAlloc: LPD3DXALLOCATEHIERARCHY, pUserDataLoader: LPD3DXLOADUSERDATA, ppFrameHierarchy: ptr LPD3DXFRAME, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshHierarchyFromXW*(Filename: LPCWSTR, MeshOptions: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pAlloc: LPD3DXALLOCATEHIERARCHY, pUserDataLoader: LPD3DXLOADUSERDATA, ppFrameHierarchy: ptr LPD3DXFRAME, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXLoadMeshHierarchyFromXInMemory*(Memory: pointer, SizeOfMemory: DWORD, MeshOptions: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pAlloc: LPD3DXALLOCATEHIERARCHY, pUserDataLoader: LPD3DXLOADUSERDATA, ppFrameHierarchy: ptr LPD3DXFRAME, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveMeshHierarchyToFileA*(Filename: cstring, XFormat: DWORD, pFrameRoot: ptr D3DXFRAME, pAnimcontroller: LPD3DXANIMATIONCONTROLLER, pUserDataSaver: LPD3DXSAVEUSERDATA): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXSaveMeshHierarchyToFileW*(Filename: LPCWSTR, XFormat: DWORD, pFrameRoot: ptr D3DXFRAME, pAnimController: LPD3DXANIMATIONCONTROLLER, pUserDataSaver: LPD3DXSAVEUSERDATA): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameDestroy*(pFrameRoot: LPD3DXFRAME, pAlloc: LPD3DXALLOCATEHIERARCHY): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameAppendChild*(pFrameParent: LPD3DXFRAME, pFrameChild: ptr D3DXFRAME): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameFind*(pFrameRoot: ptr D3DXFRAME, Name: cstring): LPD3DXFRAME {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameRegisterNamedMatrices*(pFrameRoot: LPD3DXFRAME, pAnimController: LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameNumNamedMatrices*(pFrameRoot: ptr D3DXFRAME): UINT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXFrameCalculateBoundingSphere*(pFrameRoot: ptr D3DXFRAME, pObjectCenter: LPD3DXVECTOR3, pObjectRadius: ptr float32): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateKeyframedAnimationSet*(pName: cstring, TicksPerSecond: DOUBLE, Playback: D3DXPLAYBACK_TYPE, NumAnimations: UINT, NumCallbackKeys: UINT, pCallbackKeys: ptr D3DXKEY_CALLBACK, ppAnimationSet: ptr LPD3DXKEYFRAMEDANIMATIONSET): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateCompressedAnimationSet*(pName: cstring, TicksPerSecond: DOUBLE, Playback: D3DXPLAYBACK_TYPE, pCompressedData: LPD3DXBUFFER, NumCallbackKeys: UINT, pCallbackKeys: ptr D3DXKEY_CALLBACK, ppAnimationSet: ptr LPD3DXCOMPRESSEDANIMATIONSET): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
proc D3DXCreateAnimationController*(MaxNumMatrices: UINT, MaxNumAnimationSets: UINT, MaxNumTracks: UINT, MaxNumEvents: UINT, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.stdcall, dynlib: "d3dx9_43.dll", importc, discardable.}
template D3DXCreateFont*(args: varargs[untyped]): untyped = D3DXCreateFontW(args)
template D3DXCreateFontIndirect*(args: varargs[untyped]): untyped = D3DXCreateFontIndirectW(args)
template D3DXLoadMeshFromX*(args: varargs[untyped]): untyped = D3DXLoadMeshFromXW(args)
template D3DXSaveMeshToX*(args: varargs[untyped]): untyped = D3DXSaveMeshToXW(args)
template D3DXLoadPRTBufferFromFile*(args: varargs[untyped]): untyped = D3DXLoadPRTBufferFromFileW(args)
template D3DXSavePRTBufferToFile*(args: varargs[untyped]): untyped = D3DXSavePRTBufferToFileW(args)
template D3DXLoadPRTCompBufferFromFile*(args: varargs[untyped]): untyped = D3DXLoadPRTCompBufferFromFileW(args)
template D3DXSavePRTCompBufferToFile*(args: varargs[untyped]): untyped = D3DXSavePRTCompBufferToFileW(args)
template D3DXAssembleShaderFromFile*(args: varargs[untyped]): untyped = D3DXAssembleShaderFromFileW(args)
template D3DXAssembleShaderFromResource*(args: varargs[untyped]): untyped = D3DXAssembleShaderFromResourceW(args)
template D3DXCompileShaderFromFile*(args: varargs[untyped]): untyped = D3DXCompileShaderFromFileW(args)
template D3DXCompileShaderFromResource*(args: varargs[untyped]): untyped = D3DXCompileShaderFromResourceW(args)
template D3DXPreprocessShaderFromFile*(args: varargs[untyped]): untyped = D3DXPreprocessShaderFromFileW(args)
template D3DXPreprocessShaderFromResource*(args: varargs[untyped]): untyped = D3DXPreprocessShaderFromResourceW(args)
template D3DXCreateEffectFromFile*(args: varargs[untyped]): untyped = D3DXCreateEffectFromFileW(args)
template D3DXCreateEffectFromResource*(args: varargs[untyped]): untyped = D3DXCreateEffectFromResourceW(args)
template D3DXCreateEffectFromFileEx*(args: varargs[untyped]): untyped = D3DXCreateEffectFromFileExW(args)
template D3DXCreateEffectFromResourceEx*(args: varargs[untyped]): untyped = D3DXCreateEffectFromResourceExW(args)
template D3DXCreateEffectCompilerFromFile*(args: varargs[untyped]): untyped = D3DXCreateEffectCompilerFromFileW(args)
template D3DXCreateEffectCompilerFromResource*(args: varargs[untyped]): untyped = D3DXCreateEffectCompilerFromResourceW(args)
template D3DXGetImageInfoFromFile*(args: varargs[untyped]): untyped = D3DXGetImageInfoFromFileW(args)
template D3DXGetImageInfoFromResource*(args: varargs[untyped]): untyped = D3DXGetImageInfoFromResourceW(args)
template D3DXLoadSurfaceFromFile*(args: varargs[untyped]): untyped = D3DXLoadSurfaceFromFileW(args)
template D3DXLoadSurfaceFromResource*(args: varargs[untyped]): untyped = D3DXLoadSurfaceFromResourceW(args)
template D3DXSaveSurfaceToFile*(args: varargs[untyped]): untyped = D3DXSaveSurfaceToFileW(args)
template D3DXLoadVolumeFromFile*(args: varargs[untyped]): untyped = D3DXLoadVolumeFromFileW(args)
template D3DXLoadVolumeFromResource*(args: varargs[untyped]): untyped = D3DXLoadVolumeFromResourceW(args)
template D3DXSaveVolumeToFile*(args: varargs[untyped]): untyped = D3DXSaveVolumeToFileW(args)
template D3DXCreateTextureFromFile*(args: varargs[untyped]): untyped = D3DXCreateTextureFromFileW(args)
template D3DXCreateCubeTextureFromFile*(args: varargs[untyped]): untyped = D3DXCreateCubeTextureFromFileW(args)
template D3DXCreateVolumeTextureFromFile*(args: varargs[untyped]): untyped = D3DXCreateVolumeTextureFromFileW(args)
template D3DXCreateTextureFromResource*(args: varargs[untyped]): untyped = D3DXCreateTextureFromResourceW(args)
template D3DXCreateCubeTextureFromResource*(args: varargs[untyped]): untyped = D3DXCreateCubeTextureFromResourceW(args)
template D3DXCreateVolumeTextureFromResource*(args: varargs[untyped]): untyped = D3DXCreateVolumeTextureFromResourceW(args)
template D3DXCreateTextureFromFileEx*(args: varargs[untyped]): untyped = D3DXCreateTextureFromFileExW(args)
template D3DXCreateCubeTextureFromFileEx*(args: varargs[untyped]): untyped = D3DXCreateCubeTextureFromFileExW(args)
template D3DXCreateVolumeTextureFromFileEx*(args: varargs[untyped]): untyped = D3DXCreateVolumeTextureFromFileExW(args)
template D3DXCreateTextureFromResourceEx*(args: varargs[untyped]): untyped = D3DXCreateTextureFromResourceExW(args)
template D3DXCreateCubeTextureFromResourceEx*(args: varargs[untyped]): untyped = D3DXCreateCubeTextureFromResourceExW(args)
template D3DXCreateVolumeTextureFromResourceEx*(args: varargs[untyped]): untyped = D3DXCreateVolumeTextureFromResourceExW(args)
template D3DXSaveTextureToFile*(args: varargs[untyped]): untyped = D3DXSaveTextureToFileW(args)
template D3DXFilterCubeTexture*(args: varargs[untyped]): untyped = D3DXFilterTexture(args)
template D3DXFilterVolumeTexture*(args: varargs[untyped]): untyped = D3DXFilterTexture(args)
template D3DXCreateText*(args: varargs[untyped]): untyped = D3DXCreateTextW(args)
template D3DXLoadMeshHierarchyFromX*(args: varargs[untyped]): untyped = D3DXLoadMeshHierarchyFromXW(args)
template D3DXSaveMeshHierarchyToFile*(args: varargs[untyped]): untyped = D3DXSaveMeshHierarchyToFileW(args)

when defined(nimHasQuirky):
  {.push quirky: on.}


# ID3DXMatrixStack
proc Pop*(self: ptr ID3DXMatrixStack): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).Pop(self)
proc Push*(self: ptr ID3DXMatrixStack): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).Push(self)
proc LoadIdentity*(self: ptr ID3DXMatrixStack): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).LoadIdentity(self)
proc LoadMatrix*(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).LoadMatrix(self, pM)
proc MultMatrix*(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).MultMatrix(self, pM)
proc MultMatrixLocal*(self: ptr ID3DXMatrixStack, pM: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).MultMatrixLocal(self, pM)
proc RotateAxis*(self: ptr ID3DXMatrixStack, pV: ptr D3DXVECTOR3, Angle: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).RotateAxis(self, pV, Angle)
proc RotateAxisLocal*(self: ptr ID3DXMatrixStack, pV: ptr D3DXVECTOR3, Angle: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).RotateAxisLocal(self, pV, Angle)
proc RotateYawPitchRoll*(self: ptr ID3DXMatrixStack, Yaw: float32, Pitch: float32, Roll: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).RotateYawPitchRoll(self, Yaw, Pitch, Roll)
proc RotateYawPitchRollLocal*(self: ptr ID3DXMatrixStack, Yaw: float32, Pitch: float32, Roll: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).RotateYawPitchRollLocal(self, Yaw, Pitch, Roll)
proc Scale*(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).Scale(self, x, y, z)
proc ScaleLocal*(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).ScaleLocal(self, x, y, z)
proc Translate*(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).Translate(self, x, y, z)
proc TranslateLocal*(self: ptr ID3DXMatrixStack, x: float32, y: float32, z: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).TranslateLocal(self, x, y, z)
proc GetTop*(self: ptr ID3DXMatrixStack): ptr D3DXMATRIX {.d9md.} =
  cast[ptr ID3DXMatrixStackVtbl](self.lpVtbl).GetTop(self)

# ID3DXBuffer
proc GetBufferPointer*(self: ptr ID3DXBuffer): pointer {.d9md.} =
  cast[ptr ID3DXBufferVtbl](self.lpVtbl).GetBufferPointer(self)
proc GetBufferSize*(self: ptr ID3DXBuffer): DWORD {.d9md.} =
  cast[ptr ID3DXBufferVtbl](self.lpVtbl).GetBufferSize(self)

# ID3DXSprite
proc GetDevice*(self: ptr ID3DXSprite, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetTransform*(self: ptr ID3DXSprite, pTransform: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).GetTransform(self, pTransform)
proc SetTransform*(self: ptr ID3DXSprite, pTransform: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).SetTransform(self, pTransform)
proc SetWorldViewRH*(self: ptr ID3DXSprite, pWorld: ptr D3DXMATRIX, pView: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).SetWorldViewRH(self, pWorld, pView)
proc SetWorldViewLH*(self: ptr ID3DXSprite, pWorld: ptr D3DXMATRIX, pView: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).SetWorldViewLH(self, pWorld, pView)
proc Begin*(self: ptr ID3DXSprite, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).Begin(self, Flags)
proc Draw*(self: ptr ID3DXSprite, pTexture: LPDIRECT3DTEXTURE9, pSrcRect: ptr RECT, pCenter: ptr D3DXVECTOR3, pPosition: ptr D3DXVECTOR3, Color: D3DCOLOR): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).Draw(self, pTexture, pSrcRect, pCenter, pPosition, Color)
proc Flush*(self: ptr ID3DXSprite): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).Flush(self)
proc End*(self: ptr ID3DXSprite): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).End(self)
proc OnLostDevice*(self: ptr ID3DXSprite): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXSprite): HRESULT {.d9md.} =
  cast[ptr ID3DXSpriteVtbl](self.lpVtbl).OnResetDevice(self)

# ID3DXFont
proc GetDevice*(self: ptr ID3DXFont, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetDescA*(self: ptr ID3DXFont, pDesc: ptr D3DXFONT_DESCA): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetDescA(self, pDesc)
proc GetDescW*(self: ptr ID3DXFont, pDesc: ptr D3DXFONT_DESCW): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetDescW(self, pDesc)
proc GetTextMetricsA*(self: ptr ID3DXFont, pTextMetrics: ptr TEXTMETRICA): BOOL {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetTextMetricsA(self, pTextMetrics)
proc GetTextMetricsW*(self: ptr ID3DXFont, pTextMetrics: ptr TEXTMETRICW): BOOL {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetTextMetricsW(self, pTextMetrics)
proc GetDC*(self: ptr ID3DXFont): HDC {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetDC(self)
proc GetGlyphData*(self: ptr ID3DXFont, Glyph: UINT, ppTexture: ptr LPDIRECT3DTEXTURE9, pBlackBox: ptr RECT, pCellInc: ptr POINT): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).GetGlyphData(self, Glyph, ppTexture, pBlackBox, pCellInc)
proc PreloadCharacters*(self: ptr ID3DXFont, First: UINT, Last: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).PreloadCharacters(self, First, Last)
proc PreloadGlyphs*(self: ptr ID3DXFont, First: UINT, Last: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).PreloadGlyphs(self, First, Last)
proc PreloadTextA*(self: ptr ID3DXFont, pString: cstring, Count: INT): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).PreloadTextA(self, pString, Count)
proc PreloadTextW*(self: ptr ID3DXFont, pString: LPCWSTR, Count: INT): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).PreloadTextW(self, pString, Count)
proc DrawTextA*(self: ptr ID3DXFont, pSprite: LPD3DXSPRITE, pString: cstring, Count: INT, pRect: LPRECT, Format: DWORD, Color: D3DCOLOR): INT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).DrawTextA(self, pSprite, pString, Count, pRect, Format, Color)
proc DrawTextW*(self: ptr ID3DXFont, pSprite: LPD3DXSPRITE, pString: LPCWSTR, Count: INT, pRect: LPRECT, Format: DWORD, Color: D3DCOLOR): INT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).DrawTextW(self, pSprite, pString, Count, pRect, Format, Color)
proc OnLostDevice*(self: ptr ID3DXFont): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXFont): HRESULT {.d9md.} =
  cast[ptr ID3DXFontVtbl](self.lpVtbl).OnResetDevice(self)

# ID3DXRenderToSurface
proc GetDevice*(self: ptr ID3DXRenderToSurface, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetDesc*(self: ptr ID3DXRenderToSurface, pDesc: ptr D3DXRTS_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).GetDesc(self, pDesc)
proc BeginScene*(self: ptr ID3DXRenderToSurface, pSurface: LPDIRECT3DSURFACE9, pViewport: ptr D3DVIEWPORT9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).BeginScene(self, pSurface, pViewport)
proc EndScene*(self: ptr ID3DXRenderToSurface, MipFilter: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).EndScene(self, MipFilter)
proc OnLostDevice*(self: ptr ID3DXRenderToSurface): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXRenderToSurface): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToSurfaceVtbl](self.lpVtbl).OnResetDevice(self)

# ID3DXRenderToEnvMap
proc GetDevice*(self: ptr ID3DXRenderToEnvMap, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetDesc*(self: ptr ID3DXRenderToEnvMap, pDesc: ptr D3DXRTE_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).GetDesc(self, pDesc)
proc BeginCube*(self: ptr ID3DXRenderToEnvMap, pCubeTex: LPDIRECT3DCUBETEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).BeginCube(self, pCubeTex)
proc BeginSphere*(self: ptr ID3DXRenderToEnvMap, pTex: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).BeginSphere(self, pTex)
proc BeginHemisphere*(self: ptr ID3DXRenderToEnvMap, pTexZPos: LPDIRECT3DTEXTURE9, pTexZNeg: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).BeginHemisphere(self, pTexZPos, pTexZNeg)
proc BeginParabolic*(self: ptr ID3DXRenderToEnvMap, pTexZPos: LPDIRECT3DTEXTURE9, pTexZNeg: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).BeginParabolic(self, pTexZPos, pTexZNeg)
proc Face*(self: ptr ID3DXRenderToEnvMap, Face: D3DCUBEMAP_FACES, MipFilter: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).Face(self, Face, MipFilter)
proc End*(self: ptr ID3DXRenderToEnvMap, MipFilter: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).End(self, MipFilter)
proc OnLostDevice*(self: ptr ID3DXRenderToEnvMap): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXRenderToEnvMap): HRESULT {.d9md.} =
  cast[ptr ID3DXRenderToEnvMapVtbl](self.lpVtbl).OnResetDevice(self)

# ID3DXLine
proc GetDevice*(self: ptr ID3DXLine, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc Begin*(self: ptr ID3DXLine): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).Begin(self)
proc Draw*(self: ptr ID3DXLine, pVertexList: ptr D3DXVECTOR2, dwVertexListCount: DWORD, Color: D3DCOLOR): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).Draw(self, pVertexList, dwVertexListCount, Color)
proc DrawTransform*(self: ptr ID3DXLine, pVertexList: ptr D3DXVECTOR3, dwVertexListCount: DWORD, pTransform: ptr D3DXMATRIX, Color: D3DCOLOR): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).DrawTransform(self, pVertexList, dwVertexListCount, pTransform, Color)
proc SetPattern*(self: ptr ID3DXLine, dwPattern: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).SetPattern(self, dwPattern)
proc GetPattern*(self: ptr ID3DXLine): DWORD {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetPattern(self)
proc SetPatternScale*(self: ptr ID3DXLine, fPatternScale: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).SetPatternScale(self, fPatternScale)
proc GetPatternScale*(self: ptr ID3DXLine): float32 {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetPatternScale(self)
proc SetWidth*(self: ptr ID3DXLine, fWidth: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).SetWidth(self, fWidth)
proc GetWidth*(self: ptr ID3DXLine): float32 {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetWidth(self)
proc SetAntialias*(self: ptr ID3DXLine, bAntialias: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).SetAntialias(self, bAntialias)
proc GetAntialias*(self: ptr ID3DXLine): BOOL {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetAntialias(self)
proc SetGLLines*(self: ptr ID3DXLine, bGLLines: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).SetGLLines(self, bGLLines)
proc GetGLLines*(self: ptr ID3DXLine): BOOL {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).GetGLLines(self)
proc End*(self: ptr ID3DXLine): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).End(self)
proc OnLostDevice*(self: ptr ID3DXLine): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXLine): HRESULT {.d9md.} =
  cast[ptr ID3DXLineVtbl](self.lpVtbl).OnResetDevice(self)

# ID3DXFile
proc CreateEnumObject*(self: ptr ID3DXFile, arg0: pointer, arg1: D3DXF_FILELOADOPTIONS, arg2: ptr ptr ID3DXFileEnumObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileVtbl](self.lpVtbl).CreateEnumObject(self, arg0, arg1, arg2)
proc CreateSaveObject*(self: ptr ID3DXFile, arg0: pointer, arg1: D3DXF_FILESAVEOPTIONS, arg2: D3DXF_FILEFORMAT, arg3: ptr ptr ID3DXFileSaveObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileVtbl](self.lpVtbl).CreateSaveObject(self, arg0, arg1, arg2, arg3)
proc RegisterTemplates*(self: ptr ID3DXFile, arg0: pointer, arg1: uint): HRESULT {.d9md.} =
  cast[ptr ID3DXFileVtbl](self.lpVtbl).RegisterTemplates(self, arg0, arg1)
proc RegisterEnumTemplates*(self: ptr ID3DXFile, arg0: ptr ID3DXFileEnumObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileVtbl](self.lpVtbl).RegisterEnumTemplates(self, arg0)

# ID3DXFileSaveObject
proc GetFile*(self: ptr ID3DXFileSaveObject, arg0: ptr ptr ID3DXFile): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveObjectVtbl](self.lpVtbl).GetFile(self, arg0)
proc AddDataObject*(self: ptr ID3DXFileSaveObject, arg0: REFGUID, arg1: cstring, arg2: ptr GUID, arg3: uint, arg4: pointer, arg5: ptr ptr ID3DXFileSaveData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveObjectVtbl](self.lpVtbl).AddDataObject(self, arg0, arg1, arg2, arg3, arg4, arg5)
proc Save*(self: ptr ID3DXFileSaveObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveObjectVtbl](self.lpVtbl).Save(self)

# ID3DXFileSaveData
proc GetSave*(self: ptr ID3DXFileSaveData, arg0: ptr ptr ID3DXFileSaveObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).GetSave(self, arg0)
proc GetName*(self: ptr ID3DXFileSaveData, arg0: cstring, arg1: ptr uint): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).GetName(self, arg0, arg1)
proc GetId*(self: ptr ID3DXFileSaveData, arg0: LPGUID): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).GetId(self, arg0)
proc GetType*(self: ptr ID3DXFileSaveData, arg0: ptr GUID): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).GetType(self, arg0)
proc AddDataObject*(self: ptr ID3DXFileSaveData, arg0: REFGUID, arg1: cstring, arg2: ptr GUID, arg3: uint, arg4: pointer, arg5: ptr ptr ID3DXFileSaveData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).AddDataObject(self, arg0, arg1, arg2, arg3, arg4, arg5)
proc AddDataReference*(self: ptr ID3DXFileSaveData, arg0: cstring, arg1: ptr GUID): HRESULT {.d9md.} =
  cast[ptr ID3DXFileSaveDataVtbl](self.lpVtbl).AddDataReference(self, arg0, arg1)

# ID3DXFileEnumObject
proc GetFile*(self: ptr ID3DXFileEnumObject, arg0: ptr ptr ID3DXFile): HRESULT {.d9md.} =
  cast[ptr ID3DXFileEnumObjectVtbl](self.lpVtbl).GetFile(self, arg0)
proc GetChildren*(self: ptr ID3DXFileEnumObject, arg0: ptr uint): HRESULT {.d9md.} =
  cast[ptr ID3DXFileEnumObjectVtbl](self.lpVtbl).GetChildren(self, arg0)
proc GetChild*(self: ptr ID3DXFileEnumObject, arg0: uint, arg1: ptr ptr ID3DXFileData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileEnumObjectVtbl](self.lpVtbl).GetChild(self, arg0, arg1)
proc GetDataObjectById*(self: ptr ID3DXFileEnumObject, arg0: REFGUID, arg1: ptr ptr ID3DXFileData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileEnumObjectVtbl](self.lpVtbl).GetDataObjectById(self, arg0, arg1)
proc GetDataObjectByName*(self: ptr ID3DXFileEnumObject, arg0: cstring, arg1: ptr ptr ID3DXFileData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileEnumObjectVtbl](self.lpVtbl).GetDataObjectByName(self, arg0, arg1)

# ID3DXFileData
proc GetEnum*(self: ptr ID3DXFileData, arg0: ptr ptr ID3DXFileEnumObject): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetEnum(self, arg0)
proc GetName*(self: ptr ID3DXFileData, arg0: cstring, arg1: ptr uint): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetName(self, arg0, arg1)
proc GetId*(self: ptr ID3DXFileData, arg0: LPGUID): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetId(self, arg0)
proc Lock*(self: ptr ID3DXFileData, arg0: ptr uint, arg1: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).Lock(self, arg0, arg1)
proc Unlock*(self: ptr ID3DXFileData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).Unlock(self)
proc GetType*(self: ptr ID3DXFileData, arg0: ptr GUID): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetType(self, arg0)
proc IsReference*(self: ptr ID3DXFileData): BOOL {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).IsReference(self)
proc GetChildren*(self: ptr ID3DXFileData, arg0: ptr uint): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetChildren(self, arg0)
proc GetChild*(self: ptr ID3DXFileData, arg0: uint, arg1: ptr ptr ID3DXFileData): HRESULT {.d9md.} =
  cast[ptr ID3DXFileDataVtbl](self.lpVtbl).GetChild(self, arg0, arg1)

# ID3DXBaseMesh
proc DrawSubset*(self: ptr ID3DXBaseMesh, AttribId: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).DrawSubset(self, AttribId)
proc GetNumFaces*(self: ptr ID3DXBaseMesh): DWORD {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetNumFaces(self)
proc GetNumVertices*(self: ptr ID3DXBaseMesh): DWORD {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetNumVertices(self)
proc GetFVF*(self: ptr ID3DXBaseMesh): DWORD {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetFVF(self)
proc GetDeclaration*(self: ptr ID3DXBaseMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetDeclaration(self, Declaration)
proc GetNumBytesPerVertex*(self: ptr ID3DXBaseMesh): DWORD {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetNumBytesPerVertex(self)
proc GetOptions*(self: ptr ID3DXBaseMesh): DWORD {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetOptions(self)
proc GetDevice*(self: ptr ID3DXBaseMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc CloneMeshFVF*(self: ptr ID3DXBaseMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).CloneMeshFVF(self, Options, FVF, pD3DDevice, ppCloneMesh)
proc CloneMesh*(self: ptr ID3DXBaseMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).CloneMesh(self, Options, pDeclaration, pD3DDevice, ppCloneMesh)
proc GetVertexBuffer*(self: ptr ID3DXBaseMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetVertexBuffer(self, ppVB)
proc GetIndexBuffer*(self: ptr ID3DXBaseMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetIndexBuffer(self, ppIB)
proc LockVertexBuffer*(self: ptr ID3DXBaseMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).LockVertexBuffer(self, Flags, ppData)
proc UnlockVertexBuffer*(self: ptr ID3DXBaseMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).UnlockVertexBuffer(self)
proc LockIndexBuffer*(self: ptr ID3DXBaseMesh, Flags: DWORD, ppData: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).LockIndexBuffer(self, Flags, ppData)
proc UnlockIndexBuffer*(self: ptr ID3DXBaseMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).UnlockIndexBuffer(self)
proc GetAttributeTable*(self: ptr ID3DXBaseMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, pAttribTableSize: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GetAttributeTable(self, pAttribTable, pAttribTableSize)
proc ConvertPointRepsToAdjacency*(self: ptr ID3DXBaseMesh, pPRep: ptr DWORD, pAdjacency: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).ConvertPointRepsToAdjacency(self, pPRep, pAdjacency)
proc ConvertAdjacencyToPointReps*(self: ptr ID3DXBaseMesh, pAdjacency: ptr DWORD, pPRep: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).ConvertAdjacencyToPointReps(self, pAdjacency, pPRep)
proc GenerateAdjacency*(self: ptr ID3DXBaseMesh, Epsilon: float32, pAdjacency: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).GenerateAdjacency(self, Epsilon, pAdjacency)
proc UpdateSemantics*(self: ptr ID3DXBaseMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseMeshVtbl](self.lpVtbl).UpdateSemantics(self, Declaration)

# ID3DXMesh
proc LockAttributeBuffer*(self: ptr ID3DXMesh, Flags: DWORD, ppData: ptr ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXMeshVtbl](self.lpVtbl).LockAttributeBuffer(self, Flags, ppData)
proc UnlockAttributeBuffer*(self: ptr ID3DXMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXMeshVtbl](self.lpVtbl).UnlockAttributeBuffer(self)
proc Optimize*(self: ptr ID3DXMesh, Flags: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, ppOptMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXMeshVtbl](self.lpVtbl).Optimize(self, Flags, pAdjacencyIn, pAdjacencyOut, pFaceRemap, ppVertexRemap, ppOptMesh)
proc OptimizeInplace*(self: ptr ID3DXMesh, Flags: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXMeshVtbl](self.lpVtbl).OptimizeInplace(self, Flags, pAdjacencyIn, pAdjacencyOut, pFaceRemap, ppVertexRemap)
proc SetAttributeTable*(self: ptr ID3DXMesh, pAttribTable: ptr D3DXATTRIBUTERANGE, cAttribTableSize: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXMeshVtbl](self.lpVtbl).SetAttributeTable(self, pAttribTable, cAttribTableSize)

# ID3DXPMesh
proc ClonePMeshFVF*(self: ptr ID3DXPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).ClonePMeshFVF(self, Options, FVF, pD3DDevice, ppCloneMesh)
proc ClonePMesh*(self: ptr ID3DXPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).ClonePMesh(self, Options, pDeclaration, pD3DDevice, ppCloneMesh)
proc SetNumFaces*(self: ptr ID3DXPMesh, Faces: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).SetNumFaces(self, Faces)
proc SetNumVertices*(self: ptr ID3DXPMesh, Vertices: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).SetNumVertices(self, Vertices)
proc GetMaxFaces*(self: ptr ID3DXPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GetMaxFaces(self)
proc GetMinFaces*(self: ptr ID3DXPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GetMinFaces(self)
proc GetMaxVertices*(self: ptr ID3DXPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GetMaxVertices(self)
proc GetMinVertices*(self: ptr ID3DXPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GetMinVertices(self)
proc Save*(self: ptr ID3DXPMesh, pStream: ptr IStream, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).Save(self, pStream, pMaterials, pEffectInstances, NumMaterials)
proc Optimize*(self: ptr ID3DXPMesh, Flags: DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, ppOptMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).Optimize(self, Flags, pAdjacencyOut, pFaceRemap, ppVertexRemap, ppOptMesh)
proc OptimizeBaseLOD*(self: ptr ID3DXPMesh, Flags: DWORD, pFaceRemap: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).OptimizeBaseLOD(self, Flags, pFaceRemap)
proc TrimByFaces*(self: ptr ID3DXPMesh, NewFacesMin: DWORD, NewFacesMax: DWORD, rgiFaceRemap: ptr DWORD, rgiVertRemap: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).TrimByFaces(self, NewFacesMin, NewFacesMax, rgiFaceRemap, rgiVertRemap)
proc TrimByVertices*(self: ptr ID3DXPMesh, NewVerticesMin: DWORD, NewVerticesMax: DWORD, rgiFaceRemap: ptr DWORD, rgiVertRemap: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).TrimByVertices(self, NewVerticesMin, NewVerticesMax, rgiFaceRemap, rgiVertRemap)
proc GetAdjacency*(self: ptr ID3DXPMesh, pAdjacency: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GetAdjacency(self, pAdjacency)
proc GenerateVertexHistory*(self: ptr ID3DXPMesh, pVertexHistory: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPMeshVtbl](self.lpVtbl).GenerateVertexHistory(self, pVertexHistory)

# ID3DXSPMesh
proc GetNumFaces*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetNumFaces(self)
proc GetNumVertices*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetNumVertices(self)
proc GetFVF*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetFVF(self)
proc GetDeclaration*(self: ptr ID3DXSPMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetDeclaration(self, Declaration)
proc GetOptions*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetOptions(self)
proc GetDevice*(self: ptr ID3DXSPMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc CloneMeshFVF*(self: ptr ID3DXSPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pAdjacencyOut: ptr DWORD, pVertexRemapOut: ptr DWORD, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).CloneMeshFVF(self, Options, FVF, pD3DDevice, pAdjacencyOut, pVertexRemapOut, ppCloneMesh)
proc CloneMesh*(self: ptr ID3DXSPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, pAdjacencyOut: ptr DWORD, pVertexRemapOut: ptr DWORD, ppCloneMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).CloneMesh(self, Options, pDeclaration, pD3DDevice, pAdjacencyOut, pVertexRemapOut, ppCloneMesh)
proc ClonePMeshFVF*(self: ptr ID3DXSPMesh, Options: DWORD, FVF: DWORD, pD3DDevice: LPDIRECT3DDEVICE9, pVertexRemapOut: ptr DWORD, pErrorsByFace: ptr float32, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).ClonePMeshFVF(self, Options, FVF, pD3DDevice, pVertexRemapOut, pErrorsByFace, ppCloneMesh)
proc ClonePMesh*(self: ptr ID3DXSPMesh, Options: DWORD, pDeclaration: ptr D3DVERTEXELEMENT9, pD3DDevice: LPDIRECT3DDEVICE9, pVertexRemapOut: ptr DWORD, pErrorsbyFace: ptr float32, ppCloneMesh: ptr LPD3DXPMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).ClonePMesh(self, Options, pDeclaration, pD3DDevice, pVertexRemapOut, pErrorsbyFace, ppCloneMesh)
proc ReduceFaces*(self: ptr ID3DXSPMesh, Faces: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).ReduceFaces(self, Faces)
proc ReduceVertices*(self: ptr ID3DXSPMesh, Vertices: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).ReduceVertices(self, Vertices)
proc GetMaxFaces*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetMaxFaces(self)
proc GetMaxVertices*(self: ptr ID3DXSPMesh): DWORD {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetMaxVertices(self)
proc GetVertexAttributeWeights*(self: ptr ID3DXSPMesh, pVertexAttributeWeights: LPD3DXATTRIBUTEWEIGHTS): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetVertexAttributeWeights(self, pVertexAttributeWeights)
proc GetVertexWeights*(self: ptr ID3DXSPMesh, pVertexWeights: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXSPMeshVtbl](self.lpVtbl).GetVertexWeights(self, pVertexWeights)

# ID3DXPatchMesh
proc GetNumPatches*(self: ptr ID3DXPatchMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetNumPatches(self)
proc GetNumVertices*(self: ptr ID3DXPatchMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetNumVertices(self)
proc GetDeclaration*(self: ptr ID3DXPatchMesh, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetDeclaration(self, Declaration)
proc GetControlVerticesPerPatch*(self: ptr ID3DXPatchMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetControlVerticesPerPatch(self)
proc GetOptions*(self: ptr ID3DXPatchMesh): DWORD {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetOptions(self)
proc GetDevice*(self: ptr ID3DXPatchMesh, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetPatchInfo*(self: ptr ID3DXPatchMesh, PatchInfo: LPD3DXPATCHINFO): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetPatchInfo(self, PatchInfo)
proc GetVertexBuffer*(self: ptr ID3DXPatchMesh, ppVB: ptr LPDIRECT3DVERTEXBUFFER9): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetVertexBuffer(self, ppVB)
proc GetIndexBuffer*(self: ptr ID3DXPatchMesh, ppIB: ptr LPDIRECT3DINDEXBUFFER9): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetIndexBuffer(self, ppIB)
proc LockVertexBuffer*(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).LockVertexBuffer(self, flags, ppData)
proc UnlockVertexBuffer*(self: ptr ID3DXPatchMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).UnlockVertexBuffer(self)
proc LockIndexBuffer*(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).LockIndexBuffer(self, flags, ppData)
proc UnlockIndexBuffer*(self: ptr ID3DXPatchMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).UnlockIndexBuffer(self)
proc LockAttributeBuffer*(self: ptr ID3DXPatchMesh, flags: DWORD, ppData: ptr ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).LockAttributeBuffer(self, flags, ppData)
proc UnlockAttributeBuffer*(self: ptr ID3DXPatchMesh): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).UnlockAttributeBuffer(self)
proc GetTessSize*(self: ptr ID3DXPatchMesh, fTessLevel: float32, Adaptive: DWORD, NumTriangles: ptr DWORD, NumVertices: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetTessSize(self, fTessLevel, Adaptive, NumTriangles, NumVertices)
proc GenerateAdjacency*(self: ptr ID3DXPatchMesh, Tolerance: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GenerateAdjacency(self, Tolerance)
proc CloneMesh*(self: ptr ID3DXPatchMesh, Options: DWORD, pDecl: ptr D3DVERTEXELEMENT9, pMesh: ptr LPD3DXPATCHMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).CloneMesh(self, Options, pDecl, pMesh)
proc Optimize*(self: ptr ID3DXPatchMesh, flags: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).Optimize(self, flags)
proc SetDisplaceParam*(self: ptr ID3DXPatchMesh, Texture: LPDIRECT3DBASETEXTURE9, MinFilter: D3DTEXTUREFILTERTYPE, MagFilter: D3DTEXTUREFILTERTYPE, MipFilter: D3DTEXTUREFILTERTYPE, Wrap: D3DTEXTUREADDRESS, dwLODBias: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).SetDisplaceParam(self, Texture, MinFilter, MagFilter, MipFilter, Wrap, dwLODBias)
proc GetDisplaceParam*(self: ptr ID3DXPatchMesh, Texture: ptr LPDIRECT3DBASETEXTURE9, MinFilter: ptr D3DTEXTUREFILTERTYPE, MagFilter: ptr D3DTEXTUREFILTERTYPE, MipFilter: ptr D3DTEXTUREFILTERTYPE, Wrap: ptr D3DTEXTUREADDRESS, dwLODBias: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).GetDisplaceParam(self, Texture, MinFilter, MagFilter, MipFilter, Wrap, dwLODBias)
proc Tessellate*(self: ptr ID3DXPatchMesh, fTessLevel: float32, pMesh: LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).Tessellate(self, fTessLevel, pMesh)
proc TessellateAdaptive*(self: ptr ID3DXPatchMesh, pTrans: ptr D3DXVECTOR4, dwMaxTessLevel: DWORD, dwMinTessLevel: DWORD, pMesh: LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPatchMeshVtbl](self.lpVtbl).TessellateAdaptive(self, pTrans, dwMaxTessLevel, dwMinTessLevel, pMesh)

# ID3DXSkinInfo
proc SetBoneInfluence*(self: ptr ID3DXSkinInfo, bone: DWORD, numInfluences: DWORD, vertices: ptr DWORD, weights: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetBoneInfluence(self, bone, numInfluences, vertices, weights)
proc SetBoneVertexInfluence*(self: ptr ID3DXSkinInfo, boneNum: DWORD, influenceNum: DWORD, weight: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetBoneVertexInfluence(self, boneNum, influenceNum, weight)
proc GetNumBoneInfluences*(self: ptr ID3DXSkinInfo, bone: DWORD): DWORD {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetNumBoneInfluences(self, bone)
proc GetBoneInfluence*(self: ptr ID3DXSkinInfo, bone: DWORD, vertices: ptr DWORD, weights: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetBoneInfluence(self, bone, vertices, weights)
proc GetBoneVertexInfluence*(self: ptr ID3DXSkinInfo, boneNum: DWORD, influenceNum: DWORD, pWeight: ptr float32, pVertexNum: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetBoneVertexInfluence(self, boneNum, influenceNum, pWeight, pVertexNum)
proc GetMaxVertexInfluences*(self: ptr ID3DXSkinInfo, maxVertexInfluences: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetMaxVertexInfluences(self, maxVertexInfluences)
proc GetNumBones*(self: ptr ID3DXSkinInfo): DWORD {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetNumBones(self)
proc FindBoneVertexInfluenceIndex*(self: ptr ID3DXSkinInfo, boneNum: DWORD, vertexNum: DWORD, pInfluenceIndex: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).FindBoneVertexInfluenceIndex(self, boneNum, vertexNum, pInfluenceIndex)
proc GetMaxFaceInfluences*(self: ptr ID3DXSkinInfo, pIB: LPDIRECT3DINDEXBUFFER9, NumFaces: DWORD, maxFaceInfluences: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetMaxFaceInfluences(self, pIB, NumFaces, maxFaceInfluences)
proc SetMinBoneInfluence*(self: ptr ID3DXSkinInfo, MinInfl: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetMinBoneInfluence(self, MinInfl)
proc GetMinBoneInfluence*(self: ptr ID3DXSkinInfo): float32 {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetMinBoneInfluence(self)
proc SetBoneName*(self: ptr ID3DXSkinInfo, Bone: DWORD, pName: cstring): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetBoneName(self, Bone, pName)
proc GetBoneName*(self: ptr ID3DXSkinInfo, Bone: DWORD): cstring {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetBoneName(self, Bone)
proc SetBoneOffsetMatrix*(self: ptr ID3DXSkinInfo, Bone: DWORD, pBoneTransform: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetBoneOffsetMatrix(self, Bone, pBoneTransform)
proc GetBoneOffsetMatrix*(self: ptr ID3DXSkinInfo, Bone: DWORD): LPD3DXMATRIX {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetBoneOffsetMatrix(self, Bone)
proc Clone*(self: ptr ID3DXSkinInfo, ppSkinInfo: ptr LPD3DXSKININFO): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).Clone(self, ppSkinInfo)
proc Remap*(self: ptr ID3DXSkinInfo, NumVertices: DWORD, pVertexRemap: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).Remap(self, NumVertices, pVertexRemap)
proc SetFVF*(self: ptr ID3DXSkinInfo, FVF: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetFVF(self, FVF)
proc SetDeclaration*(self: ptr ID3DXSkinInfo, pDeclaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).SetDeclaration(self, pDeclaration)
proc GetFVF*(self: ptr ID3DXSkinInfo): DWORD {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetFVF(self)
proc GetDeclaration*(self: ptr ID3DXSkinInfo, Declaration: ptr D3DVERTEXELEMENT9): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).GetDeclaration(self, Declaration)
proc UpdateSkinnedMesh*(self: ptr ID3DXSkinInfo, pBoneTransforms: ptr D3DXMATRIX, pBoneInvTransposeTransforms: ptr D3DXMATRIX, pVerticesSrc: pointer, pVerticesDst: pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).UpdateSkinnedMesh(self, pBoneTransforms, pBoneInvTransposeTransforms, pVerticesSrc, pVerticesDst)
proc ConvertToBlendedMesh*(self: ptr ID3DXSkinInfo, pMesh: LPD3DXMESH, Options: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, pMaxFaceInfl: ptr DWORD, pNumBoneCombinations: ptr DWORD, ppBoneCombinationTable: ptr LPD3DXBUFFER, ppMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).ConvertToBlendedMesh(self, pMesh, Options, pAdjacencyIn, pAdjacencyOut, pFaceRemap, ppVertexRemap, pMaxFaceInfl, pNumBoneCombinations, ppBoneCombinationTable, ppMesh)
proc ConvertToIndexedBlendedMesh*(self: ptr ID3DXSkinInfo, pMesh: LPD3DXMESH, Options: DWORD, paletteSize: DWORD, pAdjacencyIn: ptr DWORD, pAdjacencyOut: ptr DWORD, pFaceRemap: ptr DWORD, ppVertexRemap: ptr LPD3DXBUFFER, pMaxVertexInfl: ptr DWORD, pNumBoneCombinations: ptr DWORD, ppBoneCombinationTable: ptr LPD3DXBUFFER, ppMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXSkinInfoVtbl](self.lpVtbl).ConvertToIndexedBlendedMesh(self, pMesh, Options, paletteSize, pAdjacencyIn, pAdjacencyOut, pFaceRemap, ppVertexRemap, pMaxVertexInfl, pNumBoneCombinations, ppBoneCombinationTable, ppMesh)

# ID3DXPRTBuffer
proc GetNumSamples*(self: ptr ID3DXPRTBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).GetNumSamples(self)
proc GetNumCoeffs*(self: ptr ID3DXPRTBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).GetNumCoeffs(self)
proc GetNumChannels*(self: ptr ID3DXPRTBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).GetNumChannels(self)
proc IsTexture*(self: ptr ID3DXPRTBuffer): BOOL {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).IsTexture(self)
proc GetWidth*(self: ptr ID3DXPRTBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).GetWidth(self)
proc GetHeight*(self: ptr ID3DXPRTBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).GetHeight(self)
proc Resize*(self: ptr ID3DXPRTBuffer, NewSize: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).Resize(self, NewSize)
proc LockBuffer*(self: ptr ID3DXPRTBuffer, Start: UINT, NumSamples: UINT, ppData: ptr ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).LockBuffer(self, Start, NumSamples, ppData)
proc UnlockBuffer*(self: ptr ID3DXPRTBuffer): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).UnlockBuffer(self)
proc ScaleBuffer*(self: ptr ID3DXPRTBuffer, Scale: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).ScaleBuffer(self, Scale)
proc AddBuffer*(self: ptr ID3DXPRTBuffer, pBuffer: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).AddBuffer(self, pBuffer)
proc AttachGH*(self: ptr ID3DXPRTBuffer, arg0: LPD3DXTEXTUREGUTTERHELPER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).AttachGH(self, arg0)
proc ReleaseGH*(self: ptr ID3DXPRTBuffer): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).ReleaseGH(self)
proc EvalGH*(self: ptr ID3DXPRTBuffer): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).EvalGH(self)
proc ExtractTexture*(self: ptr ID3DXPRTBuffer, Channel: UINT, StartCoefficient: UINT, NumCoefficients: UINT, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).ExtractTexture(self, Channel, StartCoefficient, NumCoefficients, pTexture)
proc ExtractToMesh*(self: ptr ID3DXPRTBuffer, NumCoefficients: UINT, Usage: D3DDECLUSAGE, UsageIndexStart: UINT, pScene: LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTBufferVtbl](self.lpVtbl).ExtractToMesh(self, NumCoefficients, Usage, UsageIndexStart, pScene)

# ID3DXPRTCompBuffer
proc GetNumSamples*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetNumSamples(self)
proc GetNumCoeffs*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetNumCoeffs(self)
proc GetNumChannels*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetNumChannels(self)
proc IsTexture*(self: ptr ID3DXPRTCompBuffer): BOOL {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).IsTexture(self)
proc GetWidth*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetWidth(self)
proc GetHeight*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetHeight(self)
proc GetNumClusters*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetNumClusters(self)
proc GetNumPCA*(self: ptr ID3DXPRTCompBuffer): UINT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).GetNumPCA(self)
proc NormalizeData*(self: ptr ID3DXPRTCompBuffer): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).NormalizeData(self)
proc ExtractBasis*(self: ptr ID3DXPRTCompBuffer, Cluster: UINT, pClusterBasis: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).ExtractBasis(self, Cluster, pClusterBasis)
proc ExtractClusterIDs*(self: ptr ID3DXPRTCompBuffer, pClusterIDs: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).ExtractClusterIDs(self, pClusterIDs)
proc ExtractPCA*(self: ptr ID3DXPRTCompBuffer, StartPCA: UINT, NumExtract: UINT, pPCACoefficients: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).ExtractPCA(self, StartPCA, NumExtract, pPCACoefficients)
proc ExtractTexture*(self: ptr ID3DXPRTCompBuffer, StartPCA: UINT, NumpPCA: UINT, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).ExtractTexture(self, StartPCA, NumpPCA, pTexture)
proc ExtractToMesh*(self: ptr ID3DXPRTCompBuffer, NumPCA: UINT, Usage: D3DDECLUSAGE, UsageIndexStart: UINT, pScene: LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTCompBufferVtbl](self.lpVtbl).ExtractToMesh(self, NumPCA, Usage, UsageIndexStart, pScene)

# ID3DXTextureGutterHelper
proc GetWidth*(self: ptr ID3DXTextureGutterHelper): UINT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetWidth(self)
proc GetHeight*(self: ptr ID3DXTextureGutterHelper): UINT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetHeight(self)
proc ApplyGuttersFloat*(self: ptr ID3DXTextureGutterHelper, pDataIn: ptr float32, NumCoeffs: UINT, Width: UINT, Height: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).ApplyGuttersFloat(self, pDataIn, NumCoeffs, Width, Height)
proc ApplyGuttersTex*(self: ptr ID3DXTextureGutterHelper, pTexture: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).ApplyGuttersTex(self, pTexture)
proc ApplyGuttersPRT*(self: ptr ID3DXTextureGutterHelper, pBuffer: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).ApplyGuttersPRT(self, pBuffer)
proc ResampleTex*(self: ptr ID3DXTextureGutterHelper, pTextureIn: LPDIRECT3DTEXTURE9, pMeshIn: LPD3DXMESH, Usage: D3DDECLUSAGE, UsageIndex: UINT, pTextureOut: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).ResampleTex(self, pTextureIn, pMeshIn, Usage, UsageIndex, pTextureOut)
proc GetFaceMap*(self: ptr ID3DXTextureGutterHelper, pFaceData: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetFaceMap(self, pFaceData)
proc GetBaryMap*(self: ptr ID3DXTextureGutterHelper, pBaryData: ptr D3DXVECTOR2): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetBaryMap(self, pBaryData)
proc GetTexelMap*(self: ptr ID3DXTextureGutterHelper, pTexelData: ptr D3DXVECTOR2): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetTexelMap(self, pTexelData)
proc GetGutterMap*(self: ptr ID3DXTextureGutterHelper, pGutterData: ptr BYTE): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).GetGutterMap(self, pGutterData)
proc SetFaceMap*(self: ptr ID3DXTextureGutterHelper, pFaceData: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).SetFaceMap(self, pFaceData)
proc SetBaryMap*(self: ptr ID3DXTextureGutterHelper, pBaryData: ptr D3DXVECTOR2): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).SetBaryMap(self, pBaryData)
proc SetTexelMap*(self: ptr ID3DXTextureGutterHelper, pTexelData: ptr D3DXVECTOR2): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).SetTexelMap(self, pTexelData)
proc SetGutterMap*(self: ptr ID3DXTextureGutterHelper, pGutterData: ptr BYTE): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureGutterHelperVtbl](self.lpVtbl).SetGutterMap(self, pGutterData)

# ID3DXPRTEngine
proc SetMeshMaterials*(self: ptr ID3DXPRTEngine, ppMaterials: ptr ptr D3DXSHMATERIAL, NumMeshes: UINT, NumChannels: UINT, bSetAlbedo: BOOL, fLengthScale: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetMeshMaterials(self, ppMaterials, NumMeshes, NumChannels, bSetAlbedo, fLengthScale)
proc SetPerVertexAlbedo*(self: ptr ID3DXPRTEngine, pDataIn: pointer, NumChannels: UINT, Stride: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetPerVertexAlbedo(self, pDataIn, NumChannels, Stride)
proc SetPerTexelAlbedo*(self: ptr ID3DXPRTEngine, pAlbedoTexture: LPDIRECT3DTEXTURE9, NumChannels: UINT, pGH: LPD3DXTEXTUREGUTTERHELPER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetPerTexelAlbedo(self, pAlbedoTexture, NumChannels, pGH)
proc GetVertexAlbedo*(self: ptr ID3DXPRTEngine, pVertColors: ptr D3DXCOLOR, NumVerts: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).GetVertexAlbedo(self, pVertColors, NumVerts)
proc SetPerTexelNormal*(self: ptr ID3DXPRTEngine, pNormalTexture: LPDIRECT3DTEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetPerTexelNormal(self, pNormalTexture)
proc ExtractPerVertexAlbedo*(self: ptr ID3DXPRTEngine, pMesh: LPD3DXMESH, Usage: D3DDECLUSAGE, NumChannels: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ExtractPerVertexAlbedo(self, pMesh, Usage, NumChannels)
proc ResampleBuffer*(self: ptr ID3DXPRTEngine, pBufferIn: LPD3DXPRTBUFFER, pBufferOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ResampleBuffer(self, pBufferIn, pBufferOut)
proc GetAdaptedMesh*(self: ptr ID3DXPRTEngine, pD3DDevice: LPDIRECT3DDEVICE9, pFaceRemap: ptr UINT, pVertRemap: ptr UINT, pfVertWeights: ptr float32, ppMesh: ptr LPD3DXMESH): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).GetAdaptedMesh(self, pD3DDevice, pFaceRemap, pVertRemap, pfVertWeights, ppMesh)
proc GetNumVerts*(self: ptr ID3DXPRTEngine): UINT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).GetNumVerts(self)
proc GetNumFaces*(self: ptr ID3DXPRTEngine): UINT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).GetNumFaces(self)
proc SetMinMaxIntersection*(self: ptr ID3DXPRTEngine, fMin: float32, fMax: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetMinMaxIntersection(self, fMin, fMax)
proc RobustMeshRefine*(self: ptr ID3DXPRTEngine, MinEdgeLength: float32, MaxSubdiv: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).RobustMeshRefine(self, MinEdgeLength, MaxSubdiv)
proc SetSamplingInfo*(self: ptr ID3DXPRTEngine, NumRays: UINT, UseSphere: BOOL, UseCosine: BOOL, Adaptive: BOOL, AdaptiveThresh: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetSamplingInfo(self, NumRays, UseSphere, UseCosine, Adaptive, AdaptiveThresh)
proc ComputeDirectLightingSH*(self: ptr ID3DXPRTEngine, SHOrder: UINT, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeDirectLightingSH(self, SHOrder, pDataOut)
proc ComputeDirectLightingSHAdaptive*(self: ptr ID3DXPRTEngine, SHOrder: UINT, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeDirectLightingSHAdaptive(self, SHOrder, AdaptiveThresh, MinEdgeLength, MaxSubdiv, pDataOut)
proc ComputeDirectLightingSHGPU*(self: ptr ID3DXPRTEngine, pD3DDevice: LPDIRECT3DDEVICE9, Flags: UINT, SHOrder: UINT, ZBias: float32, ZAngleBias: float32, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeDirectLightingSHGPU(self, pD3DDevice, Flags, SHOrder, ZBias, ZAngleBias, pDataOut)
proc ComputeSS*(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeSS(self, pDataIn, pDataOut, pDataTotal)
proc ComputeSSAdaptive*(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeSSAdaptive(self, pDataIn, AdaptiveThresh, MinEdgeLength, MaxSubdiv, pDataOut, pDataTotal)
proc ComputeBounce*(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeBounce(self, pDataIn, pDataOut, pDataTotal)
proc ComputeBounceAdaptive*(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, AdaptiveThresh: float32, MinEdgeLength: float32, MaxSubdiv: UINT, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeBounceAdaptive(self, pDataIn, AdaptiveThresh, MinEdgeLength, MaxSubdiv, pDataOut, pDataTotal)
proc ComputeVolumeSamplesDirectSH*(self: ptr ID3DXPRTEngine, SHOrderIn: UINT, SHOrderOut: UINT, NumVolSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeVolumeSamplesDirectSH(self, SHOrderIn, SHOrderOut, NumVolSamples, pSampleLocs, pDataOut)
proc ComputeVolumeSamples*(self: ptr ID3DXPRTEngine, pSurfDataIn: LPD3DXPRTBUFFER, SHOrder: UINT, NumVolSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeVolumeSamples(self, pSurfDataIn, SHOrder, NumVolSamples, pSampleLocs, pDataOut)
proc ComputeSurfSamplesDirectSH*(self: ptr ID3DXPRTEngine, SHOrder: UINT, NumSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pSampleNorms: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeSurfSamplesDirectSH(self, SHOrder, NumSamples, pSampleLocs, pSampleNorms, pDataOut)
proc ComputeSurfSamplesBounce*(self: ptr ID3DXPRTEngine, pSurfDataIn: LPD3DXPRTBUFFER, NumSamples: UINT, pSampleLocs: ptr D3DXVECTOR3, pSampleNorms: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER, pDataTotal: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeSurfSamplesBounce(self, pSurfDataIn, NumSamples, pSampleLocs, pSampleNorms, pDataOut, pDataTotal)
proc FreeSSData*(self: ptr ID3DXPRTEngine): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).FreeSSData(self)
proc FreeBounceData*(self: ptr ID3DXPRTEngine): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).FreeBounceData(self)
proc ComputeLDPRTCoeffs*(self: ptr ID3DXPRTEngine, pDataIn: LPD3DXPRTBUFFER, SHOrder: UINT, pNormOut: ptr D3DXVECTOR3, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ComputeLDPRTCoeffs(self, pDataIn, SHOrder, pNormOut, pDataOut)
proc ScaleMeshChunk*(self: ptr ID3DXPRTEngine, uMeshChunk: UINT, fScale: float32, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ScaleMeshChunk(self, uMeshChunk, fScale, pDataOut)
proc MultiplyAlbedo*(self: ptr ID3DXPRTEngine, pDataOut: LPD3DXPRTBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).MultiplyAlbedo(self, pDataOut)
proc SetCallBack*(self: ptr ID3DXPRTEngine, pCB: LPD3DXSHPRTSIMCB, Frequency: float32, lpUserContext: pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).SetCallBack(self, pCB, Frequency, lpUserContext)
proc ShadowRayIntersects*(self: ptr ID3DXPRTEngine, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3): BOOL {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ShadowRayIntersects(self, pRayPos, pRayDir)
proc ClosestRayIntersects*(self: ptr ID3DXPRTEngine, pRayPos: ptr D3DXVECTOR3, pRayDir: ptr D3DXVECTOR3, pFaceIndex: ptr DWORD, pU: ptr float32, pV: ptr float32, pDist: ptr float32): BOOL {.d9md.} =
  cast[ptr ID3DXPRTEngineVtbl](self.lpVtbl).ClosestRayIntersects(self, pRayPos, pRayDir, pFaceIndex, pU, pV, pDist)

# ID3DXConstantTable
proc GetBufferPointer*(self: ptr ID3DXConstantTable): pointer {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetBufferPointer(self)
proc GetBufferSize*(self: ptr ID3DXConstantTable): DWORD {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetBufferSize(self)
proc GetDesc*(self: ptr ID3DXConstantTable, pDesc: ptr D3DXCONSTANTTABLE_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetDesc(self, pDesc)
proc GetConstantDesc*(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, pConstantDesc: ptr D3DXCONSTANT_DESC, pCount: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetConstantDesc(self, hConstant, pConstantDesc, pCount)
proc GetSamplerIndex*(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE): UINT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetSamplerIndex(self, hConstant)
proc GetConstant*(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetConstant(self, hConstant, Index)
proc GetConstantByName*(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetConstantByName(self, hConstant, pName)
proc GetConstantElement*(self: ptr ID3DXConstantTable, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).GetConstantElement(self, hConstant, Index)
proc SetDefaults*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetDefaults(self, pDevice)
proc SetValue*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetValue(self, pDevice, hConstant, pData, Bytes)
proc SetBool*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, b: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetBool(self, pDevice, hConstant, b)
proc SetBoolArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetBoolArray(self, pDevice, hConstant, pb, Count)
proc SetInt*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, n: INT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetInt(self, pDevice, hConstant, n)
proc SetIntArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetIntArray(self, pDevice, hConstant, pn, Count)
proc SetFloat*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, f: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetFloat(self, pDevice, hConstant, f)
proc SetFloatArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetFloatArray(self, pDevice, hConstant, pf, Count)
proc SetVector*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetVector(self, pDevice, hConstant, pVector)
proc SetVectorArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetVectorArray(self, pDevice, hConstant, pVector, Count)
proc SetMatrix*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrix(self, pDevice, hConstant, pMatrix)
proc SetMatrixArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrixArray(self, pDevice, hConstant, pMatrix, Count)
proc SetMatrixPointerArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrixPointerArray(self, pDevice, hConstant, ppMatrix, Count)
proc SetMatrixTranspose*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrixTranspose(self, pDevice, hConstant, pMatrix)
proc SetMatrixTransposeArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrixTransposeArray(self, pDevice, hConstant, pMatrix, Count)
proc SetMatrixTransposePointerArray*(self: ptr ID3DXConstantTable, pDevice: LPDIRECT3DDEVICE9, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXConstantTableVtbl](self.lpVtbl).SetMatrixTransposePointerArray(self, pDevice, hConstant, ppMatrix, Count)

# ID3DXTextureShader
proc GetFunction*(self: ptr ID3DXTextureShader, ppFunction: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetFunction(self, ppFunction)
proc GetConstantBuffer*(self: ptr ID3DXTextureShader, ppConstantBuffer: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetConstantBuffer(self, ppConstantBuffer)
proc GetDesc*(self: ptr ID3DXTextureShader, pDesc: ptr D3DXCONSTANTTABLE_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetDesc(self, pDesc)
proc GetConstantDesc*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pConstantDesc: ptr D3DXCONSTANT_DESC, pCount: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetConstantDesc(self, hConstant, pConstantDesc, pCount)
proc GetConstant*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetConstant(self, hConstant, Index)
proc GetConstantByName*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetConstantByName(self, hConstant, pName)
proc GetConstantElement*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).GetConstantElement(self, hConstant, Index)
proc SetDefaults*(self: ptr ID3DXTextureShader): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetDefaults(self)
proc SetValue*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetValue(self, hConstant, pData, Bytes)
proc SetBool*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, b: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetBool(self, hConstant, b)
proc SetBoolArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetBoolArray(self, hConstant, pb, Count)
proc SetInt*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, n: INT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetInt(self, hConstant, n)
proc SetIntArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetIntArray(self, hConstant, pn, Count)
proc SetFloat*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, f: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetFloat(self, hConstant, f)
proc SetFloatArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetFloatArray(self, hConstant, pf, Count)
proc SetVector*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetVector(self, hConstant, pVector)
proc SetVectorArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetVectorArray(self, hConstant, pVector, Count)
proc SetMatrix*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrix(self, hConstant, pMatrix)
proc SetMatrixArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrixArray(self, hConstant, pMatrix, Count)
proc SetMatrixPointerArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrixPointerArray(self, hConstant, ppMatrix, Count)
proc SetMatrixTranspose*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrixTranspose(self, hConstant, pMatrix)
proc SetMatrixTransposeArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrixTransposeArray(self, hConstant, pMatrix, Count)
proc SetMatrixTransposePointerArray*(self: ptr ID3DXTextureShader, hConstant: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXTextureShaderVtbl](self.lpVtbl).SetMatrixTransposePointerArray(self, hConstant, ppMatrix, Count)

# ID3DXInclude
proc Open*(self: ptr ID3DXInclude, IncludeType: D3DXINCLUDE_TYPE, pFileName: cstring, pParentData: pointer, ppData: ptr pointer, pBytes: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXIncludeVtbl](self.lpVtbl).Open(self, IncludeType, pFileName, pParentData, ppData, pBytes)
proc Close*(self: ptr ID3DXInclude, pData: pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXIncludeVtbl](self.lpVtbl).Close(self, pData)

# ID3DXBaseEffect
proc GetDesc*(self: ptr ID3DXBaseEffect, pDesc: ptr D3DXEFFECT_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetDesc(self, pDesc)
proc GetParameterDesc*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pDesc: ptr D3DXPARAMETER_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetParameterDesc(self, hParameter, pDesc)
proc GetTechniqueDesc*(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, pDesc: ptr D3DXTECHNIQUE_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetTechniqueDesc(self, hTechnique, pDesc)
proc GetPassDesc*(self: ptr ID3DXBaseEffect, hPass: D3DXHANDLE, pDesc: ptr D3DXPASS_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetPassDesc(self, hPass, pDesc)
proc GetFunctionDesc*(self: ptr ID3DXBaseEffect, hShader: D3DXHANDLE, pDesc: ptr D3DXFUNCTION_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetFunctionDesc(self, hShader, pDesc)
proc GetParameter*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetParameter(self, hParameter, Index)
proc GetParameterByName*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetParameterByName(self, hParameter, pName)
proc GetParameterBySemantic*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pSemantic: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetParameterBySemantic(self, hParameter, pSemantic)
proc GetParameterElement*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetParameterElement(self, hParameter, Index)
proc GetTechnique*(self: ptr ID3DXBaseEffect, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetTechnique(self, Index)
proc GetTechniqueByName*(self: ptr ID3DXBaseEffect, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetTechniqueByName(self, pName)
proc GetPass*(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetPass(self, hTechnique, Index)
proc GetPassByName*(self: ptr ID3DXBaseEffect, hTechnique: D3DXHANDLE, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetPassByName(self, hTechnique, pName)
proc GetFunction*(self: ptr ID3DXBaseEffect, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetFunction(self, Index)
proc GetFunctionByName*(self: ptr ID3DXBaseEffect, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetFunctionByName(self, pName)
proc GetAnnotation*(self: ptr ID3DXBaseEffect, hObject: D3DXHANDLE, Index: UINT): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetAnnotation(self, hObject, Index)
proc GetAnnotationByName*(self: ptr ID3DXBaseEffect, hObject: D3DXHANDLE, pName: cstring): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetAnnotationByName(self, hObject, pName)
proc SetValue*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetValue(self, hParameter, pData, Bytes)
proc GetValue*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pData: pointer, Bytes: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetValue(self, hParameter, pData, Bytes)
proc SetBool*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, b: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetBool(self, hParameter, b)
proc GetBool*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetBool(self, hParameter, pb)
proc SetBoolArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetBoolArray(self, hParameter, pb, Count)
proc GetBoolArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pb: ptr BOOL, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetBoolArray(self, hParameter, pb, Count)
proc SetInt*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, n: INT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetInt(self, hParameter, n)
proc GetInt*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetInt(self, hParameter, pn)
proc SetIntArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetIntArray(self, hParameter, pn, Count)
proc GetIntArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pn: ptr INT, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetIntArray(self, hParameter, pn, Count)
proc SetFloat*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, f: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetFloat(self, hParameter, f)
proc GetFloat*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetFloat(self, hParameter, pf)
proc SetFloatArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetFloatArray(self, hParameter, pf, Count)
proc GetFloatArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pf: ptr float32, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetFloatArray(self, hParameter, pf, Count)
proc SetVector*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetVector(self, hParameter, pVector)
proc GetVector*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetVector(self, hParameter, pVector)
proc SetVectorArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetVectorArray(self, hParameter, pVector, Count)
proc GetVectorArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pVector: ptr D3DXVECTOR4, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetVectorArray(self, hParameter, pVector, Count)
proc SetMatrix*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrix(self, hParameter, pMatrix)
proc GetMatrix*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrix(self, hParameter, pMatrix)
proc SetMatrixArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrixArray(self, hParameter, pMatrix, Count)
proc GetMatrixArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrixArray(self, hParameter, pMatrix, Count)
proc SetMatrixPointerArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrixPointerArray(self, hParameter, ppMatrix, Count)
proc GetMatrixPointerArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrixPointerArray(self, hParameter, ppMatrix, Count)
proc SetMatrixTranspose*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrixTranspose(self, hParameter, pMatrix)
proc GetMatrixTranspose*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrixTranspose(self, hParameter, pMatrix)
proc SetMatrixTransposeArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrixTransposeArray(self, hParameter, pMatrix, Count)
proc GetMatrixTransposeArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pMatrix: ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrixTransposeArray(self, hParameter, pMatrix, Count)
proc SetMatrixTransposePointerArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetMatrixTransposePointerArray(self, hParameter, ppMatrix, Count)
proc GetMatrixTransposePointerArray*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppMatrix: ptr ptr D3DXMATRIX, Count: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetMatrixTransposePointerArray(self, hParameter, ppMatrix, Count)
proc SetString*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pString: cstring): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetString(self, hParameter, pString)
proc GetString*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppString: ptr cstring): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetString(self, hParameter, ppString)
proc SetTexture*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetTexture(self, hParameter, pTexture)
proc GetTexture*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppTexture: ptr LPDIRECT3DBASETEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetTexture(self, hParameter, ppTexture)
proc GetPixelShader*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppPShader: ptr LPDIRECT3DPIXELSHADER9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetPixelShader(self, hParameter, ppPShader)
proc GetVertexShader*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, ppVShader: ptr LPDIRECT3DVERTEXSHADER9): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).GetVertexShader(self, hParameter, ppVShader)
proc SetArrayRange*(self: ptr ID3DXBaseEffect, hParameter: D3DXHANDLE, uStart: UINT, uEnd: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXBaseEffectVtbl](self.lpVtbl).SetArrayRange(self, hParameter, uStart, uEnd)

# ID3DXEffectStateManager
proc SetTransform*(self: ptr ID3DXEffectStateManager, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetTransform(self, State, pMatrix)
proc SetMaterial*(self: ptr ID3DXEffectStateManager, pMaterial: ptr D3DMATERIAL9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetMaterial(self, pMaterial)
proc SetLight*(self: ptr ID3DXEffectStateManager, Index: DWORD, pLight: ptr D3DLIGHT9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetLight(self, Index, pLight)
proc LightEnable*(self: ptr ID3DXEffectStateManager, Index: DWORD, Enable: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).LightEnable(self, Index, Enable)
proc SetRenderState*(self: ptr ID3DXEffectStateManager, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetRenderState(self, State, Value)
proc SetTexture*(self: ptr ID3DXEffectStateManager, Stage: DWORD, pTexture: LPDIRECT3DBASETEXTURE9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetTexture(self, Stage, pTexture)
proc SetTextureStageState*(self: ptr ID3DXEffectStateManager, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetTextureStageState(self, Stage, Type, Value)
proc SetSamplerState*(self: ptr ID3DXEffectStateManager, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetSamplerState(self, Sampler, Type, Value)
proc SetNPatchMode*(self: ptr ID3DXEffectStateManager, NumSegments: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetNPatchMode(self, NumSegments)
proc SetFVF*(self: ptr ID3DXEffectStateManager, FVF: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetFVF(self, FVF)
proc SetVertexShader*(self: ptr ID3DXEffectStateManager, pShader: LPDIRECT3DVERTEXSHADER9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetVertexShader(self, pShader)
proc SetVertexShaderConstantF*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr float32, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetVertexShaderConstantF(self, RegisterIndex, pConstantData, RegisterCount)
proc SetVertexShaderConstantI*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr INT, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetVertexShaderConstantI(self, RegisterIndex, pConstantData, RegisterCount)
proc SetVertexShaderConstantB*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr BOOL, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetVertexShaderConstantB(self, RegisterIndex, pConstantData, RegisterCount)
proc SetPixelShader*(self: ptr ID3DXEffectStateManager, pShader: LPDIRECT3DPIXELSHADER9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetPixelShader(self, pShader)
proc SetPixelShaderConstantF*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr float32, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetPixelShaderConstantF(self, RegisterIndex, pConstantData, RegisterCount)
proc SetPixelShaderConstantI*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr INT, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetPixelShaderConstantI(self, RegisterIndex, pConstantData, RegisterCount)
proc SetPixelShaderConstantB*(self: ptr ID3DXEffectStateManager, RegisterIndex: UINT, pConstantData: ptr BOOL, RegisterCount: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectStateManagerVtbl](self.lpVtbl).SetPixelShaderConstantB(self, RegisterIndex, pConstantData, RegisterCount)

# ID3DXEffect
proc GetPool*(self: ptr ID3DXEffect, ppPool: ptr LPD3DXEFFECTPOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).GetPool(self, ppPool)
proc SetTechnique*(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).SetTechnique(self, hTechnique)
proc GetCurrentTechnique*(self: ptr ID3DXEffect): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).GetCurrentTechnique(self)
proc ValidateTechnique*(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).ValidateTechnique(self, hTechnique)
proc FindNextValidTechnique*(self: ptr ID3DXEffect, hTechnique: D3DXHANDLE, pTechnique: ptr D3DXHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).FindNextValidTechnique(self, hTechnique, pTechnique)
proc IsParameterUsed*(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, hTechnique: D3DXHANDLE): BOOL {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).IsParameterUsed(self, hParameter, hTechnique)
proc Begin*(self: ptr ID3DXEffect, pPasses: ptr UINT, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).Begin(self, pPasses, Flags)
proc BeginPass*(self: ptr ID3DXEffect, Pass: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).BeginPass(self, Pass)
proc CommitChanges*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).CommitChanges(self)
proc EndPass*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).EndPass(self)
proc End*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).End(self)
proc GetDevice*(self: ptr ID3DXEffect, ppDevice: ptr LPDIRECT3DDEVICE9): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc OnLostDevice*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).OnLostDevice(self)
proc OnResetDevice*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).OnResetDevice(self)
proc SetStateManager*(self: ptr ID3DXEffect, pManager: LPD3DXEFFECTSTATEMANAGER): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).SetStateManager(self, pManager)
proc GetStateManager*(self: ptr ID3DXEffect, ppManager: ptr LPD3DXEFFECTSTATEMANAGER): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).GetStateManager(self, ppManager)
proc BeginParameterBlock*(self: ptr ID3DXEffect): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).BeginParameterBlock(self)
proc EndParameterBlock*(self: ptr ID3DXEffect): D3DXHANDLE {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).EndParameterBlock(self)
proc ApplyParameterBlock*(self: ptr ID3DXEffect, hParameterBlock: D3DXHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).ApplyParameterBlock(self, hParameterBlock)
proc DeleteParameterBlock*(self: ptr ID3DXEffect, hParameterBlock: D3DXHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).DeleteParameterBlock(self, hParameterBlock)
proc CloneEffect*(self: ptr ID3DXEffect, pDevice: LPDIRECT3DDEVICE9, ppEffect: ptr LPD3DXEFFECT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).CloneEffect(self, pDevice, ppEffect)
proc SetRawValue*(self: ptr ID3DXEffect, hParameter: D3DXHANDLE, pData: pointer, ByteOffset: UINT, Bytes: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectVtbl](self.lpVtbl).SetRawValue(self, hParameter, pData, ByteOffset, Bytes)

# ID3DXEffectCompiler
proc SetLiteral*(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, Literal: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectCompilerVtbl](self.lpVtbl).SetLiteral(self, hParameter, Literal)
proc GetLiteral*(self: ptr ID3DXEffectCompiler, hParameter: D3DXHANDLE, pLiteral: ptr BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectCompilerVtbl](self.lpVtbl).GetLiteral(self, hParameter, pLiteral)
proc CompileEffect*(self: ptr ID3DXEffectCompiler, Flags: DWORD, ppEffect: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectCompilerVtbl](self.lpVtbl).CompileEffect(self, Flags, ppEffect, ppErrorMsgs)
proc CompileShader*(self: ptr ID3DXEffectCompiler, hFunction: D3DXHANDLE, pTarget: cstring, Flags: DWORD, ppShader: ptr LPD3DXBUFFER, ppErrorMsgs: ptr LPD3DXBUFFER, ppConstantTable: ptr LPD3DXCONSTANTTABLE): HRESULT {.d9md.} =
  cast[ptr ID3DXEffectCompilerVtbl](self.lpVtbl).CompileShader(self, hFunction, pTarget, Flags, ppShader, ppErrorMsgs, ppConstantTable)

# ID3DXAllocateHierarchy
proc CreateFrame*(self: ptr ID3DXAllocateHierarchy, Name: cstring, ppNewFrame: ptr LPD3DXFRAME): HRESULT {.d9md.} =
  cast[ptr ID3DXAllocateHierarchyVtbl](self.lpVtbl).CreateFrame(self, Name, ppNewFrame)
proc CreateMeshContainer*(self: ptr ID3DXAllocateHierarchy, Name: cstring, pMeshData: ptr D3DXMESHDATA, pMaterials: ptr D3DXMATERIAL, pEffectInstances: ptr D3DXEFFECTINSTANCE, NumMaterials: DWORD, pAdjacency: ptr DWORD, pSkinInfo: LPD3DXSKININFO, ppNewMeshContainer: ptr LPD3DXMESHCONTAINER): HRESULT {.d9md.} =
  cast[ptr ID3DXAllocateHierarchyVtbl](self.lpVtbl).CreateMeshContainer(self, Name, pMeshData, pMaterials, pEffectInstances, NumMaterials, pAdjacency, pSkinInfo, ppNewMeshContainer)
proc DestroyFrame*(self: ptr ID3DXAllocateHierarchy, pFrameToFree: LPD3DXFRAME): HRESULT {.d9md.} =
  cast[ptr ID3DXAllocateHierarchyVtbl](self.lpVtbl).DestroyFrame(self, pFrameToFree)
proc DestroyMeshContainer*(self: ptr ID3DXAllocateHierarchy, pMeshContainerToFree: LPD3DXMESHCONTAINER): HRESULT {.d9md.} =
  cast[ptr ID3DXAllocateHierarchyVtbl](self.lpVtbl).DestroyMeshContainer(self, pMeshContainerToFree)

# ID3DXLoadUserData
proc LoadTopLevelData*(self: ptr ID3DXLoadUserData, pXofChildData: LPD3DXFILEDATA): HRESULT {.d9md.} =
  cast[ptr ID3DXLoadUserDataVtbl](self.lpVtbl).LoadTopLevelData(self, pXofChildData)
proc LoadFrameChildData*(self: ptr ID3DXLoadUserData, pFrame: LPD3DXFRAME, pXofChildData: LPD3DXFILEDATA): HRESULT {.d9md.} =
  cast[ptr ID3DXLoadUserDataVtbl](self.lpVtbl).LoadFrameChildData(self, pFrame, pXofChildData)
proc LoadMeshChildData*(self: ptr ID3DXLoadUserData, pMeshContainer: LPD3DXMESHCONTAINER, pXofChildData: LPD3DXFILEDATA): HRESULT {.d9md.} =
  cast[ptr ID3DXLoadUserDataVtbl](self.lpVtbl).LoadMeshChildData(self, pMeshContainer, pXofChildData)

# ID3DXSaveUserData
proc AddFrameChildData*(self: ptr ID3DXSaveUserData, pFrame: ptr D3DXFRAME, pXofSave: LPD3DXFILESAVEOBJECT, pXofFrameData: LPD3DXFILESAVEDATA): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).AddFrameChildData(self, pFrame, pXofSave, pXofFrameData)
proc AddMeshChildData*(self: ptr ID3DXSaveUserData, pMeshContainer: ptr D3DXMESHCONTAINER, pXofSave: LPD3DXFILESAVEOBJECT, pXofMeshData: LPD3DXFILESAVEDATA): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).AddMeshChildData(self, pMeshContainer, pXofSave, pXofMeshData)
proc AddTopLevelDataObjectsPre*(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).AddTopLevelDataObjectsPre(self, pXofSave)
proc AddTopLevelDataObjectsPost*(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).AddTopLevelDataObjectsPost(self, pXofSave)
proc RegisterTemplates*(self: ptr ID3DXSaveUserData, pXFileApi: LPD3DXFILE): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).RegisterTemplates(self, pXFileApi)
proc SaveTemplates*(self: ptr ID3DXSaveUserData, pXofSave: LPD3DXFILESAVEOBJECT): HRESULT {.d9md.} =
  cast[ptr ID3DXSaveUserDataVtbl](self.lpVtbl).SaveTemplates(self, pXofSave)

# ID3DXAnimationSet
proc GetName*(self: ptr ID3DXAnimationSet): cstring {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetName(self)
proc GetPeriod*(self: ptr ID3DXAnimationSet): DOUBLE {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetPeriod(self)
proc GetPeriodicPosition*(self: ptr ID3DXAnimationSet, Position: DOUBLE): DOUBLE {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetPeriodicPosition(self, Position)
proc GetNumAnimations*(self: ptr ID3DXAnimationSet): UINT {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetNumAnimations(self)
proc GetAnimationNameByIndex*(self: ptr ID3DXAnimationSet, Index: UINT, ppName: ptr cstring): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetAnimationNameByIndex(self, Index, ppName)
proc GetAnimationIndexByName*(self: ptr ID3DXAnimationSet, pName: cstring, pIndex: ptr UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetAnimationIndexByName(self, pName, pIndex)
proc GetSRT*(self: ptr ID3DXAnimationSet, PeriodicPosition: DOUBLE, Animation: UINT, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetSRT(self, PeriodicPosition, Animation, pScale, pRotation, pTranslation)
proc GetCallback*(self: ptr ID3DXAnimationSet, Position: DOUBLE, Flags: DWORD, pCallbackPosition: ptr DOUBLE, ppCallbackData: ptr pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationSetVtbl](self.lpVtbl).GetCallback(self, Position, Flags, pCallbackPosition, ppCallbackData)

# ID3DXKeyframedAnimationSet
proc GetPlaybackType*(self: ptr ID3DXKeyframedAnimationSet): D3DXPLAYBACK_TYPE {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetPlaybackType(self)
proc GetSourceTicksPerSecond*(self: ptr ID3DXKeyframedAnimationSet): DOUBLE {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetSourceTicksPerSecond(self)
proc GetNumScaleKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetNumScaleKeys(self, Animation)
proc GetScaleKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pScaleKeys: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetScaleKeys(self, Animation, pScaleKeys)
proc GetScaleKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pScaleKey: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetScaleKey(self, Animation, Key, pScaleKey)
proc SetScaleKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pScaleKey: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).SetScaleKey(self, Animation, Key, pScaleKey)
proc GetNumRotationKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetNumRotationKeys(self, Animation)
proc GetRotationKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pRotationKeys: LPD3DXKEY_QUATERNION): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetRotationKeys(self, Animation, pRotationKeys)
proc GetRotationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pRotationKey: LPD3DXKEY_QUATERNION): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetRotationKey(self, Animation, Key, pRotationKey)
proc SetRotationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pRotationKey: LPD3DXKEY_QUATERNION): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).SetRotationKey(self, Animation, Key, pRotationKey)
proc GetNumTranslationKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT): UINT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetNumTranslationKeys(self, Animation)
proc GetTranslationKeys*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, pTranslationKeys: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetTranslationKeys(self, Animation, pTranslationKeys)
proc GetTranslationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pTranslationKey: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetTranslationKey(self, Animation, Key, pTranslationKey)
proc SetTranslationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT, pTranslationKey: LPD3DXKEY_VECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).SetTranslationKey(self, Animation, Key, pTranslationKey)
proc GetNumCallbackKeys*(self: ptr ID3DXKeyframedAnimationSet): UINT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetNumCallbackKeys(self)
proc GetCallbackKeys*(self: ptr ID3DXKeyframedAnimationSet, pCallbackKeys: LPD3DXKEY_CALLBACK): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetCallbackKeys(self, pCallbackKeys)
proc GetCallbackKey*(self: ptr ID3DXKeyframedAnimationSet, Key: UINT, pCallbackKey: LPD3DXKEY_CALLBACK): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).GetCallbackKey(self, Key, pCallbackKey)
proc SetCallbackKey*(self: ptr ID3DXKeyframedAnimationSet, Key: UINT, pCallbackKey: LPD3DXKEY_CALLBACK): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).SetCallbackKey(self, Key, pCallbackKey)
proc UnregisterScaleKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).UnregisterScaleKey(self, Animation, Key)
proc UnregisterRotationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).UnregisterRotationKey(self, Animation, Key)
proc UnregisterTranslationKey*(self: ptr ID3DXKeyframedAnimationSet, Animation: UINT, Key: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).UnregisterTranslationKey(self, Animation, Key)
proc RegisterAnimationSRTKeys*(self: ptr ID3DXKeyframedAnimationSet, pName: cstring, NumScaleKeys: UINT, NumRotationKeys: UINT, NumTranslationKeys: UINT, pScaleKeys: ptr D3DXKEY_VECTOR3, pRotationKeys: ptr D3DXKEY_QUATERNION, pTranslationKeys: ptr D3DXKEY_VECTOR3, pAnimationIndex: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).RegisterAnimationSRTKeys(self, pName, NumScaleKeys, NumRotationKeys, NumTranslationKeys, pScaleKeys, pRotationKeys, pTranslationKeys, pAnimationIndex)
proc Compress*(self: ptr ID3DXKeyframedAnimationSet, Flags: DWORD, Lossiness: float32, pHierarchy: LPD3DXFRAME, ppCompressedData: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).Compress(self, Flags, Lossiness, pHierarchy, ppCompressedData)
proc UnregisterAnimation*(self: ptr ID3DXKeyframedAnimationSet, Index: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXKeyframedAnimationSetVtbl](self.lpVtbl).UnregisterAnimation(self, Index)

# ID3DXCompressedAnimationSet
proc GetPlaybackType*(self: ptr ID3DXCompressedAnimationSet): D3DXPLAYBACK_TYPE {.d9md.} =
  cast[ptr ID3DXCompressedAnimationSetVtbl](self.lpVtbl).GetPlaybackType(self)
proc GetSourceTicksPerSecond*(self: ptr ID3DXCompressedAnimationSet): DOUBLE {.d9md.} =
  cast[ptr ID3DXCompressedAnimationSetVtbl](self.lpVtbl).GetSourceTicksPerSecond(self)
proc GetCompressedData*(self: ptr ID3DXCompressedAnimationSet, ppCompressedData: ptr LPD3DXBUFFER): HRESULT {.d9md.} =
  cast[ptr ID3DXCompressedAnimationSetVtbl](self.lpVtbl).GetCompressedData(self, ppCompressedData)
proc GetNumCallbackKeys*(self: ptr ID3DXCompressedAnimationSet): UINT {.d9md.} =
  cast[ptr ID3DXCompressedAnimationSetVtbl](self.lpVtbl).GetNumCallbackKeys(self)
proc GetCallbackKeys*(self: ptr ID3DXCompressedAnimationSet, pCallbackKeys: LPD3DXKEY_CALLBACK): HRESULT {.d9md.} =
  cast[ptr ID3DXCompressedAnimationSetVtbl](self.lpVtbl).GetCallbackKeys(self, pCallbackKeys)

# ID3DXAnimationCallbackHandler
proc HandleCallback*(self: ptr ID3DXAnimationCallbackHandler, Track: UINT, pCallbackData: pointer): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationCallbackHandlerVtbl](self.lpVtbl).HandleCallback(self, Track, pCallbackData)

# ID3DXAnimationController
proc GetMaxNumAnimationOutputs*(self: ptr ID3DXAnimationController): UINT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetMaxNumAnimationOutputs(self)
proc GetMaxNumAnimationSets*(self: ptr ID3DXAnimationController): UINT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetMaxNumAnimationSets(self)
proc GetMaxNumTracks*(self: ptr ID3DXAnimationController): UINT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetMaxNumTracks(self)
proc GetMaxNumEvents*(self: ptr ID3DXAnimationController): UINT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetMaxNumEvents(self)
proc RegisterAnimationOutput*(self: ptr ID3DXAnimationController, pName: cstring, pMatrix: ptr D3DXMATRIX, pScale: ptr D3DXVECTOR3, pRotation: ptr D3DXQUATERNION, pTranslation: ptr D3DXVECTOR3): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).RegisterAnimationOutput(self, pName, pMatrix, pScale, pRotation, pTranslation)
proc RegisterAnimationSet*(self: ptr ID3DXAnimationController, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).RegisterAnimationSet(self, pAnimSet)
proc UnregisterAnimationSet*(self: ptr ID3DXAnimationController, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).UnregisterAnimationSet(self, pAnimSet)
proc GetNumAnimationSets*(self: ptr ID3DXAnimationController): UINT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetNumAnimationSets(self)
proc GetAnimationSet*(self: ptr ID3DXAnimationController, Index: UINT, ppAnimationSet: ptr LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetAnimationSet(self, Index, ppAnimationSet)
proc GetAnimationSetByName*(self: ptr ID3DXAnimationController, szName: cstring, ppAnimationSet: ptr LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetAnimationSetByName(self, szName, ppAnimationSet)
proc AdvanceTime*(self: ptr ID3DXAnimationController, TimeDelta: DOUBLE, pCallbackHandler: LPD3DXANIMATIONCALLBACKHANDLER): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).AdvanceTime(self, TimeDelta, pCallbackHandler)
proc ResetTime*(self: ptr ID3DXAnimationController): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).ResetTime(self)
proc GetTime*(self: ptr ID3DXAnimationController): DOUBLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetTime(self)
proc SetTrackAnimationSet*(self: ptr ID3DXAnimationController, Track: UINT, pAnimSet: LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackAnimationSet(self, Track, pAnimSet)
proc GetTrackAnimationSet*(self: ptr ID3DXAnimationController, Track: UINT, ppAnimSet: ptr LPD3DXANIMATIONSET): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetTrackAnimationSet(self, Track, ppAnimSet)
proc SetTrackPriority*(self: ptr ID3DXAnimationController, Track: UINT, Priority: D3DXPRIORITY_TYPE): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackPriority(self, Track, Priority)
proc SetTrackSpeed*(self: ptr ID3DXAnimationController, Track: UINT, Speed: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackSpeed(self, Track, Speed)
proc SetTrackWeight*(self: ptr ID3DXAnimationController, Track: UINT, Weight: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackWeight(self, Track, Weight)
proc SetTrackPosition*(self: ptr ID3DXAnimationController, Track: UINT, Position: DOUBLE): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackPosition(self, Track, Position)
proc SetTrackEnable*(self: ptr ID3DXAnimationController, Track: UINT, Enable: BOOL): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackEnable(self, Track, Enable)
proc SetTrackDesc*(self: ptr ID3DXAnimationController, Track: UINT, pDesc: LPD3DXTRACK_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetTrackDesc(self, Track, pDesc)
proc GetTrackDesc*(self: ptr ID3DXAnimationController, Track: UINT, pDesc: LPD3DXTRACK_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetTrackDesc(self, Track, pDesc)
proc SetPriorityBlend*(self: ptr ID3DXAnimationController, BlendWeight: float32): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).SetPriorityBlend(self, BlendWeight)
proc GetPriorityBlend*(self: ptr ID3DXAnimationController): float32 {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetPriorityBlend(self)
proc KeyTrackSpeed*(self: ptr ID3DXAnimationController, Track: UINT, NewSpeed: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).KeyTrackSpeed(self, Track, NewSpeed, StartTime, Duration, Transition)
proc KeyTrackWeight*(self: ptr ID3DXAnimationController, Track: UINT, NewWeight: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).KeyTrackWeight(self, Track, NewWeight, StartTime, Duration, Transition)
proc KeyTrackPosition*(self: ptr ID3DXAnimationController, Track: UINT, NewPosition: DOUBLE, StartTime: DOUBLE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).KeyTrackPosition(self, Track, NewPosition, StartTime)
proc KeyTrackEnable*(self: ptr ID3DXAnimationController, Track: UINT, NewEnable: BOOL, StartTime: DOUBLE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).KeyTrackEnable(self, Track, NewEnable, StartTime)
proc KeyPriorityBlend*(self: ptr ID3DXAnimationController, NewBlendWeight: float32, StartTime: DOUBLE, Duration: DOUBLE, Transition: D3DXTRANSITION_TYPE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).KeyPriorityBlend(self, NewBlendWeight, StartTime, Duration, Transition)
proc UnkeyEvent*(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).UnkeyEvent(self, hEvent)
proc UnkeyAllTrackEvents*(self: ptr ID3DXAnimationController, Track: UINT): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).UnkeyAllTrackEvents(self, Track)
proc UnkeyAllPriorityBlends*(self: ptr ID3DXAnimationController): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).UnkeyAllPriorityBlends(self)
proc GetCurrentTrackEvent*(self: ptr ID3DXAnimationController, Track: UINT, EventType: D3DXEVENT_TYPE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetCurrentTrackEvent(self, Track, EventType)
proc GetCurrentPriorityBlend*(self: ptr ID3DXAnimationController): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetCurrentPriorityBlend(self)
proc GetUpcomingTrackEvent*(self: ptr ID3DXAnimationController, Track: UINT, hEvent: D3DXEVENTHANDLE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetUpcomingTrackEvent(self, Track, hEvent)
proc GetUpcomingPriorityBlend*(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): D3DXEVENTHANDLE {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetUpcomingPriorityBlend(self, hEvent)
proc ValidateEvent*(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).ValidateEvent(self, hEvent)
proc GetEventDesc*(self: ptr ID3DXAnimationController, hEvent: D3DXEVENTHANDLE, pDesc: LPD3DXEVENT_DESC): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).GetEventDesc(self, hEvent, pDesc)
proc CloneAnimationController*(self: ptr ID3DXAnimationController, MaxNumAnimationOutputs: UINT, MaxNumAnimationSets: UINT, MaxNumTracks: UINT, MaxNumEvents: UINT, ppAnimController: ptr LPD3DXANIMATIONCONTROLLER): HRESULT {.d9md.} =
  cast[ptr ID3DXAnimationControllerVtbl](self.lpVtbl).CloneAnimationController(self, MaxNumAnimationOutputs, MaxNumAnimationSets, MaxNumTracks, MaxNumEvents, ppAnimController)

when defined(nimHasQuirky):
  {.pop.}

# inline functions from d3dx9math.inl, they are not in the dll

import std/math

func D3DXToRadian*(degree: float32): float32 {.inline.} = degree * (D3DX_PI / 180'f32)
func D3DXToDegree*(radian: float32): float32 {.inline.} = radian * (180'f32 / D3DX_PI)

# 2D vector

func D3DXVec2LengthSq*(pV: ptr D3DXVECTOR2): float32 {.inline.} = pV.x * pV.x + pV.y * pV.y
func D3DXVec2Length*(pV: ptr D3DXVECTOR2): float32 {.inline.} = sqrt(D3DXVec2LengthSq(pV))
func D3DXVec2Dot*(pV1, pV2: ptr D3DXVECTOR2): float32 {.inline.} = pV1.x * pV2.x + pV1.y * pV2.y
func D3DXVec2CCW*(pV1, pV2: ptr D3DXVECTOR2): float32 {.inline.} =
  pV1.x * pV2.y - pV1.y * pV2.x

proc D3DXVec2Add*(pOut, pV1, pV2: ptr D3DXVECTOR2): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = pV1.x + pV2.x; pOut.y = pV1.y + pV2.y
  pOut
proc D3DXVec2Subtract*(pOut, pV1, pV2: ptr D3DXVECTOR2): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = pV1.x - pV2.x; pOut.y = pV1.y - pV2.y
  pOut
proc D3DXVec2Minimize*(pOut, pV1, pV2: ptr D3DXVECTOR2): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = min(pV1.x, pV2.x); pOut.y = min(pV1.y, pV2.y)
  pOut
proc D3DXVec2Maximize*(pOut, pV1, pV2: ptr D3DXVECTOR2): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = max(pV1.x, pV2.x); pOut.y = max(pV1.y, pV2.y)
  pOut
proc D3DXVec2Scale*(pOut, pV: ptr D3DXVECTOR2, s: float32): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = pV.x * s; pOut.y = pV.y * s
  pOut
proc D3DXVec2Lerp*(pOut, pV1, pV2: ptr D3DXVECTOR2, s: float32): ptr D3DXVECTOR2 {.inline, discardable.} =
  pOut.x = pV1.x + s * (pV2.x - pV1.x); pOut.y = pV1.y + s * (pV2.y - pV1.y)
  pOut

# 3D vector

func D3DXVec3LengthSq*(pV: ptr D3DXVECTOR3): float32 {.inline.} =
  pV.x * pV.x + pV.y * pV.y + pV.z * pV.z
func D3DXVec3Length*(pV: ptr D3DXVECTOR3): float32 {.inline.} = sqrt(D3DXVec3LengthSq(pV))
func D3DXVec3Dot*(pV1, pV2: ptr D3DXVECTOR3): float32 {.inline.} =
  pV1.x * pV2.x + pV1.y * pV2.y + pV1.z * pV2.z

proc D3DXVec3Cross*(pOut, pV1, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.inline, discardable.} =
  let v = D3DXVECTOR3(x: pV1.y * pV2.z - pV1.z * pV2.y,
                      y: pV1.z * pV2.x - pV1.x * pV2.z,
                      z: pV1.x * pV2.y - pV1.y * pV2.x)
  pOut[] = v
  pOut
proc D3DXVec3Add*(pOut, pV1, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = pV1.x + pV2.x; pOut.y = pV1.y + pV2.y; pOut.z = pV1.z + pV2.z
  pOut
proc D3DXVec3Subtract*(pOut, pV1, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = pV1.x - pV2.x; pOut.y = pV1.y - pV2.y; pOut.z = pV1.z - pV2.z
  pOut
proc D3DXVec3Minimize*(pOut, pV1, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = min(pV1.x, pV2.x); pOut.y = min(pV1.y, pV2.y); pOut.z = min(pV1.z, pV2.z)
  pOut
proc D3DXVec3Maximize*(pOut, pV1, pV2: ptr D3DXVECTOR3): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = max(pV1.x, pV2.x); pOut.y = max(pV1.y, pV2.y); pOut.z = max(pV1.z, pV2.z)
  pOut
proc D3DXVec3Scale*(pOut, pV: ptr D3DXVECTOR3, s: float32): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = pV.x * s; pOut.y = pV.y * s; pOut.z = pV.z * s
  pOut
proc D3DXVec3Lerp*(pOut, pV1, pV2: ptr D3DXVECTOR3, s: float32): ptr D3DXVECTOR3 {.inline, discardable.} =
  pOut.x = pV1.x + s * (pV2.x - pV1.x)
  pOut.y = pV1.y + s * (pV2.y - pV1.y)
  pOut.z = pV1.z + s * (pV2.z - pV1.z)
  pOut

# 4D vector

func D3DXVec4LengthSq*(pV: ptr D3DXVECTOR4): float32 {.inline.} =
  pV.x * pV.x + pV.y * pV.y + pV.z * pV.z + pV.w * pV.w
func D3DXVec4Length*(pV: ptr D3DXVECTOR4): float32 {.inline.} = sqrt(D3DXVec4LengthSq(pV))
func D3DXVec4Dot*(pV1, pV2: ptr D3DXVECTOR4): float32 {.inline.} =
  pV1.x * pV2.x + pV1.y * pV2.y + pV1.z * pV2.z + pV1.w * pV2.w

proc D3DXVec4Add*(pOut, pV1, pV2: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = pV1.x + pV2.x; pOut.y = pV1.y + pV2.y; pOut.z = pV1.z + pV2.z; pOut.w = pV1.w + pV2.w
  pOut
proc D3DXVec4Subtract*(pOut, pV1, pV2: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = pV1.x - pV2.x; pOut.y = pV1.y - pV2.y; pOut.z = pV1.z - pV2.z; pOut.w = pV1.w - pV2.w
  pOut
proc D3DXVec4Minimize*(pOut, pV1, pV2: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = min(pV1.x, pV2.x); pOut.y = min(pV1.y, pV2.y)
  pOut.z = min(pV1.z, pV2.z); pOut.w = min(pV1.w, pV2.w)
  pOut
proc D3DXVec4Maximize*(pOut, pV1, pV2: ptr D3DXVECTOR4): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = max(pV1.x, pV2.x); pOut.y = max(pV1.y, pV2.y)
  pOut.z = max(pV1.z, pV2.z); pOut.w = max(pV1.w, pV2.w)
  pOut
proc D3DXVec4Scale*(pOut, pV: ptr D3DXVECTOR4, s: float32): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = pV.x * s; pOut.y = pV.y * s; pOut.z = pV.z * s; pOut.w = pV.w * s
  pOut
proc D3DXVec4Lerp*(pOut, pV1, pV2: ptr D3DXVECTOR4, s: float32): ptr D3DXVECTOR4 {.inline, discardable.} =
  pOut.x = pV1.x + s * (pV2.x - pV1.x); pOut.y = pV1.y + s * (pV2.y - pV1.y)
  pOut.z = pV1.z + s * (pV2.z - pV1.z); pOut.w = pV1.w + s * (pV2.w - pV1.w)
  pOut

# 4x4 matrix

proc D3DXMatrixIdentity*(pOut: ptr D3DXMATRIX): ptr D3DXMATRIX {.inline, discardable.} =
  pOut.m = [[1'f32, 0, 0, 0], [0'f32, 1, 0, 0], [0'f32, 0, 1, 0], [0'f32, 0, 0, 1]]
  pOut
func D3DXMatrixIsIdentity*(pM: ptr D3DXMATRIX): BOOL {.inline.} =
  for r in 0 .. 3:
    for c in 0 .. 3:
      if pM.m[r][c] != (if r == c: 1'f32 else: 0'f32): return FALSE
  TRUE

# quaternion

func D3DXQuaternionLengthSq*(pQ: ptr D3DXQUATERNION): float32 {.inline.} =
  pQ.x * pQ.x + pQ.y * pQ.y + pQ.z * pQ.z + pQ.w * pQ.w
func D3DXQuaternionLength*(pQ: ptr D3DXQUATERNION): float32 {.inline.} =
  sqrt(D3DXQuaternionLengthSq(pQ))
func D3DXQuaternionDot*(pQ1, pQ2: ptr D3DXQUATERNION): float32 {.inline.} =
  pQ1.x * pQ2.x + pQ1.y * pQ2.y + pQ1.z * pQ2.z + pQ1.w * pQ2.w
proc D3DXQuaternionIdentity*(pOut: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.inline, discardable.} =
  pOut.x = 0; pOut.y = 0; pOut.z = 0; pOut.w = 1
  pOut
func D3DXQuaternionIsIdentity*(pQ: ptr D3DXQUATERNION): BOOL {.inline.} =
  BOOL(pQ.x == 0 and pQ.y == 0 and pQ.z == 0 and pQ.w == 1)
proc D3DXQuaternionConjugate*(pOut, pQ: ptr D3DXQUATERNION): ptr D3DXQUATERNION {.inline, discardable.} =
  pOut.x = -pQ.x; pOut.y = -pQ.y; pOut.z = -pQ.z; pOut.w = pQ.w
  pOut

# plane

func D3DXPlaneDot*(pP: ptr D3DXPLANE, pV: ptr D3DXVECTOR4): float32 {.inline.} =
  pP.a * pV.x + pP.b * pV.y + pP.c * pV.z + pP.d * pV.w
func D3DXPlaneDotCoord*(pP: ptr D3DXPLANE, pV: ptr D3DXVECTOR3): float32 {.inline.} =
  pP.a * pV.x + pP.b * pV.y + pP.c * pV.z + pP.d
func D3DXPlaneDotNormal*(pP: ptr D3DXPLANE, pV: ptr D3DXVECTOR3): float32 {.inline.} =
  pP.a * pV.x + pP.b * pV.y + pP.c * pV.z
proc D3DXPlaneScale*(pOut, pP: ptr D3DXPLANE, s: float32): ptr D3DXPLANE {.inline, discardable.} =
  pOut.a = pP.a * s; pOut.b = pP.b * s; pOut.c = pP.c * s; pOut.d = pP.d * s
  pOut

# color

proc D3DXColorNegative*(pOut, pC: ptr D3DXCOLOR): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = 1 - pC.r; pOut.g = 1 - pC.g; pOut.b = 1 - pC.b; pOut.a = pC.a
  pOut
proc D3DXColorAdd*(pOut, pC1, pC2: ptr D3DXCOLOR): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = pC1.r + pC2.r; pOut.g = pC1.g + pC2.g; pOut.b = pC1.b + pC2.b; pOut.a = pC1.a + pC2.a
  pOut
proc D3DXColorSubtract*(pOut, pC1, pC2: ptr D3DXCOLOR): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = pC1.r - pC2.r; pOut.g = pC1.g - pC2.g; pOut.b = pC1.b - pC2.b; pOut.a = pC1.a - pC2.a
  pOut
proc D3DXColorScale*(pOut, pC: ptr D3DXCOLOR, s: float32): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = pC.r * s; pOut.g = pC.g * s; pOut.b = pC.b * s; pOut.a = pC.a * s
  pOut
proc D3DXColorModulate*(pOut, pC1, pC2: ptr D3DXCOLOR): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = pC1.r * pC2.r; pOut.g = pC1.g * pC2.g; pOut.b = pC1.b * pC2.b; pOut.a = pC1.a * pC2.a
  pOut
proc D3DXColorLerp*(pOut, pC1, pC2: ptr D3DXCOLOR, s: float32): ptr D3DXCOLOR {.inline, discardable.} =
  pOut.r = pC1.r + s * (pC2.r - pC1.r); pOut.g = pC1.g + s * (pC2.g - pC1.g)
  pOut.b = pC1.b + s * (pC2.b - pC1.b); pOut.a = pC1.a + s * (pC2.a - pC1.a)
  pOut

# conversions

func toD3DCOLOR*(c: D3DXCOLOR): D3DCOLOR {.inline.} =
  func ch(f: float32): uint32 {.inline.} =
    if f >= 1: 255'u32 elif f <= 0: 0'u32 else: uint32(f * 255 + 0.5)
  cast[D3DCOLOR]((ch(c.a) shl 24) or (ch(c.r) shl 16) or (ch(c.g) shl 8) or ch(c.b))

func toD3DXCOLOR*(argb: D3DCOLOR): D3DXCOLOR {.inline.} =
  const f = 1'f32 / 255'f32
  let v = cast[uint32](argb)
  D3DXCOLOR(r: f * float32((v shr 16) and 0xFF), g: f * float32((v shr 8) and 0xFF),
            b: f * float32(v and 0xFF), a: f * float32((v shr 24) and 0xFF))

{.pop.}
