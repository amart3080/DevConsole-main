@ECHO OFF
title DevConsole Setup
echo DevConsole_setup.bat Opened %time%>> log3.txt
color 03
mode con:cols=30 lines=20
echo [DevConsole_setup.bat] Success 'mode' set! %time%>> log3.txt
set cv="1.0.2"
echo [DevConsole_setup.bat] Success 'set' set! %time%>> log3.txt
goto CP_main
cls 

::START HERE
:CP_main
cls
ECHO ____________________________
ECHO  \    / = user :%username%   
ECHO   \  /  = v -       
ECHO    \/   = cv   : %cv%
ECHO ____________________________
ECHO Control Panel   %time% 
ECHO ============================ 
ECHO      :VALID OPTION:
ECHO [1] Installation    
ECHO [2] Configuration     
ECHO [3] Help           
ECHO [4] Credits               
ECHO [5] Exit
ECHO ____________________________

set /p input= } 

if %input%==1 goto CP_1
if %input%==2 goto CP_2
if %input%==3 goto CP_main
if %input%==4 goto CP_3
if %input%==5 goto CP_4
pause
goto CP_main
exit

:CP_1
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :INSTALLATION:
ECHO   Select you prefrence:
ECHO [1] DevConsole 
ECHO [2] DevConsole_setup
ECHO [3] DevConsoleCMD
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_A1
if %input%==2 goto CP_A2
if %input%==3 goto CP_A3
pause
goto CP_main

:CP_A1
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :INSTALLATION:
ECHO    Selected DevConsole.
ECHO  --------------------------
ECHO  This section is not 
ECHO  available for the public.
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_1
pause
goto CP_main
:CP_A2
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :INSTALLATION:
ECHO  Selected DevConsole_st.
ECHO  --------------------------
ECHO  This section is not 
ECHO  available for the public.
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_1
pause
goto CP_main
:CP_A3
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :INSTALLATION:
ECHO  Selected DevConsoleCMD.
ECHO  --------------------------
ECHO  This section is not 
ECHO  available for the public.
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_1
pause
goto CP_main
:CP_2
cls
ECHO ____________________________
ECHO  \    / = user : %username%
ECHO   \  /  = v1       
ECHO    \/   = cv   : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :CONFIGURATION:
ECHO  [1] SysCheck
ECHO  [2] cvCheck
ECHO  [3] eLvl Database
ECHO  [-] -
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_B1
if %input%==2 goto CP_B2
if %input%==3 goto CP_B3
pause
goto CP_main
:CP_B1
cls
ECHO ____________________________
ECHO  \    / = user : %username%
ECHO   \  /  = v1       
ECHO    \/   = cv   : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :SysCheck:
ECHO  [%computername%] [%ERRORLEVEL%] 
ECHO  [%username%] [%date%]
ECHO  [%vc%] 
ECHO  DevConsole-Terminal-stats
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_B2
if %input%==2 goto CP_B2
pause
goto CP_main
:CP_B3
cls
ECHO ____________________________
ECHO  \    / = user : %username%
ECHO   \  /  = v1       
ECHO    \/   = cv   : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]  :eLvl Database:
ECHO  elvl: [%ERRORLEVEL%] 
ECHO       ...RESULT...
ECHO  {%eLvlinfo%}
ECHO  DevConsole-Terminal-stats
ECHO ____________________________

if !ERRORLEVEL! == 0 (
echo Stable.
) else (
echo NOT STABLE.
echo Running Analysis... )
if !ERRORLEVEL! == 9009 (
echo [!ERRORLEVEL!] / ISSUE )


set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_B2
if %input%==2 goto CP_B2
pause
goto CP_main
:CP_3
::THIS WILL BE USING MULTI-THREAD PAGES
cls 
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]    :CREDENTIALS:
ECHO Developers
ECHO dev308 : RealA#9628
ECHO dev001 : Zutle#3855
ECHO [X] Back : Next [2]          
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
::if %input%==1 echo INVALID OPTION!
if %input%==2 goto CP_6
pause
goto CP_main
:CP_4
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO          :EXIT:
ECHO  :::::::::::::::::::::::
ECHO  ::     Closing       ::
ECHO  :::::::::::::::::::::::
ECHO  Closing in 10:
goto CP_D1
:CP_D1
echo 0 min, 10 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,9 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,8 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,7 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,6 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,5 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,4 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,3 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,2 sec
ping localhost -n 2 >nul
cls
echo EXITING: 0 min,1 sec
ping localhost -n 2 >nul
cls
echo 0 min,0 sec
cls
exit
:CP_5
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO     :Redirecting:
ECHO  .
ECHO  .
ECHO  .
ECHO  .
ECHO ____________________________
start microsoft-edge:https://devconsolebeta.blogspot.com/
goto CP_main

:CP_6
::MULTI-PAGE THREAD : CP_3
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]   :CREDENTIALS #2:
ECHO Developers
ECHO dev002 : gunner#3235
ECHO dev003 : Ginger#3726
ECHO [1] Back : Next [2]          
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_3
if %input%==2 goto CP_7
::if %input%==2 echo INVALID OPTION.
pause
goto CP_main
pause

:CP_7
::MULTI-PAGE THREAD : CP_3
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]   :CREDENTIALS #3:
ECHO Developers
ECHO dev004 : Doofmagoof#8005
ECHO dev005 : Noah.#6363
ECHO [1] Back : Next [2]          
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_6
if %input%==2 goto CP_8
:CP_8
::MULTI-PAGE THREAD : CP_3
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]   :CREDENTIALS #4:
ECHO Developers
ECHO dev006 : i5#5555
ECHO dev007 : Pat.#1010
ECHO [1] Back : Next [2]          
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_7
if %input%==2 goto CP_9
:CP_9
::MULTI-PAGE THREAD : CP_3
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]   :CREDENTIALS #5:
ECHO Developers
ECHO dev008 : Box#3202 
ECHO dev009 : -
ECHO [1] Back : Next [X]          
ECHO ____________________________
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_8
:CP_10
cls
ECHO ____________________________
ECHO  \    / = user: %username%   
ECHO   \  /  = v   : -      
ECHO    \/   = cv  : %cv% 
ECHO ____________________________
ECHO Control Panel   %time%  
ECHO ============================
ECHO  ^ [t]   :CREDENTIALS #5:
ECHO Developers
ECHO dev008 : Box#3202 
ECHO dev009 : -
ECHO [1] Back : Next [X]          
ECHO ____________________________
ECHO 
set /p input= } : 

if %input%==t goto CP_main
if %input%==1 goto CP_8



:CP_error
cls
ECHO ____________________________
ECHO  \    / = user :%username%   
ECHO   \  /  = v -       
ECHO    \/   = cv   : %cv%
ECHO ____________________________
ECHO Control Panel   %time% 
ECHO ============================ 
ECHO  ^ [X]  :Error Loading:
ECHO    DevConsole_setup is          
ECHO     unable to respond         
ECHO    respond due to below:            
type "%userprofile%\Downloads\DevConsole-main\DevConsole-main\vSystem\echo\0error (Devconsole_setup).txt"
ping localhost -n 1000 >nul
end



