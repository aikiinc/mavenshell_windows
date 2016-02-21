Maven Command Menu Shell (MCMS)- Windows Version
---------------------------------------------------------------------
This MCMS shell has been on my machine for over 15 years. It helped me 
develop my Java applications when using maven. Why oh why, what's my 
motivation? 

My motivation is to forget, cause I never remember, the numerous parameters 
used by maven. This shell script canned all these parameters and now we 
all can use it.

Think of it as a Maven Spray Can - spray it on!


What Does It Look Like?
-----------------------------------------------
.
. Maven commands
.
........ Most Used
2. mvndependendcyresolve.cmd
3. mvndependendcyresolveplg.cmd
a. mvnins.cmd
b. mvninsall.cmd
c. mvnjettyrun.cmd
7. mvneclipse.cmd
h. mvnwar.bat
j. mvnsetenv.cmd
k. mvnclean.cmd
h1. mvnhelp.cmd
.
........ GWT
9. mvngwtrun.cmd
l. mvngwtjettyrun.cmd
m. mvngwtjettyrunnobld.cmd
t. mvngwthelp.cmd
u. mvngwtcompile.cmd
.
........ Other
1. mvndependencyreadme.txt
4. mvndev.bat
5. mvndevdebug.bat
6. mvndevstart.bat
8. mvnexe.cmd
d. mvnoracle.bat
e. mvnsetupojdbc6.bat
f. mvnsetupumc.bat
g. mvnsite.bat

o You see lots of options to choose!

What Are It's Content - Script Source Code
-----------------------------------------------
|-mvnmenu.cmd
|-setjdk17.cmd
|-setmvn.cmd
|--/mavenshell

o mvnmenu.cmd is the shell script called to activate the menu.
o /mavenshell is a subdirectory with a bunch of mvn*.cmd command files
  mvnmenu.cmd calls.
o setjdk16.cmd is used to set the Java JDK environments.
o setmvn.cmd sets the maven environment

More details:
o The setjdk*.cmd is not call automatically so we can set the JDK to use
  manually. You can make it auto by removing the 'rem' before its trigger
  in the mvnmenu.cmd file.
o The mvnshell.cmd which calls setmvn.cnd to set the maven environments. 
  
What You Need To Do
-----------------------------------------------
1. Set the JDK path and environment by updating the setjdk17.cmd file.
Here is my development environment set in the setjdk17.cmd file:

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

2. Set the Maven environment in the setmvn.cmd file:

echo off
set MAVEN_HOME=E:\apache-maven-3.3.3
cls
PATH=%MAVEN_HOME%\bin;%PATH%
echo PATH=%PATH%;

3. Call the Maven Command Menu Shell (MCMS)
o On the DOS command line, call mvnmenu
o The memu from above should appear, see "What Does It Look Like?".

4. Usage
o For example to do maven clean
o Select k form the menu

Hope it helps, that's what I use these day.
Cheers!

