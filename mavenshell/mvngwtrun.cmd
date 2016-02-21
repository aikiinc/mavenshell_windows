echo off
cls
echo .
echo . Run in the parent directory of GWT target where pom.xml is
echo .
echo . Other maven par: dependency:resolve dependency:resolve-plugins -Dmaven.javadoc.skip=true
echo .
echo . runTarget=%1
echo .
set CMD=mvn gwt:run -DskipTests -DrunTarget=%1
echo .
echo . %CMD%
echo .
%CMD%
