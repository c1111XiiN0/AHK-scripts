#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleInstance Force

#MaxHotkeysPerInterval 110																															;This is to increase the max interval For hotkeys.

#IfWinActive ahk_class Respawn001																													;This is to keep me from ragequitting from Apex Legends.
!f4::tooltip, fucking ragequiter																													;
return																																				;


#IfWinActive ahk_class Chrome_WidgetWin_1																											;This is to remap the thumb buttons to skip through Chrome Tabs.
^+F1::send, ^{tab}																																	;
^+F2::send, ^+{tab}																																	;
return																																				;	

#IfWinActive ahk_class gdkWindowToplevel																											;This is to remap the thumb buttons to skip through Gimp layers.
^+F1::send, ^+{tab}																																	;
^+F2::send, ^{tab}																																	;
return																																				;

;#IfWinExist AHK_Class Progman																														;This is just for joke.
;^+n::																																				;
;tooltip, Got em																																	;(deez nuts)
;send, ^+n																																			;(btw ctrl + shift + n is the hotkey for opening a incognitio Window in Chrome.)
;return																																				;

#IfWinActive AHK_class Chrome_WidgetWin_1																											;This is to do something idk.
Numpad9::send, {up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}			;

#IfWinActive AHK_class Chrome_WidgetWin_1																											;
^+g::send, {tab 4}{space}  																															;This is to skip through the Google Cookie config.
^+h::send, {tab 3}{space}  {tab 2}{space}  {tab 2}{space}  {tab}{space}  {tab 9}{space}  {tab 18}{space}											;
return																																				;(It's still in progress cause i made a mistake by counting the times that i have to press TAB.)

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;AHK Thingies for ma Graphic Tablet (start)
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#IfWinActive ahk_class gdkWindowToplevel																											;This is to increase/decrease the brush size in Gimp.
left::send, [																																		;
right::send, ]																																		;
return																																				;

#IfWinActive ahk_class gdkWindowToplevel																											;This is to move selectet things in Gimp.
^+m::																																				;Idk why you can't move selectet things.
send, ^x																																			;
send, ^v																																			;
send, m																																				;
return																																				;

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;AHK Thingies for ma Graphic Tablet (end)
;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#IfWinExist ahk_class Progman																														;This is a Scroll acceleration upwards.
>+WheelUp::send, {wheelup 25}																														;

#IfWinExist ahk_class Progman																														;This is a Scroll acceleration downwards.
>+WheelDown::send, {wheeldown 25}																													;

;#IfWinActive ahk_class Notepad++																													;This is a try to move my mouse with hotkeys.
;^F6::MouseMove, 69, 69																																;(hehe 69)

;#IfWinExist ahk_class Progman																														;This is a try to run websites.
;^+d::run, https://www.youtube.com/watch?v=BhkRSCos4uA																								;(Random video that i watched while trying this.)

#IfWinExist ahk_class Progman																														;This is to remap the PAUSE/BREAK button to ALT + F4.
Pause::send, !{f4}																																	;(Both buttons are there cause it sometimes randomly changes between PAUSE/BREAK)
Break::send, !{f4}																																	;
return																																				;


#IfWinExist ahk_class Progman																														;This is a application switcher for Chrome.
>^>+!F1::																																			;(It's also for skiping through all open windows.)
IfWinNotActive, ahk_exe chrome.exe																													;
	winactivate, ahk_exe chrome.exe																													;
GroupAdd, Chrome, ahk_exe chrome.exe																												;
If winActive("ahk_exe chrome.exe")																													;
	GroupActivate, Chrome, r																														;
else																																				;
	winactivate ahk_exe chrome.exe																													;
return																																				;


#IfWinExist ahk_class Progman																														;This is a application switcher for Gimp.
>^>+!F2::																																			;(It's also for skiping through the layers in gimp (downwards).)
IfWinNotActive ("ahk_class gdkWindowToplevel")																										;
	Winactivate ahk_class gdkWindowToplevel																											;
else																																				;
	send, ^+F2																																		;
return																																				;

#IfwinActive AHK_Class Chrome_WidgetWin_1																											;This is to open results form the Chrome searchbar in a new tab with a Hotkey
^m::																																				;
send, !{enter}																																		;
send, ^{tab}																																		;(This line is there cause chrome switches to the new tab and i don't want that.)
return																																				;













;Other things:
;
;#IfWinExist ahk_class Progman is there cause some funktions don't funktion without a #IfwinActive/#IfWinExist.
;Progman is the desktop, and the desktop is always running





































































































;end