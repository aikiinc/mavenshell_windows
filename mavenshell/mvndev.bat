cls
set MAVEN_OPTS=
set CMD=mvn -P development -DskipTests=true clean jetty:run -Djetty.port=8080 %1
echo .
echo %CMD%
echo .

%CMD%

