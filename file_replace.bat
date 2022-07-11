@echo off

::中文支持，更改编码
chcp 65001

rd  /q /s .\test\*.*
copy .\data\1.html .\test\1.html

rem 定义变量延迟环境，关闭回显
@setlocal enabledelayedexpansion
rem 读取文件所有内容
for /f "delims=" %%i in (test\1.html) do (
rem 设置变量a为每行内容
set a=%%i
rem 替换内容
set "a=!a:cookie.js=cookie.js?aklxuq!"
rem 把修改后的全部行存入$
echo !a!>>$)
rem 用$的内容替换原来文件内容
move $ test\1.html || EXIT /B