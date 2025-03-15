; ===== Rest 2.3.0 =====



#Requires AutoHotkey v2.0
#SingleInstance force

; ===== Gui =====



RestMain := Gui(, "Rest Main")
RestGuide :=Gui(, "Rest Guide")
RestSettings := Gui(, "Rest Settings")
RestClose := Gui(, "Rest Closing")
Credits := Gui(, "Rest Credits")

 ; ===== Is Open =====



IsMainGuiOpen()
{
    return WinExist("Rest Main") && WinActive("Rest Main")
}

; ===== Round Corners =====



    RoundCorners(Hwnd)
{
    WinGetClientPos(&gX, &gY, &gWidth, &gHeight, Hwnd)
    WinSetRegion(Format("0-0 w{1} h{2} r20-20", gWidth, gHeight), Hwnd)
}



 ; ===== Main =====



RShift::
{
    If WinActive("Rest Main")
    {
        RestMain.Hide()
        RestGuide.Hide()
        RestSettings.Hide()
        Credits.Hide()
    }
    else
        RestMain.Show()
}

RestMain.Show("w500 h500")
RestMain.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")
RestMain.BackColor := "141414"
RestMain.SetFont(, "Verdana")

RoundCorners(RestMain.Hwnd)



RestMain.SetFont("s55 q5 w500")
RestMain.Add
(
    "Text", "cA5C9FF x0", 
    " Rest"
)

RestMain.SetFont("s8 w400 q5")
RestMain.Add("Text", "cWhite x33 y95", "[RSHIFT+C] Credits")

RestMain.SetFont("s10 w200 q5")
RestMain.Add
(
    "Text", "cWhite x20",
    "
        This AutoHotKey Script fixes the sniper spread
       nerf by automatically quick-scoping.

       This is NOT a cheat or an exploit. It simply autimates quick-scoping 
       by sending artificial mouse inputs to your device. This script does
       not touch the memory of Roblox by any means. This script is fully 
       compliant with the Roblox TOS, and War Tycoon Rules.
    "
)
RestMain.SetFont("s10 w100 q5")
RestMain.Add
(
    "Text", "cGray",
    "
          As of now, this script has been released to the public.
        2.3.0 is the final version of this script, and will no
        longer be updated. The GitHub repository will be archived.
       
        This Macro is under UNLICENSE. Meaning you may do whatever
        you'd like with it.
    "
)

RestMain.SetFont("s12 w400 q5")
RestMain.Add
(
    "Link", "c292929 x177 y430",
    '
    <a href="https://github.com/MythicRest/rest-sniperfix">GitHub</a>   |   <a href="https://github.com/MythicRest/rest-sniperfix/blob/main/Rest_2.2.1.ahk">Source</a>
    '
)

; ===== Keys =====



RestMain.SetFont("s8 w400 q5")
RestMain.Add
(
    "Text", "cA5C9FF x125 y480", 
    "
    [RSHIFT] Toggle Gui    /  [RSHIFT+ESC] Exit 
    [RSHIFT+1] Guide      /   [RSHIFT+2] Settings
    "
)

RestMain.SetFont("s10 w100 q5")
RestGuide.Add
(
    "Text","cWhite x75 y500",
    "2.3.0"
)



; ===== Close =====



RShift & Esc::
{
    RestMain.Show()


RestClose.Show("Center y820 w500 h30")
RestClose.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")
RestClose.BackColor := "141414"
RestClose.SetFont(, "Verdana")

RoundCorners(RestClose.Hwnd)
    
    RestClose.SetFont("s20 w400 q5")
    RestClose.Add
(
    "Text", "cA5C9FF x165 y17", "Script Closing"
)
Sleep 650
ExitApp
}



; ===== Guide =====



RShift & 1::
{
    If WinActive("Rest Guide")
        {
            RestGuide.Hide()
            return
        }
        else
            RestMain.Show()
            RestGuide.Show()
{
RestGuide.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")
RestGuide.BackColor := "141414"
RestGuide.SetFont(, "Verdana")
RestGuide.Show("Center x1250 w300 h500")

RoundCorners(RestGuide.Hwnd)
}
}

RestGuide.SetFont("s30 q5")
RestGuide.Add
(
    "Text", "cA5C9FF x30 y30",
    "Guide"
)
RestGuide.SetFont("s10 w100 q5")
RestGuide.Add
(
"Text", "cWhite",
"   Disclaimer: to use any other weapon
that isn't a sniper, you need to shoot
with your middle mouse button. There
is no way around this.
    
You also have to have a mouse that has
editable mouse buttons. If you don't,
you can't use this script.

Now, to set up it up; Change your MIDDLE
MOUSE BUTTON bind, to LEFT CLICK.
Then, Change your LEFT MOUSE
BUTTON bind to F6.

If done correctly, shoot your sniper
with your left mouse button, and it should
automatically quick-scope.
"
)

RestGuide.Add
(
    "Link", "cWhite x30 y370",
    'For a visual explanation, <a href="https://imgur.com/a/BCKsMFU">Click Here</a>'
)

; ===== Settings =====



RShift & 2::
{
    If WinActive("Rest Settings")
        {
            RestSettings.Hide()
            return
        }
        else
            RestMain.Show()
            RestSettings.Show()
{
RestSettings.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")
RestSettings.BackColor := "141414"
RestSettings.SetFont(, "Verdana")
RestSettings.Show("Center y150 w300 h100")

RoundCorners(RestSettings.Hwnd)
}
}

RestSettings.SetFont("s12 w100 q5")
RestSettings.Add
(
"Text", "cWhite",
"Change MS"
)

Msdelay := RestSettings.Add("Edit", "Number x15 y35 r1 vMyEdit w40 h5")
Msdelay.Value := 10

; ===== Credits =====



RShift & C::
{
    If WinActive("Rest Credits")
        {
            Credits.Hide()
            return
        }
        else
            RestMain.Show()
            Credits.Show()
{
Credits.Opt("-MAXIMIZEBOX -Caption AlwaysOnTop")
Credits.BackColor := "141414"
Credits.SetFont(, "Consolas")
Credits.Show("Center x250 w350 h140")

RoundCorners(Credits.Hwnd)
}
}

Credits.SetFont("s5 w400 q5")
Credits.Add
(
    "Text", "cffa5e1 x30 y30",
    "
░▒▓███████▓▒░  ░▒▓████████▓▒░  ░▒▓███████▓▒░ ░▒▓████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░         ░▒▓█▓▒░               ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░         ░▒▓█▓▒░               ░▒▓█▓▒░     
░▒▓███████▓▒░  ░▒▓██████▓▒░    ░▒▓██████▓▒░        ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░                 ░▒▓█▓▒░       ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░                 ░▒▓█▓▒░       ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓████████▓▒░ ░▒▓███████▓▒░       ░▒▓█▓▒░     
                                                          
    "
)
Credits.SetFont("s10 w100 q5")
Credits.Add
(
    "Text", "cffa5e1 x40 y100",
    "〆 mythicihas"
)
Credits.SetFont("s7")
Credits.Add
(
    "Text", "cffa5e1 x280 y100",
    "owo"
)



; ===== Macro =====



F6::
{
sleeptime := Msdelay.Value

SendInput "{RButton}"
Sleep sleeptime
SendInput "{LButton}"
Sleep sleeptime
SendInput "{RButton}"
}