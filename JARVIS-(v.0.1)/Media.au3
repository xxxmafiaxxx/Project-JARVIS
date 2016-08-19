#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

 Func recompile()
    affirmative_response()
	WinMinimizeAll()
	Sleep(200)
	Run("C:\Users\Sean\Desktop\Oracle.exe")
	Sleep(200)
	Exit
 EndFunc

Func greet()
   Sleep(300)
   Switch @HOUR
    Case 6 To 11
        SoundPlay($Sound_Dir & "Good morning sir.wav",1)
    Case 12 To 17
        SoundPlay($Sound_Dir & "Good afternoon sir.wav",1)
    Case 18 To 21
        SoundPlay($Sound_Dir & "Good evening sir.wav",1)
    Case Else
        SoundPlay($Sound_Dir & "getting late.wav",1)
   EndSwitch
   Sleep(300)
   speak_time()
EndFunc

Func speak_time()
   Sleep(100)
   Local $_hour, $_minute
   Local $rand_Num = Random(0,1,1)
   Sleep(100)
   If $rand_Num = 0 Then
	  SoundPlay($Sound_Dir & "the time is.wav",1)
	  Sleep(100)
   Else
	  SoundPlay($Sound_Dir & "it is currently.wav",1)
	  Sleep(100)
   EndIf
   Switch @HOUR
   Case 00 To 11
	  $_hour = @HOUR & ".wav"
	  If (@HOUR < 10) Then
		 $_hour = StringTrimLeft($_hour,1)
	  EndIf
	  $_minute = @MIN & ".wav"
	  SoundPlay($Number_Dir & $_hour,1)
	  Switch @MIN
	  Case 00
		 ;do nothing
	  Case Else
		 SoundPlay($Number_Dir & $_minute,1)
	  EndSwitch
	  SoundPlay($Sound_Dir & "AM.wav",1)
   Case 12
	  $_hour = "12.wav"
	  SoundPlay($Number_Dir & $_hour,1)
	  Switch @MIN
	  Case 00
		 ;do nothing
		 SoundPlay($Number_Dir & $_minute,1)
	  Case Else
		 SoundPlay($Number_Dir & $_minute,1)
	  EndSwitch
	  SoundPlay($Sound_Dir & "PM.wav",1)
   Case 13 To 23
	  $_hour = @HOUR - 12 & ".wav"
	  $_minute = @MIN & ".wav"
	  SoundPlay($Number_Dir & $_hour,1)
	  Switch @MIN
	  Case 00
		 ;do nothing
	  Case Else
		 SoundPlay($Number_Dir & $_minute,1)
	  EndSwitch
	  SoundPlay($Sound_Dir & "PM.wav",1)
   EndSwitch
   Sleep(300)
   ;Send("{NUMPADDIV}")
EndFunc

Func Terminate()
   MouseClick("primary", 1576, 1023, 1, 1)
   Sleep(700)
   Send("{UP}")
   Sleep(100)
   Send("{ENTER}")
   Exit
EndFunc

Func intro()
   Sleep(300)
   SoundPlay($Sound_Dir & "Introduction.wav",1)
   Sleep(200)
EndFunc

Func affirmative_response()
   Local $rand_Num = Random(0,3,1)
   Sleep(100)
   If $rand_Num = 0 Then
	  SoundPlay($Sound_Dir & "Yes_sir.wav", 1)
   ElseIf $rand_Num = 1 Then
	  SoundPlay($Sound_Dir & "Right away sir.wav", 1)
   ElseIf $rand_Num = 2 Then
	  SoundPlay($Sound_Dir & "very well.wav", 1)
   ElseIf $rand_Num = 3 Then
	  SoundPlay($Sound_Dir & "Indeed.wav", 1)
   EndIf
   Sleep(100)
EndFunc

Func launching($app)
   SoundPlay($Sound_Dir & "launching" & $app & ".wav", 1)
EndFunc

Func what_can_i_do()
   Sleep(100)
   SoundPlay($Sound_Dir & "Yes_sir.wav",1)
   Sleep(200)
   SoundPlay($Sound_Dir & "What can I do for you.wav", 1)
   Sleep(100)
EndFunc

Func shut_down()
   Sleep(300)
   ;Send("{NUMPADDIV}")
   SoundPlay($Sound_Dir & "Yes_sir.wav",1)
   Sleep(100)
   SoundPlay($Sound_Dir & "Going_offline.wav",1)
   Sleep(300)
   SoundPlay($Sound_Dir & "farewell_excellent_day.wav",1)
   Sleep(200)
   Terminate()
