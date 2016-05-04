Project Jarvis

	Jarvis is an ongoing home and desktop automation solution created by myself leveraging VoxCommando, EventGhost and the Windows GUI automation tool AutoIT.
Obviously, this project was heavily inspired by the personal artificial intelligence created by Tony Stark AKA Iron Man in the Marvel Comics series.
I wanted something not unlike the Amazon Echo, Google Now, Siri, or Cortana - but with a more personal touch and extensible smart home control.

=================================================================================================================================================================
Project Description:
	The system interprets voice commands using VoxCommando, which then in turn triggers "Jarvis" custom automation functions via AutoIT.
Jarvis is an interactive assistant - at a very low level. He is very customized to my own needs - this is the first time I am publicly posting this project.
You may find that certain functions seem incomplete or you may encounter errors - these are likely caused by my editing down the build for a public posting 
- obviously I don't want my personal data held by Jarvis out there on the Internet!

These automated actions can also trigger EventGhost events, leading to virtually infinite possibilities for further home automation.

	The canned voice responses were created using the free program Balabolka with the CereVoice text-to-speech William (England) voice. I then passed these voice
responses through a filter in Audacity to recreate the appropriate ethereal disembodied voice that Jarvis has.
Balabolka is a free program, should you wish to expand the responses yourself. However, I did pay for a license from CereVoice for the William TTS voice and therefore cannot make it
available with this repo.

Permissions & Disclaimer:
	Feel free to use this project or anything you learn from it in any non-commercial context. I am posting it to help others who might be interested in inexpensive home automation.
However, do attribute anything you directly pull from this project towards me.
	The code in this repository does not represent good coding projects - as a passion / side project, I was learning the syntax of AutoIT as I went. Also, there is a fair bit of code 
cleanup that may or may not be done. I assume no responsibility for any negative consequences that may result from your use of this project. At it's heart, it is a very lightweight and simple application, 
so there should not be any problems.

Future:
	I am currently working on redesigning this system from the ground up to use only python code / scripts for voice recognition and desktop automation,
and EventGhost for control of smart devices. After that, my immediate goal is to incorporate some new sensors and technologies, potentially facial
recognition, motion detection, or both.

	In the future, I would like to include some machine learning algorithms to learn user habits and preferences, and use this data to prompt the user. 
Example: Jarvis would learn that you tend to set the thermostat lower around 10:00 PM every night, and begins to do it himself.
=================================================================================================================================================================

Installation:
1. Download and unzip the repository
2. Install VoxCommando
3. Install AutoIT v3
4. Install EventGhost
5. In EventGhost, open Tree2 from the EventGhost_Trees folder
(optional) Purchase USB-UIRT transceiver for controlling home theater devices
5. Right click and edit the Jarvis.au3 file and replace the specification for Working_Dir with your path to the repo
6. Right click and edit the Utlity.au3 file and replace the path for google chrome in the launch_chrome() function to your path to Chrome

To Run:
- Compile Jarvis.au3 for your system (x86 or x64)
- Run Jarvis.exe
- Run EventGhost
- Run VoxCommando - press 'Edit' - Open voicecommands.xml from the "VoxCommando Configuration" folder
- Try it out! (your computer will need a microphone, obviously)

Error List:
- netflix_specific() does not currently work - it relied on a function of Vocola, which was in an earlier 

Project Backlog:
- Research and implement custom voice recognition in Python
- Expand vocabulary and responsiveness
	- express when a command is not recognized
	- prompt for more information where appropriate
	- create multiple voice options
- Rewrite Jarvis, Media, and Utility modules in Python
- Integrate Jarvis with Amazon Echo through EventGhost - "Alexa, tell Jarvis to __________".
- Integrate with Cortana / Google Now for scheduling appointments
- Collect user data and analyze trends over time - alter behavior to match user trends
- Utilize encryption to protect user data