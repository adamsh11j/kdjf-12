choco install wget -y
choco install vcredist2010 -y
wget.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -O "$ENV:userprofile\Downloads\SteamSetup.exe"
Start-Process -FilePath "$ENV:userprofile\Downloads\SteamSetup.exe" -ArgumentList "/S", "/D=C:\\Steam"
wget.exe "https://github.com/pal1000/mesa-dist-win/releases/download/23.3.2/mesa3d-23.3.2-release-msvc.7z" -O "$ENV:userprofile\Downloads\mesa3d.7z"
wget.exe "https://www.proxifier.com/download/ProxifierSetup.exe" -O "$ENV:userprofile\Downloads\ProxifierSetup.exe"
Start-Process -FilePath "$ENV:userprofile\Downloads\ProxifierSetup.exe" -ArgumentList "/SILENT"
wget "https://archive.torproject.org/tor-package-archive/torbrowser/13.0.8/tor-expert-bundle-windows-x86_64-13.0.8.tar.gz" -O "$ENV:userprofile\Downloads\tor1.tar.gz"
7z e "$ENV:userprofile\Downloads\tor1.tar.gz" -o"$ENV:userprofile\Downloads"
7z e "$ENV:userprofile\Downloads\tor-expert-bundle-windows-x86_64-13.0.8.tar" -o"$ENV:userprofile\Downloads"
