@echo off
echo =========================================
echo Building Hash Map ASM (x64 Windows)
echo =========================================

:: [1/3] Cleanup
del /s /q *.obj >nul 2>&1
del hash_map.exe >nul 2>&1

:: [2/3] Assembling
echo Assembling modules...
nasm -f win64 -g main.asm -o main.obj
nasm -f win64 -g hash_map.asm -o hash_map.obj

if %errorlevel% neq 0 (
    echo [ERROR] Assembling failed!
    pause
    exit /b %errorlevel%
)

:: [3/3] Linking
echo Linking...
gcc -g main.obj hash_map.obj -o hash_map.exe

if %errorlevel% neq 0 (
    echo [ERROR] Linking failed!
    pause
    exit /b %errorlevel%
)

echo =========================================
echo SUCCESS: hash_map.exe created!
echo =========================================
pause
