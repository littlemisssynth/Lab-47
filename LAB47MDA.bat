echo.12345678901234567890123456789012345678901234567890123456789012345678901234567890
@echo off
title [LAB 47]
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
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
if %answer%==4 goto title

:Exit
cls
echo Thanks for playing!
pause
exit /b

:Credits
cls
echo Credits
echo.
echo Thank you for playing [Title]!
pause
goto Menu