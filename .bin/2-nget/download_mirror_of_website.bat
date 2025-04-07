@echo off

set url="https://berty.tech/docs/index.html"
set log="%~dpn0.log"

set nget_opt=
set nget_opt=%nget_opt% -U "Chrome/100"
set nget_opt=%nget_opt% --no-check-certificate
set nget_opt=%nget_opt% -P "%~dp0..\.." -nH
set nget_opt=%nget_opt% -r -l 0 -p -k -E -nQ

nget %nget_opt% --url %url% >%log% 2>&1
