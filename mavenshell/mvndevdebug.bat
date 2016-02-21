cls
set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=8087,suspend=n
echo %MAVEN_OPTS%
set CMD=mvn -P development -DskipTests=true clean jetty:run -Djetty.port=8080 %1
echo .
echo . %CMD%
echo .
