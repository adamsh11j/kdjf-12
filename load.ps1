choco install wget -y
choco install vcredist2010 -y
wget.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -O "$ENV:userprofile\Downloads\SteamSetup.exe"
wget.exe "https://github.com/pal1000/mesa-dist-win/releases/download/23.3.2/mesa3d-23.3.2-release-msvc.7z" -O "$ENV:userprofile\Downloads\mesa3d.7z"
wget.exe "https://tunnelbear.s3.amazonaws.com/downloads/pc/TunnelBear-Installer.exe" -O "$ENV:userprofile\Downloads\TunnelBear-Installer.exe"
Start-Process -FilePath "$ENV:userprofile\Downloads\TunnelBear-Installer.exe" -ArgumentList "/silent"
Start-Process -FilePath "$ENV:userprofile\Downloads\SteamSetup.exe" -ArgumentList "/S", "/D=C:\\Steam"
7z e "$ENV:userprofile\Downloads\mesa3d-23.3.2-release-msvc.7z" -o"$ENV:userprofile\Downloads\"