EndFunc

Func netflix()
   Sleep(300)
   ;affirmative_response()
   Sleep(200)
   launching("Netflix")
   launchChrome()
	Send("!d")
	Sleep(250)
    Send("www.netflix.com")
	Sleep(200)
	Send("{ENTER}")
	WinWaitActive("Netflix - Google Chrome", "", 12)
	If Not WinActive("Netflix - Google Chrome") Then
	   WinWaitActive("Netflix - Watch TV Shows Online, Watch Movies Online - Google Chrome","",20)
	   Sleep(2000)
	   MouseClick("primary", 1184, 119, 1, 1)
	   Sleep(7000)
	   MouseClick("primary", 632, 539, 1, 1)
	   Sleep(9000)
	   MouseClick("primary", 411, 353, 1, 1)
	   Sleep(1500)
	Else
	   Sleep(9000)
       MouseClick("primary", 728, 590, 1, 1)
	EndIf
 EndFunc

Func cast_netflix()
   Sleep(300)
   affirmative_response()
   Sleep(300)
   Send("{NUMPADDIV}")
   Sleep(200)
   MouseClick("primary", 96, 1060, 1, 1)
   Sleep(7000)
   If Not WinActive("Google - Google Chrome") Then
	  Sleep(300)
	  Send("{CTRLDOWN}")
	  Sleep(100)
	  Send("t")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(100)
   EndIf
    Send("{LWINDOWN}")
    Sleep(100)
	Send("{UP}")
	Sleep(100)
	Send("{LWINUP}")
    Sleep(100)
	Send("!d")
	Sleep(100)
    Send("www.netflix.com")
	Sleep(200)
	Send("{ENTER}")
	WinWaitActive("Netflix - Google Chrome","", 15)
	If Not WinActive("Netflix - Google Chrome") Then
	   WinWaitActive("Netflix - Watch TV Shows Online, Watch Movies Online - Google Chrome","",20)
	   Sleep(2000)
	   MouseClick("primary", 1829, 155, 1, 1)
	   WinWaitActive("Netflix - Member Login | Sign In To Your Account - Google Chrome")
	   Sleep(7000)
	   MouseClick("primary", 943, 613, 1, 1)
	   Sleep(500)
	   WinWaitActive("Netflix - Google Chrome")
	   Sleep(9000)
	   MouseClick("primary", 728, 590, 1, 1)
	   Sleep(1500)
	   MouseClick("primary", 1775, 42, 1, 1)
	   Sleep(4000)
	   MouseClick("primary", 1516, 118, 1, 1)
	Else
	   Sleep(9000)
       MouseClick("primary", 728, 590, 1, 1)
	   Sleep(1500)
	   MouseClick("primary", 1775, 42, 1, 1)
	   Sleep(4000)
	   MouseClick("primary", 1516, 118, 1, 1)
	EndIf
	Sleep(800)
	MouseClick("primary", 1035, 12, 1, 1)
	Sleep(500)
EndFunc

Func cast_netflix_specific()
   Local $rand_Num = Random(0,1,1)
   Sleep(300)
   affirmative_response()
   Sleep(300)
   Send("{NUMPADDIV}")
   Sleep(200)
   If $rand_Num = 0 Then
	  SoundPlay($Sound_Dir & "excellent choice.wav",0)
   EndIf
   MouseClick("primary", 96, 1060, 1, 1)
   Sleep(7000)
   If Not WinActive("Google - Google Chrome") Then
	  Sleep(300)
	  Send("{CTRLDOWN}")
	  Sleep(100)
	  Send("t")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(100)
   EndIf
    Send("{LWINDOWN}")
    Sleep(100)
	Send("{UP}")
	Sleep(100)
	Send("{LWINUP}")
    Sleep(100)
	Send("!d")
	Sleep(100)
    Send("www.netflix.com")
	Sleep(200)
	Send("{ENTER}")
	WinWaitActive("Netflix - Google Chrome","", 15)
	If Not WinActive("Netflix - Google Chrome") Then
	   WinWaitActive("Netflix - Watch TV Shows Online, Watch Movies Online - Google Chrome","",20)
	   Sleep(2000)
	   MouseClick("primary", 1829, 155, 1, 1)
	   WinWaitActive("Netflix - Member Login | Sign In To Your Account - Google Chrome")
	   Sleep(7000)
	   MouseClick("primary", 943, 613, 1, 1)
	   Sleep(500)
	   WinWaitActive("Netflix - Google Chrome")
	   Sleep(9000)
	   MouseClick("primary", 728, 590, 1, 1)
	   Sleep(1500)
	   MouseClick("primary", 1775, 42, 1, 1)
	   Sleep(4000)
	   MouseClick("primary", 1516, 118, 1, 1)
	Else
	   Sleep(9000)
       MouseClick("primary", 728, 590, 1, 1)
	   Sleep(1500)
	   MouseClick("primary", 1775, 42, 1, 1)
	   Sleep(4000)
	   MouseClick("primary", 1516, 118, 1, 1)
	EndIf
	Sleep(800)
	MouseClick("primary", 1035, 12, 1, 1)
	Sleep(500)
	MouseClick("primary", 1626, 122, 1, 1)
	Sleep(100)
	paste()
	Sleep(300)
	MouseMove(134, 355, 10)
	Sleep(9000)
	MouseClick("primary",134, 355,1,1)
	Sleep(100)
 EndFunc

