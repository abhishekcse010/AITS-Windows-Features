@echo off
setlocal EnableExtensions EnableDelayedExpansion
title AITS - Abhishek IT Solutions - Windows IT Toolkit
color 0A

:MAIN
cls
call :HEADER "WINDOWS IT TOOLKIT"
echo.
echo  1. SYSTEM ^& HARDWARE
echo     Disks, drivers, devices, memory and system information.
echo.
echo  2. NETWORK ^& INTERNET
echo     Wi-Fi, Ethernet, internet and firewall tools.
echo.
echo  3. WINDOWS ^& SECURITY
echo     Updates, Defender, apps and Windows security tools.
echo.
echo  4. TROUBLESHOOTING ^& LOGS
echo     Find errors, crashes and common Windows problems.
echo.
echo  5. ADMINISTRATION ^& SERVICES
echo     Services, users, programs and system management.
echo.
echo  6. SYSTEM UTILITIES
echo     Task Manager, commands, settings and useful Windows tools.
echo.
echo  7. LEARN WINDOWS TOOLS
echo     Learn what each tool does and when to use it.
echo.
echo  0. EXIT
echo.
echo ================================================================
set "choice="
set /p "choice=Select Option: "
if "%choice%"=="1" goto SYSTEM
if "%choice%"=="2" goto NETWORK
if "%choice%"=="3" goto SECURITY
if "%choice%"=="4" goto TROUBLE
if "%choice%"=="5" goto ADMIN
if "%choice%"=="6" goto UTILITIES
if "%choice%"=="7" goto LEARN
if "%choice%"=="0" exit /b
goto MAIN

:SYSTEM
set "CURRENT=SYSTEM"
cls
call :HEADER "SYSTEM AND HARDWARE"
echo.
echo  1. Disk Management
echo     Manage disks, partitions and drive letters.
echo.
echo  2. Device Manager
echo     Check devices and driver problems.
echo.
echo  3. Installed Drivers
echo     View drivers installed on the system.
echo.
echo  4. System Information
echo     View detailed hardware and Windows information.
echo.
echo  5. Storage
echo     Check storage space and usage.
echo.
echo  6. Disk Cleanup
echo     Remove unnecessary temporary files.
echo.
echo  7. Memory Diagnostic
echo     Check RAM for possible memory problems.
echo.
echo  8. Resource Monitor
echo     Check CPU, memory, disk and network usage.
echo.
echo  9. Performance Monitor
echo     Monitor detailed system performance.
echo.
echo 10. Computer Properties
echo     View basic computer and Windows details.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" diskmgmt.msc
if "%c%"=="2" start "" devmgmt.msc
if "%c%"=="3" start "" cmd /k driverquery
if "%c%"=="4" start "" msinfo32.exe
if "%c%"=="5" start "" ms-settings:storagesense
if "%c%"=="6" start "" cleanmgr.exe
if "%c%"=="7" start "" mdsched.exe
if "%c%"=="8" start "" resmon.exe
if "%c%"=="9" start "" perfmon.exe
if "%c%"=="10" start "" sysdm.cpl
if "%c%"=="0" goto MAIN
goto RETURN

:NETWORK
set "CURRENT=NETWORK"
cls
call :HEADER "NETWORK AND INTERNET"
echo.
echo  1. Network Connections
echo     Manage Wi-Fi, Ethernet and network adapters.
echo.
echo  2. Network Settings
echo     View and manage Windows network settings.
echo.
echo  3. Firewall
echo     Check and manage Windows Firewall.
echo.
echo  4. Advanced Firewall
echo     Manage detailed firewall rules and connections.
echo.
echo  5. Internet Settings
echo     Manage classic Windows internet settings.
echo.
echo  6. Proxy Settings
echo     Check and configure proxy settings.
echo.
echo  7. Network Troubleshooter
echo     Diagnose common network and internet problems.
echo.
echo  8. Network Reset
echo     Reset Windows network components when needed.
echo.
echo  9. Network Configuration
echo     View IP, gateway, DNS and adapter details.
echo.
echo 10. Hosts File
echo     Manage local computer name-to-IP mappings.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" ncpa.cpl
if "%c%"=="2" start "" ms-settings:network-status
if "%c%"=="3" start "" firewall.cpl
if "%c%"=="4" start "" wf.msc
if "%c%"=="5" start "" inetcpl.cpl
if "%c%"=="6" start "" ms-settings:network-proxy
if "%c%"=="7" start "" ms-settings:troubleshoot
if "%c%"=="8" start "" ms-settings:network-advancedsettings
if "%c%"=="9" start "" cmd /k ipconfig /all
if "%c%"=="10" start "" notepad.exe "%SystemRoot%\System32\drivers\etc\hosts"
if "%c%"=="0" goto MAIN
goto RETURN

