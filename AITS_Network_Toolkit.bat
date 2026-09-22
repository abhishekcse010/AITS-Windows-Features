@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Abhishek IT Solutions - AITS Network Support Toolkit
color 0B
mode con: cols=110 lines=40

set "AITS_DOMAIN=abhishekitsolutions.in"
set "AITS_URL=https://abhishekitsolutions.in"
set "REPORT=%USERPROFILE%\Desktop\AITS_Network_Report_%COMPUTERNAME%.txt"

:MAIN
cls
call :HEADER
 echo  1. Network Overview
 echo  2. Gateway ^& Internet Connectivity
 echo  3. DNS Information ^& Resolution
 echo  4. DHCP Information
 echo  5. IPv4 / IPv6 Information
 echo  6. Ping Diagnostic
 echo  7. DNS Lookup
 echo  8. Wi-Fi / Network Adapter
 echo  9. Route / ARP / Traceroute
 echo 10. Local Network Scan
 echo 11. TCP / UDP Connections
 echo 12. Windows Network Troubleshooting
 echo 13. Network Scan ^& Fix
 echo 14. Complete Network Report
 echo.
 echo  0. Exit
 echo.
 echo ==================================================================================================
 set "choice="
 set /p "choice=Select section: "
 if "!choice!"=="1" goto S1
 if "!choice!"=="2" goto S2
 if "!choice!"=="3" goto S3
 if "!choice!"=="4" goto S4
 if "!choice!"=="5" goto S5
 if "!choice!"=="6" goto S6
 if "!choice!"=="7" goto S7
 if "!choice!"=="8" goto S8
 if "!choice!"=="9" goto S9
 if "!choice!"=="10" goto S10
 if "!choice!"=="11" goto S11
 if "!choice!"=="12" goto S12
 if "!choice!"=="13" goto S13
 if "!choice!"=="14" goto S14
 if "!choice!"=="0" exit /b
 echo Invalid selection.
 timeout /t 2 /nobreak >nul
goto MAIN

:HEADER
cls
echo.
echo ==================================================================================================
echo                 ABHISHEK IT SOLUTIONS - AITS NETWORK SUPPORT TOOLKIT
echo                            AbhishekITsolutions.in
echo ==================================================================================================
echo.
exit /b

:: ==================== RESULT NAVIGATION ====================
:NAV_S1
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 1 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S1
if /I "!nav!"=="M" goto MAIN
goto NAV_S1

:NAV_S2
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 2 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S2
if /I "!nav!"=="M" goto MAIN
goto NAV_S2

:NAV_S3
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 3 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S3
if /I "!nav!"=="M" goto MAIN
goto NAV_S3

:NAV_S4
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 4 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S4
if /I "!nav!"=="M" goto MAIN
goto NAV_S4

:NAV_S5
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 5 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S5
if /I "!nav!"=="M" goto MAIN
goto NAV_S5

:NAV_S6
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 6 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S6
if /I "!nav!"=="M" goto MAIN
goto NAV_S6

:NAV_S7
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 7 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S7
if /I "!nav!"=="M" goto MAIN
goto NAV_S7

:NAV_S8
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 8 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S8
if /I "!nav!"=="M" goto MAIN
goto NAV_S8

:NAV_S9
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 9 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S9
if /I "!nav!"=="M" goto MAIN
goto NAV_S9

:NAV_S10
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 10 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S10
if /I "!nav!"=="M" goto MAIN
goto NAV_S10

:NAV_S11
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 11 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S11
if /I "!nav!"=="M" goto MAIN
goto NAV_S11

:NAV_S12
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 12 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S12
if /I "!nav!"=="M" goto MAIN
goto NAV_S12

:NAV_S13
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 13 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S13
if /I "!nav!"=="M" goto MAIN
goto NAV_S13

:NAV_S14
echo.
echo --------------------------------------------------------------------------------------------------
echo  B = Back to Section 14 Menu    M = Main Menu
echo --------------------------------------------------------------------------------------------------
set "nav="
set /p "nav=Select: "
if /I "!nav!"=="B" goto S14
if /I "!nav!"=="M" goto MAIN
goto NAV_S14

