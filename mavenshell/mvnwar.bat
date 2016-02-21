echo off
cls
set CMD=mvn -DskipTests=true clean compile war:war %1
echo .
echo %CMD%
echo
%CMD%