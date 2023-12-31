choco install warp -y
Invoke-WebRequest -Uri "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -OutFile $ENV:userprofile\Downloads\Steam.exe
Start-Process -FilePath "$ENV:userprofile\Downloads\SteamSetup.exe" -ArgumentList "/S", "/D=C:\\Steam"
Invoke-WebRequest -Uri "https://github.com/pal1000/mesa-dist-win/releases/download/23.3.2/mesa3d-23.3.2-release-msvc.7z" -OutFile $ENV:userprofile\Downloads\mesa3d.7z
