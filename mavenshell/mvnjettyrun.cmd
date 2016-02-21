echo off
cls
rem call setjdk17
echo .
set CMD=mvn clean jetty:run %1 -DskipTests=true 
echo .
echo %CMD%
echo
%CMD%