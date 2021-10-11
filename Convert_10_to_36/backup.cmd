@echo Off
echo ---------------------------
echo   RNZ prj. BackUp batch
echo ---------------------------
@echo On

set tmpName=N36
set backupDir=_BackUp\D6\Prj\MyProject

start /w winrar a -r -y -ag_YYMMDD_HHMM -x.\Data\*.* -x@.\xlist.lst "%temp%\%tmpName%" %1

mkdir "..\_sources"
rem mkdir C:\"%backupDir%"
rem mkdir D:\"%backupDir%"
rem mkdir E:\"%backupDir%"
rem mkdir \\"MyNetDir\%backupDir%"

copy /y "%temp%\%tmpName%*.rar" "..\_sources"
rem copy /y "%temp%\%tmpName%*.rar" C:\"%backupDir%"
rem copy /y "%temp%\%tmpName%*.rar" D:\"%backupDir%"
rem copy /y "%temp%\%tmpName%*.rar" E:\"%backupDir%"
rem copy /y "%temp%\%tmpName%*.rar" \\"MyNetDir\%backupDir%"

del "%temp%\%tmpName%*.rar"

rem start "..\_sources"
rem start C:\"%backupDir%"
rem start D:\"%backupDir%"
rem start E:\"%backupDir%"
rem start \\"MyNetDir\%backupDir%"

set tmpName=
set backupDir=