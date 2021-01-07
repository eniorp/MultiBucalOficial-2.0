	@echo off
echo ------------------------------------------------------------------------------
echo.
echo Apagando os arquivos DCU, e ETC....
if exist *.~?? del *.~??
if exist *.dcu del *.dcu
if exist *.opt del *.opt
if exist *.dsm del *.dsm
if exist *.dsk del *.dsk

if exist *.ddp del *.ddp
if exist .lck del *.lck

pause