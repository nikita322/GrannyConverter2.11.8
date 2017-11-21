@echo off
Setlocal EnableDelayedExpansion
set LIST=
for /R %CD%\old %%f IN (*.gr2) do (
preprocessor KillUncommonData old\%%~nxf -output new\%%~nxf
preprocessor TransformFile new\%%~nxf -output new\%%~nxf
echo %%~nxf "->" Transformed
)
echo ----------------------+----------------------
echo All successfully Transformed to granny 2.11.8
echo New files will be in the folder "new"
echo With love from nikita322 :D
echo ----------------------+----------------------
PAUSE