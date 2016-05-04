#include <Utility.au3>
#include <Misc.au3>

#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Sean Kinahan
 Date:			 8/1/2015

 Script Function:
	V 0.1 of Jarvis - NatVoice Engine

HotKeySet("{ESC}", "Wait")
HotKeySet("!{ESC}", "Terminate")
HotKeySet("^t", "Replace_Commas")
HotKeySet("+w", "splitWord")
HotKeySet("!s", "split_Audio_Files")
#ce ----------------------------------------------------------------------------

Global $sound_Dir = "C:\Users\Sean\Documents\Side Projects\JARVIS\JARVIS - Prototype (v. 0.01)\Speech Files\Bulk_Creation_Test\"

HotKeySet("{ESC}", "Terminate")
HotKeySet("^t", "test")

Func Terminate()
	  Exit
EndFunc

Wait()

Func test()
   natVoice("Beautiful")
EndFunc

Func build_funcs()
   MouseClick("primary", 480, 90, 1, 1)
   WinWaitActive("wordCounts.csv - Excel")
   copy()
   Sleep(100)
   Send("{RIGHT}")
   Sleep(100)
   Local $_Word = ClipGet()
   MouseClick("primary", 1405, 13, 1, 1)
   Sleep(100)
   WinWaitActive("C:\Users\Sean\Documents\Side Projects\JARVIS\JARVIS - Prototype (v. 0.01)\NatVoice.au3 - SciTE-Lite [1 of 2]")
   Send("Func natVoice_" & $_Word)
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Sleep(100)
   Send("()")
   Sleep(100)
   Send("{DOWN}")
   Sleep(200)
   Send("Local $syn_Num = Random(1,")
   MouseClick("primary", 480, 90, 1, 1)
   Sleep(100)
   WinWaitActive("wordCounts.csv - Excel")
   copy()
   Sleep(100)
   Send("{RIGHT}")
   Sleep(100)
   MouseClick("primary", 1405, 13, 1, 1)
   WinWaitActive("C:\Users\Sean\Documents\Side Projects\JARVIS\JARVIS - Prototype (v. 0.01)\NatVoice.au3 * SciTE-Lite [1 of 2]")
   Sleep(100)
   paste()
   Sleep(100)
   Send("{DOWN}")
   Sleep(200)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Sleep(100)
   Send(", 1)")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("Local $syn_Threshold = Random(1, 100, 1)")
   Sleep(200)
   Send("{ENTER}")
   Sleep(200)
   Send("If $syn_Threshold > 60 Then")
   Sleep(700)
   Send("{ENTER}")
    Sleep(700)
   Send("{ENTER}")
   Sleep(300)
   Send('SoundPlay($sound_Dir & "')
   Sleep(200)
   Send($_Word)
   Sleep(200)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Sleep(100)
   Send(' " & $syn_Num & ".wav",1)')
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("Else")
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send('SoundPlay($sound_Dir & "')
   Sleep(100)
   Send($_Word)
   Sleep(200)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Sleep(100)
   Send(' 1.wav",1)')
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("EndIf")
   Sleep(200)
   Send("{ENTER}")
   Sleep(100)
   Sleep(200)
   Send("{ENTER}")
   Sleep(100)
   Send("EndFunc")
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(400)
   Send("^s")
   Sleep(400)
   build_funcs()
EndFunc

