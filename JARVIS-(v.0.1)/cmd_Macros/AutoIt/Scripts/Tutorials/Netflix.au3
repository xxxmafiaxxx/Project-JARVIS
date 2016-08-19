#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Send("#q")
Send("chrome")
Send("{ENTER}")
Sleep(5000)
WinWaitActive("Google - Google Chrome")
Send("#{UP}")
Sleep(1000)
Send("netflix")
Send("{ENTER}")
WinWaitActive("netflix - Google Search - Google Chrome")
MouseClick("primary",174,266,1,1)
WinWaitActive("Netflix - Google Chrome")
Sleep(1000)
MouseClick("primary",816, 471,1,1)
Send("{F11}")