:SECURITY
set "CURRENT=SECURITY"
cls
call :HEADER "WINDOWS AND SECURITY"
echo.
echo  1. Windows Security
echo     Check antivirus, device security and protection.
echo.
echo  2. Virus ^& Threat Protection
echo     Check Microsoft Defender and run security scans.
echo.
echo  3. Windows Update
echo     Check for Windows updates and update problems.
echo.
echo  4. Update History
echo     View recently installed Windows updates.
echo.
echo  5. Installed Apps
echo     Repair, modify or uninstall applications.
echo.
echo  6. Windows Features
echo     Enable or disable optional Windows components.
echo.
echo  7. Windows Activation
echo     Check Windows activation status.
echo.
echo  8. Recovery Settings
echo     Access Windows recovery and reset options.
echo.
echo  9. Privacy Settings
echo     Manage Windows privacy controls.
echo.
echo 10. User Account Control
echo     Manage Windows security confirmation settings.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" windowsdefender:
if "%c%"=="2" start "" windowsdefender://threat/
if "%c%"=="3" start "" ms-settings:windowsupdate
if "%c%"=="4" start "" ms-settings:windowsupdate-history
if "%c%"=="5" start "" ms-settings:appsfeatures
if "%c%"=="6" start "" optionalfeatures.exe
if "%c%"=="7" start "" ms-settings:activation
if "%c%"=="8" start "" ms-settings:recovery
if "%c%"=="9" start "" ms-settings:privacy
if "%c%"=="10" start "" UserAccountControlSettings.exe
if "%c%"=="0" goto MAIN
goto RETURN

:TROUBLE
set "CURRENT=TROUBLE"
cls
call :HEADER "TROUBLESHOOTING AND LOGS"
echo.
echo  1. Event Viewer
echo     Find Windows, application and security errors.
echo.
echo  2. Reliability Monitor
echo     Find crashes, failures and recent system problems.
echo.
echo  3. Problem Reports
echo     View Windows-generated error and problem reports.
echo.
echo  4. System File Repair
echo     Check and repair damaged Windows system files.
echo.
echo  5. Windows Image Repair
echo     Attempt to repair damaged Windows components.
echo.
echo  6. System Restore
echo     Restore Windows using an available restore point.
echo.
echo  7. Advanced Startup
echo     Access advanced Windows recovery options.
echo.
echo  8. Startup Repair
echo     Try to fix Windows startup and boot problems.
echo.
echo  9. Memory Diagnostic
echo     Check RAM for possible hardware problems.
echo.
echo 10. Safe Mode Options
echo     Access Windows startup troubleshooting options.
echo.
echo 11. Crash Information
echo     Check information useful for investigating system crashes.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" eventvwr.msc
if "%c%"=="2" start "" perfmon /rel
if "%c%"=="3" start "" wercon.exe
if "%c%"=="4" goto SFC
if "%c%"=="5" goto RESTOREHEALTH
if "%c%"=="6" start "" rstrui.exe
if "%c%"=="7" shutdown /r /o /t 0
if "%c%"=="8" start "" ms-settings:recovery
if "%c%"=="9" start "" mdsched.exe
if "%c%"=="10" start "" ms-settings:recovery
if "%c%"=="11" start "" ms-settings:recovery
if "%c%"=="0" goto MAIN
goto RETURN

:SFC
cls
call :HEADER "SYSTEM FILE REPAIR"
echo.
echo Windows will check protected system files and attempt
echo to repair detected problems.
echo.
choice /C YN /N /M "Start repair? [Y/N]: "
if errorlevel 2 goto TROUBLE
echo.
sfc /scannow
echo.
pause
goto TROUBLE

:RESTOREHEALTH
cls
call :HEADER "WINDOWS IMAGE REPAIR"
echo.
echo Windows will scan and attempt to repair damaged components.
echo.
choice /C YN /N /M "Start repair? [Y/N]: "
if errorlevel 2 goto TROUBLE
echo.
DISM /Online /Cleanup-Image /RestoreHealth
echo.
pause
goto TROUBLE

:ADMIN
set "CURRENT=ADMIN"
cls
call :HEADER "ADMINISTRATION AND SERVICES"
echo.
echo  1. Windows Services
echo     Manage background Windows services.
echo.
echo  2. Computer Management
echo     Access several Windows management tools together.
echo.
echo  3. User Accounts
echo     Manage local Windows user accounts.
echo.
echo  4. Users ^& Groups
echo     Manage local users and groups.
echo.
echo  5. Installed Programs
echo     Manage traditional desktop applications.
echo.
echo  6. Startup Apps
echo     Manage applications that start with Windows.
echo.
echo  7. Task Scheduler
echo     View and manage scheduled Windows tasks.
echo.
echo  8. System Configuration
echo     Manage selected startup and boot settings.
echo.
echo  9. Shared Folders
echo     View and manage Windows shared folders.
echo.
echo 10. Local Security
echo     Manage available Windows security settings.
echo.
echo 11. Administrative Tools
echo     Access Windows administration tools.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" services.msc
if "%c%"=="2" start "" compmgmt.msc
if "%c%"=="3" start "" netplwiz.exe
if "%c%"=="4" start "" lusrmgr.msc
if "%c%"=="5" start "" appwiz.cpl
if "%c%"=="6" start "" ms-settings:startupapps
if "%c%"=="7" start "" taskschd.msc
if "%c%"=="8" start "" msconfig.exe
if "%c%"=="9" start "" fsmgmt.msc
if "%c%"=="10" start "" secpol.msc
if "%c%"=="11" start "" control.exe admintools
if "%c%"=="0" goto MAIN
goto RETURN

