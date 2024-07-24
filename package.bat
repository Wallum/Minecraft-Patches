@echo off
set zipfile=wallum_patches.zip
set tempfile=temp.zip

:: Check if the zip file already exists and delete if it does
if exist %zipfile% del %zipfile%

:: Create a temporary zip file
echo Creating temporary zip file...
powershell Compress-Archive -Path pack.png,pack.mcmeta,data\ -DestinationPath %tempfile%

:: Rename the temporary zip file to the final zip file name
ren %tempfile% %zipfile%

echo Zip file %zipfile% created successfully.
