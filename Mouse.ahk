;------------------------------ Profile 1 --------------------------------------
;-------------------------------------------------------------------------------
;-----------------------------  UP LEFT  ---------------------------------------
;-------------------------------------------------------------------------------
; <<< ^F13 : Chrome >>>|<<<  #F13 :   >>>|<<< +F13 :Text Do >>>|<<< !F13 :    >>>

f13:: ; Mouse Right up 

    IfWinNotExist, ahk_exe chrome.exe
        run, https://github.com/AbdullaNsour?tab=repositories
    IfWinActive, ahk_exe chrome.exe
        send, ^{Tab}
    else
        WinActivate, ahk_exe chrome.exe
return

^f13::
    GroupAdd, ChromeGroup, ahk_exe chrome.exe
    If WinActive("ahk_class Chrome_WidgetWin_1")
        GroupActivate, ChromeGroup, r
    else
        WinActivate ahk_exe chrome.exe
return

+f13::
    IfWinActive, ahk_exe chrome.exe
    send, ^+{Tab}
Return

;-------------------------------------------------------------------------------
;-----------------------------  DOWN LEFT  -------------------------------------
;-------------------------------------------------------------------------------
; <<< ^F14 : Chrome >>>|<<<  #F14 :   >>>|<<< +F14 :Text Do >>>|<<< !F14 :    >>>

f14::
send, !{tab}
Return


^f14:: 
    IfWinNotExist,  ahk_exe Code.exe
        ; run, "C:\xampp\htdocs\laravel\laravel_dashboard\vite.config.js"
        run, "C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Code.lnk"
    IfWinActive, ahk_exe ahk_exe Code.exe
        send, ^{Tab}
    else
        WinActivate,  ahk_exe Code.exe

return

+f14::
    GroupAdd, ChromeGroup,  ahk_exe Code.exe
    If WinActive("ahk_exe Code.exe")
        GroupActivate, ChromeGroup, r
    else
        WinActivate  ahk_exe Code.exe
Return

#f14::
    send, +{f10}
    ;send,
Return

;-------------------------------------------------------------------------------
;-----------------------------   UP Right  -------------------------------------
;-------------------------------------------------------------------------------
; <<<1> ^F15 : AHK-F >>>|<<<2>  #F15 :    >>>|<<<3> +F15 : Project-F  >>>|<<<4> !F15 : htdocs-F   >>>

F15:: ;Active Explorer and Switch between them
    GroupAdd, ExplorerGroup, ahk_class CabinetWClass
    if WinActive("ahk_exe explorer.exe")
        GroupActivate, ExplorerGroup, r
    else 
        WinActivate ahk_class CabinetWClass

return

;Open the AHK control Shortcut
^f15::
    ; run,"C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"      ;lenovo
    run,"C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

;Open the file project
+f15::
    ; run,"C:\xampp\htdocs\laravel"  ;lenovo
    run,"C:\xampp\htdocs\masterpiece"
return

;Open the file htdocs
!f15::
    run,"C:\xampp\htdocs"
return

;Open the file htdocs
#f15::
    ; run,"D:\AHK_shortcut"   ;lenovo
     run,"C:\AHK\AHK_shortcut"   ;lenovo
return

;-------------------------------------------------------------------------------
;-----------------------------  DOWN Right  ------------------------------------
;-------------------------------------------------------------------------------
; <<<1> ^F15 : Discord >>>|<<<2>  #F15 :  -  >>>|<<<3> +F15 : Word  >>>|<<<4> !F15 :  -   >>>


^F16:: ; Mouse left Down
    WinActivate, ahk_exe Zoom.exe
return

f16:: ; Discord
    IfWinNotExist, ahk_exe Discord.exe
        ; run, "C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
        run, "C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    IfWinActive, ahk_exe Discord.exe
        send, ^{Tab}
    else
        WinActivate, ahk_exe Discord.exe
Return

+f16:: ;Word 
    GroupAdd, wordGroup, ahk_class OpusApp
    If WinActive("ahk_class OpusApp")
        GroupActivate, wordGroup, r
    else
        WinActivate ahk_class OpusApp
return
