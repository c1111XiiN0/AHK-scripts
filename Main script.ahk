#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
<^>!>

#singleInstance Force

#MaxHotkeysPerInterval 2000



#IfWinActive ahk_class Respawn001
!f4::
	tooltip, fucking ragequiter
return

#IfWinActive ahk_class Chrome_WidgetWin_1
^+2::	send, ^{tab}
^+1::	send, ^+{tab}
sleep 50
return



#IfWinActive ahk_class gdkWindowToplevel
^+2::	send, ^+{tab}
^+1::	send, ^{tab}
return



#IfWinExist ahk_class Progman
+f2::
	IfWinNotActive, ahk_exe chrome.exe
		winactivate, ahk_exe chrome.exe
	send, {space}
	sleep 100
	winactivate, ahk_exe Taskmgr.exe
return

#IfWinExist ahk_class Progman
^+f2::
	IfWinNotActive, ahk_exe chrome.exe
		winactivate, ahk_exe chrome.exe
	sleep 100
	send, {esc}
	sleep 100
	send, {space}
	sleep 100
	winactivate, ahk_exe Taskmgr.exe
return

#IfWinActive History - Google Chrome
Numpad9::
	send, {up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}
return

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

#IfwinActive New Tab - Google Chrome
^enter::
	send, ^{right 50}
	send, ^+{left 50}
	sleep 100
	send, ^c
	sleep 250
	send, {enter}
	sleep 1600
	send, {tab 4}
;	sleep 500
	send, {space}
;	sleep 1500
;	send, {tab 3} 
;	send, {space}
;	sleep 450
;	send, {tab 2} 
;	send, {space}
;	sleep 450
;	send, {tab 3} 
;	send, {space}
;	sleep 450
;	send, {tab 5} 
;	send, {space}
;	sleep 500
;	send, ^t
;	sleep 250
;	send, ^v
;	sleep 100
;	send, {enter}
;	sleep 100
;	send, <^+{tab}
;	sleep 100
;	send, ^w
return




;------------------------------------------------------------------------------------------------------------------
;AHK functiones for my Graphic Tablet (start)
;------------------------------------------------------------------------------------------------------------------

#IfWinActive ahk_class gdkWindowToplevel
	WheelDown::send, {[ 10}
	WheelUp::send, {] 10}
	PgDn::send, {[ 10}
	PgUp::send, {] 10}
return

#IfWinActive ahk_class gdkWindowToplevel
^+m::
	send, ^x
	send, ^v
	send, m
return

;------------------------------------------------------------------------------------------------------------------
;AHK functiones for my Graphic Tablet (end)
;------------------------------------------------------------------------------------------------------------------




#IfWinExist ahk_class Progman
	>+WheelUp::send, {wheelup 25}
return

#IfWinExist ahk_class Progman
	>+WheelDown::send, {wheeldown 25}
return

;#IfWinActive ahk_class Notepad++
;	^F6::MouseMove, 69, 69
;return

;#IfWinExist ahk_class Progman
;	^+d::run, https://www.youtube.com/watch?v=BhkRSCos4uA
;return

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
	;send, +{tab}
return


;#IfWinExist ahk_class Progman
;RWin::
;	send, #{l}
;return


#IfWinExist ahk_class Progman
^Media_Play_Pause::
	send, {Media_Stop}
return


#IfWinExist ahk_class Progman
^Volume_Mute::
	run, "D:\Change sound card settings - Shortcut.lnk"
return


;#IfWinExist ahk_class Progman	
;^Volume_Up::
;	run, "D:\Adjust system volume - Shortcut.lnk"
;return


;#IfWinExist ahk_class Progman
;^Volume_Down::
;	run, "D:\Adjust system volume - Shortcut.lnk"
;return


#IfWinExist ahk_class Progman
F9::
	IfWinNotActive, ahk_class ConsoleWindowClass
		winactivate, ahk_class ConsoleWindowClass
	GroupAdd, CMD, ahk_class ConsoleWindowClass
	If winActive("ahk_class ConsoleWindowClass")
		GroupActivate, cmd, r
	else
		run, "C:\Users\maxme\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"
return


;^+LButton::
;	send, {LButton 100}
;return

#MaxThreadsPerHotkey 3

^+!LButton::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click
	Sleep 83
}
return


!space::
	send, {LButton}
return

#IfWinExist ahk_class Progman
^#v::
	run, "C:\Users\maxme\Desktop\clipboard.txt"
return


::dz::
send, ⌀
return

;F8::
;	SoundSet, 1, Microphone, Mute
;return

#IfWinActive ahk_class TFullScreenWindow
XButton2:: e
XButton1:: e
return



;------------------------------------------------------------------------------------------------------------------;
;Debuger
Home::
	Reload
return
;------------------------------------------------------------------------------------------------------------------;
















