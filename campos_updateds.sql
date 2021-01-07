alter table Itens_PagDentista add updated datetime
go

create trigger tr_i_u_updated on Itens_PagDentista

for insert, update


as
 
IF UPDATE(UPDATED) OR EXISTS(SELECT * FROM inserted WHERE UPDATED IS NULL)

BEGIN
  
 update  Itens_PagDentista set updated = GETDATE()
   
   from inserted I
   
   where i.Orcamento  = Itens_PagDentista.Orcamento
     and i.Incremento = Itens_PagDentista.Incremento
     
END
go

--tb Itens_PagDentista     

alter table Dentista add updated datetime
go
alter table endereco_x_dentista add updated datetime

go

create trigger tr_i_u_DentistaUpdated on dentista
for insert, update

as

if not update(updated) OR EXISTS(SELECT * FROM inserted WHERE UPDATED IS NULL)
BEGIN

update dentista set updated = getdate()

from inserted i

where i.Codigo = dentista.Codigo
END

go

create trigger tr_i_u_endereco_x_dentistaUpdated on  endereco_x_dentista

for insert, update

as

if not update(updated) OR EXISTS(SELECT * FROM inserted WHERE UPDATED IS NULL)

update endereco_x_dentista set updated = getdate()

from inserted i

where     i.cd_dentista = endereco_x_dentista.cd_dentista
      and i.ds_endereco = endereco_x_dentista.ds_endereco
      
      


go
 alter table mensalidade_usuario add updated datetime
 
go

create trigger tr_i_mensalidade_usuarioUpdated on  mensalidade_usuario

for insert

as

if not update(updated)

update mensalidade_usuario set updated = getdate()

from inserted i

where     i.cd_usuario = mensalidade_usuario.cd_usuario
      and i.dg_usuario = mensalidade_usuario.dg_usuario
      and i.id_acrescimo = mensalidade_usuario.id_acrescimo      
 

GO
ALTER Procedure SpProcessaAumentoMens

-- Esta procedure foi alterada em 19/12/2005, agora a data de referencia é para o aumento é 
-- a data de inclusão do contratante titular e não mais a data de inclusão do usuário
-- foi mantida a tela anterior com a tabela mensalidade_usuario_dt_usu para consulta, 
-- pois todos os aumentos foram reprocessados com a data do contratante.
-- a procedure original foi mantida em SpProcessaAumentoMensDt_ini_usuario -- Enio

--Declare

@id_acrescimo int

--set @id_acrescimo = 39

as

declare @dias    int,
	@Percent decimal(10,4), 
	@plano	 int	     ,
	@Data_Aumento Datetime


-- Pega o percentual de aumento, qtde de dias que é para dar aumento(quem tem x dias de inclusao)
-- e o codigo do plano

set dateformat dmy

select 
	@dias 	      = dias		,
	@Percent      = Percentual / 100,
	@plano	      = plano	        ,
	@Data_Aumento = Data_Aumento

from Acrescimo_inclusao where id_acrescimo = @id_acrescimo


begin tran


-- Aumenta o plano e coloca a data como a data de aumento como a data atual

   update preco_plano set valor = valor + round((valor * @percent),2),
          data = getdate()

   where codigo_plano = @plano

-- Salva o valor atual para os usuários do plano que está sofrendo aumento

select  mu.*,
        c.inclusao as DtContrat,
        u.data_inclusao as inclusaoUsu

into 
	#mensalidade_usuario

from 
	mensalidade_usuario mu,
	usuario		    u ,
	contratante	    c

where
	    mu.cd_usuario   = u.codigo
	and mu.dg_usuario   = u.digito		
	and c.codigo	    = u.contratante_titular
	and c.plano	    = @plano
--	and c.exclusao 	    is null
--	and u.data_exclusao is null
        and u.data_inclusao < @data_aumento
	-- pega o registro de maior id_acrescimo(ultimo aumento dado)
	and id_acrescimo    = (select max(id_acrescimo) from mensalidade_usuario mu1
				where
					    mu1.cd_usuario   = mu.cd_usuario
					and mu1.dg_usuario   = mu.dg_usuario)
			
