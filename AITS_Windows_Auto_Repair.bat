Bosr error @echo off
color 0B
title Windows Auto Repair Tool | AITS by AITS - Abhishek IT Solutions
echo AITS - Abhishek IT Solutions ^| abhishekitsolutions.in
echo Starting Windows Auto-Repair Process... Please Wait.
echo =======================================================
echo.
echo [Step 1 of 2] Running System File Checker (SFC)...
sfc /scannow
echo.
echo [Step 2 of 2] Running Deployment Image Servicing (DISM)...
DISM /Online /Cleanup-Image /RestoreHealth
echo.
echo =======================================================
echo Auto-Repair Complete! Please RESTART your PC.
echo =======================================================
pause
