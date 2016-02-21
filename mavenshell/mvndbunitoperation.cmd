echo off
echo .
echo . See mvndependencyreadme for sample plugin config
echo .
set CMD=mvn dbunit:operation
echo %CMD%
rem pause
%CMD%