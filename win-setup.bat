@echo off
ECHO "Downloading installation dependency - step 1"
start "Install chocolatey" call powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
start "Install jq" call choco install jq
start "Install wget" call choco install wget && pause
ECHO "Downloading installation dependency - step 2"
start "Download winget" call wget -O %USERPROFILE%/Downloads/winget.msixbundle https://github.com/microsoft/winget-cli/releases/download/v1.4.10173/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle && pause
start "Install winget" call powershell Add-AppPackage -path %USERPROFILE%/Downloads/winget.msixbundle
ECHO "Downloading & installing alacritty"
start "Install alacritty" call winget install alacritty
ECHO "Downloading & installing clink" 
start "Install clink" call winget install clink
ECHO "Starting plugins installer"
start "Install clink plugins" call cd plugins/win/clink/plugins && copy * %USERPROFILE%\AppData\Local\clink
ECHO "Completed!"
pause >nul