Func build_case()
   MouseClick("primary", 480, 90, 1, 1)
   WinWaitActive("wordCounts.csv - Excel")
   copy()
   Sleep(100)
   Send("{RIGHT}")
   Sleep(100)
   Send("{RIGHT}")
   Sleep(100)
   Local $_Word = ClipGet()
   MouseClick("primary", 1405, 13, 1, 1)
   Sleep(100)
   WinWaitActive("C:\Users\Sean\Documents\Side Projects\JARVIS\JARVIS - Prototype (v. 0.01)\NatVoice.au3 - SciTE-Lite [1 of 2]")
   Sleep(100)
   Send("{ENTER}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send('Case $_word = "' & $_Word)
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Send('"')
   Sleep(400)
   Send("{ENTER}")
   Sleep(200)
   Send("natVoice_" & $_Word)
   Send("{UP}")
   Sleep(100)
   Send("{END}")
   Sleep(100)
   Send("()")
   Sleep(300)
   Send("{ENTER}")
   Sleep(100)
   Send("^s")
   Sleep(400)
   build_case()
EndFunc

Func natVoice($_word)
	Select
	  Case $_word = "Amazing"
		 natVoice_Amazing()

	  Case $_word = "Anger"
		 natVoice_Anger()

	  Case $_word = "Answer"
		 natVoice_Answer()

	  Case $_word = "Ask"
		 natVoice_Ask()

	  Case $_word = "Awful"
		 natVoice_Awful()

	  Case $_word = "Bad"
		 natVoice_Bad()

	  Case $_word = "Beautiful"
		 natVoice_Beautiful()

	  Case $_word = "Begin"
		 natVoice_Begin()

	  Case $_word = "Big"
		 natVoice_Big()

	  Case $_word = "Brave"
		 natVoice_Brave()

	  Case $_word = "Break"
		 natVoice_Break()

	  Case $_word = "Bright"
		 natVoice_Bright()

	  Case $_word = "Calm"
		 natVoice_Calm()

	  Case $_word = "Come"
		 natVoice_Come()

	  Case $_word = "Cool"
		 natVoice_Cool()

	  Case $_word = "Crooked"
		 natVoice_Crooked()

	  Case $_word = "Cry"
		 natVoice_Cry()

	  Case $_word = "Cut"
		 natVoice_Cut()

	  Case $_word = "Dangerous"
		 natVoice_Dangerous()

	  Case $_word = "Dark"
		 natVoice_Dark()

	  Case $_word = "Decide"
		 natVoice_Decide()

	  Case $_word = "Definite"
		 natVoice_Definite()

	  Case $_word = "Delicious"
		 natVoice_Delicious()

	  Case $_word = "Describe"
		 natVoice_Describe()

	  Case $_word = "Destroy"
		 natVoice_Destroy()

	  Case $_word = "Difference"
		 natVoice_Difference()

	  Case $_word = "Do"
		 natVoice_Do()

	  Case $_word = "Dull"
		 natVoice_Dull()

	  Case $_word = "Eager"
		 natVoice_Eager()

	  Case $_word = "End"
		 natVoice_End()

	  Case $_word = "Enjoy"
		 natVoice_Enjoy()

	  Case $_word = "Explain"
		 natVoice_Explain()

	  Case $_word = "Fair"
		 natVoice_Fair()

	  Case $_word = "Fall"
		 natVoice_Fall()

	  Case $_word = "False"
		 natVoice_False()

	  Case $_word = "Famous"
		 natVoice_Famous()

	  Case $_word = "Fast"
		 natVoice_Fast()

	  Case $_word = "Fat"
		 natVoice_Fat()

	  Case $_word = "Fear"
		 natVoice_Fear()

	  Case $_word = "Fly"
		 natVoice_Fly()

	  Case $_word = "Funny"
		 natVoice_Funny()

	  Case $_word = "Get"
		 natVoice_Get()

	  Case $_word = "Go"
		 natVoice_Go()

	  Case $_word = "Good"
		 natVoice_Good()

	  Case $_word = "Great"
		 natVoice_Great()

	  Case $_word = "Gross"
		 natVoice_Gross()

	  Case $_word = "Happy"
		 natVoice_Happy()

	  Case $_word = "Hate"
		 natVoice_Hate()

	  Case $_word = "Have"
		 natVoice_Have()

	  Case $_word = "Help"
		 natVoice_Help()

	  Case $_word = "Hide"
		 natVoice_Hide()

	  Case $_word = "Hurry"
		 natVoice_Hurry()

	  Case $_word = "Hurt"
		 natVoice_Hurt()

	  Case $_word = "Idea"
		 natVoice_Idea()

	  Case $_word = "Important"
		 natVoice_Important()

	  Case $_word = "Interesting"
		 natVoice_Interesting()

	  Case $_word = "Keep"
		 natVoice_Keep()

	  Case $_word = "Lazy"
		 natVoice_Lazy()

	  Case $_word = "Little"
		 natVoice_Little()

	  Case $_word = "Look"
		 natVoice_Look()

	  Case $_word = "Love"
		 natVoice_Love()

	  Case $_word = "Make"
		 natVoice_Make()

	  Case $_word = "Mark"
		 natVoice_Mark()

	  Case $_word = "Mischievous"
		 natVoice_Mischievous()

	  Case $_word = "Moody"
		 natVoice_Moody()

	  Case $_word = "Move"
		 natVoice_Move()

	  Case $_word = "Neat"
		 natVoice_Neat()

	  Case $_word = "New"
		 natVoice_New()

	  Case $_word = "Old"
		 natVoice_Old()

	  Case $_word = "Part"
		 natVoice_Part()

	  Case $_word = "Place"
		 natVoice_Place()

	  Case $_word = "Plan"
		 natVoice_Plan()

	  Case $_word = "Popular"
		 natVoice_Popular()

	  Case $_word = "Predicament"
		 natVoice_Predicament()

	  Case $_word = "Put"
		 natVoice_Put()

	  Case $_word = "Quiet"
		 natVoice_Quiet()

	  Case $_word = "Right"
		 natVoice_Right()

	  Case $_word = "Run"
		 natVoice_Run()

	  Case $_word = "Say"
		 natVoice_Say()

	  Case $_word = "Scared"
		 natVoice_Scared()

	  Case $_word = "Show"
		 natVoice_Show()

	  Case $_word = "Slow"
		 natVoice_Slow()

	  Case $_word = "Stop"
		 natVoice_Stop()

	  Case $_word = "Story"
		 natVoice_Story()

	  Case $_word = "Strange"
		 natVoice_Strange()

	  Case $_word = "Take"
		 natVoice_Take()

	  Case $_word = "Tell"
		 natVoice_Tell()

	  Case $_word = "Think"
		 natVoice_Think()

	  Case $_word = "Trouble"
		 natVoice_Trouble()

	  Case $_word = "True"
		 natVoice_True()

	  Case $_word = "Ugly"
		 natVoice_Ugly()

	  Case $_word = "Unhappy"
		 natVoice_Unhappy()

	  Case $_word = "Use"
		 natVoice_Use()

	  Case $_word = "Wrong"
		 natVoice_Wrong()

   EndSelect
EndFunc

Func natVoice_Amazing()
    Local $syn_Num = Random(1, 10, 1)
    Local $syn_Threshold = Random(1, 100, 1)
    If $syn_Threshold > 60 Then
	   SoundPlay($sound_Dir & "Amazing " & $syn_Num & ".wav",1)
	Else
	  SoundPlay($sound_Dir & "Amazing 1.wav",1)
	   EndIf
EndFunc

Func natVoice_Anger()
    Local $syn_Num = Random(1, 8, 1)
    Local $syn_Threshold = Random(1, 100, 1)
    If $syn_Threshold > 60 Then
	   SoundPlay($sound_Dir & "Anger " & $syn_Num & ".wav")
	Else
	  SoundPlay($sound_Dir & "Anger 1.wav")
	   EndIf
EndFunc

Func natVoice_Angry()
    Local $syn_Num = Random(1, 10, 1)
    Local $syn_Threshold = Random(1, 100, 1)
    If $syn_Threshold > 60 Then
	   SoundPlay($sound_Dir & "Angry " & $syn_Num & ".wav")
	Else
	  SoundPlay($sound_Dir & "Angry 1.wav")
	   EndIf
	EndFunc

Func natVoice_Answer()
   Local $syn_Num = Random(1,5, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Answer " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Answer 1.wav",1)
   EndIf
EndFunc

Func natVoice_Ask()
   Local $syn_Num = Random(1,13, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Ask " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Ask 1.wav",1)
   EndIf
EndFunc

Func natVoice_Awful()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Awful " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Awful 1.wav",1)
   EndIf
