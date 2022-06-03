@ECHO OFF
title DevConsole BETA 
ECHO Loading compenents...
echo DevConsle Opened %time%>> log1.txt
timeout 1
color 06
ECHO Launching...
timeout 0.5
cls
mode con:cols=90 lines=30
set version_console="1.3.0"
cls
goto REDIRECT


:REDIRECT
ECHO ======================================================
ECHO /// IMPORTANT INFORMARTION [log_1.3.02]
ECHO ______________________________________________________
ECHO https://github.com/amart3080/DevConsole-LITE 
ECHO ______________________________________________________
goto start

:start

color 03
title DevConsole BETA 
ECHO =DevConsle=
ECHO  BETA 1.3.02 Input Command:

::Input Console Commands 
set /p input= [%time%] : 

if %input%==help goto help
if %input%==close_all goto close_all
if %input%==admin_pass goto admin_pass
if %input%==admin_info goto admin_info
if %input%==portal goto portal
if %input%==restart_app goto restart_app
if %input%==cur_tasks goto cur_tasks
if %input%==cur_time goto cur_time
if %input%==cur_stats goto cur_stats 
if %input%==pers_config goto pers_config
if %input%==calc goto calculator
if %input%==exi goto exi
if %input%==c.t.run goto c.t.run
if %input%==c.t.open goto c.t.open
if %input%==c.t.end goto c.t.end
if %input%==log1 goto Up_log1
if %input%==log11 goto log11
if %input%==clear goto clear
if %input%==update_search-1.2.8 goto update_search-1.2.8
if %input%==auto_userID goto auto_update_user_list
if %input%==terminal goto terminal
if %input%==edit ProfileTemplate 

if %input%==log_1.3.02 goto log_1.3.02

echo Invalid choice.

goto start


::Command Functions

:help
echo ==========================================================
echo ==========================================================
echo -Help! Opened>> log1.txt
color 08
ECHO All commands are listed below:
ECHO ================Console=================
ECHO help ; List of all commands
ECHO close_all ; Close all .bat applications.
ECHO admin_pass ; Leads to devoloper portal log1-in.
ECHO admin_info ; Info for and about admins.
ECHO portal ; log1-In Portal.
ECHO restart_app ; Restart DevConsole.
ECHO cur_tasks ; The current tasks that are running.
ECHO cur_time ; The current time.
ECHO cur_stats ; All APP- (.bat) stats.
ECHO auto_userID ; Automated User List
ECHO ================Personal================
ECHO pers_config ; Console Settings
ECHO pers_locker ; Personal password protected locker.
ECHO ==================FTC===================
ECHO c.t.run ; Runs FTC Program.
ECHO c.t.open ; Opens FTC 'Java' Folder.
ECHO c.t.stop ; Stops FTC Program.
ECHO ================Add-In==================
ECHO clear ; Clears Console.
ECHO calc ; A basic calculator.
ECHO log1 ; Displays Changelog1
ECHO log11 ; Console History, Support Codes, and Crash log1s.
ECHO ================TERMINAL==================
ECHO terminal ; Launches Terminal
ECHO  - help ; Opens Terminal Directory
ECHO  - stats ; Console Stats


timeout 5
ECHO Checking network connection...
ECHO Contacting server networks...
ECHO Loading Stats...
timeout 5
echo -Help ~ FileSearch-ALL! GoTo>> log1.txt
goto FileSearch-ALL

:close
color 08
goto end

:close_all
color 08
echo -close_all Opened>> log1.txt
ECHO Closing all!

start RunLockerEncryp.bat
start LockerEncryption.bat
start AppRestart.bat
start Setup_Intro.bat
start taskkill /f /t /im "RunLockerEncryp.bat"
start taskkill /f /t /im "LockerEncryption.bat"
start taskkill /f /t /im "AppRestart.bat"
start taskkill /f /t /im "DevConsole.bat"
start taskkill /f /t /im "Setup_Intro.bat"
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:admin_info
color 08
echo -admin_info Opened>> log1.txt
echo Nothing here!
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:admin_pass
goto DeveloperNumber1
:admin_pass1
echo -admin_pass Opened>> log1.txt
cls
ECHO ======Admin Portal======
ECHO 1: Secure Locker
ECHO 2: Password Encryption
ECHO 3: DevNote
ECHO 4: Mini-Control
ECHO 5: Developer Settings
ECHO ======Other======
ECHO 6: Directory
ECHO 7: log1-Out
set/p "cho=>"

