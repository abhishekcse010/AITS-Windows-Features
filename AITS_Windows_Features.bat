@echo off
setlocal EnableExtensions EnableDelayedExpansion
title AITS - Abhishek IT Solutions - Windows Features Toolkit
color 0A

:: =========================================================
:: AITS - ABHISHEK IT SOLUTIONS
:: abhishekitsolutions.in
:: WINDOWS FEATURES TOOLKIT
:: =========================================================

:MAIN
cls
echo =========================================================
echo          AITS - ABHISHEK IT SOLUTIONS
echo              abhishekitsolutions.in
echo             WINDOWS FEATURES TOOLKIT
echo =========================================================
echo.
echo  1. Optional Windows Features
echo  2. Windows Capabilities
echo  3. Windows Feature Packages
echo  4. Enable Windows Feature
echo  5. Disable Windows Feature
echo  6. Feature Status
echo  7. Windows Components
echo  8. DISM Health Check
echo  9. Component Store Cleanup
echo 10. System File Checker (SFC)
echo 11. Features Report
echo 12. Windows Optional Features GUI
echo.
echo  0. Exit
echo =========================================================
set "choice="
set /p "choice=Select Section: "

if "%choice%"=="1" goto FEATURES
if "%choice%"=="2" goto CAPABILITIES
if "%choice%"=="3" goto PACKAGES
if "%choice%"=="4" goto ENABLE_MENU
if "%choice%"=="5" goto DISABLE_MENU
if "%choice%"=="6" goto STATUS_MENU
if "%choice%"=="7" goto COMPONENTS
if "%choice%"=="8" goto HEALTH
if "%choice%"=="9" goto CLEANUP
if "%choice%"=="10" goto SFC
if "%choice%"=="11" goto REPORT
if "%choice%"=="12" goto OPTIONAL
if "%choice%"=="0" exit /b

echo.
echo Invalid selection.
pause
goto MAIN


:FEATURES
cls
call :HEADER "OPTIONAL WINDOWS FEATURES"
echo This section lists Windows features and their current state.
echo.
DISM /Online /Get-Features /Format:Table
goto DONE


:CAPABILITIES
cls
call :HEADER "WINDOWS CAPABILITIES"
echo Capabilities are optional Windows components installed
echo separately from the main Windows image.
echo.
DISM /Online /Get-Capabilities /Format:Table
goto DONE


:PACKAGES
cls
call :HEADER "WINDOWS FEATURE PACKAGES"
echo This shows packages/components installed in the
echo current Windows image.
echo.
DISM /Online /Get-Packages /Format:Table
goto DONE


:ENABLE_MENU
cls
call :HEADER "ENABLE WINDOWS FEATURE"
echo Select a feature by number. No Feature Name is required.
echo.
echo  1. Windows Sandbox
echo     Temporary isolated Windows environment for testing.
echo.
echo  2. Hyper-V
echo     Microsoft's virtualization platform for virtual machines.
echo.
echo  3. WSL
echo     Run Linux distributions inside Windows.
echo.
echo  4. Virtual Machine Platform
echo     Virtualization component used by WSL 2 and other workloads.
echo.
echo  5. Windows Hypervisor Platform
echo     Windows virtualization platform/API for compatible software.
echo.
echo  6. IIS
echo     Windows web server for hosting websites and applications.
echo.
echo  7. .NET Framework 3.5
echo     Required by some older Windows applications.
echo.
echo  8. Telnet Client
echo     Basic TCP connectivity/legacy service testing client.
echo.
echo  9. TFTP Client
echo     Simple file-transfer client used in some network environments.
echo.
echo 10. Legacy Components
echo     Compatibility components for older applications.
echo.
echo 11. Containers
echo     Windows container support for isolated application workloads.
echo.
echo 12. SMB Direct
echo     High-performance SMB networking on supported RDMA hardware.
echo.
echo  0. Back
echo.
set "f="
set /p "f=Select Feature: "

if "%f%"=="1" set "FN=Containers-DisposableClientVM"&set "FD=Windows Sandbox"
if "%f%"=="2" set "FN=Microsoft-Hyper-V-All"&set "FD=Hyper-V"
if "%f%"=="3" set "FN=Microsoft-Windows-Subsystem-Linux"&set "FD=Windows Subsystem for Linux"
if "%f%"=="4" set "FN=VirtualMachinePlatform"&set "FD=Virtual Machine Platform"
if "%f%"=="5" set "FN=HypervisorPlatform"&set "FD=Windows Hypervisor Platform"
if "%f%"=="6" set "FN=IIS-WebServerRole"&set "FD=Internet Information Services (IIS)"
if "%f%"=="7" set "FN=NetFx3"&set "FD=.NET Framework 3.5"
if "%f%"=="8" set "FN=TelnetClient"&set "FD=Telnet Client"
if "%f%"=="9" set "FN=TFTP"&set "FD=TFTP Client"
if "%f%"=="10" set "FN=LegacyComponents"&set "FD=Legacy Components"
if "%f%"=="11" set "FN=Containers"&set "FD=Windows Containers"
if "%f%"=="12" set "FN=SMB1Protocol"&set "FD=SMB 1.0/CIFS"