EndFunc

Func natVoice_Bad()
   Local $syn_Num = Random(1,52, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Bad " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Bad 1.wav",1)
   EndIf
EndFunc

Func natVoice_Beautiful()
   Local $syn_Num = Random(1,28, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Beautiful " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Beautiful 1.wav",1)
   EndIf
EndFunc

Func natVoice_Begin()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Begin " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Begin 1.wav",1)
   EndIf
EndFunc

Func natVoice_Big()
   Local $syn_Num = Random(1,24, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Big " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Big 1.wav",1)
   EndIf
EndFunc

Func natVoice_Brave()
   Local $syn_Num = Random(1,14, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Brave " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Brave 1.wav",1)
   EndIf
EndFunc

Func natVoice_Break()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Break " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Break 1.wav",1)
   EndIf
EndFunc

Func natVoice_Bright()
   Local $syn_Num = Random(1,18, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Bright " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Bright 1.wav",1)
   EndIf
EndFunc

Func natVoice_Calm()
   Local $syn_Num = Random(1,15, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Calm " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Calm 1.wav",1)
   EndIf
EndFunc

Func natVoice_Come()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Come " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Come 1.wav",1)
   EndIf
EndFunc

Func natVoice_Cool()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Cool " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Cool 1.wav",1)
   EndIf
