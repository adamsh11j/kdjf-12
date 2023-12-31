choco install wget -y
choco install windscribe -y
wget.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -O "$ENV:userprofile\Downloads\SteamSetup.exe"
Start-Process -FilePath "$ENV:userprofile\Downloads\SteamSetup.exe" -ArgumentList "/S", "/D=C:\\Steam"
wget.exe "https://github.com/pal1000/mesa-dist-win/releases/download/23.3.2/mesa3d-23.3.2-release-msvc.7z" -O "$ENV:userprofile\Downloads\mesa3d.7z"
