# THPS3-MP3-2-MUS
Batch script to export custom music to THPS3

Download via teh release tab










Text contents of Instructions.txt:
Step 1:
Extract the zip file downloaded from github and place it into any folder you prefer

Step 2:
Place your music files into the folder labeled "ffmpeginput"
Max of 20 songs can be imported to thps3

Step 3:
Run "Export Music to valid MP3's.bat"

Step 4 (optional but recommended):
Check the MP3 files that were exported to "ffmpegoutput"
You only need to really check one, but do also check ones that had a different file format from the rest
Each mp3 is exported as a number, in order of the file name in ffmpeginput (not the track number)

Step 5:
Run "Rename ffmpegoutput to mus.bat"

Step 6:
Backup the existing songs in THPS3's music folder (THPS3\Data\music)

Step 7:
Drag and drop (or copy and paste) all the songs in musoutput into THPS3's music folder
Replace all files

Step 8:
If you did not replace all the songs, you can go to the options menu and disable the songs you don't wanna hear



NOTE: The FFMPEG version included with this repo is gyan.dev's essentials build. Not all file types might be recognized by ffmpeg. if that is the case, download the full build version and replace the ffmpeg exe: https://github.com/GyanD/codexffmpeg/releases 

NOTE2: Song order seems oddly messy? might wanna try doing in order.
