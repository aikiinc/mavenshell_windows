echo off
cls
rem call setjdk17
echo .
set CMD=mvn clean jetty:run-war %1 -DskipTests=true -Dmaven.javadoc.skip=true 
echo .
echo %CMD%
echo
%CMD%