@echo off
REM Stop and disable SysMain service
sc stop "SysMain"
sc config "SysMain" start=disabled

REM Install Chocolatey and packages
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

REM Refresh environment variables
call refreshenv

REM Install Chocolatey packages
choco install unzip zip wget curl imagemagick.app ffmpeg yt-dlp -y

REM Install eza and Windows Terminal using winget
winget install eza-community.eza
winget install -e --id Microsoft.WindowsTerminal

echo Setup completed.
pause