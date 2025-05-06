# d9Nim

Compile the example with "nim cpp -f -r .\d3d9Window.nim"

g++ example.cpp -o d3d_app.exe \
    -I"$DXSDK_DIR/Include" \
    -L"$DXSDK_DIR/Lib/x64" \
    -ld3d11 -ldxgi -ld3dcompiler_47 -luser32
