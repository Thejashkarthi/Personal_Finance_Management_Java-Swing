@echo off
echo Compiling Personal Finance Management System...

REM Create build directory
if not exist "build\classes" mkdir build\classes

REM Compile Java files
javac -cp "lib\mysql-connector-j-8.0.32.jar;lib\xchart-3.8.7.jar;lib\jcalendar-1.4\lib\jcalendar-1.4.jar;lib\AbsoluteLayout.jar" -d build\classes src\personalfinancemanagement\*.java src\Database\*.java src\Login\*.java src\Home\*.java src\Chart\*.java

REM Copy resources
xcopy src\Icon build\classes\Icon\ /E /I /Y >nul 2>&1

echo Compilation complete!
echo Run the application using: run.bat
pause