@echo off
chcp 65001
cls
:pregamewarning
cls
echo ╔═════════════════════════════════════════════════╗
echo ║                      Warning!                   ║
echo ╚═════════════════════════════════════════════════╝
echo.
echo This is a unfinished build of the game and WILL contain a of bugs, anything that happens is not my fault
pause
goto idk

:idk
cls
echo ====================
echo Beta 0.1.9
echo ====================

echo FINALIZING...

cd %userprofile%/documents

if exist "Login system" goto skip

md "Login System"

:skip

cd "Login System"

ping localhost -n 5 >nul

goto Home

:Home

color 7

title HOME

cls

echo ----------------

echo login
echo Beta 0.1.9

echo ----------------

echo.

echo 1. SIGNUP

echo --------------

echo 2. LOGIN

echo --------------

echo 3. DELETE ACCOUNT

echo --------------

echo 4. PLAY AS GUEST

echo --------------

echo.

set /p "a=Choice: "

if ["%a%"] == ["1"] goto signup

if ["%a%"] == ["2"] goto login

if ["%a%"] == ["4"] goto playasguest

if ["%a%"] == ["3"] goto delaccount

if ["%a%"] == [""] goto 

:signup

color 7

title SIGNUP

cls

set /p "nuser=New Username: "

if ["%nuser%"] == [""] goto signuperror

if EXIST "%nuser%.bat" goto usertaken

goto npass

:usertaken

cls

color c

echo USERNAME taken, please try another one.

pause >nul

goto signup

:npass

set /p "npass=New Password: "

if ["%npass%"] == [""] goto signuperror

cls

echo New Username %nuser%

echo New Password *Password Hidden*

set /p "npassr=Repeat Password: "

if ["%npassr%"] == ["%npass%"] goto signupc

goto signuperror

:signupc

echo set "auser=%nuser%"> %nuser%.bat
echo set "user=%nuser%"> cuser.bat
echo set "apass=%npass%">> %nuser%.bat

cls

color a

echo Signup successful!

echo press any button to continue!
cd "%userprofile%/documents/Login System"
if EXIST "Saves" goto :skoip
md Saves
goto skoip
:skoip
cd Saves
pause >nul

goto home

:login

color 7

title LOGIN

cls

set /p "user=Username: "

if ["%user%"] == [""] goto LOGIN

if EXIST "%user%.bat" goto pass

goto usernotexist

:usernotexist

color c

cls

echo USERNAME doesn't exist.

pause >nul

goto login

:pass

call %user%.bat

set /p "pass=Password: "

if ["%pass%"] == ["%apass%"] goto logingood

goto passinvalid

:passinvalid

color c

cls

echo The PASSWORD you entered is INVALID

pause >nul

goto login

:logingood

color a

cls

echo You have Successfully logged in %user%
echo set "user=%user%"> cuser.bat

pause
goto Menu

:delaccount

color 7

title DELETE ACCOUNT

cls

set /p "duser=Username: "

if ["%duser%"] == [""] goto delaccount

if exist "%duser%.bat" goto contin

goto usernotexistdel

:contin

call %duser%.bat

set /p "dpass=Password: "

if ["%dpass%"] == ["%apass%"] goto contin2

goto passerror

:contin2

cls

echo Are you sure you want to echo delete you account?

set /p "delacc=y/n: "

if ["%delacc%"] == ["n"] goto home

echo Deleting you account...

del "%duser%.bat"

ping localhost -n 2 >nul

cls

color a

echo Account deleted.

echo Redirecting to home

ping localhost -n 3 >nul

goto home

:playasguest

title Guest

cls

echo Loading
pause

goto Menu

:signuperror

color c

cls

echo ERROR

echo proceeding back to SIGNUP...

ping localhost -n 2 >nul

goto signup

:passerror

color c

cls

echo PASSWORD INVALID

pause >nul

goto delaccount

