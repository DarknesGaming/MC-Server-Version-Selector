@echo off 



:menu
cls
color f
echo ----------------------------------------------
echo Minecraft Server Version Select
echo Version 0.2.1
echo ----------------------------------------------
echo.
echo Press One to operate on CraftBukkit.
echo Press Two to operate on Spigot.
echo Press Three to operate on Paper Spigot.
echo Press Four to operate on Cauldron (Minecraft Forge Server).
echo Press Five to operate on plain Vanilla.
echo Press Six to exit.
echo.
SET INPUT=
SET /P INPUT=Select an option:

IF /I '%INPUT%'=='1' GOTO craftbukkit
IF /I '%INPUT%'=='2' GOTO spigot
IF /I '%INPUT%'=='3' GOTO paperspigot
IF /I '%INPUT%'=='4' GOTO cauldron
IF /I '%INPUT%'=='5' GOTO vanilla
IF /I '%INPUT%'=='6' GOTO exit

:craftbukkit
cls
color 9
echo ----------------------------------------------
echo CraftBukkit Version Selection
echo ----------------------------------------------
echo.
echo Press One if you want to run Minecraft 1.8.8.
echo Press Two if you want to run Minecraft 1.9.4.
echo Press Three if you want to run Minecraft 1.10.2.
echo Press Four to return to the menu.
echo.
SET INPUT=
SET /P INPUT=Select your MC Version:

IF /I '%INPUT%'=='1' GOTO craftbukkit1
IF /I '%INPUT%'=='2' GOTO cb2
IF /I '%INPUT%'=='3' GOTO cbthree
IF /I '%INPUT%'=='4' GOTO menu

:craftbukkit1
echo Now running on CraftBukkit MC 1.8.8.
echo WARNING: Make sure your jar file has this name: craftbukkit-1.8.8
echo If the jar file does not have that name, we can't run it.
java -Xms1024M -Xmx1024M -jar craftbukkit-1.8.8.jar
PAUSE
GOTO menu

:cb2
echo Now running on CraftBukkit MC 1.9.4.
echo WARNING: Make sure your jar file has this name: craftbukkit-1.9.4
echo If the jar file does not have that name, we can't run it.
java -Xms1024M -Xmx1024M -jar craftbukkit-1.9.4.jar
PAUSE
GOTO menu

:cbthree
echo Now running on CraftBukkit MC 1.10.2.
echo WARNING: Make sure your jar file has this name: craftbukkit-1.10.2
echo If the jar file does not have that name, we can't run it.
java -Xms1024M -Xmx1024M -jar craftbukkit-1.10.2.jar
PAUSE
GOTO menu

:spigot
cls
color 6
echo ----------------------------------------------
echo Spigot Version Selection
echo ----------------------------------------------
echo.
echo Press A if you want to run Minecraft 1.8.8.
echo Press B if you want to run Minecraft 1.9.4.
echo Press C if you want to run Minecraft 1.10.2.
echo Press D to return to the menu.
echo.
SET INPUT=
SET /P INPUT=Select your MC Version:

IF /I '%INPUT%'=='A' GOTO spigot1
IF /I '%INPUT%'=='B' GOTO spigot2
IF /I '%INPUT%'=='C' GOTO spigot3
IF /I '%INPUT%'=='D' GOTO menu

:spigot1
echo Now running on Spigot MC 1.8.8.
echo WARNING: Make sure your jar file has this name: spigot-1.8.8
echo If the jar file does not have that name, we can't run it.
java -Xms512M -Xmx1536M -jar spigot-1.8.8.jar
PAUSE
GOTO menu

:spigot2
echo Now running on Spigot MC 1.9.4.
echo WARNING: Make sure your jar file has this name: spigot-1.9.4
echo If the jar file does not have that name, we can't run it.
java -Xms512M -Xmx1536M -jar spigot-1.9.4.jar
PAUSE
GOTO menu

:spigot3
echo Now running on Spigot MC 1.10.2.
echo WARNING: Make sure your jar file has this name: spigot 1.10.2
echo If the jar file does not have that name, we can't run it.
java -Xms512M -Xmx1536M -jar spigot-1.10.2.jar
PAUSE
GOTO menu

:paperspigot
echo Now running your build of Paper Spigot.
echo WARNING: Make sure your jar file has this name: paperclip.jar
echo Update often from the following link:
echo https://ci.destroystokyo.com/job/PaperSpigot/
java -Xms512M -Xmx1536M -jar paperclip.jar
PAUSE
GOTO menu

:exit
exit