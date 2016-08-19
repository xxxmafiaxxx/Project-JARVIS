import winsound
import Utility

soundDir = 'C:\Users\Sean\Documents\GitHub\Project-JARVIS\JARVIS - (v. 1.1)\Speech Files\/'
numberDir = soundDir + "\Numbers\/"
	
def SoundPlay(clip):
	winsound.PlaySound(soundDir + clip + ".wav", winsound.SND_NOSTOP)
	
def NumberPlay(num):
	winsound.PlaySound(numberDir + num + ".wav", winsound.SND_NOSTOP)

def what_can_i_do():
	Utility.Sleep(100)
	SoundPlay("Yes_sir")
	Utility.Sleep(200)
	SoundPlay("What can I do for you")
	Utility.Sleep(100)
	
def speak_minute(min):
	if(min != 0):
		if(min < 10):
			SoundPlay("Oh")
	NumberPlay(str(min))
	
def speak_time():
	Utility.Sleep(100)
	rand = Utility.getRandom(0,1)
	hour = Utility.getHour()
	min = Utility.getMinute()
	if (rand == 0):
		SoundPlay("the time is")
		Utility.Sleep(100)
	else:
		SoundPlay("it is currently")
		Utility.Sleep(100)
	if (hour < 11):
		if (hour < 10):
			hour = hour[1:]
		NumberPlay(str(hour))
		speak_minute(min)
		SoundPlay("AM")
	elif (hour == 12):
		NumberPlay(str(hour))
		speak_minute(min)
		SoundPlay("PM")
	elif (hour > 12 & hour <= 23):
		b = 12
		newHour = hour - b
		NumberPlay(str(newHour))
		speak_minute(min)
		SoundPlay("PM")