:UTILITIES
set "CURRENT=UTILITIES"
cls
call :HEADER "SYSTEM UTILITIES"
echo.
echo  1. Task Manager
echo     Check programs, CPU, RAM, disk and network usage.
echo.
echo  2. Command Prompt
echo     Run Windows troubleshooting commands.
echo.
echo  3. PowerShell
echo     Run advanced Windows administration commands.
echo.
echo  4. Windows Terminal
echo     Access Command Prompt and PowerShell.
echo.
echo  5. Registry Editor
echo     View and manage Windows Registry settings.
echo.
echo  6. Control Panel
echo     Open classic Windows configuration tools.
echo.
echo  7. Windows Settings
echo     Open Windows system and configuration settings.
echo.
echo  8. Windows Tools
echo     Access built-in Windows administration utilities.
echo.
echo  9. System Information
echo     View detailed system information.
echo.
echo 10. Windows Version
echo     Check Windows edition, version and build.
echo.
echo 11. Run
echo     Quickly open Windows tools and commands.
echo.
echo 12. Restart / Shutdown
echo     Quickly restart, shut down or lock the computer.
echo.
echo  0. Back
echo.
echo ================================================================
set "c="
set /p "c=Select Option: "
if "%c%"=="1" start "" taskmgr.exe
if "%c%"=="2" start "" cmd.exe
if "%c%"=="3" start "" powershell.exe
if "%c%"=="4" start "" wt.exe
if "%c%"=="5" start "" regedit.exe
if "%c%"=="6" start "" control.exe
if "%c%"=="7" start "" ms-settings:
if "%c%"=="8" start "" control.exe /name Microsoft.AdministrativeTools
if "%c%"=="9" start "" msinfo32.exe
if "%c%"=="10" start "" winver.exe
if "%c%"=="11" start "" run.exe
if "%c%"=="12" goto POWER
if "%c%"=="0" goto MAIN
goto RETURN

:POWER
cls
call :HEADER "RESTART / SHUTDOWN"
echo.
echo  1. Restart Computer
echo     Restart Windows normally.
echo.
echo  2. Shut Down Computer
echo     Shut down Windows.
echo.
echo  3. Sign Out
echo     Sign out from the current Windows account.
echo.
echo  4. Lock Computer
echo     Lock the current Windows session.
echo.
echo  0. Back
echo.
set "p="
set /p "p=Select Option: "
if "%p%"=="1" shutdown /r /t 0
if "%p%"=="2" shutdown /s /t 0
if "%p%"=="3" shutdown /l
if "%p%"=="4" rundll32.exe user32.dll,LockWorkStation
if "%p%"=="0" goto UTILITIES
goto POWER

:LEARN
set "LEARN_RETURN=MAIN"
goto LEARN_MENU

:LEARN_MENU
cls
call :HEADER "LEARN WINDOWS TOOLS"
echo.
echo     Learn Windows tools, their purpose and when to use them.
echo.
echo  1. SYSTEM ^& HARDWARE
echo     Learn disks, drivers, memory and hardware tools.
echo.
echo  2. NETWORK ^& INTERNET
echo     Learn network, DNS, firewall and connectivity tools.
echo.
echo  3. WINDOWS ^& SECURITY
echo     Learn updates, Defender, apps and security settings.
echo.
echo  4. TROUBLESHOOTING ^& RECOVERY
echo     Learn logs, repairs, recovery and diagnostic tools.
echo.
echo  5. ADMINISTRATION ^& SERVICES
echo     Learn services, users, programs and system management.
echo.
echo  6. SYSTEM UTILITIES
echo     Learn Task Manager, CMD, PowerShell and other utilities.
echo.
echo  0. Back
echo.
echo ================================================================
set "l="
set /p "l=Select Category: "
if "%l%"=="1" goto LEARN_SYSTEM
if "%l%"=="2" goto LEARN_NETWORK
if "%l%"=="3" goto LEARN_SECURITY
if "%l%"=="4" goto LEARN_TROUBLE
if "%l%"=="5" goto LEARN_ADMIN
if "%l%"=="6" goto LEARN_UTIL
if "%l%"=="0" goto MAIN
goto LEARN_MENU