:usernotexistdel

color c

cls

echo USERNAME doesn't exist.

pause >nul

goto delaccount

color 0A
if "%1" neq "" ( goto %1)
:Menu
cd "%userprofile%/documents/Login System/Saves/%user%/savedata"
if EXIST "gamec.bat" goto :Menu2
cls
title game
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta 0.1.9  ║
echo ╚════════════╝
echo ╔════════╗
echo ║1. Start║
echo ╚════════╝
echo ╔═══════════════╗
echo ║2. Instructions║
echo ╚═══════════════╝
echo ╔══════════╗
echo ║3. Options║
echo ╚══════════╝
echo ╔════════════╗
echo ║4. Updatelog║
echo ╚════════════╝
echo ╔═══════╗
echo ║5. Exit║
echo ╚═══════╝
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Instructions
if %answer%==3 goto Options
if %answer%==4 goto Ul
if %answer%==6 goto MOP
if %answer%==5 goto Exit
if %answer%==7 goto Menu2
:Ul
cls
echo ╔═════╗
echo ║BETAS║
echo ╚═════╝
echo ╔═══════════════════════════════════════════════════════════════════════════════════╗
echo ║0.1.0 added the log and title.                                                     ║
echo ║0.1.1 added more fights and build numbers                                          ║
echo ║0.1.2 added a Username                                                             ║
echo ║0.1.3 added ending and boss.                                                       ║
echo ║0.1.4 changed encoding from ASCII to UNICODE and updated graphics                  ║
echo ║0.1.5 changed Build numbering and added options, also fixed the game completed menu║
echo ║0.1.6 added nothing, also added music to ******                                 ║
echo ║o.1.9 removed auth codes and change various game aspects add more
echo ╚═══════════════════════════════════════════════════════════════════════════════════╝
pause
goto Menu
:MOP
cls
echo Thanks for showing intrest in my other creation :)
echo 1. One Hour with Nu (twitter link)
echo 2. Batch rendering system
echo 3. My github
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto ohwn
if %answer%==2 goto brs
if %answer%==3 goto github
:ohwn
cls
echo One hour with Nu is a project I am currently working on with a small team of other developers
echo my primary role on the team is Twitter Manager
echo please dont actually scan the qr QmQ
echo type 1 to view a QR code or type 2 to return to the main menu
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto QRNU
if %answer%==2 goto Menu
:QRNU
cls
echo ███████ ████  █   ███████
echo █     █    ██   █ █     █
echo █ ███ █  █ █ ██ █ █ ███ █
echo █ ███ █   ████  █ █ ███ █
echo █ ███ █   █████ █ █ ███ █
echo █     █  █ ██ █ █ █     █
echo ███████ █ █ █ █ █ ███████
echo         ██ █ █ ██        
echo ██ ██ █  █      █ █     █
echo █ ██ █ ██ ██ ████  █████ 
echo █   ████ █ ███ █ █  ██  █
echo █ ██        █ █   ██ ████
echo ███ ████ ███    █ █     █
echo █   █  █  ██  ███   █  █ 
echo ████ ██ ███  ████  █████
echo █   ██ ██ █    ██  █ ██ █
echo █   ████   █ █ ██████ ██ 
echo         ███ █ ███   █ ██ 
echo ███████   ██ █  █ █ █   █
echo █     █  █████ ██   █   █
echo █ ███ █ ██  █  ██████  █ 
echo █ ███ █ █ ██   ████    ██
echo █     █ █  ██ ██ █ ██ ███
echo ███████ ██    █ █ █  █  █
pause
goto menu
:brs
cls

:github
cls

