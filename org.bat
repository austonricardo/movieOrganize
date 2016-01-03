SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

::Define your external drive that will be organized above (do = directory_output)
SET do=e:\
::Define your download unorganized directory above (di = directory_input)
SET di=C:\Users\Auston\Downloads\

ruby %parent%\organize.rb %di% %do%
getsub %do%movies -a -l pob
getsub %do%tvshows -a -l pob
