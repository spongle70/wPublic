@echo off
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

set PACKAGES="C:\Packages"
set WPUBLIC="C:\wPublic"

echo "Dump software list"
set PSFILE="%WPUBLIC%\bin\ListSoftware.ps1"
Powershell.exe -ExecutionPolicy Bypass -File %PSFILE% > "C:\%check_computername%.txt"
