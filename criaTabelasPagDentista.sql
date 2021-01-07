select * from Servicos
--alter table servicos add QtdeUs decimal(9,2)

create table tabela_qtUS(
cd_tabela int not null,
ds_tabela varchar(40) not null,
dt_criacao datetime not null,
dt_cancelamento datetime,
constraint pk_tabelaQtUS primary key (cd_tabela)
)


create table servico_tabela_qtUS
(cd_tabela int not null,
 cd_servico int not null,
 qt_us decimal(9,2) not null,
  
 constraint pkServico_qtUS primary key  (cd_tabela,cd_servico),
 constraint fkServico_qtUS foreign key (cd_tabela) references tabela_qtUS(cd_tabela),
 constraint fkServico_servico foreign key (cd_servico) references servicos(codigo),
 )
-- drop table dentistaXVrcateg
--select * from dentistaXVrcateg
create table dentistaXVrcateg
(
cd_tabela int not null,
cd_tabelaQtus int not null,
cd_dentista int not null,
cd_categoria int not null,
vrUs decimal(8,6) not null,
dt_inicio datetime not null,
dt_fim datetime,
constraint pkDentistaVrCateg primary key (cd_tabela),
constraint fkDentista foreign key (cd_dentista) references dentista(codigo),
constraint fkCategoria foreign key (cd_categoria) references categoria(codigo_categoria),
constraint fkDentisatxCategTAbelaUS foreign key (cd_tabelaQTus) references tabela_qtUS (cd_tabela)
)



