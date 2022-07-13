@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeys.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")     >>"%TempVBSFile%"
ECHO WshShell.Run "displayswitch.exe"                         >>"%TempVBSFile%"
ECHO WScript.Sleep 900                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{END}{ENTER}"                         >>"%TempVBSFile%"
ECHO WScript.Sleep 900                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{ESC}"                                >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT