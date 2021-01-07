--2015
alter PROCEDURE SP_GERA_DMED_REG_TOP --SP_GERA_DMED_REG_TOP '01/01/2014','31/12/2014'

--DECLARE

@DTINI CHAR(10),
@DTFIM CHAR(10)

AS


-- DROP TABLE #DMED DROP TABLE #BOSS  DROP TABLE #RESULT DROP TABLE #DMEDAUX
--SET @DTINI = '01/01/2014'
--SET @DTFIM = '31/12/2014'

SET DATEFORMAT DMY
DECLARE @ANO INT
SET @ANO = SUBSTRING(@DTINI,7,4)

SELECT  

    C.NOME AS NM_CONTRATANTE,
    C.CGC_CPF,
    convert(datetime,NULL) DT_NASCIMENTO, -- CONTRATANTE NAO TEM DT DE NASCIMENTO MAS NO REGISTRO TOP DO DMED NAO PRECISA DE DATA DE NASCIMENTO, T� AKI PARA COMPATIBILIDADE NO UNION
	R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    CAST(0 AS INT) QTUSU,
    CAST(0 AS SMALLMONEY) VRUNIT,
    R.ORCAMENTO,    
    C.CODIGO,
    C.CODIGO AS CD_CONTRATANTE,
    'M' TIPO,
    C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CPF
    CAST(0 AS INT) CD_TITULAR, -- NAO SE APLICA AKI, SOMENTE NO SELECT DE UNION
    'A' AS LG_TITULAR -- A TITULAR, B DEPENDENTE. COMO T� FAZENDO UNION DA CONTRATANTE(MENSAILDADES) COM USUARIO(OR�AMENTOS E MANUTEN��O)
                   -- DEFINE QUE OS REGISTROS DE MENSALIDADE DO CONTRATANTE S�O DO TITULAR, E OR�AMENTOS E MANUTEN��ES , DEPENDE DO GRAU
                   -- A GABI DEFINIU QUE PARAA MENSALIDADE MANDA TUDO NO NOME DO TITULAR, E PARA MANUTEN��O E OR�AMENTOS MANDA
                   -- NO NOME DE QUEM FEZ, SE FOR  TITULAR MANDA PARA O TITULAR(REGISTRO TOP DO DMED) E SE FOR DEPENDENTE MANDA PARA DEPENDETE(REGISTRO DTOP DO DMED)
    ,'S' LG_PODE_ALTERAR,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
	CAST('MENSALIDADE' AS VARCHAR(50)) MOTIVO,
	CAST(NULL AS BIT) lg_ir

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
    --AND P.FIS_JUR = 'F�sica' -- SEGUNDO GABI SOMENTE PESSOA F�SICA..
    AND C.empresa = 0 -- ALTERADO FILTRO DO PLANO PARA O CONTRATANTE PARA FICAR IGUAL RELATORIO 08 (19/03/2012)
    --AND T.CODIGO = 1 -- MENSALIDADE
--  AND T.CODIGO IN (1,4, 9,10,11,14,15,16,18,21,23,26)    
    and T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao = 'Mensalidade')
    


INSERT INTO #DMED

SELECT  
    U.NOME AS NM_CONTRATANTE,
    U.CPF as CGC_CPF,
    U.DATA_NASCIMENTO AS DT_NASCIMENTO,
	R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    CAST(0 AS INT) QTUSU,
    CAST(0 AS SMALLMONEY) VRUNIT,
    R.ORCAMENTO,
    U.CODIGO_COMPLETO CODIGO,
    U.CODIGO AS CD_CONTRATANTE,
    'O' TIPO,
	C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CPF
    CAST(0 AS INT) CD_TITULAR,
    CASE U.GRAU_PARENTESCO WHEN 1 THEN 'A' ELSE 'B' END AS LG_TITULAR
    ,'S' LG_PODE_ALTERAR,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
	'' MOTIVO,
	O.lg_ir


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

INNER JOIN ORCAMENTO O --- so para ficar compat�vel com o script retira_orc_dmed.sql, pois no script precisa saber se solicitou ou nao DMED
ON
  O.NUMERO = R.ORCAMENTO --TB ORCAMENTO

