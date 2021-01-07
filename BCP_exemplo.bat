bcp multiodonto..TabPagDentistaXCategoria out c:\temp\TabPagDentistaXCategoria.dat -SSRV01\SQLEXPRESS -Usa -Psa -T -n
bcp multiodonto..tabelaQTUS out c:\temp\tabelaQTUS.dat -SSRV01\SQLEXPRESS -Usa -Psa -T -n
bcp multiodonto..ServicoXQtUS out c:\temp\ServicoXQtUS.dat -SSRV01\SQLEXPRESS -Usa -Psa -T -n
bcp multiodonto..dentista out c:\temp\dentista.dat -SSRV01\SQLEXPRESS -Usa -Psa -T -n

c:\temp\pagDent\

bcp mt..TabPagDentistaXCategoria in c:\temp\pagDent\TabPagDentistaXCategoria.dat -SANALISTA_01\SQLEXPRESS -Usa -Psa -T -n
bcp mt..tabelaQTUS in c:\temp\pagDent\tabelaQTUS.dat -SANALISTA_01\SQLEXPRESS -Usa -Psa -T -n
bcp mt..ServicoXQtUS in c:\temp\pagDent\ServicoXQtUS.dat -SANALISTA_01\SQLEXPRESS -Usa -Psa -T -n
bcp mt..##dentista in c:\temp\pagDent\dentista.dat -SANALISTA_01\SQLEXPRESS -Usa -Psa -T -n

update dentista set cd_tabelaQTUS = d.cd_tabelaQTUS from ##dentista d where d.codigo = dentista.codigo
.dat estão fontes\temp\pagDentista.rar