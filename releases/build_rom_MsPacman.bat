@echo off

set    zip=mspacmab.zip
set ifiles=pacman.6e+pacman.6f+pacman.6h+pacman.6j+u5+u5+u6+u7+u7+5e+5f+5f+5f+82s126.1m+82s126.4a+82s126.3m+82s123.7f)

set  ofile=a.mspcmn.rom

rem =====================================
setlocal ENABLEDELAYEDEXPANSION

set pwd=%~dp0
echo.
echo.

if EXIST %zip% (

	!pwd!7za x -otmp %zip%
	if !ERRORLEVEL! EQU 0 ( 
		cd tmp

		copy /b/y %ifiles% !pwd!%ofile%
		if !ERRORLEVEL! EQU 0 ( 
			echo.
			echo ** done **
			echo.
			echo Copy "%ofile%" into root of SD card
		)
		cd !pwd!
		rmdir /s /q tmp
	)

) else (

	echo Error: Cannot find "%zip%" file
	echo.
	echo Put "%zip%", "7za.exe" and "%~nx0" into the same directory
)

echo.
echo.
pause
