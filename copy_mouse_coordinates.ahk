#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Gui +LastFound +AlwaysOnTop +ToolWindow 
Gui, Color, 2E2E2E  
Gui, Font, s10 cFFFFFF, Segoe UI  

Gui, Add, Text, x10 y40 w280 h20 vStart cYellow Center, Press F1 to copy Coordinates to clipboard
Gui, Add, Text, x10 y70 w280 h20 vStop cYellow Center, Press F2 to exit the program

Gui, Show, x0 y0 w300 h130, Copy Coordinates
WinSet, Transparent, 200, A 

F1::
    MouseGetPos, xPos, yPos
    relativeX := xPos  
    relativeY := yPos  
    clipboard := relativeX ", " relativeY 
return

F2::
    ExitApp
return
