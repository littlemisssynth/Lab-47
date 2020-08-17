echo.12345678901234567890123456789012345678901234567890123456789012345678901234567890

@echo off
title [LAB 47]
color 0F
if "%1" neq "" ( goto %1)

:title
cls
color 0F
echo __/\\\\\\____________________/\\\____________________/\\\_____/\\\\\\\\\\\\\\\__         
echo  _\////\\\___________________\/\\\__________________/\\\\\____\/////////////\\\_        
echo   ____\/\\\___________________\/\\\________________/\\\/\\\_______________/\\\/_      
echo    ____\/\\\_____/\\\\\\\\\____\/\\\______________/\\\/\/\\\_____________/\\\/__      
echo     ____\/\\\____\////////\\\___\/\\\\\\\\\______/\\\/__\/\\\___________/\\\/___     
echo      ____\/\\\______/\\\\\\\\\\__\/\\\////\\\___/\\\\\\\\\\\\\\\\______/\\\/____  
echo       ____\/\\\_____/\\\/////\\\__\/\\\__\/\\\__\///////////\\\//_____/\\\/_____   
echo        __/\\\\\\\\\_\//\\\\\\\\/\\_\/\\\\\\\\\_____________\/\\\_____/\\\/______ 
echo         _\/////////___\////////\//__\/////////______________\///_____\///_______
echo.
echo A text adventure game by The Basic Geek
echo.
pause
goto Menu

:Menu
cls
color 5F
echo.
echo __/\\\\\\____________________/\\\____________________/\\\_____/\\\\\\\\\\\\\\\__         
echo  _\////\\\___________________\/\\\__________________/\\\\\____\/////////////\\\_        
echo   ____\/\\\___________________\/\\\________________/\\\/\\\_______________/\\\/_      
echo    ____\/\\\_____/\\\\\\\\\____\/\\\______________/\\\/\/\\\_____________/\\\/__      
echo     ____\/\\\____\////////\\\___\/\\\\\\\\\______/\\\/__\/\\\___________/\\\/___     
echo      ____\/\\\______/\\\\\\\\\\__\/\\\////\\\___/\\\\\\\\\\\\\\\\______/\\\/____  
echo       ____\/\\\_____/\\\/////\\\__\/\\\__\/\\\__\///////////\\\//_____/\\\/_____   
echo        __/\\\\\\\\\_\//\\\\\\\\/\\_\/\\\\\\\\\_____________\/\\\_____/\\\/______ 
echo         _\/////////___\////////\//__\/////////______________\///_____\///_______
echo.
echo 1. Start
echo 2. Credits
echo 3. Exit
echo 4. Title
echo 5. Passcode
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto LAB
if %answer%==2 goto Credits
if %answer%==3 goto Exit
if %answer%==4 goto title
if %answer%==5 goto passcode

:passcode
cls
color 7D
echo *****PASSCODE ENTRY*****
echo.
echo. 
set /p answer=Type the passcode and press enter : 
if %answer%==lv2pri goto corridor3
if %answer%== goto 
if %answer%== goto 
if %answer%== goto 
if %answer%== goto 

:Exit
cls
color 0C
echo Thanks for playing!
pause
exit /b

:Credits
cls
color 7D
echo Credits
echo.
echo Thank you for playing [LAB 47]!
echo.
echo Developed by The Basic Geek and Lucy the bear
echo.
echo Teleporter ASCII artwork by supreme icecreme
pause
goto Menu

:LAB
cls
color 9f
echo You wake up in a strange room that looks like a labaratory.
echo There is a door through which you can leave or you can explore the room. 
set /p answer=Would you like to explore or leave?
if %answer%==explore goto explore1
if %answer%==leave goto corridor
pause

:explore1
echo While exploring the room you knock over some beakers creating toxic gasses
echo forcing you to leave the room
goto corridor

:corridor
echo you can turn left or right. 
set /p answer=Would you like to go left or right?
if %answer%==left goto Start_1
if %answer%==right goto stairsl1a
pause

:Start_1
cls
echo Oh no! You're surrounded by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause

:Run_1
cls
echo You live to fight another day.
pause
goto corridor

:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
goto Fight_1_Loop

:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto death screen
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1

:death screen
cls
color 0C
echo You died. Play again?
pause
goto Menu

:Win_Fight_1
cls
echo You are victorious!
pause
goto corridor1

:corridor1
echo you can turn left or go forward. 
set /p answer=Would you like to go left or forward?
if %answer%==left goto lion lab
if %answer%==go forward goto corridor

:lion lab
echo You walk into a room with lots of hungry lions.
echo The lions go to try and eat you all at once.
pause
goto lionLoop

:lionLoop
set /a num=%random%
if %num% gtr 4 goto lionLoop
if %num% lss 1 goto lionLoop
if %num%==1 goto death screen
if %num%==2 goto death screen
if %num%==3 goto death screen
if %num%==4 goto corridor1

:stairsl1a
echo you see a flight of stairs in front of you.
echo Do you want to go up the stairs
set /p answer=Do you want to go up the stairs? [yes or no]
if %answer%==yes goto l1exit
if %answer%==no goto corridor

:stairsl1b
echo you see a flight of stairs in front of you.
echo 
set /p answer=Do you want to go up the stairs? [yes or no]
if %answer%==yes goto l1exit
if %answer%==no goto corridor1

:l1exit
echo You have finished level one!
echo. 
echo !!passcode!! lv2pri
echo.
pause
goto corridor3

:corridor3
echo This is the second level, its not complete yet so we will send you back to the
echo main menu okay?
pause
goto Menu