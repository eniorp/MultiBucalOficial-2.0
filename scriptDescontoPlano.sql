
insert   Acrescimo_Inclusao values (0,1,0,'01/01/1901','01/01/1901')
insert into parametro select 'IDAID', id_acrescimo, 'Indice da tabela Acrescimo_inclusao referente ao Desconto de planos','I','INTERNO',getdate() from Acrescimo_Inclusao where plano = 0 and dias = 1
--select * from parametro where cd_parametro = 'IDAID'

-- drop table PromocaoPlanomm
commit
create table PromocaoPlano
(id_promocao int primary key,
 cd_plano  int not null,
 dt_ini_vigencia datetime not null,
 dt_fim_vigencia datetime null,
 qt_meses int not null,
 percent_desconto decimal(5,3) not null,
 constraint fk_PromocaoXPlano foreign key (cd_plano) references plano(codigo)
 )
 

 go
 
 create unique index ix_cdPlanoDtVig on PromocaoPlano (cd_plano,dt_ini_vigencia)
 go
 
 sp_helptext Tr_i_incluiMensalidade