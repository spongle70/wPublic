$source = "https://github.com/PowerShell/Win32-OpenSSH/releases/download/v8.9.1.0p1-Beta/OpenSSH-Win64.zip"
$destination = "C:\Packages\OpenSSH-Win64.zip"

Invoke-WebRequest -Uri $source -OutFile $destination

Expand-Archive -LiteralPath $destination -DestinationPath "C:\Packages"
Remove-Item $destination