WHERE 
	        
	    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM
	AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO MES..
    --AND FIS_JUR = 'F�sica' -- SEGUNDO GABI OR�AMENTOS MANUT � O BENEF. QUE PAGA, INT�O N�O VERIFICA SE � PJ OU PF
				   
    AND T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao <> 'Mensalidade')    -- orc. e manut)    

--update #dmed set lg_ir = 0 where lg_ir is null


UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'SOLICITOU RECIBO DE IR' FROM RECIBOIR_CONTRATANTE R WHERE R.CD_CONTRATANTE = #DMED.CD_CONTRATANTE AND R.ANO IN(2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020)

UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'CONTRATANTE NOVO' WHERE YEAR(DT_INCLUSAO_CONTRAT) >= 2014 and LG_PODE_ALTERAR = 'S'




if (select codigo from Empresa) = 1
begin
-- DELETA OS REGISTROS QUE N�O EST�O NAS REGRAS DE (SER MENSALIDADES ,SOLICITOU RECIBO IR, CONTRATANTE NOVO) E INCLUI OS REGISTOS QUE A GABI SELECIONOU DE AMARELO NA PLANILHA
delete #dmed where LG_PODE_ALTERAR = 'S' AND TIPO <> 'M'

INSERT INTO #DMED

SELECT  
    U.NOME AS NM_CONTRATANTE,
    U.CPF as CGC_CPF,
    U.DATA_NASCIMENTO AS DT_NASCIMENTO,
	R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    CAST(0 AS INT) QTUSU,
    CAST(0 AS SMALLMONEY) VRUNIT,
    R.ORCAMENTO,
    U.CODIGO_COMPLETO CODIGO,
    U.CODIGO AS CD_CONTRATANTE,
    'O' TIPO,
	C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CPF
    CAST(0 AS INT) CD_TITULAR,
    CASE U.GRAU_PARENTESCO WHEN 1 THEN 'A' ELSE 'B' END AS LG_TITULAR
    ,'S' LG_PODE_ALTERAR,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
	'SELECAO ORC GABI'

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

INNER JOIN ORCAMENTO O --- so para ficar compat�vel com o script retira_orc_dmed.sql, pois no script precisa saber se solicitou ou nao DMED
ON
  O.NUMERO = R.ORCAMENTO --TB ORCAMENTO

WHERE 
	        
	    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM
	AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO MES..
    --AND FIS_JUR = 'F�sica' -- SEGUNDO GABI OR�AMENTOS MANUT � O BENEF. QUE PAGA, INT�O N�O VERIFICA SE � PJ OU PF
				   
    AND T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao <> 'Mensalidade')    -- orc. e manut)    

	and c.codigo IN
(1500,2934,3540,4472,4626,4963,5297,5474,5905,5995,6403,7804,7988,7988,8156,8501,10973,11174,11960,12664,12995,13055,13914,15013,15579,15601,15989,16904,17041,17339,17497,17517,17592,17852,17958,18006,18298,18568,18599,18895,18989,19057,19231,19384,20031,20189,20365,21381,21653,21657,21792,21792,21834,21870,22193,22210,22331,22792,22989,23129,23516,23873,24132,24265,24471,24600,24644,24741,24935,25004,25299,25408,25471,25527,25613,25614,25651,25969,26243,26327,26348,26358,26399,26473,26631,26669,26814,26906,27007,27049,27049,27108,27238,27308,27311,27319,27445,27446,27450,27456,27495,27612,27656,27665,27668,27696,27771,27819,27830,27885,27927,28043)
and T.DESCRICAO = 'ORCAMENTO'



INSERT INTO #DMED

SELECT  
    U.NOME AS NM_CONTRATANTE,
    U.CPF as CGC_CPF,
    U.DATA_NASCIMENTO AS DT_NASCIMENTO,
	R.TIPO_DOCUMENTO,
    T.DESCRICAO AS DSTPDOCUMENTO,
	R.VALOR_PAGO, 
	R.DATA_PAGAMENTO ,
	R.CODIGO_CONTRATANTE,
	R.CODIGO_USUARIO, 
	ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,
    CAST(0 AS INT) QTUSU,
    CAST(0 AS SMALLMONEY) VRUNIT,
    R.ORCAMENTO,
    U.CODIGO_COMPLETO CODIGO,
    U.CODIGO AS CD_CONTRATANTE,
    'O' TIPO,
	C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CPF
    CAST(0 AS INT) CD_TITULAR,
    CASE U.GRAU_PARENTESCO WHEN 1 THEN 'A' ELSE 'B' END AS LG_TITULAR
    ,'S' LG_PODE_ALTERAR,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
	'SELECAO MANUT GABI'
    

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

