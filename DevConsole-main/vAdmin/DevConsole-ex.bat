@ECHO OFF
title DevConsole BETA 
ECHO Loading compenents...
echo DevConsle Opened %time%>> log1.txt
color 06
cls
mode con:cols=90 lines=30
set vc="1.3.0"
set loginID=Guest
cls
goto start

:start

color 03
title DevConsole LITE ::  %vc%
ECHO =DevConsle Lite=
ECHO Input Command:
ECHO __________________________

::Input Console Commands 
set /p input=      :/ 

if %input%==help goto help
if %input%==admin_pass goto admin_pass
if %input%==restart_app goto restart_app
if %input%==exit goto exi
if %input%==log goto Up_Log
if %input%==log1 goto log1
if %input%==cls goto clear
if %input%==terminal goto terminal
echo Invalid choice.

goto start


::Command Functions

:help
echo -Help! Opened>> log1.txt
color 08
ECHO All commands are listed below:
ECHO ================Console=================
ECHO help ; List of all commands
ECHO close_all ; Close all .bat applications.
ECHO admin_pass ; Leads to devoloper portal Log-in.
ECHO restart_app ; Restart DevConsole.
ECHO log ; Displays Changelog
ECHO log1 ; Console History, Support Codes, and Crash logs.
ECHO ================TERMINAL==================
ECHO terminal ; Launches Terminal
pause 
goto start
:close
color 08
goto end
:admin_pass
goto DeveloperNumber1
:admin_pass1
echo -admin_pass Opened>> log.txt
cls
ECHO ........................
ECHO Signed in: %loginID%
ECHO ======Admin Portal======
ECHO 1: Secure Locker
ECHO 2: Password Encryption
ECHO 3: DevNote
ECHO 4: Mini-Control
ECHO 5: Developer Settings
ECHO ======Other======
ECHO 6: Directory
ECHO 7: Log-Out
set/p "cho=>"

if %cho%==1 goto pers_locker
if %cho%==2 goto pas_encryp
if %cho%==3 goto DevNote
if %cho%==4 goto Mini-Control
if %cho%==5 goto Developer_set
if %cho%==6 goto help
if %cho%==7 goto log_out
if %cho%==t goto start

echo Invalid choice.
goto CONFIRM
:Developer_set

ECHO DEVELOPER SETTINGS
ECHO [1] DevNote Changelog
ECHO [2] Log Editor
ECHO [3] -
ECHO [4] -
ECHO [5] Console ABOUT 

set /p input= Option : 
if %input%==1 goto DV_1
if %input%==2 goto DV_2
if %input%==3 goto Developer_set
if %input%==4 goto Developer_set
if %input%==5 goto DV_5
:log_out
goto start 
:restart_app
color 08
echo -restart_app Opened>> log.txt
ECHO Restarting...
goto end
ECHO Restarting...
:exi
color 08
echo -exi Opened>> log.txt
echo 
echo 
echo
echo
echo WARNING! All files will be forcefully shutdown.
echo Supported Folders Found:

IF EXIST "csgo.exe" (
	color 04
    ECHO >>>-CSGO.exe found.
) ELSE (
	color 03
    ECHO >>>-CSGO.exe unknown.
)
IF EXIST "steam.exe" (
	color 04
    ECHO >>>-steam.exe found.
) ELSE (
	color 03
    ECHO >>>-steam.exe unknown.
)
IF EXIST "discord.exe" (
	color 04
    ECHO >>>-discord.exe found.
) ELSE (
	color 03
    ECHO >>>'discord.exe' unknown.
)
IF EXIST "chrome.exe" (
	color 04
    ECHO >>>'chrome.exe' found.
) ELSE (
	color 03
    ECHO >>>'chrome.exe' unknown.
)
IF EXIST "brave.exe" (
	color 04
    ECHO >>>'brave.exe' found.
) ELSE (
	color 03
    ECHO >>>'brave.exe' unknown.
)
IF EXIST "spotify.exe" (
	color 04
    ECHO >>>'spotify.exe' found.
) ELSE (
	color 03
    ECHO >>>'spotify.exe' unknown.
)


set/p "cho=>"
if %cho%==cgso goto prg.close.csgo
if %cho%==steam goto prg.close.steam
if %cho%==discord goto prg.close.discord
if %cho%==chrome goto prg.close.chrome
if %cho%==brave goto prg.close.brave
if %cho%==spotify goto prg.close.spotify
if %cho%==vibrancegui goto prg.close.vibrancegui
if %cho%==fontmanager goto prg.close.fontmanager
if %cho%==krunker goto prg.close.krunker
if %cho%==notepad goto prg.close.notepad
if %cho%==valorant goto prg.close.valorant
if %cho%==t goto start



echo Invalid choice.
goto CONFIRM
pause
:log
echo -log Opened>> log.txt
ECHO 1: Up_Log
ECHO 2: log1 - unavaileable
set/p "cho=>"

if %cho%==1 goto Up_log
if %cho%==2 goto log1
if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:log1
goto DeveloperNumber
:log2
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
ping localhost -n 2 >nul
color 0a

ECHO Sending Server ID
ping localhost -n 2 >nul
ping localhost -n 2 >nul
ipconfig
ECHO Accesing Server IP...
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
echo Uploading...
ping localhost -n 9 >nul
echo SERVER UPDATE COMPLETED!
driverquery /FO List 
ping localhost -n 2 >nul
echo APA...
ping localhost -n 1 >nul
echo Alocating Data
ping localhost -n 1 >nul
echo VP Deactivated
ping localhost -n 1 >nul
cls
arp -a
echo Finished! 
pause
cls
goto log1

:DeveloperNumber
set /p input= Developer Num. : 