:LEARN_SYSTEM
cls
call :HEADER "LEARN - SYSTEM AND HARDWARE"
echo.
echo  1. Disk Management
echo  2. Device Manager
echo  3. Installed Drivers
echo  4. System Information
echo  5. Storage
echo  6. Disk Cleanup
echo  7. Memory Diagnostic
echo  8. Resource Monitor
echo  9. Performance Monitor
echo 10. Computer Properties
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LD_DISK
if "%l%"=="2" goto LD_DEVICE
if "%l%"=="3" goto LD_DRIVER
if "%l%"=="4" goto LD_SYSINFO
if "%l%"=="5" goto LD_STORAGE
if "%l%"=="6" goto LD_CLEAN
if "%l%"=="7" goto LD_MEMORY
if "%l%"=="8" goto LD_RESOURCE
if "%l%"=="9" goto LD_PERF
if "%l%"=="10" goto LD_PROPERTIES
if "%l%"=="0" goto LEARN_MENU
goto LEARN_SYSTEM

:LD_DISK
call :LEARN_PAGE "DISK MANAGEMENT" "A Windows tool used to manage disks and partitions." "View connected disks; Create or delete partitions; Format volumes; Change drive letters; Check disk layout." "New HDD/SSD is not appearing; Drive letter is missing; Managing partitions; Checking disk layout." "Be careful when formatting or deleting partitions because data can be permanently removed."
goto LEARN_SYSTEM
:LD_DEVICE
call :LEARN_PAGE "DEVICE MANAGER" "A Windows tool for viewing and managing hardware devices." "Check device status; Find driver problems; Update drivers; Roll back drivers; Enable or disable devices." "Wi-Fi, audio, USB, display or another hardware device is not working correctly." ""
goto LEARN_SYSTEM
:LD_DRIVER
call :LEARN_PAGE "INSTALLED DRIVERS" "Shows drivers currently installed on Windows." "Review driver versions; Identify installed hardware drivers; Compare driver information during troubleshooting." "Checking driver information or investigating hardware problems." ""
goto LEARN_SYSTEM
:LD_SYSINFO
call :LEARN_PAGE "SYSTEM INFORMATION" "Provides detailed information about Windows, hardware and system components." "View processor, memory, BIOS, devices and Windows details." "Checking system specifications or collecting information for support." ""
goto LEARN_SYSTEM
:LD_STORAGE
call :LEARN_PAGE "STORAGE" "Shows how storage space is being used." "Check available space; See storage categories; Manage storage settings." "Low disk space or checking what is using storage." ""
goto LEARN_SYSTEM
:LD_CLEAN
call :LEARN_PAGE "DISK CLEANUP" "Removes selected unnecessary files from Windows." "Clean temporary files; Free storage space; Remove selected system files." "Low storage space or routine cleanup." ""
goto LEARN_SYSTEM
:LD_MEMORY
call :LEARN_PAGE "MEMORY DIAGNOSTIC" "Tests RAM for possible memory problems." "Run a Windows memory test and check for reported memory errors." "Crashes, freezes, blue screens or suspected RAM problems." ""
goto LEARN_SYSTEM
:LD_RESOURCE
call :LEARN_PAGE "RESOURCE MONITOR" "Shows detailed use of CPU, memory, disk and network resources." "Identify resource-heavy processes; Check disk activity; Check network activity." "When a PC is slow or a program is using too many resources." ""
goto LEARN_SYSTEM
:LD_PERF
call :LEARN_PAGE "PERFORMANCE MONITOR" "Provides detailed Windows performance monitoring." "Monitor performance counters; Analyze system behavior over time." "Advanced performance troubleshooting." ""
goto LEARN_SYSTEM
:LD_PROPERTIES
call :LEARN_PAGE "COMPUTER PROPERTIES" "Shows basic system and advanced Windows configuration information." "View computer name; System details; Advanced system settings." "Checking basic system configuration." ""
goto LEARN_SYSTEM

:LEARN_NETWORK
cls
call :HEADER "LEARN - NETWORK AND INTERNET"
echo.
echo  1. Network Connections
echo  2. Network Settings
echo  3. Firewall
echo  4. Advanced Firewall
echo  5. Internet Settings
echo  6. Proxy Settings
echo  7. Network Troubleshooter
echo  8. Network Reset
echo  9. Network Configuration
echo 10. Hosts File
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LN_CONN
if "%l%"=="2" goto LN_SETTINGS
if "%l%"=="3" goto LN_FIREWALL
if "%l%"=="4" goto LN_ADVFW
if "%l%"=="5" goto LN_INET
if "%l%"=="6" goto LN_PROXY
if "%l%"=="7" goto LN_TROUBLE
if "%l%"=="8" goto LN_RESET
if "%l%"=="9" goto LN_CONFIG
if "%l%"=="10" goto LN_HOSTS
if "%l%"=="0" goto LEARN_MENU
goto LEARN_NETWORK

