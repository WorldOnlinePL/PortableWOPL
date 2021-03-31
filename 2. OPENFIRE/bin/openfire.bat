@echo off

SETLOCAL

set OPENFIRE_HOME=%~dp0..
goto run

:run
SET debug=
if "%1" == "-debug" SET debug=-Xdebug -Xint -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000
java %debug% -server -Djsse.enableCBCProtection=false -DopenfireHome="%OPENFIRE_HOME%" -Dlog4j.configurationFile="%OPENFIRE_HOME%\lib\log4j2.xml" -Dopenfire.lib.dir="%OPENFIRE_HOME%\lib" -jar "%OPENFIRE_HOME%\lib\startup.jar"
goto end

:end


