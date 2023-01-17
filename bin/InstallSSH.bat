@echo off
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

set PACKAGES="C:\Packages"
set WPUBLIC="C:\wPublic"

mkdir %PACKAGES%

call %WPUBLIC%\bin\SpeedUpPS.bat

echo "Download and unpack OpenSSH"
set PSFILE="%WPUBLIC%\bin\Download.ps1"
Powershell.exe -ExecutionPolicy Bypass -File %PSFILE%

if exist "C:\Program Files\OpenSSH\sshd.exe" (
   echo "OPENSSH  already installed"
   )
   else (
      echo "NEW installation"
      robocopy "%PACKAGES%\OpenSSH-Win64" "C:\Program Files\OpenSSH" /E
   )
   

if exist "C:\Program Files\OpenSSH\install-sshd.ps1" (
   echo "SSH install script"
   set PSFILE="C:\Program Files\OpenSSH\install-sshd.ps1"
   Powershell.exe -ExecutionPolicy Bypass -File %PSFILE%
)

set PSFILE="%WPUBLIC%\bin\Firewall.ps1"
if exist %PSFILE% (
   Powershell.exe -ExecutionPolicy Bypass -File %PSFILE%
   net start sshd
)
