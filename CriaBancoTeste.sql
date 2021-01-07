--use msdb--drop database teste
delete dbo.Contratante
delete dbo.Dentista
delete dbo.especialidade
--delete dbo.Itens_Orcamento
delete dbo.Orcamento
delete dbo.Plano
delete dbo.Servicos
delete dbo.Usuario
delete dbo.receber
delete TipoDocumento
delete Itens_pagDentista 
delete Mensalidade_usuario

insert into itens_orcamento

-- intes pag dentista
select * from multiodonto..itens_orcamento where orcamento in
(
149052,
148364,
148315,
148187,
147946,
147821,
147761,
147759,
147758,
147736,
147730,
147729,
147712,
147685,
147681,
147680,
147679,
147645,
147593,
147592,
147544,
147508,
147490,
147489,
147485,
147484,
147483,
147482,
147479,
147478

)

insert into itens_orcamento

select top 350 * from multiodonto..itens_orcamento order by orcamento desc
go
insert into orcamento select * from multiodonto..orcamento o where o.Numero in(select distinct orcamento from itens_orcamento)
--select top 10 * from orcamento
--select top 10 * from multiodonto..itens_orcamento order by orcamento desc

insert into usuario select * from multiodonto..usuario where Codigo_Completo in(select distinct usuario from orcamento)

go
insert into contratante select * from multiodonto..contratante where Codigo in(select distinct codigo from usuario)
union
select * from multiodonto..contratante where Codigo in(select distinct contratante_titular from usuario)

go

insert into plano select * from multiodonto..Plano where codigo in(select distinct Plano from contratante)

go

insert into servicos select * from multiodonto..servicos where codigo in(select distinct servico from itens_orcamento)

go

insert into dentista select * from multiodonto..dentista where codigo in(select distinct dentista from orcamento)

go

insert into especialidade select * from multiodonto..especialidade 

go

insert into TipoDocumento select descricao,classificacao,ativo from multiodonto..TipoDocumento

go

insert into receber select * from multiodonto..Receber r where r.Codigo_Contratante in(select distinct codigo from contratante)


insert into mensalidade_usuario
select m.* from multiodonto..mensalidade_usuario m,usuario u where u.codigo = m.cd_usuario and u.digito = m.dg_usuario


insert into itens_pagdentista 
select i.* from multiodonto..itens_pagdentista i, orcamento o where o.numero = i.orcamento



select distinct top 30 orcamento from multiodonto..Itens_pagDentista i,multiodonto..orcamento o  where o.numero = i.orcamento order by 1 desc

