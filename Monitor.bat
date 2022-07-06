@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeys.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")     >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:display"              >>"%TempVBSFile%"
ECHO WScript.Sleep 2000                                       >>"%TempVBSFile%"
ECHO WshShell.SendKeys "+{TAB 11}{ }{END}{ENTER}"             >>"%TempVBSFile%"
ECHO WScript.Sleep 2000                                       >>"%TempVBSFile%"
ECHO WshShell.SendKeys "+{TAB}{ENTER}"                        >>"%TempVBSFile%"
ECHO WScript.Sleep 200                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "%%{F4}"                               >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT