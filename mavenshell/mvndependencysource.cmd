echo off
echo .
echo .
echo . Download the dependency source
set CMD=mvn dependency:sources
echo %CMD%
rem pause
%CMD%