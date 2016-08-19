import time
from random import randint
from pywinauto.application import Application

chromeCoords = (1200,2000)
	
def controlTest():
	controlAlreadyOpen()
	
def launchBrowser():
	clickSpot(chromeCoords[0],chromeCoords[1])

def clickSpot(x,y):
	app = Application()
	comapp = app.connect_(path = "explorer")
	for i in comapp.windows_():
		if "Progman" == i.FriendlyClassName():
			i.ClickInput(coords=(x,y))
			
def controlAlreadyOpen():
	app = Application()
	win = app.Chrome_WidgetWin_1
	win.PrintControlIdentifiers()
			
def Sleep(n):
	ms = n / 1000
	time.sleep(ms)
	
def getHour():
	t = time.localtime()
	h = t.tm_hour
	return h
	
def getMinute():
	t = time.localtime()
	m = t.tm_min
	return m
		
def getRandom(a,b):
	return randint(a,b)
	
def StayAlive():
	while 1:
		time.sleep(0.1)