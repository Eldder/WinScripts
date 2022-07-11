@echo off
chcp 65001

::删除
rd  /q /s .\test\*.*

::复制
copy .\data\1.html .\test\1.html

::文件夹及文件复制
::xcopy .\assets .\release\assets\ /Y /E

echo bulid end