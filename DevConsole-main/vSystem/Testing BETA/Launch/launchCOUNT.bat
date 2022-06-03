@echo off
title LAUNCH INTERFACE 
::Start Set
set notif=None
set pass=false
set MYuser=root
set MYpath=main
set MYid=0
set MYcredit=0
set MYemail=-
set MYrole=Default
set pathSet=Check
set guiSet=Check
set sysSet=Check
set conSet=Check
set logSet=Check
set v1Set=Check
set v2Set=Check
set v3Set=Check
set dcSet=Check
set A1=#
set A2=#
set A3=#
set A4=#
set A5=#
set A6=#
set A7=#
set A8=#
set A9=#
set B1=#
set B2=#
set B3=#
set B4=#
set B5=#
set B6=#
set B7=#
set B8=#
set B9=#
set C1=#
set C2=#
set C3=#
set C4=#
set C5=#
set C6=#
set C7=#
set C8=#
set C9=#
set E1=#
set E2=#
set E3=#
set E4=#
set E5=#
set E6=#
set E7=#
set E8=#
set E9=#
set F1=#
set F2=#
set F3=#
set F4=#
set F5=#
set F6=#
set F7=#
set F8=#
set F9=#
set G1=#
set G2=#
set G3=#
set G4=#
set G5=#
set G6=#
set G7=#
set G8=#
set G9=#
set H1=#
set H2=#
set H3=#
set H4=#
set H5=#
set H6=#
set H7=#
set H8=#
set H9=#
set I1=#
set I2=#
set I3=#
set I4=#
set I5=#
set I6=#
set I7=#
set I8=#
set I9=#
goto mainInterface
:mainInterface 
set MYpath=main
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Interface                                              ::System Configuration  :: System Check
echo :  ---------                                              : Time   : %time%       : user   : %username%  
echo :                                                         : Date   : %date%       : eLvl   : %errorLevel%
echo :                                                         ``````````````````````  :...............:
echo :                                                         : Credits :%MYcredit%   ::   Set Check   
echo                                                           ``````````````````````` :pathSet : %pathSet%
echo                                                           ::Profile Status        :guiSet  : %guiSet%
echo                                                           : User   : %MYuser%     :sysSet  : %sysSet%
echo                                                           : Role   : %MYrole%    :conSet  : %conSet%
echo                                                           ``````````````````````` :logSet  : %logSet%
echo                                                                                   :v1Set   : %v1Set%
echo                                                                                   :v2Set   : %v2Set%
echo                                                                                   :v3Set   : %v3Set%
echo                                                                                   :dcSet   : %dcSet%
echo _________                                                                         `````````````````
echo %A1%%B1%%C1%%D1%%E1%%F1%%G1%%H1%%I1%:
echo %A2%%B2%%C2%%D2%%E2%%F2%%G2%%C2%%I2%:
echo %A3%%B3%%C3%%D3%%E3%%F3%%G3%%C3%%I3%:
echo %A4%%B4%%C4%%D4%%E4%%F4%%G4%%C4%%I4%:
echo %A5%%B5%%C5%%D5%%E5%%F5%%G5%%C5%%I5%:
echo %A6%%B6%%C6%%D6%%E6%%F6%%G6%%C6%%I6%:
echo %A7%%B7%%C7%%D7%%E7%%F7%%G7%%C7%%I7%:
echo %A8%%B8%%C8%%D8%%E8%%F8%%G8%%C8%%I8%:
echo %A9%%B9%%C9%%D9%%E9%%F9%%G9%%C9%%I9%: 
type notif.txt
echo .
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
goto mainInterfaceINPUT
:mainInterfaceLOCKDOWN
set MYpath=LOCKDOWN
set /p input=%MYuser%@%MYpath%:~$	
if %input%==exit goto exit
ECHO UNAVAILABLE - Auto-Response: Lockdown is active.
goto mainInterfaceLOCK
:mainInterfaceINPUT
if "%lock.interface%" == "true" goto mainInterfaceLOCK 
set /p input=%MYuser%@%MYpath%:~$ 

if %input%==display goto mainInterface

if %input%==signin goto signin

if %input%==settings goto settings
if %input%==devsettings goto developersettings

if %input%==notifcreate goto notifcreate
if %input%==create_notif goto notifcreate
if %input%==createnotif goto notifcreate

if %input%==lock.signin goto lock.signin
if %input%==lock.notif goto lock.notif
if %input%==lock.interface goto lock.interface

if %input%==bal goto EXcreditbalance
if %input%==credits goto EXcreditbalance

if %input%==markA1 goto A1_mark
if %input%==resetA1 goto A1_reset
if %input%==scarA1 goto A1_scar
if %input%==markA2 goto A2_mark
if %input%==resetA2 goto A2_reset
if %input%==scarA2 goto A2_scar
if %input%==markA3 goto A3_mark
if %input%==resetA3 goto A3_reset
if %input%==scarA3 goto A3_scar
if %input%==markA4 goto A4_mark
if %input%==resetA4 goto A4_reset
if %input%==scarA4 goto A4_scar
if %input%==markA5 goto A5_mark
if %input%==resetA5 goto A5_reset
if %input%==scarA5 goto A5_scar
if %input%==markA6 goto A6_mark
if %input%==resetA6 goto A6_reset
if %input%==scarA6 goto A6_scar
if %input%==markA7 goto A7_mark
if %input%==resetA7 goto A7_reset
if %input%==scarA7 goto A7_scar
if %input%==markA8 goto A8_mark
if %input%==resetA8 goto A8_reset
if %input%==scarA8 goto A8_scar
if %input%==markA9 goto A9_mark
if %input%==resetA9 goto A9_reset
if %input%==scarA9 goto A9_scar

if %input%==help goto help
if %input%==help.login goto help.login
if %input%==help.login.1 goto help.login
if %input%==help.signin goto help.login
if %input%==help.signin.1 goto help.login

if %input%==test1 goto load1

if %input%==cls goto cls
if %input%==exit goto exit

goto mainInterfaceINPUT

:mainInterfaceLOCK
echo mainInterfaceLOCK Enabled.
set MYpath=LOCK
echo mainInterface Locked therfore mainInterfaceINPUT isn't possible. (10 delay)
ping localhost -n 10 >nul
if "%lock.interface%" == "false" goto mainInterface
goto mainInterfaceLOCK
:ping
ECHO Ping suscess!
pause
cls
goto mainInterface

:signin
ECHO ==========
ECHO ==========
ECHO  SIGN IN
ECHO ==========
set MYpath=profile
set pass=false
if "%lock.signin%" == "true" goto signinLOCK
ECHO User:
set /p MYuser=%MYuser%@%MYpath%:~$/User: 
ECHO Username [MYuser] set as '%MYuser%'.
ECHO Identification Pin (4 Digits):
color 0
set /p MYid=%MYuser%@%MYpath%:~$/Identification: 
ECHO Username [MY] set as '%MYid%'.
set MYrole=Member 
cls
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "reala" goto signinMYid
if "%MYuser%" == "guest" goto signinMYid
goto mainInterface

:signinMYid
if not "%MYid%" == "9628" goto mainInterface
set pass=true
set MYrole=*Developer*
echo PERMISSIONS ACTIVE.
goto mainInterface

:signinLOCK
echo signinLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT

:notifcreate
set MYpath=notifEDIT
if "%MYuser%" == "root" echo "/ / / ERROR: Default 'MYuser' term."
if "%MYuser%" == "root" goto error

if not "%pass%"=="true" goto error



ECHO ==========
ECHO ==========
ECHO NOTIF EDIT
ECHO ==========
if "%lock.notif%" == "true" goto notifcreateLOCK
set /A notifnumberrandom=%RANDOM% * 1000 / 32768 + 1
ECHO NOTIFICATION NUMBER [%notifnumberrandom%] 
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO For security reasons, computer information will
ECHO be stored on this notification but will not be
ECHO shown publicly. Below will be the information
ECHO collected.
ECHO USER                [%username%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
ECHO By entering your notification number below, you
ECHO agree to all the information that will be gathered
ECHO and stored.
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==%notifnumberrandom% goto notifcreate1
if %input%==t goto mainInterface

cls
ECHO INVALID NOTFICATION NUMBER.
goto notifcreate
:notifcreate1
ECHO ENTER TITLE:
set /p notiftitle=%MYuser%@%MYpath%:~$/Title: 
set /p notifcontext=%MYuser%@%MYpath%:~$/Content: 
echo ==========
echo   ALERT 
echo ==========
echo Are you sure you want to post notification? [Y\N]
set /p input=%MYuser%@%MYpath%:~$/CONFIMATION: 
if %input%==y goto notifcreate2
if %input%==Y goto notifcreate2
if %input%==n goto mainInterface
if %input%==N goto mainInterface
ECHO Invalid Choice (Required to restart).
goto notifcreate1
:notifcreate2
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%" > notif.txt
echo NOTIF %notifnumberrandom% :: [%MYuser%{%MYrole%}(%username%)] - [C: %computername%] - [(%notiftitle%)"%notifcontext%"] >> notifdata.txt
set notif=NOTIF %notifnumberrandom% :: [%notiftitle%] "%notifcontext%"
ECHO SUSSESFULLY CREATED!
goto mainInterface
:notifcreateLOCK
echo notifcreateLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT

:settings
set MYpath=settings
ECHO ==========
ECHO ==========
ECHO  SETTINGS
ECHO ==========
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } PUBLIC INFORMATION {
ECHO USER                [%MYuser%]
ECHO DATE/TIME           [%date% / %time%]
ECHO ____________________
ECHO } PERSONAL INFORMATION {
ECHO PC USER             [%username%]
ECHO EMAIL               [%MYemail%]
ECHO COMPUTER NAME       [%computername%]
ECHO ------------------------------------------------
goto BGappcheck
:developersettings
set MYpath=devsettings
if not "%pass%"=="true" goto error
ECHO ==========
ECHO ==========
ECHO DEVSETTING
ECHO ==========
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
tree
echo TO CHANGE INFORMATION, CONTACT alpamartin2007@gmail.com
echo } APPLICATION STATUS {
ECHO [%devconsolecheck%] DevConsole             
ECHO [%devconsolelitecheck%] DevConsole LITE           
ECHO [%devconsolesetupcheck%] DevConsole_setup
ECHO [%logcheck%] log
ECHO [%log1check%] log1
ECHO [%log2check%] log2
ECHO [%log3check%] log3
ECHO ____________________
ECHO } cmd DevConsole-main {
cd C:\Users\%username%\Downloads\DevConsole-main\DevConsole-main
dir
ECHO ------------------------------------------------
pause
goto mainInterfaceINPUT
::CORDINATE START

:A1_mark 
set A1=@
cls
goto mainInterface
:A1_reset
set A1=#
cls
goto mainInterface
:A1_scar 
set A1=X
cls
goto mainInterface

:A2_mark 
set A2=@
cls
goto mainInterface
:A2_reset
set A2=#
cls
goto mainInterface
:A2_scar 
set A2=X
cls
goto mainInterface

:A3_mark 
set A3=@
cls
goto mainInterface
:A3_reset
set A3=#
cls
goto mainInterface
:A3_scar 
set A3=X
cls
goto mainInterface

:A4_mark 
set A4=@
cls
goto mainInterface
:A4_reset
set A4=#
cls
goto mainInterface
:A4_scar 
set A4=X
cls
goto mainInterface

:A5_mark 
set A5=@
cls
goto mainInterface
:A1_reset
set A5=#
cls
goto mainInterface
:A1_scar 
set A5=X
cls
goto mainInterface

:A6_mark 
set A6=@
cls
goto mainInterface
:A6_reset
set A6=#
cls
goto mainInterface
:A6_scar 
set A6=X
cls
goto mainInterface

:A7_mark 
set A7=@
cls
goto mainInterface
:A7_reset
set A7=#
cls
goto mainInterface
:A7_scar 
set A7=X
cls
goto mainInterface

:A8_mark 
set A8=@
cls
goto mainInterface	
:A8_reset
set A8=#
cls
goto mainInterface
:A8_scar 
set A8=X
cls
goto mainInterface

:A9_mark 
set A9=@
cls
goto mainInterface
:A9_reset
set A9=#
cls
goto mainInterface
:A9_scar 
set A9=X
cls
goto mainInterface




::===================================
::HELP SECTION START
::===================================

:help
cls
set MYpath=help
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo // 
echo Format: help.[phrase/number].[section [0]]
echo ------------------------------------------------
echo ERROR - DID NOT INCLUDE PHRASE OR NUMBER AT END.
echo Note: Enter key words such as 'login' or 'support'.
goto mainInterfaceINPUT



:help.login
cls
set MYpath=help.login
echo =============================
echo HELP / TROUBLESHOOT / SUPPORT
echo =============================
echo //%input%
echo ------------------------------------------------
echo cmdPath: [input] - User (INPUT) - Identification (PIN)
echo ____________________
echo {STEPS}
echo 1. Enter 'signin'.
echo 2. Enter Username [MYuser].
echo 3. Enter Identification Pin (4 Digits) [MYid].
pause
goto mainInterfaceINPUT


:lock.interface
if not "%pass%" == "true" goto error
set lock.interface=true
set MYpath=LOCKED
echo lock.interface ON
goto mainInterface
:lock.notif
if not "%pass%" == "true" goto error
set lock.notif=true
set MYpath=LOCKED
echo lock.notif ON
goto mainInterface
:lock.signin
if not "%pass%" == "true" goto error
set lock.signin=true
set MYpath=LOCKED
echo lock.signin ON
goto mainInterface

:unlock.interface 
if not "%pass%" == "true" goto error
set lock.interface=false
set MYpath=UNLOCKED
echo lock.interface OFF
goto mainInterface

:BGappcheck
IF EXIST DevConsole.bat (
    set devconsolecheck=O
) ELSE (
    set devconsolecheck=X
)
IF EXIST DevConsole-ex.bat (
    set devconsolelitecheck=O
) ELSE (
    set devconsolelitecheck=X
)
IF EXIST DevConsole_setup.bat (
    set devconsolesetupcheck=O
) ELSE (
    set devconsolesetupcheck=X
)
IF EXIST log.txt (
    set logcheck=O
) ELSE (
    set logcheck=X
)
IF EXIST log1.txt (
    set log1check=O
) ELSE (
    set log1check=X
)
)IF EXIST log2.txt (
    set log2check=O
) ELSE (
    set log2check=X
)
)IF EXIST log3.txt (
    set log3check=O
) ELSE (
    set log3check=X
)
goto developersettings
:error
echo ERROR :: %time% [cmdPath(%MYpath%)][%MYuser%{%MYrole%}(%username%)] >> log.txt

echo --------------------
echo %MYuser% [%MYpath%] 
echo     %time%
echo --------------------
echo Error / Access Denied
goto mainInterfaceINPUT

:EXcreditbalance
set MYpath=EXbal-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #001
echo _______________
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo _______________
echo  } TRANSFER {
echo :::
echo [%EXCtransfernumber%] %EXtransferstatus%
echo ~ %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% 
echo ---- Transfer Status : %EXtransferstatus%
echo ---- Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo } SIGNIN LOG {
echo [123:456.78 / 05/18/2022] Joe - Deposited 12 credits
echo [234:567.89 / 05/16/2022] Joe - Traded 9 credits to Bob
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT

:EXcreditbalance1
set MYpath=EXbal1-default
if "%MYuser%" == "root" goto error

set EXcredit=283
set EXuser1=Joe
set EXuser2=Tom
set EXtransfertotal=32
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
::This is an example of a Credit balance accocunt.
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo EXAMPLE #002
echo _______________
echo } DASHBOARD {
echo CREDITS : %EXcredit%
echo ON HOLD : %EXtransfertotal%
echo TAX %   : %EXtax%
echo _______________
echo  } TRANSFER {
echo ...............
echo ::: [%EXCtransfernumber%] %EXtransferstatus%
echo SENDER/RECIEVER : %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo --- Amount: %EXtransfertotal% without tax.
echo . . . . .
echo Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT
:credit.deposit
:credit.withdraw
:credit.trade


:load1
set MYpath=load1
if "%MYuser%" == "root" goto error 
cls
echo Load: .--
ping localhost -n 3 >nul
cls
echo Load: -.-
ping localhost -n 3 >nul
cls
echo Load: --.
goto load1




:exit
set MYpath=exit
cd \%username%\Downloads\DevConsole-main\DevConsole-main\vSystem\Testing BETA\Launch
echo --------------------
echo %MYuser% [%errorLevel%%] 
echo     %time%
echo --------------------
echo Console Terminated.