:LN_CONN
call :LEARN_PAGE "NETWORK CONNECTIONS" "Manage Wi-Fi, Ethernet and other network adapters." "View adapters; Enable or disable adapters; Check adapter status." "Network adapter problems or checking available connections." ""
goto LEARN_NETWORK
:LN_SETTINGS
call :LEARN_PAGE "NETWORK SETTINGS" "Windows settings for network and internet connections." "Configure Wi-Fi and Ethernet; Review network status." "General network configuration." ""
goto LEARN_NETWORK
:LN_FIREWALL
call :LEARN_PAGE "FIREWALL" "Controls network connections to and from the computer." "Check protection status; Allow supported applications; Review firewall settings." "An application cannot connect or when checking network protection." "Avoid disabling the firewall unnecessarily."
goto LEARN_NETWORK
:LN_ADVFW
call :LEARN_PAGE "ADVANCED FIREWALL" "Provides detailed control over Windows Firewall rules." "Review inbound and outbound rules; Check profiles; Manage detailed rules." "Advanced network troubleshooting and administration." ""
goto LEARN_NETWORK
:LN_INET
call :LEARN_PAGE "INTERNET SETTINGS" "Classic Windows settings for internet and connection behavior." "Review connection settings; Configure supported browser/network options." "Older applications or advanced internet configuration." ""
goto LEARN_NETWORK
:LN_PROXY
call :LEARN_PAGE "PROXY SETTINGS" "Controls whether Windows uses a proxy for network access." "View automatic and manual proxy settings." "Internet works differently on a managed or proxy-based network." ""
goto LEARN_NETWORK
:LN_TROUBLE
call :LEARN_PAGE "NETWORK TROUBLESHOOTER" "Windows diagnostic tools for common network problems." "Run available diagnostics; Follow Windows troubleshooting suggestions." "Internet or network connection problems." ""
goto LEARN_NETWORK
:LN_RESET
call :LEARN_PAGE "NETWORK RESET" "Resets Windows network components and adapters." "Restore network components to a clean Windows state." "Persistent network problems after normal troubleshooting." "Network reset can remove some saved network configuration."
goto LEARN_NETWORK
:LN_CONFIG
call :LEARN_PAGE "NETWORK CONFIGURATION" "Shows IP address, gateway, DNS and adapter information." "Check IP address; Gateway; DNS; Adapter details." "Internet connectivity troubleshooting." ""
goto LEARN_NETWORK
:LN_HOSTS
call :LEARN_PAGE "HOSTS FILE" "A local file that maps computer names to IP addresses." "Create local hostname mappings; Test local name resolution." "Specific development, testing or local network scenarios." "Incorrect entries can affect access to websites or services."
goto LEARN_NETWORK

:LEARN_SECURITY
cls
call :HEADER "LEARN - WINDOWS AND SECURITY"
echo.
echo  1. Windows Security
echo  2. Virus ^& Threat Protection
echo  3. Windows Update
echo  4. Update History
echo  5. Installed Apps
echo  6. Windows Features
echo  7. Windows Activation
echo  8. Recovery Settings
echo  9. Privacy Settings
echo 10. User Account Control
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LS_SECURITY
if "%l%"=="2" goto LS_DEFENDER
if "%l%"=="3" goto LS_UPDATE
if "%l%"=="4" goto LS_HISTORY
if "%l%"=="5" goto LS_APPS
if "%l%"=="6" goto LS_FEATURES
if "%l%"=="7" goto LS_ACTIVATION
if "%l%"=="8" goto LS_RECOVERY
if "%l%"=="9" goto LS_PRIVACY
if "%l%"=="10" goto LS_UAC
if "%l%"=="0" goto LEARN_MENU
goto LEARN_SECURITY

:LS_SECURITY
call :LEARN_PAGE "WINDOWS SECURITY" "Central Windows security area for device and threat protection." "Review security areas; Check protection status." "Checking overall Windows security." ""
goto LEARN_SECURITY
:LS_DEFENDER
call :LEARN_PAGE "VIRUS AND THREAT PROTECTION" "Microsoft Defender area for malware protection and scanning." "Check protection; Run supported scans; Review threat history." "Suspected malware or checking antivirus protection." ""
goto LEARN_SECURITY
:LS_UPDATE
call :LEARN_PAGE "WINDOWS UPDATE" "Keeps Windows and supported components updated." "Check updates; Review update settings; Troubleshoot update issues." "Windows update problems or keeping the system current." ""
goto LEARN_SECURITY
:LS_HISTORY
call :LEARN_PAGE "UPDATE HISTORY" "Shows Windows updates installed on the computer." "Review recent updates and installation history." "An issue started after an update or when checking update history." ""
goto LEARN_SECURITY
:LS_APPS
call :LEARN_PAGE "INSTALLED APPS" "Windows area for managing installed applications." "Uninstall supported apps; Access repair or modification options." "Application problems or removing software." ""
goto LEARN_SECURITY
:LS_FEATURES
call :LEARN_PAGE "WINDOWS FEATURES" "Optional Windows components that can be enabled or disabled." "Manage supported Windows components such as optional features." "A required Windows component is missing or when learning Windows features." ""
goto LEARN_SECURITY
:LS_ACTIVATION
call :LEARN_PAGE "WINDOWS ACTIVATION" "Shows Windows activation status and related settings." "Check activation status and available activation options." "Checking whether Windows is activated." ""
goto LEARN_SECURITY
:LS_RECOVERY
call :LEARN_PAGE "RECOVERY SETTINGS" "Provides Windows reset and recovery options." "Access recovery options; Reset Windows when appropriate." "Serious Windows problems or recovery tasks." "Some recovery options can remove apps or data."
goto LEARN_SECURITY
:LS_PRIVACY
call :LEARN_PAGE "PRIVACY SETTINGS" "Controls Windows access to privacy-related features and data." "Review permissions and privacy settings." "Managing application and Windows privacy." ""
goto LEARN_SECURITY
:LS_UAC
call :LEARN_PAGE "USER ACCOUNT CONTROL" "Controls security confirmations for actions that need elevated permissions." "Understand when Windows asks for administrator approval." "Learning Windows security prompts or adjusting UAC behavior." "Lowering UAC protection can reduce security."
goto LEARN_SECURITY

