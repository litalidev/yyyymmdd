@echo off
rem hhmmss.bat
rem   print the current time in hhmmss format and set the variable hhmmss
rem
rem License: MIT
rem Copyright (c) 2015 by Lita Li
rem
rem   Permission is hereby granted, free of charge, to any person obtaining a copy
rem   of this software and associated documentation files (the "Software"), to deal
rem   in the Software without restriction, including without limitation the rights
rem   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
rem   copies of the Software, and to permit persons to whom the Software is
rem   furnished to do so, subject to the following conditions:
rem  
rem   The above copyright notice and this permission notice shall be included in
rem   all copies or substantial portions of the Software.
rem  
rem   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
rem   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
rem   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
rem   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
rem   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
rem   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
rem   THE SOFTWARE.
rem 
rem
rem Usage:
rem   hhmmss [-q]
rem
rem     -q : quiet mode, no output, just set the yyyymmdd variable
rem
rem Bug:
rem   sent bug/comment to litalidev@gmail.com with SUBJECT [yyyymmdd]
rem   Sample format of bug reports:
rem
rem   Subject: [yyyymmdd] I found a bug in my system for hhmmss.bat
rem   Email body:
rem     Windows version: Windows 2012R2 Standard
rem     User: Administrator
rem     hhmmss version    : 1.0.0
rem     hhmmss output     : 123456
rem     Actual time       : 12:56:34
rem     
rem
rem Tested OS:
rem   xp, 2003, vista, 7, 2012R2
rem
rem Version Detail
rem ------- -----------------------------------------
rem 1.0.0   Initial release

set tt=%time%
set hhmmss=%tt:~0,2%%tt:~3,2%%tt:~6,2%

if "%1x" == "-qx" goto end
echo %hhmmss%
:end