:: ==================== 01 NETWORK OVERVIEW ====================
:S1
call :HEADER
echo [01] NETWORK OVERVIEW
echo --------------------------------------------------------------------------------------------------
echo  1. Computer Information
echo  2. Active Network Adapters
echo  3. System IP Configuration
echo  4. Network Profile
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S1A
if "!x!"=="2" goto S1B
if "!x!"=="3" goto S1C
if "!x!"=="4" goto S1D
if /I "!x!"=="B" goto MAIN
goto S1
:S1A
call :HEADER
echo COMPUTER INFORMATION
echo --------------------------------------------------------------------------------------------------
hostname
echo.
powershell -NoProfile -Command "Get-ComputerInfo | Select-Object WindowsProductName,WindowsVersion,OsBuildNumber,CsName | Format-List"
goto NAV_S1
:S1B
call :HEADER
echo ACTIVE NETWORK ADAPTERS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetAdapter | Select-Object Name,InterfaceDescription,Status,LinkSpeed,MacAddress | Format-Table -AutoSize"
goto NAV_S1
:S1C
call :HEADER
echo SYSTEM IP CONFIGURATION
echo --------------------------------------------------------------------------------------------------
ipconfig
goto NAV_S1
:S1D
call :HEADER
echo NETWORK PROFILE
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetConnectionProfile | Select-Object Name,InterfaceAlias,NetworkCategory,IPv4Connectivity,IPv6Connectivity | Format-Table -AutoSize"
goto NAV_S1

:: ==================== 02 GATEWAY & INTERNET ====================
:S2
call :HEADER
echo [02] GATEWAY ^& INTERNET CONNECTIVITY
echo --------------------------------------------------------------------------------------------------
echo  1. Default Gateway
echo  2. Gateway Ping
echo  3. AITS Website Ping
echo  4. AITS HTTPS Connectivity
echo  5. AITS DNS + HTTPS Test
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S2A
if "!x!"=="2" goto S2B
if "!x!"=="3" goto S2C
if "!x!"=="4" goto S2D
if "!x!"=="5" goto S2E
if /I "!x!"=="B" goto MAIN
goto S2
:S2A
call :HEADER
echo DEFAULT GATEWAY
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "$x=Get-NetIPConfiguration | Where-Object {$_.IPv4DefaultGateway} | Select-Object InterfaceAlias,@{N='Gateway';E={$_.IPv4DefaultGateway.NextHop -join ', '}}; if($x){$x|Format-Table -AutoSize}else{'No IPv4 default gateway detected.'}"
goto NAV_S2
:S2B
call :HEADER
echo GATEWAY PING
echo --------------------------------------------------------------------------------------------------
for /f "delims=" %%G in ('powershell -NoProfile -Command "$g=Get-NetIPConfiguration | Where-Object {$_.IPv4DefaultGateway} | Select-Object -First 1 -ExpandProperty IPv4DefaultGateway; if($g){$g.NextHop}"') do set "target=%%G"
if not defined target (echo No default gateway detected.& goto NAV_S2)
ping -n 4 "!target!"
goto NAV_S2
:S2C
call :HEADER
echo AITS WEBSITE PING
echo --------------------------------------------------------------------------------------------------
echo Target: !AITS_DOMAIN!
ping -n 4 "!AITS_DOMAIN!"
goto NAV_S2
:S2D
call :HEADER
echo AITS HTTPS CONNECTIVITY
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS reachable - HTTP '+[int]$r.StatusCode}catch{'HTTPS test failed - '+$_.Exception.Message}"
goto NAV_S2
:S2E
call :HEADER
echo AITS DNS + HTTPS TEST
echo --------------------------------------------------------------------------------------------------
echo DNS: !AITS_DOMAIN!
nslookup "!AITS_DOMAIN!"
echo.
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS reachable - HTTP '+[int]$r.StatusCode}catch{'HTTPS test failed - '+$_.Exception.Message}"
goto NAV_S2

:: ==================== 03 DNS ====================
:S3
call :HEADER
echo [03] DNS INFORMATION ^& RESOLUTION
echo --------------------------------------------------------------------------------------------------
echo  1. Configured DNS Servers
echo  2. DNS Client Service
echo  3. AITS DNS Resolution
echo  4. DNS Cache
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S3A
if "!x!"=="2" goto S3B
if "!x!"=="3" goto S3C
if "!x!"=="4" goto S3D
if /I "!x!"=="B" goto MAIN
goto S3
:S3A
call :HEADER
echo CONFIGURED DNS SERVERS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-DnsClientServerAddress | Where-Object {$_.ServerAddresses} | Select-Object InterfaceAlias,AddressFamily,@{N='DNS';E={$_.ServerAddresses -join ', '}} | Format-Table -AutoSize"
goto NAV_S3
:S3B
call :HEADER
echo DNS CLIENT SERVICE
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-Service Dnscache | Select-Object Name,Status,StartType | Format-Table -AutoSize"
goto NAV_S3
:S3C
call :HEADER
echo AITS DNS RESOLUTION
echo --------------------------------------------------------------------------------------------------
nslookup "!AITS_DOMAIN!"
goto NAV_S3
:S3D
call :HEADER
echo DNS CACHE
echo --------------------------------------------------------------------------------------------------
ipconfig /displaydns
goto NAV_S3

:: ==================== 04 DHCP ====================
:S4
call :HEADER
echo [04] DHCP INFORMATION
echo --------------------------------------------------------------------------------------------------
echo  1. DHCP State
echo  2. DHCP Server
echo  3. DHCP Lease Times
echo  4. Current IP ^& Gateway
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S4A
if "!x!"=="2" goto S4B
if "!x!"=="3" goto S4C
if "!x!"=="4" goto S4D
if /I "!x!"=="B" goto MAIN
goto S4
:S4A
call :HEADER
echo DHCP STATE
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPInterface -AddressFamily IPv4 | Select-Object InterfaceAlias,Dhcp,ConnectionState | Format-Table -AutoSize"
goto NAV_S4
:S4B
call :HEADER
echo DHCP SERVER
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-CimInstance Win32_NetworkAdapterConfiguration -Filter 'IPEnabled=True' | Select-Object Description,DHCPEnabled,DHCPServer | Format-Table -AutoSize"
goto NAV_S4
:S4C
call :HEADER
echo DHCP LEASE TIMES
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-CimInstance Win32_NetworkAdapterConfiguration -Filter 'IPEnabled=True' | Select-Object Description,DHCPLeaseObtained,DHCPLeaseExpires | Format-Table -AutoSize"
goto NAV_S4
:S4D
call :HEADER
echo CURRENT IP ^& GATEWAY
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPConfiguration | Where-Object {$_.NetAdapter.Status -eq 'Up'} | Select-Object InterfaceAlias,@{N='IPv4';E={$_.IPv4Address.IPAddress -join ', '}},@{N='Gateway';E={$_.IPv4DefaultGateway.NextHop -join ', '}} | Format-Table -AutoSize"
goto NAV_S4

