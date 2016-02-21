echo off
cls
echo .
echo .
echo . Other maven par: dependency:resolve dependency:resolve-plugins -Dmaven.javadoc.skip=true
echo .
set CMD=mvn mvn package -DskipTests
echo .
%CMD%
