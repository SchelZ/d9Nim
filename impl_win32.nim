import winim/lean
import nimgl/imgui

# ------------------------------------------------------------
# Backend state
# ------------------------------------------------------------

var
  g_hWnd: HWND = 0
  g_Time: int64 = 0
  g_TicksPerSecond: int64 = 0

# ------------------------------------------------------------
# Init / Shutdown
# ------------------------------------------------------------

proc igWin32Init*(hwnd: HWND): bool {.discardable.} =
  g_hWnd = hwnd

  if QueryPerformanceFrequency(cast[ptr LARGE_INTEGER](addr g_TicksPerSecond)) == 0:
    return false
  if QueryPerformanceCounter(cast[ptr LARGE_INTEGER](addr g_Time)) == 0:
    return false

  let io = igGetIO()

  io.backendPlatformName = "imgui_impl_win32"
  io.backendFlags = ImGuiBackendFlags(
    io.backendFlags.int32 or
    ImGuiBackendFlags.HasMouseCursors.int32 or
    ImGuiBackendFlags.HasSetMousePos.int32
  )

  io.imeWindowHandle = cast[pointer](hwnd)

  # Key mapping (exactly like C++)
  io.keyMap[ImGuiKey.Tab.int32]        = VK_TAB
  io.keyMap[ImGuiKey.LeftArrow.int32] = VK_LEFT
  io.keyMap[ImGuiKey.RightArrow.int32]= VK_RIGHT
  io.keyMap[ImGuiKey.UpArrow.int32]   = VK_UP
  io.keyMap[ImGuiKey.DownArrow.int32] = VK_DOWN
  io.keyMap[ImGuiKey.PageUp.int32]    = VK_PRIOR
  io.keyMap[ImGuiKey.PageDown.int32]  = VK_NEXT
  io.keyMap[ImGuiKey.Home.int32]      = VK_HOME
  io.keyMap[ImGuiKey.End.int32]       = VK_END
  io.keyMap[ImGuiKey.Insert.int32]    = VK_INSERT
  io.keyMap[ImGuiKey.Delete.int32]    = VK_DELETE
  io.keyMap[ImGuiKey.Backspace.int32] = VK_BACK
  io.keyMap[ImGuiKey.Space.int32]     = VK_SPACE
  io.keyMap[ImGuiKey.Enter.int32]     = VK_RETURN
  io.keyMap[ImGuiKey.Escape.int32]    = VK_ESCAPE
  io.keyMap[ImGuiKey.KeyPadEnter.int32] = VK_RETURN
  io.keyMap[ImGuiKey.A.int32] = 'A'.ord
  io.keyMap[ImGuiKey.C.int32] = 'C'.ord
  io.keyMap[ImGuiKey.V.int32] = 'V'.ord
  io.keyMap[ImGuiKey.X.int32] = 'X'.ord
  io.keyMap[ImGuiKey.Y.int32] = 'Y'.ord
  io.keyMap[ImGuiKey.Z.int32] = 'Z'.ord

  true


proc igWin32Shutdown*() =
  g_hWnd = 0

# ------------------------------------------------------------
# Mouse cursor
# ------------------------------------------------------------

proc igWin32UpdateMouseCursor*(): bool =
  let io = igGetIO()
  if (io.configFlags.int32 and ImGuiConfigFlags.NoMouseCursorChange.int32) != 0:
    return false

  let imguiCursor = igGetMouseCursor()
  if imguiCursor == ImGuiMouseCursor.None or io.mouseDrawCursor:
    SetCursor(0)
    return true

  var winCursor: LPCWSTR = IDC_ARROW
  case imguiCursor:
    of ImGuiMouseCursor.Arrow:        winCursor = IDC_ARROW
    of ImGuiMouseCursor.TextInput:    winCursor = IDC_IBEAM
    of ImGuiMouseCursor.ResizeAll:    winCursor = IDC_SIZEALL
    of ImGuiMouseCursor.ResizeEW:     winCursor = IDC_SIZEWE
    of ImGuiMouseCursor.ResizeNS:     winCursor = IDC_SIZENS
    of ImGuiMouseCursor.ResizeNESW:   winCursor = IDC_SIZENESW
    of ImGuiMouseCursor.ResizeNWSE:   winCursor = IDC_SIZENWSE
    of ImGuiMouseCursor.Hand:         winCursor = IDC_HAND
    of ImGuiMouseCursor.NotAllowed:   winCursor = IDC_NO
    else: discard

  SetCursor(LoadCursorW(0, winCursor))
  true

# ------------------------------------------------------------
# Per-frame update
# ------------------------------------------------------------

proc igWin32NewFrame*() =
  let io = igGetIO()

  var rect: RECT
  GetClientRect(g_hWnd, rect.addr)
  io.displaySize = ImVec2(
    x: float32(rect.right - rect.left),
    y: float32(rect.bottom - rect.top)
  )

  var currentTime: int64
  QueryPerformanceCounter(cast[ptr LARGE_INTEGER](addr currentTime))
  io.deltaTime = float32(currentTime - g_Time) / float32(g_TicksPerSecond)
  g_Time = currentTime

  io.keyCtrl  = (GetKeyState(VK_CONTROL) and 0x8000) != 0
  io.keyShift = (GetKeyState(VK_SHIFT) and 0x8000) != 0
  io.keyAlt   = (GetKeyState(VK_MENU) and 0x8000) != 0
  io.keySuper = false

# ------------------------------------------------------------
# Win32 message handler
# ------------------------------------------------------------

proc igWin32WndProcHandler*(
  hwnd: HWND,
  msg: UINT,
  wParam: WPARAM,
  lParam: LPARAM
): LRESULT {.discardable.} =

  if igGetCurrentContext() == nil:
    return 0

  let io = igGetIO()

  case msg
  of WM_LBUTTONDOWN, WM_LBUTTONDBLCLK:
    io.mouseDown[0] = true
    SetCapture(hwnd)
    return 0

  of WM_LBUTTONUP:
    io.mouseDown[0] = false
    ReleaseCapture()
    return 0

  of WM_RBUTTONDOWN, WM_RBUTTONDBLCLK:
    io.mouseDown[1] = true
    SetCapture(hwnd)
    return 0

  of WM_RBUTTONUP:
    io.mouseDown[1] = false
    ReleaseCapture()
    return 0

  of WM_MBUTTONDOWN, WM_MBUTTONDBLCLK:
    io.mouseDown[2] = true
    SetCapture(hwnd)
    return 0

  of WM_MBUTTONUP:
    io.mouseDown[2] = false
    ReleaseCapture()
    return 0

  of WM_MOUSEWHEEL:
    io.mouseWheel += float32(GET_WHEEL_DELTA_WPARAM(wParam)) / float32(WHEEL_DELTA)
    return 0

  of WM_MOUSEHWHEEL:
    io.mouseWheelH += float32(GET_WHEEL_DELTA_WPARAM(wParam)) / float32(WHEEL_DELTA)
    return 0

  of WM_KEYDOWN, WM_SYSKEYDOWN:
    if wParam < 256:
      io.keysDown[wParam] = true
    return 0

  of WM_KEYUP, WM_SYSKEYUP:
    if wParam < 256:
      io.keysDown[wParam] = false
    return 0

  of WM_CHAR:
    if wParam > 0 and wParam < 0x10000:
      io.addInputCharacterUTF16(uint16(wParam))
    return 0

  of WM_SETCURSOR:
    if LOWORD(lParam) == HTCLIENT and igWin32UpdateMouseCursor():
      return 1
    return 0

  else:
    return 0