:: ==================== 05 IPV4 / IPV6 ====================
:S5
call :HEADER
echo [05] IPv4 / IPv6 INFORMATION
echo --------------------------------------------------------------------------------------------------
echo  1. IPv4 Addresses
echo  2. IPv6 Addresses
echo  3. Default Gateways
echo  4. Interface Prefixes
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S5A
if "!x!"=="2" goto S5B
if "!x!"=="3" goto S5C
if "!x!"=="4" goto S5D
if /I "!x!"=="B" goto MAIN
goto S5
:S5A
call :HEADER
echo IPv4 ADDRESSES
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike '127.*'} | Select-Object InterfaceAlias,IPAddress,PrefixLength,AddressState | Format-Table -AutoSize"
goto NAV_S5
:S5B
call :HEADER
echo IPv6 ADDRESSES
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPAddress -AddressFamily IPv6 | Where-Object {$_.IPAddress -ne '::1'} | Select-Object InterfaceAlias,IPAddress,PrefixLength,AddressState | Format-Table -AutoSize"
goto NAV_S5
:S5C
call :HEADER
echo DEFAULT GATEWAYS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPConfiguration | Where-Object {$_.NetAdapter.Status -eq 'Up'} | Select-Object InterfaceAlias,@{N='IPv4Gateway';E={$_.IPv4DefaultGateway.NextHop -join ', '}},@{N='IPv6Gateway';E={$_.IPv6DefaultGateway.NextHop -join ', '}} | Format-Table -AutoSize"
goto NAV_S5
:S5D
call :HEADER
echo INTERFACE PREFIXES
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetIPAddress | Select-Object InterfaceAlias,AddressFamily,IPAddress,PrefixLength | Sort-Object InterfaceAlias,AddressFamily | Format-Table -AutoSize"
goto NAV_S5

:: ==================== 06 PING ====================
:S6
call :HEADER
echo [06] PING DIAGNOSTIC
echo --------------------------------------------------------------------------------------------------
echo  1. Default Gateway
echo  2. AITS Website
echo  3. Custom Host / IP
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S6A
if "!x!"=="2" (set "target=!AITS_DOMAIN!" & goto S6RUN)
if "!x!"=="3" goto S6C
if /I "!x!"=="B" goto MAIN
goto S6
:S6A
set "target="
for /f "delims=" %%G in ('powershell -NoProfile -Command "$g=Get-NetIPConfiguration | Where-Object {$_.IPv4DefaultGateway} | Select-Object -First 1 -ExpandProperty IPv4DefaultGateway; if($g){$g.NextHop}"') do set "target=%%G"
if not defined target (call :HEADER & echo No default gateway detected. & goto NAV_S6)
goto S6RUN
:S6C
set "target="
set /p "target=Enter host/IP: "
if not defined target goto S6
:S6RUN
call :HEADER
echo PING TEST: !target!
echo --------------------------------------------------------------------------------------------------
ping -n 4 "!target!"
echo.
echo Note: Some hosts block ICMP; ping failure alone does not prove a website is offline.
goto NAV_S6

:: ==================== 07 DNS LOOKUP ====================
:S7
call :HEADER
echo [07] DNS LOOKUP
echo --------------------------------------------------------------------------------------------------
echo  1. AITS Website
echo  2. Custom Domain / Host
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" (set "domain=!AITS_DOMAIN!" & goto S7RUN)
if "!x!"=="2" goto S7C
if /I "!x!"=="B" goto MAIN
goto S7
:S7C
set "domain="
set /p "domain=Enter domain/hostname: "
if not defined domain goto S7
goto S7RUN
:S7RUN
call :HEADER
echo DNS LOOKUP: !domain!
echo --------------------------------------------------------------------------------------------------
nslookup "!domain!"
goto NAV_S7

:: ==================== 08 WIFI / ADAPTER ====================
:S8
cls
call :HEADER "8. WI-FI / WLAN"
echo.
echo  1. All Network Adapters
echo  2. WLAN AutoConfig Service
echo  3. Wi-Fi Interface Status
echo  4. Saved Wi-Fi Profiles
echo.
echo  B. Back to Main Menu
echo.
set "c="
set /p "c=Select option: "
if /I "%c%"=="B" goto MAIN
if "%c%"=="1" goto S8_A
if "%c%"=="2" goto S8_B
if "%c%"=="3" goto S8_C
if "%c%"=="4" goto S8_D
goto S8

:S8_A
cls
call :HEADER "WI-FI / WLAN - ALL NETWORK ADAPTERS"
echo.
ipconfig /all
echo.
pause
goto S8