--select * from itens_orcamento
--create database teste use teste
/*
CREATE TABLE [dbo].[Itens_Orcamento](
	[Orcamento] [int] NOT NULL,
	[Incremento] [int]  NOT NULL,
	[Servico] [int] NOT NULL,
	[Quantidade] [smallint] NOT NULL,
	[Valor] [money] NOT NULL,
	[Valor_Bruto] [money] NULL,
	[Valor_Dentista] [money] NOT NULL,
	[Valor_Protetico] [money] NOT NULL,
	[DenteFace] [varchar](7) NULL,
	[Hemiarco] [varchar](2) NULL,
	[sexante] [tinyint] NULL,
	[arcada] [varchar](2) NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Itens_Orcamento] PRIMARY KEY NONCLUSTERED 
(
	[Orcamento] ASC,
	[Incremento] ASC
)
)
GO


CREATE TABLE [dbo].[Orcamento](
	[Numero] [int]  NOT NULL,
	[Data_Hora] [datetime] NOT NULL,
	[Operador_Cadastro] [smallint] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Contratante_Titular] [int] NULL,
	[Contratante] [int] NULL,
	[Data] [datetime] NULL,
	[Dentista] [int] NULL,
	[Total] [money] NULL,
	[Total_Bruto] [money] NULL,
	[Total_Desconto] [money] NULL,
	[Status] [smallint] NULL,
	[Status_Pagamento] [smallint] NOT NULL,
	[Numero_Parcelas] [smallint] NULL,
	[Data_Conferencia] [datetime] NULL,
	[Total_Dentista] [money] NULL,
	[Total_Protetico] [money] NULL,
	[Total_Contas] [money] NULL,
	[Autorizado] [bit] NOT NULL,
	[Operador_Aprovacao] [smallint] NULL,
	[Tipo] [smallint] NULL,
	[Desconto] [float] NULL,
	[nro_urgencia] [int] NULL,
	[Data_Status] [datetime] NULL,
	[Operador_Status] [int] NULL,
	[PericiaFinal] [bit] NOT NULL,
	[cd_tabela] [smallint] NOT NULL,
	[lg_ir] [bit] NOT NULL,
	[tp_cobranca] [int] NULL,
 CONSTRAINT [PK_Orcamento] PRIMARY KEY NONCLUSTERED 
(
	[Numero] ASC,
	[Data_Hora] ASC,
	[Operador_Cadastro] ASC
)
)
GO

CREATE TABLE [dbo].[Plano](
	[Codigo] [int]  NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[Codigo_Susep] [int] NULL,
	[Titular_Contratante] [varchar](11) NOT NULL,
	[Fis_Jur] [varchar](8) NOT NULL,
	[Flag_Envio_Ans] [varchar](1) NULL,
	[Familiar] [bit] NOT NULL,
	[DtIniAplicacaoRPC] [smalldatetime] NULL,
	[DtFimAplicacaoRPC] [smalldatetime] NULL,
	[DtIniAnaliseRPC] [smalldatetime] NULL,
	[DtFimAnaliseRPC] [smalldatetime] NULL,
	[ConsideraCrianca] [bit] NOT NULL,
	[ativo] [bit] NOT NULL,
	[cd_ans_anterior] [int] NULL,
 CONSTRAINT [PK_Plano] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)
)
GO

CREATE TABLE [dbo].[Servicos](
	[Codigo] [int] NOT NULL,
	[Descricao] [char](40) NOT NULL,
	[Categoria] [int] NOT NULL,
	[SIP] [int] NULL,
	[cd_nivel_servico] [char](1) NOT NULL,
	[qt_face] [tinyint] NOT NULL,
	[tipo_dente] [char](1) NULL,
	[Perm_deci] [char](1) NULL,
	[Hemiarco] [varchar](2) NULL,
	[IdadeMax] [tinyint] NOT NULL,
	[qt_orcamento] [tinyint] NOT NULL,
	[molar_preMolar] [char](1) NULL,
	[arcada] [char](2) NULL,
	[cd_grupo] [smallint] NULL,
	[extracao] [bit] NOT NULL,
	[dt_exclusao] [smalldatetime] NULL,
 CONSTRAINT [PK_Servicos] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)
)
GO

CREATE TABLE [dbo].[Contratante](
	[Codigo] [int]  NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[RG] [varchar](50) NULL,
	[CGC_CPF] [varchar](50) NULL,
	[IE] [varchar](50) NULL,
	[Vencimento] [int] NOT NULL,
	[Inclusao] [datetime] NOT NULL,
	[Exclusao] [datetime] NULL,
	[Endereco_Comercial] [varchar](50) NULL,
	[Bairro_Comercial] [varchar](50) NULL,
	[Cidade_Comercial] [varchar](50) NULL,
	[Estado_Comercial] [varchar](50) NULL,
	[Cep_Comercial] [varchar](50) NULL,
	[Endereco_Residencial] [varchar](50) NULL,
	[Bairro_Residencial] [varchar](50) NULL,
	[Cidade_Residencial] [varchar](50) NULL,
	[Estado_Residencial] [varchar](50) NULL,
	[CEP_Residencial] [varchar](50) NULL,
	[Fone1] [varchar](18) NULL,
	[Fone2] [varchar](18) NULL,
	[Fax] [varchar](18) NULL,
	[Tipo_Correspondencia] [varchar](50) NOT NULL,
	[Vendedor] [int] NOT NULL,
	[Banco] [int] NULL,
	[Agencia] [varchar](6) NULL,
	[Conta] [varchar](15) NULL,
	[Digito] [varchar](2) NULL,
	[Titular_Conta] [varchar](30) NULL,
	[Contrato_Anterior] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[Numero_Cartao] [varchar](16) NULL,
	[Codigo_Seguranca] [varchar](3) NULL,
	[Motivo_Cancelamento] [int] NULL,
	[Situacao] [varchar](7) NULL,
	[Forma_Cobranca] [int] NOT NULL,
	[Ultimo_Faturamento] [datetime] NULL,
	[Plano] [int] NOT NULL,
	[Grupo_Contratante] [int] NULL,
	[Operador_Inclusao] [int] NULL,
	[Operador_Alteracao] [int] NULL,
	[Operador_Exclusao] [int] NULL,
	[perc_desconto] [decimal](5, 2) NOT NULL,
	[Empresa] [bit] NOT NULL,
	[Numero_Res] [varchar](5) NULL,
	[Complemento_Res] [varchar](15) NULL,
	[Numero_Com] [varchar](5) NULL,
	[Complemento_Com] [varchar](15) NULL,
	[desc_boleto] [decimal](5, 2) NULL,
	[cd_cidade_res] [smallint] NOT NULL,
	[cd_cidade_com] [smallint] NOT NULL,
	[profissao] [varchar](50) NULL,
	[lg_geraFat] [bit] NOT NULL,
	[lg_restricao] [bit] NOT NULL,
	[dt_termino_desconto] [datetime] NULL,
	[lg_cobrarTaxaBoleto] [bit] NOT NULL,
	[lg_exige_matricula_func] [bit] NOT NULL,
 CONSTRAINT [PK_Contratante] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)
)
GO


CREATE TABLE [dbo].[Dentista](
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](40) NOT NULL,
	[Endereco_Comercial] [varchar](40) NULL,
	[Bairro_Comercial] [varchar](25) NULL,
	[Cep_Comercial] [varchar](9) NULL,
	[Cidade_Comercial] [varchar](25) NULL,
	[Estado_Comercial] [varchar](2) NULL,
	[Endereco_Residencial] [varchar](40) NULL,
	[Bairro_Residencial] [varchar](25) NULL,
	[Cep_Residencial] [varchar](9) NULL,
	[Cidade_Residencial] [varchar](25) NULL,
	[Estado_Residencial] [varchar](2) NULL,
	[Fone1] [varchar](18) NULL,
	[Tipo_Fone1] [varchar](10) NULL,
	[Fone2] [varchar](18) NULL,
	[Tipo_Fone2] [varchar](10) NULL,
	[Fax] [varchar](18) NULL,
	[Celular] [varchar](18) NULL,
	[email] [varchar](30) NULL,
	[Data_Exclusao] [datetime] NULL,
	[Codigo_Clinica] [int] NULL,
	[Acrescimo_NF] [int] NULL,
	[Desconto] [int] NULL,
	[CIC] [varchar](15) NULL,
	[INSS] [varchar](15) NULL,
	[cd_especialidade] [smallint] NULL,
	[cd_motivo_exclusao] [int] NULL,
	[cro] [varchar](15) NULL,
	[e_civil] [varchar](13) NULL,
	[dt_formacao] [smalldatetime] NULL,
	[rg] [varchar](15) NULL,
	[dt_inclusao] [smalldatetime] NULL,
	[obs] [varchar](2000) NULL,
	[cd_op_alter] [int] NULL,
	[cnes] [varchar](7) NULL,
	[dt_envio_grafica] [smalldatetime] NULL,
	[alterado] [char](1) NULL,
	[lanca_pkg_orcamento] [char](1) NOT NULL,
 CONSTRAINT [PK_Dentista] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)
)
GO



CREATE TABLE [dbo].[especialidade](
	[cd_especialidade] [smallint] NOT NULL,
	[ds_especialidade] [varchar](30) NOT NULL,
	[ativa] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cd_especialidade] ASC
)
)

go



go
CREATE TABLE [dbo].[Usuario](
	[Codigo] [int] NOT NULL,
	[Digito] [int] NOT NULL,
	[Codigo_Completo] [int] NULL,
	[Nome] [varchar](40) NOT NULL,
	[Grau_Parentesco] [smallint] NOT NULL,
	[Data_Nascimento] [datetime] NOT NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Data_Exclusao] [datetime] NULL,
	[Contratante_Titular] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[E_Civil] [varchar](13) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[Inclusao_Susep] [datetime] NULL,
	[Exclusao_Susep] [datetime] NULL,
	[Alteracao_Susep] [datetime] NULL,
	[Alterado] [bit] NULL,
	[Situacao] [varchar](50) NULL,
	[Operador_Inclusao] [int] NULL,
	[Operador_Alteracao] [int] NULL,
	[Operador_Exclusao] [int] NULL,
	[Manutencao] [bit] NULL,
	[Nm_Mae] [varchar](70) NULL,
	[CPF] [varchar](50) NULL,
	[PIS_PASEP] [varchar](11) NULL,
	[Motivo_Cancelamento] [int] NULL,
	[Valor_Mens] [money] NULL,
	[DtReinclusao] [datetime] NULL,
	[data_alteracao] [smalldatetime] NULL,
	[codigo_ans] [char](30) NULL,
	[cd_motivo_inclusao] [tinyint] NULL,
	[dt_migracao] [smalldatetime] NULL,
	[cei] [varchar](14) NULL,
	[dt_exclusao_orig] [datetime] NULL,
	[dt_venda] [smalldatetime] NULL,
	[NrPlanoOUtOp] [varchar](9) NULL,
	[cco] [varchar](10) NULL,
	[dg_cco] [varchar](2) NULL,
	[novo_cod_usu_plano] [varchar](30) NULL,
	[reinclusao_sib] [datetime] NULL,
	[dt_retirada_carteira] [smalldatetime] NULL,
	[lg_excl_renovacao] [bit] NOT NULL,
	[cd_matricula] [varchar](30) NULL,
	[fone1] [varchar](18) NULL,
	[fone2] [varchar](18) NULL,
	[cd_sus] [varchar](15) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC,
	[Digito] ASC
)
)
GO




GO

/****** Object:  Table [dbo].[Receber]    Script Date: 03/14/2012 13:51:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Receber](
	[Numero_Titulo] [int] NOT NULL,
	[Desdobramento] [varchar](2) NOT NULL,
	[Tipo_Documento] [smallint] NULL,
	[Codigo_Contratante] [int] NULL,
	[Codigo_Usuario] [int] NULL,
	[Data_Emissao] [datetime] NULL,
	[Data_Vencimento] [datetime] NULL,
	[Valor] [money] NULL,
	[Saldo] [money] NULL,
	[Tipo_Cobranca] [smallint] NULL,
	[Numero_Banco] [varchar](11) NULL,
	[Data_Pagamento] [datetime] NULL,
	[Valor_Pago] [money] NULL,
	[Desconto] [money] NULL,
	[Juros] [money] NULL,
	[Operador] [smallint] NULL,
	[Orcamento] [int] NULL,
	[Parcela] [smallint] NULL,
	[Observacoes] [varchar](100) NULL,
	[Status_Orcamento] [smallint] NULL,
	[Nro_cheque] [varchar](20) NULL,
	[Banco_Cheque] [varchar](3) NULL,
	[Nro_ContaCheque] [varchar](20) NULL,
	[Agencia_Cheque] [varchar](10) NULL,
	[Status_Ocorrencia] [smallint] NULL,
	[Deposito] [bit] NOT NULL,
	[Tipo_Pagamento] [int] NULL,
	[status_cheque] [varchar](20) NULL,
	[Pago] [bit] NULL,
	[dtinclusao] [datetime] NULL,
 CONSTRAINT [PK_Receber] PRIMARY KEY NONCLUSTERED 
(
	[Numero_Titulo] ASC,
	[Desdobramento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Receber] ADD  DEFAULT (1) FOR [Deposito]
GO

ALTER TABLE [dbo].[Receber] ADD  DEFAULT (1) FOR [Tipo_Pagamento]
GO

ALTER TABLE [dbo].[Receber] ADD  DEFAULT (getdate()) FOR [dtinclusao]
GO




GO

/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 03/14/2012 13:51:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TipoDocumento](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Classificacao] [varchar](15) NULL,
	[ativo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [Itens_PagDentista] (
	[Orcamento] [int] NOT NULL ,
	[Incremento] [int] NOT NULL ,
	[MesAno] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Servico] [int] NULL ,
	[Quantidade] [int] NULL ,
	[Quantidade_Paga] [int] NULL ,
	[Valor] [money] NULL ,
	[Observacao] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[id_pagto] [int] NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Itens_Pag__statu__6C2EE8AB] DEFAULT ('N'),
	CONSTRAINT [PK_Itens_PagDentista] PRIMARY KEY  NONCLUSTERED 
	(
		[Orcamento],
		[Incremento]
	)  ON [PRIMARY] 

) ON [PRIMARY]
GO


CREATE TABLE [mensalidade_usuario] (
	[cd_usuario] [int] NOT NULL ,
	[dg_usuario] [int] NOT NULL ,
	[id_acrescimo] [int] NOT NULL ,
	[dtinicio] [smalldatetime] NOT NULL ,
	[dtfim] [smalldatetime] NOT NULL ,
	[valor] [smallmoney] NOT NULL ,
	[vrbruto] [smallmoney] NOT NULL ,
	CONSTRAINT [pk_mensalidade_usuario] PRIMARY KEY  CLUSTERED 
	(
		[cd_usuario],
		[dg_usuario],
		[id_acrescimo]
	)  ON [PRIMARY]
) ON [PRIMARY]
GO


