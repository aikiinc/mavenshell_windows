echo off
echo .
set CMD=mvn clean -DskipTests dependency:resolve dependency:resolve-plugins -Dmaven.javadoc.skip=true install %
echo %CMD%
echo .
rem pause
%CMD%