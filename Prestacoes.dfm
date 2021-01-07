object FormPrestacoes: TFormPrestacoes
  Left = 51
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Presta'#231#245'es do Or'#231'amento'
  ClientHeight = 471
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 471
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object DBGridPrestacoes: TDBGrid
      Left = 2
      Top = 2
      Width = 932
      Height = 426
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourcePrestacoes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridPrestacoesKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Parcela'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Vencimento'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco_Cheque'
          Title.Caption = 'Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia_Cheque'
          Title.Caption = 'Ag'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nro_ContaCheque'
          Title.Caption = 'N'#250'mero Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nro_Cheque'
          Title.Caption = 'N'#250'mero Cheque'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoTipoCobranca'
          Title.Caption = 'Tipo Cobran'#231'a'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 167
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoPagamento'
          Title.Caption = 'Tipo Pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'per_ref_des_folha'
          Title.Caption = 'Periodo Fat'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 428
      Width = 932
      Height = 41
      Align = alBottom
      TabOrder = 1
      object DBNavigatorPrestacoes: TDBNavigator
        Left = 1
        Top = 1
        Width = 743
        Height = 39
        DataSource = DataSourcePrestacoes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
        Visible = False
      end
      object Panel3: TPanel
        Left = 744
        Top = 1
        Width = 187
        Height = 39
        Align = alRight
        TabOrder = 1
        object Button1: TButton
          Left = 97
          Top = 5
          Width = 87
          Height = 34
          Hint = 'Clique aqui para informar os dados banc'#225'rios de uma '#250'nica vez'
          Caption = 'Dados Pagto'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 3
          Top = 5
          Width = 87
          Height = 34
          Hint = 'Clique aqui para informar os dados banc'#225'rios de uma '#250'nica vez'
          Caption = 'Baixar Parcelas'
          TabOrder = 1
          Visible = False
          OnClick = Button2Click
        end
      end
    end
  end
  object QueryPrestacoes: TQuery
    AfterInsert = QueryPrestacoesAfterInsert
    BeforeEdit = QueryPrestacoesBeforeEdit
    BeforePost = QueryPrestacoesBeforePost
    AfterPost = QueryPrestacoesAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Prestacoes'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento, Parcela')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryPrestacoesOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Prestacoes.Orcamento'
    end
    object QueryPrestacoesParcela: TSmallintField
      FieldName = 'Parcela'
      Origin = 'MULTI.Prestacoes.Parcela'
    end
    object QueryPrestacoesVencimento: TDateTimeField
      FieldName = 'Vencimento'
      Origin = 'MULTI.Prestacoes.Vencimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryPrestacoesValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Prestacoes.Valor'
      currency = True
    end
    object QueryPrestacoesNro_Cheque: TStringField
      FieldName = 'Nro_Cheque'
      Origin = 'MULTI.Prestacoes.Nro_Cheque'
    end
    object QueryPrestacoesBanco_Cheque: TStringField
      FieldName = 'Banco_Cheque'
      Origin = 'MULTI.Prestacoes.Banco_Cheque'
      Size = 3
    end
    object QueryPrestacoesAgencia_Cheque: TStringField
      FieldName = 'Agencia_Cheque'
      Origin = 'MULTI.Prestacoes.Agencia_Cheque'
      Size = 10
    end
    object QueryPrestacoesNro_ContaCheque: TStringField
      FieldName = 'Nro_ContaCheque'
      Origin = 'MULTI.Prestacoes.Nro_ContaCheque'
    end
    object QueryPrestacoesTipo_Pagamento: TIntegerField
      FieldName = 'Tipo_Pagamento'
      Origin = 'MULTI.Prestacoes.Tipo_Pagamento'
    end
    object QueryPrestacoesDescricaoPagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoPagamento'
      LookupDataSet = QueryTiposPagamento
      LookupKeyFields = 'Id_TipoPgto'
      LookupResultField = 'Descricao_TipoPgto'
      KeyFields = 'Tipo_Pagamento'
      Size = 30
      Lookup = True
    end
    object QueryPrestacoesper_ref_des_folha: TStringField
      FieldName = 'per_ref_des_folha'
      Origin = 'MULTI.Prestacoes.per_ref_des_folha'
      Size = 7
    end
    object QueryPrestacoesStatus_Cheque: TStringField
      FieldName = 'Status_Cheque'
      Origin = 'MULTI.Prestacoes.Status_Cheque'
      Size = 10
    end
    object QueryPrestacoestipoCobranca: TIntegerField
      FieldName = 'tipoCobranca'
      Origin = 'MULTI.Prestacoes.tipoCobranca'
    end
    object QueryPrestacoesDescTipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoTipoCobranca'
      LookupDataSet = QueryTipoCobranca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'tipoCobranca'
      Size = 40
      Lookup = True
    end
  end
  object DataSourcePrestacoes: TDataSource
    DataSet = QueryPrestacoes
    Left = 96
    Top = 124
  end
  object QueryTiposPagamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Tipos_Pagamentos where ativo = 1'
      'order by Descricao_TipoPgto')
    Left = 196
    Top = 73
    object QueryTiposPagamentoId_TipoPgto: TIntegerField
      FieldName = 'Id_TipoPgto'
      Origin = 'MULTI.Tipos_Pagamentos.Id_TipoPgto'
    end
    object QueryTiposPagamentoDescricao_TipoPgto: TStringField
      FieldName = 'Descricao_TipoPgto'
      Origin = 'MULTI.Tipos_Pagamentos.Descricao_TipoPgto'
      FixedChar = True
      Size = 30
    end
  end
  object sp_ajustaVenctoValorPrestacoes: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'sp_ajustaVenctoValorPrestacoes'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@orcamento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@parcelaIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dtIniParcela'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@vrAvista'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@cdTipoPagoPrimeiraParc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 385
    Top = 121
  end
  object QueryTipoCobranca: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'SELECT * FROM TIPOCOBRANCA WHERE ATIVO = 1 ORDER BY DESCRICAO'
      '')
    Left = 196
    Top = 168
  end
end
