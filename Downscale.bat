@ECHO OFF

SET TempVBSFile=%tmp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")     >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:easeofaccess-display" >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB}{ }{HOME}{DOWN 2}{ENTER}"        >>"%TempVBSFile%"
ECHO Wscript.Sleep 200                                        >>"%TempVBSFile%"
ECHO WshShell.Run "explorer ms-settings:sound"                >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{ }{HOME}{DOWN}{ENTER}"               >>"%TempVBSFile%"
ECHO Wscript.Sleep 200                                        >>"%TempVBSFile%"
ECHO WshShell.SendKeys "%%{F4}"                               >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT