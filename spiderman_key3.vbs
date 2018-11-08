Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.SendKeys "^a"
WshShell.SendKeys "^c"
WshShell.SendKeys "%{F4}"
WshShell.run "raw.txt"