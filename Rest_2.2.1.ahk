#Requires AutoHotkey v2.0
#SingleInstance force

RestMain := Gui()
Close := Gui()

;   === Open/Close Toggle ===

RShift::
{
    If WinActive("RestGui")
        RestMain.Hide
    else
        RestMain.Show
}


RestMain.Show("w500 h500")                                  ; Width & Height
RestMain.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")           ; Options
RestMain.BackColor := "141414"                            ; Color
RestMain.SetFont(, "Verdana")                               ; Font

RoundCorners(RestMain.Hwnd)                                 ; Rounded Corners

RoundCorners(Hwnd) {
    WinGetClientPos(&gX, &gY, &gWidth, &gHeight, Hwnd)
    WinSetRegion(Format("0-0 w{1} h{2} r15-15", gWidth, gHeight), Hwnd)
}

;   === Exiting ===

RShift & Esc::
{
Close.Show("Center y820 w500 h30")                          ; Width & Height
Close.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")              ; Options
Close.BackColor := "141414"                               ; Color
Close.SetFont(, "Verdana")                                  ; Font

RoundCorners(Close.Hwnd)                                    ; Rounded Corners
    
    RoundCorners(Hwnd) {
    WinGetClientPos(&gX, &gY, &gWidth, &gHeight, Hwnd)
    WinSetRegion(Format("0-0 w{1} h{2} r15-15", gWidth, gHeight), Hwnd)
}
    
    Close.SetFont("s30 w600 q5")
    Close.Add
(
    "Text", "c2d3875", "       Script Closing"
)
Sleep 1000
ExitApp
}



;    --- Title ---   

RestMain.Title := "RestGui"

RestMain.SetFont("s55 q5")
RestMain.Add
(
    "Text", "c2d3875", 
    " Rest"
)

;    --- Body Text ---   

RestMain.SetFont("s10 w400 q5")
RestMain.Add
(
    "Text", "cWhite", 
    "   This AutoHotKey Script fixes the sniper spread
       nerf by automatically quick-scoping.

       This is NOT a cheat or an exploit. It simply autimates quick-scoping by
       sending artificial mouse inputs to your device. This script does not 
       touch the memory of Roblox by any means. This script is fully 
       compliant with the Roblox TOS, and War Tycoon Rules.

       To setup this script to work right, see here: [TBA]
       To see the source code of this script, see here: [TBA]

       As of now, this script has not been released to the public-
       and is also in very early stages of developement. (I'm ASS at scripting)


       Quick guide: Key is F6, Make your LCLICK F1, and your MIDDLE CLICK, 
       LCLICK.
            "
)

;    --- Keybinds ---   
RestMain.SetFont("s8 w400 q5")
RestMain.Add
(
    "Text", "c2d3875", 
    " 
    
    
    
    
    
    
                                   [RSHIFT] Toggle Gui | [RSHIFT+ESC] Exit"
)



RestMain.Show("Center")

F6::
{
    Send "{RButton}"
    Sleep 10
    Send "{LButton}"
    Sleep 10
    Send "{RButton}"
}
