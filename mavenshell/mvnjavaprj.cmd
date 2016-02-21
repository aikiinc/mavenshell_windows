echo off
cls
set MAVEN_OPTS=
set CMD=mvn mvn archetype:generate -DgroupId=%1% DartifactId=%1% -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
echo .
echo . Need 2 params, groupId, articateId, `
echo . groupId=%1  - Beginning package info like: com.aikiinc
echo . artifactId=%1% - Sub package infor like: myproject
echo . %CMD%
echo .
pause

%CMD%