EndFunc

Func natVoice_Crooked()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Crooked " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Crooked 1.wav",1)
   EndIf
EndFunc

Func natVoice_Cry()
   Local $syn_Num = Random(1,11, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Cry " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Cry 1.wav",1)
   EndIf
EndFunc

Func natVoice_Cut()
   Local $syn_Num = Random(1,14, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Cut " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Cut 1.wav",1)
   EndIf
EndFunc

Func natVoice_Dangerous()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Dangerous " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Dangerous 1.wav",1)
   EndIf
EndFunc

Func natVoice_Dark()
   Local $syn_Num = Random(1,12, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Dark " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Dark 1.wav",1)
   EndIf
EndFunc

Func natVoice_Decide()
   Local $syn_Num = Random(1,5, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Decide " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Decide 1.wav",1)
   EndIf
EndFunc

Func natVoice_Definite()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Definite " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Definite 1.wav",1)
   EndIf
EndFunc

Func natVoice_Delicious()
   Local $syn_Num = Random(1,11, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Delicious " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Delicious 1.wav",1)
   EndIf
EndFunc

Func natVoice_Describe()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Describe " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Describe 1.wav",1)
   EndIf
EndFunc

Func natVoice_Destroy()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Destroy " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Destroy 1.wav",1)
   EndIf
EndFunc

Func natVoice_Difference()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Difference " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Difference 1.wav",1)
   EndIf
EndFunc

Func natVoice_Do()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Do " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Do 1.wav",1)
   EndIf
EndFunc

Func natVoice_Dull()
   Local $syn_Num = Random(1,20, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Dull " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Dull 1.wav",1)
   EndIf
EndFunc

Func natVoice_Eager()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Eager " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Eager 1.wav",1)
   EndIf
EndFunc

Func natVoice_End()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "End " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "End 1.wav",1)
   EndIf
EndFunc

Func natVoice_Enjoy()
   Local $syn_Num = Random(1,11, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Enjoy " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Enjoy 1.wav",1)
   EndIf
EndFunc

Func natVoice_Explain()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Explain " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Explain 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fair()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fair " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fair 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fall()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fall " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fall 1.wav",1)
   EndIf
EndFunc

Func natVoice_False()
   Local $syn_Num = Random(1,11, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "False " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "False 1.wav",1)
   EndIf
EndFunc

Func natVoice_Famous()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Famous " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Famous 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fast()
   Local $syn_Num = Random(1,18, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fast " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fast 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fat()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fat " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fat 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fear()
   Local $syn_Num = Random(1,12, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fear " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fear 1.wav",1)
   EndIf
EndFunc

Func natVoice_Fly()
   Local $syn_Num = Random(1,12, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Fly " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Fly 1.wav",1)
   EndIf
EndFunc

Func natVoice_Funny()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Funny " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Funny 1.wav",1)
   EndIf
EndFunc

Func natVoice_Get()
   Local $syn_Num = Random(1,25, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Get " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Get 1.wav",1)
   EndIf
EndFunc

Func natVoice_Go()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Go " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Go 1.wav",1)
   EndIf
EndFunc

Func natVoice_Good()
   Local $syn_Num = Random(1,50, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Good " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Good 1.wav",1)
   EndIf
EndFunc

Func natVoice_Great()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Great " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Great 1.wav",1)
   EndIf
EndFunc

Func natVoice_Gross()
   Local $syn_Num = Random(1,14, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Gross " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Gross 1.wav",1)
   EndIf
EndFunc

Func natVoice_Happy()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Happy " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Happy 1.wav",1)
   EndIf
EndFunc

Func natVoice_Hate()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Hate " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Hate 1.wav",1)
   EndIf
EndFunc

Func natVoice_Have()
   Local $syn_Num = Random(1,15, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Have " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Have 1.wav",1)
   EndIf
EndFunc

