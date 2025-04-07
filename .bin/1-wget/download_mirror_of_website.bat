@echo off

set url="https://berty.tech/docs/index.html"
set log="%~dpn0.log"

set wget_opt=
set wget_opt=%wget_opt% --no-check-certificate -nv
set wget_opt=%wget_opt% -P "%~dp0..\.." -np -nH
set wget_opt=%wget_opt% -r -l 0 -p -k -E

wget %wget_opt% %url% >%log% 2>&1