if "%f%"=="0" goto MAIN
if not defined FN (
    echo.
    echo Invalid selection.
    pause
    goto ENABLE_MENU
)

echo.
echo Selected: !FD!
echo.
echo Current status:
DISM /Online /Get-FeatureInfo /FeatureName:!FN! | findstr /I "State"
echo.
choice /C YN /N /M "Enable this feature? [Y/N]: "
if errorlevel 2 goto ENABLE_MENU

echo.
DISM /Online /Enable-Feature /FeatureName:!FN! /All
set "FN="
set "FD="
goto DONE


:DISABLE_MENU
cls
call :HEADER "DISABLE WINDOWS FEATURE"
echo Select a feature by number. No Feature Name is required.
echo.
echo  1. Windows Sandbox
echo  2. Hyper-V
echo  3. WSL
echo  4. Virtual Machine Platform
echo  5. Windows Hypervisor Platform
echo  6. IIS
echo  7. .NET Framework 3.5
echo  8. Telnet Client
echo  9. TFTP Client
echo 10. Legacy Components
echo 11. Containers
echo 12. SMB 1.0/CIFS
echo.
echo  0. Back
echo.
set "f="
set /p "f=Select Feature: "

if "%f%"=="1" set "FN=Containers-DisposableClientVM"&set "FD=Windows Sandbox"
if "%f%"=="2" set "FN=Microsoft-Hyper-V-All"&set "FD=Hyper-V"
if "%f%"=="3" set "FN=Microsoft-Windows-Subsystem-Linux"&set "FD=Windows Subsystem for Linux"
if "%f%"=="4" set "FN=VirtualMachinePlatform"&set "FD=Virtual Machine Platform"
if "%f%"=="5" set "FN=HypervisorPlatform"&set "FD=Windows Hypervisor Platform"
if "%f%"=="6" set "FN=IIS-WebServerRole"&set "FD=Internet Information Services (IIS)"
if "%f%"=="7" set "FN=NetFx3"&set "FD=.NET Framework 3.5"
if "%f%"=="8" set "FN=TelnetClient"&set "FD=Telnet Client"
if "%f%"=="9" set "FN=TFTP"&set "FD=TFTP Client"
if "%f%"=="10" set "FN=LegacyComponents"&set "FD=Legacy Components"
if "%f%"=="11" set "FN=Containers"&set "FD=Windows Containers"
if "%f%"=="12" set "FN=SMB1Protocol"&set "FD=SMB 1.0/CIFS"

if "%f%"=="0" goto MAIN
if not defined FN (
    echo.
    echo Invalid selection.
    pause
    goto DISABLE_MENU
)

echo.
echo Selected: !FD!
echo.
choice /C YN /N /M "Disable this feature? [Y/N]: "
if errorlevel 2 goto DISABLE_MENU

echo.
DISM /Online /Disable-Feature /FeatureName:!FN!
set "FN="
set "FD="
goto DONE


:STATUS_MENU
cls
call :HEADER "FEATURE STATUS"
echo Select a feature to check its current state.
echo.
echo  1. Windows Sandbox
echo  2. Hyper-V
echo  3. WSL
echo  4. Virtual Machine Platform
echo  5. Windows Hypervisor Platform
echo  6. IIS
echo  7. .NET Framework 3.5
echo  8. Telnet Client
echo  9. TFTP Client
echo 10. Legacy Components
echo 11. Containers
echo 12. SMB 1.0/CIFS
echo.
echo  0. Back
echo.
set "f="
set /p "f=Select Feature: "

if "%f%"=="1" set "FN=Containers-DisposableClientVM"&set "FD=Windows Sandbox"
if "%f%"=="2" set "FN=Microsoft-Hyper-V-All"&set "FD=Hyper-V"
if "%f%"=="3" set "FN=Microsoft-Windows-Subsystem-Linux"&set "FD=Windows Subsystem for Linux"
if "%f%"=="4" set "FN=VirtualMachinePlatform"&set "FD=Virtual Machine Platform"
if "%f%"=="5" set "FN=HypervisorPlatform"&set "FD=Windows Hypervisor Platform"
if "%f%"=="6" set "FN=IIS-WebServerRole"&set "FD=Internet Information Services (IIS)"
if "%f%"=="7" set "FN=NetFx3"&set "FD=.NET Framework 3.5"
if "%f%"=="8" set "FN=TelnetClient"&set "FD=Telnet Client"
if "%f%"=="9" set "FN=TFTP"&set "FD=TFTP Client"
if "%f%"=="10" set "FN=LegacyComponents"&set "FD=Legacy Components"
if "%f%"=="11" set "FN=Containers"&set "FD=Windows Containers"
if "%f%"=="12" set "FN=SMB1Protocol"&set "FD=SMB 1.0/CIFS"

