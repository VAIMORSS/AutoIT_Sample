#RequireAdmin 

AutoItSetOption('SendKeyDelay',10)
Run(@ScriptDir & '\vlc-3.0.4-win64')


WinWait('Installer Language')
WinActivate('Installer Language')
ControlClick('Installer Language','','Button1')

WinWait('VLC media player Setup')
WinActivate('VLC media player Setup')
ControlClick('VLC media player Setup','','Button2')
ControlClick('VLC media player Setup','','Button2')



send('{TAB}{DOWN}{DOWN}{SPACE}{TAB}{TAB}{ENTER}{ENTER}')

Do
            $Finish = ControlGetHandle("VLC media player Setup", "Finish", 1)
            Sleep(100)
Until $Finish <> ""

ControlClick("VLC media player Setup", "Finish", 1)

;~ WinWait('VLC media player Setup')
;~ WinActivate('VLC media player Setup')
;~ ControlClick('VLC media player Setup','','Button2')
