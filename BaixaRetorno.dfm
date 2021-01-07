object FormBaixaRetorno: TFormBaixaRetorno
  Left = 193
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa Autom'#225'tica'
  ClientHeight = 218
  ClientWidth = 426
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
    Width = 426
    Height = 180
    Align = alClient
    TabOrder = 0
    object DBGridBaixa: TDBGrid
      Left = 1
      Top = 1
      Width = 424
      Height = 178
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceBaixa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Identificacao_Empresa'
          Title.Caption = 'Titulo'
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
          FieldName = 'Codigo_Retorno'
          Title.Caption = 'Cod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Caption = 'Data Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Debito'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Contratante'
          Title.Caption = 'Contratante'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeContratante'
          Title.Caption = 'Nome Contratante'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 180
    Width = 426
    Height = 38
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnSair: TBitBtn
      Left = 349
      Top = 2
      Width = 75
      Height = 34
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
    object BitBtnBaixar: TBitBtn
      Left = 275
      Top = 2
      Width = 75
      Height = 34
      Caption = '&Baixar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtnBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object EditDesconto: TEdit
      Left = 69
      Top = 10
      Width = 55
      Height = 21
      TabOrder = 0
      OnKeyPress = EditDescontoKeyPress
    end
    object BitBtnImprimir: TBitBtn
      Left = 206
      Top = 2
      Width = 71
      Height = 34
      Hint = 'Imprimir Cadastro'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      Spacing = -2
    end
  end
  object QueryBaixa: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Retorno '
      'order by Codigo_Retorno, Codigo_Contratante')
    Left = 34
    Top = 62
    object QueryBaixaIdentificacao_Empresa: TStringField
      FieldName = 'Identificacao_Empresa'
      Origin = 'MULTI.Retorno.Identificacao_Empresa'
      FixedChar = True
      Size = 25
    end
    object QueryBaixaCodigo_Retorno: TStringField
      FieldName = 'Codigo_Retorno'
      Origin = 'MULTI.Retorno.Codigo_Retorno'
      FixedChar = True
      Size = 2
    end
    object QueryBaixaAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'MULTI.Retorno.Agencia'
      FixedChar = True
      Size = 4
    end
    object QueryBaixaConta: TStringField
      FieldName = 'Conta'
      Origin = 'MULTI.Retorno.Conta'
      FixedChar = True
      Size = 14
    end
    object QueryBaixaData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.Retorno.Data_Vencimento'
    end
    object QueryBaixaValor_Debito: TFloatField
      FieldName = 'Valor_Debito'
      Origin = 'MULTI.Retorno.Valor_Debito'
    end
    object QueryBaixaCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Retorno.Codigo_Contratante'
    end
    object QueryBaixaFlag: TStringField
      FieldName = 'Flag'
      Origin = 'MULTI.Retorno.Flag'
      Size = 1
    end
  end
  object DataSourceBaixa: TDataSource
    DataSet = QueryBaixa
    Left = 26
    Top = 14
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivos Texto|*.txt|Arquivos Retorno|*.ret|Todos os Arquivos|*.' +
      '*'
    InitialDir = 'C:\Cobranca'
    Left = 8
    Top = 91
  end
  object QueryTitulo: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where Numero_Titulo = :Identificacao_Empresa'
      '')
    Left = 53
    Top = 106
    ParamData = <
      item
        DataType = ftString
        Name = 'Identificacao_Empresa'
        ParamType = ptUnknown
      end>
    object QueryTituloNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'MULTI.Receber.Numero_Titulo'
    end
    object QueryTituloDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'MULTI.Receber.Desdobramento'
      Size = 2
    end
    object QueryTituloTipo_Documento: TSmallintField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Receber.Tipo_Documento'
    end
    object QueryTituloCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
    object QueryTituloCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
      Origin = 'MULTI.Receber.Codigo_Usuario'
    end
    object QueryTituloData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'MULTI.Receber.Data_Emissao'
    end
    object QueryTituloData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.Receber.Data_Vencimento'
    end
    object QueryTituloValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Receber.Valor'
    end
    object QueryTituloSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'MULTI.Receber.Saldo'
    end
    object QueryTituloTipo_Cobranca: TSmallintField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Receber.Tipo_Cobranca'
    end
    object QueryTituloNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.Receber.Numero_Banco'
      Size = 11
    end
    object QueryTituloData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'MULTI.Receber.Data_Pagamento'
    end
    object QueryTituloValor_Pago: TFloatField
      FieldName = 'Valor_Pago'
      Origin = 'MULTI.Receber.Valor_Pago'
    end
    object QueryTituloDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Receber.Desconto'
    end
    object QueryTituloJuros: TFloatField
      FieldName = 'Juros'
      Origin = 'MULTI.Receber.Juros'
    end
    object QueryTituloOperador: TSmallintField
      FieldName = 'Operador'
      Origin = 'MULTI.Receber.Operador'
    end
    object QueryTituloOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Receber.Orcamento'
    end
    object QueryTituloParcela: TSmallintField
      FieldName = 'Parcela'
      Origin = 'MULTI.Receber.Parcela'
    end
    object QueryTituloStatus_Cheque: TStringField
      FieldName = 'Status_Cheque'
      Origin = 'MULTI.Receber.Status_Cheque'
      Size = 10
    end
    object QueryTituloObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'MULTI.Receber.Observacoes'
    end
    object QueryTituloStatus_Orcamento: TSmallintField
      FieldName = 'Status_Orcamento'
      Origin = 'MULTI.Receber.Status_Orcamento'
    end
    object QueryTituloStatus_Ocorrencia: TSmallintField
      FieldName = 'Status_Ocorrencia'
      Origin = 'MULTI.Receber.Status_Ocorrencia'
    end
    object QueryTituloTipo_Pagamento: TIntegerField
      FieldName = 'Tipo_Pagamento'
      Origin = 'MULTI.Receber.Tipo_Pagamento'
    end
  end
  object QueryOcorrencia: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Ocorrencias_Retorno'
      'where Banco =:Banco'
      'and Codigo = :Ocorrencia')
    Left = 114
    Top = 90
    ParamData = <
      item
        DataType = ftString
        Name = 'Banco'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Ocorrencia'
        ParamType = ptInput
      end>
    object QueryOcorrenciaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'MULTI.Ocorrencias_Retorno.Codigo'
      Size = 4
    end
    object QueryOcorrenciaBanco: TStringField
      FieldName = 'Banco'
      Origin = 'MULTI.Ocorrencias_Retorno.Banco'
      Size = 3
    end
    object QueryOcorrenciaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Ocorrencias_Retorno.Descricao'
      Size = 50
    end
    object QueryOcorrenciaid_ocorrencia: TIntegerField
      FieldName = 'id_ocorrencia'
      Origin = 'MULTI.Ocorrencias_Retorno.id_ocorrencia'
    end
  end
end
