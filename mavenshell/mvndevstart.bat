echo off
cls
echo . Starting Deve with no code compile
echo .
set MAVEN_OPTS=
set CMD=mvn -P development -DskipTests=true jetty:run -Djetty.port=8080 %1
echo %CMD%
echo .
%CMD&