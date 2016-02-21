echo off
cls
set MAVEN_OPTS=
set CMD=mvn eclipse:eclipse
echo .
echo . Eclipse setup for maven
echo .
echo . %CMD%
echo .
rem pause

%CMD%