if %cho%==1 goto pers_locker
if %cho%==2 goto pas_encryp
if %cho%==3 goto DevNote
if %cho%==4 goto Mini-Control
if %cho%==5 goto Developer_set
if %cho%==6 goto help
if %cho%==7 goto log1_out
if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:log1_out
goto start 

:portal
color 08
echo -portal Opened>> log1.txt
ECHO Enter Personal Prefrence...
ECHO 1: LockerEncryption
set/p "cho=>"

if %cho%==1 goto pers_locker

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:restart_app
color 08
echo -restart_app Opened>> log1.txt
ECHO Restarting...
goto end
ECHO Restarting...

:cur_stats
color 08
echo -cur_stats>> log1.txt
goto FileSearch-ALL

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:cur_tasks
color 08
echo -cur_tasks Opened>> log1.txt
ECHO ======Task Control======
ECHO Coming Soon...
start taskmgr
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:cur_time
color 08
echo -cur_time Opened>> log1.txt
ECHO Date: %date% | Time: %time%
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:: FTC Commands /// 

:c.t.run
color 08
start FTCrobot
IF EXIST "FTCrobot" (
	color 04
    ECHO 'main.java' found.
) ELSE (
	color 03
    ECHO 'main.java' unknown.
	timeout 5 
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:c.t.open
color 08
start %SystemRoot%\explorer.exe "E:\FTC\TeamCode"
IF EXIST "main.java" (
	color 04
    ECHO 'main.java' found.
) ELSE (
	color 03
    ECHO 'main.java' unknown.
	timeout 5 
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:c.t.stop
color 08

IF EXIST "main.java" (
	color 04
    ECHO 'main.java' found.
) ELSE (
	color 03
    ECHO 'main.java' unknown.
	timeout 5 
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:exi
color 08
echo -exi Opened>> log1.txt
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
:log1
echo -log1 Opened>> log1.txt
ECHO 1: Up_log1
ECHO 2: log11 - unavaileable
set/p "cho=>"

if %cho%==1 goto Up_log1
if %cho%==2 goto log11
if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:log11
goto DeveloperNumber
:log12
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
goto start

ECHO Loading 'log1.txt'
start log1.txt
echo ]
echo ]
echo ]
echo 1: Delete log1 
echo 2: Send Report MAINTAINANCE
pause
if %cho%==1 echo log1DetailDelete> log1.txt
if %cho%==2 goto maintainance
if %cho%==t goto start
pause
::In-console Command 

:pers_config
Echo SETTINGS
echo Server Automated Response: The following settings are not yet ready for the public. Controls will not work.
echo 1: log1 Settings
echo 2: Personal Password Reset
echo 3: Profile 
echo 3: Restart Application
echo 4: Factory Reset

set/p "cho=>"

if %cho%==1 goto maintainance
if %cho%==2 goto maintainance
if %cho%==3 goto maintainance
if %cho%==4 goto maintainance
if %cho%==5 goto maintainance
if %cho%==t goto start

echo Invalid choice.
goto CONFIRM




:pers_locker
echo -pers_locker Opened>> log1.txt
start LockerEncryption.bat

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:calculaor
echo -calculator Opened>> log1.txt
start calculator.bat

timeout 10
goto Warning1
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:pas_encryp
echo -pas_encryp Opened>> log1.txt
start pas_encryp.bat

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:Warning1
ECHO Do NOT download or open any file from a unknown source online.
color 04
timeout 3
color 00
goto start

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

::In-Console Search Functions

:FileSearch-AppRestart
ECHO Loading all files...
ECHO Searching...