-- Coloca a data inclusão do usuário = data inclusão do contratante

-- Coloca a data inclusão do usuário = data inclusão do contratante, quando a data inicio da 
-- tabela mensalidade for igual a data de inclusão do usuário

update #mensalidade_usuario set dtinicio = DtContrat where inclusaoUsu >= dtInicio


-- Verifica se existe dois valores para um unico usuario

if exists
(select cd_usuario, dg_usuario 
 from #mensalidade_usuario 
 group by cd_usuario, dg_usuario having count(*) > 1)
begin
   raiserror('Existe mais de um valor de mensalidades para um ou mais usuário, aumento não realizado,',16,1)
   rollback tran
   return -- interrompe a procedure
end

-- Atualiza os campos data inicio e valor da temp

update #mensalidade_usuario 

set DtInicio = dateadd(dd,@dias,dtinicio),
    VrBruto   = VrBruto + round((VrBruto * @percent),2)

-- Aplica o desconto se houver..

update #mensalidade_usuario

set valor = VrBruto * (1 - (isnull(perc_desconto,0) / 100))

from contratante c

where c.codigo = cd_usuario -- associação correta dúvidas recorrer a procedure AchaValorSeato no programa



-- Se a data fim for menor que a data do aumento então o aumento vale a partir da data do aumento
-- alterado em 15/10/2004
-- para id acrescimo > que zero

update #mensalidade_usuario 

set Dtinicio = @Data_Aumento

where DtInicio < @Data_Aumento and id_acrescimo > 0

-- para id acrescimo = zero coloca a data de inclusao do usuario, pois o registro zero da tabela mensalidade usuario deve comecar
-- com data inicio igual a data de inclusao do usuario

update #mensalidade_usuario 

set Dtinicio = @Data_Aumento
from usuario u

where    DtInicio < @Data_Aumento 
     and #mensalidade_usuario.cd_usuario = u.codigo
     and #mensalidade_usuario.dg_usuario = u.digito
     and #mensalidade_usuario.id_acrescimo = 0

--update #mensalidade_usuario

--set DtInicio = @Data_Aumento --convert(char(10),getdate(),103)

--where DtInicio < @Data_Aumento--getdate()

-- Insere nova mensalidade para os usuarios 

insert into mensalidade_usuario

select 
	cd_usuario	, 
	dg_usuario	, 
	@id_acrescimo	, 
	dtinicio	, 
	'01/01/2079'	,
	valor 		,
	VrBruto,
	GETDATE()

from #mensalidade_usuario

--  Atualiza a data fim do registro atual pra a data inicio do novo registro menos um dia

update mensalidade_usuario

set dtFim = mu.DtInicio - 1

from #mensalidade_usuario mu

where     mu.cd_usuario   = mensalidade_usuario.cd_usuario
      and mu.dg_usuario   = mensalidade_usuario.dg_usuario
 and mu.id_acrescimo = mensalidade_usuario.id_acrescimo


-- Atualiza o valor dos usuarios que tem data de inclusão superior a data do aumento

update mensalidade_usuario

set valor = valor + round((valor * @percent),2)

from usuario u,
     contratante c

where 

          u.codigo        =  cd_usuario 
      and u.digito        =  dg_usuario      
      and c.codigo	  =  u.contratante_titular
      and c.inclusao      >= @data_aumento
      and c.plano	  =  @plano


commit




GO
--select MAX(numero) from orcamento where orcamento.Autorizado = 1 AND NUMERO < 148708

--SELECT * FROM Itens_PagDentista WHERE ORCAMENTO = 148707
SELECT * FROM endereco_x_dentista WHERE cd_dentista = 234
DELETE Dentista WHERE CODIGO = 1149
UPDATE #T SET Codigo = 1149
INSERT INTO DENTISTA SELECT * FROM #T
SELECT * FROM mensalidade_usuario WHERE UPDATED IS NOT NULL

