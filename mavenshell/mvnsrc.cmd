echo off
setlocal enableextensions enabledelayedexpansion
call :getargc argc %*

set CMD=mvn archetype:generate -B -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -DgroupId=%4 -DartifactId=%2-%3
echo .
echo . %CMD%
echo .

if not %ARGS_COUNT%==4 (
    echo .
    echo . Usage:
    echo .    maven source arguments: 1-groupId 2-artifactId -3version
    echo .    maven target arguments: 4-groupId
    echo .
    echo .      Ex: mvnsrc org.appfuse hibernate 3.0.0 com.aikiinc
    echo .
)
if %ARGS_COUNT%==4 (
    %CMD%
)
echo .
endlocal
goto :eof

:getargc
    SET /A ARGS_COUNT=-1
    FOR %%A in (%*) DO SET /A ARGS_COUNT+=1
    rem ECHO %ARGS_COUNT%

