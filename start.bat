@echo off 



:menu
cls
echo ----------------------------------------------
echo Minecraft Server Version Selector v0.1.0
echo ----------------------------------------------
echo.
echo Only supports Spigot.
echo Press One to operate on Minecraft 1.9.4
echo Press Two to operate on Minecraft 1.10.2
echo Press Three to exit.
echo.
echo You must have the jar files ready for this to work.
SET INPUT=
SET /P INPUT=Select a option:

IF /I '%INPUT%'=='1' GOTO option
IF /I '%INPUT%'=='2' GOTO option2
IF /I '%INPUT%'=='3' GOTO exit

:option
echo Now running on Minecraft 1.9.4 (Spigot)
java -Xms512M -Xmx1536M -jar spigot-1.9.4.jar
GOTO menu

:option2
echo Now running on Minecraft 1.10.2 (Spigot)
java -Xms512M -Xmx1536M -jar spigot-1.10.2.jar
GOTO menu

:exit
exit