IF EXIST "AppRestart.bat" (
	color 04
    ECHO >>>'AppRestart.bat' found.
) ELSE (
	color 03
    ECHO >>>'AppRestart.bat' unknown.
	echo -FileSearch-AppRestart Failed #101>> log1.txt
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:FileSearch-LockerEncryption
IF EXIST "LockerEncryption.bat" (
	color 04
    ECHO >>>'LockerEncryption' found.
) ELSE (
	color 03
    ECHO >>>'LockerEncryption' unknown.
	echo -FileSearch-LockerEncryption Failed #101>> log1.txt
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:FileSearch-close_all
IF EXIST "close_all.bat" (
	color 04
    ECHO >>>'close_all.bat' found.
) ELSE (
	color 03
    ECHO >>>'close_all.bat' unknown.
	echo -FileSearch-close_all Failed #101>> log1.txt
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:FileSearch-DevConsole
IF EXIST "DevConsole.bat" (
	color 04
    ECHO >>>'DevConsole.bat' found.
) ELSE (
	color 03
    ECHO >>>'DevConsole.bat' unknown.
	echo -FileSearch-DevConsole Failed #101>> log1.txt
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:FileSearch-calculator
IF EXIST "calculator.bat" (
	color 04
    ECHO >>>'calculator.bat' found.
) ELSE (
	color 03
    ECHO >>>'calculator.bat' unknown.
	echo -FileSearch-calculator Failed #101>> log1.txt
)

set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

:FileSearch-pas_encryp
IF EXIST "pas_encryp.bat" (
	color 04
    ECHO 'pas_encryp.bat' found.
) ELSE (
	color 03
    ECHO 'pas_encryp.bat' unknown.
	echo -FileSearch-pas_encryp Failed #101>> log1.txt
)
echo Invalid choice.
goto CONFIRM
:FileSearch-ALL
ECHO Loading all files...
ECHO Searching...

::MAINTAINANCE CURRENTLY : REDERCTION REQUIRED

goto maintainance
IF EXIST "AppRestart.bat" (
	color 04
    ECHO >>>'AppRestart.bat' found.
) ELSE (
	color 03
    ECHO >>>'AppRestart.bat' unknown.
	echo -FileSearch-AppRestart Failed #101>> log1.txt
)


IF EXIST "LockerEncryption.bat" (
	color 04
    ECHO >>>'LockerEncryption' found.
) ELSE (
	color 03
    ECHO >>>'LockerEncryption' unknown.
	echo -FileSearch-LockerEncryption Failed #101>> log1.txt
)


IF EXIST "close_all.bat" (
	color 04
    ECHO >>>'close_all.bat' found.
) ELSE (
	color 03
    ECHO >>>'close_all.bat' unknown.
	echo -FileSearch-close_all Failed #101>> log1.txt
)


IF EXIST "DevConsole.bat" (
	color 04
    ECHO >>>'DevConsole.bat' found.
) ELSE (
	color 03
    ECHO >>>'DevConsole.bat' unknown.
	echo -FileSearch-DevConsole Failed #101>> log1.txt
)


IF EXIST "calculator.bat" (
	color 04
    ECHO >>>'calculator.bat' found.
) ELSE (
	color 03
    ECHO >>>'calculator.bat' unknown.
	echo -FileSearch-calculator Failed #101>> log1.txt
)


IF EXIST "pas_encryp.bat" (
	color 04
    ECHO >>>'pas_encryp.bat' found.
) ELSE (
	color 03
    ECHO >>>'pas_encryp.bat' unknown.
	echo -FileSearch-pas_encryp Failed #101>> log1.txt
)

pause
ECHO Closing in 30 seconds...  [%time%]
color 01
timeout 30
echo -FileSearch-ALL ~ start! Closed f> log1.txt
cls
goto start
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.
goto CONFIRM

::Special Atrributes

::THIS IS FOR log11
:DeveloperNumber
set /p input= Developer Num. : 

if %input%==308 goto DN_308
if %input%==1 goto DN_1
if %input%==2 goto DN_2
if %input%==3 goto DN_3
if %input%==4 goto DN_4

:DN_308
set /p input= Developer ID   :
if %input%==9628 goto log12
:DN_1
set /p input= Developer ID   :
if %input%==3855 goto log12
:DN_2
set /p input= Developer ID   :
if %input%==3235 goto log12
:DN_3
set /p input= Developer ID   :
if %input%==3726 goto log12
:DN_4
set /p input= Developer ID   :
if %input%==8005 goto log12

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
:Developer_set

ECHO DEVELOPER SETTINGS
ECHO [1] DevNote Changelog1
ECHO [2] log1 Editor
ECHO [3] -
ECHO [4] -
ECHO [5] Console ABOUT 

set /p input= Option : 
if %input%==1 goto DV_1
if %input%==2 goto DV_2
if %input%==3 goto Developer_set
if %input%==4 goto Developer_set
if %input%==5 goto DV_5

:DV_1
set /p DevNote_change="Update DevNote:"
echo.
choice /m "Would you like to update DevNote and update it to this: %DevNote_change%?"
echo Updating Server DevNote...
echo %DevNote_change%>> log1.txt
ping localhost -n 4 >nul
cls
echo Server Upload : DevNote.txt : UPDATED
goto admin_pass
:DV_2

:DV_5



:a
set /p a="Choose a Username"
set /p b="Choose a Password"
echo.
choice /m "Are you sure you would like your Username to be %a% and your Password to be %b%?"
if errorlevel 2 goto a
set q="if %%u%% equ %a% if %%p%% equ %b% goto in"
for /f "tokens=*" %%I in (%q%) do set m=%%I
echo %m% >>C:\[path]\log1in.bat


:DevNote
echo Type your text here.

:DevNote - top

set /p boompanes=

pause

echo %boompanes%>> DevNote.txt

timeout 10
goto start
:clear
color 08
ECHO Clearing
timeout 1.5
cls
goto start

:loading
echo Loading.
ping 127.1 1>nul 2>&1
color 04
ECHO Error///
set/p "cho=>"

if %cho%==t goto start

echo Invalid choice.

::Set-Functions

set /p version_consle="1.0.9"
set /p change_log1="%Up_log1%"
set /p UpdateFolder=< %pathtotextfile%\textfile.txt
set location=version_consle

::Changelog1
:Up_log1
ECHO UPDATE log1S
ECHO ]
ECHO ]
ECHO ]	
ECHO ==============================
type "%userprofile%\Documents\DevConsole-main\0_alert2"
ECHO ==============================
ECHO 1.3.02 ; launchCOUNT Replacement Process (log_1.3.02)
ECHO 1.3.01 ; launchCOUNT Released (Testing BETA)
ECHO 1.3.00 ; DevConsole Terminal Official BETA Released.
ECHO 1.2.14 ; Added /set. Added 'Developer_set' -Developer Settings-.
ECHO 1.2.13 ; Developer log1-In. Server IP/Network API update 'log11'.
ECHO 1.2.12 ; Added 'log1', 'log11', 'pers_config','pers_locker'. Mainitance on 'pers_config'.
ECHO 1.2.11 ; 'log1.txt' developed. Mainitance on 'FileSearch-ALL'.
ECHO 1.2.10 ; Mainitance on 'update_search-1.2.8' 
ECHO 1.2.09 ; Updated 'update_search-1.2.8', Minor Adjustments 
ECHO 1.2.08 ; Fixed 'update_search-1.2.8' 
ECHO 1.2.07 ; Created Changelog1
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


::LOG SECTIONS
:log_1.3.02
echo ==========================
echo ========================== 
echo   UPDATE LOG [1.3.02]
echo ==========================
echo Prior to the released of
echo update 1.3.0, we announced 
echo that we would add advancm-
echo ments to DevConsole. This 
echo has changed.
echo ...
echo 'launchCOUNT' will be 
echo taking the place of DevCo-
echo nsle. 
echo DevConsole will soon be 
echo discontinuted and replaced
echo by 'launchCOUNT'.
echo Date till Effect --/--/22
echo Article Released 05/11/22 
echo ==========================
pause 
goto start

:NewFile_log1
pause
if not exist pers_info echo NO

:open_1
::THIS CODE MUST STILL BE IMPROVED.
set /p ts_code="Troublshoot Code:"
echo.
choice /m "Run %ts_code%?"
if not exist log1.txt 
if not exist DevConsole_hub.bat 
if not exist DevNote.txt 
if not exist DevConsole_setup.bat 
if exist log1.txt echo 'log1.txt' found. [%time% | %date%]
if exist DevConsole_hub.bat echo 'DevConsole_hub.bat' found. [%time% | %date%]
if exist DevNote.txt echo 'DevNote.bat' found. [%time% | %date%]
if exist DevConsole_setup.bat echo 'DevConsole_setup.bat' found. [%time% | %date%]
pause


:update_search-1.2.8
ECHO Searching...
start UpdateSensor-1.2.8-DevRelease.txt
ECHO Please copy the content into 'UpdateSensorPORTAL'.
start UpdateSensorPORTAL.txt
ECHO ]
ECHO ]
ECHO ] 
ECHO PROCCESING REQUEST...
pause
ECHO Would you like to replace the current DevConsole!? Y/N

