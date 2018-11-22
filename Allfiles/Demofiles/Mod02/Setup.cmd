@Echo Off
ECHO Preparing the lab environment...

REM - Get current directory
SET SUBDIR=%~dp0

REM - rename .ps1.txt files to .ps1
FOR /R %SUBDIR%.. %%i IN (*.ps1.txt) DO @REN %%~fi %%~ni
