echo off
cls
rem mvn -P oracle -DskipTests=true clean jetty:run -Djetty.port=8084
set CMD=mvn -DskipTests=true -P oracle jetty:run -Djetty.port=8084
echo .
echo %CMD%
echo
%CMD%
