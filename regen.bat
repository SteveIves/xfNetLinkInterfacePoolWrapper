@echo off
setlocal
pushd %~dp0

rem ================================================================================
rem * * * SPECIFY YOUR CONFIGURATION DETAILS HERE * * *

set RPSMFIL=rpsmain.ism
set RPSTFIL=rpstext.ism
set SMC_XML_FILE=SynergyClient.xml
set GENCS_NAMESPACE=SynergyClient
set GENCS_INTERFACE=SynergyMethods
set GENCS_OUT_PARAM_AS=ref

rem ================================================================================

echo.
echo Generating xfNetLink pool wrappers for interface %1
echo.

codegen -smc %SMC_XML_FILE% -interface %GENCS_INTERFACE% -n %GENCS_NAMESPACE% -ut OUT_PARAM_AS=%GENCS_OUT_PARAM_AS% -t InterfacePoolWrapper -i . -o . -rps %RPSMFIL% %RPSTFIL% -r -lf -pause

popd
endlocal

