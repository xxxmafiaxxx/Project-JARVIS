#include <Date.au3>
#include <Media.au3>
#include <Utility.au3>
#include <Constants.au3>
#include <Clipboard.au3>
#include <Misc.au3>

#cs ----------------------------------------------------------------------------

 Author:         Sean Kinahan
 Start Date:     7/2/2015

 Script Function:
	Base functionality of VI Jarvis.

#ce ----------------------------------------------------------------------------

HotKeySet("^{F1}", "intro")
HotKeySet("^{F2}", "what_can_i_do")
HotKeySet("^{F3}", "netflix")
HotKeySet("^{F4}", "shut_down")
HotKeySet("^{F6}", "cast_netflix_specific")
HotKeySet("^{F8}", "start_plex")
HotKeySet("^{F7}", "stop_casting")
HotKeySet("^{F9}", "cast_plex")
HotKeySet("^{F10}", "cast_netflix")
HotKeySet("^{F11}", "speak_time")
HotKeySet("^{F12}", "quit_plex")
HotKeySet("^~", "update_plex")
HotKeySet("^!0", "recompile")

HotKeySet("^!1", "eg_XboxToggle")
HotKeySet("^!2", "eg_ToggleBothScreens")
HotKeySet("^!4", "swagbuckSearch")
HotKeySet("^!5", "eg_ToggleScreen1")
HotKeySet("^!3", "eg_ToggleScreen2")
HotKeySet("^!6", "eg_PS4Screen1")
HotKeySet("^!7", "eg_XboxScreen1")
HotKeySet("^!8", "eg_CCScreen1")
HotKeySet("^!9", "eg_PCScreen1")
HotKeySet("^+1", "eg_PS4Screen2")
HotKeySet("^+2", "eg_XboxScreen2")
HotKeySet("^+3", "eg_CCScreen2")
HotKeySet("^+4", "eg_PCScreen2")
HotKeySet("^+6", "start_VPN")
HotKeySet("^+7", "eg_Reset")

Global $Working_Dir = "C:\Users\Sean\Documents\Side Projects\JARVIS - (v. 1.1)"
Global $Sound_Dir = $Working_Dir & "\Speech Files\"
Global $Number_Dir = $Sound_Dir & "\Numbers\"

Global $Xbox_On = False
Global $Emerson_On = False
Global $Panasonic_On = False

Func _EventGhost($event)
    ShellExecute("C:\Program Files (x86)\EventGhost\EventGhost.exe", $event)
 EndFunc

 Func start_VPN()
   Sleep(100)
   MouseClick("primary", 206, 1031, 1, 1)
   Sleep(30000)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(400)
   MouseClick("primary", 266, 1031, 1, 1)
   Sleep(7000)
   MouseClick("primary", 80, 1030, 1, 1)
   WinWaitActive("Google - Google Chrome","", 15)
   If Not WinActive("Google - Google Chrome") Then
	  Sleep(300)
	  Send("^t")
	  Sleep(500)
   EndIf
   Send("^+n")
   Sleep(100)
   resetMods()
   Sleep(500)
   Send("!d")
   Sleep(300)
   Send("www.thepiratebay.se")
   Sleep(200)
   Send("{ENTER}")
   Sleep(300)
EndFunc

Func eg_Command($cmd)
    Sleep(100)
    resetMods()
    Sleep(200)
    affirmative_response()
	Sleep(200)
    _EventGhost("-event eg." & $cmd)
	resetMods()
 EndFunc

 Func eg_XboxScreen1()
   eg_Command("XboxScreen1")
 EndFunc

 Func eg_CCScreen1()
   eg_Command("CCScreen1")
 EndFunc

Func eg_PCScreen1()
   eg_Command("PCScreen1")
 EndFunc

 Func eg_PS4Screen1()
   eg_Command("PS4Screen1")
EndFunc

Func eg_Reset()
   eg_Command("reset")
EndFunc

Func eg_XboxScreen2()
   Sleep(100)
	If $Emerson_On Then
	  eg_Command("XboxScreen2")
	  Sleep(100)
	  resetMods()
   Else
	  eg_Command("EmersonOn")
	  Sleep(5000)
	  _EventGhost("-event eg.XboxScreen2")
	  Sleep(100)
	  resetMods()
   EndIf
   $Emerson_On = True
 EndFunc

Func eg_CCScreen2()
	Sleep(100)
	If $Emerson_On Then
	  eg_Command("CCScreen2")
	  Sleep(100)
	  resetMods()
   Else
	  eg_Command("EmersonOn")
	  Sleep(5000)
	  _EventGhost("-event eg.CCScreen2")
	  Sleep(100)
	  resetMods()
   EndIf
   $Emerson_On = True
EndFunc

Func eg_PCScreen2()
   Sleep(100)
	If $Emerson_On Then
	  eg_Command("PCScreen2")
	  Sleep(100)
	  resetMods()
   Else
	  eg_Command("EmersonOn")
	  Sleep(5000)
	  _EventGhost("-event eg.PCScreen2")
	  Sleep(100)
	  resetMods()
   EndIf
   $Emerson_On = True
 EndFunc

 Func eg_PS4Screen2()
    Sleep(100)
	If $Emerson_On Then
	  eg_Command("PS4Screen2")
	  Sleep(100)
	  resetMods()
   Else
	  eg_Command("EmersonOn")
	  Sleep(5000)
	  _EventGhost("-event eg.PS4Screen2")
	  Sleep(100)
	  resetMods()
   EndIf
   $Emerson_On = True
 EndFunc

 Func eg_ToggleScreen2()
	Sleep(100)
	If $Emerson_On Then
	  eg_Command("EmersonOn")
	  $Emerson_On = False
	  Sleep(100)
	  resetMods()
   Else
	  eg_Command("EmersonOn")
	  Sleep(5000)
	  _EventGhost("-event eg.CCScreen2")
	  Sleep(100)
	  resetMods()
	  $Emerson_On = True
   EndIf
EndFunc

Func eg_ToggleScreen1()
   eg_Command("ToggleScreen1")
EndFunc

Func eg_XboxToggle()
   $Xbox_On = Not $Xbox_On
    eg_Command("XboxToggle")
EndFunc

Func eg_ToggleBothScreens()
    eg_Command("HomeTheaterToggle")
EndFunc

JARVIS()

Func JARVIS()
	WinMinimizeAll()
    Sleep(100)
	greet()
    HotKeySet("{ESC}","_Exit")
    Wait()
 EndFunc