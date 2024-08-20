@echo off
title WA Plus
cd /d "%~dp0"
del /f /q "wkD3D9Wnd.dll" >nul 2>&1
del /f /q "wkD3D9Wnd.ini" >nul 2>&1
del /f /q "wkD3D9Wnd_readme.txt" >nul 2>&1
reg delete "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Data" /va /f >nul 2>&1
reg delete "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /va /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "Renderer" /t "reg_dword" /d "4" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "LoadWormKitModules" /t "reg_dword" /d "1" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "SkipIntro" /t "reg_dword" /d "1" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "Vsync" /t "reg_dword" /d "0" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "AssistedVsync" /t "reg_dword" /d "0" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "WindowedMode" /t "reg_dword" /d "1" /f >nul 2>&1
reg add "HKCU\Software\Team17SoftwareLTD\WormsArmageddon\Options" /v "LocalProgressOverride" /t "reg_dword" /d "1878586903" /f >nul 2>&1
echo.
echo ----WA Plus----
echo.
echo Default Settings Loaded.
echo.
pause