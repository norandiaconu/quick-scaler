@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeys.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")     >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:easeofaccess-display" >>"%TempVBSFile%"
ECHO WScript.Sleep 800                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB}{ }{HOME}{DOWN 2}{ENTER}"        >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:sound"                >>"%TempVBSFile%"
ECHO WScript.Sleep 800                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "s%%{F4}"                              >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT