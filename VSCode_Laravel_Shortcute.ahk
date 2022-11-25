; Version 1 this is about Laravel shortcut Hotkeys and HotStrings
;---------------------------------------------------------------

; Laravel hot string
:*:lrart::php artisan
:*:lrser::php artisan serve
:*:lrst::php artisan make:status
:*:lreq::php artisan make:request -
:*:lrmid::php artisan make:middleware -
:*:lrmod::php artisan make:model -
:*:lrcon::php artisan make:controller -
:*:lrmg1::php artisan migrate
:*:lrmg2::php artisan make:migration create_
:*:lrrf::php artisan migrate:refresh
:*:lrcom::composer create-project laravel/laravel -
:*:lrcop::composer create-project --prefer-dist laravel/laravel test
:*:lrui::composer require laravel/ui
:*:lrau::php artisan ui:auth


!v::
SendRaw, dd($
send, ^v
SendRaw,)
Return

^f17::
IfWinActive, ahk_exe Code.exe
send, !x
IfWinActive, ahk_exe chrome.exe
{send, ^c
Sleep, 50
MouseMove, 20, 391, 1
Click
send, ^{Home}
Sleep, 50
MouseMove, 257, 355, 2
Click
Sleep, 50
send,^{End}
Sleep, 50
Send, {Enter}
Sleep, 50
send,^v
}
return

f17::
IfWinActive, ahk_exe Code.exe
send, ^b
IfWinActive, ahk_exe chrome.exe
{send, ^c
Sleep, 50
send, ^{Tab}
Sleep, 50
MouseMove, 20, 391, 1
Click
send, ^{Home}
Sleep, 50
MouseMove, 257, 355, 2
Click
Sleep, 50
send,^a
Sleep, 50
send,^v
Sleep, 50
send, {Enter}
}
return

^Numpad1:: ;View

IfWinActive, ahk_exe Code.exe
{MouseMove, 1851, 953, 2
Click
Sleep, 50
send,^+e
Sleep, 150
send, !x
Sleep, 150
SendRaw, resources
send, {Enter}
Sleep, 150
send, {down 3}
send, {Enter}
}
Return

^Numpad2:: ;Controler

IfWinActive, ahk_exe Code.exe
{MouseMove, 1851, 953, 2
Click
Sleep, 50
send,^+e
Sleep, 150
send, !x
Sleep, 150
SendRaw, app
send, {Enter}
Sleep, 150
send, {down 3}
send, {Enter}
send, {down}
send, {Enter}
}
Return

^Numpad3::  ;Modil
IfWinActive, ahk_exe Code.exe
{MouseMove, 1851, 953, 2
Click
Sleep, 50
send,^+e
Sleep, 150
send, !x
Sleep, 150
SendRaw, app
send, {Enter}
Sleep, 150
send, {down 4}
send, {Enter}
}
Return

^Numpad4::  ;Route - Web
IfWinActive, ahk_exe Code.exe
{MouseMove, 1851, 953, 2
Click
Sleep, 50
send,^+e
Sleep, 150
send, !x
Sleep, 150
SendRaw, routes
send, {Enter}
Sleep, 150
send, {down 4}
send, {Enter}
}
Return

^Numpad5::  ;Database
IfWinActive, ahk_exe Code.exe
{MouseMove, 1851, 953, 2
Click
Sleep, 50
send,^+e
Sleep, 150
send, !x
Sleep, 150
SendRaw, database
send, {Enter}
Sleep, 150
send, {down 2}
send, {Enter}
}
Return