:S8_B
cls
call :HEADER "WI-FI / WLAN - WLAN AUTOCONFIG SERVICE"
echo.
sc query WlanSvc
echo.
echo Service configuration:
sc qc WlanSvc
echo.
echo Setting WLAN AutoConfig to Automatic...
sc config WlanSvc start= auto
echo.
echo Starting WLAN AutoConfig...
net start WlanSvc
echo.
echo Current WLAN AutoConfig status:
sc query WlanSvc
echo.
echo Testing Wi-Fi interface after service check...
netsh wlan show interfaces
echo.
pause
goto S8

:S8_C
cls
call :HEADER "WI-FI / WLAN - WI-FI INTERFACE STATUS"
echo.
netsh wlan show interfaces
echo.
pause
goto S8

:S8_D
cls
call :HEADER "WI-FI / WLAN - SAVED WI-FI PROFILES"
echo.
netsh wlan show profiles
echo.
pause
goto S8

:S9
cls
call :HEADER "9. ROUTE / ARP / TRACEROUTE"
echo.
echo  1. Routing Table
echo  2. ARP Cache
echo  3. Traceroute - AITS Website
echo  4. Traceroute - Custom Host / IP
echo.
echo  B. Back to Main Menu
echo.
set "c="
set /p "c=Select option: "
if /I "%c%"=="B" goto MAIN
if "%c%"=="1" goto S9_A
if "%c%"=="2" goto S9_B
if "%c%"=="3" goto S9_C
if "%c%"=="4" goto S9_D
goto S9

:S9_A
cls
call :HEADER "ROUTING TABLE"
echo.
route print
echo.
pause
goto S9

:S9_B
cls
call :HEADER "ARP CACHE"
echo.
arp -a
echo.
pause
goto S9

:S9_C
cls
call :HEADER "TRACEROUTE - AITS WEBSITE"
echo.
echo Target: abhishekitsolutions.in
echo.
tracert -4 -w 1000 abhishekitsolutions.in
echo.
pause
goto S9

:S9_D
cls
call :HEADER "TRACEROUTE - CUSTOM HOST / IP"
echo.
set "target="
set /p "target=Enter hostname or IP: "
if not defined target goto S9
echo.
echo Tracing: %target%
echo.
tracert -4 -w 1000 "!target!"
echo.
pause
goto S9

:S10
call :HEADER
echo [10] LOCAL NETWORK SCAN
echo --------------------------------------------------------------------------------------------------
echo  1. Detect Local IPv4 / Subnet
echo  2. ICMP Network Scan
echo  3. Show ARP Devices
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S10A
if "!x!"=="2" goto S10B
if "!x!"=="3" goto S10C
if /I "!x!"=="B" goto MAIN
goto S10
:S10A
call :HEADER
echo LOCAL IPv4 / SUBNET
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "$x=Get-NetIPConfiguration | Where-Object {$_.NetAdapter.Status -eq 'Up' -and $_.IPv4Address} | Select-Object InterfaceAlias,@{N='IPv4';E={$_.IPv4Address.IPAddress -join ', '}},@{N='Prefix';E={$_.IPv4Address.PrefixLength}}; $x|Format-Table -AutoSize"
goto NAV_S10
:S10B
call :HEADER
echo ICMP NETWORK SCAN
echo --------------------------------------------------------------------------------------------------
set "LOCALIP="
for /f "delims=" %%I in ('powershell -NoProfile -Command "$x=Get-NetIPConfiguration | Where-Object {$_.NetAdapter.Status -eq 'Up' -and $_.IPv4Address -and $_.IPv4DefaultGateway} | Select-Object -First 1; if($x){$x.IPv4Address.IPAddress}"') do set "LOCALIP=%%I"
if not defined LOCALIP (echo No active IPv4 connection with gateway detected. & goto NAV_S10)
for /f "tokens=1-3 delims=." %%A in ("!LOCALIP!") do set "PREFIX=%%A.%%B.%%C"
echo Local IP: !LOCALIP!
echo Scan: !PREFIX!.1 - !PREFIX!.254
echo.
for /L %%N in (1,1,254) do (
    ping -n 1 -w 150 "!PREFIX!.%%N" >nul
    if not errorlevel 1 echo Active: !PREFIX!.%%N
)
echo.
echo Scan complete. ICMP-blocked devices may not appear.
goto NAV_S10
:S10C
call :HEADER
echo ARP DEVICES
echo --------------------------------------------------------------------------------------------------
arp -a
goto NAV_S10

