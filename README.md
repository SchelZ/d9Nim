# d9Nim

Direct3D 9 bindings for Nim, written in pure Nim. Works with `nim c`, no C++ backend and no
DirectX SDK needed.

Includes all of d3d9.h, d3d9types.h and d3d9caps.h, all of D3DX 9, and a small `D3DApp` helper
that sets up the window and device for you.

![441453200-d217a2cb-1812-44fb-b321-efbd4a45a837](https://github.com/user-attachments/assets/f7884514-eda4-4a0a-899c-1ae56ab72091)

## Install

```
nimble install https://github.com/SchelZ/d9Nim
```

or

```
git clone https://github.com/SchelZ/d9Nim
cd d9Nim
nimble install
```

## Example

```nim
import std/math
import d9nim

type Vertex = object
  x, y, z, rhw: float32
  color: D3DCOLOR

const FVF = D3DFVF_XYZRHW or D3DFVF_DIFFUSE

var angle = 0'f32

let app = newD3DApp("Hello, triangle", 800, 600)
app.clearColor = D3DCOLOR_XRGB(25, 25, 35)

app.onFrame = proc (app: D3DApp, dt: float32) =
  angle += dt
  let
    cx = float32(app.width) / 2
    cy = float32(app.height) / 2
    r = float32(min(app.width, app.height)) * 0.4
    colors = [D3DCOLOR_XRGB(255, 60, 60), D3DCOLOR_XRGB(60, 255, 60), D3DCOLOR_XRGB(60, 120, 255)]
  var tri: array[3, Vertex]
  for i in 0 .. 2:
    let a = angle + float32(i) * 2 * PI / 3
    tri[i] = Vertex(x: cx + r * sin(a), y: cy - r * cos(a), rhw: 1, color: colors[i])
  app.dev.SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE)
  app.dev.SetFVF(FVF)
  app.dev.DrawPrimitiveUP(D3DPT_TRIANGLELIST, 1, addr tri, UINT(sizeof(Vertex)))

app.run()
```

```
nim c -d:release --app:gui triangle.nim
```

## D3DApp

`newD3DApp(title, width, height, vsync = true, depthBuffer = true, resizable = true)` creates the
window and the device. `run()` runs the loop until the window is closed or you call `close()`.
It takes care of resizing, minimizing and lost devices.

Callbacks you can set:

- `onFrame(app, dt)` - called every frame, between BeginScene and EndScene
- `onDeviceReset(app)` - create your D3DPOOL_DEFAULT resources here
- `onDeviceLost(app)` - release them here
- `onResize(app)` - the window size changed
- `onMessage(app, msg, wParam, lParam)` - raw window messages, return non-zero if you handled it

Other fields: `dev`, `d3d`, `hwnd`, `pp`, `clearColor`, `autoClear`, `width`, `height`, `fps`,
`frameCount`. Call `reset()` after changing `pp`.

You don't have to use `D3DApp`. You can create the device yourself like in C:

```nim
import d9nim

let d3d = Direct3DCreate9(D3D_SDK_VERSION)

var pp: D3DPRESENT_PARAMETERS
pp.Windowed = TRUE
pp.SwapEffect = D3DSWAPEFFECT_DISCARD
pp.hDeviceWindow = hwnd

var dev: ptr IDirect3DDevice9
check d3d.CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, hwnd,
                       D3DCREATE_HARDWARE_VERTEXPROCESSING, addr pp, addr dev), "CreateDevice"

dev.Clear(0, nil, D3DCLEAR_TARGET, D3DCOLOR_XRGB(30, 30, 40), 1.0, 0)
dev.BeginScene()
dev.EndScene()
dev.Present(nil, nil, 0, nil)

release dev
release d3d
```

## Notes

The names are the same as in the C headers, so DirectX 9 tutorials and the MSDN docs work as is.

- Interfaces inherit, so a `ptr IDirect3DTexture9` can be passed where a
  `ptr IDirect3DBaseTexture9` or `ptr IUnknown` is expected.
- Enums like `D3DFORMAT` are `distinct int32` and convert to `DWORD` automatically.
- HRESULTs can be ignored like in C. Use `check` to raise a `D3DError` on failure, or
  `FAILED` / `SUCCEEDED`.
- `release p` calls Release and sets `p` to nil.
- Matrices are `m[row][col]`, so `_11` in C is `m.m[0][0]`.
- `import d9nim` also exports the winim types like `UINT`, `DWORD`, `HWND` and `RECT`.

## D3DX

```nim
import d9nim
import d9nim/d3dx9

var view: D3DXMATRIX
var eye = D3DXVECTOR3(x: 0, y: 3, z: -5)
var at = D3DXVECTOR3()
var up = D3DXVECTOR3(y: 1)
D3DXMatrixLookAtLH(addr view, addr eye, addr at, addr up)
dev.SetTransform(D3DTS_VIEW, addr view)

var font: ptr ID3DXFont
check D3DXCreateFont(dev, 24, 0, FW_NORMAL, 1, FALSE, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS,
                     DEFAULT_QUALITY, DEFAULT_PITCH, "Arial", addr font), "D3DXCreateFont"
```

D3DX needs `d3dx9_43.dll`, which is not part of Windows. It comes with the DirectX End-User
Runtimes (June 2010). Ship it with your game or ask users to install the runtime.

- Function names without A/W use the W version, for example `D3DXCreateFont`.
- The C++ operators on `D3DXVECTOR3`, `D3DXMATRIX` etc. are not there, use the functions
  (`D3DXVec3Add`, `D3DXMatrixMultiply`, ...).
- Anonymous unions are in a field called `u`, for example `meshData.u.pMesh`.

## Performance

Method calls cost the same as the old `importcpp` version in release builds, about 11 to 25 ns
per call depending on the method. Most of that time is spent inside d3d9.dll.

## Troubleshooting

If linking fails with MinGW and the error shows a path with a space in it, Nim is probably
installed somewhere like `C:\Program Files`. Install it to a path without spaces, like `C:\nim`.

## License

GPL-3.0
