@ECHO OFF
:: Check for admin privileges and request if not present
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: If not running as admin, request admin privileges
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
)

:: Cleanup if running as admin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )

:: Main command execution as admin
echo Using hotspot data from your mobile phone on your laptop/computer only.
echo ************************
echo Changing your Time to Live (Hop Limit) to 65...
netsh int ipv4 set glob defaultcurhoplimit=65
if '%errorlevel%' NEQ '0' (
    echo Failed to change Hop Limit.
    pause
    exit /B
)

echo Hop Limit changed successfully.
pause
