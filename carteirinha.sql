
--drop table itens_emissao_carteirinha drop table emissao_carteirinha
--SELECT  * FROM emissao_carteirinha
create table emissao_carteirinha
(cd_emissao int not null primary key,
 cd_contratante int not null,
 cd_operador varchar(20) not null,
 dt_inclusao datetime not null,
 dt_geracao datetime , 
 nm_recepcao varchar(50)
)

create table itens_emissao_carteirinha
(
 cd_emissao int not null,
 cd_usuario int not null,
 constraint pk_i_emissao_cart primary key (cd_emissao,cd_usuario),
 constraint fk_i_emissao_emissao foreign key (cd_emissao) references emissao_carteirinha (cd_emissao)
)