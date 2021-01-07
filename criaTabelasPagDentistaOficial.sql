select distinct cd_tabela from servicoxqtus
--update servicoxqtus set cd_tabela = 1 where cd_tabela = 1
select * into ##dentista from Dentista where 2= 1
--drop table servico_tabela_qtUS
update dentista set cd_tabelaQTUS = d.cd_tabelaQTUS from ##dentista d where d.codigo = dentista.codigo
--drop table tabela_qtUS
--drop table dentistaXVrcateg
use mt
--select * from parametro where cd_parametro = 'UFNVPD'
update parametro set vl_parametro = 'S' where cd_parametro = 'UFNVPD'
select * from servicos where codigo = 6115
select * from Categoria where codigo = 5
insert into parametro values ('UFNVPD','S','Utiliza Formula Nova Valorização Pagto Dentista?','I','INTERNO',GETDATE())
alter table itens_orcamento add indiceTabPagDentista int 
--drop table [TabPagDentistaXCategoria]
--drop table ServicoXQtUS
--drop table TabelaQtUS

go
CREATE TABLE [dbo].[TabelaQtUS](
	[cd_tabela] [int] NOT NULL,
	[ds_tabela] [varchar](30) NOT NULL,
	[DtIni] [datetime] NOT NULL,
	[DtFim] [nchar](10) NULL,
 CONSTRAINT [PK_TabelaQtUS_1] PRIMARY KEY CLUSTERED 
(
	[cd_tabela] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
alter table dentista add cd_tabelaQTUS int
alter table dentista add constraint fkDentistaTabelaQTUS foreign key (cd_tabelaQTUS) references tabelaQTUS (cd_tabela)

go
alter table TabPagDentistaXCategoria drop constraint FK_TabPagDentistaXCategoria_TabelaQtUS
alter table TabPagDentistaXCategoria drop column cd_tabelaQTUS

go
CREATE TABLE [dbo].[TabPagDentistaXCategoria](
	[indice] [int] NOT NULL,
	[cd_dentista] [int] NOT NULL,
	[cd_categoria] [int] NOT NULL,
	
	[vrUS] [decimal](8, 6) NOT NULL,
	[dtIni] [datetime] NOT NULL,
	[dtFim] [datetime] NULL,
 CONSTRAINT [PK_TabPagDentistaXCategoria] PRIMARY KEY CLUSTERED 
(
	[indice] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[TabPagDentistaXCategoria]  WITH CHECK ADD  CONSTRAINT [FK_TabPagDentistaXCategoria_Categoria] FOREIGN KEY([cd_categoria])
REFERENCES [dbo].[Categoria] ([Codigo_Categoria])
GO

ALTER TABLE [dbo].[TabPagDentistaXCategoria] CHECK CONSTRAINT [FK_TabPagDentistaXCategoria_Categoria]
GO

ALTER TABLE [dbo].[TabPagDentistaXCategoria]  WITH CHECK ADD  CONSTRAINT [FK_TabPagDentistaXCategoria_Dentista] FOREIGN KEY([cd_dentista])
REFERENCES [dbo].[Dentista] ([Codigo])
GO

ALTER TABLE [dbo].[TabPagDentistaXCategoria] CHECK CONSTRAINT [FK_TabPagDentistaXCategoria_Dentista]
GO

ALTER TABLE [dbo].[TabPagDentistaXCategoria] CHECK CONSTRAINT [FK_TabPagDentistaXCategoria_TabelaQtUS]
GO



CREATE TABLE [dbo].[ServicoXQtUS](
	[cd_tabela] [int] NOT NULL,
	[cd_servico] [int] NOT NULL,
	[qtUS] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_ServicoXQtUS] PRIMARY KEY CLUSTERED 
(
	[cd_tabela] ASC,
	[cd_servico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ServicoXQtUS]  WITH CHECK ADD  CONSTRAINT [FK_ServicoXQtUS_Servicos] FOREIGN KEY([cd_servico])
REFERENCES [dbo].[Servicos] ([Codigo])
GO

ALTER TABLE [dbo].[ServicoXQtUS] CHECK CONSTRAINT [FK_ServicoXQtUS_Servicos]
GO

ALTER TABLE [dbo].[ServicoXQtUS]  WITH CHECK ADD  CONSTRAINT [FK_ServicoXQtUS_TabelaQtUS] FOREIGN KEY([cd_tabela])
REFERENCES [dbo].[TabelaQtUS] ([cd_tabela])
GO

ALTER TABLE [dbo].[ServicoXQtUS] CHECK CONSTRAINT [FK_ServicoXQtUS_TabelaQtUS]
GO

ALTER TABLE itens_Orcamento  WITH CHECK ADD  CONSTRAINT FK_ItensOrcamento_TabPagDentistaXCategoria FOREIGN KEY(indiceTabPagDentista)  REFERENCES TabPagDentistaXCategoria (indice)

go

create trigger tr_tabpagDentistaXcategoria on tabpagDentistaXcategoria
for insert,update

as

if not UPDATE(dtfim) and exists(select * from tabpagDentistaXcategoria t , inserted i where t.cd_dentista = i.cd_dentista and t.cd_categoria = i.cd_categoria and t.dtFim is null and t.indice <> i.indice)
begin
   raiserror('ja existe uma tabela para esste dentista/categoria ativa, inative a tabela antes de prosseguir',16,1)
   rollback
end
go

create trigger tr_u_tabpagDentistaXcategoria on tabpagDentistaXcategoria
for update

as 

if not update (dtFim)
begin
    raiserror('Nao eh possivel realizar alteração nessa tabela, se necessário inative essa tabela e crie uma nova !',16,1)
    rollback
end