set/p "cho=>"

if %cho%==Y goto update_search_accept
if %cho%==N goto update_search_deny
pause
echo Invalid choice.
goto CONFIRM
cls
goto start

:update_search_accept
ECHO This will delete all your saved information.
timeout 10
start Popup-error.bat
goto exit

:update_search_deny
ECHO Automatically Updating...
md Update-DEV

timout .3
timout .3
timout .3
goto start

:auto_update_user_list
start auto_userID.bat
timeout 10
cls
goto  start

:Mini-Control
start Mini-Control.bat
cls
goto start

:VAC-Block
color 03
echo 'VAC-DevConsole.bat' Detected! >> log1.txt
echo You have been blocked by an administrator or your firewall corrupted the file - 'DevConsole'.
echo Please get an admin to assist you.
pause
set/p "cho=>"

if %cho%==20111430806221 goto start

echo Invalid choice.

pause

:maintainance
echo -MAINTAINANCE! Opened>> log1.txt
ECHO Oops! The system could not determine the code given. Please give this information to support or troubleshoot your system! 
echo -MAINTAINANCE! Loaded information`>> log1.txt
ECHO LATEST VERSION: 1.2.13
ECHO Server; 'FileSearch-ALL' NOT Responsive :error 000: .%time% ... %date% ... 
pause
echo -MAINTAINANCE! Closing f>> log1.txt
goto start


:terminal
echo ...................................................
echo ENTRY [TERMINAL] (%username%) %time%>> log1.txt
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
echo ===================================================
echo TERMINAL WILL BE SOON REPLACED BY 'launchCOUNT'.
echo ===================================================
echo ...................................................
echo log1-IN - Skip 'N' :: Change Username 'Y' :: QUIT 't'
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
echo ENTRY [TERMINAL2] (%username%) %time%>> log1.txt
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
set /p cho=~$ 
echo ..............................................

::///////TERMINAL DIRECTORY///////
if %cho%==help goto runTerm1
if %cho%==stats goto ConsoleStats
if %cho%==? goto runTerm1
if %cho%==t goto start
echo Invalid choice.
goto terminal2
:://///TERMINAL DIRECTOR ENDY/////

:runTerm1
echo ENTRY [runTerm1] (%username%) %time%>> log1.txt
cls
echo ..............................................
echo {- Back 't'    [] TERMINAL []       'X' Help-}
echo ______________________________________________
echo HELP 1.0.1 /// %username%
echo : : : : : :
echo + Developer
echo   + Development
echo	 + Variable List 
echo 	   - robotInterface.py 
echo		   - 
echo 	 - Development Plans
echo + Configuration
echo   + log1s
echo	 - log1 
echo	 - log11
echo     - log12
echo + Directory
echo   + DevConsole-main
echo		 -  File Directory []
echo	 - DevNote
echo		 - DevConsole (Student)
echo + Seperator
echo ==============================
echo ALERT! 
type "%userprofile%\Documents\DevConsole-main\0_alert1"
echo .
echo ==============================
echo ..............................................
echo ___
set /p cho=~$ 
echo ..............................................
if %cho%==t goto terminal
echo Invalid choice.
goto runTerm1


:ConsoleStats
echo < 't' CONSOLE_STATS 
echo =====================================
echo User;            :  %username%
echo Userprofile      : %USERPROFILE%
echo Time;            :  %time%
echo Date;            :  %date%
echo Last cho;        :  %cho%
echo ConsoleVersion;  :  %version_console%
echo Computer;        :  %computername%
echo Program Name;    :  %program%
echo WINDIR           :  %WINDDIR%
echo ---
echo Client Name;     :%ClientName%
echo COMSPEC;         :%COMSPEC%
echo Error #;         :%ERRORLEVEL%
echo ---
echo H Drive;         :%HOMEDRIVE%
echo H Path;          :%HOMEPATH%
echo H Share;         :%HOMESHARE%
echo L App Data;      :%LOCALAPPDATA%
echo Path; PATH
echo   + ext;         :%PATHEXT%
echo   + PSModule;    :%PSModulePath%
echo ---
echo Processor;
echo   + Architecture;:%PROCESSOR_ARCHITECTURE%
echo   + Archite 6432;:%PROCESSOR_ARCHITEW6432%
echo   + Identifier;  :%PROCESSOR_IDENTIFIER%
echo   + Level;       :%PROCESSOR_LEVEL%
echo   + Revision;    :%PROCESSOR_REVISION%
echo ---
echo end
pause
if %cho%==t goto terminal
echo Invalid choice.
goto ConsoleStats



::End Batch File 
:end
color 08