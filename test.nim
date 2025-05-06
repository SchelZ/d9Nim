{.passC: "-I" & getEnv("DXSDK_DIR") & "/Include".}

{.passL: "-L" & getEnv("DXSDK_DIR") & "/Lib/x64",
        "-ld3d11", "-ldxgi", "-ld3dcompiler_47", "-luser32".}

import os, strutils, sequtils

{.compile: cDecl.}  # ensure C declarations are allowed

# Minimal extern declarations (you’d normally use c2nim to generate these)
const
  D3D11_SDK_VERSION* = 7

type
  ID3D11Device* = object
  ID3D11DeviceContext* = object

# Declare the D3D11CreateDevice function
proc D3D11CreateDevice(
  pAdapter: pointer,
  DriverType, Flags: uint32,
  pFeatureLevels: pointer,
  FeatureLevels: uint32,
  SDKVersion: uint32,
  ppDevice: ptr ID3D11Device,
  pFeatureLevel: ptr uint32,
  ppImmediateContext: ptr ID3D11DeviceContext
): HRESULT {.stdcall, dynlib: "d3d11".}

when isMainModule:
  var device*: ptr ID3D11Device = nil
  var context*: ptr ID3D11DeviceContext = nil
  var featureLevel: uint32 = 0

  let hr = D3D11CreateDevice(
    nil,            # use default adapter
    1,              # DRIVER_TYPE_HARDWARE
    0,              # no software RAST
    nil,            # use default feature levels
    0,
    D3D11_SDK_VERSION,
    addr device,
    addr featureLevel,
    addr context
  )

  if hr == 0:  # S_OK
    echo "Created D3D11 device, feature level: ", $(featureLevel)
  else:
    echo "Failed to create device, HRESULT=", hr
