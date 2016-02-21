echo off
cls
set APPF_GRPID=org.appfuse.archetypes
set APPF_ARCHTYPE=appfuse-light-struts-archetype
set APPF_VERSION=3.5.0-SNAPSHOT
set AIKI_TYPE=%APPF_ARCHTYPE%
set APPF_REPO=https://oss.sonatype.org/content/groups/appfuse
set APPF_DIR=appfuse301

rem mvngetappfuse %APPF_GRPID% %APPF_ARCHTYPE% %APPF_VERSION%  %AIKI_TYPE% %APPF_REPO%

mkdir %APPF_DIR%
cd %APPF_DIR%
cd

for /F "delims=" %%f in (../artifactsparam.txt) do (
    call ../mvngetappfuse %APPF_GRPID% %%f %APPF_VERSION%  %%f %APPF_REPO%
)

dir
pause
cd ..


