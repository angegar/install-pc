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
choco install -y docker-for-windows


# Office tools
choco install -y office365-2016-deployment-tool
choco install -y skypeforbusiness
choco install -y slack
choco install -y adobereader

# Utilitary
choco install -y notepadplusplus
choco install -y googlechrome
choco install -y dropbox
choco install -y passwordsafe

# Install Linux Sub Sytem
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux