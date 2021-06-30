@echo off
if exist asteroids.rom del asteroids.rom
if exist asteroid0.bin del asteroid0.bin
if exist asteroid0.inc del asteroid0.inc
if exist asteroid1.bin del asteroid1.bin
if exist asteroid1.txt del asteroid1.txt
if exist asteroid1.lzsa del asteroid1.lzsa

rem Define ESCchar to use in ANSI escape sequences
rem https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line
for /F "delims=#" %%E in ('"prompt #$E# & for %%E in (1) do rem"') do set "ESCchar=%%E"

@echo on
tools\tasm -85 -b asteroid0.asm asteroid0.bin
@if errorlevel 1 goto Failed
@echo off

dir /-c asteroid0.bin|findstr /R /C:"asteroid0.bin"

powershell -Command "(gc asteroid0.exp) -replace '.EQU', 'EQU' | Out-File -encoding ASCII asteroid0.inc"
if exist asteroid0.exp del asteroid0.exp

@echo on
tools\pasmo --w8080 asteroid1.asm asteroid1.bin asteroid1.txt
@if errorlevel 1 goto Failed
@echo off

findstr /B "Astro" asteroid1.txt

dir /-c asteroid1.bin|findstr /R /C:"asteroid1.bin"

tools\lzsa.exe -f1 -r -c asteroid1.bin asteroid1.lzsa

dir /-c asteroid1.lzsa|findstr /R /C:"asteroid1.lzsa"

copy /b asteroid0.bin+asteroid1.bin asteroids.rom >nul

dir /-c asteroids.rom|findstr /R /C:"asteroids.rom"

echo %ESCchar%[92mSUCCESS%ESCchar%[0m
exit

:Failed
@echo off
echo %ESCchar%[91mFAILED%ESCchar%[0m
exit /b
