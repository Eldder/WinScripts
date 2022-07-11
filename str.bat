@echo off

::中文支持，更改编码
chcp 65001

set aa=1234567890
echo before replace %aa%

::替换字符串，即将某一字符串中的特定字符或字符串替换为给定的字符串。
echo after replace %aa:1234=abcd%
echo aa = %aa%

set "aa=%aa:1234=abcd%"
echo aa = %aa%

set a1=123456
set a2=654321

::合并字符串就是将两个字符串放在一起就可以
set "aa=%a1%%a2%"

echo aa=%aa%

pause