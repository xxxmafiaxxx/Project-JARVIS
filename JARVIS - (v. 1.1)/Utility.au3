#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Sean Kinahan

 Script Function:
	Utility functions for VI Jarvis

#ce ----------------------------------------------------------------------------

Func gen_Min_Audio_Files()
   For $i = 0 To 59
	  Sleep(5000)
	  Send("{CTRLDOWN}")
	  Sleep(200)
	  Send("n")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(100)
	  Send($i)
	  Sleep(100)
	  Send("{CTRLDOWN}")
	  Sleep(200)
	  Send("w")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(300)
	  Send($i)
	  Send("{ENTER}")
	  Sleep(700)
   Next
EndFunc

Func launchChrome()
   Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", "", @SW_SHOWMAXIMIZED)
   Sleep(6000)
   WinWaitActive("Google - Google Chrome", "", 10)
   If Not WinActive("Google - Google Chrome") Then
	  Sleep(300)
	  Send("{CTRLDOWN}")
	  Sleep(100)
	  Send("t")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(100)
   EndIf
   Sleep(300)
EndFunc

Func playSound($arg)
   SoundPlay($Sound_Dir & $arg & ".wav", 1)
EndFunc

Func ClipSet($iData)
   _ClipBoard_SetData($iData)
EndFunc

Func muteMic()
   Sleep(100)
   Send("{NUMPADDIV}")
   Sleep(100)
EndFunc

Func _Exit()
   Exit
EndFunc

Func copy()
   Sleep(100)
   Send("{CTRLDOWN}")
   Sleep(100)
   Send("c")
   Sleep(100)
   Send("{CTRLUP}")
   Sleep(100)
EndFunc

Func paste()
   Sleep(100)
   Send("{CTRLDOWN}")
   Sleep(100)
   Send("v")
   Sleep(100)
   Send("{CTRLUP}")
   Sleep(100)
EndFunc

Func get_Time()
    Sleep(100)
    Send("{CTRLUP}")
    Local $tLocal, $tSystem, $tLocalString, $t_Array
    ; Convert system time to local time
    $tSystem = _Date_Time_GetSystemTime()
    $tLocal = _Date_Time_SystemTimeToTzSpecificLocalTime(DllStructGetPtr($tSystem))
    $tLocalString = _Date_Time_SystemTimeToDateTimeStr($tLocal)
	$t_Array = StringRegExp($tLocalString,'([0-9]{2})/([0-9]{2})/([0-9]{4}) ([0-9]{2}):([0-9]{2}):([0-9]{2})',1)
	If @error == 0 Then
	  Return $t_Array
   EndIf
EndFunc	;==> unused regex example (StringRegExp)

Func ResetMods()
   Sleep(100)
   Send("{SHIFTUP}")
   Sleep(100)
   Send("{CTRLUP}")
   Sleep(100)
   Send("{ALTUP}")
   Sleep(100)
   Send("{LWINUP}")
   Sleep(100)
   Send("{RWINUP}")
   Sleep(100)
EndFunc

Func Wait()
   While 1
	  Sleep(100)
   WEnd
EndFunc

Func SEL_DEMO()
   affirmative_response()
   Sleep(200)
   spotify()
   Sleep(5800)
   Send("^w")
   netflix()
   Sleep(5800)
   Send("^w")
   pandora()
   Sleep(5800)
   Send("^w")
   playSound("taunt")
EndFunc