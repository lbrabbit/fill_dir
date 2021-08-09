:: This is a very old MSDOS batch program,
:: written probably in 1996 or 97.
:: I was crazy enough to try recursion in batch programming.
:: The filename 3.bat imply that 1.bat and 2.bat might exist,
:: Yes, it is true, but this program already contains all the important elements.
::
:: The program tries to create the tallest possible binary directory tree 
:: starting from your current directory in the filesystem 

@echo on
mkdir %1
@echo off
copy 3.bat %1
if not exist %1\3.bat goto next
cd %1
call 3 %1 %2
cd ..
:next
mkdir %2
copy 3.bat %2
if not exist %2\3.bat goto end
cd %2
xcopy ..\%1\*.* /e
cd ..
:end

