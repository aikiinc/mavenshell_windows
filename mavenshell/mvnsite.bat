echo off
cls
set CMD=mvn -P development -DskipTests=true clean site
echo .
echo %CMD%
echo
%CMD%