Func stop_casting()
    affirmative_response()
	Sleep(100)
	Send("{NUMPADDIV}")
    Sleep(200)
	MouseClick("primary", 1775, 42, 1, 1)
	Sleep(1500)
	MouseClick("primary", 1635, 182, 1, 1)
	Sleep(800)
	Send("{NUMPADDIV}")
 EndFunc

Func start_plex()
    affirmative_response()
	Sleep(100)
	Send("{NUMPADDIV}")
	Sleep(100)
    Run("C:\Program Files (x86)\Plex\Plex Media Server\Plex Media Server.exe")
	Sleep(9000)
	MouseClick("secondary",1538, 1032, 1, 1)
    Sleep(300)
	Send("{DOWN}")
	Sleep(100)
	Send("{ENTER}")
	WinWaitActive("Plex - Google Chrome")
 EndFunc

Func quit_plex()
	affirmative_response()
	Sleep(100)
	Send("{NUMPADDIV}")
	Sleep(100)
    Send("{LWINDOWN}")
    Sleep(100)
	Send("d")
	Sleep(100)
	Send("{LWINUP}")
    Sleep(100)
	MouseClick("secondary",1538, 1032, 1, 1)
    Sleep(300)
	Send("{UP}")
	Sleep(100)
	Send("{ENTER}")
	Sleep(100)
	MouseMove(966, 443)
	Sleep(100)
	Send("{NUMPADDIV}")
	Sleep(100)
 EndFunc

Func cast_plex()
    affirmative_response()
	Sleep(100)
	Send("{NUMPADDIV}")
	Sleep(100)
    Send("{LWINDOWN}")
    Sleep(100)
	Send("d")
	Sleep(100)
	Send("{LWINUP}")
    Sleep(100)
    MouseClick("primary", 113, 439, 1, 1)
	Sleep(200)
	Send("{ENTER}")
	Sleep(9000)
	MouseClick("secondary",1538, 1032, 1, 1)
    Sleep(300)
	Send("{DOWN}")
	Sleep(100)
	Send("{ENTER}")
	WinWaitActive("Plex - Google Chrome")
	Sleep(10000)
	MouseClick("primary", 1809, 115, 1, 1)
	Sleep(400)
	MouseClick("primary", 1515, 114, 1, 1)
	Sleep(400)
	MouseClick("primary", 867, 12, 1, 1)
 EndFunc

Func update_plex()
    affirmative_response()
	Sleep(100)
	Send("{NUMPADDIV}")
	Sleep(100)
    Send("{LWINDOWN}")
    Sleep(100)
	Send("d")
	Sleep(100)
	Send("{LWINUP}")
    Sleep(100)
	MouseClick("secondary",1538, 1032, 1, 1)
    Sleep(300)
	Send("{DOWN}")
	Sleep(100)
	Send("{DOWN}")
	Sleep(100)
	Send("{DOWN}")
	Sleep(100)
	Send("{DOWN}")
	Sleep(100)
	Send("{ENTER}")
	Sleep(100)
 EndFunc

Func spotify()
   launching("Spotify")
   launchChrome()
   Send("!d")
   Sleep(300)
   Send("https://play.spotify.com/browse")
   Sleep(400)
   Send("{ENTER}")
   WinWaitActive("Spotify Web Player - Google Chrome", "", 15)
   Sleep(12000)
EndFunc

Func pandora()
   launching("Pandora")
   launchChrome()
   Send("!d")
   Sleep(300)
   Send("https://www.pandora.com")
   Sleep(400)
   Send("{ENTER}")
   WinWaitActive("Pandora Internet Radio - Listen to Free Music You'll Love - Google Chrome", "", 15)
   Sleep(14000)
EndFunc
