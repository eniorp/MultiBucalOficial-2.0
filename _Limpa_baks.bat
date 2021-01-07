	@echo off
echo ------------------------------------------------------------------------------
echo.
echo Apagando os arquivos DCU, EXE e ETC....
if exist *.~?? del *.~??
if exist *.dcu del *.dcu
if exist *.opt del *.opt
if exist *.dsm del *.dsm
if exist *.dsk del *.dsk
if exist *.exe del *.exe
if exist *.ddp del *.ddp
if exist .lck del *.lck
if exist _apagar.pas del _apagar.pas
if exist _apagar1.pas del _apagar1.pas
if exist _apagar.dfm del _apagar.dfm
if exist _apagar1.dfm del _apagar1.dfm
if exist mt.dof del mt.dof
if exist multiodonto.res_ del multiodonto.res_
if exist mt.dproj del mt.dproj
if exist mt.res del mt.res
if exist multiodonto.xxx del multiodonto.xxx
if exist *apagar*.bat del *apagar*.bat
if exist atualizadb.dpr del atualizadb.dpr
if exist mt.dpr del mt.dpr
if exist RelNiverInclusaoProtetico.dfm del RelNiverInclusaoProtetico.dfm
if exist RelNiverInclusaoProtetico.pas del RelNiverInclusaoProtetico.pas
if exist c:\Windows\Temp\Pdoxusrs.net del c:\Windows\Temp\Pdoxusrs.net 
echo Aten‡Æo: Somente delete o Arquivo .Res caso vocˆ tenha as imagens e as
echo          listagems de ¡ndices dos componentes que requerem a propriedade
echo          list tipo ComboBox ou ListBox
echo.
echo Flavio
echo ------------------------------------------------------------------------------
echo.

pause