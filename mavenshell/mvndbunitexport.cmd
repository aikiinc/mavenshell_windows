echo off
echo .
echo .
echo . Export data to target /dbunit
set CMD=mvn dbunit:export
echo %CMD%
rem pause
%CMD%