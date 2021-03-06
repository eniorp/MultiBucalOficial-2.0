DECLARE

@DTINI CHAR(10),
@DTFIM CHAR(10),
@EMPRESA CHAR(2)

SET @EMPRESA = 'MT'

--AS
-- DROP TABLE #T	DROP TABLE #DMED DROP TABLE #DMED_CONTRAT DROP TABLE #DMED_CONTRAT1 DROP TABLE #DMED_CONTRAT_MENS DROP TABLE #DMED_CONTRAT1_MENS
SET @DTINI = '01/01/2012'
SET @DTFIM = '31/12/2012'
select sum(valor_pago) from #dmed where codigo_contratante = 5071
select *  from #dmed where codigo_contratante = 5071
select sum(valor) from contrat_dmed where cd_contratante = 5071
SET DATEFORMAT DMY
--INSERT INTO #DMED
--SELECT SUM(VALOR_PAGO) FROM #DMED WHERE TIPO = 'M'
 

--SELECT Valor_Pago,* FROM Receber WHERE CODIGO_CONTRATANTE = 19993 AND Valor_Pago > 0 AND YEAR(DATA_PAGAMENTO) = 2012

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
    cast('' as varchar(50)) MOTIVO
    
    

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
    --AND P.FIS_JUR = 'F�sica' -- SEGUNDO GABI SOMENTE PESSOA F�SICA..
    and T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao = 'Mensalidade')
--    and t.codigo in(1,4,9,10,11,14,15,16,18,21,23,26)

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
    '' motivo

 
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
   

update #dmed set lg_ir = 0 where lg_ir is null


UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'SOLICITOU RECIBO DE IR' FROM RECIBOIR_CONTRATANTE R WHERE R.CD_CONTRATANTE = #DMED.CD_CONTRATANTE AND R.ANO IN(2010,2011,2012)

UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'CONTRATANTE NOVO' WHERE YEAR(DT_INCLUSAO_CONTRAT) >= 2012 and LG_PODE_ALTERAR = 'S'

-- PROBLEMAS DE ARREDONDAMENTO SQL SEVER (2013 PRECISOU)

DELETE FROM #DMED WHERE VALOR_PAGO <= 0.05

select sum(valor_pago) from #DMED where DSTPDOCUMENTO <> 'MENSALIDADE' AND LG_PODE_ALTERAR = 'N'

select sum(valor_pago) from #DMED where  LG_PODE_ALTERAR = 'N'

-- ENVIA TODA AS MENSALIDADES
insert into contrat_dmed select 2012,codigo_contratante,'M',SUM(valor_pago), 'TODAS AS MENSALIDADES' from #DMED where DSTPDOCUMENTO = 'MENSALIDADE' GROUP BY Codigo_Contratante

-- ENVIA TODOS ORC QUE OU S�O NOVOS OU QUE SOLICITARAM IR
insert into contrat_dmed select 2012,codigo_contratante,'O',SUM(valor_pago), 'CONTRAT NOVOS OU QUE SOLICITOU IR' FROM #DMED where DSTPDOCUMENTO <> 'MENSALIDADE' AND LG_PODE_ALTERAR = 'N' GROUP BY Codigo_Contratante

-- INSERIU NA MAO ESCOLHIDOS OS 3 MAIORES

INSERT INTO CONTRAT_DMED VALUES (2012,5071,'O',8591.35,'UM DOS 3 MAIORES ORCAMENTOS')
INSERT INTO CONTRAT_DMED VALUES (2012,22337,'O',8142.31,'UM DOS 3 MAIORES ORCAMENTOS')
INSERT INTO CONTRAT_DMED VALUES (2012,17923,'O',7499.98,'UM DOS 3 MAIORES ORCAMENTOS')
/*
INSERT INTO CONTRAT_DMED VALUES (2012,5071,'O',9243.51,'UM DOS 3 MAIORES ORCAMENTOS')
INSERT INTO CONTRAT_DMED VALUES (2012,22337,'O',8142.31,'UM DOS 3 MAIORES ORCAMENTOS')
INSERT INTO CONTRAT_DMED VALUES (2012,17923,'O',7499.98,'UM DOS 3 MAIORES ORCAMENTOS')
select * from #DMED where Codigo_Contratante = 16412
5071	9243,5053
17923	8692,1483
22337	8142,31
*/
SELECT SUM(VALOR) FROM  CONTRAT_DMED WHERE ANO = 2012


--- lista por tipo de documento para analise
SELECT MOTIVO,DSTPDOCUMENTO, replace(str(SUM(VALOR_PAGO),10,2),'.',',') vr_pago FROM #DMED WHERE LG_PODE_ALTERAR = 'N' group by DSTPDOCUMENTO,motivo order by 1,2



-- LISTA AGRUPADO POR MENSALIDADE/ORCAMENTO
SELECT TIPO, replace(str(SUM(VALOR_PAGO),10,2),'.',',') vr_pago FROM #DMED  GROUP BY TIPO

--SELECT TIPO, replace(str(SUM(VALOR_PAGO),10,2),'.',',')  vr_pago FROM #DMED WHERE LG_PODE_ALTERAR = 'N'  GROUP BY TIPO



--SELECT TOP 10 * FROM #DMED SELECT DISTINCT DSTPDOCUMENTO FROM #DMED

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