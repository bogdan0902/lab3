@echo off
setlocal

set /p "deleteDir=vkadjit katalog"
set "deleteFiles=*.txt"

if "%deleteDir%"=="" (
    echo ne vkazano katalog dlia vidalennia failov.
    pause
    exit /b 1
)

if not exist "%deleteDir%" (
    echo katalog "%deleteDir%" ne isnue.
    pause
    exit /b 1
)

cd "%deleteDir%"
del /s /q /a:-h -r -s "%deleteFiles%"

if %errorlevel% equ 0 (
    echo faily uspishno vidaleni z katalogu "%deleteDir%".
) else (
    echo vinikla pomilka vidalennya z katalogu "%deleteDir%".
)

pause
endlocal
