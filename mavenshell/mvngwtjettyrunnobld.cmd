echo off
cls
rem call setjdk17
echo .
set CMD=mvn -DskipTests=true jetty:deploy-war
echo .
echo %CMD%
echo
%CMD%