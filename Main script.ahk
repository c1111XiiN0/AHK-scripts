#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
<^>!>

#singleInstance Force

#MaxHotkeysPerInterval 110

#IfWinActive ahk_class Respawn001
!f4::tooltip, fucking ragequiter
return


#IfWinActive ahk_class Chrome_WidgetWin_1
^+right::send, ^{tab}
^+left::send, ^+{tab}
return

#IfWinActive ahk_class gdkWindowToplevel
^+right::send, ^+{tab}
^+left::send, ^{tab}
return

;#IfWinExist AHK_Class Progman
;^+n::
;tooltip, Got em
;send, ^+n
;return

#IfWinActive Verlauf - Google Chrome
Numpad9::send, {up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}

#IfWinActive AHK_class Chrome_WidgetWin_1
^+h::
	send, {tab 3} 
	sleep 400
	send, {space}
	sleep 750
	send, {tab 3} {space}
	sleep 450
	send, {tab 2} {space}
	sleep 450
	send, {tab 3} {space}
	sleep 450
	send, {tab 5} {space}
	sleep 500
	send, ^t
return


#IfWinActive AHK_class Chrome_WidgetWin_1
^enter::
	send, ^+{left 50}
	sleep 100
	send, ^c
	sleep 250
	send, {enter}
	sleep 1600
	send, {tab 4}
	sleep 500
	send, {space}
	sleep 1500
	send, {tab 3} {space}
	sleep 450
	send, {tab 2} {space}
	sleep 450
	send, {tab 3} {space}
	sleep 450
	send, {tab 5} {space}
	sleep 500
	send, ^t
	sleep 100
	send, ^+{tab}
	sleep 250
	send, ^w
	sleep 100
	send, ^v 
	sleep 100
	send, {enter}
return




;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;AHK Thingies for ma Graphic Tablet (start)
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#IfWinActive ahk_class gdkWindowToplevel
left::send, [
right::send, ]
return

#IfWinActive ahk_class gdkWindowToplevel
^+m::
send, ^x
send, ^v
send, m
return

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;AHK Thingies for ma Graphic Tablet (end)
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#IfWinExist ahk_class Progman
>+WheelUp::send, {wheelup 25}

#IfWinExist ahk_class Progman
>+WheelDown::send, {wheeldown 25}

;#IfWinActive ahk_class Notepad++
;^F6::MouseMove, 69, 69

;#IfWinExist ahk_class Progman
;^+d::run, https://www.youtube.com/watch?v=BhkRSCos4uA

#IfWinExist ahk_class Progman
Pause::send, !{f4}
Break::send, !{f4}
return


#IfWinExist ahk_class Progman
>^>+!F1::
IfWinNotActive, ahk_exe chrome.exe
	winactivate, ahk_exe chrome.exe
GroupAdd, Chrome, ahk_exe chrome.exe
If winActive("ahk_exe chrome.exe")
	GroupActivate, Chrome, r
else
	winactivate ahk_exe chrome.exe
return

#IfWinExist ahk_class Progman
>^>+!F2::
IfWinNotActive ("ahk_class gdkWindowToplevel")
	Winactivate ahk_class gdkWindowToplevel
else
	send, ^{tab}
return


#IfwinActive AHK_Class Chrome_WidgetWin_1
^m::
send, !{enter}
send, ^{tab}
sleep 250
send, {tab 3}
return


#IfWinExist ahk_class Progman
RWin::
	send, ^!{tab}
return






;#IfwinActive AHK_Class Chrome_WidgetWin_1
;!space::
;	send, {alt down}
;	send, {alt up}
;	send, +{tab}
;	send, +{tab}
;	sleep 100
;	send, {space}
;	sleep 250
;	send, {tab}
;	send, {tab}
;	sleep 100
;	send, {space}
;return

;numpad3::send, ^w


