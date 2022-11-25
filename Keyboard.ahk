; ------------------------------
; K55 shortcut
; ------------------------------


+f20::
    IfWinActive, ahk_exe Code.exe
    SendRaw, = {() = 
Sleep, 50
    SendRaw, > (
Return

+f19::
    IfWinActive, ahk_exe Code.exe
    SendRaw, = () =
Sleep, 50
    SendRaw, > {
    
Return