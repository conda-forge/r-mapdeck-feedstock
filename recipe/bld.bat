REM inject C++ standard
sed -i "/CXX_STD = CXX11/c\CXX_STD = CXX14" src\Makevars.win

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
