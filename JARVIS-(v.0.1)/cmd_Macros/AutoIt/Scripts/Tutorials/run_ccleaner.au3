#include <Constants.au3>

#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("CCleaner.exe")
WinWaitActive("Piriform CCleaner","Run Cleaner")
MouseClick("left",732,587,1)
MouseClick("left",732,587,1)
Sleep(5000)
Send("r")

