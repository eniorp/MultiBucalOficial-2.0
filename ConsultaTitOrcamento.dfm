object FormConsultaTitulosOrcamento: TFormConsultaTitulosOrcamento
  Left = 6
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Títulos'
  ClientHeight = 430
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = DBGridTituloReceberKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 78
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 2
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 775
      Height = 41
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 664
        Height = 37
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBNavigatorContratante: TDBNavigator
          Left = 0
          Top = 0
          Width = 664
          Height = 37
          DataSource = DataSourceTitulo
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          Hints.Strings = (
            'Primeiro'
            'Anterior'
            'Próximo'
            'Último'
            'Incluir'
            'Excluir'
            'Editar'
            'Gravar'
            'Cancelar'
            'Atualizar')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 666
        Top = 2
        Width = 107
        Height = 37
        Align = alRight
        TabOrder = 1
        object BitBtnSair: TBitBtn
          Left = 1
          Top = 0
          Width = 106
          Height = 37
          Hint = 'Sair do Cadastro'
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Kind = bkClose
        end
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 44
      Width = 775
      Height = 31
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object LabelProcura: TLabel
        Left = 11
        Top = 13
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contratante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelNumero: TLabel
        Left = 580
        Top = 12
        Width = 75
        Height = 13
        Caption = 'LabelNumero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEditNome: TDBEdit
        Left = 87
        Top = 5
        Width = 425
        Height = 21
        DataField = 'Nome'
        DataSource = FormOrcamentos.DataSourceContratante
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 78
    Width = 781
    Height = 352
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 2
    ParentColor = True
    TabOrder = 1
    object DBGridTituloReceber: TDBGrid
      Left = 3
      Top = 3
      Width = 775
      Height = 346
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceTitulo
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridTituloReceberKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Tipo_Auxiliar'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Titulo'
          Title.Caption = 'Número'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desdobramento'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Emissao'
          Title.Alignment = taCenter
          Title.Caption = 'Emissão'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Pagamento'
          Title.Caption = 'Pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cobranca_Auxiliar'
          Title.Caption = 'Cobrança'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end>
    end
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'Select * from Contratante'
      'where Codigo = :Codigo_Contratante'
      'order by Nome')
    Left = 197
    Top = 236
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Contratante'
        ParamType = ptInput
      end>
    object QueryContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratanteNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Contratante.Nome'
      Size = 40
    end
    object QueryContratanteRG: TStringField
      FieldName = 'RG'
      Origin = 'MULTI.Contratante.RG'
      Size = 50
    end
    object QueryContratanteCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'MULTI.Contratante.CGC_CPF'
      Size = 50
    end
    object QueryContratanteIE: TStringField
      FieldName = 'IE'
      Origin = 'MULTI.Contratante.IE'
      Size = 50
    end
    object QueryContratanteVencimento: TIntegerField
      FieldName = 'Vencimento'
      Origin = 'MULTI.Contratante.Vencimento'
    end
    object QueryContratanteInclusao: TDateTimeField
      FieldName = 'Inclusao'
      Origin = 'MULTI.Contratante.Inclusao'
    end
    object QueryContratanteExclusao: TDateTimeField
      FieldName = 'Exclusao'
      Origin = 'MULTI.Contratante.Exclusao'
    end
    object QueryContratanteEndereco_Comercial: TStringField
      FieldName = 'Endereco_Comercial'
      Origin = 'MULTI.Contratante.Endereco_Comercial'
      Size = 50
    end
    object QueryContratanteBairro_Comercial: TStringField
      FieldName = 'Bairro_Comercial'
      Origin = 'MULTI.Contratante.Bairro_Comercial'
      Size = 50
    end
    object QueryContratanteCidade_Comercial: TStringField
      FieldName = 'Cidade_Comercial'
      Origin = 'MULTI.Contratante.Cidade_Comercial'
      Size = 50
    end
    object QueryContratanteEstado_Comercial: TStringField
      FieldName = 'Estado_Comercial'
      Origin = 'MULTI.Contratante.Estado_Comercial'
      Size = 50
    end
    object QueryContratanteCep_Comercial: TStringField
      FieldName = 'Cep_Comercial'
      Origin = 'MULTI.Contratante.Cep_Comercial'
      Size = 50
    end
    object QueryContratanteEndereco_Residencial: TStringField
      FieldName = 'Endereco_Residencial'
      Origin = 'MULTI.Contratante.Endereco_Residencial'
      Size = 50
    end
    object QueryContratanteBairro_Residencial: TStringField
      FieldName = 'Bairro_Residencial'
      Origin = 'MULTI.Contratante.Bairro_Residencial'
      Size = 50
    end
    object QueryContratanteCidade_Residencial: TStringField
      FieldName = 'Cidade_Residencial'
      Origin = 'MULTI.Contratante.Cidade_Residencial'
      Size = 50
    end
    object QueryContratanteEstado_Residencial: TStringField
      FieldName = 'Estado_Residencial'
      Origin = 'MULTI.Contratante.Estado_Residencial'
      Size = 50
    end
    object QueryContratanteCEP_Residencial: TStringField
      FieldName = 'CEP_Residencial'
      Origin = 'MULTI.Contratante.CEP_Residencial'
      Size = 50
    end
    object QueryContratanteFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'MULTI.Contratante.Fone1'
      Size = 18
    end
    object QueryContratanteFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'MULTI.Contratante.Fone2'
      Size = 18
    end
    object QueryContratanteFax: TStringField
      FieldName = 'Fax'
      Origin = 'MULTI.Contratante.Fax'
      Size = 18
    end
    object QueryContratanteTipo_Correspondencia: TStringField
      FieldName = 'Tipo_Correspondencia'
      Origin = 'MULTI.Contratante.Tipo_Correspondencia'
      Size = 50
    end
    object QueryContratanteVendedor: TIntegerField
      FieldName = 'Vendedor'
      Origin = 'MULTI.Contratante.Vendedor'
    end
    object QueryContratanteBanco: TIntegerField
      FieldName = 'Banco'
      Origin = 'MULTI.Contratante.Banco'
    end
    object QueryContratanteAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'MULTI.Contratante.Agencia'
      Size = 6
    end
    object QueryContratanteConta: TStringField
      FieldName = 'Conta'
      Origin = 'MULTI.Contratante.Conta'
      Size = 10
    end
    object QueryContratanteDigito: TStringField
      FieldName = 'Digito'
      Origin = 'MULTI.Contratante.Digito'
      Size = 2
    end
    object QueryContratanteTitular_Conta: TStringField
      FieldName = 'Titular_Conta'
      Origin = 'MULTI.Contratante.Titular_Conta'
      Size = 30
    end
    object QueryContratanteContrato_Anterior: TStringField
      FieldName = 'Contrato_Anterior'
      Origin = 'MULTI.Contratante.Contrato_Anterior'
      Size = 10
    end
    object QueryContratanteemail: TStringField
      FieldName = 'email'
      Origin = 'MULTI.Contratante.email'
      Size = 30
    end
    object QueryContratanteNumero_Cartao: TStringField
      FieldName = 'Numero_Cartao'
      Origin = 'MULTI.Contratante.Numero_Cartao'
      Size = 16
    end
    object QueryContratanteCodigo_Seguranca: TStringField
      FieldName = 'Codigo_Seguranca'
      Origin = 'MULTI.Contratante.Codigo_Seguranca'
      Size = 3
    end
    object QueryContratanteMotivo_Cancelamento: TIntegerField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'MULTI.Contratante.Motivo_Cancelamento'
    end
    object QueryContratanteSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'MULTI.Contratante.Situacao'
      Size = 7
    end
    object QueryContratanteForma_Cobranca: TIntegerField
      FieldName = 'Forma_Cobranca'
      Origin = 'MULTI.Contratante.Forma_Cobranca'
    end
    object QueryContratanteUltimo_Faturamento: TDateTimeField
      FieldName = 'Ultimo_Faturamento'
      Origin = 'MULTI.Contratante.Ultimo_Faturamento'
    end
    object QueryContratantePlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTI.Contratante.Plano'
    end
    object QueryContratanteGrupo_Contratante: TIntegerField
      FieldName = 'Grupo_Contratante'
      Origin = 'MULTI.Contratante.Grupo_Contratante'
    end
    object QueryContratanteOperador_Inclusao: TIntegerField
      FieldName = 'Operador_Inclusao'
      Origin = 'MULTI.Contratante.Operador_Inclusao'
    end
    object QueryContratanteOperador_Alteracao: TIntegerField
      FieldName = 'Operador_Alteracao'
      Origin = 'MULTI.Contratante.Operador_Alteracao'
    end
    object QueryContratanteOperador_Exclusao: TIntegerField
      FieldName = 'Operador_Exclusao'
      Origin = 'MULTI.Contratante.Operador_Exclusao'
    end
  end
  object QueryTitulo: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where Codigo_Contratante <> '#39'0'#39
      'and data_pagamento is null'
      'order by Tipo_Documento, Data_Pagamento, Data_Vencimento')
    Left = 224
    Top = 236
    object QueryTituloNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'PRONTO.Receber.Numero_Titulo'
    end
    object QueryTituloDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'PRONTO.Receber.Desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryTituloCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'PRONTO.Receber.Codigo_Contratante'
    end
    object QueryTituloData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'PRONTO.Receber.Data_Emissao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryTituloData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'PRONTO.Receber.Data_Vencimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryTituloValor: TFloatField
      FieldName = 'Valor'
      Origin = 'PRONTO.Receber.Valor'
      currency = True
    end
    object QueryTituloSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'PRONTO.Receber.Saldo'
      currency = True
    end
    object QueryTituloTipo_Auxiliar: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo_Auxiliar'
      LookupDataSet = QueryTipoDocumento
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Documento'
      Size = 15
      Lookup = True
    end
    object QueryTituloCobranca_Auxiliar: TStringField
      FieldKind = fkLookup
      FieldName = 'Cobranca_Auxiliar'
      LookupDataSet = QueryTipoCobranca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Cobranca'
      Size = 15
      Lookup = True
    end
    object QueryTituloNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'PRONTO.Receber.Numero_Banco'
      FixedChar = True
      Size = 15
    end
    object QueryTituloData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'PRONTO.Receber.Data_Pagamento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryTituloValor_Pago: TFloatField
      FieldName = 'Valor_Pago'
      Origin = 'PRONTO.Receber.Valor_Pago'
      currency = True
    end
    object QueryTituloDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'PRONTO.Receber.Desconto'
      currency = True
    end
    object QueryTituloJuros: TFloatField
      FieldName = 'Juros'
      Origin = 'PRONTO.Receber.Juros'
      currency = True
    end
    object QueryTituloOperador: TSmallintField
      FieldName = 'Operador'
      Origin = 'MULTI.Receber.Operador'
    end
    object QueryTituloTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Receber.Tipo_Documento'
    end
    object QueryTituloTipo_Cobranca: TIntegerField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Receber.Tipo_Cobranca'
    end
    object QueryTituloOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Receber.Orcamento'
    end
  end
  object QueryTipoDocumento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoDocumento'
      'where Codigo <> '#39#39)
    Left = 253
    Top = 236
    object QueryTipoDocumentoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.TipoDocumento.Codigo'
    end
    object QueryTipoDocumentoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoDocumento.Descricao'
      Size = 50
    end
  end
  object QueryTipoCobranca: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoCobranca'
      'where Codigo <> '#39#39)
    Left = 281
    Top = 236
    object QueryTipoCobrancaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.TipoCobranca.Codigo'
    end
    object QueryTipoCobrancaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoCobranca.Descricao'
      Size = 50
    end
    object QueryTipoCobrancaGera_Receber: TBooleanField
      FieldName = 'Gera_Receber'
      Origin = 'MULTI.TipoCobranca.Gera_Receber'
    end
  end
  object DataSourceTitulo: TDataSource
    DataSet = QueryTitulo
    Left = 225
    Top = 264
  end
  object DataSourceContratante: TDataSource
    DataSet = QueryContratante
    Left = 197
    Top = 264
  end
end
