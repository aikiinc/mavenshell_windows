echo off
call mvnsetenv
:TOP
cls
echo .
echo . Maven commands
echo .   MAVEN_HOME=%MAVEN_HOME%
echo .   PATH=%PATH%
echo .   CLASSPATH=%CLASSPATH%
echo .
echo ........ Most Used
echo 2. mvndependendcyresolve.cmd
echo 3. mvndependendcyresolveplg.cmd
echo a. mvnins.cmd
echo b. mvninsall.cmd
echo c. mvnjettyrun.cmd
echo 7. mvneclipse.cmd
echo h. mvnwar.bat
echo j. mvnsetenv.cmd
echo k. mvnclean.cmd
echo h1. mvnhelp.cmd
echo .
echo ........ GWT
echo 9. mvngwtrun.cmd
echo l. mvngwtjettyrun.cmd
echo m. mvngwtjettyrunnobld.cmd
echo t. mvngwthelp.cmd
echo u. mvngwtcompile.cmd

echo .
echo ........ Other
echo 1. mvndependencyreadme.txt
echo 4. mvndev.bat
echo 5. mvndevdebug.bat
echo 6. mvndevstart.bat
echo 8. mvnexe.cmd
echo d. mvnoracle.bat
echo e. mvnsetupojdbc6.bat
echo f. mvnsetupumc.bat
echo g. mvnsite.bat
echo i. mvnpackage.bat
echo m. mvnjavaprj.cmd
echo o. mvnsrc - Get a maven project source code
echo p. mvndbunitexport - export data to target/dbunit from DB
echo s. mvndbunitoperation - import data to DB
echo v. mvndependencysource - download the dependency source
echo .
echo r. refresh
echo q. quit
echo .

set /p act=
echo "%act%"
if /I "%act%"=="1" (
	notepad C:\batch\mavenshell\mvndependencyreadme.txt
)
if /I "%act%" == "2" (
    call mvndependendcyresolve
)
if /I "%act%" == "3" (
    call mvndependendcyresolveplg
)
if /I "%act%" == "4" (
	call mvndev
)
if /I "%act%" == "5" (
    call mvndevdebug
)
if /I "%act%" == "6" (
    call mvndevstart
)
if /I "%act%" == "7" (
    call mvneclipse
)
if /I "%act%" == "8" (
    call mvnexe
)
if /I "%act%" == "9" (
    call mvngwtrun
)
if /I "%act%" == "a" (
    call mvnins
)
if /I "%act%" == "b" (
    call mvninsall
)
if /I "%act%" == "c" (
    call mvnjettyrun
)
if /I "%act%" == "d" (
    call mvnoracle
)
if /I "%act%" == "e" (
    call mvnsetupojdbc6
)
if /I "%act%" == "f" (
    call mvnsetupumc
)
if /I "%act%" == "g" (
    call mvnsite
)
if /I "%act%" == "h" (
    call mvnwar
)
if /I "%act%" == "h1" (
    call mvnhelp
)
if /I "%act%" == "i" (
    call mvnpackage
)
if /I "%act%" == "j" (
    call mvnsetenv
)
if /I "%act%" == "k" (
    call mvnclean
)
if /I "%act%" == "l" (
    call mvngwtjettyrun
)
if /I "%act%" == "m" (
    call mvngwtjettyrunnobld
)
if /I "%act%" == "n" (
    call mvnjavaprj %1 %2
)
if /I "%act%" == "o" (
    call mvnsrc
)
if /I "%act%" == "p" (
    call mvndbunitexport
)
if /I "%act%" == "s" (
    call mvndbunitoperation
)
if /I "%act%" == "t" (
    call mvngwthelp
)
if /I "%act%" == "u" (
    call mvngwtcompile
)
if /I "%act%" == "v" (
    call mvndependencysource
)
if /I "%act%" == "r" (
    goto TOP
)
if /I "%act%" == "q" (
    goto EXIT
)

pause
goto TOP


:EXIT