:: ==================== 11 TCP / UDP ====================
:S11
call :HEADER
echo [11] TCP / UDP CONNECTIONS
echo --------------------------------------------------------------------------------------------------
echo  1. Established TCP
echo  2. Listening TCP Ports
echo  3. UDP Endpoints
echo  4. Connection Statistics
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S11A
if "!x!"=="2" goto S11B
if "!x!"=="3" goto S11C
if "!x!"=="4" goto S11D
if /I "!x!"=="B" goto MAIN
goto S11
:S11A
call :HEADER
echo ESTABLISHED TCP
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetTCPConnection -State Established | Sort-Object RemoteAddress,RemotePort | Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess | Format-Table -AutoSize"
goto NAV_S11
:S11B
call :HEADER
echo LISTENING TCP PORTS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetTCPConnection -State Listen | Sort-Object LocalPort | Select-Object LocalAddress,LocalPort,OwningProcess | Format-Table -AutoSize"
goto NAV_S11
:S11C
call :HEADER
echo UDP ENDPOINTS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetUDPEndpoint | Sort-Object LocalPort | Select-Object LocalAddress,LocalPort,OwningProcess | Format-Table -AutoSize"
goto NAV_S11
:S11D
call :HEADER
echo CONNECTION STATISTICS
echo --------------------------------------------------------------------------------------------------
netstat -e
echo.
netstat -s
goto NAV_S11

:: ==================== 12 WINDOWS NETWORK TROUBLESHOOTING ====================
:S12
call :HEADER
echo [12] WINDOWS NETWORK TROUBLESHOOTING
echo --------------------------------------------------------------------------------------------------
echo  1. Adapter Status
echo  2. System IP Configuration
echo  3. AITS DNS Test
echo  4. AITS Ping Test
echo  5. AITS HTTPS Test
echo  6. Default Route
echo  7. Network Profile
echo  8. Safe Repair Commands - Information Only
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S12A
if "!x!"=="2" goto S12B
if "!x!"=="3" goto S12C
if "!x!"=="4" goto S12D
if "!x!"=="5" goto S12E
if "!x!"=="6" goto S12F
if "!x!"=="7" goto S12G
if "!x!"=="8" goto S12H
if /I "!x!"=="B" goto MAIN
goto S12
:S12A
call :HEADER
echo ADAPTER STATUS
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetAdapter | Select-Object Name,Status,LinkSpeed,MacAddress | Format-Table -AutoSize"
goto NAV_S12
:S12B
call :HEADER
echo SYSTEM IP CONFIGURATION
echo --------------------------------------------------------------------------------------------------
ipconfig
goto NAV_S12
:S12C
call :HEADER
echo AITS DNS TEST
echo --------------------------------------------------------------------------------------------------
nslookup "!AITS_DOMAIN!"
goto NAV_S12
:S12D
call :HEADER
echo AITS PING TEST
echo --------------------------------------------------------------------------------------------------
ping -n 4 "!AITS_DOMAIN!"
goto NAV_S12
:S12E
call :HEADER
echo AITS HTTPS TEST
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS OK - HTTP '+[int]$r.StatusCode}catch{'HTTPS FAILED - '+$_.Exception.Message}"
goto NAV_S12
:S12F
call :HEADER
echo DEFAULT ROUTE
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetRoute -AddressFamily IPv4 -DestinationPrefix '0.0.0.0/0' | Select-Object ifIndex,NextHop,RouteMetric,State | Format-Table -AutoSize"
goto NAV_S12
:S12G
call :HEADER
echo NETWORK PROFILE
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetConnectionProfile | Format-Table Name,InterfaceAlias,NetworkCategory,IPv4Connectivity,IPv6Connectivity -AutoSize"
goto NAV_S12
:S12H
call :HEADER
echo SAFE REPAIR COMMANDS - INFORMATION ONLY
echo --------------------------------------------------------------------------------------------------
echo ipconfig /flushdns
echo ipconfig /release
echo ipconfig /renew
echo netsh winsock reset
echo netsh int ip reset
goto NAV_S12