INNER JOIN ORCAMENTO O --- so para ficar compat�vel com o script retira_orc_dmed.sql, pois no script precisa saber se solicitou ou nao DMED
ON
  O.NUMERO = R.ORCAMENTO --TB ORCAMENTO

WHERE 
	        
	    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM
	AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO MES..
    --AND FIS_JUR = 'F�sica' -- SEGUNDO GABI OR�AMENTOS MANUT � O BENEF. QUE PAGA, INT�O N�O VERIFICA SE � PJ OU PF
				   
    AND T.CODIGO IN(select CODIGO from TipoDocumento where Classificacao <> 'Mensalidade')    -- orc. e manut)    
	and c.codigo IN
(22484,
24598,
25310,
26176)


and T.DESCRICAO = 'MANUTENCAO'

DELETE #DMED WHERE CD_CONTRATANTE IN(13055,27819,24644,25310,18298,7804,24598,26669,24265,17041,4963,12995,26176) AND TIPO <> 'M'
update #DMED set valor_pago = valor_pago - 333.62 WHERE CD_CONTRATANTE = 3540 and valor_pago = 700

end --if (select codigo from Empresa) = 1

-- ATUALIZA A DT DE NASCIMENTO PARA FAZER GROUP BY COM REGISTROS DE OR�AMENTO E MANUT.

UPDATE #DMED SET  #DMED.DT_NASCIMENTO = U.DATA_NASCIMENTO FROM USUARIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENTESCO = 1 
AND SUBSTRING(#DMED .NM_CONTRATANTE,1,3) = SUBSTRING(U.NOME,1,3)


if (select codigo from Empresa) <> 1
BEGIN
   UPDATE #DMED SET LG_PODE_ALTERAR = 'N', MOTIVO = 'INFORMOU IR NO ORCAMENTO' WHERE lg_ir = 1 and LG_PODE_ALTERAR = 'S'

   select * into #dmedAux from #dmed where cd_contratante = 7355 and nm_contratante = 'CARLA APARECIDA DA SILVA' and motivo = 'CONTRATANTE NOVO'                 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 7355 and nm_contratante = 'LEONARDO DONIZETE DA SILVA FUNCHO' and motivo = 'CONTRATANTE NOVO'		 and tipo <> 'M' 
   --insert into #dmedAux select *  from #dmed where cd_contratante = 7355 and nm_contratante = 'LEONARDO DONIZETE DA SILVA FUNCHO' and motivo = 'CONTRATANTE NOVO'		 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 6349 and nm_contratante = 'MARCIA MITUE OKANO MARQUES' and motivo = 'INFORMOU IR NO ORCAMENTO'		 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 6117 and nm_contratante = 'CECILIA TALAVERA' and motivo = 'INFORMOU IR NO ORCAMENTO'				 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 5863 and nm_contratante = 'LEONARDO WENDER DE SOUZA GOMES' and motivo = 'INFORMOU IR NO ORCAMENTO'	 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 7285 and nm_contratante = 'TIPHANNY VICENTE DA SILVA' and motivo = 'INFORMOU IR NO ORCAMENTO'		 and tipo <> 'M' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 7102 and nm_contratante = 'CAMILA FATIMA MALAGUTTI DE SOUZA' and motivo = 'INFORMOU IR NO ORCAMENTO' and tipo <> 'M'
   insert into #dmedAux select *  from #dmed where cd_contratante = 7172 and nm_contratante = 'NEIVA APARECIDA ALIOTTO DE PADUA' and motivo = 'INFORMOU IR NO ORCAMENTO' and tipo <> 'M'

   update #dmedAux set motivo = 'SELECAO GABI 1' 
   insert into #dmedAux select *  from #dmed where cd_contratante = 1827 and nm_contratante = 'MONICA IVONE BARBOSA LIMA RAMOS' and dstpdocumento = 'ORCAMENTO' and tipo <> 'M'
   insert into #dmedAux select *  from #dmed where cd_contratante = 1827 and nm_contratante = 'MONICA IVONE BARBOSA LIMA RAMOS' and dstpdocumento = 'MANUTENCAO' and tipo <> 'M'
   update #dmedAux set motivo = 'SELECAO GABI 2'  where motivo <> 'SELECAO GABI 1'

   delete #dmed where MOTIVO <> 'SOLICITOU RECIBO DE IR' and dstpdocumento <> 'MENSALIDADE'
   insert into #dmed select * from #dmedAux
  
  -- select cd_contratante,sum(valor_pago) from #dmedaux group by cd_contratante
END	
	
	
				   

-- GRAVA O CODIGO DO TITULAR QUANDO FOR DEPENDENTE, DEPOIS VERIFICA SE O TITULAR EXISTE NO #DMED, SE NAO EXISTE INCLUI O TITULAR
UPDATE #DMED SET  #DMED.CD_TITULAR = U.CODIGO_COMPLETO FROM USUARIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENTESCO = 1 AND #DMED.LG_TITULAR = 'B'
--aqui..

INSERT INTO #DMED

SELECT  DISTINCT
    U.NOME AS NM_CONTRATANTE,
    U.CPF as CGC_CPF,
    U.DATA_NASCIMENTO AS DT_NASCIMENTO,
	1,
    'MENSALIDADE',
	0.00, 
	NULL ,
	NULL,
	U.CODIGO_COMPLETO, 
	NULL,
    CAST(0 AS INT) QTUSU,
    CAST(0 AS SMALLMONEY) VRUNIT,
    NULL,
    U.CODIGO_COMPLETO CODIGO,
    U.CODIGO,
    'M',
	C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CPF
    CAST(0 AS INT) CD_TITULAR,
    'A' AS LG_TITULAR
    ,'N' LG_PODE_ALTERAR,
    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,
	'INC TIT ZERADO',
	0
    

FROM 

	USUARIO U, 
	CONTRATANTE C,
    #DMED D

WHERE

         U.CODIGO = C.CODIGO
     AND D.CD_TITULAR = U.CODIGO_COMPLETO
AND NOT EXISTS(SELECT * FROM #DMED D WHERE LG_TITULAR = 'B' AND D.CODIGO = U.CODIGO_COMPLETO AND D.CD_TITULAR > 0)


UPDATE #DMED SET CGC_CPF = NULL WHERE CGC_CPF = ''
UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'-','') WHERE CGC_CPF LIKE '%-%'
UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'.','') WHERE CGC_CPF LIKE '%.%'
UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'/','') WHERE CGC_CPF LIKE '%/%'

