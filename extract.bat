@ECHO OFF

:: Location for extraction
SET LOCATION=X:\defATS
MKDIR %LOCATION%
:: Location to SCS Extractor
SET EXTRACTOR="C:\Program Files (x86)\Steam\steamapps\common\Euro Truck Simulator 2\scs_extractor.exe"
:: Get the SCS Game Archive Extractor here: http://download.eurotrucksimulator2.com/scs_extractor.zip

:: Set 7z.exe location for archiving
SET ZIP="C:\Program Files\7-Zip\7z.exe"

:: Extract archives
ECHO Extracting def archive
%EXTRACTOR% def.scs %LOCATION%\def >NUL
ECHO Extracting dlc_arizona archive
%EXTRACTOR% dlc_arizona.scs %LOCATION%\dlc_arizona >NUL
ECHO Extracting dlc_dragon archive
%EXTRACTOR% dlc_dragon.scs %LOCATION%\dlc_dragon >NUL
ECHO Extracting dlc_heavy_cargo archive
%EXTRACTOR% dlc_heavy_cargo.scs %LOCATION%\dlc_heavy_cargo >NUL
ECHO Extracting dlc_kenworth_t680 archive
%EXTRACTOR% dlc_kenworth_t680.scs %LOCATION%\dlc_kenworth_t680 >NUL
ECHO Extracting dlc_kenworth_w900 archive
%EXTRACTOR% dlc_kenworth_w900.scs %LOCATION%\dlc_kenworth_w900 >NUL
ECHO Extracting dlc_nevada archive
%EXTRACTOR% dlc_nevada.scs %LOCATION%\dlc_nevada >NUL
ECHO Extracting dlc_peterbilt_389 archive
%EXTRACTOR% dlc_peterbilt_389.scs %LOCATION%\dlc_peterbilt_389 >NUL
ECHO Extracting dlc_peterbilt_579 archive
%EXTRACTOR% dlc_peterbilt_579.scs %LOCATION%\dlc_peterbilt_579 >NUL
ECHO Extracting dlc_rims archive
%EXTRACTOR% dlc_rims.scs %LOCATION%\dlc_rims >NUL
ECHO Extracting dlc_steampunk archive
%EXTRACTOR% dlc_steampunk.scs %LOCATION%\dlc_steampunk >NUL

ECHO.
ECHO.

:: Delete all non-def directories
ECHO Starting cleanup
:: dlc_arizona
RMDIR "%LOCATION%\dlc_arizona\automat" /s /q
RMDIR "%LOCATION%\dlc_arizona\map" /s /q
RMDIR "%LOCATION%\dlc_arizona\material" /s /q
RMDIR "%LOCATION%\dlc_arizona\model" /s /q
RMDIR "%LOCATION%\dlc_arizona\prefab" /s /q
DEL %LOCATION%\dlc_arizona\dlc_arizona.manifest.sii

:: dlc_dragon
RMDIR "%LOCATION%\dlc_dragon\automat" /s /q
RMDIR "%LOCATION%\dlc_dragon\material" /s /q
RMDIR "%LOCATION%\dlc_dragon\vehicle" /s /q
DEL %LOCATION%\dlc_dragon\dlc_dragon.manifest.sii

:: dlc_heavy_cargo
RMDIR "%LOCATION%\dlc_heavy_cargo\automat" /s /q
RMDIR "%LOCATION%\dlc_heavy_cargo\material" /s /q
RMDIR "%LOCATION%\dlc_heavy_cargo\vehicle" /s /q
DEL %LOCATION%\dlc_heavy_cargo\dlc_heavy_cargo.manifest.sii

:: dlc_kenworth_t680
RMDIR "%LOCATION%\dlc_kenworth_t680\automat" /s /q
RMDIR "%LOCATION%\dlc_kenworth_t680\material" /s /q
RMDIR "%LOCATION%\dlc_kenworth_t680\vehicle" /s /q
DEL %LOCATION%\dlc_kenworth_t680\dlc_kenworth_t680.manifest.sii

:: dlc_kenworth_w900
RMDIR "%LOCATION%\dlc_kenworth_w900\automat" /s /q
RMDIR "%LOCATION%\dlc_kenworth_w900\material" /s /q
RMDIR "%LOCATION%\dlc_kenworth_w900\sound" /s /q
RMDIR "%LOCATION%\dlc_kenworth_w900\vehicle" /s /q
DEL %LOCATION%\dlc_kenworth_w900\dlc_kenworth_w900.manifest.sii

:: dlc_nevada
RMDIR "%LOCATION%\dlc_nevada\automat" /s /q
RMDIR "%LOCATION%\dlc_nevada\map" /s /q
RMDIR "%LOCATION%\dlc_nevada\material" /s /q
RMDIR "%LOCATION%\dlc_nevada\model" /s /q
RMDIR "%LOCATION%\dlc_nevada\prefab" /s /q
DEL %LOCATION%\dlc_nevada\dlc_nevada.manifest.sii

:: dlc_peterbilt_389
RMDIR "%LOCATION%\dlc_peterbilt_389\automat" /s /q
RMDIR "%LOCATION%\dlc_peterbilt_389\material" /s /q
RMDIR "%LOCATION%\dlc_peterbilt_389\sound" /s /q
RMDIR "%LOCATION%\dlc_peterbilt_389\vehicle" /s /q
DEL %LOCATION%\dlc_peterbilt_389\dlc_peterbilt_389.manifest.sii

:: dlc_peterbilt_579
RMDIR "%LOCATION%\dlc_peterbilt_579\automat" /s /q
RMDIR "%LOCATION%\dlc_peterbilt_579\material" /s /q
RMDIR "%LOCATION%\dlc_peterbilt_579\vehicle" /s /q
DEL %LOCATION%\dlc_peterbilt_579\dlc_peterbilt_579.manifest.sii

:: dlc_rims
RMDIR "%LOCATION%\dlc_rims\automat" /s /q
RMDIR "%LOCATION%\dlc_rims\material" /s /q
RMDIR "%LOCATION%\dlc_rims\vehicle" /s /q
DEL %LOCATION%\dlc_rims\dlc_rims.manifest.sii

:: dlc_steampunk
RMDIR "%LOCATION%\dlc_steampunk\material" /s /q
RMDIR "%LOCATION%\dlc_steampunk\vehicle" /s /q
DEL %LOCATION%\dlc_steampunk\dlc_steampunk.manifest.sii

ECHO Cleaned up

ECHO.
ECHO.

ECHO Zipping archive
%ZIP% a -mx=9 %LOCATION%\def %LOCATION%\*
ECHO Zipped