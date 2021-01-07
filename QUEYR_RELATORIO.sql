DECLARE @DTINI CHAR(10)
DECLARE @DTFIM CHAR(10)

SET @DTINI = '01/01/2011'
SET @DTFIM = '31/12/2011'
-- DROP TABLE #REL
--manutenção pj e pf
--drop table #ManutencaoPJ

set dateformat dmy select 
'manutencaoPFPJ' tipo,
Receber.numero_titulo, Receber.desdobramento, Receber.codigo_contratante, Receber.codiGO_USUARIO,
TIPODOCUMENTO.CODIGO, TIPODOCUMENTO.DESCRICAO,RECEBER.VALOR_PAGO VALOR


 

into #REL

from Receber 
left join Contratante on (Contratante.Codigo = Receber.codigo_Contratante)
left join TipoDocumento on (TipoDocumento.Codigo = Receber.Tipo_documento)
left join TipoCobranca on (TipoCobranca.Codigo = Receber.Tipo_Cobranca)
left join Tipos_Pagamentos on (Tipos_Pagamentos.Id_TipoPgto = Receber.Tipo_Pagamento)
where (Data_Pagamento between @DTINI and @DTFIM)


and Tipo_Documento = 05
--and contratante.empresa = 1

order by Data_Pagamento,  Tipo_Cobranca,Codigo_Contratante, Tipo_Documento,  Numero_Titulo, 
Desdobramento, Data_Emissao,  Valor

--select * from #ManutencaoPJ


--mensalidade pf

INSERT INTO #REL
SELECT
'MENSALIDADEPF' tipo,
Receber.numero_titulo, Receber.desdobramento, Receber.codigo_contratante, Receber.codiGO_USUARIO,
TIPODOCUMENTO.CODIGO, TIPODOCUMENTO.DESCRICAO,RECEBER.VALOR_PAGO VALOR

from Receber 

left join Contratante on (Contratante.Codigo = Receber.codigo_Contratante)
left join TipoDocumento on (TipoDocumento.Codigo = Receber.Tipo_documento)
left join TipoCobranca on (TipoCobranca.Codigo = Receber.Tipo_Cobranca)
left join Tipos_Pagamentos on (Tipos_Pagamentos.Id_TipoPgto = Receber.Tipo_Pagamento)

where (Data_Pagamento between @DTINI and @DTFIM) 


and Contratante.empresa = 0

and TIPO_DOCUMENTO IN(select CODIGO from TipoDocumento where Classificacao = 'Mensalidade')

order by Data_Pagamento,  Tipo_Cobranca,Codigo_Contratante, Tipo_Documento,  Numero_Titulo, 
Desdobramento, Data_Emissao,  Valor


INSERT INTO #REL

SELECT
'ORCAMENTOSPF' tipo,
Receber.numero_titulo, Receber.desdobramento, Receber.codigo_contratante, Receber.codiGO_USUARIO,
TIPODOCUMENTO.CODIGO, TIPODOCUMENTO.DESCRICAO,RECEBER.VALOR_PAGO VALOR

from Receber 
left join Contratante on (Contratante.Codigo = Receber.codigo_Contratante)
left join TipoDocumento on (TipoDocumento.Codigo = Receber.Tipo_documento)
left join TipoCobranca on (TipoCobranca.Codigo = Receber.Tipo_Cobranca)
left join Tipos_Pagamentos on (Tipos_Pagamentos.Id_TipoPgto = Receber.Tipo_Pagamento)

where (Data_Pagamento BETWEEN @DTINI and @DTFIM)


--and Contratante.empresa = 0

and TIPO_DOCUMENTO IN(select CODIGO from TipoDocumento where Classificacao = 'Orçamento')

order by Data_Pagamento,  Tipo_Cobranca,Codigo_Contratante, Tipo_Documento,  Numero_Titulo, 
Desdobramento, Data_Emissao,  Valor


select SUM(valor) from #rel

select codigo,descricao,sum(valor)valor from #rel group by codigo,descricao order by 1

select tipo,SUM(VALOR)valor  from #rel r where tipo in('ORCAMENTOSPF', 'manutencaoPFPJ') and not exists(select * from usuario u where u.Codigo_Completo = r.codigo_usuario)
group by tipo

select * from #rel r where tipo in('ORCAMENTOSPF', 'manutencaoPFPJ') and not exists(select * from usuario u where u.Codigo_Completo = r.codigo_usuario)
