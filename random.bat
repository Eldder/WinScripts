@echo off
chcp 65001

echo %random%

:: random number less than 35
:rand
set /a rnd=%random%*100/32768
echo %rnd%
if %rnd% gtr 34 goto :rand
echo Finally!! %rnd%

rem 生成3个随机字符串
set n=6
rem n=3意思要生成3个随机字符串，如要10个修改n=10
@setlocal enabledelayedexpansion
@set str=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

@for /l %%a in (1,1,%n%) do @call :generate "%%a"
echo %random_str%
pause

:generate
@if "%~1"=="" goto:eof
@set /a r=%random%%%62
@set random_str=%random_str%!str:~%r%,1!