## Direct3D 9 bindings (d3d9.h, d3d9types.h, d3d9caps.h).
## Generated from the DirectX SDK (June 2010) headers, don't edit by hand.

when not defined(windows):
  {.error: "Direct3D 9 is only available on Windows.".}

from std/strutils import nil
import winim/lean
export lean

{.push hint[Name]: off, stackTrace: off, lineTrace: off.}

when defined(nimHasQuirky):
  {.pragma: d9m, inline, quirky.}
  {.pragma: d9md, inline, discardable, quirky.}
else:
  {.pragma: d9m, inline.}
  {.pragma: d9md, inline, discardable.}

type
  IUnknown* {.pure, inheritable.} = object
    lpVtbl*: pointer
  IUnknownVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IUnknown, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IUnknown): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IUnknown): ULONG {.stdcall, raises: [].}
  D3DCOLOR* = DWORD
  LPD3DVERTEXELEMENT9* = ptr D3DVERTEXELEMENT9
  LPD3DDEVINFO_RESOURCEMANAGER* = ptr D3DDEVINFO_RESOURCEMANAGER
  LPD3DDEVINFO_D3DVERTEXSTATS* = ptr D3DDEVINFO_D3DVERTEXSTATS
  LPD3DDEVINFO_VCACHE* = ptr D3DDEVINFO_VCACHE
  LPDIRECT3D9* = ptr IDirect3D9
  PDIRECT3D9* = ptr IDirect3D9
  LPDIRECT3DDEVICE9* = ptr IDirect3DDevice9
  PDIRECT3DDEVICE9* = ptr IDirect3DDevice9
  LPDIRECT3DSTATEBLOCK9* = ptr IDirect3DStateBlock9
  PDIRECT3DSTATEBLOCK9* = ptr IDirect3DStateBlock9
  LPDIRECT3DSWAPCHAIN9* = ptr IDirect3DSwapChain9
  PDIRECT3DSWAPCHAIN9* = ptr IDirect3DSwapChain9
  LPDIRECT3DRESOURCE9* = ptr IDirect3DResource9
  PDIRECT3DRESOURCE9* = ptr IDirect3DResource9
  LPDIRECT3DVERTEXDECLARATION9* = ptr IDirect3DVertexDeclaration9
  PDIRECT3DVERTEXDECLARATION9* = ptr IDirect3DVertexDeclaration9
  LPDIRECT3DVERTEXSHADER9* = ptr IDirect3DVertexShader9
  PDIRECT3DVERTEXSHADER9* = ptr IDirect3DVertexShader9
  LPDIRECT3DPIXELSHADER9* = ptr IDirect3DPixelShader9
  PDIRECT3DPIXELSHADER9* = ptr IDirect3DPixelShader9
  LPDIRECT3DBASETEXTURE9* = ptr IDirect3DBaseTexture9
  PDIRECT3DBASETEXTURE9* = ptr IDirect3DBaseTexture9
  LPDIRECT3DTEXTURE9* = ptr IDirect3DTexture9
  PDIRECT3DTEXTURE9* = ptr IDirect3DTexture9
  LPDIRECT3DVOLUMETEXTURE9* = ptr IDirect3DVolumeTexture9
  PDIRECT3DVOLUMETEXTURE9* = ptr IDirect3DVolumeTexture9
  LPDIRECT3DCUBETEXTURE9* = ptr IDirect3DCubeTexture9
  PDIRECT3DCUBETEXTURE9* = ptr IDirect3DCubeTexture9
  LPDIRECT3DVERTEXBUFFER9* = ptr IDirect3DVertexBuffer9
  PDIRECT3DVERTEXBUFFER9* = ptr IDirect3DVertexBuffer9
  LPDIRECT3DINDEXBUFFER9* = ptr IDirect3DIndexBuffer9
  PDIRECT3DINDEXBUFFER9* = ptr IDirect3DIndexBuffer9
  LPDIRECT3DSURFACE9* = ptr IDirect3DSurface9
  PDIRECT3DSURFACE9* = ptr IDirect3DSurface9
  LPDIRECT3DVOLUME9* = ptr IDirect3DVolume9
  PDIRECT3DVOLUME9* = ptr IDirect3DVolume9
  LPDIRECT3DQUERY9* = ptr IDirect3DQuery9
  PDIRECT3DQUERY9* = ptr IDirect3DQuery9
  LPDIRECT3D9EX* = ptr IDirect3D9Ex
  PDIRECT3D9EX* = ptr IDirect3D9Ex
  LPDIRECT3DDEVICE9EX* = ptr IDirect3DDevice9Ex
  PDIRECT3DDEVICE9EX* = ptr IDirect3DDevice9Ex
  LPDIRECT3DSWAPCHAIN9EX* = ptr IDirect3DSwapChain9Ex
  PDIRECT3DSWAPCHAIN9EX* = ptr IDirect3DSwapChain9Ex
  LPDIRECT3D9EXOVERLAYEXTENSION* = ptr IDirect3D9ExOverlayExtension
  PDIRECT3D9EXOVERLAYEXTENSION* = ptr IDirect3D9ExOverlayExtension
  LPDIRECT3DDEVICE9VIDEO* = ptr IDirect3DDevice9Video
  PDIRECT3DDEVICE9VIDEO* = ptr IDirect3DDevice9Video
  LPDIRECT3DAUTHENTICATEDCHANNEL9* = ptr IDirect3DAuthenticatedChannel9
  PDIRECT3DAUTHENTICATEDCHANNEL9* = ptr IDirect3DAuthenticatedChannel9
  LPDIRECT3DCRYPTOSESSION9* = ptr IDirect3DCryptoSession9
  PDIRECT3DCRYPTOSESSION9* = ptr IDirect3DCryptoSession9

  D3DLIGHTTYPE* = distinct int32
  D3DSHADEMODE* = distinct int32
  D3DFILLMODE* = distinct int32
  D3DBLEND* = distinct int32
  D3DBLENDOP* = distinct int32
  D3DTEXTUREADDRESS* = distinct int32
  D3DCULL* = distinct int32
  D3DCMPFUNC* = distinct int32
  D3DSTENCILOP* = distinct int32
  D3DFOGMODE* = distinct int32
  D3DZBUFFERTYPE* = distinct int32
  D3DPRIMITIVETYPE* = distinct int32
  D3DTRANSFORMSTATETYPE* = distinct int32
  D3DRENDERSTATETYPE* = distinct int32
  D3DMATERIALCOLORSOURCE* = distinct int32
  D3DTEXTURESTAGESTATETYPE* = distinct int32
  D3DSAMPLERSTATETYPE* = distinct int32
  D3DTEXTUREOP* = distinct int32
  D3DTEXTUREFILTERTYPE* = distinct int32
  D3DDECLUSAGE* = distinct int32
  D3DDECLMETHOD* = distinct int32
  D3DDECLTYPE* = distinct int32
  D3DSHADER_INSTRUCTION_OPCODE_TYPE* = distinct int32
  D3DSHADER_COMPARISON* = distinct int32
  D3DSAMPLER_TEXTURE_TYPE* = distinct int32
  D3DSHADER_PARAM_REGISTER_TYPE* = distinct int32
  D3DSHADER_MISCTYPE_OFFSETS* = distinct int32
  D3DVS_RASTOUT_OFFSETS* = distinct int32
  D3DVS_ADDRESSMODE_TYPE* = distinct int32
  D3DSHADER_ADDRESSMODE_TYPE* = distinct int32
  D3DSHADER_PARAM_SRCMOD_TYPE* = distinct int32
  D3DBASISTYPE* = distinct int32
  D3DDEGREETYPE* = distinct int32
  D3DPATCHEDGESTYLE* = distinct int32
  D3DSTATEBLOCKTYPE* = distinct int32
  D3DVERTEXBLENDFLAGS* = distinct int32
  D3DTEXTURETRANSFORMFLAGS* = distinct int32
  D3DDEVTYPE* = distinct int32
  D3DMULTISAMPLE_TYPE* = distinct int32
  D3DFORMAT* = distinct int32
  D3DSWAPEFFECT* = distinct int32
  D3DPOOL* = distinct int32
  D3DBACKBUFFER_TYPE* = distinct int32
  D3DRESOURCETYPE* = distinct int32
  D3DCUBEMAP_FACES* = distinct int32
  D3DDEBUGMONITORTOKENS* = distinct int32
  D3DQUERYTYPE* = distinct int32
  D3DCOMPOSERECTSOP* = distinct int32
  D3DSCANLINEORDERING* = distinct int32
  D3DDISPLAYROTATION* = distinct int32
  D3DAUTHENTICATEDCHANNELTYPE* = distinct int32
  D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE* = distinct int32
  D3DBUSTYPE* = distinct int32

  D3DVECTOR* {.pure, bycopy.} = object
    x*: float32
    y*: float32
    z*: float32

  D3DCOLORVALUE* {.pure, bycopy.} = object
    r*: float32
    g*: float32
    b*: float32
    a*: float32

  D3DRECT* {.pure, bycopy.} = object
    x1*: LONG
    y1*: LONG
    x2*: LONG
    y2*: LONG

  D3DMATRIX* {.pure, bycopy.} = object
    m*: array[4, array[4, float32]]   ## m[row][col], _11 is m[0][0]

  D3DVIEWPORT9* {.pure, bycopy.} = object
    X*: DWORD
    Y*: DWORD
    Width*: DWORD
    Height*: DWORD
    MinZ*: float32
    MaxZ*: float32

  D3DCLIPSTATUS9* {.pure, bycopy.} = object
    ClipUnion*: DWORD
    ClipIntersection*: DWORD

  D3DMATERIAL9* {.pure, bycopy.} = object
    Diffuse*: D3DCOLORVALUE
    Ambient*: D3DCOLORVALUE
    Specular*: D3DCOLORVALUE
    Emissive*: D3DCOLORVALUE
    Power*: float32

  D3DLIGHT9* {.pure, bycopy.} = object
    Type*: D3DLIGHTTYPE
    Diffuse*: D3DCOLORVALUE
    Specular*: D3DCOLORVALUE
    Ambient*: D3DCOLORVALUE
    Position*: D3DVECTOR
    Direction*: D3DVECTOR
    Range*: float32
    Falloff*: float32
    Attenuation0*: float32
    Attenuation1*: float32
    Attenuation2*: float32
    Theta*: float32
    Phi*: float32

  D3DVERTEXELEMENT9* {.pure, bycopy.} = object
    Stream*: WORD
    Offset*: WORD
    Type*: BYTE
    Method*: BYTE
    Usage*: BYTE
    UsageIndex*: BYTE

  D3DDISPLAYMODE* {.pure, bycopy.} = object
    Width*: UINT
    Height*: UINT
    RefreshRate*: UINT
    Format*: D3DFORMAT

  D3DDEVICE_CREATION_PARAMETERS* {.pure, bycopy.} = object
    AdapterOrdinal*: UINT
    DeviceType*: D3DDEVTYPE
    hFocusWindow*: HWND
    BehaviorFlags*: DWORD

  D3DPRESENT_PARAMETERS* {.pure, bycopy.} = object
    BackBufferWidth*: UINT
    BackBufferHeight*: UINT
    BackBufferFormat*: D3DFORMAT
    BackBufferCount*: UINT
    MultiSampleType*: D3DMULTISAMPLE_TYPE
    MultiSampleQuality*: DWORD
    SwapEffect*: D3DSWAPEFFECT
    hDeviceWindow*: HWND
    Windowed*: BOOL
    EnableAutoDepthStencil*: BOOL
    AutoDepthStencilFormat*: D3DFORMAT
    Flags*: DWORD
    FullScreen_RefreshRateInHz*: UINT
    PresentationInterval*: UINT

  D3DGAMMARAMP* {.pure, bycopy.} = object
    red*: array[256, WORD]
    green*: array[256, WORD]
    blue*: array[256, WORD]

  D3DVERTEXBUFFER_DESC* {.pure, bycopy.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL
    Size*: UINT
    FVF*: DWORD

  D3DINDEXBUFFER_DESC* {.pure, bycopy.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL
    Size*: UINT

  D3DSURFACE_DESC* {.pure, bycopy.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL
    MultiSampleType*: D3DMULTISAMPLE_TYPE
    MultiSampleQuality*: DWORD
    Width*: UINT
    Height*: UINT

  D3DVOLUME_DESC* {.pure, bycopy.} = object
    Format*: D3DFORMAT
    Type*: D3DRESOURCETYPE
    Usage*: DWORD
    Pool*: D3DPOOL
    Width*: UINT
    Height*: UINT
    Depth*: UINT

  D3DLOCKED_RECT* {.pure, bycopy.} = object
    Pitch*: INT
    pBits*: pointer

  D3DBOX* {.pure, bycopy.} = object
    Left*: UINT
    Top*: UINT
    Right*: UINT
    Bottom*: UINT
    Front*: UINT
    Back*: UINT

  D3DLOCKED_BOX* {.pure, bycopy.} = object
    RowPitch*: INT
    SlicePitch*: INT
    pBits*: pointer

  D3DRANGE* {.pure, bycopy.} = object
    Offset*: UINT
    Size*: UINT

  D3DRECTPATCH_INFO* {.pure, bycopy.} = object
    StartVertexOffsetWidth*: UINT
    StartVertexOffsetHeight*: UINT
    Width*: UINT
    Height*: UINT
    Stride*: UINT
    Basis*: D3DBASISTYPE
    Degree*: D3DDEGREETYPE

  D3DTRIPATCH_INFO* {.pure, bycopy.} = object
    StartVertexOffset*: UINT
    NumVertices*: UINT
    Basis*: D3DBASISTYPE
    Degree*: D3DDEGREETYPE

  D3DADAPTER_IDENTIFIER9* {.pure, bycopy.} = object
    Driver*: array[512, char]
    Description*: array[512, char]
    DeviceName*: array[32, char]
    DriverVersion*: LARGE_INTEGER
    VendorId*: DWORD
    DeviceId*: DWORD
    SubSysId*: DWORD
    Revision*: DWORD
    DeviceIdentifier*: GUID
    WHQLLevel*: DWORD

  D3DRASTER_STATUS* {.pure, bycopy.} = object
    InVBlank*: BOOL
    ScanLine*: UINT

  D3DRESOURCESTATS* {.pure, bycopy.} = object
    bThrashing*: BOOL
    ApproxBytesDownloaded*: DWORD
    NumEvicts*: DWORD
    NumVidCreates*: DWORD
    LastPri*: DWORD
    NumUsed*: DWORD
    NumUsedInVidMem*: DWORD
    WorkingSet*: DWORD
    WorkingSetBytes*: DWORD
    TotalManaged*: DWORD
    TotalBytes*: DWORD

  D3DDEVINFO_RESOURCEMANAGER* {.pure, bycopy.} = object
    stats*: array[8, D3DRESOURCESTATS]

  D3DDEVINFO_D3DVERTEXSTATS* {.pure, bycopy.} = object
    NumRenderedTriangles*: DWORD
    NumExtraClippingTriangles*: DWORD

  D3DDEVINFO_VCACHE* {.pure, bycopy.} = object
    Pattern*: DWORD
    OptMethod*: DWORD
    CacheSize*: DWORD
    MagicNumber*: DWORD

  D3DDEVINFO_D3D9PIPELINETIMINGS* {.pure, bycopy.} = object
    VertexProcessingTimePercent*: float32
    PixelProcessingTimePercent*: float32
    OtherGPUProcessingTimePercent*: float32
    GPUIdleTimePercent*: float32

  D3DDEVINFO_D3D9INTERFACETIMINGS* {.pure, bycopy.} = object
    WaitingForGPUToUseApplicationResourceTimePercent*: float32
    WaitingForGPUToAcceptMoreCommandsTimePercent*: float32
    WaitingForGPUToStayWithinLatencyTimePercent*: float32
    WaitingForGPUExclusiveResourceTimePercent*: float32
    WaitingForGPUOtherTimePercent*: float32

  D3DDEVINFO_D3D9STAGETIMINGS* {.pure, bycopy.} = object
    MemoryProcessingPercent*: float32
    ComputationProcessingPercent*: float32

  D3DDEVINFO_D3D9BANDWIDTHTIMINGS* {.pure, bycopy.} = object
    MaxBandwidthUtilized*: float32
    FrontEndUploadMemoryUtilizedPercent*: float32
    VertexRateUtilizedPercent*: float32
    TriangleSetupRateUtilizedPercent*: float32
    FillRateUtilizedPercent*: float32

  D3DDEVINFO_D3D9CACHEUTILIZATION* {.pure, bycopy.} = object
    TextureCacheHitRate*: float32
    PostTransformVertexCacheHitRate*: float32

  D3DMEMORYPRESSURE* {.pure, bycopy.} = object
    BytesEvictedFromProcess*: uint64
    SizeOfInefficientAllocation*: uint64
    LevelOfEfficiency*: DWORD

  D3DCOMPOSERECTDESC* {.pure, bycopy.} = object
    X*: uint16
    Y*: uint16
    Width*: uint16
    Height*: uint16

  D3DCOMPOSERECTDESTINATION* {.pure, bycopy.} = object
    SrcRectIndex*: uint16
    Reserved*: uint16
    X*: int16
    Y*: int16

  D3DPRESENTSTATS* {.pure, bycopy.} = object
    PresentCount*: UINT
    PresentRefreshCount*: UINT
    SyncRefreshCount*: UINT
    SyncQPCTime*: LARGE_INTEGER
    SyncGPUTime*: LARGE_INTEGER

  D3DDISPLAYMODEEX* {.pure, bycopy.} = object
    Size*: UINT
    Width*: UINT
    Height*: UINT
    RefreshRate*: UINT
    Format*: D3DFORMAT
    ScanLineOrdering*: D3DSCANLINEORDERING

  D3DDISPLAYMODEFILTER* {.pure, bycopy.} = object
    Size*: UINT
    Format*: D3DFORMAT
    ScanLineOrdering*: D3DSCANLINEORDERING

  D3D_OMAC* {.pure, bycopy.} = object
    Omac*: array[16, BYTE]

  D3DAUTHENTICATEDCHANNEL_QUERY_INPUT* {.pure, bycopy.} = object
    QueryType*: GUID
    hChannel*: HANDLE
    SequenceNumber*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT* {.pure, bycopy.} = object
    omac*: D3D_OMAC
    QueryType*: GUID
    hChannel*: HANDLE
    SequenceNumber*: UINT
    ReturnCode*: HRESULT

  D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS* {.pure, bycopy.} = object
    Value*: UINT   ## bit 0 ProtectionEnabled, bit 1 OverlayOrFullscreenRequired

  D3DAUTHENTICATEDCHANNEL_QUERYPROTECTION_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    ProtectionFlags*: D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS

  D3DAUTHENTICATEDCHANNEL_QUERYCHANNELTYPE_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    ChannelType*: D3DAUTHENTICATEDCHANNELTYPE

  D3DAUTHENTICATEDCHANNEL_QUERYDEVICEHANDLE_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    DeviceHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_INPUT* {.pure, bycopy.} = object
    Input*: D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
    DXVA2DecodeHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    DXVA2DecodeHandle*: HANDLE
    CryptoSessionHandle*: HANDLE
    DeviceHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESSCOUNT_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    NumRestrictedSharedResourceProcesses*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_INPUT* {.pure, bycopy.} = object
    Input*: D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
    ProcessIndex*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    ProcessIndex*: UINT
    ProcessIdentifer*: D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE
    ProcessHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_QUERYUNRESTRICTEDPROTECTEDSHAREDRESOURCECOUNT_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    NumUnrestrictedProtectedSharedResources*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_INPUT* {.pure, bycopy.} = object
    Input*: D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
    DeviceHandle*: HANDLE
    CryptoSessionHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    DeviceHandle*: HANDLE
    CryptoSessionHandle*: HANDLE
    NumOutputIDs*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_INPUT* {.pure, bycopy.} = object
    Input*: D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
    DeviceHandle*: HANDLE
    CryptoSessionHandle*: HANDLE
    OutputIDIndex*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    DeviceHandle*: HANDLE
    CryptoSessionHandle*: HANDLE
    OutputIDIndex*: UINT
    OutputID*: uint64

  D3DAUTHENTICATEDCHANNEL_QUERYINFOBUSTYPE_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    BusType*: D3DBUSTYPE
    bAccessibleInContiguousBlocks*: BOOL
    bAccessibleInNonContiguousBlocks*: BOOL

  D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUIDCOUNT_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    NumEncryptionGuids*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_INPUT* {.pure, bycopy.} = object
    Input*: D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
    EncryptionGuidIndex*: UINT

  D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    EncryptionGuidIndex*: UINT
    EncryptionGuid*: GUID

  D3DAUTHENTICATEDCHANNEL_QUERYUNCOMPRESSEDENCRYPTIONLEVEL_OUTPUT* {.pure, bycopy.} = object
    Output*: D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
    EncryptionGuid*: GUID

  D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT* {.pure, bycopy.} = object
    omac*: D3D_OMAC
    ConfigureType*: GUID
    hChannel*: HANDLE
    SequenceNumber*: UINT

  D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT* {.pure, bycopy.} = object
    omac*: D3D_OMAC
    ConfigureType*: GUID
    hChannel*: HANDLE
    SequenceNumber*: UINT
    ReturnCode*: HRESULT

  D3DAUTHENTICATEDCHANNEL_CONFIGUREINITIALIZE* {.pure, bycopy.} = object
    Parameters*: D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
    StartSequenceQuery*: UINT
    StartSequenceConfigure*: UINT

  D3DAUTHENTICATEDCHANNEL_CONFIGUREPROTECTION* {.pure, bycopy.} = object
    Parameters*: D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
    Protections*: D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS

  D3DAUTHENTICATEDCHANNEL_CONFIGURECRYPTOSESSION* {.pure, bycopy.} = object
    Parameters*: D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
    DXVA2DecodeHandle*: HANDLE
    CryptoSessionHandle*: HANDLE
    DeviceHandle*: HANDLE

  D3DAUTHENTICATEDCHANNEL_CONFIGURESHAREDRESOURCE* {.pure, bycopy.} = object
    Parameters*: D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
    ProcessIdentiferType*: D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE
    ProcessHandle*: HANDLE
    AllowAccess*: BOOL

  D3DAUTHENTICATEDCHANNEL_CONFIGUREUNCOMPRESSEDENCRYPTION* {.pure, bycopy.} = object
    Parameters*: D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
    EncryptionGuid*: GUID

  D3DENCRYPTED_BLOCK_INFO* {.pure, bycopy.} = object
    NumEncryptedBytesAtBeginning*: UINT
    NumBytesInSkipPattern*: UINT
    NumBytesInEncryptPattern*: UINT

  D3DAES_CTR_IV* {.pure, bycopy.} = object
    IV*: uint64
    Count*: uint64

  D3DVSHADERCAPS2_0* {.pure, bycopy.} = object
    Caps*: DWORD
    DynamicFlowControlDepth*: INT
    NumTemps*: INT
    StaticFlowControlDepth*: INT

  D3DPSHADERCAPS2_0* {.pure, bycopy.} = object
    Caps*: DWORD
    DynamicFlowControlDepth*: INT
    NumTemps*: INT
    StaticFlowControlDepth*: INT
    NumInstructionSlots*: INT

  D3DOVERLAYCAPS* {.pure, bycopy.} = object
    Caps*: UINT
    MaxOverlayDisplayWidth*: UINT
    MaxOverlayDisplayHeight*: UINT

  D3DCONTENTPROTECTIONCAPS* {.pure, bycopy.} = object
    Caps*: DWORD
    KeyExchangeType*: GUID
    BufferAlignmentStart*: UINT
    BlockAlignmentSize*: UINT
    ProtectedMemorySize*: uint64

  D3DCAPS9* {.pure, bycopy.} = object
    DeviceType*: D3DDEVTYPE
    AdapterOrdinal*: UINT
    Caps*: DWORD
    Caps2*: DWORD
    Caps3*: DWORD
    PresentationIntervals*: DWORD
    CursorCaps*: DWORD
    DevCaps*: DWORD
    PrimitiveMiscCaps*: DWORD
    RasterCaps*: DWORD
    ZCmpCaps*: DWORD
    SrcBlendCaps*: DWORD
    DestBlendCaps*: DWORD
    AlphaCmpCaps*: DWORD
    ShadeCaps*: DWORD
    TextureCaps*: DWORD
    TextureFilterCaps*: DWORD
    CubeTextureFilterCaps*: DWORD
    VolumeTextureFilterCaps*: DWORD
    TextureAddressCaps*: DWORD
    VolumeTextureAddressCaps*: DWORD
    LineCaps*: DWORD
    MaxTextureWidth*: DWORD
    MaxTextureHeight*: DWORD
    MaxVolumeExtent*: DWORD
    MaxTextureRepeat*: DWORD
    MaxTextureAspectRatio*: DWORD
    MaxAnisotropy*: DWORD
    MaxVertexW*: float32
    GuardBandLeft*: float32
    GuardBandTop*: float32
    GuardBandRight*: float32
    GuardBandBottom*: float32
    ExtentsAdjust*: float32
    StencilCaps*: DWORD
    FVFCaps*: DWORD
    TextureOpCaps*: DWORD
    MaxTextureBlendStages*: DWORD
    MaxSimultaneousTextures*: DWORD
    VertexProcessingCaps*: DWORD
    MaxActiveLights*: DWORD
    MaxUserClipPlanes*: DWORD
    MaxVertexBlendMatrices*: DWORD
    MaxVertexBlendMatrixIndex*: DWORD
    MaxPointSize*: float32
    MaxPrimitiveCount*: DWORD
    MaxVertexIndex*: DWORD
    MaxStreams*: DWORD
    MaxStreamStride*: DWORD
    VertexShaderVersion*: DWORD
    MaxVertexShaderConst*: DWORD
    PixelShaderVersion*: DWORD
    PixelShader1xMaxValue*: float32
    DevCaps2*: DWORD
    MaxNpatchTessellationLevel*: float32
    Reserved5*: DWORD
    MasterAdapterOrdinal*: UINT
    AdapterOrdinalInGroup*: UINT
    NumberOfAdaptersInGroup*: UINT
    DeclTypes*: DWORD
    NumSimultaneousRTs*: DWORD
    StretchRectFilterCaps*: DWORD
    VS20Caps*: D3DVSHADERCAPS2_0
    PS20Caps*: D3DPSHADERCAPS2_0
    VertexTextureFilterCaps*: DWORD
    MaxVShaderInstructionsExecuted*: DWORD
    MaxPShaderInstructionsExecuted*: DWORD
    MaxVertexShader30InstructionSlots*: DWORD
    MaxPixelShader30InstructionSlots*: DWORD

  IDirect3D9* = object of IUnknown
  IDirect3D9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3D9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3D9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3D9): ULONG {.stdcall, raises: [].}
    RegisterSoftwareDevice*: proc(self: ptr IDirect3D9, pInitializeFunction: pointer): HRESULT {.stdcall, raises: [].}
    GetAdapterCount*: proc(self: ptr IDirect3D9): UINT {.stdcall, raises: [].}
    GetAdapterIdentifier*: proc(self: ptr IDirect3D9, Adapter: UINT, Flags: DWORD, pIdentifier: ptr D3DADAPTER_IDENTIFIER9): HRESULT {.stdcall, raises: [].}
    GetAdapterModeCount*: proc(self: ptr IDirect3D9, Adapter: UINT, Format: D3DFORMAT): UINT {.stdcall, raises: [].}
    EnumAdapterModes*: proc(self: ptr IDirect3D9, Adapter: UINT, Format: D3DFORMAT, Mode: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetAdapterDisplayMode*: proc(self: ptr IDirect3D9, Adapter: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    CheckDeviceType*: proc(self: ptr IDirect3D9, Adapter: UINT, DevType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, BackBufferFormat: D3DFORMAT, bWindowed: BOOL): HRESULT {.stdcall, raises: [].}
    CheckDeviceFormat*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, Usage: DWORD, RType: D3DRESOURCETYPE, CheckFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    CheckDeviceMultiSampleType*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, SurfaceFormat: D3DFORMAT, Windowed: BOOL, MultiSampleType: D3DMULTISAMPLE_TYPE, pQualityLevels: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CheckDepthStencilMatch*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, RenderTargetFormat: D3DFORMAT, DepthStencilFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    CheckDeviceFormatConversion*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, SourceFormat: D3DFORMAT, TargetFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    GetDeviceCaps*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, pCaps: ptr D3DCAPS9): HRESULT {.stdcall, raises: [].}
    GetAdapterMonitor*: proc(self: ptr IDirect3D9, Adapter: UINT): HMONITOR {.stdcall, raises: [].}
    CreateDevice*: proc(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}

  IDirect3DDevice9* = object of IUnknown
  IDirect3DDevice9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DDevice9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DDevice9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DDevice9): ULONG {.stdcall, raises: [].}
    TestCooperativeLevel*: proc(self: ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetAvailableTextureMem*: proc(self: ptr IDirect3DDevice9): UINT {.stdcall, raises: [].}
    EvictManagedResources*: proc(self: ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetDirect3D*: proc(self: ptr IDirect3DDevice9, ppD3D9: ptr ptr IDirect3D9): HRESULT {.stdcall, raises: [].}
    GetDeviceCaps*: proc(self: ptr IDirect3DDevice9, pCaps: ptr D3DCAPS9): HRESULT {.stdcall, raises: [].}
    GetDisplayMode*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetCreationParameters*: proc(self: ptr IDirect3DDevice9, pParameters: ptr D3DDEVICE_CREATION_PARAMETERS): HRESULT {.stdcall, raises: [].}
    SetCursorProperties*: proc(self: ptr IDirect3DDevice9, XHotSpot: UINT, YHotSpot: UINT, pCursorBitmap: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    SetCursorPosition*: proc(self: ptr IDirect3DDevice9, X: int32, Y: int32, Flags: DWORD) {.stdcall, raises: [].}
    ShowCursor*: proc(self: ptr IDirect3DDevice9, bShow: BOOL): BOOL {.stdcall, raises: [].}
    CreateAdditionalSwapChain*: proc(self: ptr IDirect3DDevice9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.stdcall, raises: [].}
    GetSwapChain*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.stdcall, raises: [].}
    GetNumberOfSwapChains*: proc(self: ptr IDirect3DDevice9): UINT {.stdcall, raises: [].}
    Reset*: proc(self: ptr IDirect3DDevice9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall, raises: [].}
    Present*: proc(self: ptr IDirect3DDevice9, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.stdcall, raises: [].}
    GetBackBuffer*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRasterStatus*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.stdcall, raises: [].}
    SetDialogBoxMode*: proc(self: ptr IDirect3DDevice9, bEnableDialogs: BOOL): HRESULT {.stdcall, raises: [].}
    SetGammaRamp*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, Flags: DWORD, pRamp: ptr D3DGAMMARAMP) {.stdcall, raises: [].}
    GetGammaRamp*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, pRamp: ptr D3DGAMMARAMP) {.stdcall, raises: [].}
    CreateTexture*: proc(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppTexture: ptr ptr IDirect3DTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateVolumeTexture*: proc(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Depth: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppVolumeTexture: ptr ptr IDirect3DVolumeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateCubeTexture*: proc(self: ptr IDirect3DDevice9, EdgeLength: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppCubeTexture: ptr ptr IDirect3DCubeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateVertexBuffer*: proc(self: ptr IDirect3DDevice9, Length: UINT, Usage: DWORD, FVF: DWORD, Pool: D3DPOOL, ppVertexBuffer: ptr ptr IDirect3DVertexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateIndexBuffer*: proc(self: ptr IDirect3DDevice9, Length: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppIndexBuffer: ptr ptr IDirect3DIndexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateRenderTarget*: proc(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Lockable: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateDepthStencilSurface*: proc(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Discard: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    UpdateSurface*: proc(self: ptr IDirect3DDevice9, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestinationSurface: ptr IDirect3DSurface9, pDestPoint: ptr POINT): HRESULT {.stdcall, raises: [].}
    UpdateTexture*: proc(self: ptr IDirect3DDevice9, pSourceTexture: ptr IDirect3DBaseTexture9, pDestinationTexture: ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    GetRenderTargetData*: proc(self: ptr IDirect3DDevice9, pRenderTarget: ptr IDirect3DSurface9, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetFrontBufferData*: proc(self: ptr IDirect3DDevice9, iSwapChain: UINT, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    StretchRect*: proc(self: ptr IDirect3DDevice9, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestSurface: ptr IDirect3DSurface9, pDestRect: ptr RECT, Filter: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    ColorFill*: proc(self: ptr IDirect3DDevice9, pSurface: ptr IDirect3DSurface9, pRect: ptr RECT, color: D3DCOLOR): HRESULT {.stdcall, raises: [].}
    CreateOffscreenPlainSurface*: proc(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, Pool: D3DPOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    SetRenderTarget*: proc(self: ptr IDirect3DDevice9, RenderTargetIndex: DWORD, pRenderTarget: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRenderTarget*: proc(self: ptr IDirect3DDevice9, RenderTargetIndex: DWORD, ppRenderTarget: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    SetDepthStencilSurface*: proc(self: ptr IDirect3DDevice9, pNewZStencil: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetDepthStencilSurface*: proc(self: ptr IDirect3DDevice9, ppZStencilSurface: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    BeginScene*: proc(self: ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    EndScene*: proc(self: ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    Clear*: proc(self: ptr IDirect3DDevice9, Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: D3DCOLOR, Z: float32, Stencil: DWORD): HRESULT {.stdcall, raises: [].}
    SetTransform*: proc(self: ptr IDirect3DDevice9, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    GetTransform*: proc(self: ptr IDirect3DDevice9, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    MultiplyTransform*: proc(self: ptr IDirect3DDevice9, arg0: D3DTRANSFORMSTATETYPE, arg1: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    SetViewport*: proc(self: ptr IDirect3DDevice9, pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall, raises: [].}
    GetViewport*: proc(self: ptr IDirect3DDevice9, pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall, raises: [].}
    SetMaterial*: proc(self: ptr IDirect3DDevice9, pMaterial: ptr D3DMATERIAL9): HRESULT {.stdcall, raises: [].}
    GetMaterial*: proc(self: ptr IDirect3DDevice9, pMaterial: ptr D3DMATERIAL9): HRESULT {.stdcall, raises: [].}
    SetLight*: proc(self: ptr IDirect3DDevice9, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.stdcall, raises: [].}
    GetLight*: proc(self: ptr IDirect3DDevice9, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.stdcall, raises: [].}
    LightEnable*: proc(self: ptr IDirect3DDevice9, Index: DWORD, Enable: BOOL): HRESULT {.stdcall, raises: [].}
    GetLightEnable*: proc(self: ptr IDirect3DDevice9, Index: DWORD, pEnable: ptr BOOL): HRESULT {.stdcall, raises: [].}
    SetClipPlane*: proc(self: ptr IDirect3DDevice9, Index: DWORD, pPlane: ptr float32): HRESULT {.stdcall, raises: [].}
    GetClipPlane*: proc(self: ptr IDirect3DDevice9, Index: DWORD, pPlane: ptr float32): HRESULT {.stdcall, raises: [].}
    SetRenderState*: proc(self: ptr IDirect3DDevice9, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    GetRenderState*: proc(self: ptr IDirect3DDevice9, State: D3DRENDERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CreateStateBlock*: proc(self: ptr IDirect3DDevice9, Type: D3DSTATEBLOCKTYPE, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}
    BeginStateBlock*: proc(self: ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    EndStateBlock*: proc(self: ptr IDirect3DDevice9, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}
    SetClipStatus*: proc(self: ptr IDirect3DDevice9, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.stdcall, raises: [].}
    GetClipStatus*: proc(self: ptr IDirect3DDevice9, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.stdcall, raises: [].}
    GetTexture*: proc(self: ptr IDirect3DDevice9, Stage: DWORD, ppTexture: ptr ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr IDirect3DDevice9, Stage: DWORD, pTexture: ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    GetTextureStageState*: proc(self: ptr IDirect3DDevice9, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetTextureStageState*: proc(self: ptr IDirect3DDevice9, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    GetSamplerState*: proc(self: ptr IDirect3DDevice9, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetSamplerState*: proc(self: ptr IDirect3DDevice9, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    ValidateDevice*: proc(self: ptr IDirect3DDevice9, pNumPasses: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetPaletteEntries*: proc(self: ptr IDirect3DDevice9, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.stdcall, raises: [].}
    GetPaletteEntries*: proc(self: ptr IDirect3DDevice9, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.stdcall, raises: [].}
    SetCurrentTexturePalette*: proc(self: ptr IDirect3DDevice9, PaletteNumber: UINT): HRESULT {.stdcall, raises: [].}
    GetCurrentTexturePalette*: proc(self: ptr IDirect3DDevice9, PaletteNumber: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetScissorRect*: proc(self: ptr IDirect3DDevice9, pRect: ptr RECT): HRESULT {.stdcall, raises: [].}
    GetScissorRect*: proc(self: ptr IDirect3DDevice9, pRect: ptr RECT): HRESULT {.stdcall, raises: [].}
    SetSoftwareVertexProcessing*: proc(self: ptr IDirect3DDevice9, bSoftware: BOOL): HRESULT {.stdcall, raises: [].}
    GetSoftwareVertexProcessing*: proc(self: ptr IDirect3DDevice9): BOOL {.stdcall, raises: [].}
    SetNPatchMode*: proc(self: ptr IDirect3DDevice9, nSegments: float32): HRESULT {.stdcall, raises: [].}
    GetNPatchMode*: proc(self: ptr IDirect3DDevice9): float32 {.stdcall, raises: [].}
    DrawPrimitive*: proc(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, StartVertex: UINT, PrimitiveCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawIndexedPrimitive*: proc(self: ptr IDirect3DDevice9, arg0: D3DPRIMITIVETYPE, BaseVertexIndex: INT, MinVertexIndex: UINT, NumVertices: UINT, startIndex: UINT, primCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawPrimitiveUP*: proc(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, PrimitiveCount: UINT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.stdcall, raises: [].}
    DrawIndexedPrimitiveUP*: proc(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, MinVertexIndex: UINT, NumVertices: UINT, PrimitiveCount: UINT, pIndexData: pointer, IndexDataFormat: D3DFORMAT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.stdcall, raises: [].}
    ProcessVertices*: proc(self: ptr IDirect3DDevice9, SrcStartIndex: UINT, DestIndex: UINT, VertexCount: UINT, pDestBuffer: ptr IDirect3DVertexBuffer9, pVertexDecl: ptr IDirect3DVertexDeclaration9, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    CreateVertexDeclaration*: proc(self: ptr IDirect3DDevice9, pVertexElements: ptr D3DVERTEXELEMENT9, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    SetVertexDeclaration*: proc(self: ptr IDirect3DDevice9, pDecl: ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    GetVertexDeclaration*: proc(self: ptr IDirect3DDevice9, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    SetFVF*: proc(self: ptr IDirect3DDevice9, FVF: DWORD): HRESULT {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr IDirect3DDevice9, pFVF: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CreateVertexShader*: proc(self: ptr IDirect3DDevice9, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    SetVertexShader*: proc(self: ptr IDirect3DDevice9, pShader: ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    GetVertexShader*: proc(self: ptr IDirect3DDevice9, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantF*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantF*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantI*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantI*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantB*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantB*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    SetStreamSource*: proc(self: ptr IDirect3DDevice9, StreamNumber: UINT, pStreamData: ptr IDirect3DVertexBuffer9, OffsetInBytes: UINT, Stride: UINT): HRESULT {.stdcall, raises: [].}
    GetStreamSource*: proc(self: ptr IDirect3DDevice9, StreamNumber: UINT, ppStreamData: ptr ptr IDirect3DVertexBuffer9, pOffsetInBytes: ptr UINT, pStride: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetStreamSourceFreq*: proc(self: ptr IDirect3DDevice9, StreamNumber: UINT, Setting: UINT): HRESULT {.stdcall, raises: [].}
    GetStreamSourceFreq*: proc(self: ptr IDirect3DDevice9, StreamNumber: UINT, pSetting: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetIndices*: proc(self: ptr IDirect3DDevice9, pIndexData: ptr IDirect3DIndexBuffer9): HRESULT {.stdcall, raises: [].}
    GetIndices*: proc(self: ptr IDirect3DDevice9, ppIndexData: ptr ptr IDirect3DIndexBuffer9): HRESULT {.stdcall, raises: [].}
    CreatePixelShader*: proc(self: ptr IDirect3DDevice9, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    SetPixelShader*: proc(self: ptr IDirect3DDevice9, pShader: ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    GetPixelShader*: proc(self: ptr IDirect3DDevice9, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantF*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantF*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantI*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantI*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantB*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantB*: proc(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawRectPatch*: proc(self: ptr IDirect3DDevice9, Handle: UINT, pNumSegs: ptr float32, pRectPatchInfo: ptr D3DRECTPATCH_INFO): HRESULT {.stdcall, raises: [].}
    DrawTriPatch*: proc(self: ptr IDirect3DDevice9, Handle: UINT, pNumSegs: ptr float32, pTriPatchInfo: ptr D3DTRIPATCH_INFO): HRESULT {.stdcall, raises: [].}
    DeletePatch*: proc(self: ptr IDirect3DDevice9, Handle: UINT): HRESULT {.stdcall, raises: [].}
    CreateQuery*: proc(self: ptr IDirect3DDevice9, Type: D3DQUERYTYPE, ppQuery: ptr ptr IDirect3DQuery9): HRESULT {.stdcall, raises: [].}

  IDirect3DStateBlock9* = object of IUnknown
  IDirect3DStateBlock9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DStateBlock9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DStateBlock9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DStateBlock9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DStateBlock9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    Capture*: proc(self: ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}
    Apply*: proc(self: ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}

  IDirect3DSwapChain9* = object of IUnknown
  IDirect3DSwapChain9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DSwapChain9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DSwapChain9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DSwapChain9): ULONG {.stdcall, raises: [].}
    Present*: proc(self: ptr IDirect3DSwapChain9, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA, dwFlags: DWORD): HRESULT {.stdcall, raises: [].}
    GetFrontBufferData*: proc(self: ptr IDirect3DSwapChain9, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetBackBuffer*: proc(self: ptr IDirect3DSwapChain9, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRasterStatus*: proc(self: ptr IDirect3DSwapChain9, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.stdcall, raises: [].}
    GetDisplayMode*: proc(self: ptr IDirect3DSwapChain9, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DSwapChain9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetPresentParameters*: proc(self: ptr IDirect3DSwapChain9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall, raises: [].}

  IDirect3DResource9* = object of IUnknown
  IDirect3DResource9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DResource9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DResource9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DResource9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DResource9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DResource9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DResource9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DResource9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DResource9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DResource9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DResource9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DResource9): D3DRESOURCETYPE {.stdcall, raises: [].}

  IDirect3DVertexDeclaration9* = object of IUnknown
  IDirect3DVertexDeclaration9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DVertexDeclaration9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DVertexDeclaration9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DVertexDeclaration9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DVertexDeclaration9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetDeclaration*: proc(self: ptr IDirect3DVertexDeclaration9, pElement: ptr D3DVERTEXELEMENT9, pNumElements: ptr UINT): HRESULT {.stdcall, raises: [].}

  IDirect3DVertexShader9* = object of IUnknown
  IDirect3DVertexShader9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DVertexShader9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DVertexShader9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DVertexShader9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DVertexShader9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr IDirect3DVertexShader9, arg0: pointer, pSizeOfData: ptr UINT): HRESULT {.stdcall, raises: [].}

  IDirect3DPixelShader9* = object of IUnknown
  IDirect3DPixelShader9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DPixelShader9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DPixelShader9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DPixelShader9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DPixelShader9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetFunction*: proc(self: ptr IDirect3DPixelShader9, arg0: pointer, pSizeOfData: ptr UINT): HRESULT {.stdcall, raises: [].}

  IDirect3DBaseTexture9* = object of IDirect3DResource9
  IDirect3DBaseTexture9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DBaseTexture9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DBaseTexture9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DBaseTexture9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DBaseTexture9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DBaseTexture9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DBaseTexture9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DBaseTexture9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DBaseTexture9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DBaseTexture9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DBaseTexture9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DBaseTexture9): D3DRESOURCETYPE {.stdcall, raises: [].}
    SetLOD*: proc(self: ptr IDirect3DBaseTexture9, LODNew: DWORD): DWORD {.stdcall, raises: [].}
    GetLOD*: proc(self: ptr IDirect3DBaseTexture9): DWORD {.stdcall, raises: [].}
    GetLevelCount*: proc(self: ptr IDirect3DBaseTexture9): DWORD {.stdcall, raises: [].}
    SetAutoGenFilterType*: proc(self: ptr IDirect3DBaseTexture9, FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    GetAutoGenFilterType*: proc(self: ptr IDirect3DBaseTexture9): D3DTEXTUREFILTERTYPE {.stdcall, raises: [].}
    GenerateMipSubLevels*: proc(self: ptr IDirect3DBaseTexture9) {.stdcall, raises: [].}

  IDirect3DTexture9* = object of IDirect3DBaseTexture9
  IDirect3DTexture9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DTexture9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DTexture9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DTexture9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DTexture9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DTexture9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DTexture9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DTexture9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DTexture9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DTexture9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DTexture9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DTexture9): D3DRESOURCETYPE {.stdcall, raises: [].}
    SetLOD*: proc(self: ptr IDirect3DTexture9, LODNew: DWORD): DWORD {.stdcall, raises: [].}
    GetLOD*: proc(self: ptr IDirect3DTexture9): DWORD {.stdcall, raises: [].}
    GetLevelCount*: proc(self: ptr IDirect3DTexture9): DWORD {.stdcall, raises: [].}
    SetAutoGenFilterType*: proc(self: ptr IDirect3DTexture9, FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    GetAutoGenFilterType*: proc(self: ptr IDirect3DTexture9): D3DTEXTUREFILTERTYPE {.stdcall, raises: [].}
    GenerateMipSubLevels*: proc(self: ptr IDirect3DTexture9) {.stdcall, raises: [].}
    GetLevelDesc*: proc(self: ptr IDirect3DTexture9, Level: UINT, pDesc: ptr D3DSURFACE_DESC): HRESULT {.stdcall, raises: [].}
    GetSurfaceLevel*: proc(self: ptr IDirect3DTexture9, Level: UINT, ppSurfaceLevel: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    LockRect*: proc(self: ptr IDirect3DTexture9, Level: UINT, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    UnlockRect*: proc(self: ptr IDirect3DTexture9, Level: UINT): HRESULT {.stdcall, raises: [].}
    AddDirtyRect*: proc(self: ptr IDirect3DTexture9, pDirtyRect: ptr RECT): HRESULT {.stdcall, raises: [].}

  IDirect3DVolumeTexture9* = object of IDirect3DBaseTexture9
  IDirect3DVolumeTexture9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DVolumeTexture9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DVolumeTexture9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DVolumeTexture9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DVolumeTexture9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DVolumeTexture9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DVolumeTexture9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DVolumeTexture9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DVolumeTexture9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DVolumeTexture9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DVolumeTexture9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DVolumeTexture9): D3DRESOURCETYPE {.stdcall, raises: [].}
    SetLOD*: proc(self: ptr IDirect3DVolumeTexture9, LODNew: DWORD): DWORD {.stdcall, raises: [].}
    GetLOD*: proc(self: ptr IDirect3DVolumeTexture9): DWORD {.stdcall, raises: [].}
    GetLevelCount*: proc(self: ptr IDirect3DVolumeTexture9): DWORD {.stdcall, raises: [].}
    SetAutoGenFilterType*: proc(self: ptr IDirect3DVolumeTexture9, FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    GetAutoGenFilterType*: proc(self: ptr IDirect3DVolumeTexture9): D3DTEXTUREFILTERTYPE {.stdcall, raises: [].}
    GenerateMipSubLevels*: proc(self: ptr IDirect3DVolumeTexture9) {.stdcall, raises: [].}
    GetLevelDesc*: proc(self: ptr IDirect3DVolumeTexture9, Level: UINT, pDesc: ptr D3DVOLUME_DESC): HRESULT {.stdcall, raises: [].}
    GetVolumeLevel*: proc(self: ptr IDirect3DVolumeTexture9, Level: UINT, ppVolumeLevel: ptr ptr IDirect3DVolume9): HRESULT {.stdcall, raises: [].}
    LockBox*: proc(self: ptr IDirect3DVolumeTexture9, Level: UINT, pLockedVolume: ptr D3DLOCKED_BOX, pBox: ptr D3DBOX, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    UnlockBox*: proc(self: ptr IDirect3DVolumeTexture9, Level: UINT): HRESULT {.stdcall, raises: [].}
    AddDirtyBox*: proc(self: ptr IDirect3DVolumeTexture9, pDirtyBox: ptr D3DBOX): HRESULT {.stdcall, raises: [].}

  IDirect3DCubeTexture9* = object of IDirect3DBaseTexture9
  IDirect3DCubeTexture9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DCubeTexture9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DCubeTexture9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DCubeTexture9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DCubeTexture9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DCubeTexture9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DCubeTexture9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DCubeTexture9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DCubeTexture9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DCubeTexture9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DCubeTexture9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DCubeTexture9): D3DRESOURCETYPE {.stdcall, raises: [].}
    SetLOD*: proc(self: ptr IDirect3DCubeTexture9, LODNew: DWORD): DWORD {.stdcall, raises: [].}
    GetLOD*: proc(self: ptr IDirect3DCubeTexture9): DWORD {.stdcall, raises: [].}
    GetLevelCount*: proc(self: ptr IDirect3DCubeTexture9): DWORD {.stdcall, raises: [].}
    SetAutoGenFilterType*: proc(self: ptr IDirect3DCubeTexture9, FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    GetAutoGenFilterType*: proc(self: ptr IDirect3DCubeTexture9): D3DTEXTUREFILTERTYPE {.stdcall, raises: [].}
    GenerateMipSubLevels*: proc(self: ptr IDirect3DCubeTexture9) {.stdcall, raises: [].}
    GetLevelDesc*: proc(self: ptr IDirect3DCubeTexture9, Level: UINT, pDesc: ptr D3DSURFACE_DESC): HRESULT {.stdcall, raises: [].}
    GetCubeMapSurface*: proc(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT, ppCubeMapSurface: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    LockRect*: proc(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    UnlockRect*: proc(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT): HRESULT {.stdcall, raises: [].}
    AddDirtyRect*: proc(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, pDirtyRect: ptr RECT): HRESULT {.stdcall, raises: [].}

  IDirect3DVertexBuffer9* = object of IDirect3DResource9
  IDirect3DVertexBuffer9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DVertexBuffer9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DVertexBuffer9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DVertexBuffer9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DVertexBuffer9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DVertexBuffer9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DVertexBuffer9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DVertexBuffer9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DVertexBuffer9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DVertexBuffer9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DVertexBuffer9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DVertexBuffer9): D3DRESOURCETYPE {.stdcall, raises: [].}
    Lock*: proc(self: ptr IDirect3DVertexBuffer9, OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    Unlock*: proc(self: ptr IDirect3DVertexBuffer9): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr IDirect3DVertexBuffer9, pDesc: ptr D3DVERTEXBUFFER_DESC): HRESULT {.stdcall, raises: [].}

  IDirect3DIndexBuffer9* = object of IDirect3DResource9
  IDirect3DIndexBuffer9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DIndexBuffer9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DIndexBuffer9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DIndexBuffer9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DIndexBuffer9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DIndexBuffer9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DIndexBuffer9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DIndexBuffer9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DIndexBuffer9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DIndexBuffer9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DIndexBuffer9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DIndexBuffer9): D3DRESOURCETYPE {.stdcall, raises: [].}
    Lock*: proc(self: ptr IDirect3DIndexBuffer9, OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    Unlock*: proc(self: ptr IDirect3DIndexBuffer9): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr IDirect3DIndexBuffer9, pDesc: ptr D3DINDEXBUFFER_DESC): HRESULT {.stdcall, raises: [].}

  IDirect3DSurface9* = object of IDirect3DResource9
  IDirect3DSurface9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DSurface9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DSurface9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DSurface9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DSurface9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DSurface9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DSurface9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DSurface9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    SetPriority*: proc(self: ptr IDirect3DSurface9, PriorityNew: DWORD): DWORD {.stdcall, raises: [].}
    GetPriority*: proc(self: ptr IDirect3DSurface9): DWORD {.stdcall, raises: [].}
    PreLoad*: proc(self: ptr IDirect3DSurface9) {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DSurface9): D3DRESOURCETYPE {.stdcall, raises: [].}
    GetContainer*: proc(self: ptr IDirect3DSurface9, riid: REFIID, ppContainer: ptr pointer): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr IDirect3DSurface9, pDesc: ptr D3DSURFACE_DESC): HRESULT {.stdcall, raises: [].}
    LockRect*: proc(self: ptr IDirect3DSurface9, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    UnlockRect*: proc(self: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetDC*: proc(self: ptr IDirect3DSurface9, phdc: ptr HDC): HRESULT {.stdcall, raises: [].}
    ReleaseDC*: proc(self: ptr IDirect3DSurface9, hdc: HDC): HRESULT {.stdcall, raises: [].}

  IDirect3DVolume9* = object of IUnknown
  IDirect3DVolume9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DVolume9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DVolume9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DVolume9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DVolume9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    SetPrivateData*: proc(self: ptr IDirect3DVolume9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    GetPrivateData*: proc(self: ptr IDirect3DVolume9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.stdcall, raises: [].}
    FreePrivateData*: proc(self: ptr IDirect3DVolume9, refguid: REFGUID): HRESULT {.stdcall, raises: [].}
    GetContainer*: proc(self: ptr IDirect3DVolume9, riid: REFIID, ppContainer: ptr pointer): HRESULT {.stdcall, raises: [].}
    GetDesc*: proc(self: ptr IDirect3DVolume9, pDesc: ptr D3DVOLUME_DESC): HRESULT {.stdcall, raises: [].}
    LockBox*: proc(self: ptr IDirect3DVolume9, pLockedVolume: ptr D3DLOCKED_BOX, pBox: ptr D3DBOX, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    UnlockBox*: proc(self: ptr IDirect3DVolume9): HRESULT {.stdcall, raises: [].}

  IDirect3DQuery9* = object of IUnknown
  IDirect3DQuery9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DQuery9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DQuery9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DQuery9): ULONG {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DQuery9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetType*: proc(self: ptr IDirect3DQuery9): D3DQUERYTYPE {.stdcall, raises: [].}
    GetDataSize*: proc(self: ptr IDirect3DQuery9): DWORD {.stdcall, raises: [].}
    Issue*: proc(self: ptr IDirect3DQuery9, dwIssueFlags: DWORD): HRESULT {.stdcall, raises: [].}
    GetData*: proc(self: ptr IDirect3DQuery9, pData: pointer, dwSize: DWORD, dwGetDataFlags: DWORD): HRESULT {.stdcall, raises: [].}

  IDirect3D9Ex* = object of IDirect3D9
  IDirect3D9ExVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3D9Ex, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3D9Ex): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3D9Ex): ULONG {.stdcall, raises: [].}
    RegisterSoftwareDevice*: proc(self: ptr IDirect3D9Ex, pInitializeFunction: pointer): HRESULT {.stdcall, raises: [].}
    GetAdapterCount*: proc(self: ptr IDirect3D9Ex): UINT {.stdcall, raises: [].}
    GetAdapterIdentifier*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, Flags: DWORD, pIdentifier: ptr D3DADAPTER_IDENTIFIER9): HRESULT {.stdcall, raises: [].}
    GetAdapterModeCount*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, Format: D3DFORMAT): UINT {.stdcall, raises: [].}
    EnumAdapterModes*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, Format: D3DFORMAT, Mode: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetAdapterDisplayMode*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    CheckDeviceType*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DevType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, BackBufferFormat: D3DFORMAT, bWindowed: BOOL): HRESULT {.stdcall, raises: [].}
    CheckDeviceFormat*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, Usage: DWORD, RType: D3DRESOURCETYPE, CheckFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    CheckDeviceMultiSampleType*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, SurfaceFormat: D3DFORMAT, Windowed: BOOL, MultiSampleType: D3DMULTISAMPLE_TYPE, pQualityLevels: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CheckDepthStencilMatch*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, RenderTargetFormat: D3DFORMAT, DepthStencilFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    CheckDeviceFormatConversion*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, SourceFormat: D3DFORMAT, TargetFormat: D3DFORMAT): HRESULT {.stdcall, raises: [].}
    GetDeviceCaps*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, pCaps: ptr D3DCAPS9): HRESULT {.stdcall, raises: [].}
    GetAdapterMonitor*: proc(self: ptr IDirect3D9Ex, Adapter: UINT): HMONITOR {.stdcall, raises: [].}
    CreateDevice*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetAdapterModeCountEx*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, pFilter: ptr D3DDISPLAYMODEFILTER): UINT {.stdcall, raises: [].}
    EnumAdapterModesEx*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, pFilter: ptr D3DDISPLAYMODEFILTER, Mode: UINT, pMode: ptr D3DDISPLAYMODEEX): HRESULT {.stdcall, raises: [].}
    GetAdapterDisplayModeEx*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.stdcall, raises: [].}
    CreateDeviceEx*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pFullscreenDisplayMode: ptr D3DDISPLAYMODEEX, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    GetAdapterLUID*: proc(self: ptr IDirect3D9Ex, Adapter: UINT, pLUID: ptr LUID): HRESULT {.stdcall, raises: [].}

  IDirect3DDevice9Ex* = object of IDirect3DDevice9
  IDirect3DDevice9ExVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DDevice9Ex, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DDevice9Ex): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DDevice9Ex): ULONG {.stdcall, raises: [].}
    TestCooperativeLevel*: proc(self: ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    GetAvailableTextureMem*: proc(self: ptr IDirect3DDevice9Ex): UINT {.stdcall, raises: [].}
    EvictManagedResources*: proc(self: ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    GetDirect3D*: proc(self: ptr IDirect3DDevice9Ex, ppD3D9: ptr ptr IDirect3D9): HRESULT {.stdcall, raises: [].}
    GetDeviceCaps*: proc(self: ptr IDirect3DDevice9Ex, pCaps: ptr D3DCAPS9): HRESULT {.stdcall, raises: [].}
    GetDisplayMode*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetCreationParameters*: proc(self: ptr IDirect3DDevice9Ex, pParameters: ptr D3DDEVICE_CREATION_PARAMETERS): HRESULT {.stdcall, raises: [].}
    SetCursorProperties*: proc(self: ptr IDirect3DDevice9Ex, XHotSpot: UINT, YHotSpot: UINT, pCursorBitmap: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    SetCursorPosition*: proc(self: ptr IDirect3DDevice9Ex, X: int32, Y: int32, Flags: DWORD) {.stdcall, raises: [].}
    ShowCursor*: proc(self: ptr IDirect3DDevice9Ex, bShow: BOOL): BOOL {.stdcall, raises: [].}
    CreateAdditionalSwapChain*: proc(self: ptr IDirect3DDevice9Ex, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.stdcall, raises: [].}
    GetSwapChain*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.stdcall, raises: [].}
    GetNumberOfSwapChains*: proc(self: ptr IDirect3DDevice9Ex): UINT {.stdcall, raises: [].}
    Reset*: proc(self: ptr IDirect3DDevice9Ex, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall, raises: [].}
    Present*: proc(self: ptr IDirect3DDevice9Ex, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.stdcall, raises: [].}
    GetBackBuffer*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRasterStatus*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.stdcall, raises: [].}
    SetDialogBoxMode*: proc(self: ptr IDirect3DDevice9Ex, bEnableDialogs: BOOL): HRESULT {.stdcall, raises: [].}
    SetGammaRamp*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, Flags: DWORD, pRamp: ptr D3DGAMMARAMP) {.stdcall, raises: [].}
    GetGammaRamp*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pRamp: ptr D3DGAMMARAMP) {.stdcall, raises: [].}
    CreateTexture*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppTexture: ptr ptr IDirect3DTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateVolumeTexture*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Depth: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppVolumeTexture: ptr ptr IDirect3DVolumeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateCubeTexture*: proc(self: ptr IDirect3DDevice9Ex, EdgeLength: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppCubeTexture: ptr ptr IDirect3DCubeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateVertexBuffer*: proc(self: ptr IDirect3DDevice9Ex, Length: UINT, Usage: DWORD, FVF: DWORD, Pool: D3DPOOL, ppVertexBuffer: ptr ptr IDirect3DVertexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateIndexBuffer*: proc(self: ptr IDirect3DDevice9Ex, Length: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppIndexBuffer: ptr ptr IDirect3DIndexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateRenderTarget*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Lockable: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateDepthStencilSurface*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Discard: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    UpdateSurface*: proc(self: ptr IDirect3DDevice9Ex, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestinationSurface: ptr IDirect3DSurface9, pDestPoint: ptr POINT): HRESULT {.stdcall, raises: [].}
    UpdateTexture*: proc(self: ptr IDirect3DDevice9Ex, pSourceTexture: ptr IDirect3DBaseTexture9, pDestinationTexture: ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    GetRenderTargetData*: proc(self: ptr IDirect3DDevice9Ex, pRenderTarget: ptr IDirect3DSurface9, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetFrontBufferData*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    StretchRect*: proc(self: ptr IDirect3DDevice9Ex, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestSurface: ptr IDirect3DSurface9, pDestRect: ptr RECT, Filter: D3DTEXTUREFILTERTYPE): HRESULT {.stdcall, raises: [].}
    ColorFill*: proc(self: ptr IDirect3DDevice9Ex, pSurface: ptr IDirect3DSurface9, pRect: ptr RECT, color: D3DCOLOR): HRESULT {.stdcall, raises: [].}
    CreateOffscreenPlainSurface*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, Pool: D3DPOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    SetRenderTarget*: proc(self: ptr IDirect3DDevice9Ex, RenderTargetIndex: DWORD, pRenderTarget: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRenderTarget*: proc(self: ptr IDirect3DDevice9Ex, RenderTargetIndex: DWORD, ppRenderTarget: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    SetDepthStencilSurface*: proc(self: ptr IDirect3DDevice9Ex, pNewZStencil: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetDepthStencilSurface*: proc(self: ptr IDirect3DDevice9Ex, ppZStencilSurface: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    BeginScene*: proc(self: ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    EndScene*: proc(self: ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    Clear*: proc(self: ptr IDirect3DDevice9Ex, Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: D3DCOLOR, Z: float32, Stencil: DWORD): HRESULT {.stdcall, raises: [].}
    SetTransform*: proc(self: ptr IDirect3DDevice9Ex, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    GetTransform*: proc(self: ptr IDirect3DDevice9Ex, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    MultiplyTransform*: proc(self: ptr IDirect3DDevice9Ex, arg0: D3DTRANSFORMSTATETYPE, arg1: ptr D3DMATRIX): HRESULT {.stdcall, raises: [].}
    SetViewport*: proc(self: ptr IDirect3DDevice9Ex, pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall, raises: [].}
    GetViewport*: proc(self: ptr IDirect3DDevice9Ex, pViewport: ptr D3DVIEWPORT9): HRESULT {.stdcall, raises: [].}
    SetMaterial*: proc(self: ptr IDirect3DDevice9Ex, pMaterial: ptr D3DMATERIAL9): HRESULT {.stdcall, raises: [].}
    GetMaterial*: proc(self: ptr IDirect3DDevice9Ex, pMaterial: ptr D3DMATERIAL9): HRESULT {.stdcall, raises: [].}
    SetLight*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.stdcall, raises: [].}
    GetLight*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.stdcall, raises: [].}
    LightEnable*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, Enable: BOOL): HRESULT {.stdcall, raises: [].}
    GetLightEnable*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, pEnable: ptr BOOL): HRESULT {.stdcall, raises: [].}
    SetClipPlane*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, pPlane: ptr float32): HRESULT {.stdcall, raises: [].}
    GetClipPlane*: proc(self: ptr IDirect3DDevice9Ex, Index: DWORD, pPlane: ptr float32): HRESULT {.stdcall, raises: [].}
    SetRenderState*: proc(self: ptr IDirect3DDevice9Ex, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    GetRenderState*: proc(self: ptr IDirect3DDevice9Ex, State: D3DRENDERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CreateStateBlock*: proc(self: ptr IDirect3DDevice9Ex, Type: D3DSTATEBLOCKTYPE, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}
    BeginStateBlock*: proc(self: ptr IDirect3DDevice9Ex): HRESULT {.stdcall, raises: [].}
    EndStateBlock*: proc(self: ptr IDirect3DDevice9Ex, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.stdcall, raises: [].}
    SetClipStatus*: proc(self: ptr IDirect3DDevice9Ex, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.stdcall, raises: [].}
    GetClipStatus*: proc(self: ptr IDirect3DDevice9Ex, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.stdcall, raises: [].}
    GetTexture*: proc(self: ptr IDirect3DDevice9Ex, Stage: DWORD, ppTexture: ptr ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    SetTexture*: proc(self: ptr IDirect3DDevice9Ex, Stage: DWORD, pTexture: ptr IDirect3DBaseTexture9): HRESULT {.stdcall, raises: [].}
    GetTextureStageState*: proc(self: ptr IDirect3DDevice9Ex, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetTextureStageState*: proc(self: ptr IDirect3DDevice9Ex, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    GetSamplerState*: proc(self: ptr IDirect3DDevice9Ex, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, pValue: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetSamplerState*: proc(self: ptr IDirect3DDevice9Ex, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.stdcall, raises: [].}
    ValidateDevice*: proc(self: ptr IDirect3DDevice9Ex, pNumPasses: ptr DWORD): HRESULT {.stdcall, raises: [].}
    SetPaletteEntries*: proc(self: ptr IDirect3DDevice9Ex, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.stdcall, raises: [].}
    GetPaletteEntries*: proc(self: ptr IDirect3DDevice9Ex, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.stdcall, raises: [].}
    SetCurrentTexturePalette*: proc(self: ptr IDirect3DDevice9Ex, PaletteNumber: UINT): HRESULT {.stdcall, raises: [].}
    GetCurrentTexturePalette*: proc(self: ptr IDirect3DDevice9Ex, PaletteNumber: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetScissorRect*: proc(self: ptr IDirect3DDevice9Ex, pRect: ptr RECT): HRESULT {.stdcall, raises: [].}
    GetScissorRect*: proc(self: ptr IDirect3DDevice9Ex, pRect: ptr RECT): HRESULT {.stdcall, raises: [].}
    SetSoftwareVertexProcessing*: proc(self: ptr IDirect3DDevice9Ex, bSoftware: BOOL): HRESULT {.stdcall, raises: [].}
    GetSoftwareVertexProcessing*: proc(self: ptr IDirect3DDevice9Ex): BOOL {.stdcall, raises: [].}
    SetNPatchMode*: proc(self: ptr IDirect3DDevice9Ex, nSegments: float32): HRESULT {.stdcall, raises: [].}
    GetNPatchMode*: proc(self: ptr IDirect3DDevice9Ex): float32 {.stdcall, raises: [].}
    DrawPrimitive*: proc(self: ptr IDirect3DDevice9Ex, PrimitiveType: D3DPRIMITIVETYPE, StartVertex: UINT, PrimitiveCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawIndexedPrimitive*: proc(self: ptr IDirect3DDevice9Ex, arg0: D3DPRIMITIVETYPE, BaseVertexIndex: INT, MinVertexIndex: UINT, NumVertices: UINT, startIndex: UINT, primCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawPrimitiveUP*: proc(self: ptr IDirect3DDevice9Ex, PrimitiveType: D3DPRIMITIVETYPE, PrimitiveCount: UINT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.stdcall, raises: [].}
    DrawIndexedPrimitiveUP*: proc(self: ptr IDirect3DDevice9Ex, PrimitiveType: D3DPRIMITIVETYPE, MinVertexIndex: UINT, NumVertices: UINT, PrimitiveCount: UINT, pIndexData: pointer, IndexDataFormat: D3DFORMAT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.stdcall, raises: [].}
    ProcessVertices*: proc(self: ptr IDirect3DDevice9Ex, SrcStartIndex: UINT, DestIndex: UINT, VertexCount: UINT, pDestBuffer: ptr IDirect3DVertexBuffer9, pVertexDecl: ptr IDirect3DVertexDeclaration9, Flags: DWORD): HRESULT {.stdcall, raises: [].}
    CreateVertexDeclaration*: proc(self: ptr IDirect3DDevice9Ex, pVertexElements: ptr D3DVERTEXELEMENT9, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    SetVertexDeclaration*: proc(self: ptr IDirect3DDevice9Ex, pDecl: ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    GetVertexDeclaration*: proc(self: ptr IDirect3DDevice9Ex, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.stdcall, raises: [].}
    SetFVF*: proc(self: ptr IDirect3DDevice9Ex, FVF: DWORD): HRESULT {.stdcall, raises: [].}
    GetFVF*: proc(self: ptr IDirect3DDevice9Ex, pFVF: ptr DWORD): HRESULT {.stdcall, raises: [].}
    CreateVertexShader*: proc(self: ptr IDirect3DDevice9Ex, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    SetVertexShader*: proc(self: ptr IDirect3DDevice9Ex, pShader: ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    GetVertexShader*: proc(self: ptr IDirect3DDevice9Ex, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantF*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantF*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantI*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantI*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    SetVertexShaderConstantB*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    GetVertexShaderConstantB*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    SetStreamSource*: proc(self: ptr IDirect3DDevice9Ex, StreamNumber: UINT, pStreamData: ptr IDirect3DVertexBuffer9, OffsetInBytes: UINT, Stride: UINT): HRESULT {.stdcall, raises: [].}
    GetStreamSource*: proc(self: ptr IDirect3DDevice9Ex, StreamNumber: UINT, ppStreamData: ptr ptr IDirect3DVertexBuffer9, pOffsetInBytes: ptr UINT, pStride: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetStreamSourceFreq*: proc(self: ptr IDirect3DDevice9Ex, StreamNumber: UINT, Setting: UINT): HRESULT {.stdcall, raises: [].}
    GetStreamSourceFreq*: proc(self: ptr IDirect3DDevice9Ex, StreamNumber: UINT, pSetting: ptr UINT): HRESULT {.stdcall, raises: [].}
    SetIndices*: proc(self: ptr IDirect3DDevice9Ex, pIndexData: ptr IDirect3DIndexBuffer9): HRESULT {.stdcall, raises: [].}
    GetIndices*: proc(self: ptr IDirect3DDevice9Ex, ppIndexData: ptr ptr IDirect3DIndexBuffer9): HRESULT {.stdcall, raises: [].}
    CreatePixelShader*: proc(self: ptr IDirect3DDevice9Ex, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    SetPixelShader*: proc(self: ptr IDirect3DDevice9Ex, pShader: ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    GetPixelShader*: proc(self: ptr IDirect3DDevice9Ex, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantF*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantF*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantI*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantI*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.stdcall, raises: [].}
    SetPixelShaderConstantB*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    GetPixelShaderConstantB*: proc(self: ptr IDirect3DDevice9Ex, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.stdcall, raises: [].}
    DrawRectPatch*: proc(self: ptr IDirect3DDevice9Ex, Handle: UINT, pNumSegs: ptr float32, pRectPatchInfo: ptr D3DRECTPATCH_INFO): HRESULT {.stdcall, raises: [].}
    DrawTriPatch*: proc(self: ptr IDirect3DDevice9Ex, Handle: UINT, pNumSegs: ptr float32, pTriPatchInfo: ptr D3DTRIPATCH_INFO): HRESULT {.stdcall, raises: [].}
    DeletePatch*: proc(self: ptr IDirect3DDevice9Ex, Handle: UINT): HRESULT {.stdcall, raises: [].}
    CreateQuery*: proc(self: ptr IDirect3DDevice9Ex, Type: D3DQUERYTYPE, ppQuery: ptr ptr IDirect3DQuery9): HRESULT {.stdcall, raises: [].}
    SetConvolutionMonoKernel*: proc(self: ptr IDirect3DDevice9Ex, width: UINT, height: UINT, rows: ptr float32, columns: ptr float32): HRESULT {.stdcall, raises: [].}
    ComposeRects*: proc(self: ptr IDirect3DDevice9Ex, pSrc: ptr IDirect3DSurface9, pDst: ptr IDirect3DSurface9, pSrcRectDescs: ptr IDirect3DVertexBuffer9, NumRects: UINT, pDstRectDescs: ptr IDirect3DVertexBuffer9, Operation: D3DCOMPOSERECTSOP, Xoffset: int32, Yoffset: int32): HRESULT {.stdcall, raises: [].}
    PresentEx*: proc(self: ptr IDirect3DDevice9Ex, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA, dwFlags: DWORD): HRESULT {.stdcall, raises: [].}
    GetGPUThreadPriority*: proc(self: ptr IDirect3DDevice9Ex, pPriority: ptr INT): HRESULT {.stdcall, raises: [].}
    SetGPUThreadPriority*: proc(self: ptr IDirect3DDevice9Ex, Priority: INT): HRESULT {.stdcall, raises: [].}
    WaitForVBlank*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT): HRESULT {.stdcall, raises: [].}
    CheckResourceResidency*: proc(self: ptr IDirect3DDevice9Ex, pResourceArray: ptr ptr IDirect3DResource9, NumResources: UINT32): HRESULT {.stdcall, raises: [].}
    SetMaximumFrameLatency*: proc(self: ptr IDirect3DDevice9Ex, MaxLatency: UINT): HRESULT {.stdcall, raises: [].}
    GetMaximumFrameLatency*: proc(self: ptr IDirect3DDevice9Ex, pMaxLatency: ptr UINT): HRESULT {.stdcall, raises: [].}
    CheckDeviceState*: proc(self: ptr IDirect3DDevice9Ex, hDestinationWindow: HWND): HRESULT {.stdcall, raises: [].}
    CreateRenderTargetEx*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Lockable: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.stdcall, raises: [].}
    CreateOffscreenPlainSurfaceEx*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, Pool: D3DPOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.stdcall, raises: [].}
    CreateDepthStencilSurfaceEx*: proc(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Discard: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.stdcall, raises: [].}
    ResetEx*: proc(self: ptr IDirect3DDevice9Ex, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pFullscreenDisplayMode: ptr D3DDISPLAYMODEEX): HRESULT {.stdcall, raises: [].}
    GetDisplayModeEx*: proc(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.stdcall, raises: [].}

  IDirect3DSwapChain9Ex* = object of IDirect3DSwapChain9
  IDirect3DSwapChain9ExVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DSwapChain9Ex, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DSwapChain9Ex): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DSwapChain9Ex): ULONG {.stdcall, raises: [].}
    Present*: proc(self: ptr IDirect3DSwapChain9Ex, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA, dwFlags: DWORD): HRESULT {.stdcall, raises: [].}
    GetFrontBufferData*: proc(self: ptr IDirect3DSwapChain9Ex, pDestSurface: ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetBackBuffer*: proc(self: ptr IDirect3DSwapChain9Ex, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.stdcall, raises: [].}
    GetRasterStatus*: proc(self: ptr IDirect3DSwapChain9Ex, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.stdcall, raises: [].}
    GetDisplayMode*: proc(self: ptr IDirect3DSwapChain9Ex, pMode: ptr D3DDISPLAYMODE): HRESULT {.stdcall, raises: [].}
    GetDevice*: proc(self: ptr IDirect3DSwapChain9Ex, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.stdcall, raises: [].}
    GetPresentParameters*: proc(self: ptr IDirect3DSwapChain9Ex, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.stdcall, raises: [].}
    GetLastPresentCount*: proc(self: ptr IDirect3DSwapChain9Ex, pLastPresentCount: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetPresentStats*: proc(self: ptr IDirect3DSwapChain9Ex, pPresentationStatistics: ptr D3DPRESENTSTATS): HRESULT {.stdcall, raises: [].}
    GetDisplayModeEx*: proc(self: ptr IDirect3DSwapChain9Ex, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.stdcall, raises: [].}

  IDirect3D9ExOverlayExtension* = object of IUnknown
  IDirect3D9ExOverlayExtensionVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3D9ExOverlayExtension, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3D9ExOverlayExtension): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3D9ExOverlayExtension): ULONG {.stdcall, raises: [].}
    CheckDeviceOverlayType*: proc(self: ptr IDirect3D9ExOverlayExtension, Adapter: UINT, DevType: D3DDEVTYPE, OverlayWidth: UINT, OverlayHeight: UINT, OverlayFormat: D3DFORMAT, pDisplayMode: ptr D3DDISPLAYMODEEX, DisplayRotation: D3DDISPLAYROTATION, pOverlayCaps: ptr D3DOVERLAYCAPS): HRESULT {.stdcall, raises: [].}

  IDirect3DDevice9Video* = object of IUnknown
  IDirect3DDevice9VideoVtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DDevice9Video, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DDevice9Video): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DDevice9Video): ULONG {.stdcall, raises: [].}
    GetContentProtectionCaps*: proc(self: ptr IDirect3DDevice9Video, pCryptoType: ptr GUID, pDecodeProfile: ptr GUID, pCaps: ptr D3DCONTENTPROTECTIONCAPS): HRESULT {.stdcall, raises: [].}
    CreateAuthenticatedChannel*: proc(self: ptr IDirect3DDevice9Video, ChannelType: D3DAUTHENTICATEDCHANNELTYPE, ppAuthenticatedChannel: ptr ptr IDirect3DAuthenticatedChannel9, pChannelHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}
    CreateCryptoSession*: proc(self: ptr IDirect3DDevice9Video, pCryptoType: ptr GUID, pDecodeProfile: ptr GUID, ppCryptoSession: ptr ptr IDirect3DCryptoSession9, pCryptoHandle: ptr HANDLE): HRESULT {.stdcall, raises: [].}

  IDirect3DAuthenticatedChannel9* = object of IUnknown
  IDirect3DAuthenticatedChannel9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DAuthenticatedChannel9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DAuthenticatedChannel9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DAuthenticatedChannel9): ULONG {.stdcall, raises: [].}
    GetCertificateSize*: proc(self: ptr IDirect3DAuthenticatedChannel9, pCertificateSize: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetCertificate*: proc(self: ptr IDirect3DAuthenticatedChannel9, CertifacteSize: UINT, ppCertificate: ptr BYTE): HRESULT {.stdcall, raises: [].}
    NegotiateKeyExchange*: proc(self: ptr IDirect3DAuthenticatedChannel9, DataSize: UINT, pData: pointer): HRESULT {.stdcall, raises: [].}
    Query*: proc(self: ptr IDirect3DAuthenticatedChannel9, InputSize: UINT, pInput: pointer, OutputSize: UINT, pOutput: pointer): HRESULT {.stdcall, raises: [].}
    Configure*: proc(self: ptr IDirect3DAuthenticatedChannel9, InputSize: UINT, pInput: pointer, pOutput: ptr D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT): HRESULT {.stdcall, raises: [].}

  IDirect3DCryptoSession9* = object of IUnknown
  IDirect3DCryptoSession9Vtbl* {.pure.} = object
    QueryInterface*: proc(self: ptr IDirect3DCryptoSession9, riid: REFIID, ppvObj: ptr pointer): HRESULT {.stdcall, raises: [].}
    AddRef*: proc(self: ptr IDirect3DCryptoSession9): ULONG {.stdcall, raises: [].}
    Release*: proc(self: ptr IDirect3DCryptoSession9): ULONG {.stdcall, raises: [].}
    GetCertificateSize*: proc(self: ptr IDirect3DCryptoSession9, pCertificateSize: ptr UINT): HRESULT {.stdcall, raises: [].}
    GetCertificate*: proc(self: ptr IDirect3DCryptoSession9, CertifacteSize: UINT, ppCertificate: ptr BYTE): HRESULT {.stdcall, raises: [].}
    NegotiateKeyExchange*: proc(self: ptr IDirect3DCryptoSession9, DataSize: UINT, pData: pointer): HRESULT {.stdcall, raises: [].}
    EncryptionBlt*: proc(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pDstSurface: ptr IDirect3DSurface9, DstSurfaceSize: UINT, pIV: pointer): HRESULT {.stdcall, raises: [].}
    DecryptionBlt*: proc(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pDstSurface: ptr IDirect3DSurface9, SrcSurfaceSize: UINT, pEncryptedBlockInfo: ptr D3DENCRYPTED_BLOCK_INFO, pContentKey: pointer, pIV: pointer): HRESULT {.stdcall, raises: [].}
    GetSurfacePitch*: proc(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pSurfacePitch: ptr UINT): HRESULT {.stdcall, raises: [].}
    StartSessionKeyRefresh*: proc(self: ptr IDirect3DCryptoSession9, pRandomNumber: pointer, RandomNumberSize: UINT): HRESULT {.stdcall, raises: [].}
    FinishSessionKeyRefresh*: proc(self: ptr IDirect3DCryptoSession9): HRESULT {.stdcall, raises: [].}
    GetEncryptionBltKey*: proc(self: ptr IDirect3DCryptoSession9, pReadbackKey: pointer, KeySize: UINT): HRESULT {.stdcall, raises: [].}

proc `==`*(a, b: D3DLIGHTTYPE): bool {.borrow.}
converter toDWORD*(x: D3DLIGHTTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADEMODE): bool {.borrow.}
converter toDWORD*(x: D3DSHADEMODE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DFILLMODE): bool {.borrow.}
converter toDWORD*(x: D3DFILLMODE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DBLEND): bool {.borrow.}
converter toDWORD*(x: D3DBLEND): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DBLENDOP): bool {.borrow.}
converter toDWORD*(x: D3DBLENDOP): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTEXTUREADDRESS): bool {.borrow.}
converter toDWORD*(x: D3DTEXTUREADDRESS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DCULL): bool {.borrow.}
converter toDWORD*(x: D3DCULL): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DCMPFUNC): bool {.borrow.}
converter toDWORD*(x: D3DCMPFUNC): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSTENCILOP): bool {.borrow.}
converter toDWORD*(x: D3DSTENCILOP): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DFOGMODE): bool {.borrow.}
converter toDWORD*(x: D3DFOGMODE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DZBUFFERTYPE): bool {.borrow.}
converter toDWORD*(x: D3DZBUFFERTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DPRIMITIVETYPE): bool {.borrow.}
converter toDWORD*(x: D3DPRIMITIVETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTRANSFORMSTATETYPE): bool {.borrow.}
converter toDWORD*(x: D3DTRANSFORMSTATETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DRENDERSTATETYPE): bool {.borrow.}
converter toDWORD*(x: D3DRENDERSTATETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DMATERIALCOLORSOURCE): bool {.borrow.}
converter toDWORD*(x: D3DMATERIALCOLORSOURCE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTEXTURESTAGESTATETYPE): bool {.borrow.}
converter toDWORD*(x: D3DTEXTURESTAGESTATETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSAMPLERSTATETYPE): bool {.borrow.}
converter toDWORD*(x: D3DSAMPLERSTATETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTEXTUREOP): bool {.borrow.}
converter toDWORD*(x: D3DTEXTUREOP): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTEXTUREFILTERTYPE): bool {.borrow.}
converter toDWORD*(x: D3DTEXTUREFILTERTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDECLUSAGE): bool {.borrow.}
converter toDWORD*(x: D3DDECLUSAGE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDECLMETHOD): bool {.borrow.}
converter toDWORD*(x: D3DDECLMETHOD): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDECLTYPE): bool {.borrow.}
converter toDWORD*(x: D3DDECLTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_INSTRUCTION_OPCODE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_INSTRUCTION_OPCODE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_COMPARISON): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_COMPARISON): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSAMPLER_TEXTURE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DSAMPLER_TEXTURE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_PARAM_REGISTER_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_PARAM_REGISTER_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_MISCTYPE_OFFSETS): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_MISCTYPE_OFFSETS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DVS_RASTOUT_OFFSETS): bool {.borrow.}
converter toDWORD*(x: D3DVS_RASTOUT_OFFSETS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DVS_ADDRESSMODE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DVS_ADDRESSMODE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_ADDRESSMODE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_ADDRESSMODE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSHADER_PARAM_SRCMOD_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DSHADER_PARAM_SRCMOD_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DBASISTYPE): bool {.borrow.}
converter toDWORD*(x: D3DBASISTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDEGREETYPE): bool {.borrow.}
converter toDWORD*(x: D3DDEGREETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DPATCHEDGESTYLE): bool {.borrow.}
converter toDWORD*(x: D3DPATCHEDGESTYLE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSTATEBLOCKTYPE): bool {.borrow.}
converter toDWORD*(x: D3DSTATEBLOCKTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DVERTEXBLENDFLAGS): bool {.borrow.}
converter toDWORD*(x: D3DVERTEXBLENDFLAGS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DTEXTURETRANSFORMFLAGS): bool {.borrow.}
converter toDWORD*(x: D3DTEXTURETRANSFORMFLAGS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDEVTYPE): bool {.borrow.}
converter toDWORD*(x: D3DDEVTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DMULTISAMPLE_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DMULTISAMPLE_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DFORMAT): bool {.borrow.}
converter toDWORD*(x: D3DFORMAT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSWAPEFFECT): bool {.borrow.}
converter toDWORD*(x: D3DSWAPEFFECT): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DPOOL): bool {.borrow.}
converter toDWORD*(x: D3DPOOL): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DBACKBUFFER_TYPE): bool {.borrow.}
converter toDWORD*(x: D3DBACKBUFFER_TYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DRESOURCETYPE): bool {.borrow.}
converter toDWORD*(x: D3DRESOURCETYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DCUBEMAP_FACES): bool {.borrow.}
converter toDWORD*(x: D3DCUBEMAP_FACES): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDEBUGMONITORTOKENS): bool {.borrow.}
converter toDWORD*(x: D3DDEBUGMONITORTOKENS): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DQUERYTYPE): bool {.borrow.}
converter toDWORD*(x: D3DQUERYTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DCOMPOSERECTSOP): bool {.borrow.}
converter toDWORD*(x: D3DCOMPOSERECTSOP): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DSCANLINEORDERING): bool {.borrow.}
converter toDWORD*(x: D3DSCANLINEORDERING): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DDISPLAYROTATION): bool {.borrow.}
converter toDWORD*(x: D3DDISPLAYROTATION): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DAUTHENTICATEDCHANNELTYPE): bool {.borrow.}
converter toDWORD*(x: D3DAUTHENTICATEDCHANNELTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE): bool {.borrow.}
converter toDWORD*(x: D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE): DWORD {.inline.} = DWORD(x)
proc `==`*(a, b: D3DBUSTYPE): bool {.borrow.}
converter toDWORD*(x: D3DBUSTYPE): DWORD {.inline.} = DWORD(x)

const
  D3DLIGHT_POINT* = D3DLIGHTTYPE(1'i32)
  D3DLIGHT_SPOT* = D3DLIGHTTYPE(2'i32)
  D3DLIGHT_DIRECTIONAL* = D3DLIGHTTYPE(3'i32)
  D3DLIGHT_FORCE_DWORD* = D3DLIGHTTYPE(0x7FFFFFFF'i32)

const
  D3DSHADE_FLAT* = D3DSHADEMODE(1'i32)
  D3DSHADE_GOURAUD* = D3DSHADEMODE(2'i32)
  D3DSHADE_PHONG* = D3DSHADEMODE(3'i32)
  D3DSHADE_FORCE_DWORD* = D3DSHADEMODE(0x7FFFFFFF'i32)

const
  D3DFILL_POINT* = D3DFILLMODE(1'i32)
  D3DFILL_WIREFRAME* = D3DFILLMODE(2'i32)
  D3DFILL_SOLID* = D3DFILLMODE(3'i32)
  D3DFILL_FORCE_DWORD* = D3DFILLMODE(0x7FFFFFFF'i32)

const
  D3DBLEND_ZERO* = D3DBLEND(1'i32)
  D3DBLEND_ONE* = D3DBLEND(2'i32)
  D3DBLEND_SRCCOLOR* = D3DBLEND(3'i32)
  D3DBLEND_INVSRCCOLOR* = D3DBLEND(4'i32)
  D3DBLEND_SRCALPHA* = D3DBLEND(5'i32)
  D3DBLEND_INVSRCALPHA* = D3DBLEND(6'i32)
  D3DBLEND_DESTALPHA* = D3DBLEND(7'i32)
  D3DBLEND_INVDESTALPHA* = D3DBLEND(8'i32)
  D3DBLEND_DESTCOLOR* = D3DBLEND(9'i32)
  D3DBLEND_INVDESTCOLOR* = D3DBLEND(10'i32)
  D3DBLEND_SRCALPHASAT* = D3DBLEND(11'i32)
  D3DBLEND_BOTHSRCALPHA* = D3DBLEND(12'i32)
  D3DBLEND_BOTHINVSRCALPHA* = D3DBLEND(13'i32)
  D3DBLEND_BLENDFACTOR* = D3DBLEND(14'i32)
  D3DBLEND_INVBLENDFACTOR* = D3DBLEND(15'i32)
  D3DBLEND_SRCCOLOR2* = D3DBLEND(16'i32)
  D3DBLEND_INVSRCCOLOR2* = D3DBLEND(17'i32)
  D3DBLEND_FORCE_DWORD* = D3DBLEND(0x7FFFFFFF'i32)

const
  D3DBLENDOP_ADD* = D3DBLENDOP(1'i32)
  D3DBLENDOP_SUBTRACT* = D3DBLENDOP(2'i32)
  D3DBLENDOP_REVSUBTRACT* = D3DBLENDOP(3'i32)
  D3DBLENDOP_MIN* = D3DBLENDOP(4'i32)
  D3DBLENDOP_MAX* = D3DBLENDOP(5'i32)
  D3DBLENDOP_FORCE_DWORD* = D3DBLENDOP(0x7FFFFFFF'i32)

const
  D3DTADDRESS_WRAP* = D3DTEXTUREADDRESS(1'i32)
  D3DTADDRESS_MIRROR* = D3DTEXTUREADDRESS(2'i32)
  D3DTADDRESS_CLAMP* = D3DTEXTUREADDRESS(3'i32)
  D3DTADDRESS_BORDER* = D3DTEXTUREADDRESS(4'i32)
  D3DTADDRESS_MIRRORONCE* = D3DTEXTUREADDRESS(5'i32)
  D3DTADDRESS_FORCE_DWORD* = D3DTEXTUREADDRESS(0x7FFFFFFF'i32)

const
  D3DCULL_NONE* = D3DCULL(1'i32)
  D3DCULL_CW* = D3DCULL(2'i32)
  D3DCULL_CCW* = D3DCULL(3'i32)
  D3DCULL_FORCE_DWORD* = D3DCULL(0x7FFFFFFF'i32)

const
  D3DCMP_NEVER* = D3DCMPFUNC(1'i32)
  D3DCMP_LESS* = D3DCMPFUNC(2'i32)
  D3DCMP_EQUAL* = D3DCMPFUNC(3'i32)
  D3DCMP_LESSEQUAL* = D3DCMPFUNC(4'i32)
  D3DCMP_GREATER* = D3DCMPFUNC(5'i32)
  D3DCMP_NOTEQUAL* = D3DCMPFUNC(6'i32)
  D3DCMP_GREATEREQUAL* = D3DCMPFUNC(7'i32)
  D3DCMP_ALWAYS* = D3DCMPFUNC(8'i32)
  D3DCMP_FORCE_DWORD* = D3DCMPFUNC(0x7FFFFFFF'i32)

const
  D3DSTENCILOP_KEEP* = D3DSTENCILOP(1'i32)
  D3DSTENCILOP_ZERO* = D3DSTENCILOP(2'i32)
  D3DSTENCILOP_REPLACE* = D3DSTENCILOP(3'i32)
  D3DSTENCILOP_INCRSAT* = D3DSTENCILOP(4'i32)
  D3DSTENCILOP_DECRSAT* = D3DSTENCILOP(5'i32)
  D3DSTENCILOP_INVERT* = D3DSTENCILOP(6'i32)
  D3DSTENCILOP_INCR* = D3DSTENCILOP(7'i32)
  D3DSTENCILOP_DECR* = D3DSTENCILOP(8'i32)
  D3DSTENCILOP_FORCE_DWORD* = D3DSTENCILOP(0x7FFFFFFF'i32)

const
  D3DFOG_NONE* = D3DFOGMODE(0'i32)
  D3DFOG_EXP* = D3DFOGMODE(1'i32)
  D3DFOG_EXP2* = D3DFOGMODE(2'i32)
  D3DFOG_LINEAR* = D3DFOGMODE(3'i32)
  D3DFOG_FORCE_DWORD* = D3DFOGMODE(0x7FFFFFFF'i32)

const
  D3DZB_FALSE* = D3DZBUFFERTYPE(0'i32)
  D3DZB_TRUE* = D3DZBUFFERTYPE(1'i32)
  D3DZB_USEW* = D3DZBUFFERTYPE(2'i32)
  D3DZB_FORCE_DWORD* = D3DZBUFFERTYPE(0x7FFFFFFF'i32)

const
  D3DPT_POINTLIST* = D3DPRIMITIVETYPE(1'i32)
  D3DPT_LINELIST* = D3DPRIMITIVETYPE(2'i32)
  D3DPT_LINESTRIP* = D3DPRIMITIVETYPE(3'i32)
  D3DPT_TRIANGLELIST* = D3DPRIMITIVETYPE(4'i32)
  D3DPT_TRIANGLESTRIP* = D3DPRIMITIVETYPE(5'i32)
  D3DPT_TRIANGLEFAN* = D3DPRIMITIVETYPE(6'i32)
  D3DPT_FORCE_DWORD* = D3DPRIMITIVETYPE(0x7FFFFFFF'i32)

const
  D3DTS_VIEW* = D3DTRANSFORMSTATETYPE(2'i32)
  D3DTS_PROJECTION* = D3DTRANSFORMSTATETYPE(3'i32)
  D3DTS_TEXTURE0* = D3DTRANSFORMSTATETYPE(16'i32)
  D3DTS_TEXTURE1* = D3DTRANSFORMSTATETYPE(17'i32)
  D3DTS_TEXTURE2* = D3DTRANSFORMSTATETYPE(18'i32)
  D3DTS_TEXTURE3* = D3DTRANSFORMSTATETYPE(19'i32)
  D3DTS_TEXTURE4* = D3DTRANSFORMSTATETYPE(20'i32)
  D3DTS_TEXTURE5* = D3DTRANSFORMSTATETYPE(21'i32)
  D3DTS_TEXTURE6* = D3DTRANSFORMSTATETYPE(22'i32)
  D3DTS_TEXTURE7* = D3DTRANSFORMSTATETYPE(23'i32)
  D3DTS_FORCE_DWORD* = D3DTRANSFORMSTATETYPE(0x7FFFFFFF'i32)

const
  D3DRS_ZENABLE* = D3DRENDERSTATETYPE(7'i32)
  D3DRS_FILLMODE* = D3DRENDERSTATETYPE(8'i32)
  D3DRS_SHADEMODE* = D3DRENDERSTATETYPE(9'i32)
  D3DRS_ZWRITEENABLE* = D3DRENDERSTATETYPE(14'i32)
  D3DRS_ALPHATESTENABLE* = D3DRENDERSTATETYPE(15'i32)
  D3DRS_LASTPIXEL* = D3DRENDERSTATETYPE(16'i32)
  D3DRS_SRCBLEND* = D3DRENDERSTATETYPE(19'i32)
  D3DRS_DESTBLEND* = D3DRENDERSTATETYPE(20'i32)
  D3DRS_CULLMODE* = D3DRENDERSTATETYPE(22'i32)
  D3DRS_ZFUNC* = D3DRENDERSTATETYPE(23'i32)
  D3DRS_ALPHAREF* = D3DRENDERSTATETYPE(24'i32)
  D3DRS_ALPHAFUNC* = D3DRENDERSTATETYPE(25'i32)
  D3DRS_DITHERENABLE* = D3DRENDERSTATETYPE(26'i32)
  D3DRS_ALPHABLENDENABLE* = D3DRENDERSTATETYPE(27'i32)
  D3DRS_FOGENABLE* = D3DRENDERSTATETYPE(28'i32)
  D3DRS_SPECULARENABLE* = D3DRENDERSTATETYPE(29'i32)
  D3DRS_FOGCOLOR* = D3DRENDERSTATETYPE(34'i32)
  D3DRS_FOGTABLEMODE* = D3DRENDERSTATETYPE(35'i32)
  D3DRS_FOGSTART* = D3DRENDERSTATETYPE(36'i32)
  D3DRS_FOGEND* = D3DRENDERSTATETYPE(37'i32)
  D3DRS_FOGDENSITY* = D3DRENDERSTATETYPE(38'i32)
  D3DRS_RANGEFOGENABLE* = D3DRENDERSTATETYPE(48'i32)
  D3DRS_STENCILENABLE* = D3DRENDERSTATETYPE(52'i32)
  D3DRS_STENCILFAIL* = D3DRENDERSTATETYPE(53'i32)
  D3DRS_STENCILZFAIL* = D3DRENDERSTATETYPE(54'i32)
  D3DRS_STENCILPASS* = D3DRENDERSTATETYPE(55'i32)
  D3DRS_STENCILFUNC* = D3DRENDERSTATETYPE(56'i32)
  D3DRS_STENCILREF* = D3DRENDERSTATETYPE(57'i32)
  D3DRS_STENCILMASK* = D3DRENDERSTATETYPE(58'i32)
  D3DRS_STENCILWRITEMASK* = D3DRENDERSTATETYPE(59'i32)
  D3DRS_TEXTUREFACTOR* = D3DRENDERSTATETYPE(60'i32)
  D3DRS_WRAP0* = D3DRENDERSTATETYPE(128'i32)
  D3DRS_WRAP1* = D3DRENDERSTATETYPE(129'i32)
  D3DRS_WRAP2* = D3DRENDERSTATETYPE(130'i32)
  D3DRS_WRAP3* = D3DRENDERSTATETYPE(131'i32)
  D3DRS_WRAP4* = D3DRENDERSTATETYPE(132'i32)
  D3DRS_WRAP5* = D3DRENDERSTATETYPE(133'i32)
  D3DRS_WRAP6* = D3DRENDERSTATETYPE(134'i32)
  D3DRS_WRAP7* = D3DRENDERSTATETYPE(135'i32)
  D3DRS_CLIPPING* = D3DRENDERSTATETYPE(136'i32)
  D3DRS_LIGHTING* = D3DRENDERSTATETYPE(137'i32)
  D3DRS_AMBIENT* = D3DRENDERSTATETYPE(139'i32)
  D3DRS_FOGVERTEXMODE* = D3DRENDERSTATETYPE(140'i32)
  D3DRS_COLORVERTEX* = D3DRENDERSTATETYPE(141'i32)
  D3DRS_LOCALVIEWER* = D3DRENDERSTATETYPE(142'i32)
  D3DRS_NORMALIZENORMALS* = D3DRENDERSTATETYPE(143'i32)
  D3DRS_DIFFUSEMATERIALSOURCE* = D3DRENDERSTATETYPE(145'i32)
  D3DRS_SPECULARMATERIALSOURCE* = D3DRENDERSTATETYPE(146'i32)
  D3DRS_AMBIENTMATERIALSOURCE* = D3DRENDERSTATETYPE(147'i32)
  D3DRS_EMISSIVEMATERIALSOURCE* = D3DRENDERSTATETYPE(148'i32)
  D3DRS_VERTEXBLEND* = D3DRENDERSTATETYPE(151'i32)
  D3DRS_CLIPPLANEENABLE* = D3DRENDERSTATETYPE(152'i32)
  D3DRS_POINTSIZE* = D3DRENDERSTATETYPE(154'i32)
  D3DRS_POINTSIZE_MIN* = D3DRENDERSTATETYPE(155'i32)
  D3DRS_POINTSPRITEENABLE* = D3DRENDERSTATETYPE(156'i32)
  D3DRS_POINTSCALEENABLE* = D3DRENDERSTATETYPE(157'i32)
  D3DRS_POINTSCALE_A* = D3DRENDERSTATETYPE(158'i32)
  D3DRS_POINTSCALE_B* = D3DRENDERSTATETYPE(159'i32)
  D3DRS_POINTSCALE_C* = D3DRENDERSTATETYPE(160'i32)
  D3DRS_MULTISAMPLEANTIALIAS* = D3DRENDERSTATETYPE(161'i32)
  D3DRS_MULTISAMPLEMASK* = D3DRENDERSTATETYPE(162'i32)
  D3DRS_PATCHEDGESTYLE* = D3DRENDERSTATETYPE(163'i32)
  D3DRS_DEBUGMONITORTOKEN* = D3DRENDERSTATETYPE(165'i32)
  D3DRS_POINTSIZE_MAX* = D3DRENDERSTATETYPE(166'i32)
  D3DRS_INDEXEDVERTEXBLENDENABLE* = D3DRENDERSTATETYPE(167'i32)
  D3DRS_COLORWRITEENABLE* = D3DRENDERSTATETYPE(168'i32)
  D3DRS_TWEENFACTOR* = D3DRENDERSTATETYPE(170'i32)
  D3DRS_BLENDOP* = D3DRENDERSTATETYPE(171'i32)
  D3DRS_POSITIONDEGREE* = D3DRENDERSTATETYPE(172'i32)
  D3DRS_NORMALDEGREE* = D3DRENDERSTATETYPE(173'i32)
  D3DRS_SCISSORTESTENABLE* = D3DRENDERSTATETYPE(174'i32)
  D3DRS_SLOPESCALEDEPTHBIAS* = D3DRENDERSTATETYPE(175'i32)
  D3DRS_ANTIALIASEDLINEENABLE* = D3DRENDERSTATETYPE(176'i32)
  D3DRS_MINTESSELLATIONLEVEL* = D3DRENDERSTATETYPE(178'i32)
  D3DRS_MAXTESSELLATIONLEVEL* = D3DRENDERSTATETYPE(179'i32)
  D3DRS_ADAPTIVETESS_X* = D3DRENDERSTATETYPE(180'i32)
  D3DRS_ADAPTIVETESS_Y* = D3DRENDERSTATETYPE(181'i32)
  D3DRS_ADAPTIVETESS_Z* = D3DRENDERSTATETYPE(182'i32)
  D3DRS_ADAPTIVETESS_W* = D3DRENDERSTATETYPE(183'i32)
  D3DRS_ENABLEADAPTIVETESSELLATION* = D3DRENDERSTATETYPE(184'i32)
  D3DRS_TWOSIDEDSTENCILMODE* = D3DRENDERSTATETYPE(185'i32)
  D3DRS_CCW_STENCILFAIL* = D3DRENDERSTATETYPE(186'i32)
  D3DRS_CCW_STENCILZFAIL* = D3DRENDERSTATETYPE(187'i32)
  D3DRS_CCW_STENCILPASS* = D3DRENDERSTATETYPE(188'i32)
  D3DRS_CCW_STENCILFUNC* = D3DRENDERSTATETYPE(189'i32)
  D3DRS_COLORWRITEENABLE1* = D3DRENDERSTATETYPE(190'i32)
  D3DRS_COLORWRITEENABLE2* = D3DRENDERSTATETYPE(191'i32)
  D3DRS_COLORWRITEENABLE3* = D3DRENDERSTATETYPE(192'i32)
  D3DRS_BLENDFACTOR* = D3DRENDERSTATETYPE(193'i32)
  D3DRS_SRGBWRITEENABLE* = D3DRENDERSTATETYPE(194'i32)
  D3DRS_DEPTHBIAS* = D3DRENDERSTATETYPE(195'i32)
  D3DRS_WRAP8* = D3DRENDERSTATETYPE(198'i32)
  D3DRS_WRAP9* = D3DRENDERSTATETYPE(199'i32)
  D3DRS_WRAP10* = D3DRENDERSTATETYPE(200'i32)
  D3DRS_WRAP11* = D3DRENDERSTATETYPE(201'i32)
  D3DRS_WRAP12* = D3DRENDERSTATETYPE(202'i32)
  D3DRS_WRAP13* = D3DRENDERSTATETYPE(203'i32)
  D3DRS_WRAP14* = D3DRENDERSTATETYPE(204'i32)
  D3DRS_WRAP15* = D3DRENDERSTATETYPE(205'i32)
  D3DRS_SEPARATEALPHABLENDENABLE* = D3DRENDERSTATETYPE(206'i32)
  D3DRS_SRCBLENDALPHA* = D3DRENDERSTATETYPE(207'i32)
  D3DRS_DESTBLENDALPHA* = D3DRENDERSTATETYPE(208'i32)
  D3DRS_BLENDOPALPHA* = D3DRENDERSTATETYPE(209'i32)
  D3DRS_FORCE_DWORD* = D3DRENDERSTATETYPE(0x7FFFFFFF'i32)

const
  D3DMCS_MATERIAL* = D3DMATERIALCOLORSOURCE(0'i32)
  D3DMCS_COLOR1* = D3DMATERIALCOLORSOURCE(1'i32)
  D3DMCS_COLOR2* = D3DMATERIALCOLORSOURCE(2'i32)
  D3DMCS_FORCE_DWORD* = D3DMATERIALCOLORSOURCE(0x7FFFFFFF'i32)

const
  D3DTSS_COLOROP* = D3DTEXTURESTAGESTATETYPE(1'i32)
  D3DTSS_COLORARG1* = D3DTEXTURESTAGESTATETYPE(2'i32)
  D3DTSS_COLORARG2* = D3DTEXTURESTAGESTATETYPE(3'i32)
  D3DTSS_ALPHAOP* = D3DTEXTURESTAGESTATETYPE(4'i32)
  D3DTSS_ALPHAARG1* = D3DTEXTURESTAGESTATETYPE(5'i32)
  D3DTSS_ALPHAARG2* = D3DTEXTURESTAGESTATETYPE(6'i32)
  D3DTSS_BUMPENVMAT00* = D3DTEXTURESTAGESTATETYPE(7'i32)
  D3DTSS_BUMPENVMAT01* = D3DTEXTURESTAGESTATETYPE(8'i32)
  D3DTSS_BUMPENVMAT10* = D3DTEXTURESTAGESTATETYPE(9'i32)
  D3DTSS_BUMPENVMAT11* = D3DTEXTURESTAGESTATETYPE(10'i32)
  D3DTSS_TEXCOORDINDEX* = D3DTEXTURESTAGESTATETYPE(11'i32)
  D3DTSS_BUMPENVLSCALE* = D3DTEXTURESTAGESTATETYPE(22'i32)
  D3DTSS_BUMPENVLOFFSET* = D3DTEXTURESTAGESTATETYPE(23'i32)
  D3DTSS_TEXTURETRANSFORMFLAGS* = D3DTEXTURESTAGESTATETYPE(24'i32)
  D3DTSS_COLORARG0* = D3DTEXTURESTAGESTATETYPE(26'i32)
  D3DTSS_ALPHAARG0* = D3DTEXTURESTAGESTATETYPE(27'i32)
  D3DTSS_RESULTARG* = D3DTEXTURESTAGESTATETYPE(28'i32)
  D3DTSS_CONSTANT* = D3DTEXTURESTAGESTATETYPE(32'i32)
  D3DTSS_FORCE_DWORD* = D3DTEXTURESTAGESTATETYPE(0x7FFFFFFF'i32)

const
  D3DSAMP_ADDRESSU* = D3DSAMPLERSTATETYPE(1'i32)
  D3DSAMP_ADDRESSV* = D3DSAMPLERSTATETYPE(2'i32)
  D3DSAMP_ADDRESSW* = D3DSAMPLERSTATETYPE(3'i32)
  D3DSAMP_BORDERCOLOR* = D3DSAMPLERSTATETYPE(4'i32)
  D3DSAMP_MAGFILTER* = D3DSAMPLERSTATETYPE(5'i32)
  D3DSAMP_MINFILTER* = D3DSAMPLERSTATETYPE(6'i32)
  D3DSAMP_MIPFILTER* = D3DSAMPLERSTATETYPE(7'i32)
  D3DSAMP_MIPMAPLODBIAS* = D3DSAMPLERSTATETYPE(8'i32)
  D3DSAMP_MAXMIPLEVEL* = D3DSAMPLERSTATETYPE(9'i32)
  D3DSAMP_MAXANISOTROPY* = D3DSAMPLERSTATETYPE(10'i32)
  D3DSAMP_SRGBTEXTURE* = D3DSAMPLERSTATETYPE(11'i32)
  D3DSAMP_ELEMENTINDEX* = D3DSAMPLERSTATETYPE(12'i32)
  D3DSAMP_DMAPOFFSET* = D3DSAMPLERSTATETYPE(13'i32)
  D3DSAMP_FORCE_DWORD* = D3DSAMPLERSTATETYPE(0x7FFFFFFF'i32)

const
  D3DTOP_DISABLE* = D3DTEXTUREOP(1'i32)
  D3DTOP_SELECTARG1* = D3DTEXTUREOP(2'i32)
  D3DTOP_SELECTARG2* = D3DTEXTUREOP(3'i32)
  D3DTOP_MODULATE* = D3DTEXTUREOP(4'i32)
  D3DTOP_MODULATE2X* = D3DTEXTUREOP(5'i32)
  D3DTOP_MODULATE4X* = D3DTEXTUREOP(6'i32)
  D3DTOP_ADD* = D3DTEXTUREOP(7'i32)
  D3DTOP_ADDSIGNED* = D3DTEXTUREOP(8'i32)
  D3DTOP_ADDSIGNED2X* = D3DTEXTUREOP(9'i32)
  D3DTOP_SUBTRACT* = D3DTEXTUREOP(10'i32)
  D3DTOP_ADDSMOOTH* = D3DTEXTUREOP(11'i32)
  D3DTOP_BLENDDIFFUSEALPHA* = D3DTEXTUREOP(12'i32)
  D3DTOP_BLENDTEXTUREALPHA* = D3DTEXTUREOP(13'i32)
  D3DTOP_BLENDFACTORALPHA* = D3DTEXTUREOP(14'i32)
  D3DTOP_BLENDTEXTUREALPHAPM* = D3DTEXTUREOP(15'i32)
  D3DTOP_BLENDCURRENTALPHA* = D3DTEXTUREOP(16'i32)
  D3DTOP_PREMODULATE* = D3DTEXTUREOP(17'i32)
  D3DTOP_MODULATEALPHA_ADDCOLOR* = D3DTEXTUREOP(18'i32)
  D3DTOP_MODULATECOLOR_ADDALPHA* = D3DTEXTUREOP(19'i32)
  D3DTOP_MODULATEINVALPHA_ADDCOLOR* = D3DTEXTUREOP(20'i32)
  D3DTOP_MODULATEINVCOLOR_ADDALPHA* = D3DTEXTUREOP(21'i32)
  D3DTOP_BUMPENVMAP* = D3DTEXTUREOP(22'i32)
  D3DTOP_BUMPENVMAPLUMINANCE* = D3DTEXTUREOP(23'i32)
  D3DTOP_DOTPRODUCT3* = D3DTEXTUREOP(24'i32)
  D3DTOP_MULTIPLYADD* = D3DTEXTUREOP(25'i32)
  D3DTOP_LERP* = D3DTEXTUREOP(26'i32)
  D3DTOP_FORCE_DWORD* = D3DTEXTUREOP(0x7FFFFFFF'i32)

const
  D3DTEXF_NONE* = D3DTEXTUREFILTERTYPE(0'i32)
  D3DTEXF_POINT* = D3DTEXTUREFILTERTYPE(1'i32)
  D3DTEXF_LINEAR* = D3DTEXTUREFILTERTYPE(2'i32)
  D3DTEXF_ANISOTROPIC* = D3DTEXTUREFILTERTYPE(3'i32)
  D3DTEXF_PYRAMIDALQUAD* = D3DTEXTUREFILTERTYPE(6'i32)
  D3DTEXF_GAUSSIANQUAD* = D3DTEXTUREFILTERTYPE(7'i32)
  D3DTEXF_CONVOLUTIONMONO* = D3DTEXTUREFILTERTYPE(8'i32)
  D3DTEXF_FORCE_DWORD* = D3DTEXTUREFILTERTYPE(0x7FFFFFFF'i32)

const
  D3DDECLUSAGE_POSITION* = D3DDECLUSAGE(0'i32)
  D3DDECLUSAGE_BLENDWEIGHT* = D3DDECLUSAGE(1'i32)
  D3DDECLUSAGE_BLENDINDICES* = D3DDECLUSAGE(2'i32)
  D3DDECLUSAGE_NORMAL* = D3DDECLUSAGE(3'i32)
  D3DDECLUSAGE_PSIZE* = D3DDECLUSAGE(4'i32)
  D3DDECLUSAGE_TEXCOORD* = D3DDECLUSAGE(5'i32)
  D3DDECLUSAGE_TANGENT* = D3DDECLUSAGE(6'i32)
  D3DDECLUSAGE_BINORMAL* = D3DDECLUSAGE(7'i32)
  D3DDECLUSAGE_TESSFACTOR* = D3DDECLUSAGE(8'i32)
  D3DDECLUSAGE_POSITIONT* = D3DDECLUSAGE(9'i32)
  D3DDECLUSAGE_COLOR* = D3DDECLUSAGE(10'i32)
  D3DDECLUSAGE_FOG* = D3DDECLUSAGE(11'i32)
  D3DDECLUSAGE_DEPTH* = D3DDECLUSAGE(12'i32)
  D3DDECLUSAGE_SAMPLE* = D3DDECLUSAGE(13'i32)

const
  D3DDECLMETHOD_DEFAULT* = D3DDECLMETHOD(0'i32)
  D3DDECLMETHOD_PARTIALU* = D3DDECLMETHOD(1'i32)
  D3DDECLMETHOD_PARTIALV* = D3DDECLMETHOD(2'i32)
  D3DDECLMETHOD_CROSSUV* = D3DDECLMETHOD(3'i32)
  D3DDECLMETHOD_UV* = D3DDECLMETHOD(4'i32)
  D3DDECLMETHOD_LOOKUP* = D3DDECLMETHOD(5'i32)
  D3DDECLMETHOD_LOOKUPPRESAMPLED* = D3DDECLMETHOD(6'i32)

const
  D3DDECLTYPE_FLOAT1* = D3DDECLTYPE(0'i32)
  D3DDECLTYPE_FLOAT2* = D3DDECLTYPE(1'i32)
  D3DDECLTYPE_FLOAT3* = D3DDECLTYPE(2'i32)
  D3DDECLTYPE_FLOAT4* = D3DDECLTYPE(3'i32)
  D3DDECLTYPE_D3DCOLOR* = D3DDECLTYPE(4'i32)
  D3DDECLTYPE_UBYTE4* = D3DDECLTYPE(5'i32)
  D3DDECLTYPE_SHORT2* = D3DDECLTYPE(6'i32)
  D3DDECLTYPE_SHORT4* = D3DDECLTYPE(7'i32)
  D3DDECLTYPE_UBYTE4N* = D3DDECLTYPE(8'i32)
  D3DDECLTYPE_SHORT2N* = D3DDECLTYPE(9'i32)
  D3DDECLTYPE_SHORT4N* = D3DDECLTYPE(10'i32)
  D3DDECLTYPE_USHORT2N* = D3DDECLTYPE(11'i32)
  D3DDECLTYPE_USHORT4N* = D3DDECLTYPE(12'i32)
  D3DDECLTYPE_UDEC3* = D3DDECLTYPE(13'i32)
  D3DDECLTYPE_DEC3N* = D3DDECLTYPE(14'i32)
  D3DDECLTYPE_FLOAT16_2* = D3DDECLTYPE(15'i32)
  D3DDECLTYPE_FLOAT16_4* = D3DDECLTYPE(16'i32)
  D3DDECLTYPE_UNUSED* = D3DDECLTYPE(17'i32)

const
  D3DSIO_NOP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(0'i32)
  D3DSIO_MOV* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(1'i32)
  D3DSIO_ADD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(2'i32)
  D3DSIO_SUB* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(3'i32)
  D3DSIO_MAD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(4'i32)
  D3DSIO_MUL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(5'i32)
  D3DSIO_RCP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(6'i32)
  D3DSIO_RSQ* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(7'i32)
  D3DSIO_DP3* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(8'i32)
  D3DSIO_DP4* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(9'i32)
  D3DSIO_MIN* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(10'i32)
  D3DSIO_MAX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(11'i32)
  D3DSIO_SLT* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(12'i32)
  D3DSIO_SGE* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(13'i32)
  D3DSIO_EXP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(14'i32)
  D3DSIO_LOG* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(15'i32)
  D3DSIO_LIT* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(16'i32)
  D3DSIO_DST* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(17'i32)
  D3DSIO_LRP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(18'i32)
  D3DSIO_FRC* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(19'i32)
  D3DSIO_M4x4* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(20'i32)
  D3DSIO_M4x3* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(21'i32)
  D3DSIO_M3x4* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(22'i32)
  D3DSIO_M3x3* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(23'i32)
  D3DSIO_M3x2* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(24'i32)
  D3DSIO_CALL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(25'i32)
  D3DSIO_CALLNZ* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(26'i32)
  D3DSIO_LOOP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(27'i32)
  D3DSIO_RET* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(28'i32)
  D3DSIO_ENDLOOP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(29'i32)
  D3DSIO_LABEL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(30'i32)
  D3DSIO_DCL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(31'i32)
  D3DSIO_POW* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(32'i32)
  D3DSIO_CRS* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(33'i32)
  D3DSIO_SGN* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(34'i32)
  D3DSIO_ABS* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(35'i32)
  D3DSIO_NRM* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(36'i32)
  D3DSIO_SINCOS* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(37'i32)
  D3DSIO_REP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(38'i32)
  D3DSIO_ENDREP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(39'i32)
  D3DSIO_IF* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(40'i32)
  D3DSIO_IFC* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(41'i32)
  D3DSIO_ELSE* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(42'i32)
  D3DSIO_ENDIF* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(43'i32)
  D3DSIO_BREAK* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(44'i32)
  D3DSIO_BREAKC* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(45'i32)
  D3DSIO_MOVA* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(46'i32)
  D3DSIO_DEFB* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(47'i32)
  D3DSIO_DEFI* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(48'i32)
  D3DSIO_TEXCOORD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(64'i32)
  D3DSIO_TEXKILL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(65'i32)
  D3DSIO_TEX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(66'i32)
  D3DSIO_TEXBEM* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(67'i32)
  D3DSIO_TEXBEML* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(68'i32)
  D3DSIO_TEXREG2AR* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(69'i32)
  D3DSIO_TEXREG2GB* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(70'i32)
  D3DSIO_TEXM3x2PAD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(71'i32)
  D3DSIO_TEXM3x2TEX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(72'i32)
  D3DSIO_TEXM3x3PAD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(73'i32)
  D3DSIO_TEXM3x3TEX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(74'i32)
  D3DSIO_RESERVED0* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(75'i32)
  D3DSIO_TEXM3x3SPEC* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(76'i32)
  D3DSIO_TEXM3x3VSPEC* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(77'i32)
  D3DSIO_EXPP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(78'i32)
  D3DSIO_LOGP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(79'i32)
  D3DSIO_CND* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(80'i32)
  D3DSIO_DEF* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(81'i32)
  D3DSIO_TEXREG2RGB* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(82'i32)
  D3DSIO_TEXDP3TEX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(83'i32)
  D3DSIO_TEXM3x2DEPTH* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(84'i32)
  D3DSIO_TEXDP3* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(85'i32)
  D3DSIO_TEXM3x3* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(86'i32)
  D3DSIO_TEXDEPTH* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(87'i32)
  D3DSIO_CMP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(88'i32)
  D3DSIO_BEM* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(89'i32)
  D3DSIO_DP2ADD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(90'i32)
  D3DSIO_DSX* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(91'i32)
  D3DSIO_DSY* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(92'i32)
  D3DSIO_TEXLDD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(93'i32)
  D3DSIO_SETP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(94'i32)
  D3DSIO_TEXLDL* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(95'i32)
  D3DSIO_BREAKP* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(96'i32)
  D3DSIO_PHASE* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(0x0000FFFD'i32)
  D3DSIO_COMMENT* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(0x0000FFFE'i32)
  D3DSIO_END* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(0x0000FFFF'i32)
  D3DSIO_FORCE_DWORD* = D3DSHADER_INSTRUCTION_OPCODE_TYPE(0x7FFFFFFF'i32)

const
  D3DSPC_RESERVED0* = D3DSHADER_COMPARISON(0'i32)
  D3DSPC_GT* = D3DSHADER_COMPARISON(1'i32)
  D3DSPC_EQ* = D3DSHADER_COMPARISON(2'i32)
  D3DSPC_GE* = D3DSHADER_COMPARISON(3'i32)
  D3DSPC_LT* = D3DSHADER_COMPARISON(4'i32)
  D3DSPC_NE* = D3DSHADER_COMPARISON(5'i32)
  D3DSPC_LE* = D3DSHADER_COMPARISON(6'i32)
  D3DSPC_RESERVED1* = D3DSHADER_COMPARISON(7'i32)

const
  D3DSTT_UNKNOWN* = D3DSAMPLER_TEXTURE_TYPE(0'i32)
  D3DSTT_2D* = D3DSAMPLER_TEXTURE_TYPE(268435456'i32)
  D3DSTT_CUBE* = D3DSAMPLER_TEXTURE_TYPE(402653184'i32)
  D3DSTT_VOLUME* = D3DSAMPLER_TEXTURE_TYPE(536870912'i32)
  D3DSTT_FORCE_DWORD* = D3DSAMPLER_TEXTURE_TYPE(0x7FFFFFFF'i32)

const
  D3DSPR_TEMP* = D3DSHADER_PARAM_REGISTER_TYPE(0'i32)
  D3DSPR_INPUT* = D3DSHADER_PARAM_REGISTER_TYPE(1'i32)
  D3DSPR_CONST* = D3DSHADER_PARAM_REGISTER_TYPE(2'i32)
  D3DSPR_ADDR* = D3DSHADER_PARAM_REGISTER_TYPE(3'i32)
  D3DSPR_TEXTURE* = D3DSHADER_PARAM_REGISTER_TYPE(3'i32)
  D3DSPR_RASTOUT* = D3DSHADER_PARAM_REGISTER_TYPE(4'i32)
  D3DSPR_ATTROUT* = D3DSHADER_PARAM_REGISTER_TYPE(5'i32)
  D3DSPR_TEXCRDOUT* = D3DSHADER_PARAM_REGISTER_TYPE(6'i32)
  D3DSPR_OUTPUT* = D3DSHADER_PARAM_REGISTER_TYPE(6'i32)
  D3DSPR_CONSTINT* = D3DSHADER_PARAM_REGISTER_TYPE(7'i32)
  D3DSPR_COLOROUT* = D3DSHADER_PARAM_REGISTER_TYPE(8'i32)
  D3DSPR_DEPTHOUT* = D3DSHADER_PARAM_REGISTER_TYPE(9'i32)
  D3DSPR_SAMPLER* = D3DSHADER_PARAM_REGISTER_TYPE(10'i32)
  D3DSPR_CONST2* = D3DSHADER_PARAM_REGISTER_TYPE(11'i32)
  D3DSPR_CONST3* = D3DSHADER_PARAM_REGISTER_TYPE(12'i32)
  D3DSPR_CONST4* = D3DSHADER_PARAM_REGISTER_TYPE(13'i32)
  D3DSPR_CONSTBOOL* = D3DSHADER_PARAM_REGISTER_TYPE(14'i32)
  D3DSPR_LOOP* = D3DSHADER_PARAM_REGISTER_TYPE(15'i32)
  D3DSPR_TEMPFLOAT16* = D3DSHADER_PARAM_REGISTER_TYPE(16'i32)
  D3DSPR_MISCTYPE* = D3DSHADER_PARAM_REGISTER_TYPE(17'i32)
  D3DSPR_LABEL* = D3DSHADER_PARAM_REGISTER_TYPE(18'i32)
  D3DSPR_PREDICATE* = D3DSHADER_PARAM_REGISTER_TYPE(19'i32)
  D3DSPR_FORCE_DWORD* = D3DSHADER_PARAM_REGISTER_TYPE(0x7FFFFFFF'i32)

const
  D3DSMO_POSITION* = D3DSHADER_MISCTYPE_OFFSETS(0'i32)
  D3DSMO_FACE* = D3DSHADER_MISCTYPE_OFFSETS(1'i32)

const
  D3DSRO_POSITION* = D3DVS_RASTOUT_OFFSETS(0'i32)
  D3DSRO_FOG* = D3DVS_RASTOUT_OFFSETS(1'i32)
  D3DSRO_POINT_SIZE* = D3DVS_RASTOUT_OFFSETS(2'i32)
  D3DSRO_FORCE_DWORD* = D3DVS_RASTOUT_OFFSETS(0x7FFFFFFF'i32)

const
  D3DVS_ADDRMODE_ABSOLUTE* = D3DVS_ADDRESSMODE_TYPE(0'i32)
  D3DVS_ADDRMODE_RELATIVE* = D3DVS_ADDRESSMODE_TYPE(8192'i32)
  D3DVS_ADDRMODE_FORCE_DWORD* = D3DVS_ADDRESSMODE_TYPE(0x7FFFFFFF'i32)

const
  D3DSHADER_ADDRMODE_ABSOLUTE* = D3DSHADER_ADDRESSMODE_TYPE(0'i32)
  D3DSHADER_ADDRMODE_RELATIVE* = D3DSHADER_ADDRESSMODE_TYPE(8192'i32)
  D3DSHADER_ADDRMODE_FORCE_DWORD* = D3DSHADER_ADDRESSMODE_TYPE(0x7FFFFFFF'i32)

const
  D3DSPSM_NONE* = D3DSHADER_PARAM_SRCMOD_TYPE(0'i32)
  D3DSPSM_NEG* = D3DSHADER_PARAM_SRCMOD_TYPE(16777216'i32)
  D3DSPSM_BIAS* = D3DSHADER_PARAM_SRCMOD_TYPE(33554432'i32)
  D3DSPSM_BIASNEG* = D3DSHADER_PARAM_SRCMOD_TYPE(50331648'i32)
  D3DSPSM_SIGN* = D3DSHADER_PARAM_SRCMOD_TYPE(67108864'i32)
  D3DSPSM_SIGNNEG* = D3DSHADER_PARAM_SRCMOD_TYPE(83886080'i32)
  D3DSPSM_COMP* = D3DSHADER_PARAM_SRCMOD_TYPE(100663296'i32)
  D3DSPSM_X2* = D3DSHADER_PARAM_SRCMOD_TYPE(117440512'i32)
  D3DSPSM_X2NEG* = D3DSHADER_PARAM_SRCMOD_TYPE(134217728'i32)
  D3DSPSM_DZ* = D3DSHADER_PARAM_SRCMOD_TYPE(150994944'i32)
  D3DSPSM_DW* = D3DSHADER_PARAM_SRCMOD_TYPE(167772160'i32)
  D3DSPSM_ABS* = D3DSHADER_PARAM_SRCMOD_TYPE(184549376'i32)
  D3DSPSM_ABSNEG* = D3DSHADER_PARAM_SRCMOD_TYPE(201326592'i32)
  D3DSPSM_NOT* = D3DSHADER_PARAM_SRCMOD_TYPE(218103808'i32)
  D3DSPSM_FORCE_DWORD* = D3DSHADER_PARAM_SRCMOD_TYPE(0x7FFFFFFF'i32)

const
  D3DBASIS_BEZIER* = D3DBASISTYPE(0'i32)
  D3DBASIS_BSPLINE* = D3DBASISTYPE(1'i32)
  D3DBASIS_CATMULL_ROM* = D3DBASISTYPE(2'i32)
  D3DBASIS_FORCE_DWORD* = D3DBASISTYPE(0x7FFFFFFF'i32)

const
  D3DDEGREE_LINEAR* = D3DDEGREETYPE(1'i32)
  D3DDEGREE_QUADRATIC* = D3DDEGREETYPE(2'i32)
  D3DDEGREE_CUBIC* = D3DDEGREETYPE(3'i32)
  D3DDEGREE_QUINTIC* = D3DDEGREETYPE(5'i32)
  D3DDEGREE_FORCE_DWORD* = D3DDEGREETYPE(0x7FFFFFFF'i32)

const
  D3DPATCHEDGE_DISCRETE* = D3DPATCHEDGESTYLE(0'i32)
  D3DPATCHEDGE_CONTINUOUS* = D3DPATCHEDGESTYLE(1'i32)
  D3DPATCHEDGE_FORCE_DWORD* = D3DPATCHEDGESTYLE(0x7FFFFFFF'i32)

const
  D3DSBT_ALL* = D3DSTATEBLOCKTYPE(1'i32)
  D3DSBT_PIXELSTATE* = D3DSTATEBLOCKTYPE(2'i32)
  D3DSBT_VERTEXSTATE* = D3DSTATEBLOCKTYPE(3'i32)
  D3DSBT_FORCE_DWORD* = D3DSTATEBLOCKTYPE(0x7FFFFFFF'i32)

const
  D3DVBF_DISABLE* = D3DVERTEXBLENDFLAGS(0'i32)
  D3DVBF_1WEIGHTS* = D3DVERTEXBLENDFLAGS(1'i32)
  D3DVBF_2WEIGHTS* = D3DVERTEXBLENDFLAGS(2'i32)
  D3DVBF_3WEIGHTS* = D3DVERTEXBLENDFLAGS(3'i32)
  D3DVBF_TWEENING* = D3DVERTEXBLENDFLAGS(255'i32)
  D3DVBF_0WEIGHTS* = D3DVERTEXBLENDFLAGS(256'i32)
  D3DVBF_FORCE_DWORD* = D3DVERTEXBLENDFLAGS(0x7FFFFFFF'i32)

const
  D3DTTFF_DISABLE* = D3DTEXTURETRANSFORMFLAGS(0'i32)
  D3DTTFF_COUNT1* = D3DTEXTURETRANSFORMFLAGS(1'i32)
  D3DTTFF_COUNT2* = D3DTEXTURETRANSFORMFLAGS(2'i32)
  D3DTTFF_COUNT3* = D3DTEXTURETRANSFORMFLAGS(3'i32)
  D3DTTFF_COUNT4* = D3DTEXTURETRANSFORMFLAGS(4'i32)
  D3DTTFF_PROJECTED* = D3DTEXTURETRANSFORMFLAGS(256'i32)
  D3DTTFF_FORCE_DWORD* = D3DTEXTURETRANSFORMFLAGS(0x7FFFFFFF'i32)

const
  D3DDEVTYPE_HAL* = D3DDEVTYPE(1'i32)
  D3DDEVTYPE_REF* = D3DDEVTYPE(2'i32)
  D3DDEVTYPE_SW* = D3DDEVTYPE(3'i32)
  D3DDEVTYPE_NULLREF* = D3DDEVTYPE(4'i32)
  D3DDEVTYPE_FORCE_DWORD* = D3DDEVTYPE(0x7FFFFFFF'i32)

const
  D3DMULTISAMPLE_NONE* = D3DMULTISAMPLE_TYPE(0'i32)
  D3DMULTISAMPLE_NONMASKABLE* = D3DMULTISAMPLE_TYPE(1'i32)
  D3DMULTISAMPLE_2_SAMPLES* = D3DMULTISAMPLE_TYPE(2'i32)
  D3DMULTISAMPLE_3_SAMPLES* = D3DMULTISAMPLE_TYPE(3'i32)
  D3DMULTISAMPLE_4_SAMPLES* = D3DMULTISAMPLE_TYPE(4'i32)
  D3DMULTISAMPLE_5_SAMPLES* = D3DMULTISAMPLE_TYPE(5'i32)
  D3DMULTISAMPLE_6_SAMPLES* = D3DMULTISAMPLE_TYPE(6'i32)
  D3DMULTISAMPLE_7_SAMPLES* = D3DMULTISAMPLE_TYPE(7'i32)
  D3DMULTISAMPLE_8_SAMPLES* = D3DMULTISAMPLE_TYPE(8'i32)
  D3DMULTISAMPLE_9_SAMPLES* = D3DMULTISAMPLE_TYPE(9'i32)
  D3DMULTISAMPLE_10_SAMPLES* = D3DMULTISAMPLE_TYPE(10'i32)
  D3DMULTISAMPLE_11_SAMPLES* = D3DMULTISAMPLE_TYPE(11'i32)
  D3DMULTISAMPLE_12_SAMPLES* = D3DMULTISAMPLE_TYPE(12'i32)
  D3DMULTISAMPLE_13_SAMPLES* = D3DMULTISAMPLE_TYPE(13'i32)
  D3DMULTISAMPLE_14_SAMPLES* = D3DMULTISAMPLE_TYPE(14'i32)
  D3DMULTISAMPLE_15_SAMPLES* = D3DMULTISAMPLE_TYPE(15'i32)
  D3DMULTISAMPLE_16_SAMPLES* = D3DMULTISAMPLE_TYPE(16'i32)
  D3DMULTISAMPLE_FORCE_DWORD* = D3DMULTISAMPLE_TYPE(0x7FFFFFFF'i32)

const
  D3DFMT_UNKNOWN* = D3DFORMAT(0'i32)
  D3DFMT_R8G8B8* = D3DFORMAT(20'i32)
  D3DFMT_A8R8G8B8* = D3DFORMAT(21'i32)
  D3DFMT_X8R8G8B8* = D3DFORMAT(22'i32)
  D3DFMT_R5G6B5* = D3DFORMAT(23'i32)
  D3DFMT_X1R5G5B5* = D3DFORMAT(24'i32)
  D3DFMT_A1R5G5B5* = D3DFORMAT(25'i32)
  D3DFMT_A4R4G4B4* = D3DFORMAT(26'i32)
  D3DFMT_R3G3B2* = D3DFORMAT(27'i32)
  D3DFMT_A8* = D3DFORMAT(28'i32)
  D3DFMT_A8R3G3B2* = D3DFORMAT(29'i32)
  D3DFMT_X4R4G4B4* = D3DFORMAT(30'i32)
  D3DFMT_A2B10G10R10* = D3DFORMAT(31'i32)
  D3DFMT_A8B8G8R8* = D3DFORMAT(32'i32)
  D3DFMT_X8B8G8R8* = D3DFORMAT(33'i32)
  D3DFMT_G16R16* = D3DFORMAT(34'i32)
  D3DFMT_A2R10G10B10* = D3DFORMAT(35'i32)
  D3DFMT_A16B16G16R16* = D3DFORMAT(36'i32)
  D3DFMT_A8P8* = D3DFORMAT(40'i32)
  D3DFMT_P8* = D3DFORMAT(41'i32)
  D3DFMT_L8* = D3DFORMAT(50'i32)
  D3DFMT_A8L8* = D3DFORMAT(51'i32)
  D3DFMT_A4L4* = D3DFORMAT(52'i32)
  D3DFMT_V8U8* = D3DFORMAT(60'i32)
  D3DFMT_L6V5U5* = D3DFORMAT(61'i32)
  D3DFMT_X8L8V8U8* = D3DFORMAT(62'i32)
  D3DFMT_Q8W8V8U8* = D3DFORMAT(63'i32)
  D3DFMT_V16U16* = D3DFORMAT(64'i32)
  D3DFMT_A2W10V10U10* = D3DFORMAT(67'i32)
  D3DFMT_UYVY* = D3DFORMAT(1498831189'i32)
  D3DFMT_R8G8_B8G8* = D3DFORMAT(1195525970'i32)
  D3DFMT_YUY2* = D3DFORMAT(844715353'i32)
  D3DFMT_G8R8_G8B8* = D3DFORMAT(1111970375'i32)
  D3DFMT_DXT1* = D3DFORMAT(827611204'i32)
  D3DFMT_DXT2* = D3DFORMAT(844388420'i32)
  D3DFMT_DXT3* = D3DFORMAT(861165636'i32)
  D3DFMT_DXT4* = D3DFORMAT(877942852'i32)
  D3DFMT_DXT5* = D3DFORMAT(894720068'i32)
  D3DFMT_D16_LOCKABLE* = D3DFORMAT(70'i32)
  D3DFMT_D32* = D3DFORMAT(71'i32)
  D3DFMT_D15S1* = D3DFORMAT(73'i32)
  D3DFMT_D24S8* = D3DFORMAT(75'i32)
  D3DFMT_D24X8* = D3DFORMAT(77'i32)
  D3DFMT_D24X4S4* = D3DFORMAT(79'i32)
  D3DFMT_D16* = D3DFORMAT(80'i32)
  D3DFMT_D32F_LOCKABLE* = D3DFORMAT(82'i32)
  D3DFMT_D24FS8* = D3DFORMAT(83'i32)
  D3DFMT_D32_LOCKABLE* = D3DFORMAT(84'i32)
  D3DFMT_S8_LOCKABLE* = D3DFORMAT(85'i32)
  D3DFMT_L16* = D3DFORMAT(81'i32)
  D3DFMT_VERTEXDATA* = D3DFORMAT(100'i32)
  D3DFMT_INDEX16* = D3DFORMAT(101'i32)
  D3DFMT_INDEX32* = D3DFORMAT(102'i32)
  D3DFMT_Q16W16V16U16* = D3DFORMAT(110'i32)
  D3DFMT_MULTI2_ARGB8* = D3DFORMAT(827606349'i32)
  D3DFMT_R16F* = D3DFORMAT(111'i32)
  D3DFMT_G16R16F* = D3DFORMAT(112'i32)
  D3DFMT_A16B16G16R16F* = D3DFORMAT(113'i32)
  D3DFMT_R32F* = D3DFORMAT(114'i32)
  D3DFMT_G32R32F* = D3DFORMAT(115'i32)
  D3DFMT_A32B32G32R32F* = D3DFORMAT(116'i32)
  D3DFMT_CxV8U8* = D3DFORMAT(117'i32)
  D3DFMT_A1* = D3DFORMAT(118'i32)
  D3DFMT_A2B10G10R10_XR_BIAS* = D3DFORMAT(119'i32)
  D3DFMT_BINARYBUFFER* = D3DFORMAT(199'i32)
  D3DFMT_FORCE_DWORD* = D3DFORMAT(0x7FFFFFFF'i32)

const
  D3DSWAPEFFECT_DISCARD* = D3DSWAPEFFECT(1'i32)
  D3DSWAPEFFECT_FLIP* = D3DSWAPEFFECT(2'i32)
  D3DSWAPEFFECT_COPY* = D3DSWAPEFFECT(3'i32)
  D3DSWAPEFFECT_OVERLAY* = D3DSWAPEFFECT(4'i32)
  D3DSWAPEFFECT_FLIPEX* = D3DSWAPEFFECT(5'i32)
  D3DSWAPEFFECT_FORCE_DWORD* = D3DSWAPEFFECT(0x7FFFFFFF'i32)

const
  D3DPOOL_DEFAULT* = D3DPOOL(0'i32)
  D3DPOOL_MANAGED* = D3DPOOL(1'i32)
  D3DPOOL_SYSTEMMEM* = D3DPOOL(2'i32)
  D3DPOOL_SCRATCH* = D3DPOOL(3'i32)
  D3DPOOL_FORCE_DWORD* = D3DPOOL(0x7FFFFFFF'i32)

const
  D3DBACKBUFFER_TYPE_MONO* = D3DBACKBUFFER_TYPE(0'i32)
  D3DBACKBUFFER_TYPE_LEFT* = D3DBACKBUFFER_TYPE(1'i32)
  D3DBACKBUFFER_TYPE_RIGHT* = D3DBACKBUFFER_TYPE(2'i32)
  D3DBACKBUFFER_TYPE_FORCE_DWORD* = D3DBACKBUFFER_TYPE(0x7FFFFFFF'i32)

const
  D3DRTYPE_SURFACE* = D3DRESOURCETYPE(1'i32)
  D3DRTYPE_VOLUME* = D3DRESOURCETYPE(2'i32)
  D3DRTYPE_TEXTURE* = D3DRESOURCETYPE(3'i32)
  D3DRTYPE_VOLUMETEXTURE* = D3DRESOURCETYPE(4'i32)
  D3DRTYPE_CUBETEXTURE* = D3DRESOURCETYPE(5'i32)
  D3DRTYPE_VERTEXBUFFER* = D3DRESOURCETYPE(6'i32)
  D3DRTYPE_INDEXBUFFER* = D3DRESOURCETYPE(7'i32)
  D3DRTYPE_FORCE_DWORD* = D3DRESOURCETYPE(0x7FFFFFFF'i32)

const
  D3DCUBEMAP_FACE_POSITIVE_X* = D3DCUBEMAP_FACES(0'i32)
  D3DCUBEMAP_FACE_NEGATIVE_X* = D3DCUBEMAP_FACES(1'i32)
  D3DCUBEMAP_FACE_POSITIVE_Y* = D3DCUBEMAP_FACES(2'i32)
  D3DCUBEMAP_FACE_NEGATIVE_Y* = D3DCUBEMAP_FACES(3'i32)
  D3DCUBEMAP_FACE_POSITIVE_Z* = D3DCUBEMAP_FACES(4'i32)
  D3DCUBEMAP_FACE_NEGATIVE_Z* = D3DCUBEMAP_FACES(5'i32)
  D3DCUBEMAP_FACE_FORCE_DWORD* = D3DCUBEMAP_FACES(0x7FFFFFFF'i32)

const
  D3DDMT_ENABLE* = D3DDEBUGMONITORTOKENS(0'i32)
  D3DDMT_DISABLE* = D3DDEBUGMONITORTOKENS(1'i32)
  D3DDMT_FORCE_DWORD* = D3DDEBUGMONITORTOKENS(0x7FFFFFFF'i32)

const
  D3DQUERYTYPE_VCACHE* = D3DQUERYTYPE(4'i32)
  D3DQUERYTYPE_RESOURCEMANAGER* = D3DQUERYTYPE(5'i32)
  D3DQUERYTYPE_VERTEXSTATS* = D3DQUERYTYPE(6'i32)
  D3DQUERYTYPE_EVENT* = D3DQUERYTYPE(8'i32)
  D3DQUERYTYPE_OCCLUSION* = D3DQUERYTYPE(9'i32)
  D3DQUERYTYPE_TIMESTAMP* = D3DQUERYTYPE(10'i32)
  D3DQUERYTYPE_TIMESTAMPDISJOINT* = D3DQUERYTYPE(11'i32)
  D3DQUERYTYPE_TIMESTAMPFREQ* = D3DQUERYTYPE(12'i32)
  D3DQUERYTYPE_PIPELINETIMINGS* = D3DQUERYTYPE(13'i32)
  D3DQUERYTYPE_INTERFACETIMINGS* = D3DQUERYTYPE(14'i32)
  D3DQUERYTYPE_VERTEXTIMINGS* = D3DQUERYTYPE(15'i32)
  D3DQUERYTYPE_PIXELTIMINGS* = D3DQUERYTYPE(16'i32)
  D3DQUERYTYPE_BANDWIDTHTIMINGS* = D3DQUERYTYPE(17'i32)
  D3DQUERYTYPE_CACHEUTILIZATION* = D3DQUERYTYPE(18'i32)
  D3DQUERYTYPE_MEMORYPRESSURE* = D3DQUERYTYPE(19'i32)

const
  D3DCOMPOSERECTS_COPY* = D3DCOMPOSERECTSOP(1'i32)
  D3DCOMPOSERECTS_OR* = D3DCOMPOSERECTSOP(2'i32)
  D3DCOMPOSERECTS_AND* = D3DCOMPOSERECTSOP(3'i32)
  D3DCOMPOSERECTS_NEG* = D3DCOMPOSERECTSOP(4'i32)
  D3DCOMPOSERECTS_FORCE_DWORD* = D3DCOMPOSERECTSOP(0x7FFFFFFF'i32)

const
  D3DSCANLINEORDERING_UNKNOWN* = D3DSCANLINEORDERING(0'i32)
  D3DSCANLINEORDERING_PROGRESSIVE* = D3DSCANLINEORDERING(1'i32)
  D3DSCANLINEORDERING_INTERLACED* = D3DSCANLINEORDERING(2'i32)

const
  D3DDISPLAYROTATION_IDENTITY* = D3DDISPLAYROTATION(1'i32)
  D3DDISPLAYROTATION_90* = D3DDISPLAYROTATION(2'i32)
  D3DDISPLAYROTATION_180* = D3DDISPLAYROTATION(3'i32)
  D3DDISPLAYROTATION_270* = D3DDISPLAYROTATION(4'i32)

const
  D3DAUTHENTICATEDCHANNEL_D3D9* = D3DAUTHENTICATEDCHANNELTYPE(1'i32)
  D3DAUTHENTICATEDCHANNEL_DRIVER_SOFTWARE* = D3DAUTHENTICATEDCHANNELTYPE(2'i32)
  D3DAUTHENTICATEDCHANNEL_DRIVER_HARDWARE* = D3DAUTHENTICATEDCHANNELTYPE(3'i32)

const
  PROCESSIDTYPE_UNKNOWN* = D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE(0'i32)
  PROCESSIDTYPE_DWM* = D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE(1'i32)
  PROCESSIDTYPE_HANDLE* = D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE(2'i32)

const
  D3DBUSTYPE_OTHER* = D3DBUSTYPE(0'i32)
  D3DBUSTYPE_PCI* = D3DBUSTYPE(1'i32)
  D3DBUSTYPE_PCIX* = D3DBUSTYPE(2'i32)
  D3DBUSTYPE_PCIEXPRESS* = D3DBUSTYPE(3'i32)
  D3DBUSTYPE_AGP* = D3DBUSTYPE(4'i32)
  D3DBUSIMPL_MODIFIER_INSIDE_OF_CHIPSET* = D3DBUSTYPE(0x00010000'i32)
  D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP* = D3DBUSTYPE(0x00020000'i32)
  D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET* = D3DBUSTYPE(0x00030000'i32)
  D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR* = D3DBUSTYPE(0x00040000'i32)
  D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE* = D3DBUSTYPE(0x00050000'i32)
  D3DBUSIMPL_MODIFIER_NON_STANDARD* = D3DBUSTYPE(0x80000000'i32)

const
  D3DMAXUSERCLIPPLANES* = 32'i32
  D3DCLIPPLANE0* = 1'i32
  D3DCLIPPLANE1* = 2'i32
  D3DCLIPPLANE2* = 4'i32
  D3DCLIPPLANE3* = 8'i32
  D3DCLIPPLANE4* = 0x00000010'i32
  D3DCLIPPLANE5* = 0x00000020'i32
  D3DCS_LEFT* = 1'i32
  D3DCS_RIGHT* = 2'i32
  D3DCS_TOP* = 4'i32
  D3DCS_BOTTOM* = 8'i32
  D3DCS_FRONT* = 0x00000010'i32
  D3DCS_BACK* = 0x00000020'i32
  D3DCS_PLANE0* = 0x00000040'i32
  D3DCS_PLANE1* = 0x00000080'i32
  D3DCS_PLANE2* = 0x00000100'i32
  D3DCS_PLANE3* = 0x00000200'i32
  D3DCS_PLANE4* = 0x00000400'i32
  D3DCS_PLANE5* = 0x00000800'i32
  D3DCS_ALL* = 4095'i32
  D3DCLEAR_TARGET* = 1'i32
  D3DCLEAR_ZBUFFER* = 2'i32
  D3DCLEAR_STENCIL* = 4'i32
  D3DTS_WORLD* = D3DTRANSFORMSTATETYPE(256'i32)
  D3DTS_WORLD1* = D3DTRANSFORMSTATETYPE(257'i32)
  D3DTS_WORLD2* = D3DTRANSFORMSTATETYPE(258'i32)
  D3DTS_WORLD3* = D3DTRANSFORMSTATETYPE(259'i32)
  D3D_MAX_SIMULTANEOUS_RENDERTARGETS* = 4'i32
  D3DRENDERSTATE_WRAPBIAS* = 128'i32
  D3DWRAP_U* = 1'i32
  D3DWRAP_V* = 2'i32
  D3DWRAP_W* = 4'i32
  D3DWRAPCOORD_0* = 1'i32
  D3DWRAPCOORD_1* = 2'i32
  D3DWRAPCOORD_2* = 4'i32
  D3DWRAPCOORD_3* = 8'i32
  D3DCOLORWRITEENABLE_RED* = 1'i32
  D3DCOLORWRITEENABLE_GREEN* = 2'i32
  D3DCOLORWRITEENABLE_BLUE* = 4'i32
  D3DCOLORWRITEENABLE_ALPHA* = 8'i32
  D3DDMAPSAMPLER* = 256'i32
  D3DVERTEXTEXTURESAMPLER0* = 257'i32
  D3DVERTEXTEXTURESAMPLER1* = 258'i32
  D3DVERTEXTEXTURESAMPLER2* = 259'i32
  D3DVERTEXTEXTURESAMPLER3* = 260'i32
  D3DTSS_TCI_PASSTHRU* = 0'i32
  D3DTSS_TCI_CAMERASPACENORMAL* = 0x00010000'i32
  D3DTSS_TCI_CAMERASPACEPOSITION* = 0x00020000'i32
  D3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR* = 0x00030000'i32
  D3DTSS_TCI_SPHEREMAP* = 0x00040000'i32
  D3DTA_SELECTMASK* = 0x0000000F'i32
  D3DTA_DIFFUSE* = 0'i32
  D3DTA_CURRENT* = 1'i32
  D3DTA_TEXTURE* = 2'i32
  D3DTA_TFACTOR* = 3'i32
  D3DTA_SPECULAR* = 4'i32
  D3DTA_TEMP* = 5'i32
  D3DTA_CONSTANT* = 6'i32
  D3DTA_COMPLEMENT* = 0x00000010'i32
  D3DTA_ALPHAREPLICATE* = 0x00000020'i32
  D3DPV_DONOTCOPYDATA* = 1'i32
  D3DFVF_RESERVED0* = 1'i32
  D3DFVF_POSITION_MASK* = 0x0000400E'i32
  D3DFVF_XYZ* = 2'i32
  D3DFVF_XYZRHW* = 4'i32
  D3DFVF_XYZB1* = 6'i32
  D3DFVF_XYZB2* = 8'i32
  D3DFVF_XYZB3* = 0x0000000A'i32
  D3DFVF_XYZB4* = 0x0000000C'i32
  D3DFVF_XYZB5* = 0x0000000E'i32
  D3DFVF_XYZW* = 0x00004002'i32
  D3DFVF_NORMAL* = 0x00000010'i32
  D3DFVF_PSIZE* = 0x00000020'i32
  D3DFVF_DIFFUSE* = 0x00000040'i32
  D3DFVF_SPECULAR* = 0x00000080'i32
  D3DFVF_TEXCOUNT_MASK* = 0x00000F00'i32
  D3DFVF_TEXCOUNT_SHIFT* = 8'i32
  D3DFVF_TEX0* = 0'i32
  D3DFVF_TEX1* = 0x00000100'i32
  D3DFVF_TEX2* = 0x00000200'i32
  D3DFVF_TEX3* = 0x00000300'i32
  D3DFVF_TEX4* = 0x00000400'i32
  D3DFVF_TEX5* = 0x00000500'i32
  D3DFVF_TEX6* = 0x00000600'i32
  D3DFVF_TEX7* = 0x00000700'i32
  D3DFVF_TEX8* = 0x00000800'i32
  D3DFVF_LASTBETA_UBYTE4* = 0x00001000'i32
  D3DFVF_LASTBETA_D3DCOLOR* = 0x00008000'i32
  D3DFVF_RESERVED2* = 0x00006000'i32
  MAXD3DDECLUSAGE* = D3DDECLUSAGE(13'i32)
  MAXD3DDECLUSAGEINDEX* = 15'i32
  MAXD3DDECLLENGTH* = 64'i32
  MAXD3DDECLMETHOD* = D3DDECLMETHOD(6'i32)
  MAXD3DDECLTYPE* = D3DDECLTYPE(17'i32)
  D3DDP_MAXTEXCOORD* = 8'i32
  D3DSTREAMSOURCE_INDEXEDDATA* = 0x40000000'i32
  D3DSTREAMSOURCE_INSTANCEDATA* = 0x80000000'i32
  D3DSI_OPCODE_MASK* = 0x0000FFFF'i32
  D3DSI_INSTLENGTH_MASK* = 0x0F000000'i32
  D3DSI_INSTLENGTH_SHIFT* = 24'i32
  D3DSI_COISSUE* = 0x40000000'i32
  D3DSP_OPCODESPECIFICCONTROL_MASK* = 0x00FF0000'i32
  D3DSP_OPCODESPECIFICCONTROL_SHIFT* = 16'i32
  D3DSI_TEXLD_PROJECT* = 0x00010000'i32
  D3DSI_TEXLD_BIAS* = 0x00020000'i32
  D3DSHADER_COMPARISON_SHIFT* = 16'i32
  D3DSHADER_COMPARISON_MASK* = 0x00070000'i32
  D3DSHADER_INSTRUCTION_PREDICATED* = 0x10000000'i32
  D3DSP_DCL_USAGE_SHIFT* = 0'i32
  D3DSP_DCL_USAGE_MASK* = 0x0000000F'i32
  D3DSP_DCL_USAGEINDEX_SHIFT* = 16'i32
  D3DSP_DCL_USAGEINDEX_MASK* = 0x000F0000'i32
  D3DSP_TEXTURETYPE_SHIFT* = 27'i32
  D3DSP_TEXTURETYPE_MASK* = 0x78000000'i32
  D3DSP_REGNUM_MASK* = 0x000007FF'i32
  D3DSP_WRITEMASK_0* = 0x00010000'i32
  D3DSP_WRITEMASK_1* = 0x00020000'i32
  D3DSP_WRITEMASK_2* = 0x00040000'i32
  D3DSP_WRITEMASK_3* = 0x00080000'i32
  D3DSP_WRITEMASK_ALL* = 0x000F0000'i32
  D3DSP_DSTMOD_SHIFT* = 20'i32
  D3DSP_DSTMOD_MASK* = 0x00F00000'i32
  D3DSPDM_NONE* = 0'i32
  D3DSPDM_SATURATE* = 0x00100000'i32
  D3DSPDM_PARTIALPRECISION* = 0x00200000'i32
  D3DSPDM_MSAMPCENTROID* = 0x00400000'i32
  D3DSP_DSTSHIFT_SHIFT* = 24'i32
  D3DSP_DSTSHIFT_MASK* = 0x0F000000'i32
  D3DSP_REGTYPE_SHIFT* = 28'i32
  D3DSP_REGTYPE_SHIFT2* = 8'i32
  D3DSP_REGTYPE_MASK* = 0x70000000'i32
  D3DSP_REGTYPE_MASK2* = 0x00001800'i32
  D3DVS_ADDRESSMODE_SHIFT* = 13'i32
  D3DVS_ADDRESSMODE_MASK* = 0x00002000'i32
  D3DSHADER_ADDRESSMODE_SHIFT* = 13'i32
  D3DSHADER_ADDRESSMODE_MASK* = 0x00002000'i32
  D3DVS_SWIZZLE_SHIFT* = 16'i32
  D3DVS_SWIZZLE_MASK* = 0x00FF0000'i32
  D3DVS_X_X* = 0'i32
  D3DVS_X_Y* = 0x00010000'i32
  D3DVS_X_Z* = 0x00020000'i32
  D3DVS_X_W* = 0x00030000'i32
  D3DVS_Y_X* = 0'i32
  D3DVS_Y_Y* = 0x00040000'i32
  D3DVS_Y_Z* = 0x00080000'i32
  D3DVS_Y_W* = 0x000C0000'i32
  D3DVS_Z_X* = 0'i32
  D3DVS_Z_Y* = 0x00100000'i32
  D3DVS_Z_Z* = 0x00200000'i32
  D3DVS_Z_W* = 0x00300000'i32
  D3DVS_W_X* = 0'i32
  D3DVS_W_Y* = 0x00400000'i32
  D3DVS_W_Z* = 0x00800000'i32
  D3DVS_W_W* = 0x00C00000'i32
  D3DVS_NOSWIZZLE* = 14942208'i32
  D3DSP_SWIZZLE_SHIFT* = 16'i32
  D3DSP_SWIZZLE_MASK* = 0x00FF0000'i32
  D3DSP_NOSWIZZLE* = 0x00E40000'i32
  D3DSP_REPLICATERED* = 0'i32
  D3DSP_REPLICATEGREEN* = 0x00550000'i32
  D3DSP_REPLICATEBLUE* = 0x00AA0000'i32
  D3DSP_REPLICATEALPHA* = 0x00FF0000'i32
  D3DSP_SRCMOD_SHIFT* = 24'i32
  D3DSP_SRCMOD_MASK* = 0x0F000000'i32
  D3DSI_COMMENTSIZE_SHIFT* = 16'i32
  D3DSI_COMMENTSIZE_MASK* = 0x7FFF0000'i32
  D3DFVF_TEXTUREFORMAT2* = 0'i32
  D3DFVF_TEXTUREFORMAT1* = 3'i32
  D3DFVF_TEXTUREFORMAT3* = 1'i32
  D3DFVF_TEXTUREFORMAT4* = 2'i32
  D3DPRESENT_RATE_DEFAULT* = 0'i32
  D3DPRESENTFLAG_LOCKABLE_BACKBUFFER* = 1'i32
  D3DPRESENTFLAG_DISCARD_DEPTHSTENCIL* = 2'i32
  D3DPRESENTFLAG_DEVICECLIP* = 4'i32
  D3DPRESENTFLAG_VIDEO* = 0x00000010'i32
  D3DPRESENTFLAG_NOAUTOROTATE* = 0x00000020'i32
  D3DPRESENTFLAG_UNPRUNEDMODE* = 0x00000040'i32
  D3DPRESENTFLAG_OVERLAY_LIMITEDRGB* = 0x00000080'i32
  D3DPRESENTFLAG_OVERLAY_YCbCr_BT709* = 0x00000100'i32
  D3DPRESENTFLAG_OVERLAY_YCbCr_xvYCC* = 0x00000200'i32
  D3DPRESENTFLAG_RESTRICTED_CONTENT* = 0x00000400'i32
  D3DPRESENTFLAG_RESTRICT_SHARED_RESOURCE_DRIVER* = 0x00000800'i32
  D3DUSAGE_RENDERTARGET* = 1'i32
  D3DUSAGE_DEPTHSTENCIL* = 2'i32
  D3DUSAGE_DYNAMIC* = 0x00000200'i32
  D3DUSAGE_NONSECURE* = 0x00800000'i32
  D3DUSAGE_AUTOGENMIPMAP* = 0x00000400'i32
  D3DUSAGE_DMAP* = 0x00004000'i32
  D3DUSAGE_QUERY_LEGACYBUMPMAP* = 0x00008000'i32
  D3DUSAGE_QUERY_SRGBREAD* = 0x00010000'i32
  D3DUSAGE_QUERY_FILTER* = 0x00020000'i32
  D3DUSAGE_QUERY_SRGBWRITE* = 0x00040000'i32
  D3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING* = 0x00080000'i32
  D3DUSAGE_QUERY_VERTEXTEXTURE* = 0x00100000'i32
  D3DUSAGE_QUERY_WRAPANDMIP* = 0x00200000'i32
  D3DUSAGE_WRITEONLY* = 8'i32
  D3DUSAGE_SOFTWAREPROCESSING* = 0x00000010'i32
  D3DUSAGE_DONOTCLIP* = 0x00000020'i32
  D3DUSAGE_POINTS* = 0x00000040'i32
  D3DUSAGE_RTPATCHES* = 0x00000080'i32
  D3DUSAGE_NPATCHES* = 0x00000100'i32
  D3DUSAGE_TEXTAPI* = 0x10000000'i32
  D3DUSAGE_RESTRICTED_CONTENT* = 0x00000800'i32
  D3DUSAGE_RESTRICT_SHARED_RESOURCE* = 0x00002000'i32
  D3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER* = 0x00001000'i32
  D3DLOCK_READONLY* = 0x00000010'i32
  D3DLOCK_DISCARD* = 0x00002000'i32
  D3DLOCK_NOOVERWRITE* = 0x00001000'i32
  D3DLOCK_NOSYSLOCK* = 0x00000800'i32
  D3DLOCK_DONOTWAIT* = 0x00004000'i32
  D3DLOCK_NO_DIRTY_UPDATE* = 0x00008000'i32
  MAX_DEVICE_IDENTIFIER_STRING* = 512'i32
  D3DISSUE_END* = 1'i32
  D3DISSUE_BEGIN* = 2'i32
  D3DGETDATA_FLUSH* = 1'i32
  D3DRTYPECOUNT* = D3DRESOURCETYPE(8'i32)
  D3DCOMPOSERECTS_MAXNUMRECTS* = 0x0000FFFF'i32
  D3DCONVOLUTIONMONO_MAXWIDTH* = 7'i32
  D3DCONVOLUTIONMONO_MAXHEIGHT* = 7'i32
  D3DFMT_A1_SURFACE_MAXWIDTH* = 8192'i32
  D3DFMT_A1_SURFACE_MAXHEIGHT* = 2048'i32
  D3D9_RESOURCE_PRIORITY_MINIMUM* = 0x28000000'i32
  D3D9_RESOURCE_PRIORITY_LOW* = 0x50000000'i32
  D3D9_RESOURCE_PRIORITY_NORMAL* = 0x78000000'i32
  D3D9_RESOURCE_PRIORITY_HIGH* = 0xA0000000'i32
  D3D9_RESOURCE_PRIORITY_MAXIMUM* = 0xC8000000'i32
  D3D_OMAC_SIZE* = 16'i32
  D3DVS20CAPS_PREDICATION* = 1'i32
  D3DVS20_MAX_DYNAMICFLOWCONTROLDEPTH* = 24'i32
  D3DVS20_MIN_DYNAMICFLOWCONTROLDEPTH* = 0'i32
  D3DVS20_MAX_NUMTEMPS* = 32'i32
  D3DVS20_MIN_NUMTEMPS* = 12'i32
  D3DVS20_MAX_STATICFLOWCONTROLDEPTH* = 4'i32
  D3DVS20_MIN_STATICFLOWCONTROLDEPTH* = 1'i32
  D3DPS20CAPS_ARBITRARYSWIZZLE* = 1'i32
  D3DPS20CAPS_GRADIENTINSTRUCTIONS* = 2'i32
  D3DPS20CAPS_PREDICATION* = 4'i32
  D3DPS20CAPS_NODEPENDENTREADLIMIT* = 8'i32
  D3DPS20CAPS_NOTEXINSTRUCTIONLIMIT* = 0x00000010'i32
  D3DPS20_MAX_DYNAMICFLOWCONTROLDEPTH* = 24'i32
  D3DPS20_MIN_DYNAMICFLOWCONTROLDEPTH* = 0'i32
  D3DPS20_MAX_NUMTEMPS* = 32'i32
  D3DPS20_MIN_NUMTEMPS* = 12'i32
  D3DPS20_MAX_STATICFLOWCONTROLDEPTH* = 4'i32
  D3DPS20_MIN_STATICFLOWCONTROLDEPTH* = 0'i32
  D3DPS20_MAX_NUMINSTRUCTIONSLOTS* = 512'i32
  D3DPS20_MIN_NUMINSTRUCTIONSLOTS* = 96'i32
  D3DMIN30SHADERINSTRUCTIONS* = 512'i32
  D3DMAX30SHADERINSTRUCTIONS* = 32768'i32
  D3DOVERLAYCAPS_FULLRANGERGB* = 1'i32
  D3DOVERLAYCAPS_LIMITEDRANGERGB* = 2'i32
  D3DOVERLAYCAPS_YCbCr_BT601* = 4'i32
  D3DOVERLAYCAPS_YCbCr_BT709* = 8'i32
  D3DOVERLAYCAPS_YCbCr_BT601_xvYCC* = 0x00000010'i32
  D3DOVERLAYCAPS_YCbCr_BT709_xvYCC* = 0x00000020'i32
  D3DOVERLAYCAPS_STRETCHX* = 0x00000040'i32
  D3DOVERLAYCAPS_STRETCHY* = 0x00000080'i32
  D3DCPCAPS_SOFTWARE* = 1'i32
  D3DCPCAPS_HARDWARE* = 2'i32
  D3DCPCAPS_PROTECTIONALWAYSON* = 4'i32
  D3DCPCAPS_PARTIALDECRYPTION* = 8'i32
  D3DCPCAPS_CONTENTKEY* = 0x00000010'i32
  D3DCPCAPS_FRESHENSESSIONKEY* = 0x00000020'i32
  D3DCPCAPS_ENCRYPTEDREADBACK* = 0x00000040'i32
  D3DCPCAPS_ENCRYPTEDREADBACKKEY* = 0x00000080'i32
  D3DCPCAPS_SEQUENTIAL_CTR_IV* = 0x00000100'i32
  D3DCPCAPS_ENCRYPTSLICEDATAONLY* = 0x00000200'i32
  D3DCAPS_OVERLAY* = 0x00000800'i32
  D3DCAPS_READ_SCANLINE* = 0x00020000'i32
  D3DCAPS2_FULLSCREENGAMMA* = 0x00020000'i32
  D3DCAPS2_CANCALIBRATEGAMMA* = 0x00100000'i32
  D3DCAPS2_RESERVED* = 0x02000000'i32
  D3DCAPS2_CANMANAGERESOURCE* = 0x10000000'i32
  D3DCAPS2_DYNAMICTEXTURES* = 0x20000000'i32
  D3DCAPS2_CANAUTOGENMIPMAP* = 0x40000000'i32
  D3DCAPS2_CANSHARERESOURCE* = 0x80000000'i32
  D3DCAPS3_RESERVED* = 0x8000001F'i32
  D3DCAPS3_ALPHA_FULLSCREEN_FLIP_OR_DISCARD* = 0x00000020'i32
  D3DCAPS3_LINEAR_TO_SRGB_PRESENTATION* = 0x00000080'i32
  D3DCAPS3_COPY_TO_VIDMEM* = 0x00000100'i32
  D3DCAPS3_COPY_TO_SYSTEMMEM* = 0x00000200'i32
  D3DCAPS3_DXVAHD* = 0x00000400'i32
  D3DPRESENT_INTERVAL_DEFAULT* = 0'i32
  D3DPRESENT_INTERVAL_ONE* = 1'i32
  D3DPRESENT_INTERVAL_TWO* = 2'i32
  D3DPRESENT_INTERVAL_THREE* = 4'i32
  D3DPRESENT_INTERVAL_FOUR* = 8'i32
  D3DPRESENT_INTERVAL_IMMEDIATE* = 0x80000000'i32
  D3DCURSORCAPS_COLOR* = 1'i32
  D3DCURSORCAPS_LOWRES* = 2'i32
  D3DDEVCAPS_EXECUTESYSTEMMEMORY* = 0x00000010'i32
  D3DDEVCAPS_EXECUTEVIDEOMEMORY* = 0x00000020'i32
  D3DDEVCAPS_TLVERTEXSYSTEMMEMORY* = 0x00000040'i32
  D3DDEVCAPS_TLVERTEXVIDEOMEMORY* = 0x00000080'i32
  D3DDEVCAPS_TEXTURESYSTEMMEMORY* = 0x00000100'i32
  D3DDEVCAPS_TEXTUREVIDEOMEMORY* = 0x00000200'i32
  D3DDEVCAPS_DRAWPRIMTLVERTEX* = 0x00000400'i32
  D3DDEVCAPS_CANRENDERAFTERFLIP* = 0x00000800'i32
  D3DDEVCAPS_TEXTURENONLOCALVIDMEM* = 0x00001000'i32
  D3DDEVCAPS_DRAWPRIMITIVES2* = 0x00002000'i32
  D3DDEVCAPS_SEPARATETEXTUREMEMORIES* = 0x00004000'i32
  D3DDEVCAPS_DRAWPRIMITIVES2EX* = 0x00008000'i32
  D3DDEVCAPS_HWTRANSFORMANDLIGHT* = 0x00010000'i32
  D3DDEVCAPS_CANBLTSYSTONONLOCAL* = 0x00020000'i32
  D3DDEVCAPS_HWRASTERIZATION* = 0x00080000'i32
  D3DDEVCAPS_PUREDEVICE* = 0x00100000'i32
  D3DDEVCAPS_QUINTICRTPATCHES* = 0x00200000'i32
  D3DDEVCAPS_RTPATCHES* = 0x00400000'i32
  D3DDEVCAPS_RTPATCHHANDLEZERO* = 0x00800000'i32
  D3DDEVCAPS_NPATCHES* = 0x01000000'i32
  D3DPMISCCAPS_MASKZ* = 2'i32
  D3DPMISCCAPS_CULLNONE* = 0x00000010'i32
  D3DPMISCCAPS_CULLCW* = 0x00000020'i32
  D3DPMISCCAPS_CULLCCW* = 0x00000040'i32
  D3DPMISCCAPS_COLORWRITEENABLE* = 0x00000080'i32
  D3DPMISCCAPS_CLIPPLANESCALEDPOINTS* = 0x00000100'i32
  D3DPMISCCAPS_CLIPTLVERTS* = 0x00000200'i32
  D3DPMISCCAPS_TSSARGTEMP* = 0x00000400'i32
  D3DPMISCCAPS_BLENDOP* = 0x00000800'i32
  D3DPMISCCAPS_NULLREFERENCE* = 0x00001000'i32
  D3DPMISCCAPS_INDEPENDENTWRITEMASKS* = 0x00004000'i32
  D3DPMISCCAPS_PERSTAGECONSTANT* = 0x00008000'i32
  D3DPMISCCAPS_FOGANDSPECULARALPHA* = 0x00010000'i32
  D3DPMISCCAPS_SEPARATEALPHABLEND* = 0x00020000'i32
  D3DPMISCCAPS_MRTINDEPENDENTBITDEPTHS* = 0x00040000'i32
  D3DPMISCCAPS_MRTPOSTPIXELSHADERBLENDING* = 0x00080000'i32
  D3DPMISCCAPS_FOGVERTEXCLAMPED* = 0x00100000'i32
  D3DPMISCCAPS_POSTBLENDSRGBCONVERT* = 0x00200000'i32
  D3DLINECAPS_TEXTURE* = 1'i32
  D3DLINECAPS_ZTEST* = 2'i32
  D3DLINECAPS_BLEND* = 4'i32
  D3DLINECAPS_ALPHACMP* = 8'i32
  D3DLINECAPS_FOG* = 0x00000010'i32
  D3DLINECAPS_ANTIALIAS* = 0x00000020'i32
  D3DPRASTERCAPS_DITHER* = 1'i32
  D3DPRASTERCAPS_ZTEST* = 0x00000010'i32
  D3DPRASTERCAPS_FOGVERTEX* = 0x00000080'i32
  D3DPRASTERCAPS_FOGTABLE* = 0x00000100'i32
  D3DPRASTERCAPS_MIPMAPLODBIAS* = 0x00002000'i32
  D3DPRASTERCAPS_ZBUFFERLESSHSR* = 0x00008000'i32
  D3DPRASTERCAPS_FOGRANGE* = 0x00010000'i32
  D3DPRASTERCAPS_ANISOTROPY* = 0x00020000'i32
  D3DPRASTERCAPS_WBUFFER* = 0x00040000'i32
  D3DPRASTERCAPS_WFOG* = 0x00100000'i32
  D3DPRASTERCAPS_ZFOG* = 0x00200000'i32
  D3DPRASTERCAPS_COLORPERSPECTIVE* = 0x00400000'i32
  D3DPRASTERCAPS_SCISSORTEST* = 0x01000000'i32
  D3DPRASTERCAPS_SLOPESCALEDEPTHBIAS* = 0x02000000'i32
  D3DPRASTERCAPS_DEPTHBIAS* = 0x04000000'i32
  D3DPRASTERCAPS_MULTISAMPLE_TOGGLE* = 0x08000000'i32
  D3DPCMPCAPS_NEVER* = 1'i32
  D3DPCMPCAPS_LESS* = 2'i32
  D3DPCMPCAPS_EQUAL* = 4'i32
  D3DPCMPCAPS_LESSEQUAL* = 8'i32
  D3DPCMPCAPS_GREATER* = 0x00000010'i32
  D3DPCMPCAPS_NOTEQUAL* = 0x00000020'i32
  D3DPCMPCAPS_GREATEREQUAL* = 0x00000040'i32
  D3DPCMPCAPS_ALWAYS* = 0x00000080'i32
  D3DPBLENDCAPS_ZERO* = 1'i32
  D3DPBLENDCAPS_ONE* = 2'i32
  D3DPBLENDCAPS_SRCCOLOR* = 4'i32
  D3DPBLENDCAPS_INVSRCCOLOR* = 8'i32
  D3DPBLENDCAPS_SRCALPHA* = 0x00000010'i32
  D3DPBLENDCAPS_INVSRCALPHA* = 0x00000020'i32
  D3DPBLENDCAPS_DESTALPHA* = 0x00000040'i32
  D3DPBLENDCAPS_INVDESTALPHA* = 0x00000080'i32
  D3DPBLENDCAPS_DESTCOLOR* = 0x00000100'i32
  D3DPBLENDCAPS_INVDESTCOLOR* = 0x00000200'i32
  D3DPBLENDCAPS_SRCALPHASAT* = 0x00000400'i32
  D3DPBLENDCAPS_BOTHSRCALPHA* = 0x00000800'i32
  D3DPBLENDCAPS_BOTHINVSRCALPHA* = 0x00001000'i32
  D3DPBLENDCAPS_BLENDFACTOR* = 0x00002000'i32
  D3DPBLENDCAPS_SRCCOLOR2* = 0x00004000'i32
  D3DPBLENDCAPS_INVSRCCOLOR2* = 0x00008000'i32
  D3DPSHADECAPS_COLORGOURAUDRGB* = 8'i32
  D3DPSHADECAPS_SPECULARGOURAUDRGB* = 0x00000200'i32
  D3DPSHADECAPS_ALPHAGOURAUDBLEND* = 0x00004000'i32
  D3DPSHADECAPS_FOGGOURAUD* = 0x00080000'i32
  D3DPTEXTURECAPS_PERSPECTIVE* = 1'i32
  D3DPTEXTURECAPS_POW2* = 2'i32
  D3DPTEXTURECAPS_ALPHA* = 4'i32
  D3DPTEXTURECAPS_SQUAREONLY* = 0x00000020'i32
  D3DPTEXTURECAPS_TEXREPEATNOTSCALEDBYSIZE* = 0x00000040'i32
  D3DPTEXTURECAPS_ALPHAPALETTE* = 0x00000080'i32
  D3DPTEXTURECAPS_NONPOW2CONDITIONAL* = 0x00000100'i32
  D3DPTEXTURECAPS_PROJECTED* = 0x00000400'i32
  D3DPTEXTURECAPS_CUBEMAP* = 0x00000800'i32
  D3DPTEXTURECAPS_VOLUMEMAP* = 0x00002000'i32
  D3DPTEXTURECAPS_MIPMAP* = 0x00004000'i32
  D3DPTEXTURECAPS_MIPVOLUMEMAP* = 0x00008000'i32
  D3DPTEXTURECAPS_MIPCUBEMAP* = 0x00010000'i32
  D3DPTEXTURECAPS_CUBEMAP_POW2* = 0x00020000'i32
  D3DPTEXTURECAPS_VOLUMEMAP_POW2* = 0x00040000'i32
  D3DPTEXTURECAPS_NOPROJECTEDBUMPENV* = 0x00200000'i32
  D3DPTFILTERCAPS_MINFPOINT* = 0x00000100'i32
  D3DPTFILTERCAPS_MINFLINEAR* = 0x00000200'i32
  D3DPTFILTERCAPS_MINFANISOTROPIC* = 0x00000400'i32
  D3DPTFILTERCAPS_MINFPYRAMIDALQUAD* = 0x00000800'i32
  D3DPTFILTERCAPS_MINFGAUSSIANQUAD* = 0x00001000'i32
  D3DPTFILTERCAPS_MIPFPOINT* = 0x00010000'i32
  D3DPTFILTERCAPS_MIPFLINEAR* = 0x00020000'i32
  D3DPTFILTERCAPS_CONVOLUTIONMONO* = 0x00040000'i32
  D3DPTFILTERCAPS_MAGFPOINT* = 0x01000000'i32
  D3DPTFILTERCAPS_MAGFLINEAR* = 0x02000000'i32
  D3DPTFILTERCAPS_MAGFANISOTROPIC* = 0x04000000'i32
  D3DPTFILTERCAPS_MAGFPYRAMIDALQUAD* = 0x08000000'i32
  D3DPTFILTERCAPS_MAGFGAUSSIANQUAD* = 0x10000000'i32
  D3DPTADDRESSCAPS_WRAP* = 1'i32
  D3DPTADDRESSCAPS_MIRROR* = 2'i32
  D3DPTADDRESSCAPS_CLAMP* = 4'i32
  D3DPTADDRESSCAPS_BORDER* = 8'i32
  D3DPTADDRESSCAPS_INDEPENDENTUV* = 0x00000010'i32
  D3DPTADDRESSCAPS_MIRRORONCE* = 0x00000020'i32
  D3DSTENCILCAPS_KEEP* = 1'i32
  D3DSTENCILCAPS_ZERO* = 2'i32
  D3DSTENCILCAPS_REPLACE* = 4'i32
  D3DSTENCILCAPS_INCRSAT* = 8'i32
  D3DSTENCILCAPS_DECRSAT* = 0x00000010'i32
  D3DSTENCILCAPS_INVERT* = 0x00000020'i32
  D3DSTENCILCAPS_INCR* = 0x00000040'i32
  D3DSTENCILCAPS_DECR* = 0x00000080'i32
  D3DSTENCILCAPS_TWOSIDED* = 0x00000100'i32
  D3DTEXOPCAPS_DISABLE* = 1'i32
  D3DTEXOPCAPS_SELECTARG1* = 2'i32
  D3DTEXOPCAPS_SELECTARG2* = 4'i32
  D3DTEXOPCAPS_MODULATE* = 8'i32
  D3DTEXOPCAPS_MODULATE2X* = 0x00000010'i32
  D3DTEXOPCAPS_MODULATE4X* = 0x00000020'i32
  D3DTEXOPCAPS_ADD* = 0x00000040'i32
  D3DTEXOPCAPS_ADDSIGNED* = 0x00000080'i32
  D3DTEXOPCAPS_ADDSIGNED2X* = 0x00000100'i32
  D3DTEXOPCAPS_SUBTRACT* = 0x00000200'i32
  D3DTEXOPCAPS_ADDSMOOTH* = 0x00000400'i32
  D3DTEXOPCAPS_BLENDDIFFUSEALPHA* = 0x00000800'i32
  D3DTEXOPCAPS_BLENDTEXTUREALPHA* = 0x00001000'i32
  D3DTEXOPCAPS_BLENDFACTORALPHA* = 0x00002000'i32
  D3DTEXOPCAPS_BLENDTEXTUREALPHAPM* = 0x00004000'i32
  D3DTEXOPCAPS_BLENDCURRENTALPHA* = 0x00008000'i32
  D3DTEXOPCAPS_PREMODULATE* = 0x00010000'i32
  D3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR* = 0x00020000'i32
  D3DTEXOPCAPS_MODULATECOLOR_ADDALPHA* = 0x00040000'i32
  D3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR* = 0x00080000'i32
  D3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA* = 0x00100000'i32
  D3DTEXOPCAPS_BUMPENVMAP* = 0x00200000'i32
  D3DTEXOPCAPS_BUMPENVMAPLUMINANCE* = 0x00400000'i32
  D3DTEXOPCAPS_DOTPRODUCT3* = 0x00800000'i32
  D3DTEXOPCAPS_MULTIPLYADD* = 0x01000000'i32
  D3DTEXOPCAPS_LERP* = 0x02000000'i32
  D3DFVFCAPS_TEXCOORDCOUNTMASK* = 0x0000FFFF'i32
  D3DFVFCAPS_DONOTSTRIPELEMENTS* = 0x00080000'i32
  D3DFVFCAPS_PSIZE* = 0x00100000'i32
  D3DVTXPCAPS_TEXGEN* = 1'i32
  D3DVTXPCAPS_MATERIALSOURCE7* = 2'i32
  D3DVTXPCAPS_DIRECTIONALLIGHTS* = 8'i32
  D3DVTXPCAPS_POSITIONALLIGHTS* = 0x00000010'i32
  D3DVTXPCAPS_LOCALVIEWER* = 0x00000020'i32
  D3DVTXPCAPS_TWEENING* = 0x00000040'i32
  D3DVTXPCAPS_TEXGEN_SPHEREMAP* = 0x00000100'i32
  D3DVTXPCAPS_NO_TEXGEN_NONLOCALVIEWER* = 0x00000200'i32
  D3DDEVCAPS2_STREAMOFFSET* = 1'i32
  D3DDEVCAPS2_DMAPNPATCH* = 2'i32
  D3DDEVCAPS2_ADAPTIVETESSRTPATCH* = 4'i32
  D3DDEVCAPS2_ADAPTIVETESSNPATCH* = 8'i32
  D3DDEVCAPS2_CAN_STRETCHRECT_FROM_TEXTURES* = 0x00000010'i32
  D3DDEVCAPS2_PRESAMPLEDDMAPNPATCH* = 0x00000020'i32
  D3DDEVCAPS2_VERTEXELEMENTSCANSHARESTREAMOFFSET* = 0x00000040'i32
  D3DDTCAPS_UBYTE4* = 1'i32
  D3DDTCAPS_UBYTE4N* = 2'i32
  D3DDTCAPS_SHORT2N* = 4'i32
  D3DDTCAPS_SHORT4N* = 8'i32
  D3DDTCAPS_USHORT2N* = 0x00000010'i32
  D3DDTCAPS_USHORT4N* = 0x00000020'i32
  D3DDTCAPS_UDEC3* = 0x00000040'i32
  D3DDTCAPS_DEC3N* = 0x00000080'i32
  D3DDTCAPS_FLOAT16_2* = 0x00000100'i32
  D3DDTCAPS_FLOAT16_4* = 0x00000200'i32
  D3DSPD_IUNKNOWN* = 1'i32
  D3DCREATE_FPU_PRESERVE* = 2'i32
  D3DCREATE_MULTITHREADED* = 4'i32
  D3DCREATE_PUREDEVICE* = 0x00000010'i32
  D3DCREATE_SOFTWARE_VERTEXPROCESSING* = 0x00000020'i32
  D3DCREATE_HARDWARE_VERTEXPROCESSING* = 0x00000040'i32
  D3DCREATE_MIXED_VERTEXPROCESSING* = 0x00000080'i32
  D3DCREATE_DISABLE_DRIVER_MANAGEMENT* = 0x00000100'i32
  D3DCREATE_ADAPTERGROUP_DEVICE* = 0x00000200'i32
  D3DCREATE_DISABLE_DRIVER_MANAGEMENT_EX* = 0x00000400'i32
  D3DCREATE_NOWINDOWCHANGES* = 0x00000800'i32
  D3DCREATE_DISABLE_PSGP_THREADING* = 0x00002000'i32
  D3DCREATE_ENABLE_PRESENTSTATS* = 0x00004000'i32
  D3DCREATE_DISABLE_PRINTSCREEN* = 0x00008000'i32
  D3DCREATE_SCREENSAVER* = 0x10000000'i32
  D3DADAPTER_DEFAULT* = 0'i32
  D3DENUM_WHQL_LEVEL* = 2'i32
  D3DENUM_NO_DRIVERVERSION* = 4'i32
  D3DPRESENT_BACK_BUFFERS_MAX* = 3'i32
  D3DPRESENT_BACK_BUFFERS_MAX_EX* = 30'i32
  D3DSGR_NO_CALIBRATION* = 0'i32
  D3DSGR_CALIBRATE* = 1'i32
  D3DCURSOR_IMMEDIATE_UPDATE* = 1'i32
  D3DPRESENT_DONOTWAIT* = 1'i32
  D3DPRESENT_LINEAR_CONTENT* = 2'i32
  D3DPRESENT_DONOTFLIP* = 4'i32
  D3DPRESENT_FLIPRESTART* = 8'i32
  D3DPRESENT_VIDEO_RESTRICT_TO_MONITOR* = 0x00000010'i32
  D3DPRESENT_UPDATEOVERLAYONLY* = 0x00000020'i32
  D3DPRESENT_HIDEOVERLAY* = 0x00000040'i32
  D3DPRESENT_UPDATECOLORKEY* = 0x00000080'i32
  D3DPRESENT_FORCEIMMEDIATE* = 0x00000100'i32
  D3D_OK* = 0'i32
  D3DERR_WRONGTEXTUREFORMAT* = 0x88760818'i32
  D3DERR_UNSUPPORTEDCOLOROPERATION* = 0x88760819'i32
  D3DERR_UNSUPPORTEDCOLORARG* = 0x8876081A'i32
  D3DERR_UNSUPPORTEDALPHAOPERATION* = 0x8876081B'i32
  D3DERR_UNSUPPORTEDALPHAARG* = 0x8876081C'i32
  D3DERR_TOOMANYOPERATIONS* = 0x8876081D'i32
  D3DERR_CONFLICTINGTEXTUREFILTER* = 0x8876081E'i32
  D3DERR_UNSUPPORTEDFACTORVALUE* = 0x8876081F'i32
  D3DERR_CONFLICTINGRENDERSTATE* = 0x88760821'i32
  D3DERR_UNSUPPORTEDTEXTUREFILTER* = 0x88760822'i32
  D3DERR_CONFLICTINGTEXTUREPALETTE* = 0x88760826'i32
  D3DERR_DRIVERINTERNALERROR* = 0x88760827'i32
  D3DERR_NOTFOUND* = 0x88760866'i32
  D3DERR_MOREDATA* = 0x88760867'i32
  D3DERR_DEVICELOST* = 0x88760868'i32
  D3DERR_DEVICENOTRESET* = 0x88760869'i32
  D3DERR_NOTAVAILABLE* = 0x8876086A'i32
  D3DERR_OUTOFVIDEOMEMORY* = 0x8876017C'i32
  D3DERR_INVALIDDEVICE* = 0x8876086B'i32
  D3DERR_INVALIDCALL* = 0x8876086C'i32
  D3DERR_DRIVERINVALIDCALL* = 0x8876086D'i32
  D3DERR_WASSTILLDRAWING* = 0x8876021C'i32
  D3DOK_NOAUTOGEN* = 141953135'i32
  D3DERR_DEVICEREMOVED* = 0x88760870'i32
  S_NOT_RESIDENT* = 141953141'i32
  S_RESIDENT_IN_SHARED_MEMORY* = 141953142'i32
  S_PRESENT_MODE_CHANGED* = 141953143'i32
  S_PRESENT_OCCLUDED* = 141953144'i32
  D3DERR_DEVICEHUNG* = 0x88760874'i32
  D3DERR_UNSUPPORTEDOVERLAY* = 0x8876087B'i32
  D3DERR_UNSUPPORTEDOVERLAYFORMAT* = 0x8876087C'i32
  D3DERR_CANNOTPROTECTCONTENT* = 0x8876087D'i32
  D3DERR_UNSUPPORTEDCRYPTO* = 0x8876087E'i32
  D3DERR_PRESENT_STATISTICS_DISJOINT* = 0x88760884'i32

let D3DAUTHENTICATEDQUERY_PROTECTION* = GUID(Data1: 0xA84EB584'i32, Data2: 0xC495'u16, Data3: 0x48AA'u16, Data4: [0xB9'u8, 0x4D'u8, 0x8B'u8, 0xD2'u8, 0xD6'u8, 0xFB'u8, 0xCE'u8, 0x05'u8])
let D3DAUTHENTICATEDQUERY_CHANNELTYPE* = GUID(Data1: 0xBC1B18A5'i32, Data2: 0xB1FB'u16, Data3: 0x42AB'u16, Data4: [0xBD'u8, 0x94'u8, 0xB5'u8, 0x82'u8, 0x8B'u8, 0x4B'u8, 0xF7'u8, 0xBE'u8])
let D3DAUTHENTICATEDQUERY_DEVICEHANDLE* = GUID(Data1: 0xEC1C539D'i32, Data2: 0x8CFF'u16, Data3: 0x4E2A'u16, Data4: [0xBC'u8, 0xC4'u8, 0xF5'u8, 0x69'u8, 0x2F'u8, 0x99'u8, 0xF4'u8, 0x80'u8])
let D3DAUTHENTICATEDQUERY_CRYPTOSESSION* = GUID(Data1: 0x2634499E'i32, Data2: 0xD018'u16, Data3: 0x4D74'u16, Data4: [0xAC'u8, 0x17'u8, 0x7F'u8, 0x72'u8, 0x40'u8, 0x59'u8, 0x52'u8, 0x8D'u8])
let D3DAUTHENTICATEDQUERY_RESTRICTEDSHAREDRESOURCEPROCESSCOUNT* = GUID(Data1: 0x0DB207B3'i32, Data2: 0x9450'u16, Data3: 0x46A6'u16, Data4: [0x82'u8, 0xDE'u8, 0x1B'u8, 0x96'u8, 0xD4'u8, 0x4F'u8, 0x9C'u8, 0xF2'u8])
let D3DAUTHENTICATEDQUERY_RESTRICTEDSHAREDRESOURCEPROCESS* = GUID(Data1: 0x649BBADB'i32, Data2: 0xF0F4'u16, Data3: 0x4639'u16, Data4: [0xA1'u8, 0x5B'u8, 0x24'u8, 0x39'u8, 0x3F'u8, 0xC3'u8, 0xAB'u8, 0xAC'u8])
let D3DAUTHENTICATEDQUERY_UNRESTRICTEDPROTECTEDSHAREDRESOURCECOUNT* = GUID(Data1: 0x012F0BD6'i32, Data2: 0xE662'u16, Data3: 0x4474'u16, Data4: [0xBE'u8, 0xFD'u8, 0xAA'u8, 0x53'u8, 0xE5'u8, 0x14'u8, 0x3C'u8, 0x6D'u8])
let D3DAUTHENTICATEDQUERY_OUTPUTIDCOUNT* = GUID(Data1: 0x2C042B5E'i32, Data2: 0x8C07'u16, Data3: 0x46D5'u16, Data4: [0xAA'u8, 0xBE'u8, 0x8F'u8, 0x75'u8, 0xCB'u8, 0xAD'u8, 0x4C'u8, 0x31'u8])
let D3DAUTHENTICATEDQUERY_OUTPUTID* = GUID(Data1: 0x839DDCA3'i32, Data2: 0x9B4E'u16, Data3: 0x41E4'u16, Data4: [0xB0'u8, 0x53'u8, 0x89'u8, 0x2B'u8, 0xD2'u8, 0xA1'u8, 0x1E'u8, 0xE7'u8])
let D3DAUTHENTICATEDQUERY_ACCESSIBILITYATTRIBUTES* = GUID(Data1: 0x6214D9D2'i32, Data2: 0x432C'u16, Data3: 0x4ABB'u16, Data4: [0x9F'u8, 0xCE'u8, 0x21'u8, 0x6E'u8, 0xEA'u8, 0x26'u8, 0x9E'u8, 0x3B'u8])
let D3DAUTHENTICATEDQUERY_ENCRYPTIONWHENACCESSIBLEGUIDCOUNT* = GUID(Data1: 0xB30F7066'i32, Data2: 0x203C'u16, Data3: 0x4B07'u16, Data4: [0x93'u8, 0xFC'u8, 0xCE'u8, 0xAA'u8, 0xFD'u8, 0x61'u8, 0x24'u8, 0x1E'u8])
let D3DAUTHENTICATEDQUERY_ENCRYPTIONWHENACCESSIBLEGUID* = GUID(Data1: 0xF83A5958'i32, Data2: 0xE986'u16, Data3: 0x4BDA'u16, Data4: [0xBE'u8, 0xB0'u8, 0x41'u8, 0x1F'u8, 0x6A'u8, 0x7A'u8, 0x01'u8, 0xB7'u8])
let D3DAUTHENTICATEDQUERY_CURRENTENCRYPTIONWHENACCESSIBLE* = GUID(Data1: 0xEC1791C7'i32, Data2: 0xDAD3'u16, Data3: 0x4F15'u16, Data4: [0x9E'u8, 0xC3'u8, 0xFA'u8, 0xA9'u8, 0x3D'u8, 0x60'u8, 0xD4'u8, 0xF0'u8])
let D3DAUTHENTICATEDCONFIGURE_INITIALIZE* = GUID(Data1: 0x06114BDB'i32, Data2: 0x3523'u16, Data3: 0x470A'u16, Data4: [0x8D'u8, 0xCA'u8, 0xFB'u8, 0xC2'u8, 0x84'u8, 0x51'u8, 0x54'u8, 0xF0'u8])
let D3DAUTHENTICATEDCONFIGURE_PROTECTION* = GUID(Data1: 0x50455658'i32, Data2: 0x3F47'u16, Data3: 0x4362'u16, Data4: [0xBF'u8, 0x99'u8, 0xBF'u8, 0xDF'u8, 0xCD'u8, 0xE9'u8, 0xED'u8, 0x29'u8])
let D3DAUTHENTICATEDCONFIGURE_CRYPTOSESSION* = GUID(Data1: 0x6346CC54'i32, Data2: 0x2CFC'u16, Data3: 0x4AD4'u16, Data4: [0x82'u8, 0x24'u8, 0xD1'u8, 0x58'u8, 0x37'u8, 0xDE'u8, 0x77'u8, 0x00'u8])
let D3DAUTHENTICATEDCONFIGURE_SHAREDRESOURCE* = GUID(Data1: 0x0772D047'i32, Data2: 0x1B40'u16, Data3: 0x48E8'u16, Data4: [0x9C'u8, 0xA6'u8, 0xB5'u8, 0xF5'u8, 0x10'u8, 0xDE'u8, 0x9F'u8, 0x01'u8])
let D3DAUTHENTICATEDCONFIGURE_ENCRYPTIONWHENACCESSIBLE* = GUID(Data1: 0x41FFF286'i32, Data2: 0x6AE0'u16, Data3: 0x4D43'u16, Data4: [0x9D'u8, 0x55'u8, 0xA4'u8, 0x6E'u8, 0x9E'u8, 0xFD'u8, 0x15'u8, 0x8A'u8])
let D3DCRYPTOTYPE_AES128_CTR* = GUID(Data1: 0x9B6BD711'i32, Data2: 0x4F74'u16, Data3: 0x41C9'u16, Data4: [0x9E'u8, 0x7B'u8, 0x0B'u8, 0xE2'u8, 0xD7'u8, 0xD9'u8, 0x3B'u8, 0x4F'u8])
let D3DCRYPTOTYPE_PROPRIETARY* = GUID(Data1: 0xAB4E9AFD'i32, Data2: 0x1D1C'u16, Data3: 0x46E6'u16, Data4: [0xA7'u8, 0x2F'u8, 0x08'u8, 0x69'u8, 0x91'u8, 0x7B'u8, 0x0D'u8, 0xE8'u8])
let D3DKEYEXCHANGE_RSAES_OAEP* = GUID(Data1: 0xC1949895'i32, Data2: 0xD72A'u16, Data3: 0x4A1D'u16, Data4: [0x8E'u8, 0x5D'u8, 0xED'u8, 0x85'u8, 0x7D'u8, 0x17'u8, 0x15'u8, 0x20'u8])
let D3DKEYEXCHANGE_DXVA* = GUID(Data1: 0x43D3775C'i32, Data2: 0x38E5'u16, Data3: 0x4924'u16, Data4: [0x8D'u8, 0x86'u8, 0xD3'u8, 0xFC'u8, 0xCF'u8, 0x15'u8, 0x3E'u8, 0x9B'u8])
let IID_IDirect3D9* = GUID(Data1: 0x81BDCBCA'i32, Data2: 0x64D4'u16, Data3: 0x426D'u16, Data4: [0xAE'u8, 0x8D'u8, 0xAD'u8, 0x01'u8, 0x47'u8, 0xF4'u8, 0x27'u8, 0x5C'u8])
let IID_IDirect3DDevice9* = GUID(Data1: 0xD0223B96'i32, Data2: 0xBF7A'u16, Data3: 0x43FD'u16, Data4: [0x92'u8, 0xBD'u8, 0xA4'u8, 0x3B'u8, 0x0D'u8, 0x82'u8, 0xB9'u8, 0xEB'u8])
let IID_IDirect3DResource9* = GUID(Data1: 0x05EEC05D'i32, Data2: 0x8F7D'u16, Data3: 0x4362'u16, Data4: [0xB9'u8, 0x99'u8, 0xD1'u8, 0xBA'u8, 0xF3'u8, 0x57'u8, 0xC7'u8, 0x04'u8])
let IID_IDirect3DBaseTexture9* = GUID(Data1: 0x580CA87E'i32, Data2: 0x1D3C'u16, Data3: 0x4D54'u16, Data4: [0x99'u8, 0x1D'u8, 0xB7'u8, 0xD3'u8, 0xE3'u8, 0xC2'u8, 0x98'u8, 0xCE'u8])
let IID_IDirect3DTexture9* = GUID(Data1: 0x85C31227'i32, Data2: 0x3DE5'u16, Data3: 0x4F00'u16, Data4: [0x9B'u8, 0x3A'u8, 0xF1'u8, 0x1A'u8, 0xC3'u8, 0x8C'u8, 0x18'u8, 0xB5'u8])
let IID_IDirect3DCubeTexture9* = GUID(Data1: 0xFFF32F81'i32, Data2: 0xD953'u16, Data3: 0x473A'u16, Data4: [0x92'u8, 0x23'u8, 0x93'u8, 0xD6'u8, 0x52'u8, 0xAB'u8, 0xA9'u8, 0x3F'u8])
let IID_IDirect3DVolumeTexture9* = GUID(Data1: 0x2518526C'i32, Data2: 0xE789'u16, Data3: 0x4111'u16, Data4: [0xA7'u8, 0xB9'u8, 0x47'u8, 0xEF'u8, 0x32'u8, 0x8D'u8, 0x13'u8, 0xE6'u8])
let IID_IDirect3DVertexBuffer9* = GUID(Data1: 0xB64BB1B5'i32, Data2: 0xFD70'u16, Data3: 0x4DF6'u16, Data4: [0xBF'u8, 0x91'u8, 0x19'u8, 0xD0'u8, 0xA1'u8, 0x24'u8, 0x55'u8, 0xE3'u8])
let IID_IDirect3DIndexBuffer9* = GUID(Data1: 0x7C9DD65E'i32, Data2: 0xD3F7'u16, Data3: 0x4529'u16, Data4: [0xAC'u8, 0xEE'u8, 0x78'u8, 0x58'u8, 0x30'u8, 0xAC'u8, 0xDE'u8, 0x35'u8])
let IID_IDirect3DSurface9* = GUID(Data1: 0x0CFBAF3A'i32, Data2: 0x9FF6'u16, Data3: 0x429A'u16, Data4: [0x99'u8, 0xB3'u8, 0xA2'u8, 0x79'u8, 0x6A'u8, 0xF8'u8, 0xB8'u8, 0x9B'u8])
let IID_IDirect3DVolume9* = GUID(Data1: 0x24F416E6'i32, Data2: 0x1F67'u16, Data3: 0x4AA7'u16, Data4: [0xB8'u8, 0x8E'u8, 0xD3'u8, 0x3F'u8, 0x6F'u8, 0x31'u8, 0x28'u8, 0xA1'u8])
let IID_IDirect3DSwapChain9* = GUID(Data1: 0x794950F2'i32, Data2: 0xADFC'u16, Data3: 0x458A'u16, Data4: [0x90'u8, 0x5E'u8, 0x10'u8, 0xA1'u8, 0x0B'u8, 0x0B'u8, 0x50'u8, 0x3B'u8])
let IID_IDirect3DVertexDeclaration9* = GUID(Data1: 0xDD13C59C'i32, Data2: 0x36FA'u16, Data3: 0x4098'u16, Data4: [0xA8'u8, 0xFB'u8, 0xC7'u8, 0xED'u8, 0x39'u8, 0xDC'u8, 0x85'u8, 0x46'u8])
let IID_IDirect3DVertexShader9* = GUID(Data1: 0xEFC5557E'i32, Data2: 0x6265'u16, Data3: 0x4613'u16, Data4: [0x8A'u8, 0x94'u8, 0x43'u8, 0x85'u8, 0x78'u8, 0x89'u8, 0xEB'u8, 0x36'u8])
let IID_IDirect3DPixelShader9* = GUID(Data1: 0x6D3BDBDC'i32, Data2: 0x5B02'u16, Data3: 0x4415'u16, Data4: [0xB8'u8, 0x52'u8, 0xCE'u8, 0x5E'u8, 0x8B'u8, 0xCC'u8, 0xB2'u8, 0x89'u8])
let IID_IDirect3DStateBlock9* = GUID(Data1: 0xB07C4FE5'i32, Data2: 0x310D'u16, Data3: 0x4BA8'u16, Data4: [0xA2'u8, 0x3C'u8, 0x4F'u8, 0x0F'u8, 0x20'u8, 0x6F'u8, 0x21'u8, 0x8B'u8])
let IID_IDirect3DQuery9* = GUID(Data1: 0xD9771460'i32, Data2: 0xA695'u16, Data3: 0x4F26'u16, Data4: [0xBB'u8, 0xD3'u8, 0x27'u8, 0xB8'u8, 0x40'u8, 0xB5'u8, 0x41'u8, 0xCC'u8])
let IID_HelperName* = GUID(Data1: 0xE4A36723'i32, Data2: 0xFDFE'u16, Data3: 0x4B22'u16, Data4: [0xB1'u8, 0x46'u8, 0x3C'u8, 0x04'u8, 0xC0'u8, 0x7F'u8, 0x4C'u8, 0xC8'u8])
let IID_IDirect3D9Ex* = GUID(Data1: 0x02177241'i32, Data2: 0x69FC'u16, Data3: 0x400C'u16, Data4: [0x8F'u8, 0xF1'u8, 0x93'u8, 0xA4'u8, 0x4D'u8, 0xF6'u8, 0x86'u8, 0x1D'u8])
let IID_IDirect3DDevice9Ex* = GUID(Data1: 0xB18B10CE'i32, Data2: 0x2649'u16, Data3: 0x405A'u16, Data4: [0x87'u8, 0x0F'u8, 0x95'u8, 0xF7'u8, 0x77'u8, 0xD4'u8, 0x31'u8, 0x3A'u8])
let IID_IDirect3DSwapChain9Ex* = GUID(Data1: 0x91886CAF'i32, Data2: 0x1C3D'u16, Data3: 0x4D2E'u16, Data4: [0xA0'u8, 0xAB'u8, 0x3E'u8, 0x4C'u8, 0x7D'u8, 0x8D'u8, 0x33'u8, 0x03'u8])
let IID_IDirect3D9ExOverlayExtension* = GUID(Data1: 0x187AEB13'i32, Data2: 0xAAF5'u16, Data3: 0x4C59'u16, Data4: [0x87'u8, 0x6D'u8, 0xE0'u8, 0x59'u8, 0x08'u8, 0x8C'u8, 0x0D'u8, 0xF8'u8])
let IID_IDirect3DDevice9Video* = GUID(Data1: 0x26DC4561'i32, Data2: 0xA1EE'u16, Data3: 0x4AE7'u16, Data4: [0x96'u8, 0xDA'u8, 0x11'u8, 0x8A'u8, 0x36'u8, 0xC0'u8, 0xEC'u8, 0x95'u8])
let IID_IDirect3DAuthenticatedChannel9* = GUID(Data1: 0xFF24BEEE'i32, Data2: 0xDA21'u16, Data3: 0x4BEB'u16, Data4: [0x98'u8, 0xB5'u8, 0xD2'u8, 0xF8'u8, 0x99'u8, 0xF9'u8, 0x8A'u8, 0xF9'u8])
let IID_IDirect3DCryptoSession9* = GUID(Data1: 0xFA0AB799'i32, Data2: 0x7A9C'u16, Data3: 0x48CA'u16, Data4: [0x8C'u8, 0x5B'u8, 0x23'u8, 0x7E'u8, 0x71'u8, 0xA5'u8, 0x44'u8, 0x34'u8])

proc Direct3DCreate9*(SDKVersion: UINT): ptr IDirect3D9 {.stdcall, dynlib: "d3d9.dll", importc, discardable.}
proc D3DPERF_BeginEvent*(col: D3DCOLOR, wszName: LPCWSTR): int32 {.stdcall, dynlib: "d3d9.dll", importc, discardable.}
proc D3DPERF_EndEvent*(): int32 {.stdcall, dynlib: "d3d9.dll", importc, discardable.}
proc D3DPERF_SetMarker*(col: D3DCOLOR, wszName: LPCWSTR) {.stdcall, dynlib: "d3d9.dll", importc.}
proc D3DPERF_SetRegion*(col: D3DCOLOR, wszName: LPCWSTR) {.stdcall, dynlib: "d3d9.dll", importc.}
proc D3DPERF_QueryRepeatFrame*(): BOOL {.stdcall, dynlib: "d3d9.dll", importc, discardable.}
proc D3DPERF_SetOptions*(dwOptions: DWORD) {.stdcall, dynlib: "d3d9.dll", importc.}
proc D3DPERF_GetStatus*(): DWORD {.stdcall, dynlib: "d3d9.dll", importc, discardable.}
proc Direct3DCreate9Ex*(SDKVersion: UINT, arg1: ptr ptr IDirect3D9Ex): HRESULT {.stdcall, dynlib: "d3d9.dll", importc, discardable.}

when defined(nimHasQuirky):
  {.push quirky: on.}
const
  D3D_SDK_VERSION* = 32'i32
  D3D9b_SDK_VERSION* = 31'i32

# IUnknown
proc QueryInterface*(self: ptr IUnknown, riid: REFIID, ppvObj: ptr pointer): HRESULT {.d9md.} =
  cast[ptr IUnknownVtbl](self.lpVtbl).QueryInterface(self, riid, ppvObj)
proc AddRef*(self: ptr IUnknown): ULONG {.d9md.} =
  cast[ptr IUnknownVtbl](self.lpVtbl).AddRef(self)
proc Release*(self: ptr IUnknown): ULONG {.d9md.} =
  cast[ptr IUnknownVtbl](self.lpVtbl).Release(self)

# IDirect3D9
proc RegisterSoftwareDevice*(self: ptr IDirect3D9, pInitializeFunction: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).RegisterSoftwareDevice(self, pInitializeFunction)
proc GetAdapterCount*(self: ptr IDirect3D9): UINT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetAdapterCount(self)
proc GetAdapterIdentifier*(self: ptr IDirect3D9, Adapter: UINT, Flags: DWORD, pIdentifier: ptr D3DADAPTER_IDENTIFIER9): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetAdapterIdentifier(self, Adapter, Flags, pIdentifier)
proc GetAdapterModeCount*(self: ptr IDirect3D9, Adapter: UINT, Format: D3DFORMAT): UINT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetAdapterModeCount(self, Adapter, Format)
proc EnumAdapterModes*(self: ptr IDirect3D9, Adapter: UINT, Format: D3DFORMAT, Mode: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).EnumAdapterModes(self, Adapter, Format, Mode, pMode)
proc GetAdapterDisplayMode*(self: ptr IDirect3D9, Adapter: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetAdapterDisplayMode(self, Adapter, pMode)
proc CheckDeviceType*(self: ptr IDirect3D9, Adapter: UINT, DevType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, BackBufferFormat: D3DFORMAT, bWindowed: BOOL): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CheckDeviceType(self, Adapter, DevType, AdapterFormat, BackBufferFormat, bWindowed)
proc CheckDeviceFormat*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, Usage: DWORD, RType: D3DRESOURCETYPE, CheckFormat: D3DFORMAT): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CheckDeviceFormat(self, Adapter, DeviceType, AdapterFormat, Usage, RType, CheckFormat)
proc CheckDeviceMultiSampleType*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, SurfaceFormat: D3DFORMAT, Windowed: BOOL, MultiSampleType: D3DMULTISAMPLE_TYPE, pQualityLevels: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CheckDeviceMultiSampleType(self, Adapter, DeviceType, SurfaceFormat, Windowed, MultiSampleType, pQualityLevels)
proc CheckDepthStencilMatch*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, AdapterFormat: D3DFORMAT, RenderTargetFormat: D3DFORMAT, DepthStencilFormat: D3DFORMAT): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CheckDepthStencilMatch(self, Adapter, DeviceType, AdapterFormat, RenderTargetFormat, DepthStencilFormat)
proc CheckDeviceFormatConversion*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, SourceFormat: D3DFORMAT, TargetFormat: D3DFORMAT): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CheckDeviceFormatConversion(self, Adapter, DeviceType, SourceFormat, TargetFormat)
proc GetDeviceCaps*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, pCaps: ptr D3DCAPS9): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetDeviceCaps(self, Adapter, DeviceType, pCaps)
proc GetAdapterMonitor*(self: ptr IDirect3D9, Adapter: UINT): HMONITOR {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).GetAdapterMonitor(self, Adapter)
proc CreateDevice*(self: ptr IDirect3D9, Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3D9Vtbl](self.lpVtbl).CreateDevice(self, Adapter, DeviceType, hFocusWindow, BehaviorFlags, pPresentationParameters, ppReturnedDeviceInterface)

# IDirect3DDevice9
proc TestCooperativeLevel*(self: ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).TestCooperativeLevel(self)
proc GetAvailableTextureMem*(self: ptr IDirect3DDevice9): UINT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetAvailableTextureMem(self)
proc EvictManagedResources*(self: ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).EvictManagedResources(self)
proc GetDirect3D*(self: ptr IDirect3DDevice9, ppD3D9: ptr ptr IDirect3D9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetDirect3D(self, ppD3D9)
proc GetDeviceCaps*(self: ptr IDirect3DDevice9, pCaps: ptr D3DCAPS9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetDeviceCaps(self, pCaps)
proc GetDisplayMode*(self: ptr IDirect3DDevice9, iSwapChain: UINT, pMode: ptr D3DDISPLAYMODE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetDisplayMode(self, iSwapChain, pMode)
proc GetCreationParameters*(self: ptr IDirect3DDevice9, pParameters: ptr D3DDEVICE_CREATION_PARAMETERS): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetCreationParameters(self, pParameters)
proc SetCursorProperties*(self: ptr IDirect3DDevice9, XHotSpot: UINT, YHotSpot: UINT, pCursorBitmap: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetCursorProperties(self, XHotSpot, YHotSpot, pCursorBitmap)
proc SetCursorPosition*(self: ptr IDirect3DDevice9, X: int32, Y: int32, Flags: DWORD) {.d9m.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetCursorPosition(self, X, Y, Flags)
proc ShowCursor*(self: ptr IDirect3DDevice9, bShow: BOOL): BOOL {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).ShowCursor(self, bShow)
proc CreateAdditionalSwapChain*(self: ptr IDirect3DDevice9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateAdditionalSwapChain(self, pPresentationParameters, pSwapChain)
proc GetSwapChain*(self: ptr IDirect3DDevice9, iSwapChain: UINT, pSwapChain: ptr ptr IDirect3DSwapChain9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetSwapChain(self, iSwapChain, pSwapChain)
proc GetNumberOfSwapChains*(self: ptr IDirect3DDevice9): UINT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetNumberOfSwapChains(self)
proc Reset*(self: ptr IDirect3DDevice9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).Reset(self, pPresentationParameters)
proc Present*(self: ptr IDirect3DDevice9, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).Present(self, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion)
proc GetBackBuffer*(self: ptr IDirect3DDevice9, iSwapChain: UINT, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetBackBuffer(self, iSwapChain, iBackBuffer, Type, ppBackBuffer)
proc GetRasterStatus*(self: ptr IDirect3DDevice9, iSwapChain: UINT, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetRasterStatus(self, iSwapChain, pRasterStatus)
proc SetDialogBoxMode*(self: ptr IDirect3DDevice9, bEnableDialogs: BOOL): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetDialogBoxMode(self, bEnableDialogs)
proc SetGammaRamp*(self: ptr IDirect3DDevice9, iSwapChain: UINT, Flags: DWORD, pRamp: ptr D3DGAMMARAMP) {.d9m.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetGammaRamp(self, iSwapChain, Flags, pRamp)
proc GetGammaRamp*(self: ptr IDirect3DDevice9, iSwapChain: UINT, pRamp: ptr D3DGAMMARAMP) {.d9m.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetGammaRamp(self, iSwapChain, pRamp)
proc CreateTexture*(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppTexture: ptr ptr IDirect3DTexture9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateTexture(self, Width, Height, Levels, Usage, Format, Pool, ppTexture, pSharedHandle)
proc CreateVolumeTexture*(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Depth: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppVolumeTexture: ptr ptr IDirect3DVolumeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateVolumeTexture(self, Width, Height, Depth, Levels, Usage, Format, Pool, ppVolumeTexture, pSharedHandle)
proc CreateCubeTexture*(self: ptr IDirect3DDevice9, EdgeLength: UINT, Levels: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppCubeTexture: ptr ptr IDirect3DCubeTexture9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateCubeTexture(self, EdgeLength, Levels, Usage, Format, Pool, ppCubeTexture, pSharedHandle)
proc CreateVertexBuffer*(self: ptr IDirect3DDevice9, Length: UINT, Usage: DWORD, FVF: DWORD, Pool: D3DPOOL, ppVertexBuffer: ptr ptr IDirect3DVertexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateVertexBuffer(self, Length, Usage, FVF, Pool, ppVertexBuffer, pSharedHandle)
proc CreateIndexBuffer*(self: ptr IDirect3DDevice9, Length: UINT, Usage: DWORD, Format: D3DFORMAT, Pool: D3DPOOL, ppIndexBuffer: ptr ptr IDirect3DIndexBuffer9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateIndexBuffer(self, Length, Usage, Format, Pool, ppIndexBuffer, pSharedHandle)
proc CreateRenderTarget*(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Lockable: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateRenderTarget(self, Width, Height, Format, MultiSample, MultisampleQuality, Lockable, ppSurface, pSharedHandle)
proc CreateDepthStencilSurface*(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Discard: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateDepthStencilSurface(self, Width, Height, Format, MultiSample, MultisampleQuality, Discard, ppSurface, pSharedHandle)
proc UpdateSurface*(self: ptr IDirect3DDevice9, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestinationSurface: ptr IDirect3DSurface9, pDestPoint: ptr POINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).UpdateSurface(self, pSourceSurface, pSourceRect, pDestinationSurface, pDestPoint)
proc UpdateTexture*(self: ptr IDirect3DDevice9, pSourceTexture: ptr IDirect3DBaseTexture9, pDestinationTexture: ptr IDirect3DBaseTexture9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).UpdateTexture(self, pSourceTexture, pDestinationTexture)
proc GetRenderTargetData*(self: ptr IDirect3DDevice9, pRenderTarget: ptr IDirect3DSurface9, pDestSurface: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetRenderTargetData(self, pRenderTarget, pDestSurface)
proc GetFrontBufferData*(self: ptr IDirect3DDevice9, iSwapChain: UINT, pDestSurface: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetFrontBufferData(self, iSwapChain, pDestSurface)
proc StretchRect*(self: ptr IDirect3DDevice9, pSourceSurface: ptr IDirect3DSurface9, pSourceRect: ptr RECT, pDestSurface: ptr IDirect3DSurface9, pDestRect: ptr RECT, Filter: D3DTEXTUREFILTERTYPE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).StretchRect(self, pSourceSurface, pSourceRect, pDestSurface, pDestRect, Filter)
proc ColorFill*(self: ptr IDirect3DDevice9, pSurface: ptr IDirect3DSurface9, pRect: ptr RECT, color: D3DCOLOR): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).ColorFill(self, pSurface, pRect, color)
proc CreateOffscreenPlainSurface*(self: ptr IDirect3DDevice9, Width: UINT, Height: UINT, Format: D3DFORMAT, Pool: D3DPOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateOffscreenPlainSurface(self, Width, Height, Format, Pool, ppSurface, pSharedHandle)
proc SetRenderTarget*(self: ptr IDirect3DDevice9, RenderTargetIndex: DWORD, pRenderTarget: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetRenderTarget(self, RenderTargetIndex, pRenderTarget)
proc GetRenderTarget*(self: ptr IDirect3DDevice9, RenderTargetIndex: DWORD, ppRenderTarget: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetRenderTarget(self, RenderTargetIndex, ppRenderTarget)
proc SetDepthStencilSurface*(self: ptr IDirect3DDevice9, pNewZStencil: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetDepthStencilSurface(self, pNewZStencil)
proc GetDepthStencilSurface*(self: ptr IDirect3DDevice9, ppZStencilSurface: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetDepthStencilSurface(self, ppZStencilSurface)
proc BeginScene*(self: ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).BeginScene(self)
proc EndScene*(self: ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).EndScene(self)
proc Clear*(self: ptr IDirect3DDevice9, Count: DWORD, pRects: ptr D3DRECT, Flags: DWORD, Color: D3DCOLOR, Z: float32, Stencil: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).Clear(self, Count, pRects, Flags, Color, Z, Stencil)
proc SetTransform*(self: ptr IDirect3DDevice9, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetTransform(self, State, pMatrix)
proc GetTransform*(self: ptr IDirect3DDevice9, State: D3DTRANSFORMSTATETYPE, pMatrix: ptr D3DMATRIX): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetTransform(self, State, pMatrix)
proc MultiplyTransform*(self: ptr IDirect3DDevice9, arg0: D3DTRANSFORMSTATETYPE, arg1: ptr D3DMATRIX): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).MultiplyTransform(self, arg0, arg1)
proc SetViewport*(self: ptr IDirect3DDevice9, pViewport: ptr D3DVIEWPORT9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetViewport(self, pViewport)
proc GetViewport*(self: ptr IDirect3DDevice9, pViewport: ptr D3DVIEWPORT9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetViewport(self, pViewport)
proc SetMaterial*(self: ptr IDirect3DDevice9, pMaterial: ptr D3DMATERIAL9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetMaterial(self, pMaterial)
proc GetMaterial*(self: ptr IDirect3DDevice9, pMaterial: ptr D3DMATERIAL9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetMaterial(self, pMaterial)
proc SetLight*(self: ptr IDirect3DDevice9, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetLight(self, Index, arg1)
proc GetLight*(self: ptr IDirect3DDevice9, Index: DWORD, arg1: ptr D3DLIGHT9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetLight(self, Index, arg1)
proc LightEnable*(self: ptr IDirect3DDevice9, Index: DWORD, Enable: BOOL): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).LightEnable(self, Index, Enable)
proc GetLightEnable*(self: ptr IDirect3DDevice9, Index: DWORD, pEnable: ptr BOOL): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetLightEnable(self, Index, pEnable)
proc SetClipPlane*(self: ptr IDirect3DDevice9, Index: DWORD, pPlane: ptr float32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetClipPlane(self, Index, pPlane)
proc GetClipPlane*(self: ptr IDirect3DDevice9, Index: DWORD, pPlane: ptr float32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetClipPlane(self, Index, pPlane)
proc SetRenderState*(self: ptr IDirect3DDevice9, State: D3DRENDERSTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetRenderState(self, State, Value)
proc GetRenderState*(self: ptr IDirect3DDevice9, State: D3DRENDERSTATETYPE, pValue: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetRenderState(self, State, pValue)
proc CreateStateBlock*(self: ptr IDirect3DDevice9, Type: D3DSTATEBLOCKTYPE, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateStateBlock(self, Type, ppSB)
proc BeginStateBlock*(self: ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).BeginStateBlock(self)
proc EndStateBlock*(self: ptr IDirect3DDevice9, ppSB: ptr ptr IDirect3DStateBlock9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).EndStateBlock(self, ppSB)
proc SetClipStatus*(self: ptr IDirect3DDevice9, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetClipStatus(self, pClipStatus)
proc GetClipStatus*(self: ptr IDirect3DDevice9, pClipStatus: ptr D3DCLIPSTATUS9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetClipStatus(self, pClipStatus)
proc GetTexture*(self: ptr IDirect3DDevice9, Stage: DWORD, ppTexture: ptr ptr IDirect3DBaseTexture9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetTexture(self, Stage, ppTexture)
proc SetTexture*(self: ptr IDirect3DDevice9, Stage: DWORD, pTexture: ptr IDirect3DBaseTexture9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetTexture(self, Stage, pTexture)
proc GetTextureStageState*(self: ptr IDirect3DDevice9, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, pValue: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetTextureStageState(self, Stage, Type, pValue)
proc SetTextureStageState*(self: ptr IDirect3DDevice9, Stage: DWORD, Type: D3DTEXTURESTAGESTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetTextureStageState(self, Stage, Type, Value)
proc GetSamplerState*(self: ptr IDirect3DDevice9, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, pValue: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetSamplerState(self, Sampler, Type, pValue)
proc SetSamplerState*(self: ptr IDirect3DDevice9, Sampler: DWORD, Type: D3DSAMPLERSTATETYPE, Value: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetSamplerState(self, Sampler, Type, Value)
proc ValidateDevice*(self: ptr IDirect3DDevice9, pNumPasses: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).ValidateDevice(self, pNumPasses)
proc SetPaletteEntries*(self: ptr IDirect3DDevice9, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetPaletteEntries(self, PaletteNumber, pEntries)
proc GetPaletteEntries*(self: ptr IDirect3DDevice9, PaletteNumber: UINT, pEntries: ptr PALETTEENTRY): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetPaletteEntries(self, PaletteNumber, pEntries)
proc SetCurrentTexturePalette*(self: ptr IDirect3DDevice9, PaletteNumber: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetCurrentTexturePalette(self, PaletteNumber)
proc GetCurrentTexturePalette*(self: ptr IDirect3DDevice9, PaletteNumber: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetCurrentTexturePalette(self, PaletteNumber)
proc SetScissorRect*(self: ptr IDirect3DDevice9, pRect: ptr RECT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetScissorRect(self, pRect)
proc GetScissorRect*(self: ptr IDirect3DDevice9, pRect: ptr RECT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetScissorRect(self, pRect)
proc SetSoftwareVertexProcessing*(self: ptr IDirect3DDevice9, bSoftware: BOOL): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetSoftwareVertexProcessing(self, bSoftware)
proc GetSoftwareVertexProcessing*(self: ptr IDirect3DDevice9): BOOL {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetSoftwareVertexProcessing(self)
proc SetNPatchMode*(self: ptr IDirect3DDevice9, nSegments: float32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetNPatchMode(self, nSegments)
proc GetNPatchMode*(self: ptr IDirect3DDevice9): float32 {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetNPatchMode(self)
proc DrawPrimitive*(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, StartVertex: UINT, PrimitiveCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawPrimitive(self, PrimitiveType, StartVertex, PrimitiveCount)
proc DrawIndexedPrimitive*(self: ptr IDirect3DDevice9, arg0: D3DPRIMITIVETYPE, BaseVertexIndex: INT, MinVertexIndex: UINT, NumVertices: UINT, startIndex: UINT, primCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawIndexedPrimitive(self, arg0, BaseVertexIndex, MinVertexIndex, NumVertices, startIndex, primCount)
proc DrawPrimitiveUP*(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, PrimitiveCount: UINT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawPrimitiveUP(self, PrimitiveType, PrimitiveCount, pVertexStreamZeroData, VertexStreamZeroStride)
proc DrawIndexedPrimitiveUP*(self: ptr IDirect3DDevice9, PrimitiveType: D3DPRIMITIVETYPE, MinVertexIndex: UINT, NumVertices: UINT, PrimitiveCount: UINT, pIndexData: pointer, IndexDataFormat: D3DFORMAT, pVertexStreamZeroData: pointer, VertexStreamZeroStride: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawIndexedPrimitiveUP(self, PrimitiveType, MinVertexIndex, NumVertices, PrimitiveCount, pIndexData, IndexDataFormat, pVertexStreamZeroData, VertexStreamZeroStride)
proc ProcessVertices*(self: ptr IDirect3DDevice9, SrcStartIndex: UINT, DestIndex: UINT, VertexCount: UINT, pDestBuffer: ptr IDirect3DVertexBuffer9, pVertexDecl: ptr IDirect3DVertexDeclaration9, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).ProcessVertices(self, SrcStartIndex, DestIndex, VertexCount, pDestBuffer, pVertexDecl, Flags)
proc CreateVertexDeclaration*(self: ptr IDirect3DDevice9, pVertexElements: ptr D3DVERTEXELEMENT9, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateVertexDeclaration(self, pVertexElements, ppDecl)
proc SetVertexDeclaration*(self: ptr IDirect3DDevice9, pDecl: ptr IDirect3DVertexDeclaration9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetVertexDeclaration(self, pDecl)
proc GetVertexDeclaration*(self: ptr IDirect3DDevice9, ppDecl: ptr ptr IDirect3DVertexDeclaration9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetVertexDeclaration(self, ppDecl)
proc SetFVF*(self: ptr IDirect3DDevice9, FVF: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetFVF(self, FVF)
proc GetFVF*(self: ptr IDirect3DDevice9, pFVF: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetFVF(self, pFVF)
proc CreateVertexShader*(self: ptr IDirect3DDevice9, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateVertexShader(self, pFunction, ppShader)
proc SetVertexShader*(self: ptr IDirect3DDevice9, pShader: ptr IDirect3DVertexShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetVertexShader(self, pShader)
proc GetVertexShader*(self: ptr IDirect3DDevice9, ppShader: ptr ptr IDirect3DVertexShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetVertexShader(self, ppShader)
proc SetVertexShaderConstantF*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetVertexShaderConstantF(self, StartRegister, pConstantData, Vector4fCount)
proc GetVertexShaderConstantF*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetVertexShaderConstantF(self, StartRegister, pConstantData, Vector4fCount)
proc SetVertexShaderConstantI*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetVertexShaderConstantI(self, StartRegister, pConstantData, Vector4iCount)
proc GetVertexShaderConstantI*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetVertexShaderConstantI(self, StartRegister, pConstantData, Vector4iCount)
proc SetVertexShaderConstantB*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetVertexShaderConstantB(self, StartRegister, pConstantData, BoolCount)
proc GetVertexShaderConstantB*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetVertexShaderConstantB(self, StartRegister, pConstantData, BoolCount)
proc SetStreamSource*(self: ptr IDirect3DDevice9, StreamNumber: UINT, pStreamData: ptr IDirect3DVertexBuffer9, OffsetInBytes: UINT, Stride: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetStreamSource(self, StreamNumber, pStreamData, OffsetInBytes, Stride)
proc GetStreamSource*(self: ptr IDirect3DDevice9, StreamNumber: UINT, ppStreamData: ptr ptr IDirect3DVertexBuffer9, pOffsetInBytes: ptr UINT, pStride: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetStreamSource(self, StreamNumber, ppStreamData, pOffsetInBytes, pStride)
proc SetStreamSourceFreq*(self: ptr IDirect3DDevice9, StreamNumber: UINT, Setting: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetStreamSourceFreq(self, StreamNumber, Setting)
proc GetStreamSourceFreq*(self: ptr IDirect3DDevice9, StreamNumber: UINT, pSetting: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetStreamSourceFreq(self, StreamNumber, pSetting)
proc SetIndices*(self: ptr IDirect3DDevice9, pIndexData: ptr IDirect3DIndexBuffer9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetIndices(self, pIndexData)
proc GetIndices*(self: ptr IDirect3DDevice9, ppIndexData: ptr ptr IDirect3DIndexBuffer9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetIndices(self, ppIndexData)
proc CreatePixelShader*(self: ptr IDirect3DDevice9, pFunction: ptr DWORD, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreatePixelShader(self, pFunction, ppShader)
proc SetPixelShader*(self: ptr IDirect3DDevice9, pShader: ptr IDirect3DPixelShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetPixelShader(self, pShader)
proc GetPixelShader*(self: ptr IDirect3DDevice9, ppShader: ptr ptr IDirect3DPixelShader9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetPixelShader(self, ppShader)
proc SetPixelShaderConstantF*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetPixelShaderConstantF(self, StartRegister, pConstantData, Vector4fCount)
proc GetPixelShaderConstantF*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr float32, Vector4fCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetPixelShaderConstantF(self, StartRegister, pConstantData, Vector4fCount)
proc SetPixelShaderConstantI*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetPixelShaderConstantI(self, StartRegister, pConstantData, Vector4iCount)
proc GetPixelShaderConstantI*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr int32, Vector4iCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetPixelShaderConstantI(self, StartRegister, pConstantData, Vector4iCount)
proc SetPixelShaderConstantB*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).SetPixelShaderConstantB(self, StartRegister, pConstantData, BoolCount)
proc GetPixelShaderConstantB*(self: ptr IDirect3DDevice9, StartRegister: UINT, pConstantData: ptr BOOL, BoolCount: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).GetPixelShaderConstantB(self, StartRegister, pConstantData, BoolCount)
proc DrawRectPatch*(self: ptr IDirect3DDevice9, Handle: UINT, pNumSegs: ptr float32, pRectPatchInfo: ptr D3DRECTPATCH_INFO): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawRectPatch(self, Handle, pNumSegs, pRectPatchInfo)
proc DrawTriPatch*(self: ptr IDirect3DDevice9, Handle: UINT, pNumSegs: ptr float32, pTriPatchInfo: ptr D3DTRIPATCH_INFO): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DrawTriPatch(self, Handle, pNumSegs, pTriPatchInfo)
proc DeletePatch*(self: ptr IDirect3DDevice9, Handle: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).DeletePatch(self, Handle)
proc CreateQuery*(self: ptr IDirect3DDevice9, Type: D3DQUERYTYPE, ppQuery: ptr ptr IDirect3DQuery9): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9Vtbl](self.lpVtbl).CreateQuery(self, Type, ppQuery)

# IDirect3DStateBlock9
proc GetDevice*(self: ptr IDirect3DStateBlock9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DStateBlock9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc Capture*(self: ptr IDirect3DStateBlock9): HRESULT {.d9md.} =
  cast[ptr IDirect3DStateBlock9Vtbl](self.lpVtbl).Capture(self)
proc Apply*(self: ptr IDirect3DStateBlock9): HRESULT {.d9md.} =
  cast[ptr IDirect3DStateBlock9Vtbl](self.lpVtbl).Apply(self)

# IDirect3DSwapChain9
proc Present*(self: ptr IDirect3DSwapChain9, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA, dwFlags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).Present(self, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags)
proc GetFrontBufferData*(self: ptr IDirect3DSwapChain9, pDestSurface: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetFrontBufferData(self, pDestSurface)
proc GetBackBuffer*(self: ptr IDirect3DSwapChain9, iBackBuffer: UINT, Type: D3DBACKBUFFER_TYPE, ppBackBuffer: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetBackBuffer(self, iBackBuffer, Type, ppBackBuffer)
proc GetRasterStatus*(self: ptr IDirect3DSwapChain9, pRasterStatus: ptr D3DRASTER_STATUS): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetRasterStatus(self, pRasterStatus)
proc GetDisplayMode*(self: ptr IDirect3DSwapChain9, pMode: ptr D3DDISPLAYMODE): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetDisplayMode(self, pMode)
proc GetDevice*(self: ptr IDirect3DSwapChain9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetPresentParameters*(self: ptr IDirect3DSwapChain9, pPresentationParameters: ptr D3DPRESENT_PARAMETERS): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9Vtbl](self.lpVtbl).GetPresentParameters(self, pPresentationParameters)

# IDirect3DResource9
proc GetDevice*(self: ptr IDirect3DResource9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc SetPrivateData*(self: ptr IDirect3DResource9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).SetPrivateData(self, refguid, pData, SizeOfData, Flags)
proc GetPrivateData*(self: ptr IDirect3DResource9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).GetPrivateData(self, refguid, pData, pSizeOfData)
proc FreePrivateData*(self: ptr IDirect3DResource9, refguid: REFGUID): HRESULT {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).FreePrivateData(self, refguid)
proc SetPriority*(self: ptr IDirect3DResource9, PriorityNew: DWORD): DWORD {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).SetPriority(self, PriorityNew)
proc GetPriority*(self: ptr IDirect3DResource9): DWORD {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).GetPriority(self)
proc PreLoad*(self: ptr IDirect3DResource9) {.d9m.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).PreLoad(self)
proc GetType*(self: ptr IDirect3DResource9): D3DRESOURCETYPE {.d9md.} =
  cast[ptr IDirect3DResource9Vtbl](self.lpVtbl).GetType(self)

# IDirect3DVertexDeclaration9
proc GetDevice*(self: ptr IDirect3DVertexDeclaration9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexDeclaration9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetDeclaration*(self: ptr IDirect3DVertexDeclaration9, pElement: ptr D3DVERTEXELEMENT9, pNumElements: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexDeclaration9Vtbl](self.lpVtbl).GetDeclaration(self, pElement, pNumElements)

# IDirect3DVertexShader9
proc GetDevice*(self: ptr IDirect3DVertexShader9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexShader9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetFunction*(self: ptr IDirect3DVertexShader9, arg0: pointer, pSizeOfData: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexShader9Vtbl](self.lpVtbl).GetFunction(self, arg0, pSizeOfData)

# IDirect3DPixelShader9
proc GetDevice*(self: ptr IDirect3DPixelShader9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DPixelShader9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetFunction*(self: ptr IDirect3DPixelShader9, arg0: pointer, pSizeOfData: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DPixelShader9Vtbl](self.lpVtbl).GetFunction(self, arg0, pSizeOfData)

# IDirect3DBaseTexture9
proc SetLOD*(self: ptr IDirect3DBaseTexture9, LODNew: DWORD): DWORD {.d9md.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).SetLOD(self, LODNew)
proc GetLOD*(self: ptr IDirect3DBaseTexture9): DWORD {.d9md.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).GetLOD(self)
proc GetLevelCount*(self: ptr IDirect3DBaseTexture9): DWORD {.d9md.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).GetLevelCount(self)
proc SetAutoGenFilterType*(self: ptr IDirect3DBaseTexture9, FilterType: D3DTEXTUREFILTERTYPE): HRESULT {.d9md.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).SetAutoGenFilterType(self, FilterType)
proc GetAutoGenFilterType*(self: ptr IDirect3DBaseTexture9): D3DTEXTUREFILTERTYPE {.d9md.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).GetAutoGenFilterType(self)
proc GenerateMipSubLevels*(self: ptr IDirect3DBaseTexture9) {.d9m.} =
  cast[ptr IDirect3DBaseTexture9Vtbl](self.lpVtbl).GenerateMipSubLevels(self)

# IDirect3DTexture9
proc GetLevelDesc*(self: ptr IDirect3DTexture9, Level: UINT, pDesc: ptr D3DSURFACE_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DTexture9Vtbl](self.lpVtbl).GetLevelDesc(self, Level, pDesc)
proc GetSurfaceLevel*(self: ptr IDirect3DTexture9, Level: UINT, ppSurfaceLevel: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DTexture9Vtbl](self.lpVtbl).GetSurfaceLevel(self, Level, ppSurfaceLevel)
proc LockRect*(self: ptr IDirect3DTexture9, Level: UINT, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DTexture9Vtbl](self.lpVtbl).LockRect(self, Level, pLockedRect, pRect, Flags)
proc UnlockRect*(self: ptr IDirect3DTexture9, Level: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DTexture9Vtbl](self.lpVtbl).UnlockRect(self, Level)
proc AddDirtyRect*(self: ptr IDirect3DTexture9, pDirtyRect: ptr RECT): HRESULT {.d9md.} =
  cast[ptr IDirect3DTexture9Vtbl](self.lpVtbl).AddDirtyRect(self, pDirtyRect)

# IDirect3DVolumeTexture9
proc GetLevelDesc*(self: ptr IDirect3DVolumeTexture9, Level: UINT, pDesc: ptr D3DVOLUME_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolumeTexture9Vtbl](self.lpVtbl).GetLevelDesc(self, Level, pDesc)
proc GetVolumeLevel*(self: ptr IDirect3DVolumeTexture9, Level: UINT, ppVolumeLevel: ptr ptr IDirect3DVolume9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolumeTexture9Vtbl](self.lpVtbl).GetVolumeLevel(self, Level, ppVolumeLevel)
proc LockBox*(self: ptr IDirect3DVolumeTexture9, Level: UINT, pLockedVolume: ptr D3DLOCKED_BOX, pBox: ptr D3DBOX, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolumeTexture9Vtbl](self.lpVtbl).LockBox(self, Level, pLockedVolume, pBox, Flags)
proc UnlockBox*(self: ptr IDirect3DVolumeTexture9, Level: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolumeTexture9Vtbl](self.lpVtbl).UnlockBox(self, Level)
proc AddDirtyBox*(self: ptr IDirect3DVolumeTexture9, pDirtyBox: ptr D3DBOX): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolumeTexture9Vtbl](self.lpVtbl).AddDirtyBox(self, pDirtyBox)

# IDirect3DCubeTexture9
proc GetLevelDesc*(self: ptr IDirect3DCubeTexture9, Level: UINT, pDesc: ptr D3DSURFACE_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DCubeTexture9Vtbl](self.lpVtbl).GetLevelDesc(self, Level, pDesc)
proc GetCubeMapSurface*(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT, ppCubeMapSurface: ptr ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DCubeTexture9Vtbl](self.lpVtbl).GetCubeMapSurface(self, FaceType, Level, ppCubeMapSurface)
proc LockRect*(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DCubeTexture9Vtbl](self.lpVtbl).LockRect(self, FaceType, Level, pLockedRect, pRect, Flags)
proc UnlockRect*(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, Level: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCubeTexture9Vtbl](self.lpVtbl).UnlockRect(self, FaceType, Level)
proc AddDirtyRect*(self: ptr IDirect3DCubeTexture9, FaceType: D3DCUBEMAP_FACES, pDirtyRect: ptr RECT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCubeTexture9Vtbl](self.lpVtbl).AddDirtyRect(self, FaceType, pDirtyRect)

# IDirect3DVertexBuffer9
proc Lock*(self: ptr IDirect3DVertexBuffer9, OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexBuffer9Vtbl](self.lpVtbl).Lock(self, OffsetToLock, SizeToLock, ppbData, Flags)
proc Unlock*(self: ptr IDirect3DVertexBuffer9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexBuffer9Vtbl](self.lpVtbl).Unlock(self)
proc GetDesc*(self: ptr IDirect3DVertexBuffer9, pDesc: ptr D3DVERTEXBUFFER_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DVertexBuffer9Vtbl](self.lpVtbl).GetDesc(self, pDesc)

# IDirect3DIndexBuffer9
proc Lock*(self: ptr IDirect3DIndexBuffer9, OffsetToLock: UINT, SizeToLock: UINT, ppbData: ptr pointer, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DIndexBuffer9Vtbl](self.lpVtbl).Lock(self, OffsetToLock, SizeToLock, ppbData, Flags)
proc Unlock*(self: ptr IDirect3DIndexBuffer9): HRESULT {.d9md.} =
  cast[ptr IDirect3DIndexBuffer9Vtbl](self.lpVtbl).Unlock(self)
proc GetDesc*(self: ptr IDirect3DIndexBuffer9, pDesc: ptr D3DINDEXBUFFER_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DIndexBuffer9Vtbl](self.lpVtbl).GetDesc(self, pDesc)

# IDirect3DSurface9
proc GetContainer*(self: ptr IDirect3DSurface9, riid: REFIID, ppContainer: ptr pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).GetContainer(self, riid, ppContainer)
proc GetDesc*(self: ptr IDirect3DSurface9, pDesc: ptr D3DSURFACE_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).GetDesc(self, pDesc)
proc LockRect*(self: ptr IDirect3DSurface9, pLockedRect: ptr D3DLOCKED_RECT, pRect: ptr RECT, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).LockRect(self, pLockedRect, pRect, Flags)
proc UnlockRect*(self: ptr IDirect3DSurface9): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).UnlockRect(self)
proc GetDC*(self: ptr IDirect3DSurface9, phdc: ptr HDC): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).GetDC(self, phdc)
proc ReleaseDC*(self: ptr IDirect3DSurface9, hdc: HDC): HRESULT {.d9md.} =
  cast[ptr IDirect3DSurface9Vtbl](self.lpVtbl).ReleaseDC(self, hdc)

# IDirect3DVolume9
proc GetDevice*(self: ptr IDirect3DVolume9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc SetPrivateData*(self: ptr IDirect3DVolume9, refguid: REFGUID, pData: pointer, SizeOfData: DWORD, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).SetPrivateData(self, refguid, pData, SizeOfData, Flags)
proc GetPrivateData*(self: ptr IDirect3DVolume9, refguid: REFGUID, pData: pointer, pSizeOfData: ptr DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).GetPrivateData(self, refguid, pData, pSizeOfData)
proc FreePrivateData*(self: ptr IDirect3DVolume9, refguid: REFGUID): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).FreePrivateData(self, refguid)
proc GetContainer*(self: ptr IDirect3DVolume9, riid: REFIID, ppContainer: ptr pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).GetContainer(self, riid, ppContainer)
proc GetDesc*(self: ptr IDirect3DVolume9, pDesc: ptr D3DVOLUME_DESC): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).GetDesc(self, pDesc)
proc LockBox*(self: ptr IDirect3DVolume9, pLockedVolume: ptr D3DLOCKED_BOX, pBox: ptr D3DBOX, Flags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).LockBox(self, pLockedVolume, pBox, Flags)
proc UnlockBox*(self: ptr IDirect3DVolume9): HRESULT {.d9md.} =
  cast[ptr IDirect3DVolume9Vtbl](self.lpVtbl).UnlockBox(self)

# IDirect3DQuery9
proc GetDevice*(self: ptr IDirect3DQuery9, ppDevice: ptr ptr IDirect3DDevice9): HRESULT {.d9md.} =
  cast[ptr IDirect3DQuery9Vtbl](self.lpVtbl).GetDevice(self, ppDevice)
proc GetType*(self: ptr IDirect3DQuery9): D3DQUERYTYPE {.d9md.} =
  cast[ptr IDirect3DQuery9Vtbl](self.lpVtbl).GetType(self)
proc GetDataSize*(self: ptr IDirect3DQuery9): DWORD {.d9md.} =
  cast[ptr IDirect3DQuery9Vtbl](self.lpVtbl).GetDataSize(self)
proc Issue*(self: ptr IDirect3DQuery9, dwIssueFlags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DQuery9Vtbl](self.lpVtbl).Issue(self, dwIssueFlags)
proc GetData*(self: ptr IDirect3DQuery9, pData: pointer, dwSize: DWORD, dwGetDataFlags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DQuery9Vtbl](self.lpVtbl).GetData(self, pData, dwSize, dwGetDataFlags)

# IDirect3D9Ex
proc GetAdapterModeCountEx*(self: ptr IDirect3D9Ex, Adapter: UINT, pFilter: ptr D3DDISPLAYMODEFILTER): UINT {.d9md.} =
  cast[ptr IDirect3D9ExVtbl](self.lpVtbl).GetAdapterModeCountEx(self, Adapter, pFilter)
proc EnumAdapterModesEx*(self: ptr IDirect3D9Ex, Adapter: UINT, pFilter: ptr D3DDISPLAYMODEFILTER, Mode: UINT, pMode: ptr D3DDISPLAYMODEEX): HRESULT {.d9md.} =
  cast[ptr IDirect3D9ExVtbl](self.lpVtbl).EnumAdapterModesEx(self, Adapter, pFilter, Mode, pMode)
proc GetAdapterDisplayModeEx*(self: ptr IDirect3D9Ex, Adapter: UINT, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.d9md.} =
  cast[ptr IDirect3D9ExVtbl](self.lpVtbl).GetAdapterDisplayModeEx(self, Adapter, pMode, pRotation)
proc CreateDeviceEx*(self: ptr IDirect3D9Ex, Adapter: UINT, DeviceType: D3DDEVTYPE, hFocusWindow: HWND, BehaviorFlags: DWORD, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pFullscreenDisplayMode: ptr D3DDISPLAYMODEEX, ppReturnedDeviceInterface: ptr ptr IDirect3DDevice9Ex): HRESULT {.d9md.} =
  cast[ptr IDirect3D9ExVtbl](self.lpVtbl).CreateDeviceEx(self, Adapter, DeviceType, hFocusWindow, BehaviorFlags, pPresentationParameters, pFullscreenDisplayMode, ppReturnedDeviceInterface)
proc GetAdapterLUID*(self: ptr IDirect3D9Ex, Adapter: UINT, pLUID: ptr LUID): HRESULT {.d9md.} =
  cast[ptr IDirect3D9ExVtbl](self.lpVtbl).GetAdapterLUID(self, Adapter, pLUID)

# IDirect3DDevice9Ex
proc SetConvolutionMonoKernel*(self: ptr IDirect3DDevice9Ex, width: UINT, height: UINT, rows: ptr float32, columns: ptr float32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).SetConvolutionMonoKernel(self, width, height, rows, columns)
proc ComposeRects*(self: ptr IDirect3DDevice9Ex, pSrc: ptr IDirect3DSurface9, pDst: ptr IDirect3DSurface9, pSrcRectDescs: ptr IDirect3DVertexBuffer9, NumRects: UINT, pDstRectDescs: ptr IDirect3DVertexBuffer9, Operation: D3DCOMPOSERECTSOP, Xoffset: int32, Yoffset: int32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).ComposeRects(self, pSrc, pDst, pSrcRectDescs, NumRects, pDstRectDescs, Operation, Xoffset, Yoffset)
proc PresentEx*(self: ptr IDirect3DDevice9Ex, pSourceRect: ptr RECT, pDestRect: ptr RECT, hDestWindowOverride: HWND, pDirtyRegion: ptr RGNDATA, dwFlags: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).PresentEx(self, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags)
proc GetGPUThreadPriority*(self: ptr IDirect3DDevice9Ex, pPriority: ptr INT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).GetGPUThreadPriority(self, pPriority)
proc SetGPUThreadPriority*(self: ptr IDirect3DDevice9Ex, Priority: INT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).SetGPUThreadPriority(self, Priority)
proc WaitForVBlank*(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).WaitForVBlank(self, iSwapChain)
proc CheckResourceResidency*(self: ptr IDirect3DDevice9Ex, pResourceArray: ptr ptr IDirect3DResource9, NumResources: UINT32): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).CheckResourceResidency(self, pResourceArray, NumResources)
proc SetMaximumFrameLatency*(self: ptr IDirect3DDevice9Ex, MaxLatency: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).SetMaximumFrameLatency(self, MaxLatency)
proc GetMaximumFrameLatency*(self: ptr IDirect3DDevice9Ex, pMaxLatency: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).GetMaximumFrameLatency(self, pMaxLatency)
proc CheckDeviceState*(self: ptr IDirect3DDevice9Ex, hDestinationWindow: HWND): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).CheckDeviceState(self, hDestinationWindow)
proc CreateRenderTargetEx*(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Lockable: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).CreateRenderTargetEx(self, Width, Height, Format, MultiSample, MultisampleQuality, Lockable, ppSurface, pSharedHandle, Usage)
proc CreateOffscreenPlainSurfaceEx*(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, Pool: D3DPOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).CreateOffscreenPlainSurfaceEx(self, Width, Height, Format, Pool, ppSurface, pSharedHandle, Usage)
proc CreateDepthStencilSurfaceEx*(self: ptr IDirect3DDevice9Ex, Width: UINT, Height: UINT, Format: D3DFORMAT, MultiSample: D3DMULTISAMPLE_TYPE, MultisampleQuality: DWORD, Discard: BOOL, ppSurface: ptr ptr IDirect3DSurface9, pSharedHandle: ptr HANDLE, Usage: DWORD): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).CreateDepthStencilSurfaceEx(self, Width, Height, Format, MultiSample, MultisampleQuality, Discard, ppSurface, pSharedHandle, Usage)
proc ResetEx*(self: ptr IDirect3DDevice9Ex, pPresentationParameters: ptr D3DPRESENT_PARAMETERS, pFullscreenDisplayMode: ptr D3DDISPLAYMODEEX): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).ResetEx(self, pPresentationParameters, pFullscreenDisplayMode)
proc GetDisplayModeEx*(self: ptr IDirect3DDevice9Ex, iSwapChain: UINT, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9ExVtbl](self.lpVtbl).GetDisplayModeEx(self, iSwapChain, pMode, pRotation)

# IDirect3DSwapChain9Ex
proc GetLastPresentCount*(self: ptr IDirect3DSwapChain9Ex, pLastPresentCount: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9ExVtbl](self.lpVtbl).GetLastPresentCount(self, pLastPresentCount)
proc GetPresentStats*(self: ptr IDirect3DSwapChain9Ex, pPresentationStatistics: ptr D3DPRESENTSTATS): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9ExVtbl](self.lpVtbl).GetPresentStats(self, pPresentationStatistics)
proc GetDisplayModeEx*(self: ptr IDirect3DSwapChain9Ex, pMode: ptr D3DDISPLAYMODEEX, pRotation: ptr D3DDISPLAYROTATION): HRESULT {.d9md.} =
  cast[ptr IDirect3DSwapChain9ExVtbl](self.lpVtbl).GetDisplayModeEx(self, pMode, pRotation)

# IDirect3D9ExOverlayExtension
proc CheckDeviceOverlayType*(self: ptr IDirect3D9ExOverlayExtension, Adapter: UINT, DevType: D3DDEVTYPE, OverlayWidth: UINT, OverlayHeight: UINT, OverlayFormat: D3DFORMAT, pDisplayMode: ptr D3DDISPLAYMODEEX, DisplayRotation: D3DDISPLAYROTATION, pOverlayCaps: ptr D3DOVERLAYCAPS): HRESULT {.d9md.} =
  cast[ptr IDirect3D9ExOverlayExtensionVtbl](self.lpVtbl).CheckDeviceOverlayType(self, Adapter, DevType, OverlayWidth, OverlayHeight, OverlayFormat, pDisplayMode, DisplayRotation, pOverlayCaps)

# IDirect3DDevice9Video
proc GetContentProtectionCaps*(self: ptr IDirect3DDevice9Video, pCryptoType: ptr GUID, pDecodeProfile: ptr GUID, pCaps: ptr D3DCONTENTPROTECTIONCAPS): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9VideoVtbl](self.lpVtbl).GetContentProtectionCaps(self, pCryptoType, pDecodeProfile, pCaps)
proc CreateAuthenticatedChannel*(self: ptr IDirect3DDevice9Video, ChannelType: D3DAUTHENTICATEDCHANNELTYPE, ppAuthenticatedChannel: ptr ptr IDirect3DAuthenticatedChannel9, pChannelHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9VideoVtbl](self.lpVtbl).CreateAuthenticatedChannel(self, ChannelType, ppAuthenticatedChannel, pChannelHandle)
proc CreateCryptoSession*(self: ptr IDirect3DDevice9Video, pCryptoType: ptr GUID, pDecodeProfile: ptr GUID, ppCryptoSession: ptr ptr IDirect3DCryptoSession9, pCryptoHandle: ptr HANDLE): HRESULT {.d9md.} =
  cast[ptr IDirect3DDevice9VideoVtbl](self.lpVtbl).CreateCryptoSession(self, pCryptoType, pDecodeProfile, ppCryptoSession, pCryptoHandle)

# IDirect3DAuthenticatedChannel9
proc GetCertificateSize*(self: ptr IDirect3DAuthenticatedChannel9, pCertificateSize: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DAuthenticatedChannel9Vtbl](self.lpVtbl).GetCertificateSize(self, pCertificateSize)
proc GetCertificate*(self: ptr IDirect3DAuthenticatedChannel9, CertifacteSize: UINT, ppCertificate: ptr BYTE): HRESULT {.d9md.} =
  cast[ptr IDirect3DAuthenticatedChannel9Vtbl](self.lpVtbl).GetCertificate(self, CertifacteSize, ppCertificate)
proc NegotiateKeyExchange*(self: ptr IDirect3DAuthenticatedChannel9, DataSize: UINT, pData: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DAuthenticatedChannel9Vtbl](self.lpVtbl).NegotiateKeyExchange(self, DataSize, pData)
proc Query*(self: ptr IDirect3DAuthenticatedChannel9, InputSize: UINT, pInput: pointer, OutputSize: UINT, pOutput: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DAuthenticatedChannel9Vtbl](self.lpVtbl).Query(self, InputSize, pInput, OutputSize, pOutput)
proc Configure*(self: ptr IDirect3DAuthenticatedChannel9, InputSize: UINT, pInput: pointer, pOutput: ptr D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT): HRESULT {.d9md.} =
  cast[ptr IDirect3DAuthenticatedChannel9Vtbl](self.lpVtbl).Configure(self, InputSize, pInput, pOutput)

# IDirect3DCryptoSession9
proc GetCertificateSize*(self: ptr IDirect3DCryptoSession9, pCertificateSize: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).GetCertificateSize(self, pCertificateSize)
proc GetCertificate*(self: ptr IDirect3DCryptoSession9, CertifacteSize: UINT, ppCertificate: ptr BYTE): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).GetCertificate(self, CertifacteSize, ppCertificate)
proc NegotiateKeyExchange*(self: ptr IDirect3DCryptoSession9, DataSize: UINT, pData: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).NegotiateKeyExchange(self, DataSize, pData)
proc EncryptionBlt*(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pDstSurface: ptr IDirect3DSurface9, DstSurfaceSize: UINT, pIV: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).EncryptionBlt(self, pSrcSurface, pDstSurface, DstSurfaceSize, pIV)
proc DecryptionBlt*(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pDstSurface: ptr IDirect3DSurface9, SrcSurfaceSize: UINT, pEncryptedBlockInfo: ptr D3DENCRYPTED_BLOCK_INFO, pContentKey: pointer, pIV: pointer): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).DecryptionBlt(self, pSrcSurface, pDstSurface, SrcSurfaceSize, pEncryptedBlockInfo, pContentKey, pIV)
proc GetSurfacePitch*(self: ptr IDirect3DCryptoSession9, pSrcSurface: ptr IDirect3DSurface9, pSurfacePitch: ptr UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).GetSurfacePitch(self, pSrcSurface, pSurfacePitch)
proc StartSessionKeyRefresh*(self: ptr IDirect3DCryptoSession9, pRandomNumber: pointer, RandomNumberSize: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).StartSessionKeyRefresh(self, pRandomNumber, RandomNumberSize)
proc FinishSessionKeyRefresh*(self: ptr IDirect3DCryptoSession9): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).FinishSessionKeyRefresh(self)
proc GetEncryptionBltKey*(self: ptr IDirect3DCryptoSession9, pReadbackKey: pointer, KeySize: UINT): HRESULT {.d9md.} =
  cast[ptr IDirect3DCryptoSession9Vtbl](self.lpVtbl).GetEncryptionBltKey(self, pReadbackKey, KeySize)

when defined(nimHasQuirky):
  {.pop.}

# macros from the C headers

func D3DCOLOR_ARGB*(a, r, g, b: SomeInteger): D3DCOLOR {.inline.} =
  cast[D3DCOLOR](((uint32(a) and 0xff) shl 24) or ((uint32(r) and 0xff) shl 16) or
                 ((uint32(g) and 0xff) shl 8) or (uint32(b) and 0xff))
func D3DCOLOR_RGBA*(r, g, b, a: SomeInteger): D3DCOLOR {.inline.} = D3DCOLOR_ARGB(a, r, g, b)
func D3DCOLOR_XRGB*(r, g, b: SomeInteger): D3DCOLOR {.inline.} = D3DCOLOR_ARGB(0xff, r, g, b)
func D3DCOLOR_XYUV*(y, u, v: SomeInteger): D3DCOLOR {.inline.} = D3DCOLOR_ARGB(0xff, y, u, v)
func D3DCOLOR_AYUV*(a, y, u, v: SomeInteger): D3DCOLOR {.inline.} = D3DCOLOR_ARGB(a, y, u, v)
func D3DCOLOR_COLORVALUE*(r, g, b, a: float32): D3DCOLOR {.inline.} =
  D3DCOLOR_RGBA(uint32(r * 255), uint32(g * 255), uint32(b * 255), uint32(a * 255))

func MAKEFOURCC*(a, b, c, d: char): DWORD {.inline.} =
  cast[DWORD](uint32(a) or (uint32(b) shl 8) or (uint32(c) shl 16) or (uint32(d) shl 24))

func D3DTS_WORLDMATRIX*(index: int): D3DTRANSFORMSTATETYPE {.inline.} =
  D3DTRANSFORMSTATETYPE(index + 256)

func D3DPS_VERSION*(major, minor: int): DWORD {.inline.} =
  cast[DWORD](0xFFFF0000'u32 or uint32(major shl 8) or uint32(minor))
func D3DVS_VERSION*(major, minor: int): DWORD {.inline.} =
  cast[DWORD](0xFFFE0000'u32 or uint32(major shl 8) or uint32(minor))
func D3DSHADER_VERSION_MAJOR*(version: DWORD): DWORD {.inline.} = (version shr 8) and 0xFF
func D3DSHADER_VERSION_MINOR*(version: DWORD): DWORD {.inline.} = version and 0xFF

func D3DFVF_TEXCOORDSIZE1*(coordIndex: int): DWORD {.inline.} = D3DFVF_TEXTUREFORMAT1 shl (coordIndex * 2 + 16)
func D3DFVF_TEXCOORDSIZE2*(coordIndex: int): DWORD {.inline.} = D3DFVF_TEXTUREFORMAT2
func D3DFVF_TEXCOORDSIZE3*(coordIndex: int): DWORD {.inline.} = D3DFVF_TEXTUREFORMAT3 shl (coordIndex * 2 + 16)
func D3DFVF_TEXCOORDSIZE4*(coordIndex: int): DWORD {.inline.} = D3DFVF_TEXTUREFORMAT4 shl (coordIndex * 2 + 16)

func D3DDECL_END*(): D3DVERTEXELEMENT9 {.inline.} =
  D3DVERTEXELEMENT9(Stream: 0xFF, Offset: 0, Type: BYTE(D3DDECLTYPE_UNUSED), Method: 0, Usage: 0, UsageIndex: 0)

# helpers

type D3DError* = object of CatchableError
  hr*: HRESULT

proc check*(hr: HRESULT, what = "Direct3D call") =
  ## Raises D3DError if hr is an error code.
  if hr < 0:
    var e = newException(D3DError, what & " failed (HRESULT 0x" &
                         strutils.toHex(cast[uint32](hr)) & ")")
    e.hr = hr
    raise e

proc release*[T: IUnknown](p: var ptr T) {.inline.} =
  ## Calls Release and sets p to nil.
  if p != nil:
    discard p.Release()
    p = nil

{.pop.}
