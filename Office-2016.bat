@echo off
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"

for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul

cscript //nologo ospp.vbs /unpkey:WFG99 >nul
cscript //nologo ospp.vbs /unpkey:DRTFM >nul
cscript //nologo ospp.vbs /unpkey:BTDRB >nul
cscript //nologo ospp.vbs /unpkey:CPQVG >nul
cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul

cscript //nologo ospp.vbs /sethst:kms.digiboy.ir >nul
cscript //nologo ospp.vbs /act >nul