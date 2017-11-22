@echo off
Setlocal EnableDelayedExpansion
set LIST=
for /R %CD%\old %%f IN (*.gr2) do (
preprocessor StripImages old\%%~nxf -output new\%%~nxf
preprocessor Compress new\%%~nxf -output new\%%~nxf
preprocessor KillUncommonData new\%%~nxf -output new\%%~nxf
set /a count+=1
echo %%~nxf "->" Transformed
)
echo ----------------------------+----------------------------
echo %count% Models successfully Transformed to granny 2.11.8
echo New files will be in the folder "new"
echo With love from nikita322 :D
echo ----------------------------+----------------------------
PAUSE
