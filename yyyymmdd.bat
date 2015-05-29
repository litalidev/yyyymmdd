@echo off
rem yyyymmdd.bat
rem   print the current date in yyyymmdd format and set the variable yyyymmdd
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
rem   yyyymmdd [-d] [-q] [-v]
rem
rem     -d : output system date in raw format for debugging
rem     -q : quiet mode, no output, just set the yyyymmdd variable
rem     -v : print version number
rem
rem Bug:
rem   sent bug/comment to litalidev@gmail.com with SUBJECT [yyyymmdd]
rem   Sample format of bug reports:
rem
rem   Subject: [yyyymmdd] I found a bug in my system
rem   Email body:
rem     Windows version: Windows 2012R2 Standard
rem     User: Administrator
rem     yyyymmdd version   : 1.0.0
rem     yyyymmdd output    : 12/3/2015
rem     yyyymmdd -d output : 
rem
rem     012345678901234567890
rem     03/22/2015 Sun
rem     mm-dd-yy
rem     
rem
rem Tested OS:
rem   xp, 2003, vista, 7, 2012R2
rem
rem Version Detail
rem ------- -----------------------------------------
rem 1.0.0   Initial release
rem
rem %date% can be one of the following format
rem 01234567890123
rem Wed 03/25/2015 format a win2003 xp
rem 03/25/2015 Wed format b vista win7
rem 25/03/2015     format c win2012r2 in dd-mm-yy

set version=1.0.0

set dd=%date%
for /f "skip=1 tokens=5 delims=() " %%a in ('date^<nul') do set df=%%a


if "%1x" == "-dx" echo 012345678901234567890 & echo %dd% &echo %df% & goto end
if "%1x" == "-vx" echo %version% & goto end

set tt=%dd:~6,1%%dd:~9,1%
if "%tt%x" == "//x" set yyyymmdd=%dd:~10,4%%dd:~4,2%%dd:~7,2%& goto endok

set tt=%dd:~2,1%%dd:~5,1%
if "%tt%x" == "//x" (
  if "%df:~0,2%" == "dd" (
    set yyyymmdd=%dd:~6,4%%dd:~3,2%%dd:~0,2%& goto endok
  ) else (
    set yyyymmdd=%dd:~6,4%%dd:~0,2%%dd:~3,2%& goto endok
  )
)


goto end

:endok
if "%1x" == "-qx" goto end
echo %yyyymmdd%
:end
