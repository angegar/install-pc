# Enable developer mode on win10
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"

# Install the entire Hyper-V stack (hypervisor, services, and tools)
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey

choco install -y git
choco install -y visualstudiocode
choco install -y 7zip
choco install -y postman
choco install -y jdk8
choco install -y terraform
choco install -y nodejs
choco install -y driverbooster
choco install -y hp-universal-print-driver-pcl
choco install -y docker-for-windows


# Office tools
choco install -y office365-2016-deployment-tool
#choco install -y skypeforbusiness
choco install -y slack
choco install -y adobereader

# Utilitary
choco install -y notepadplusplus
choco install -y googlechrome
choco install -y dropbox
choco install -y passwordsafe
choco install -y displaylink

# Install only the PowerShell module
#Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell

# Install Linux Sub Sytem
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
lxrun /install /y
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.zip -UseBasicParsing
Expand-Archive ~/Ubuntu.zip ~/Ubuntu
ubuntu.exe
