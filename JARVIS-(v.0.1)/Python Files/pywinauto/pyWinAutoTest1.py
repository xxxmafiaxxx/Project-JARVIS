from pywinauto.application import Application

app = Application()
app.start("Notepad.exe")
app.Notepad.DrawOutline()
app.Notepad.MenuSelect("Edit -> Replace")
app.Replace.PrintControlIdentifiers()
app.Replace.Cancel.Click()
app.Notepad.Edit.TypeKeys("Hi from pywinauto. This is a test", with_spaces = True)
app.Notepad.MenuSelect("File -> Exit")
app.Notepad.PrintControlIdentifiers()
app.Notepad.Button3.Click()