:: ==================== 13 NETWORK SCAN & FIX ====================
:S13
call :HEADER
echo [13] NETWORK SCAN ^& FIX
echo --------------------------------------------------------------------------------------------------
echo  1. Full Network Scan
echo  2. AITS Website Connectivity Scan
echo  3. DNS Scan
echo  4. Adapter / IP Scan
echo  5. Flush DNS Cache
echo  6. Reset Winsock
echo  7. Reset TCP/IP Stack
echo  8. Renew IP Address
echo  9. Safe Network Repair
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S13A
if "!x!"=="2" goto S13B
if "!x!"=="3" goto S13C
if "!x!"=="4" goto S13D
if "!x!"=="5" goto S13E
if "!x!"=="6" goto S13F
if "!x!"=="7" goto S13G
if "!x!"=="8" goto S13H
if "!x!"=="9" goto S13I
if /I "!x!"=="B" goto MAIN
goto S13
:S13A
call :HEADER
echo FULL NETWORK SCAN
echo --------------------------------------------------------------------------------------------------
echo [1] Adapter status
powershell -NoProfile -Command "Get-NetAdapter | Select-Object Name,Status,LinkSpeed,MacAddress | Format-Table -AutoSize"
echo.
echo [2] IP configuration
ipconfig /all
echo.
echo [3] AITS DNS resolution
nslookup "!AITS_DOMAIN!"
echo.
echo [4] AITS ping
ping -n 4 "!AITS_DOMAIN!"
echo.
echo [5] AITS HTTPS connectivity
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS OK - HTTP '+[int]$r.StatusCode}catch{'HTTPS FAILED - '+$_.Exception.Message}"
goto NAV_S13
:S13B
call :HEADER
echo AITS WEBSITE CONNECTIVITY SCAN
echo --------------------------------------------------------------------------------------------------
echo Target: !AITS_DOMAIN!
echo.
nslookup "!AITS_DOMAIN!"
echo.
ping -n 4 "!AITS_DOMAIN!"
echo.
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS OK - HTTP '+[int]$r.StatusCode}catch{'HTTPS FAILED - '+$_.Exception.Message}"
goto NAV_S13
:S13C
call :HEADER
echo DNS SCAN
echo --------------------------------------------------------------------------------------------------
echo Target: !AITS_DOMAIN!
nslookup "!AITS_DOMAIN!"
powershell -NoProfile -Command "if(Get-Command Resolve-DnsName -ErrorAction SilentlyContinue){Resolve-DnsName '!AITS_DOMAIN!' -ErrorAction SilentlyContinue | Select-Object Name,Type,IPAddress | Format-Table -AutoSize}"
goto NAV_S13
:S13D
call :HEADER
echo ADAPTER / IP SCAN
echo --------------------------------------------------------------------------------------------------
powershell -NoProfile -Command "Get-NetAdapter | Select-Object Name,Status,LinkSpeed,MacAddress | Format-Table -AutoSize"
echo.
ipconfig /all
goto NAV_S13
:S13E
call :HEADER
echo FLUSH DNS CACHE
echo --------------------------------------------------------------------------------------------------
ipconfig /flushdns
goto NAV_S13
:S13F
call :HEADER
echo RESET WINSOCK
echo --------------------------------------------------------------------------------------------------
echo Administrator privileges may be required. A restart may be required.
netsh winsock reset
goto NAV_S13
:S13G
call :HEADER
echo RESET TCP/IP STACK
echo --------------------------------------------------------------------------------------------------
echo Administrator privileges may be required. A restart may be required.
netsh int ip reset
goto NAV_S13
:S13H
call :HEADER
echo RENEW IP ADDRESS
echo --------------------------------------------------------------------------------------------------
echo The connection may disconnect briefly.
ipconfig /release
ipconfig /renew
goto NAV_S13
:S13I
call :HEADER
echo SAFE NETWORK REPAIR
echo --------------------------------------------------------------------------------------------------
echo This performs common Windows network repairs.
echo.
ipconfig /flushdns
echo.
netsh winsock reset
echo.
netsh int ip reset
echo.
echo A restart may be required.
goto NAV_S13

