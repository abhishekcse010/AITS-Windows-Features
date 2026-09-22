@echo off
title AITS - Abhishek IT Solutions
echo =========================================
echo       AITS - ABHISHEK IT SOLUTIONS
echo        abhishekitsolutions.in
echo =========================================
echo.
color 0A
echo =========================================
echo       Shortcut Virus Remover Tool
echo =========================================
echo.
set /p drive="Enter your Pendrive Letter (e.g., E, F, G, H): "
echo.
echo Removing Shortcut Virus from Drive %drive%:\ ...
del "%drive%:\*.lnk" /q /f
attrib -h -r -s /s /d "%drive%:\."
echo.
echo =========================================
echo  Virus Removed & Files Restored Successfully!
echo =========================================
echo.
echo =========================================
echo       AITS - Abhishek IT Solutions
echo        abhishekitsolutions.in
echo =========================================
pause