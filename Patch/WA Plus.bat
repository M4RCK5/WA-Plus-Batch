@echo off
title WA Plus
pushd "%~dp0"

set "wa_reg=HKCU\Software\Team17SoftwareLTD\WormsArmageddon"

(
	del /f /q "wkD3D9Wnd.dll" "wkD3D9Wnd.ini" "wkD3D9Wnd_readme.txt"
	reg delete "%wa_reg%\Data" /va /f
	reg delete "%wa_reg%\Options" /va /f
) >nul 2>&1

for %%a in (
    "Renderer=4"
    "LoadWormKitModules=1"
    "SkipIntro=1"
    "Vsync=0"
    "AssistedVsync=0"
    "WindowedMode=1"
    "LocalProgressOverride=1878586903"
    "UseCommunityServerList=1"
) do for /f "tokens=1,2 delims==" %%b in (%%a) do (
    reg add "%wa_reg%\Options" /v "%%b" /t REG_DWORD /d "%%c" /f >nul 2>&1
)

echo.
echo ----WA Plus----
echo.
echo Default Settings Loaded.
echo.

popd
pause
exit /b 0
