import Media
import Utility

Debug = True

def jarvis():
	greet()

def greet():
	HOUR = Utility.getHour()
	if(HOUR < 11):
		Media.SoundPlay("Good morning sir")
	elif (HOUR > 12 & HOUR < 17):
		Media.SoundPlay("Good afternoon sir")
	elif (HOUR > 18 & HOUR < 21):
		Media.SoundPlay("Good evening sir")
	else:
		Media.SoundPlay("getting late")
	Utility.Sleep(700)
	Media.speak_time()
	#StayAlive()	
	
def test():
	Utility.Sleep(100)
	h = Utility.getHour()
	print("Hour is: ")
	print(h)
	m = Utility.getMinute()
	print("Minute is: ")
	print(m)
	Media.speak_time()
	rand1 = Utility.getRandom(0,1)
	print(rand1)
	rand2 = Utility.getRandom(0,10)
	print(rand2)
	Media.what_can_i_do()
	#jarvis()

def test2():
	Utility.controlTest()
	
if __name__ == "__main__":
	test2()
	#jarvis()
	