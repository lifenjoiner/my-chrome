@echo off
setlocal ENABLEDELAYEDEXPANSION

::-code-::
set AppName=%~n0
set AppName=%AppName:-build=%

md "%~dp0release" >nul 2>nul
echo You can add extra params like: /fileversion 3.8.1.1 /filedescription @lifenjoiner
Aut2exe /in "%~dp0%AppName%.au3" /out "%~dp0release\%AppName%.exe" /icon "%~dp0Icon_1.ico" %*
::-code-::

:Exit
endlocal
exit /b