UPDATE #DMED SET CPF_ORDENACAO = NULL WHERE CPF_ORDENACAO = ''
UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'-','') WHERE CPF_ORDENACAO LIKE '%-%'
UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'.','') WHERE CPF_ORDENACAO LIKE '%.%'
UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'/','') WHERE CPF_ORDENACAO LIKE '%/%'
UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,' ','') WHERE CPF_ORDENACAO LIKE '% %'


-- COISAS DO SQL TIVE QUE CRIAR UMA OTURA #TEMP POR DA PAU NA MESMA
SELECT * INTO #BOSS FROM #DMED

-- ATUALIZA A DATA DE NASCIMENTO QUANDO NULL OU DIFERENTE..

UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO 

FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A.CGC_CPF = #DMED.CGC_CPF
AND A.DT_NASCIMENTO IS NOT NULL 
AND  #DMED.DT_NASCIMENTO IS NULL 

UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO 

FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A.CGC_CPF = #DMED.CGC_CPF
AND A.DT_NASCIMENTO <> #DMED.DT_NASCIMENTO
AND A.DT_NASCIMENTO IS NOT NULL 


-- TEVE SITUA��ES DE EXISTIR DOIS TITULARES E NA ORDENA��O SAIA FORA DA SEQUENCIA, ENTAO SE FOR TITUALR E CPC DIF ORDENACAO
-- TROCA O CPF ORDENACAO
UPDATE #DMED SET CPF_ORDENACAO = CGC_CPF WHERE  CPF_ORDENACAO <> CGC_CPF AND LG_TITULAR = 'A'