:Exit
cls
echo I Hope You Enjoyed The Game . Thanks for playing %user%!
pause
exit /b
:Options
cls
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo ╚═════▌*************Options******************▐
echo ╔═════▌1. Color                              ▐
echo ║1. St▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║2. In▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║3. Op▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║4. Up▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌▄▄▄▄▄▄▄▄▄                             ▐
echo ║5. Ex▌▌2. Exit▐                             ▐
echo ╚═════▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto coption
if %answer%==2 goto eoption
pause
:eoption
goto Menu
:coption
cls
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo ╚═════▌*************Options/Color************▐
echo ╔═════▌0 Black     E Yellow                  ▐
echo ║1. St▌1 Navy      F White                   ▐
echo ╚═════▌2 Green                               ▐
echo ╔═════▌3 Teal                                ▐
echo ║2. In▌4 Maroon                              ▐
echo ╚═════▌5 Purple                              ▐
echo ╔═════▌6 Olive                               ▐
echo ║3. Op▌7 Silver                              ▐
echo ╚═════▌8 Gray                                ▐
echo ╔═════▌9 Blue                                ▐
echo ║4. Up▌A Lime                                ▐
echo ╚═════▌B Aqua                                ▐
echo ╔═════▌C Red                                 ▐
echo ║5. Ex▌D Fuchsia                             ▐
echo ╚═════▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
set /p colorval=Type the numbers of your option and press enter : 
color %colorval%
goto :Options
:parrot
echo Warning: to exit you will need to close the game.
set /p answer=Continue?(Y/N)  
if %answer%==Y goto pcon
if %answer%==N goto Menu2
if %answer%==y goto pcon
if %answer%==n goto Menu2
:pcon
start "" https://www.youtube.com/watch?v=bwWiutoaLxw
curl parrot.live
pause
goto :Menu2
:Addname
echo This Segment is older than the 0.1.2 version :skull:
cls
echo Hello %user% an adventure awaits!
pause
goto Start_1
:Instructions
cls
echo ╔════════════╗
echo ║Instructions║
echo ╚════════════╝
echo.
echo Its no longer completely RNG
pause
goto Menu
:Start_1
cls
echo   ╔═╗       ╔═╗        ╔═╗           ╔═╗
echo   ║♠║       ║♣║        ║♥║           ║♦║
echo ╔═╩═╩══╗  ╔═╩═╩══╗   ╔═╩═╩══╗   ╔════╩═╩═════╗
echo ║1.Easy║  ║2.Med ║   ║3.Hard║   ║4.Impossible║
echo ╚══════╝  ╚══════╝   ╚══════╝   ╚════════════╝
set /p answer=What difficulty do you want to play?:
if %answer%==1 goto cone
if %answer%==2 goto conm
if %answer%==3 goto conh
if %answer%==4 goto coni
goto Start_1
:cone
cls
echo ╔═════════════════════════╗
echo ║You have selected Easy   ║
echo ╠═════════════════════════╣
echo ║-You take 50%% less damage║
echo ║-You deal 50%% more damage║
echo ║-Less enemies            ║
echo ║-Uncapped health         ║
echo ║-You have 25%% more health║
echo ╠═════════════════════════╣
echo ║Are you sure?            ║
echo ║     Y/N                 ║
echo ╚═════════════════════════╝
set /p answer=Are you sure? (Y/N):
if %answer%==Y goto conte
if %answer%==y goto conte
if %answer%==N goto Start_1
if %answer%==n goto Start_1
:conm
cls
echo ╔═══════════════════════════╗
echo ║You have selected Medium   ║
echo ╠═══════════════════════════╣
echo ║-You take 100%% damage      ║
echo ║-average amount of enemies ║
echo ║-capped health             ║
echo ╠═══════════════════════════╣
echo ║Are you sure?              ║
echo ║     Y/N                   ║
echo ╚═══════════════════════════╝
set /p answer=Are you sure? (Y/N):
if %answer%==Y goto contm
if %answer%==y goto contm
if %answer%==N goto Start_1
if %answer%==n goto Start_1
:conh
cls
echo ╔════════════════════════════════╗
echo ║You have selected Hard          ║
echo ╠════════════════════════════════╣
echo ║-You take 50%% more damage       ║
echo ║-You deal 50%% less damage       ║
echo ║-You have 50%% less Health       ║
echo ║-above average amount of enemies║
echo ║-capped health                  ║
echo ╠════════════════════════════════╣
echo ║Are you sure?                   ║
echo ║     Y/N                        ║
echo ╚════════════════════════════════╝
set /p answer=Are you sure? (Y/N):
if %answer%==Y goto conth
if %answer%==y goto conth
if %answer%==N goto Start_1
if %answer%==n goto Start_1
:coni
cls
echo ╔══════════════════════════════════╗
echo ║You have selected Impossible      ║
echo ╠══════════════════════════════════╣
echo ║-You take 100%% more damage        ║
echo ║-You deal 100%% less damage        ║
echo ║-You have 75%% less Health         ║
echo ║-ungodly amount of enemies        ║
echo ║-severely capped health           ║
echo ║-Enemies are the same speed as you║
echo ║-Enemies can move diagonally      ║
echo ╠══════════════════════════════════╣
echo ║Are you sure?                     ║
echo ║     Y/N                          ║
echo ╚══════════════════════════════════╝
set /p answer=Are you sure? (Y/N):
if %answer%==Y goto conti
if %answer%==y goto conti
if %answer%==N goto Start_1
if %answer%==n goto Start_1
:conte
cls
cd "Game"
cd "easy"
start "gameenginee.bat"
cls
echo ╔══════════════════════════════════════════════════════════════════════════════╗
echo ║Notice!                                                                       ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║If you are running this on a school or work computer, like i am,              ║
echo ║and it tells you "The command prompt has been disabled by your administrator."║
echo ║open where the game is stored, and open 'gameengine.bat'                      ║
echo ║otherwise just close the window :)                                            ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║Best regards,                                                                 ║
echo ║        Frost                                                                 ║
echo ╚══════════════════════════════════════════════════════════════════════════════╝
pause
exit /b
:contm
cls
cd "Game"
cd "med"
start "gameenginem.bat"
cls
echo ╔══════════════════════════════════════════════════════════════════════════════╗
echo ║Notice!                                                                       ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║If you are running this on a school or work computer, like i am,              ║
echo ║and it tells you "The command prompt has been disabled by your administrator."║
echo ║open where the game is stored, and open 'gameengine.bat'                      ║
echo ║otherwise just close the window :)                                            ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║Best regards,                                                                 ║
echo ║        Frost                                                                 ║
echo ╚══════════════════════════════════════════════════════════════════════════════╝
pause
exit /b
:conth
cls
cd "Game"
cd "hard"
start "gameengineh.bat"
cls
echo ╔══════════════════════════════════════════════════════════════════════════════╗
echo ║Notice!                                                                       ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║If you are running this on a school or work computer, like i am,              ║
echo ║and it tells you "The command prompt has been disabled by your administrator."║
echo ║open where the game is stored, and open 'gameengine.bat'                      ║
echo ║otherwise just close the window :)                                            ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║Best regards,                                                                 ║
echo ║        Frost                                                                 ║
echo ╚══════════════════════════════════════════════════════════════════════════════╝
pause
exit /b
:conti
cls
cd "Game"
cd "funny"
start "gameenginei.bat"
cls
echo ╔══════════════════════════════════════════════════════════════════════════════╗
echo ║Notice!                                                                       ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║If you are running this on a school or work computer, like i am,              ║
echo ║and it tells you "The command prompt has been disabled by your administrator."║
echo ║open where the game is stored, and open 'gameengine.bat'                      ║
echo ║otherwise just close the window :)                                            ║
echo ╠══════════════════════════════════════════════════════════════════════════════╣
echo ║Best regards,                                                                 ║
echo ║        Frost                                                                 ║
echo ╚══════════════════════════════════════════════════════════════════════════════╝
pause
exit /b
:Menu2
cls
title game
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta 0.1.9  ║
echo ╚════════════╝
echo ╔══════════════╗
echo ║Game Completed║
echo ╚══════════════╝
echo ╔════════╗
echo ║1. Start║
echo ╚════════╝
echo ╔═══════════════╗
echo ║2. Instructions║
echo ╚═══════════════╝
echo ╔══════════╗
echo ║3. Options║
echo ╚══════════╝
echo ╔════════════╗
echo ║4. Updatelog║
echo ╚════════════╝
echo ╔═══════╗
echo ║5. Exit║
echo ╚═══════╝
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
echo Auth Code: 
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Instructions2
if %answer%==3 goto gfOptions
if %answer%==4 goto Updatelog2
if %answer%==5 goto Exit
if %answer%==6 goto MOP2
:Exit
cls
echo We Hope You Enjoyed The Game . Thanks for playing %user%!
pause
exit /b
:gfOptions
cls
cls
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta 0.1.9  ║
echo ╚════════════╝
echo ╔══════════════╗
echo ║Game ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo ╚═════▌*************Options******************▐
echo ╔═════▌1. Color                              ▐
echo ║1. St▌2. Parrot                             ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║2. In▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║3. Op▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌                                      ▐
echo ║4. Up▌                                      ▐
echo ╚═════▌                                      ▐
echo ╔═════▌▄▄▄▄▄▄▄▄▄                             ▐
echo ║5. Ex▌▌3. Exit▐                             ▐
echo ╚═════▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
echo Auth Code: 
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto coption2
if %answer%==2 goto parrot
if %answer%==3 goto eoption2
pause
:eoption2
goto Menu2
:coption2
cls
echo ╔════════════╗
echo ║game        ║
echo ║by Frost    ║
echo ║Beta 0.1.9  ║
echo ╚════════════╝
echo ╔══════════════╗
echo ║Game ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo ╚═════▌*************Options/Color************▐
echo ╔═════▌0 Black     E Yellow                  ▐
echo ║1. St▌1 Navy      F White                   ▐
echo ╚═════▌2 Green                               ▐
echo ╔═════▌3 Teal                                ▐
echo ║2. In▌4 Maroon                              ▐
echo ╚═════▌5 Purple                              ▐
echo ╔═════▌6 Olive                               ▐
echo ║3. Op▌7 Silver                              ▐
echo ╚═════▌8 Gray                                ▐
echo ╔═════▌9 Blue                                ▐
echo ║4. Up▌A Lime                                ▐
echo ╚═════▌B Aqua                                ▐
echo ╔═════▌C Red                                 ▐
echo ║5. Ex▌D Fuchsia                             ▐
echo ╚═════▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo ╔════════════════════╗
echo ║6. My Other Projects║
echo ╚════════════════════╝
set /p colorval=Type the numbers of your option and press enter : 
color %colorval%
goto :gfOptions
:Updatelog2
cls
echo ╔═════╗
echo ║BETAS║
echo ╚═════╝
echo ╔═══════════════════════════════════════════════════════════════════════════════════╗
echo ║0.1.0 added the log and title.                                                     ║
echo ║0.1.1 added more fights and build numbers                                          ║
echo ║0.1.2 added a Username                                                             ║
echo ║0.1.3 added ending and boss.                                                       ║
echo ║0.1.4 changed encoding from ASCII to UNICODE and updated graphics                  ║
echo ║0.1.5 changed Build numbering and added options, also fixed the game completed menu║
echo ║0.1.6 first ready-to-ship version, added nothing, also added music to parrot    ║
echo ╚═══════════════════════════════════════════════════════════════════════════════════╝
pause
goto Menu2
:Instructions2
cls
echo ╔════════════╗
echo ║Instructions║
echo ╚════════════╝
echo.
echo Its no longer completely RNG
pause
goto Menu2