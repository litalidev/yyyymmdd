# yyyymmdd
Windows batch to print current date in yyyymmdd format

yyyymmdd.bat
  print the current date in yyyymmdd format and set the variable yyyymmdd

License: MIT
Copyright (c) 2015 by Lita Li

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
 
  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.
 
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.


Usage:
  yyyymmdd [-d] [-q] [-v]

    -d : output system date in raw format for debugging
    -q : quiet mode, no output, just set the yyyymmdd variable
    -v : print version number

Bug:
  sent bug/comment to litalidev@gmail.com with SUBJECT [yyyymmdd]
  Sample format of bug reports:

  Subject: [yyyymmdd] I found a bug in my system
  Email body:
    Windows version: Windows 2012R2 Standard
    User: Administrator
    yyyymmdd version   : 1.0.0
    yyyymmdd output    : 12/3/2015
    yyyymmdd -d output : 

    012345678901234567890
    03/22/2015 Sun
    mm-dd-yy
    

Tested OS:
  xp, 2003, vista, 7, 2012R2

Version Detail
------- -----------------------------------------
1.0.0   Initial release

%date% can be one of the following format
01234567890123
Wed 03/25/2015 format a win2003 xp
03/25/2015 Wed format b vista win7
25/03/2015     format c win2012r2 in dd-mm-yy
