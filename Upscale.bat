@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeys.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")     >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:easeofaccess-display" >>"%TempVBSFile%"
ECHO WScript.Sleep 600                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB}{ }{END}{UP 2}{ENTER}"           >>"%TempVBSFile%"
ECHO WScript.Sleep 200                                        >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:sound"                >>"%TempVBSFile%"
ECHO WScript.Sleep 600                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{ }{HOME}{DOWN}{ENTER}"               >>"%TempVBSFile%"
ECHO WScript.Sleep 200                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "%%{F4}"                               >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT