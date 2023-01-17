@echo off
setlocal

set MYDOMAIN=

mkdir c:\Packages\SSH
curl %MYDOMAIN% -o C:\Packages\SSH\InstallSSH.bat
curl %MYDOMAIN% -o C:\Packages\SSH\SpeedUp.ps1
curl %MYDOMAIN% -o C:\Packages\SSH\Download.ps1
curl %MYDOMAIN% -o C:\Packages\SSH\Firewall.ps1
curl %MYDOMAIN% -o C:\Packages\SSH\ListSoftware.ps1
curl %MYDOMAIN% -o C:\Packages\SSH\SoftwareList.bat

echo ""
echo ""
echo ""
echo ""
echo "Run C:\Packages\SSH\InstallSSH.bat in an Administrator command prompt"
echo ""
echo ""
echo ""
echo ""