Func natVoice_Help()
   Local $syn_Num = Random(1,14, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Help " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Help 1.wav",1)
   EndIf
EndFunc

Func natVoice_Hide()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Hide " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Hide 1.wav",1)
   EndIf
EndFunc

Func natVoice_Hurry()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Hurry " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Hurry 1.wav",1)
   EndIf
EndFunc

Func natVoice_Hurt()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Hurt " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Hurt 1.wav",1)
   EndIf
EndFunc

Func natVoice_Idea()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Idea " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Idea 1.wav",1)
   EndIf
EndFunc

Func natVoice_Important()
   Local $syn_Num = Random(1,15, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Important " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Important 1.wav",1)
   EndIf
EndFunc

Func natVoice_Interesting()
   Local $syn_Num = Random(1,38, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Interesting " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Interesting 1.wav",1)
   EndIf
EndFunc

Func natVoice_Keep()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Keep " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Keep 1.wav",1)
   EndIf
EndFunc

Func natVoice_Lazy()
   Local $syn_Num = Random(1,6, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Lazy " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Lazy 1.wav",1)
   EndIf
EndFunc

Func natVoice_Little()
   Local $syn_Num = Random(1,17, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Little " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Little 1.wav",1)
   EndIf
EndFunc

Func natVoice_Look()
   Local $syn_Num = Random(1,35, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Look " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Look 1.wav",1)
   EndIf
EndFunc

Func natVoice_Love()
   Local $syn_Num = Random(1,13, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Love " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Love 1.wav",1)
   EndIf
EndFunc

Func natVoice_Make()
   Local $syn_Num = Random(1,24, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Make " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Make 1.wav",1)
   EndIf
EndFunc

Func natVoice_Mark()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Mark " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Mark 1.wav",1)
   EndIf
EndFunc

Func natVoice_Mischievous()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Mischievous " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Mischievous 1.wav",1)
   EndIf
EndFunc

Func natVoice_Moody()
   Local $syn_Num = Random(1,15, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Moody " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Moody 1.wav",1)
   EndIf
EndFunc

Func natVoice_Move()
   Local $syn_Num = Random(1,28, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Move " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Move 1.wav",1)
   EndIf
EndFunc

Func natVoice_Neat()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Neat " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Neat 1.wav",1)
   EndIf
EndFunc

Func natVoice_New()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "New " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "New 1.wav",1)
   EndIf
EndFunc

Func natVoice_Old()
   Local $syn_Num = Random(1,28, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Old " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Old 1.wav",1)
   EndIf
EndFunc

Func natVoice_Part()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Part " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Part 1.wav",1)
   EndIf
EndFunc

Func natVoice_Place()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Place " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Place 1.wav",1)
   EndIf
EndFunc

Func natVoice_Plan()
   Local $syn_Num = Random(1,15, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Plan " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Plan 1.wav",1)
   EndIf
EndFunc

Func natVoice_Popular()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Popular " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Popular 1.wav",1)
   EndIf
EndFunc

Func natVoice_Predicament()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Predicament " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Predicament 1.wav",1)
   EndIf
EndFunc

Func natVoice_Put()
   Local $syn_Num = Random(1,13, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Put " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Put 1.wav",1)
   EndIf
EndFunc

Func natVoice_Quiet()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Quiet " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Quiet 1.wav",1)
   EndIf
EndFunc

Func natVoice_Right()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Right " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Right 1.wav",1)
   EndIf
EndFunc

Func natVoice_Run()
   Local $syn_Num = Random(1,11, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Run " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Run 1.wav",1)
   EndIf
EndFunc

Func natVoice_Say()
   Local $syn_Num = Random(1,52, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Say " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Say 1.wav",1)
   EndIf
EndFunc

Func natVoice_Scared()
   Local $syn_Num = Random(1,26, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Scared " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Scared 1.wav",1)
   EndIf
EndFunc

Func natVoice_Show()
   Local $syn_Num = Random(1,12, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Show " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Show 1.wav",1)
   EndIf
EndFunc

Func natVoice_Slow()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Slow " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Slow 1.wav",1)
   EndIf
EndFunc

Func natVoice_Stop()
   Local $syn_Num = Random(1,10, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Stop " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Stop 1.wav",1)
   EndIf
EndFunc

Func natVoice_Story()
   Local $syn_Num = Random(1,14, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Story " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Story 1.wav",1)
   EndIf
