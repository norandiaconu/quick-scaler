@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeys.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")             >>"%TempVBSFile%"
ECHO WshShell.Run "explorer.exe shell:appsFolder"                     >>"%TempVBSFile%"
ECHO WScript.Sleep 800                                                >>"%TempVBSFile%"
ECHO WshShell.SendKeys "nvidia c{ENTER}%%{F4}"                        >>"%TempVBSFile%"
ECHO WScript.Sleep 800                                                >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F6 2}d{DOWN}ss{ENTER}{F6 2}{ }%%{F4}{ENTER}" >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT