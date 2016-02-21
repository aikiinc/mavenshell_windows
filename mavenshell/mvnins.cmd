echo off
echo .
echo .
set CMD=mvn clean install -DskipTests -Dmaven.javadoc.skip=true %1 %2
echo %CMD%
rem pause
%CMD%