EndFunc

Func natVoice_Strange()
   Local $syn_Num = Random(1,13, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Strange " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Strange 1.wav",1)
   EndIf
EndFunc

Func natVoice_Take()
   Local $syn_Num = Random(1,25, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Take " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Take 1.wav",1)
   EndIf
EndFunc

Func natVoice_Tell()
   Local $syn_Num = Random(1,18, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Tell " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Tell 1.wav",1)
   EndIf
EndFunc

Func natVoice_Think()
   Local $syn_Num = Random(1,9, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Think " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Think 1.wav",1)
   EndIf
EndFunc

Func natVoice_Trouble()
   Local $syn_Num = Random(1,18, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Trouble " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Trouble 1.wav",1)
   EndIf
EndFunc

Func natVoice_True()
   Local $syn_Num = Random(1,16, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "True " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "True 1.wav",1)
   EndIf
EndFunc

Func natVoice_Ugly()
   Local $syn_Num = Random(1,20, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Ugly " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Ugly 1.wav",1)
   EndIf
EndFunc

Func natVoice_Unhappy()
   Local $syn_Num = Random(1,17, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Unhappy " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Unhappy 1.wav",1)
   EndIf
EndFunc

Func natVoice_Use()
   Local $syn_Num = Random(1,8, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Use " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Use 1.wav",1)
   EndIf
EndFunc

Func natVoice_Wrong()
   Local $syn_Num = Random(1,7, 1)
   Local $syn_Threshold = Random(1, 100, 1)
   If $syn_Threshold > 60 Then
	  SoundPlay($sound_Dir & "Wrong " & $syn_Num & ".wav",1)
   Else
	  SoundPlay($sound_Dir & "Wrong 1.wav",1)
   EndIf
EndFunc

Func Replace_Commas()
   Sleep(200)
   WinWaitActive("Balabolka - [Document2]")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{UP}")
   Sleep(100)
   Send("{HOME}")
   Sleep(100)
   Send("^r")
   Sleep(100)
   Send("—")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send(",")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(500)
   Send("{ENTER}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(400)
   Send("{ENTER}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(500)
   Send("{TAB}")
   Sleep(100)
   Send(",")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("^a")
   Send("{DEL}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(500)
   Send("{ENTER}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(400)
   Send("{ENTER}")
   Sleep(100)
   Send("{TAB}")
   Sleep(100)
   Send("{TAB}")
   Sleep(500)
   Send("{ENTER}")
   Sleep(100)
   Send("{TAB}")
   Sleep(500)
   Send("{ENTER}")
   Sleep(5000)
   splitWord()
EndFunc

Func splitWord()
   While 1
	  Send("{HOME}")
	  Sleep(300)
	  Send("{CTRLDOWN}")
	  Sleep(100)
	  Send("{SHIFTDOWN}")
	  Sleep(100)
	  Send("{RIGHT}")
	  Sleep(100)
	  Send("{CTRLUP}")
	  Sleep(100)
	  Send("{SHIFTUP}")
	  Sleep(100)
	  Send("{RIGHT}")
	  Sleep(500)
	  Send("{ENTER}")
	  Sleep(100)
	  Send("{ENTER}")
	  Sleep(400)
	  Send("{ENTER}")
	  Sleep(100)
   WEnd
EndFunc

Func split_Audio_Files()
   Sleep(200)
   MouseClick("primary", 999, 221, 2, 1)
   copy()
   Sleep(300)
   Send("!f")
   Sleep(500)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{ENTER}")
   Sleep(400)
   MouseClick("primary", 1454, 422, 2, 1)
   Sleep(300)
   paste()
   Sleep(1500)
   MouseClick("primary", 1243, 741, 1, 1)
   Sleep(400)
   Send("{ENTER}")
   Sleep(15000)
   MouseClick("primary", 475, 12, 1, 1)
   Sleep(100)
   Send("{DOWN}")
   Sleep(100)
   Send("{HOME}")
   Sleep(100)
   Send("+{END}")
   Sleep(100)
   copy()
   Sleep(100)
   MouseClick("primary", 1092, 322, 1, 1)
   Sleep(100)
   Send("^a")
   Sleep(100)
   paste()
   Sleep(400)
   Replace_Commas()
   Sleep(5000)
   splitWord()
EndFunc