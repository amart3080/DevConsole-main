@echo off
setlocal EnableDelayedExpansion
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
echo Notifs Disabled.
echo NOTICE [YOU ARE RUNNING A CUSTOM TEST TERMINAL. SOME FEATURES WILL NOT BE AVAILABLE.]
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


if %input%==c.balance goto setcredit
if %input%==c.transfer goto credit.transfer

if %input%==EXbal goto EXcreditbalance
if %input%==EXcredits goto EXcreditbalance
if %input%==EXbal1 goto EXcreditbalance1
if %input%==EXcredits1 goto EXcreditbalance1


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
set MYrole=Developer
set MYcredit=20
echo PERMISSIONS ACTIVE.
goto mainInterface

:signinLOCK
echo signinLOCK Enabled.
set MYpath=LOCK
goto mainInterfaceINPUT

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
echo . . . . . 
echo NOTICE [YOU ARE USING A SPECIFIC TEST CONSOLE.]
echo . . . . .
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


:error
echo ERROR :: %time% [cmdPath(%MYpath%)][%MYuser%{%MYrole%}(%username%)] >> log.txt

echo --------------------
echo %MYuser% [%MYpath%] 
echo     %time%
echo --------------------
echo Error / Access Denied
goto mainInterfaceINPUT


::===========================
:: ++ CREDIT SYSTEM ++
::===========================
:setcredit
set MYpath=Edefaultroot
if "%MYuser%" == "root" goto error
set MYpath=Enofunds
set %MYpath% == credit.set
set Ctransfertotal=-
set Ctransferstatus=UNACTIVE
set Csentcheck=X
set Crecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
set creditcheck=O
goto credit.balance
:credit.balance
set MYpath=credit.bal
echo ===============
echo ===============
echo CREDIT BALANCE
echo ===============
echo %MYuser% Balance 
echo _______________
echo } DASHBOARD {
echo CREDITS : %MYcredit%
echo ON HOLD : %Ctransfertotal%
echo TAX %   : %Ctax%
echo _______________
echo  } TRANSFER {
echo ...............
echo ::: [%Ctransfernumber%] %Ctransferstatus%
echo SENDER/RECIEVER : %Cuser1% - %Cuser2%
echo --- Sent (%Csentcheck%)    Recieved (%Crecievedcheck%)
echo . . . . .
echo [Reciept #%Ctransfernumber%]
echo = = = = = = = = = = = = = = = 
echo %Cuser1%'s Credits :  %Ctransfertotal%
echo Discount [%Cdiscounttype%] : %Cdiscount%
echo Tax [%Ctax%] : %Ctransfertaxtotal%
ECHO GRAND TOTAL : %Ctransfertaxtotal%
echo . . . . .
echo Transfer [%Ctransfernumber%] Documeunt: transferdata.txt
echo :::
echo ;;Please report to support if you have any concerns.
echo ==============
echo ==============
echo Credit Commands
echo ==============
echo c.balance ; View credit balance, transfer information, etc.
echo c.transfer ; Transfer Dashboard.
echo c.send ; This command is not yet available.
echo c.request ; This command is not yet available.
goto mainInterfaceINPUT
:credit.transfer
set MYpath=creditcheckX
if "%creditcheck%" == "X" goto error
set MYpath=Edefaultroot
if "%MYuser%" == "root" goto error
set MYpath=transfer
set Csecurenetworkstatus=SECURE
echo ===============
echo ===============
echo CREDIT TRANSFER
echo ===============
echo   BETA TEST 
echo _______________
echo This page is not yet fully functional.
echo - - - - - - - - - -
echo + CREATE TRANSFER?
echo - - - - - - - - - -
set /p input=%Csecurenetworkstatus% - Y/N $ 
if %input%==Y goto credit.transfer1
if %input%==y goto credit.transfer1
if %input%==N goto credit.balance
if %input%==n goto credit.balance
echo INVALID INPUT.

:credit.transfer1
cls
echo ===============
echo ===============
echo CREDIT TRANSFER
echo ===============
echo _______________
echo Fill out the inputs below to start transfer.
echo - - - - - 
echo %MYuser%
echo - - - - -
set /p Ctransfertotal=%Csecurenetworkstatus% - Amount of Credits to trade : $ 
set /p Cuser2=%Csecurenetworkstatus% - Reciever UserTag : $ 
set Cuser1=%MYuser%
goto credit.balance

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
set EXdiscount=0
set EXtax=4
set EXtransferstatus=PENDING
set EXsentcheck=O
set EXrecievedcheck=X
set /A EXCtransfernumber=%RANDOM% * 100000000 / 32768 + 1
set /A EXCtransfertaxtotal=%EXtransfertotal% / %EXtax%
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
echo TAX %   : %EXtax% %
echo _______________
echo  } TRANSFER {
echo ...............
echo ::: [%EXCtransfernumber%] %EXtransferstatus%
echo SENDER/RECIEVER : %EXuser1% - %EXuser2%
echo --- Sent (%EXsentcheck%)    Recieved (%EXrecievedcheck%)
echo . . . . .
echo [Reciept #%EXCtransfernumber%]
echo = = = = = = = = = = = = = = = 
echo %EXuser1%'s Credits :  %EXtransfertotal%
echo Discount [%EXdiscounttype%] : %EXdiscount%
echo Tax : %EXCtransfertaxtotal%
ECHO GRAND TOTAL : %EXCtransfertotal% - %EXtax% 
echo . . . . .
echo Transfer [%EXCtransfernumber%] Documeunt: transferdata.txt
echo :::
echo ;;Please report to support if you have any concerns.
pause 
set MYpath=main
goto mainInterfaceINPUT


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