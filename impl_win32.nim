# This is not fully working, still fixing some errors with directx9

import winim/com, imgui

var 
  g_hWnd: HWND = nil
  g_Time: INT64 = 0
  g_TicksPerSecond: INT64 = 0
  # g_LastMouseCursor: ImGuiMouseCursor = ImGuiMouseCursor_COUNT
  g_HasGamepad: bool = false
  g_WantUpdateHasGamepad: bool = true



proc igWin32Init*(hwnd: pointer): bool {.discardable.} =
  if not QueryPerformanceFrequency(cast[ptr LARGE_INTEGER](g_TicksPerSecond.addr)):
    return false
  if not QueryPerformanceCounter(cast[ptr LARGE_INTEGER](g_Time.addr)):
    return false

  # Setup back-end capabilities flags
  g_hWnd = cast[HWND](hwnd)
  let io = igGetIO()
  io.backendFlags = (io.backendFlags.int32 or ImGuiBackendFlags.HasMouseCursors.int32).ImGuiBackendFlags
  io.backendFlags = (io.backendFlags.int32 or ImGuiBackendFlags.HasSetMousePos.int32).ImGuiBackendFlags

  io.backendRendererName = "imgui_impl_win32"
  io.imeWindowHandle = hwnd

  # Keyboard mapping. ImGui will use those indices to peek into the io.keysDown[] array that we will update during the application lifetime.
  io.keyMap[ImGuiKey.Tab.int32] = VK_TAB
  io.keyMap[ImGuiKey.LeftArrow.int32] = VK_LEFT
  io.keyMap[ImGuiKey.RightArrow.int32] = VK_RIGHT
  io.keyMap[ImGuiKey.UpArrow.int32] = VK_UP
  io.keyMap[ImGuiKey.DownArrow.int32] = VK_DOWN
  io.keyMap[ImGuiKey.PageUp.int32] = VK_PRIOR
  io.keyMap[ImGuiKey.PageDown.int32] = VK_NEXT
  io.keyMap[ImGuiKey.Home.int32] = VK_HOME
  io.keyMap[ImGuiKey.End.int32] = VK_END
  io.keyMap[ImGuiKey.Insert.int32] = VK_INSERT
  io.keyMap[ImGuiKey.Delete.int32] = VK_DELETE
  io.keyMap[ImGuiKey.Backspace.int32] = VK_BACK
  io.keyMap[ImGuiKey.Space.int32] = VK_SPACE
  io.keyMap[ImGuiKey.Enter.int32] = VK_RETURN
  io.keyMap[ImGuiKey.Escape.int32] = VK_ESCAPE
  io.keyMap[ImGuiKey.KeyPadEnter.int32] = VK_RETURN
  io.keyMap[ImGuiKey.A.int32] = 0x41
  io.keyMap[ImGuiKey.C.int32] = 0x43
  io.keyMap[ImGuiKey.V.int32] = 0x56
  io.keyMap[ImGuiKey.X.int32] = 0x58
  io.keyMap[ImGuiKey.Y.int32] = 0x59
  io.keyMap[ImGuiKey.Z.int32] = 0x5A

  return true

proc igWin32Shutdown*(): void = 
  g_hWnd = cast[HWND](0)

proc igWin32UpdateMouseCursor*(): bool = 
  let io = igGetIO()
  if (io.configFlags.int32 and ImGuiConfigFlags.NoMouseCursorChange.int32) == 1:
    return false

  var igCursor: ImGuiMouseCursor = igGetMouseCursor()
  if igCursor == ImGuiMouseCursor.None or io.mouseDrawCursor: SetCursor(nil)
  else:
    var win32_cursor: LPTSTR = IDC_ARROW;
    case igCursor:
      of ImGuiMouseCursor.Arrow.int32:        win32_cursor = IDC_ARROW; break;
      of ImGuiMouseCursor.TextInput.int32:    win32_cursor = IDC_IBEAM; break;
      of ImGuiMouseCursor.ResizeAll.int32:    win32_cursor = IDC_SIZEALL; break;
      of ImGuiMouseCursor.ResizeEW.int32:     win32_cursor = IDC_SIZEWE; break;
      of ImGuiMouseCursor.ResizeNS.int32:     win32_cursor = IDC_SIZENS; break;
      of ImGuiMouseCursor.ResizeNESW.int32:   win32_cursor = IDC_SIZENESW; break;
      of ImGuiMouseCursor.ResizeNWSE.int32:   win32_cursor = IDC_SIZENWSE; break;
      of ImGuiMouseCursor.Hand.int32:         win32_cursor = IDC_HAND; break;
      of ImGuiMouseCursor.NotAllowed.int32:   win32_cursor = IDC_NO; break;
      SetCursor(LoadCursor(nil, win32_cursor))
  return true;




