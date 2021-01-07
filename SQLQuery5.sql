alter procedure sp_relComissaoUsuario

@dtPagIni char (10),
@dtPagFim char (10),
@nrParcIni int,
@nrParcFim int,
@cdRepresentante int,
@tpPessoa char(1),
@dtVendaIni char (10),
@dtVendaFim char (10)


as

declare @vrDesc as money 
declare @vrDescUnit as money 
declare @vrDescUsu as money  

set dateformat dmy

select 
  identity(int,1,1)  as indice,
  empresa,
  u.codigo,
  u.digito,
  u.nome,
  u.dt_venda data_inclusao,
  m.valor valor_mensalidade, 
  v.codigo as codigo_vendedor,
  v.nome as nome_vendedor,
  vr.codigo as codigo_representante,
  vr.nome as nome_representante,
  r.numero_titulo,
  r.data_pagamento,
  r.data_vencimento,
  case empresa when 0 then datediff(month,u.dt_venda,r.Data_Vencimento) + 1 -- se for pf sempre considera a parcela referente ao vencimento o mes subsequente
  else -- se for pj e o dia de inclusao for <= 21 prevalece a regra de pf, caso contrário considera a parecela referente ao vencimento 2 meses subsequente
  case when datepart(day,u.dt_venda) <= 21 then  datediff(month,u.dt_venda,r.Data_Vencimento) + 1 else datediff(month,u.dt_venda,r.Data_Vencimento) end
   end parcela,
   c.desc_boleto
   

into #temp 

from
  contratante c,
  usuario u,
  receber r,
  mensalidade_usuario m,
  vendedor v,
  representante vr

where
--  u.dt_venda between '01/01/2014' and '31/01/2014' and
  u.vendedor = v.codigo
  and v.representante = vr.codigo
  and m.cd_usuario =u.codigo
  and dg_usuario = u.digito
  and c.codigo = u.contratante_titular
  AND R.DESDOBRAMENTO = 'M'
  and  u.contratante_titular = r.codigo_contratante
  and tipo_documento = 1
  and r.data_vencimento between m.dtinicio and m.dtfim
 
  
  and (vr.codigo = @cdRepresentante or @cdRepresentante = 0)  --representante
 
-- ********  pessoa fisica  
  and (--a
  (  -- b
  empresa = 0  and 

  r.data_vencimento between 
  -- pega o dia 01 do mês correspondente à parcela Inicial . Ex: se a parcela inicial for 2 e a data de inclusao do benef for 10/02/2015, pega 01/03/2015 pois é nesse mes que vence a segunda parcela do beneficiário
  convert(datetime,'01/' + cast(datepart(month,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103)
  and
  -- pega o ultimo dia do mês corresopndente à parcela final. Exemplo se a parcela final for 3 e a data de inclusão do benef fo 10/02/2015 , pega 30/04/2015 pois é nesse mes que vence a terceira parcela
  dateadd(day,-1,'01/' + cast(datepart(month,dateadd(month,@nrParcFim,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcFim,u.dt_venda)) as varchar(4)))

  ) -- b
  or
  (-- c
  empresa = 1 and
 ( -- d
 (datepart(day,u.dt_venda) <= 21 


and r.data_vencimento between
  -- PJ : quando a data de inclusao foi menor ou igual a 21 prevalece a regra de pessoa física
  convert(datetime,'01/' + cast(datepart(month,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103)
  and
  
  dateadd(day,-1,'01/' + cast(datepart(month,dateadd(month,@nrParcFim,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcFim,u.dt_venda)) as varchar(4))))  

  OR
 (-- e
 datepart(day,u.dt_venda) > 21 


and r.data_vencimento between
  -- PJ : se a data for superior a 21 a mensalidade referente à segunda parcela por exemplo é a de dois meses seguinte, exemplo se o beneficiario entrou dia 22/01/2015 a segunda parcela terá vencimento entre 01/03/2015 e 31/03/2015
  convert(datetime,'01/' + cast(datepart(month,dateadd(month,@nrParcIni ,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcIni ,u.dt_venda)) as varchar(4)),103)
  and
  
  dateadd(day,-1,'01/' + cast(datepart(month,dateadd(month,@nrParcFim + 1,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcFim + 1,u.dt_venda)) as varchar(4)))
  )-- e
  
  )--d

  ) -- c
   )-- a                                                   -- primeiro dia correspondente à parcela inicial . Idem acima.
  and (u.data_exclusao is null or u.data_exclusao >=  convert(datetime,'01/' + cast(datepart(month,dateadd(month,@nrParcIni ,u.dt_venda)) as varchar(2)) + '/' + cast(datepart(year,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103))

  and data_pagamento between @dtPagIni  and @dtPagFim
  and u.dt_venda between @dtVendaIni and @dtVendaFim
 

order by
  vr.codigo,
  v.codigo,
  u.codigo,
  u.digito,
  parcela


if  @tpPessoa = 'F'
  delete #temp where empresa = 1
  else if @tpPessoa = 'J'
    delete #temp where empresa = 0


declare @indice as int
declare @codigo as int
declare @digito as int
declare @dtAtual char(10)
declare @lgAchou char(1)
declare @cdCompleto as int
declare @descBoleto as decimal(7,2)
set @lgAchou = 'N'
set @dtAtual = convert(char(10),getdate(),103)
declare cs cursor for select indice,codigo,digito,desc_boleto from #temp

open cs
FETCH NEXT FROM cs INTO @indice,@codigo,@digito,@descBoleto
WHILE @@FETCH_STATUS = 0
begin
   set @cdCompleto =  cast(@codigo as varchar(10)) + cast(@digito as varchar(2)) 
   
   exec SpCalculaDesconto @codigo,@cdCompleto,@dtAtual, @vrDesc output, @vrDescUnit output,@vrDescUsu output 
   if @descBoleto is null
      set @descBoleto = 0
   if @vrDescUsu is not null
   begin
     update #temp set valor_mensalidade = (valor_mensalidade - @vrDescUsu) - (valor_mensalidade - @vrDescUsu) * (@descBoleto / 100)   where indice = @indice
	  
	  set @lgAchou = 'S'
	end
   FETCH NEXT FROM cs INTO @indice,@codigo,@digito,@descBoleto
end
print @lgachou
close cs
deallocate cs


select * from #temp

