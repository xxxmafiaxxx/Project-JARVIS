from pywinauto.application import Application

app = Application().Start(cmd_line=u'"C:\\Windows\\explorer.exe" \\LOADSAVEDWINDOWS')
shelltraywnd = app.Shell_TrayWnd
shelltraywnd.Wait('ready')
button = shelltraywnd.Button
button.Click()

app.Kill_()