:: ==================== 14 COMPLETE NETWORK REPORT ====================
:S14
call :HEADER
echo [14] COMPLETE NETWORK REPORT
echo --------------------------------------------------------------------------------------------------
echo  1. Generate Full Report
echo  2. Open Last Report
echo  3. Report Location
echo  B. Back to Main Menu
echo.
set "x=" & set /p "x=Select: "
if "!x!"=="1" goto S14A
if "!x!"=="2" goto S14B
if "!x!"=="3" goto S14C
if /I "!x!"=="B" goto MAIN
goto S14
:S14A
call :HEADER
echo GENERATING COMPLETE NETWORK REPORT...
echo --------------------------------------------------------------------------------------------------
(
echo ABHISHEK IT SOLUTIONS - AITS NETWORK SUPPORT REPORT
echo AbhishekITsolutions.in
echo Computer: %COMPUTERNAME%
echo User: %USERNAME%
echo Date: %DATE% %TIME%
echo.
echo [01] NETWORK ADAPTERS
powershell -NoProfile -Command "Get-NetAdapter | Format-Table Name,InterfaceDescription,Status,LinkSpeed,MacAddress -AutoSize"
echo.
echo [02] IP CONFIGURATION
ipconfig /all
echo.
echo [03] DNS SERVERS
powershell -NoProfile -Command "Get-DnsClientServerAddress | Where-Object {$_.ServerAddresses} | Format-Table InterfaceAlias,AddressFamily,ServerAddresses -AutoSize"
echo.
echo [04] DHCP
powershell -NoProfile -Command "Get-CimInstance Win32_NetworkAdapterConfiguration -Filter 'IPEnabled=True' | Select-Object Description,DHCPEnabled,DHCPServer,DHCPLeaseObtained,DHCPLeaseExpires | Format-Table -AutoSize"
echo.
echo [05] ROUTES
route print
echo.
echo [06] ARP CACHE
arp -a
echo.
echo [07] AITS DNS LOOKUP
nslookup "!AITS_DOMAIN!"
echo.
echo [08] AITS PING
ping -n 4 "!AITS_DOMAIN!"
echo.
echo [09] AITS HTTPS
powershell -NoProfile -Command "try{$r=Invoke-WebRequest '!AITS_URL!' -Method Head -TimeoutSec 10 -UseBasicParsing; 'HTTPS OK - HTTP '+[int]$r.StatusCode}catch{'HTTPS FAILED - '+$_.Exception.Message}"
echo.
echo [10] AITS TRACEROUTE
tracert -d "!AITS_DOMAIN!"
echo.
echo [11] TCP LISTENING
powershell -NoProfile -Command "Get-NetTCPConnection -State Listen | Sort-Object LocalPort | Format-Table LocalAddress,LocalPort,OwningProcess -AutoSize"
echo.
echo [12] TCP ESTABLISHED
powershell -NoProfile -Command "Get-NetTCPConnection -State Established | Sort-Object RemoteAddress | Format-Table LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess -AutoSize"
) > "!REPORT!" 2>&1
echo.
echo Report saved:
echo !REPORT!
start "" notepad.exe "!REPORT!"
goto NAV_S14
:S14B
call :HEADER
if exist "!REPORT!" (echo Opening last report...&start "" notepad.exe "!REPORT!") else (echo No previous report found. Generate a report first.)
goto NAV_S14
:S14C
call :HEADER
echo REPORT LOCATION
echo --------------------------------------------------------------------------------------------------
echo !REPORT!
goto NAV_S14
