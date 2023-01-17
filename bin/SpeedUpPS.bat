@echo off
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

set PACKAGES="C:\Packages"
set WPUBLIC="C:\wPublic"

echo "Speed up Powershell processing"
set PSFILE="%WPUBLIC%\bin\SpeedUp.ps1"
Powershell.exe -ExecutionPolicy Bypass -File %PSFILE%