proc igWin32NewFrame*(): void = 
  let io = igGetIO()
  var 
    rect: RECT
    current_time: INT64

  GetClientRect(g_hWnd, rect.addr)
  io.displaySize = ImVec2(x: cast[float](rect.right - rect.left), y: cast[float](rect.bottom - rect.top))
  QueryPerformanceCounter(cast[ptr LARGE_INTEGER](current_time.addr))
  io.deltaTime = cast[float](current_time - g_Time) / cast[float](g_TicksPerSecond)
  g_Time = current_time

  # Read keyboard modifiers inputs
  io.keyCtrl = (GetKeyState(VK_CONTROL) and 0x8000) != 0
  io.keyShift = (GetKeyState(VK_SHIFT) and 0x8000) != 0
  io.keyAlt = (GetKeyState(VK_MENU) and 0x8000) != 0
  io.keySuper = false



proc igWin32WndProcHandler*(hwnd: HWND, msg: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.discardable.} =
  if igGetCurrentContext() == nil:
    return 0

  let io = igGetIO()
  case msg:
    of WM_LBUTTONDOWN or WM_LBUTTONDBLCLK: discard
    of WM_RBUTTONDOWN or WM_RBUTTONDBLCLK: discard
    of WM_LBUTTONDOWN or WM_LBUTTONDBLCLK: discard
    of WM_XBUTTONDOWN or WM_XBUTTONDBLCLK: 
      var button: int = 0
      if msg == WM_LBUTTONDOWN or msg == WM_LBUTTONDBLCLK: button = 0
      if msg == WM_RBUTTONDOWN or msg == WM_RBUTTONDBLCLK: button = 1
      if msg == WM_MBUTTONDOWN or msg == WM_MBUTTONDBLCLK: button = 2
      if msg == WM_XBUTTONDOWN or msg == WM_XBUTTONDBLCLK: button = (GET_XBUTTON_WPARAM(wParam) == XBUTTON1) ? 3 or 4
      if igIsAnyMouseDown() and GetCapture() == nil:
        SetCapture(hwnd)
      io.mouseDown[button] = true
      return 0
    of WM_MOUSEWHEEL:
      io.mouseWheel += (float)GET_WHEEL_DELTA_WPARAM(wParam) / (float)WHEEL_DELTA
      return 0
    of WM_MOUSEHWHEEL:
      io.mouseWheelH += (float)GET_WHEEL_DELTA_WPARAM(wParam) / (float)WHEEL_DELTA
      return 0
    of WM_KEYDOWN: discard
    of WM_SYSKEYDOWN:
      if wParam < 256:
        io.keysDown[wParam] = 1
      return 0
    of WM_KEYUP: discard
    of WM_SYSKEYUP:
      if wParam < 256:
        io.keysDown[wParam] = 0
      return 0
    of WM_CHAR:
      if wParam > 0 and wParam < 0x10000:
        io.AddInputCharacterUTF16((unsigned short)wParam)
      return 0
    of WM_SETCURSOR:
      if LOWORD(lParam) == HTCLIENT and ImGui_ImplWin32_UpdateMouseCursor():
        return 1
      return 0
    of WM_DEVICECHANGE:
      if ((UINT)wParam == DBT_DEVNODES_CHANGED)
        g_WantUpdateHasGamepad = true
      return 0
    return 0




