@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Location for extraction
SET LOCATION=%userprofile%\Documents\defATS

:: Counters
SET /A COUNT=0
SET /A CURRENT=1

:: Create location
if not exist %LOCATION% MKDIR %LOCATION%

:: Clean any remaining files
echo Cleaning the directory
del /f/s/q %LOCATION% > nul
rmdir /s/q %LOCATION%

:: Location to sk-zk extractor
SET EXTRACTOR="C:\Users\doode\Downloads\extractor-2025-12-11-win-x64\extractor-2025-12-11-win-x64\extractor.exe"
:: Get the sk-zk extractor here: https://github.com/sk-zk/Extractor/releases

:: Set 7z.exe location for archiving
SET ZIP="C:\Program Files\7-Zip\7z.exe"

:: Extract archives
%EXTRACTOR% -p=/def -S -q -a "C:\Program Files (x86)\Steam\steamapps\common\American Truck Simulator" -d %LOCATION%
%EXTRACTOR% -S "C:\Program Files (x86)\Steam\steamapps\common\American Truck Simulator\version.scs" -d %LOCATION% 

ECHO Zipping archive
%ZIP% a -mx=9 %LOCATION%\def %LOCATION%\*
ECHO Zipped

ECHO DONE LOL
pause