--drop table itens_lote_rps drop table lote_rps
create table lote_rps
(nr_lote int primary key,
 dt_emissao datetime not null,
 mesAno  char(7) not null,
 nm_operador varchar(20) not null,
 status char(1) not null
 )

 go

 create table itens_lote_rps
 (nr_lote int not null,  
  cd_contratante  int not null,
  valor  money not null,
  constraint pk_itens_lote_rps primary key (nr_lote,cd_contratante),
  constraint fk_lote_rps foreign key (nr_lote) references lote_rps (nr_lote)

  )

go
create table temp_rps
(
 sessao int,
 cd_contratante int,
 nm_contratante varchar(100),
 valor money,
 flag  bit)


 go

 create procedure sp_geraTempRPS
@dtIni  char(10),
@dtFim  Char(10)

as

SET DATEFORMAT DMY 

declare @sessaoAux int
set @sessaoAux = (select isnull(max(sessao),0) + 1 from temp_rps)

delete temp_rps where sessao = @sessaoAux

insert into temp_rps 
select  
    @sessaoAux,
	c.Codigo cd_contratante, 
	c.Nome nm_contratante, 
	sum(r.valor) as valor,
	0

 from Receber r
inner join Contratante c on c.Codigo = r.Codigo_Contratante

where Numero_Titulo <> ''
and Data_Pagamento between @dtIni and @dtFim + ' 23:59'

group by c.codigo,c.nome
order by r.valor desc


go

create procedure sp_geraLoteRPS
@sessao int,
@mesAno char(7),
@nmLogin varchar(20)


as
declare @nrLoteRPS int 

SET DATEFORMAT DMY 


begin tran

   set @nrLoteRPS = (select isnull(max(nr_lote),0) + 1 from lote_rps)

   insert into lote_rps(nr_lote,dt_emissao ,mesAno,nm_operador,status) values (@nrLoteRPS,getdate(),@mesAno,@nmLogin,'P')

   insert into itens_lote_rps select @nrLoteRPS, cd_contratante, valor  from temp_rps where sessao = @sessao and flag = 1
   
   delete temp_rps where sessao = @sessao

commit

select @nrloterps as nrLoteRps

go

--select * from   itens_lote_rps  delete lote_rps select * from lote_rps