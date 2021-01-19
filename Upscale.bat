@ECHO OFF

explorer ms-settings:easeofaccess-display

SET TempVBSFile=%tmp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 500                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{TAB}{ }{HOME}{DOWN 6}{ENTER}"    >>"%TempVBSFile%"
ECHO Wscript.Sleep 200                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "%%{F4}"                           >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"
EXIT