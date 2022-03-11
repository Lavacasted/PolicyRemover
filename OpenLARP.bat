@ECHO off
cls
:start
title PolicyRemover
echo PolicyRemover by Lavacasted
start https://github.com/Lavacasted/OpenLARP/README.md
ECHO.
ECHO Oh damn, that's a nice-ass GUI, wonder what features we have here
ECHO WARN: You need to have elevated privs for all functions to work.
ECHO 1. Delete Chrome Policy Registry
ECHO 2. Attempt to delete restrictive system entirely (may take a long time)
ECHO 3. Drop a bomb
set choice=
set /p choice=Enter choice of integer
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto chrome
if '%choice%'=='2' goto dlete
if '%choice%'=='3' goto test
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:chrome
@echo off

IF NOT EXIST %WINDIR%\System32\GroupPolicy goto next

echo Deleting GroupPolicy folder...
RD /S /Q "%WINDIR%\System32\GroupPolicy" || goto error
echo.

:next
IF NOT EXIST %WINDIR%\System32\GroupPolicyUsers goto next2

echo Deleting GroupPolicyUsers folder...
RD /S /Q "%WINDIR%\System32\GroupPolicyUsers" || goto error
echo.

:next2
gpupdate /force

pause
exit

:error
echo.
echo WARN: Run this program with an account with administrative privs.
echo.
pause
exit
:dlete
ECHO Attempting to delete restrictive software
reg del H:\minkernel\ntos\io\pnpmgr\adm\dmaguard.admx
reg del H;\tools\managed\v4.0\admx\dmaguard.admx
ECHO This BREAKS it(I think)
goto end
:test
ECHO DROP THE BOMB (Oh we would have put a DDoS software in here, haha)
start https://www.youtube.com/watch?v=DBLnOlzowYY
ECHO enjoy the music ;)
goto end
:end
ECHO Thank you for using PolicyRemover.
pause