if "%f%"=="0" goto MAIN
if not defined FN (
    echo.
    echo Invalid selection.
    pause
    goto STATUS_MENU
)

cls
call :HEADER "!FD! - STATUS"
echo.
DISM /Online /Get-FeatureInfo /FeatureName:!FN!
set "FN="
set "FD="
goto DONE


:COMPONENTS
cls
call :HEADER "WINDOWS COMPONENTS"
echo This section shows the Windows component store and
echo installed optional features.
echo.
echo ===== COMPONENT STORE =====
DISM /Online /Cleanup-Image /AnalyzeComponentStore
echo.
echo ===== OPTIONAL FEATURES =====
DISM /Online /Get-Features /Format:Table
goto DONE


:HEALTH
cls
call :HEADER "DISM HEALTH CHECK"
echo.
echo 1. Quick component-store check
echo 2. Detailed component-store scan
echo 3. Check and repair Windows image
echo 0. Back
echo.
set "h="
set /p "h=Select: "

if "%h%"=="1" (
    DISM /Online /Cleanup-Image /CheckHealth
    goto DONE
)
if "%h%"=="2" (
    DISM /Online /Cleanup-Image /ScanHealth
    goto DONE
)
if "%h%"=="3" (
    DISM /Online /Cleanup-Image /RestoreHealth
    goto DONE
)
if "%h%"=="0" goto MAIN
echo Invalid selection.
pause
goto HEALTH


:CLEANUP
cls
call :HEADER "COMPONENT STORE CLEANUP"
echo.
echo This removes superseded component versions from the
echo Windows component store to reduce unnecessary storage use.
echo.
choice /C YN /N /M "Start component cleanup? [Y/N]: "
if errorlevel 2 goto MAIN
echo.
DISM /Online /Cleanup-Image /StartComponentCleanup
goto DONE


:SFC
cls
call :HEADER "SYSTEM FILE CHECKER"
echo.
echo SFC checks protected Windows system files and attempts
echo to repair corrupted files.
echo.
choice /C YN /N /M "Start SFC /scannow? [Y/N]: "
if errorlevel 2 goto MAIN
echo.
sfc /scannow
goto DONE


:REPORT
cls
call :HEADER "WINDOWS FEATURES REPORT"
set "REPORT=%USERPROFILE%\Desktop\AITS_Windows_Features_Report.txt"
echo.
echo Creating report...
echo.

> "%REPORT%" echo AITS - ABHISHEK IT SOLUTIONS
>> "%REPORT%" echo abhishekitsolutions.in
>> "%REPORT%" echo WINDOWS FEATURES REPORT
>> "%REPORT%" echo Generated: %DATE% %TIME%
>> "%REPORT%" echo =========================================================
>> "%REPORT%" echo.
>> "%REPORT%" echo ===== WINDOWS VERSION =====
ver >> "%REPORT%"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" >> "%REPORT%"

>> "%REPORT%" echo.
>> "%REPORT%" echo ===== OPTIONAL WINDOWS FEATURES =====
DISM /Online /Get-Features /Format:Table >> "%REPORT%"

>> "%REPORT%" echo.
>> "%REPORT%" echo ===== WINDOWS CAPABILITIES =====
DISM /Online /Get-Capabilities /Format:Table >> "%REPORT%"

>> "%REPORT%" echo.
>> "%REPORT%" echo ===== WINDOWS PACKAGES =====
DISM /Online /Get-Packages /Format:Table >> "%REPORT%"

>> "%REPORT%" echo.
>> "%REPORT%" echo ===== COMPONENT STORE =====
DISM /Online /Cleanup-Image /AnalyzeComponentStore >> "%REPORT%"

echo Report created:
echo %REPORT%
start "" notepad.exe "%REPORT%"
goto DONE


:OPTIONAL
cls
call :HEADER "WINDOWS OPTIONAL FEATURES GUI"
echo.
echo Opening Windows Features control panel...
start "" optionalfeatures.exe
goto DONE


:HEADER
echo =========================================================
echo          AITS - ABHISHEK IT SOLUTIONS
echo              abhishekitsolutions.in
echo =========================================================
echo             %~1
echo =========================================================
echo.
exit /b


:DONE
echo.
echo =========================================================
echo                 OPERATION COMPLETED
echo =========================================================
echo.
pause
goto MAIN
