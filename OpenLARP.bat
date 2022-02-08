@ECHO off
cls
:start
title OpenLARP
echo OpenLARP by Lavacasted
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
reg del HKEY_CURRENT_USER\Software\Google\Chrome
reg del HKEY_CURRENT_USER\Software\Policies\Google\Chrome
reg del HKEY_LOCAL_MACHINE\Software\Google\Chrome
reg del HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome
reg del HKEY_LOCAL_MACHINE\Software\Policies\Google\Update
reg del HKEY_LOCAL_MACHINE\Software\WOW6432Node\Google\Enrollment
ECHO Chrome browser cleaned
ECHO Warn: If browser still functions as normal, open an issue on our GitHub page
goto end
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
ECHO Made for karmasick and a few others
pause