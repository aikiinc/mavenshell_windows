echo off
set JAVA_HOME=E:\jdk1.7.0_01
set ANT_HOME=E:\apache-ant-1.8.2
call setmvn
set WINDOW_PATH=C:\WINDOWS\system32;C:\WINDOWS;.;c:\batch\;

set CLASSPATH=.;%JAVA_HOME%\jre\lib\rt.jar;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;
set CLASSPATH=%CLASSPATH%;%ANT_HOME%\lib\ant.jar

set PATH=.;%JAVA_HOME%\bin;%ANT_HOME%\bin;%WINDOW_PATH%;%MAVEN_HOME%\bin
cls
set CLASSPATH=%CLASSPATH%;
echo CLASSPATH=%CLASSPATH%
echo .
echo ANT_HOME=%ANT_HOME%
echo MAVEN_HOME=%MAVEN_HOME%
echo PATH=%PATH%
echo .




