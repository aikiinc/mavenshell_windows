echo off
set CMD=mvn archetype:generate -B -DarchetypeGroupId=%1 -DarchetypeArtifactId=%2 -DarchetypeVersion=%3 -DgroupId=com.aikiinc -DartifactId=%4 -DarchetypeRepository=%5
echo .
echo %CMD%
echo .
%CMD%

