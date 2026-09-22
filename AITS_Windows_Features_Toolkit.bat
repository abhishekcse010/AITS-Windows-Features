@echo off
setlocal EnableExtensions
title Abhishek IT Solutions - NEW WINDOWS FEATURES TOOLKIT
color 0B

:MENU
cls
echo =========================================================
echo       ABHISHEK IT SOLUTIONS - NEW WINDOWS FEATURES TOOLKIT
echo              AbhishekITsolutions.in
echo =========================================================
echo.
echo  1. Check Windows Version and Build
echo  2. Open Windows Update
echo  3. Open Recovery Settings
echo  4. Open Quick Machine Recovery Settings
echo  5. Launch New Windows Edit Command
echo  6. Check Windows Terminal
echo  7. Check Windows Features
echo  8. Open Energy Saver Settings
echo  9. Open File Explorer
echo 10. Open Advanced System Information
echo 11. Check Installed Windows Features
echo 12. Generate New Windows Report
echo  0. Exit
echo.
echo =========================================================
set "choice="
set /p "choice=Select option: "

if "%choice%"=="1" goto VERSION
if "%choice%"=="2" goto UPDATE
if "%choice%"=="3" goto RECOVERY
if "%choice%"=="4" goto QUICKRECOVERY
if "%choice%"=="5" goto EDIT
if "%choice%"=="6" goto TERMINAL
if "%choice%"=="7" goto FEATURES
if "%choice%"=="8" goto ENERGY
if "%choice%"=="9" goto EXPLORER
if "%choice%"=="10" goto MSINFO
if "%choice%"=="11" goto OPTIONAL
if "%choice%"=="12" goto REPORT
if "%choice%"=="0" exit /b

echo.
echo Invalid selection.
pause
goto MENU


:VERSION
cls
echo =========================================================
echo WINDOWS VERSION AND BUILD
echo =========================================================
echo.
winver
echo.
powershell -NoProfile -Command "Get-ComputerInfo | Select-Object WindowsProductName,WindowsVersion,OsBuildNumber"
echo.
pause
goto MENU


:UPDATE
cls
echo Opening Windows Update...
start "" ms-settings:windowsupdate
goto MENU


:RECOVERY
cls
echo Opening Windows Recovery settings...
start "" ms-settings:recovery
goto MENU


:QUICKRECOVERY
cls
echo =========================================================
echo QUICK MACHINE RECOVERY
echo =========================================================
echo.
echo If Quick Machine Recovery is supported and enabled
echo on your device, its configuration will be available
echo through the Windows recovery options.
echo.
start "" ms-settings:recovery
pause
goto MENU


:EDIT
cls
echo =========================================================
echo WINDOWS EDIT COMMAND
echo =========================================================
echo.
where edit >nul 2>&1

if errorlevel 1 (
    echo The "edit" command is not available on this PC.
    echo.
    echo On supported Windows versions, it can be installed
    echo through the Microsoft package manager:
    echo.
    echo winget install Microsoft.Edit
    echo.
    pause
    goto MENU
)

echo The Windows Edit command is available!
echo.
echo Launching Edit...
echo.
edit
goto MENU


:TERMINAL
cls
echo =========================================================
echo WINDOWS TERMINAL
echo =========================================================
echo.
where wt >nul 2>&1

if errorlevel 1 (
    echo Windows Terminal was not found.
    pause
    goto MENU
)

echo Windows Terminal is installed.
echo.
wt
goto MENU


:FEATURES
cls
echo =========================================================
echo WINDOWS OPTIONAL FEATURES
echo =========================================================
echo.
DISM /Online /Get-Features /Format:Table
echo.
pause
goto MENU


:ENERGY
cls
echo Opening Energy Saver settings...
start "" ms-settings:batterysaver-settings
pause
goto MENU


:EXPLORER
cls
echo Opening File Explorer...
explorer.exe
goto MENU


:MSINFO
cls
echo Opening System Information...
start "" msinfo32
pause
goto MENU


:OPTIONAL
cls
echo =========================================================
echo INSTALLED WINDOWS FEATURES
echo =========================================================
echo.
DISM /Online /Get-Features /Format:Table
echo.
pause
goto MENU


:REPORT
cls
set "REPORT=%USERPROFILE%\Desktop\Abhishek_IT_Solutions_New_Windows_Report.txt"

echo Creating report...
echo ABHISHEK IT SOLUTIONS - NEW WINDOWS FEATURES REPORT > "%REPORT%"
echo ================================================= >> "%REPORT%"
echo Website: AbhishekITsolutions.in >> "%REPORT%"
echo. >> "%REPORT%"

echo WINDOWS VERSION >> "%REPORT%"
powershell -NoProfile -Command "Get-ComputerInfo | Select-Object WindowsProductName,WindowsVersion,OsBuildNumber | Format-List" >> "%REPORT%"

echo. >> "%REPORT%"
echo WINDOWS FEATURES >> "%REPORT%"
DISM /Online /Get-Features /Format:Table >> "%REPORT%"

echo. >> "%REPORT%"
echo WINDOWS TERMINAL >> "%REPORT%"
where wt >> "%REPORT%" 2>&1

echo. >> "%REPORT%"
echo EDIT COMMAND >> "%REPORT%"
where edit >> "%REPORT%" 2>&1

echo.
echo Report created:
echo %REPORT%
echo.

start "" notepad.exe "%REPORT%"

pause
goto MENU
