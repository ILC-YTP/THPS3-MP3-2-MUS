@echo off
setlocal enabledelayedexpansion

CD /D %~dp0
set input=%~dp0ffmpegoutput\
set output=%~dp0musoutput\

copy "%input%1.mp3" "%output%ace.mus"
IF %ERRORLEVEL% NEQ 0 (goto starterror)
copy "%input%2.mp3" "%output%adol.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%3.mp3" "%output%afi.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%4.mp3" "%output%antfarm.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%5.mp3" "%output%bodyjar.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%6.mp3" "%output%chilis.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%7.mp3" "%output%cky.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%8.mp3" "%output%del.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%9.mp3" "%output%gutter.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%10.mp3" "%output%krs.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%11.mp3" "%output%mad.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%12.mp3" "%output%next.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%13.mp3" "%output%ozo.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%14.mp3" "%output%pain.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%15.mp3" "%output%ramones.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%16.mp3" "%output%redman.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%17.mp3" "%output%rev.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%18.mp3" "%output%rollins.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%19.mp3" "%output%xzibit.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)
copy "%input%20.mp3" "%output%zebra.mus"
IF %ERRORLEVEL% NEQ 0 (goto stopexport)

color 06
echo Max number of songs that THPS3 allows by default has been reached. Export stopped
endlocal
pause
goto end

:stopexport
color 0A
echo Export complete!
endlocal
pause
goto end

:starterror
color 04
echo Something's wrong, I can't find any song files! Be sure you are folowing the instructions propperly. There should only be numbered mp3 files in the musoutput folder.
endlocal
pause

:end
echo bye ☺