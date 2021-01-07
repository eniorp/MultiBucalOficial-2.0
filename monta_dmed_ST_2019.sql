use st
DECLARE

@DTINI CHAR(10),
@DTFIM CHAR(10),
@EMPRESA CHAR(2)

SET @EMPRESA = 'MT'

--AS
-- DROP TABLE #T	DROP TABLE #DMED DROP TABLE #DMED_CONTRAT DROP TABLE #DMED_CONTRAT1 DROP TABLE #DMED_CONTRAT_MENS DROP TABLE #DMED_CONTRAT1_MENS
SET @DTINI = '01/01/2018'
SET @DTFIM = '31/12/2018'
 

--SELECT Valor_Pago,* FROM Receber WHERE CODIGO_CONTRATANTE = 19993 AND Valor_Pago > 0 AND YEAR(DATA_PAGAMENTO) = 2013

SELECT  

    C.NOME AS NM_CONTRATANTE,
	R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    R.ORCAMENTO,    
    C.CODIGO,
    C.CODIGO AS CD_CONTRATANTE,
    'S' LG_PODE_ALTERAR,
    'N' FLEGAR,
    CAST(NULL AS BIT) lg_ir,
    CAST(NULL AS DATETIME) DATA_INCLUSAO,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
    'M' TIPO,
    cast('' as varchar(50)) MOTIVO,
    c.CGC_CPF

INTO #DMED

FROM 
	RECEBER R, 
	TIPODOCUMENTO T,
    CONTRATANTE C,
    PLANO P

WHERE 
	     T.CODIGO = R.TIPO_DOCUMENTO 
        AND C.CODIGO  = R.CODIGO_CONTRATANTE
        AND P.CODIGO  = C.PLANO
	AND DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM
	AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO MES..
	AND C.Empresa = 0

    and T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao = 'Mensalidade')
--    and t.codigo in(1,4,9,10,11,14,15,16,18,21,23,26)
--SELECT TOP 10 * FROM #DMED WHERE NM_CONTRATANTE = 'NAGIB DE ALMEIDA ISSA'


--BEGIN TRAN UPDATE CONTRATANTE SET EMPRESA = 1 WHERE NOME = 'UNISOLO COMERCIO E INDUSTRIA LTDA' COMMIT
--SELECT TOP 10 * FROM #DMED WHERE NM_CONTRATANTE = 'NAGIB DE ALMEIDA ISSA'
--drop table #dmeD
INSERT INTO #DMED

SELECT  
    U.NOME AS NM_CONTRATANTE,
    R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    R.ORCAMENTO,
    U.CODIGO_COMPLETO,
    U.CODIGO AS CD_CONTRATANTE,
    'S' LG_PODE_ALTERAR,
    'N' FLEGAR,
    O.lg_ir,
    U.DATA_INCLUSAO,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
    'O' TIPO,
    '' motivo,
    c.CGC_CPF

 
FROM 
	RECEBER R

INNER JOIN	TIPODOCUMENTO T 
ON
   T.CODIGO = R.TIPO_DOCUMENTO 

INNER JOIN USUARIO U 
ON
   U.CODIGO_COMPLETO = R.CODIGO_USUARIO

INNER JOIN CONTRATANTE C
ON
    C.CODIGO  = U.CODIGO

INNER JOIN ORCAMENTO O
ON
  O.NUMERO = R.ORCAMENTO --TB ORCAMENTO
  

WHERE 
	        
	    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM
	AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO MES..
    --AND FIS_JUR = 'F�sica' -- SEGUNDO GABI OR�AMENTOS MANUT � O BENEF. QUE PAGA, INT�O N�O VERIFICA SE � PJ OU PF
   AND T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao <> 'Mensalidade')    -- orc. e manut)    
   
   
update #dmed set cgc_cpf = replace(REPLACE(cgc_cpf,'-',''),'.','')

update #dmed set lg_ir = 0 where lg_ir is null


UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'SOLICITOU RECIBO DE IR' FROM RECIBOIR_CONTRATANTE R WHERE R.CD_CONTRATANTE = #DMED.CD_CONTRATANTE AND R.ANO IN(2010,2011,2012,2013,2014,2015)

UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'CONTRATANTE NOVO' WHERE YEAR(DT_INCLUSAO_CONTRAT) >= 2018 and LG_PODE_ALTERAR = 'S'

UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'INFORMOU IR NO ORCAMENTO' WHERE lg_ir = 1 and LG_PODE_ALTERAR = 'S'


select * from #dmed