if %input%==308 goto DN_308
if %input%==1 goto DN_1
if %input%==2 goto DN_2
if %input%==3 goto DN_3
if %input%==4 goto DN_4
:DN_308
set /p input= Developer ID   :
if %input%==9628 goto log2
:DN_1
set /p input= Developer ID   :
if %input%==3855 goto log2
:DN_2
set /p input= Developer ID   :
if %input%==3235 goto log2
:DN_3
set /p input= Developer ID   :
if %input%==3726 goto log2
:DN_4
set /p input= Developer ID   :
if %input%==8005 goto log2

::THIS IS FOR admin_pass
:DeveloperNumber1
set /p input= Developer Num. : 

if %input%==308 goto DN1_308
if %input%==1 goto DN1_1
if %input%==2 goto DN1_2
if %input%==3 goto DN1_3
if %input%==4 goto DN1_4

:DN1_308
set /p input= Developer ID   :
if %input%==9628 goto admin_pass1
:DN1_1
set /p input= Developer ID   :
if %input%==3855 goto admin_pass1
:DN1_2
set /p input= Developer ID   :
if %input%==3235 goto admin_pass1
:DN1_3
set /p input= Developer ID   :
if %input%==3726 goto admin_pass1
:DN1_4
set /p input= Developer ID   :
if %input%==8005 goto admin_pass1

::Developer Settings !!!
:DV_1
set /p DevNote_change="Update DevNote:"
echo.
choice /m "Would you like to update DevNote and update it to this: %DevNote_change%?"
echo Updating Server DevNote...
echo %DevNote_change%>> log1.txt
ping localhost -n 4 >nul
cls
echo Server Upload : DevNote.txt : UPDATED
goto admin_pass1

:clear
color 08
ECHO Clearing
timeout 1.5
cls
goto start
::Changelog
:Up_log
ECHO UPDATE LOGS
ECHO ]
ECHO ]
ECHO ]	
ECHO ==============================
type "%userprofile%\Documents\DevConsole-main\0_alert2"
ECHO ==============================
ECHO DevConsole Lite shows orginal log for DevConsole. Some features will not be available.
ECHO .......................................................................................
ECHO 1.3.00 ; DevConsole Terminal Official BETA Released.
ECHO 1.2.14 ; Added /set. Added 'Developer_set' -Developer Settings-.
ECHO 1.2.13 ; Developer Log-In. Server IP/Network API update 'log1'.
ECHO 1.2.12 ; Added 'log', 'log1', 'pers_config','pers_locker'. Mainitance on 'pers_config'.
ECHO 1.2.11 ; 'Log.txt' developed. Mainitance on 'FileSearch-ALL'.
ECHO 1.2.10 ; Mainitance on 'update_search-1.2.8' 
ECHO 1.2.09 ; Updated 'update_search-1.2.8', Minor Adjustments 
ECHO 1.2.08 ; Fixed 'update_search-1.2.8' 
ECHO 1.2.07 ; Created Changelog
ECHO 1.2.06 ; Created exi BETA
ECHO 1.2.05 ; unspecified
ECHO 1.2.04 ; unspecified
ECHO 1.2.03 ; unspecified
ECHO 1.2.02 ; unspecified
ECHO 1.2.01 ; unspecified
ECHO 1.1.09 ; unspecified
ECHO 1.1.08 ; unspecified
ECHO 1.1.07 ; unspecified
ECHO 1.1.06 ; unspecified
ECHO 1.1.05 ; unspecified
ECHO 1.1.04 ; unspecified
ECHO 1.1.03 ; unspecified
ECHO 1.1.02 ; unspecified
ECHO 1.1.01 ; unspecified
ECHO 1.0.09 ; unspecified
ECHO 1.0.08 ; unspecified
ECHO 1.0.07 ; unspecified
ECHO 1.0.06 ; unspecified
ECHO 1.0.05 ; unspecified
ECHO 1.0.04 ; unspecified
ECHO 1.0.03 ; unspecified
ECHO 1.0.02 ; unspecified
ECHO 1.0.01 ; unspecified
ECHO 1.0.00 ; DevConsle Created
ECHO ]
echo ]
echo ]
pause
cls
goto start

:terminal
echo ...................................................
echo ENTRY [TERMINAL] (%username%) %time%>> log.txt
cls
title TERMINAL [DevConsole]
color 05
echo RUN TERMINAL
echo Loading.
ping localhost -n 3 >nul
cls
echo Loading..
ping localhost -n 3 >nul
cls
echo Loading...
ping localhost -n 3 >nul
cls
::set /p username= type "%userprofile%\Documents\DevConsole-main\0_username"
echo ...................................................
echo LOG-IN - Skip 'N' :: Change Username 'Y' :: QUIT 't'
echo Current Username: %username%
echo ...................................................
set /p cho=~$ 
echo ...................................................
if %cho%==N goto terminal2
if %cho%==Y goto terminal_user
if %cho%==n goto terminal2
if %cho%==y goto terminal_user
if %cho%==t goto start
echo Invalid choice.
goto terminal


:terminal_user
echo New Username:
set /p username= Username : 
echo %username%> 0_username
goto terminal2

:terminal2
echo ENTRY [TERMINAL2] (%username%) %time%>> log.txt
echo Compliling Terminal...
ping localhost -n 5 >nul
cls
echo ..............................................
echo {- Back 't'    [] TERMINAL []       '?' Help-}
echo ______________________________________________
echo TERMINAL 1.0.1 /// %username%
echo : : : : : : : :
echo : : : : :
echo : :
echo ___
set /p cho=~$ !ACCESS DENIED! /
echo ..............................................

if %cho%==t goto start
echo Invalid choice.
goto terminal2
::End Batch File 
:end
color 08