:LEARN_TROUBLE
cls
call :HEADER "LEARN - TROUBLESHOOTING AND RECOVERY"
echo.
echo  1. Event Viewer
echo  2. Reliability Monitor
echo  3. Problem Reports
echo  4. System File Repair
echo  5. Windows Health Check
echo  6. Windows Image Repair
echo  7. System Restore
echo  8. Advanced Startup
echo  9. Startup Repair
echo 10. Memory Diagnostic
echo 11. Safe Mode Options
echo 12. Crash Information
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LT_EVENT
if "%l%"=="2" goto LT_RELIABILITY
if "%l%"=="3" goto LT_REPORTS
if "%l%"=="4" goto LT_SFC
if "%l%"=="5" goto LT_HEALTH
if "%l%"=="6" goto LT_IMAGE
if "%l%"=="7" goto LT_RESTORE
if "%l%"=="8" goto LT_ADV
if "%l%"=="9" goto LT_STARTUP
if "%l%"=="10" goto LT_MEMORY
if "%l%"=="11" goto LT_SAFE
if "%l%"=="12" goto LT_CRASH
if "%l%"=="0" goto LEARN_MENU
goto LEARN_TROUBLE

:LT_EVENT
call :LEARN_PAGE "EVENT VIEWER" "Records Windows, application and security events." "Review errors, warnings and information events; Check event details." "Investigating application, service or Windows errors." ""
goto LEARN_TROUBLE
:LT_RELIABILITY
call :LEARN_PAGE "RELIABILITY MONITOR" "Shows a timeline of application and Windows reliability problems." "Find crashes, failures and important system events." "Quickly identifying when a problem started." ""
goto LEARN_TROUBLE
:LT_REPORTS
call :LEARN_PAGE "PROBLEM REPORTS" "Shows Windows-generated reports about detected problems." "Review available problem reports." "Investigating recurring application or system issues." ""
goto LEARN_TROUBLE
:LT_SFC
call :LEARN_PAGE "SYSTEM FILE REPAIR" "Windows System File Checker checks protected system files." "Scan protected files; Attempt automatic repair." "Suspected Windows system-file corruption." "Repair operations can take time."
goto LEARN_TROUBLE
:LT_HEALTH
call :LEARN_PAGE "WINDOWS HEALTH CHECK" "Checks the Windows component store for reported problems." "Run quick or detailed component checks." "When Windows components may be damaged." ""
goto LEARN_TROUBLE
:LT_IMAGE
call :LEARN_PAGE "WINDOWS IMAGE REPAIR" "DISM can scan and repair the Windows component store." "Repair Windows component corruption." "When system repair is needed after other checks." "Repair can take time and may require administrator access."
goto LEARN_TROUBLE
:LT_RESTORE
call :LEARN_PAGE "SYSTEM RESTORE" "Returns Windows system settings to an earlier restore point." "Restore system configuration without normally removing personal files." "After a software or configuration change causes problems." "Restore points may not exist on every system."
goto LEARN_TROUBLE
:LT_ADV
call :LEARN_PAGE "ADVANCED STARTUP" "Provides access to advanced Windows recovery and startup options." "Access recovery tools and startup settings." "Serious startup or Windows troubleshooting." ""
goto LEARN_TROUBLE
:LT_STARTUP
call :LEARN_PAGE "STARTUP REPAIR" "Windows recovery feature for startup and boot problems." "Attempt automatic startup repair." "Windows does not start normally." ""
goto LEARN_TROUBLE
:LT_MEMORY
call :LEARN_PAGE "MEMORY DIAGNOSTIC" "Tests RAM for possible memory problems." "Run a Windows memory test." "Crashes, freezes, blue screens or suspected RAM issues." ""
goto LEARN_TROUBLE
:LT_SAFE
call :LEARN_PAGE "SAFE MODE OPTIONS" "Starts Windows with a limited set of drivers and services." "Use startup options for troubleshooting software and driver problems." "When normal Windows startup is causing problems." ""
goto LEARN_TROUBLE
:LT_CRASH
call :LEARN_PAGE "CRASH INFORMATION" "Provides information useful for investigating system crashes." "Review available crash and recovery information." "Blue screens, unexpected restarts or repeated crashes." ""
goto LEARN_TROUBLE