SELECT  
    IDENTITY(INT,1,1) INDICE,
    NM_CONTRATANTE,    
    CGC_CPF,
    DT_NASCIMENTO,
    LG_TITULAR,
	SUM(VALOR_PAGO) VALOR_PAGO

into #RESULT

FROM #DMED

GROUP BY

    NM_CONTRATANTE,
    CGC_CPF,
    DT_NASCIMENTO,
    LG_TITULAR,
    CAST(CPF_ORDENACAO AS DECIMAL) 

ORDER BY CAST(CPF_ORDENACAO AS DECIMAL), LG_TITULAR,CGC_CPF


--select * into #resultTemp from #RESULT
 declare @indice      int
 declare @nmContrat   as varchar(100)
 declare @cpf         as varchar(15)
 declare @dtNasc      as date
 declare @lgTitular   as char(1)
 declare @vrPago      as money
 declare @valorAux  as money
  
DECLARE csRepetidos CURSOR FOR
select * from #result
--insert into #RESULT select NM_CONTRATANTE, CGC_CPF, DT_NASCIMENTO,LG_TITULAR, VALOR_PAGO from #resultTemp

OPEN csRepetidos -- agrupa mesmo beneficiario com alguma alteracao no nome
FETCH NEXT FROM csRepetidos INTO @indice, @nmContrat, @cpf,  @dtNasc, @lgTitular, @vrPago
WHILE @@FETCH_STATUS = 0
 BEGIN
   set @valorAux = null
   select @valorAux = sum(valor_pago) from #result a where a.indice <> @indice and a.CGC_CPF = @cpf and a.LG_TITULAR = @lgTitular and substring(a.nm_contratante,1,3) = substring(@nmContrat,1,3)
   if @valorAux is not null
   begin
      update #RESULT set valor_pago = valor_pago + @valorAux where indice = @indice
     delete #result where indice <> @indice and CGC_CPF = @cpf and LG_TITULAR = @lgTitular and substring(nm_contratante,1,3) = substring(@nmContrat,1,3)
	end
   FETCH NEXT FROM csRepetidos INTO @indice, @nmContrat, @cpf,  @dtNasc, @lgTitular, @vrPago   
 END
CLOSE csRepetidos
DEALLOCATE csRepetidos


select * from #RESULT
--select * from #RESULT  a where exists( select * from #result b where a.cgc_cpf = b.cgc_cpf and a.indice <> b.indice and a.lg_titular = b.lg_titular and substring(a.nm_contratante,1,3) = substring(b.nm_contratante,1,3))

--select * from #RESULT where cgc_cpf= '02011977827'
/* para listar os cpfs repetidos
select DISTINCT A.NM_CONTRATANTE, A.CGC_CPF, CONVERT(VARCHAR(10),A.DT_NASCIMENTO,103) NASC, A.LG_TITULAR from #RESULT A, #RESULT B WHERE A.CGC_CPF = B.CGC_CPF 
AND (A.LG_TITULAR <> B.LG_TITULAR OR A.NM_CONTRATANTE <> B.NM_CONTRATANTE AND A.DT_NASCIMENTO <> B.DT_NASCIMENTO)
ORDER BY A.CGC_CPF

*/
/*
select  indice,* into #temp from #result a where 
exists (select * from #result b where b.cgc_cpf = a.cgc_cpf and LG_TITULAR <> 'B' AND A.INDICE <> B.INDICE)

select identity(int,1,1) indice, NM_CONTRATANTE,CGC_CPF, DT_NASCIMENTO, LG_TITULAR,	VALOR_PAGO 
into #cpfRepetido from #temp

declare @ini int
declare @fim int
set @ini = 1
set @fim = (select MAX(indice) from #cpfRepetido)
-- soma o valor do dependente no valor do titular(pode haver mais de um dependnete)
while @ini <= @fim
begin

   update #RESULT set #RESULT.VALOR_PAGO = #RESULT.VALOR_PAGO + b.valor_pago from #cpfRepetido b
   where b.cgc_cpf = #RESULT.cgc_cpf and #RESULT.LG_TITULAR = 'A' and b.indice = @ini
   set @ini = @ini + 1   
end

-- exclui os dependentes
delete #RESULT from #cpfRepetido b where b.cgc_cpf = #RESULT.cgc_cpf and #RESULT.LG_TITULAR = 'B'

*/



