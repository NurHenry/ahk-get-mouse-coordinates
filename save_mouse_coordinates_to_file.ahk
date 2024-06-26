#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Gui +LastFound +AlwaysOnTop +ToolWindow 
Gui, Color, 2E2E2E 
Gui, Font, s10 cFFFFFF, Segoe UI

Gui, Add, Text, x10 y30 w380 h20 vStatus cYellow Center, Press F1 to save mouse coordinates to Coords.txt
Gui, Add, Text, x10 y60 w380 h20 cYellow Center, Press F2 to exit the program

Gui, Show, x0 y0 w400 h130, Save Coordinates
WinSet, Transparent, 200, A

F1::
    CoordMode, Mouse, Screen
    MouseGetPos, xPos, yPos
    FileAppend, %xPos%`, %yPos%`n, Coords.txt
    GuiControl,, vStatus, Coordinates saved: %xPos%, %yPos%
return

F2::
    ExitApp
return