:LEARN_ADMIN
cls
call :HEADER "LEARN - ADMINISTRATION AND SERVICES"
echo.
echo  1. Windows Services
echo  2. Computer Management
echo  3. User Accounts
echo  4. Users ^& Groups
echo  5. Installed Programs
echo  6. Startup Apps
echo  7. Task Scheduler
echo  8. System Configuration
echo  9. Shared Folders
echo 10. Local Security
echo 11. Administrative Tools
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LA_SERVICES
if "%l%"=="2" goto LA_COMPUTER
if "%l%"=="3" goto LA_USERS
if "%l%"=="4" goto LA_GROUPS
if "%l%"=="5" goto LA_PROGRAMS
if "%l%"=="6" goto LA_STARTUP
if "%l%"=="7" goto LA_TASKS
if "%l%"=="8" goto LA_CONFIG
if "%l%"=="9" goto LA_SHARED
if "%l%"=="10" goto LA_SECURITY
if "%l%"=="11" goto LA_ADMINTOOLS
if "%l%"=="0" goto LEARN_MENU
goto LEARN_ADMIN

:LA_SERVICES
call :LEARN_PAGE "WINDOWS SERVICES" "Background components that provide Windows and application functions." "View service status; Understand automatic, manual and disabled startup types." "A service is stopped or an application depends on a Windows service." "Changing important services without understanding them can affect Windows."
goto LEARN_ADMIN
:LA_COMPUTER
call :LEARN_PAGE "COMPUTER MANAGEMENT" "A central console containing several Windows management tools." "Access disks, services, users, event logs and other management areas." "General Windows administration and troubleshooting." ""
goto LEARN_ADMIN
:LA_USERS
call :LEARN_PAGE "USER ACCOUNTS" "Manage local Windows user account settings." "View and manage available local account options." "Creating or managing local users." ""
goto LEARN_ADMIN
:LA_GROUPS
call :LEARN_PAGE "USERS AND GROUPS" "Manage local users and groups on supported Windows editions." "Manage membership and local account organization." "Local administration and permissions management." ""
goto LEARN_ADMIN
:LA_PROGRAMS
call :LEARN_PAGE "INSTALLED PROGRAMS" "Classic Windows area for managing desktop applications." "Uninstall supported programs; Review installed software." "Removing or checking traditional desktop applications." ""
goto LEARN_ADMIN
:LA_STARTUP
call :LEARN_PAGE "STARTUP APPS" "Controls applications that start automatically with Windows." "Enable or disable supported startup applications." "Slow startup or unwanted applications launching automatically." ""
goto LEARN_ADMIN
:LA_TASKS
call :LEARN_PAGE "TASK SCHEDULER" "Runs programs or tasks automatically based on schedules or events." "View scheduled tasks; Understand triggers and actions." "Automation, startup tasks and scheduled operations." "Changing system tasks can affect Windows behavior."
goto LEARN_ADMIN
:LA_CONFIG
call :LEARN_PAGE "SYSTEM CONFIGURATION" "Provides selected Windows startup and boot configuration options." "Review startup and boot-related settings." "Advanced startup troubleshooting." ""
goto LEARN_ADMIN
:LA_SHARED
call :LEARN_PAGE "SHARED FOLDERS" "Shows Windows shared folders, sessions and open files." "Review shared resources and active connections." "Troubleshooting file sharing or local network access." ""
goto LEARN_ADMIN
:LA_SECURITY
call :LEARN_PAGE "LOCAL SECURITY" "Provides available local security policy settings." "Learn how Windows security policies affect a computer." "Advanced local security administration." ""
goto LEARN_ADMIN
:LA_ADMINTOOLS
call :LEARN_PAGE "ADMINISTRATIVE TOOLS" "Provides shortcuts to Windows management utilities." "Access common administration tools from one place." "Windows administration and troubleshooting." ""
goto LEARN_ADMIN