select motivo,tipo,DSTPDOCUMENTO,* from #dmed where CD_CONTRATANTE in(6117) and tipo <> 'M' 
select CD_CONTRATANTE,sum(valor_pago) from #dmed where CD_CONTRATANTE in(6349,6117,5863,7285,7102,7172) and tipo <> 'M' 
and motivo = 'INFORMOU IR NO ORCAMENTO'
group by CD_CONTRATANTE
union
select CD_CONTRATANTE,sum(valor_pago) from #dmed where CD_CONTRATANTE in(7355,7355,7355) and tipo <> 'M'  and motivo = 'CONTRATANTE NOVO' group by CD_CONTRATANTE



--INFORMOU IR NO ORCAMENTO

/*BEGIN TRAN
select SUM(D.VALOR_PAGO)  VALOR from #dmed D where dstpdocumento = 'MENSALIDADE'  
select SUM(D.VALOR_PAGO)  VALOR from #dmed D where MOTIVO = 'SOLICITOU RECIBO DE IR'  AND dstpdocumento <> 'MENSALIDADE'  

delete #dmed where MOTIVO <> 'SOLICITOU RECIBO DE IR' and dstpdocumento <> 'MENSALIDADE'
select SUM(D.VALOR_PAGO)  VALOR from #dmed D where dstpdocumento = 'MENSALIDADE'  
select SUM(D.VALOR_PAGO)  VALOR from #dmed D where MOTIVO = 'SOLICITOU RECIBO DE IR'  AND dstpdocumento <> 'MENSALIDADE'  
ROLLBACK
*/
-- primeira aba 2018
-- aba todas as mensalidades
SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' --OR LG_PODE_ALTERAR = 'N'
WHERE tipo = 'M' --OR LG_PODE_ALTERAR = 'N'
GROUP BY Codigo_Contratante,NM_CONTRATANTE ORDER BY NM_CONTRATANTE




select cast(cpf as decimal) from ##tt
select TOP 275 cpf from ##tt
--select * from ##tt order by 1 desc
--delete ##tt where cpf  = '162,26068841'
select * from ##t
-- orcamentos dos cpfs
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
-- gabi passou e-mail em 26/01/2018 pedindo par aexcluir os que estao na aba cpf
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY 4 desc



-- tratamento solicitou ir

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
and motivo in('INFORMOU IR NO ORCAMENTO','SOLICITOU RECIBO DE IR')
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY 4 desc

-- tratamento contratante novo

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and  dstpdocumento = 'ORCAMENTO' 
and motivo = 'CONTRATANTE NOVO'
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

--aba demais tratamento
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and  dstpdocumento = 'ORCAMENTO' 
and motivo not in('CONTRATANTE NOVO','INFORMOU IR NO ORCAMENTO','SOLICITOU RECIBO DE IR')
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

-- MANUTEN��O dos cpfs
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'MANUTENCAO' 
-- gabi passou e-mail em 26/01/2018 pedindo par aexcluir os que estao na aba cpf
and not exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY 4 desc

-- MANUTEN��O solicitou ir

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'MANUTENCAO' 
and motivo in('INFORMOU IR NO ORCAMENTO','SOLICITOU RECIBO DE IR')
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY 4 desc

-- MANUTEN��O contratante novo

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and  dstpdocumento = 'MANUTENCAO' 
and motivo = 'CONTRATANTE NOVO'
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

--aba demais MANUTEN��O
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and  dstpdocumento = 'MANUTENCAO' 
and motivo not in('CONTRATANTE NOVO','INFORMOU IR NO ORCAMENTO','SOLICITOU RECIBO DE IR')
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2


  



-- TERCEIRA ABA MANUTENCAO TOTAL

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'MANUTENCAO' 
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2


-- QUARTA ABA TODAS MENSALIDADES DOS CPFS 

SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR FROM #DMED D

WHERE tipo = 'M' --OR LG_PODE_ALTERAR = 'N'
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
GROUP BY CODIGO_CONTRATANTE ,NM_CONTRATANTE,TIPO 
ORDER BY 2

--select cast(t.cpf as decimal),* from ##tt t
--select top 240 t.cpf  from ##tt t
--delete ##tt where cpf  = 'N�oinformada'
--delete ##tt where cpf  = ''
--delete ##tt where cpf  like '%/%'
--delete ##tt where cpf  = '162,26068841'

-- QUINTA ABA ORCAMENTOS DOS CPFS

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2
select * from #dmed

select sum(VALOR_PAGO) VALOR
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

--select * from delete cpfNFDMED
select * from ##t
select  sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

-- SEXTA ABA MANUTENCAO DOS CPFS
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'MANUTENCAO' 
and exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 
ORDER BY MOTIVO,2

-- QUINTA ABA OR�AMENTOS QUE N�O S�O DOS CPFS

