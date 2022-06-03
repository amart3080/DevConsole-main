@echo off
goto appstart
:appstart
color 03
set /a x=0
set app=Device ID Scan
set appversion=1.0.6
set appstatus=Neutral
mode con:cols=50 lines=35
title %app% %appversion% 
set /A parameter=1000

:start
cls
color 03
set /a x=0
echo ================================
echo ================================
echo  {Device Identification Scan}
echo [%appversion%] [%computername%]
echo ================================
echo  Set Parameter : %parameter%
echo ================================
set /p inputkey=%computername%:~$ 
if %inputkey%==setparameter goto setparameter
goto inputcheck

:setparameter
echo - - - - - - -
echo Set Parameter
echo - - - - - - - 
set /p parameter=Parameter Number:~$ 
cls
goto start

:inputcheck
set time1=%time%
if %inputkey% gtr %parameter% (
  set error=Greater than set parameter.
  goto inputfinderror
)
if %inputkey% lss 0 (
  set error=Less than set parameter.
  goto inputfinderror
)
goto inputfindloopcount

:inputfindloopcount
if %x% leq %parameter% (
  set cfindnum=%x%
  set /a x+=1
  goto :inputfindloop
)
if %x% geq %parameter% (
  set cfindnum=%x%
  set /a x+=1
  goto :inputfindloop
)
goto start
:inputfindloop
set appstatus=Active

set /A cfindid=%RANDOM% * 100000000 / 32768 + 1
set /A cfindmainnum=%random% * %parameter% / 32768 + 1
echo %cfindnum% : [%cfindmainnum%] :{%cfindid%} 
if %inputkey% equ %cfindmainnum% goto inputfound
goto inputfindloopcount

:inputfound
color 02
set random1=%random%
set random2=%random%
set random3=%random%
echo = = = = =
echo DIS FOUND
echo = = = = =
echo Results (%inputkey%):
echo  - Attempts; %cfindnum% / %parameter%
echo  - Attempt ID; %cfindid%
echo  - Time Started; %time1%
echo  - Time Finished; %time%
echo - - - - - 
echo DIS Search Code [%random1%.%random2%.%random3%]
pause 
cls
goto start

:inputfinderror
if "%errorpass%" == "true" goto inputfindloopcount
color C 
echo = = = = = = = = = = = = = = = = 
echo         { ! ERROR ! }
echo %error%
echo - - - - -
echo Continue?
echo = = = = = = = = = = = = = = = = 
pause
goto start

:exit
echo ================================
echo     {DIS Console Terminated}
echo [%time%] [%computername%]
echo ================================
exit

