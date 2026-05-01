@echo off
setlocal enabledelayedexpansion

CD /D %~dp0
set "directory=%~dp0ffmpeginput"
set "outputBaseDir=%~dp0ffmpegoutput"
set "songnum=0"

for /R "%directory%" %%f in (*) do (
    echo %%f
	set /A songnum+=1
    set "inputFile=%%f"
	set "relativePath=%%f"
    set "relativePath=!relativePath:%directory%=!"
    set "outputFile=%outputBaseDir%\!songnum!"
	ffmpeg.exe -i "!inputFile!" -map 0:a -codec:a libmp3lame -b:a 320k -cutoff 20500 -map_metadata -1 "!outputFile!.mp3"
)
>nul 2>nul dir /a-d "%directory%\*" && (echo ) || (goto starterror)

echo Process finished. It's recommended to check if the MP3's exported correctly, especially when mixing multiple file types in the input folder.
endlocal
pause
goto end

:starterror
color 04
echo uhhh, where are the music files?
endlocal
pause

:end
echo :P