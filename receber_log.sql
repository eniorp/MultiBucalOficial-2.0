select * from parametro where cd_parametro = 'LGCONT'
insert into parametro values ('LGRECE','S','Se S grava log de alterações da tabela receber','U','SISTEMA',GETDATE())

CREATE TABLE [dbo].[Receber_log](
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
	[dt_pagDentista] [datetime] NULL,
	[cd_usu_alteracao] [int] NULL,
	DataHora datetime not null
 CONSTRAINT [PK_Receber_log] PRIMARY KEY NONCLUSTERED 
(
	[Numero_Titulo] ASC,
	[Desdobramento] ASC,
	DataHora ASC
)
)