--SELECT  * FROM #DMED WHERE NM_CONTRATANTE = 'AMANDO DE SOUSA COELHO' AND DSTPDOCUMENTO = 'ORCAMENTO'
--SELECT  SUM(VALOR_PAGO) FROM #DMED WHERE NM_CONTRATANTE = 'AMANDO DE SOUSA COELHO' AND DSTPDOCUMENTO = 'ORCAMENTO'
select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR ,MOTIVO
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
AND NM_CONTRATANTE = 'AMANDO DE SOUSA COELHO' group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO , MOTIVO 

select CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO TIPO, sum(VALOR_PAGO) VALOR 
from #dmed D where tipo <> 'M'  and dstpdocumento = 'ORCAMENTO' 
and NOT exists(select * from ##tt t where cast(d.CGC_CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilha em 2016 com alguns cpfs para filtrar criei essa tabela lembrar de limpar . - etc
group by CODIGO_CONTRATANTE ,NM_CONTRATANTE, DSTPDOCUMENTO 
ORDER BY 4 DESC

-- ORDER BY MOTIVO,2
/*
select top 10 * from #dmed where motivo <> ''
-- PROBLEMAS DE ARREDONDAMENTO SQL SEVER (2013 PRECISOU)
SELECT sum(valor_pago) FROM #DMED where tipo = 'M'
DELETE FROM #DMED WHERE VALOR_PAGO <= 0.05
select  sum(valor_pago) from #DMED where tipo = 'M'
select  sum(valor_pago) from #DMED where dstpdocumento = 'MANUTENCAO' AND MOTIVO = 'SOLICITOU RECIBO DE IR'
select  sum(valor_pago) from #DMED where dstpdocumento in('ORCAMENTO','ORC.IMPLANTADOS') AND MOTIVO = 'SOLICITOU RECIBO DE IR'
select * from #dmed where nm_contratante = 'enio da silveira'
select * FROM RECIBOIR_CONTRATANTE R WHERE R.CD_CONTRATANTE =  15449 AND R.ANO IN(2010,2011,2012,2013)
--select sum(valor_pago) from #dmed where DSTPDOCUMENTO = 'MENSALIDADE' OR (DSTPDOCUMENTO in('ACORDO','INCLUSAO ESCRITORIO','EMERGENCIA','ACORDO ADVOGADO','INCLUSAO USUARIOS','CARTEIRINHAS','CARTAO VENDEDOR(A)','MANUTENCAO') AND LG_PODE_ALTERAR = 'N')
--select sum(valor_pago) from #DMED where DSTPDOCUMENTO <> 'MENSALIDADE' AND LG_PODE_ALTERAR = 'N'
SELECT SUM(VALOR_PAGO) FROM #DMED


-- primeira aba do levantamento inicial
SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO,TIPO FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' OR LG_PODE_ALTERAR = 'N'
WHERE tipo = 'M' OR LG_PODE_ALTERAR = 'N'
GROUP BY Codigo_Contratante,NM_CONTRATANTE,TIPO,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO ORDER BY NM_CONTRATANTE

SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO,TIPO FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' OR LG_PODE_ALTERAR = 'N'
WHERE tipo <> 'M' and LG_PODE_ALTERAR = 'S'
GROUP BY Codigo_Contratante,NM_CONTRATANTE,TIPO,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO ORDER BY valor desc




SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO,TIPO 
--SELECT Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR,TIPO 
FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' OR LG_PODE_ALTERAR = 'N'
WHERE tipo = 'M' OR LG_PODE_ALTERAR = 'N'
GROUP BY Codigo_Contratante,NM_CONTRATANTE,TIPO ORDER BY NM_CONTRATANTE

SELECT Codigo_Contratante,NM_CONTRATANTE,dstpdocumento,SUM(VALOR_PAGO) VALOR,TIPO,motivo FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' OR LG_PODE_ALTERAR = 'N'
WHERE tipo <> 'M' and LG_PODE_ALTERAR = 'N'
GROUP BY Codigo_Contratante,NM_CONTRATANTE,TIPO,dstpdocumento,motivo ORDER BY NM_CONTRATANTE

SELECT Codigo_Contratante,NM_CONTRATANTE,dstpdocumento,SUM(VALOR_PAGO) VALOR,TIPO,motivo FROM #DMED
--WHERE DSTPDOCUMENTO = 'MENSALIDADE' OR LG_PODE_ALTERAR = 'N'
WHERE tipo <> 'M' and LG_PODE_ALTERAR = 'S'
GROUP BY Codigo_Contratante,NM_CONTRATANTE,TIPO,dstpdocumento,motivo ORDER BY NM_CONTRATANTE

SELECT SUM(VALOR_PAGO) VALOR FROM #DMED
WHERE DSTPDOCUMENTO = 'ORCAMENTO' and LG_PODE_ALTERAR = 'S'
and codigo_contratante in(23129,17592,23608,24935,18989,25614,16036,12664,20802,10903,19305,25667,24381,18006,25696,22193,22689,17592,24955,8124 ,11960,7804 ,18895,11032,22707,24668)


SELECT TOP 26 Codigo_Contratante,NM_CONTRATANTE,SUM(VALOR_PAGO) VALOR,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO FROM #DMED
WHERE DSTPDOCUMENTO = 'ORCAMENTO' and LG_PODE_ALTERAR = 'S'
and codigo_contratante in(23129,17592,23608,24935,18989,25614,16036,12664,20802,10903,19305,25667,24381,18006,25696,22193,22689,17592,24955,8124 ,11960,7804 ,18895,11032,22707,24668)

GROUP BY Codigo_Contratante,NM_CONTRATANTE,DSTPDOCUMENTO,LG_PODE_ALTERAR,MOTIVO ORDER BY valor desc

SELECT SUM(VALOR_PAGO) FROM #DMED WHERE DSTPDOCUMENTO = 'ORCAMENTO' AND MOTIVO = ''
SELECT SUM(VALOR_PAGO) FROM #DMED WHERE DSTPDOCUMENTO = 'MENSALIDADE'
--select sum(valor_pago) from #DMED where  LG_PODE_ALTERAR = 'N'
select Codigo_Contratante,nm_contratante,dstpdocumento,sum(valor_pago) valor_pago,MOTIVO from #DMED where  LG_PODE_ALTERAR = 'S' 
group by Codigo_Contratante,nm_contratante,dstpdocumento,MOTIVO
order by Valor_Pago desc

SELECT TOP 10 * FROM #DMED
select sum(valor_pago)
--CODIGO_CONTRATANTE, NM_CONTRATANTE , sum(valor_pago) 
from #dmed where dstpdocumento = 'ORCAMENTO' AND MOTIVO = 'INFORMOU IR NO ORCAMENTO' AND Codigo_Contratante IN(88,832,1116,1140,2016,2121,2219,2236,2246,2359,2376,2401,2408,2414,2448,2595,2682,2728,2832,2860,2863,3669,4331,4418,4545,5299,5369,5860,6084,6349) 
and nm_contratante <> 'PEDRO DA SILVA'
GROUP BY CODIGO_CONTRATANTE, NM_CONTRATANTE ORDER BY CODIGO_CONTRATANTE

-- ENVIA TODA AS MENSALIDADES
insert into contrat_dmed select 2013,codigo_contratante,'M',SUM(valor_pago), 'TODAS AS MENSALIDADES' from #DMED where DSTPDOCUMENTO = 'MENSALIDADE' GROUP BY Codigo_Contratante

-- ENVIA TODOS ORC QUE OU S�O NOVOS OU QUE SOLICITARAM IR
insert into contrat_dmed select 2013,codigo_contratante,'O',SUM(valor_pago), 'CONTRAT NOVOS OU QUE SOLICITOU IR' FROM #DMED where DSTPDOCUMENTO <> 'MENSALIDADE' AND LG_PODE_ALTERAR = 'N' GROUP BY Codigo_Contratante


--SELECT SUM(VALOR) FROM  CONTRAT_DMED WHERE ANO = 2013


--- lista por tipo de documento para analise
--SELECT MOTIVO,DSTPDOCUMENTO, replace(str(SUM(VALOR_PAGO),10,2),'.',',') vr_pago FROM #DMED WHERE LG_PODE_ALTERAR = 'N' group by DSTPDOCUMENTO,motivo order by 1,2



-- LISTA AGRUPADO POR MENSALIDADE/ORCAMENTO
--SELECT TIPO, replace(str(SUM(VALOR_PAGO),10,2),'.',',') vr_pago FROM #DMED  GROUP BY TIPO

--SELECT TIPO, replace(str(SUM(VALOR_PAGO),10,2),'.',',')  vr_pago FROM #DMED WHERE LG_PODE_ALTERAR = 'N'  GROUP BY TIPO

--SELECT TOP 10 * FROM #DMED SELECT DISTINCT DSTPDOCUMENTO FROM #DMED
/*
SELECT 
    CGC_CPF,
    DT_NASCIMENTO,
    LG_TITULAR,

CODIGO_CONTRATANTE, SUM(Valor_Pago) AS VALOR_PAGO, MOTIVO FROM #DMED 
WHERE TIPO = 'O' --LG_PODE_ALTERAR = 'S'  
GROUP BY 
    CGC_CPF,
    DT_NASCIMENTO,
    LG_TITULAR,
CODIGO_CONTRATANTE , MOTIVO ORDER BY 2 DESC


SELECT SUM(Valor_Pago) AS VALOR_PAGO FROM #DMED WHERE LG_PODE_ALTERAR is null 'N' 

select * from contratante where Codigo in(5071,17923,22337)
*/
*/
