echo off
cls
set MAVEN_OPTS=
set CMD=mvn dependency:resolve %1
echo .
echo . %CMD%
echo .
rem pause

%CMD%