@set PoolHost=
@set Port=
@set PublicVerusCoinAddress=
@set WorkerName=
@set Threads=

@call :GET_CURRENT_DIR
@cd %THIS_DIR%
nheqminer.exe -v -l %PoolHost%:%Port% -u %PublicVerusCoinAddress%.%WorkerName% -t %Threads%  %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto :EOF

:GET_CURRENT_DIR
@pushd %~dp0
@set THIS_DIR=%CD%
@popd
@goto :EOF