:LEARN_UTIL
cls
call :HEADER "LEARN - SYSTEM UTILITIES"
echo.
echo  1. Task Manager
echo  2. Command Prompt
echo  3. PowerShell
echo  4. Windows Terminal
echo  5. Registry Editor
echo  6. Control Panel
echo  7. Windows Settings
echo  8. Windows Tools
echo  9. System Information
echo 10. Windows Version
echo 11. Run
echo 12. Restart / Shutdown
echo.
echo  0. Back
echo.
set "l="
set /p "l=Select Tool: "
if "%l%"=="1" goto LU_TASK
if "%l%"=="2" goto LU_CMD
if "%l%"=="3" goto LU_PS
if "%l%"=="4" goto LU_TERM
if "%l%"=="5" goto LU_REG
if "%l%"=="6" goto LU_CONTROL
if "%l%"=="7" goto LU_SETTINGS
if "%l%"=="8" goto LU_TOOLS
if "%l%"=="9" goto LU_SYSINFO
if "%l%"=="10" goto LU_VERSION
if "%l%"=="11" goto LU_RUN
if "%l%"=="12" goto LU_POWER
if "%l%"=="0" goto LEARN_MENU
goto LEARN_UTIL

:LU_TASK
call :LEARN_PAGE "TASK MANAGER" "Shows running processes, resource usage and startup applications." "Check CPU, memory, disk and network usage; Find resource-heavy processes." "A PC is slow, an application is not responding or resource usage is high." ""
goto LEARN_UTIL
:LU_CMD
call :LEARN_PAGE "COMMAND PROMPT" "A Windows command-line environment for troubleshooting and administration." "Run commands; Check network and system information." "Quick diagnostic and administrative tasks." ""
goto LEARN_UTIL
:LU_PS
call :LEARN_PAGE "POWERSHELL" "A powerful Windows command-line and automation environment." "Run commands; Query system information; Automate administration." "Advanced Windows administration and scripting." ""
goto LEARN_UTIL
:LU_TERM
call :LEARN_PAGE "WINDOWS TERMINAL" "A modern terminal application for command-line environments." "Use Command Prompt, PowerShell and supported shells." "Working with multiple command-line tools." ""
goto LEARN_UTIL
:LU_REG
call :LEARN_PAGE "REGISTRY EDITOR" "Displays Windows Registry settings used by Windows and applications." "View and manage registry settings." "Advanced troubleshooting and configuration." "Incorrect registry changes can affect Windows or applications."
goto LEARN_UTIL
:LU_CONTROL
call :LEARN_PAGE "CONTROL PANEL" "Classic Windows interface for many system settings." "Access classic configuration tools and settings." "Older Windows configuration and administration tasks." ""
goto LEARN_UTIL
:LU_SETTINGS
call :LEARN_PAGE "WINDOWS SETTINGS" "Modern Windows interface for system and configuration settings." "Manage devices, network, apps, accounts and personalization." "Everyday Windows configuration." ""
goto LEARN_UTIL
:LU_TOOLS
call :LEARN_PAGE "WINDOWS TOOLS" "A collection of built-in Windows administration utilities." "Access management and troubleshooting tools." "Quick access to Windows administration utilities." ""
goto LEARN_UTIL
:LU_SYSINFO
call :LEARN_PAGE "SYSTEM INFORMATION" "Provides detailed Windows and hardware information." "Review hardware, Windows and system configuration details." "Support, troubleshooting and system inventory." ""
goto LEARN_UTIL
:LU_VERSION
call :LEARN_PAGE "WINDOWS VERSION" "Shows the installed Windows edition, version and build." "Check Windows version and build information." "Compatibility checks and troubleshooting." ""
goto LEARN_UTIL
:LU_RUN
call :LEARN_PAGE "RUN" "A quick launcher for Windows programs, settings and commands." "Open tools by their Windows names or commands." "Fast access for experienced Windows users." ""
goto LEARN_UTIL
:LU_POWER
call :LEARN_PAGE "RESTART / SHUTDOWN" "Provides basic power and session controls." "Restart, shut down, sign out or lock Windows." "Routine system management." ""
goto LEARN_UTIL

:LEARN_PAGE
cls
call :HEADER "%~1"
echo.
echo WHAT IS IT?
echo %~2
echo.
echo YOU CAN:
for /f "tokens=1-9 delims=;" %%A in ("%~3") do (
  if not "%%A"=="" echo %%A
  if not "%%B"=="" echo %%B
  if not "%%C"=="" echo %%C
  if not "%%D"=="" echo %%D
  if not "%%E"=="" echo %%E
  if not "%%F"=="" echo %%F
  if not "%%G"=="" echo %%G
  if not "%%H"=="" echo %%H
  if not "%%I"=="" echo %%I
)
echo.
echo WHEN TO USE:
echo %~4
if not "%~5"=="" (
 echo.
 echo IMPORTANT:
 echo %~5
)
echo.
echo ----------------------------------------------------------------
echo  0. Back
echo ----------------------------------------------------------------
pause >nul
exit /b

:RETURN
echo.
echo Tool opened.
echo.
echo Press any key to return...
pause >nul
goto %CURRENT%

:HEADER
echo =================================================================
echo              AITS - ABHISHEK IT SOLUTIONS
echo                  abhishekitsolutions.in
echo =================================================================
echo                    %~1
echo =================================================================
exit /b
