# Functions

runExe() := AppBringUp("H:\Side Projects\JARVIS - Prototype (v. 0.01)\Jarvis.exe") Wait(100);

egXboxToggle() := Wait(100) SendSystemKeys({Ctrl+Alt+1}) Wait(100);

egStartHomeTheater() := Wait(100) SendSystemKeys({Ctrl+Alt+2}) Wait(100);

egCCScreen2() := Wait(100) SendSystemKeys({Ctrl+Alt+3}) Wait(100);

startJarvis() := SendSystemKeys({NUMPADDIV}) SendSystemKeys({Alt+Esc}) Wait(100) ClearDesktop() Wait(300) GoToSleep() runExe();

recompile() := SendSystemKeys({Ctrl+Alt+0}) Wait(200) ClearDesktop() Wait(300) SetMousePosition(1, 975, 475) Wait(100) SetMousePosition(1, 1784, 39) Wait(100) ButtonClick(2) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Enter}) Wait(1500) runExe();

openLast() := SendSystemKeys({Alt+Tab});

fullScreen() := SendSystemKeys({Win+Up});

# Global voice commands

<direction> := left | right | up | down;
<number> := 1..99;
jarvis <number> <direction> = Repeat($1,ShellExecute("C:\Program Files (x86)\EventGhost\EventGhost.exe -event xbox."$2) Wait(200));

jarvis press (a=a | A=a | b=b | B=b | x=x | X=x | y=y | Y=y | xbox button = xbox | Xbox Button = xbox | Xbox button = xbox) = ShellExecute("C:\Program Files (x86)\EventGhost\EventGhost.exe -event xbox."$1);

jarvis turn (on | off) the Xbox = egXboxToggle();

jarvis toggle both screens = egStartHomeTheater();

jarvis chromecast second screen = egCCScreen2();

(full screen | maximize) = fullScreen();

open the last window = openLast();

(start jarvis | launch jarvis | jarvis wake up | wake up jarvis | hello jarvis) = startJarvis();

edit jarvis (functions | functionality | commands | voice commands) = ClearDesktop() Wait(300) SetMousePosition(1, 954, 462) Wait(100) ButtonClick() Wait(100) SetMousePosition(1, 1784, 39) Wait(100) ButtonClick(2) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Down}) Wait(100) SendSystemKeys({Enter}) Wait(300) SendSystemKeys({Win+Up});

jarvis new speech response = GoToSleep() ClearDesktop() PlaySound("H:\Side Projects\JARVIS - Prototype (v. 0.01)\Speech Files\very well.wav") Wait(200) SetMousePosition(1, 1859, 335) Wait(100) ButtonClick() SendSystemKeys({Enter}) Wait(15000) SendSystemKeys({Win+Right}) Wait(200) SendSystemKeys({Ctrl+n}) Wait(100) SendSystemKeys({Win+d}) Wait(100) SetMousePosition(1, 0, 739) Wait(100) ButtonClick() SendSystemKeys({Enter}) Wait(1500) SendSystemKeys({Alt+Tab}) PlaySound("C:\Users\Sean\Documents\Side Projects\JARVIS\JARVIS - Prototype (v. 0.01)\Speech Files\what would you like me to learn to say.wav") Wait(300) WakeUp();

jarvis = SendSystemKeys({Ctrl+F2});

jarvis (perform a rebuild | recompile | time for a fresh build) = recompile();

(jarvis shut down | shut down jarvis) = SendSystemKeys({Ctrl+F4});

jarvis introduce yourself = SendSystemKeys({Ctrl+F1});

jarvis start netflix = SendSystemKeys({Ctrl+F3});

jarvis cast netflix = SendSystemKeys({Ctrl+F10});

jarvis stop casting = SendSystemKeys({Ctrl+F7});

jarvis start plex = SendSystemKeys({Ctrl+F8});

jarvis cast plex = SendSystemKeys({Ctrl+F9});

jarvis quit plex = SendSystemKeys({Ctrl+F12});

jarvis update plex = SendSystemKeys({Ctrl+~});

jarvis netflix <_anything> = Clipboard.Set($1) Wait(500) SendSystemKeys({Ctrl+F6});

jarvis (cast | I want to watch | I feel like watching | put on) <_anything> on netflix = Clipboard.Set($2) Wait(500) SendSystemKeys({Ctrl+F6});

jarvis (what time is it | the time) = SendSystemKeys({Ctrl+F11});



