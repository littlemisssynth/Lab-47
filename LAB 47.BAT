@echo off
title [LAB 47]
if "%1" neq "" ( goto %1)

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
echo please select your graphics adapter
echo 1. IBM MONOCHROME DISPLAY ADAPTER or HERCULES COMPATABLE GRAPHICS
echo 2. IBM COLOR GRAPHICS ADAPTER OR NEWER COLOUR ADAPTER
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 LAB47MDA
if %answer%==2 LAB47CGA
if %answer%==3 goto Exit


:Exit
cls
echo Thanks for playing!
pause
exit /b