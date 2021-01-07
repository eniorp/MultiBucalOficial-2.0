object FormBaixaBanespa: TFormBaixaBanespa
  Left = 191
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa Autom'#225'tica Banespa'
  ClientHeight = 256
  ClientWidth = 427
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
    Width = 427
    Height = 218
    Align = alClient
    TabOrder = 0
    object DBGridBaixa: TDBGrid
      Left = 1
      Top = 1
      Width = 425
      Height = 216
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceBaixaAuxiliar
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
          FieldName = 'Numero_Banco'
          Title.Caption = 'N'#250'mero Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
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
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Titulo'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Flag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 218
    Width = 427
    Height = 38
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 6
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
      TabOrder = 4
      Kind = bkClose
    end
    object BitBtnGerar: TBitBtn
      Left = 276
      Top = 2
      Width = 75
      Height = 34
      Caption = '&Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtnGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BitBtnBaixar: TBitBtn
      Left = 199
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
      Left = 66
      Top = 10
      Width = 55
      Height = 21
      TabOrder = 0
      OnKeyPress = EditDescontoKeyPress
    end
    object BitBtnImprimir: TBitBtn
      Left = 128
      Top = 3
      Width = 71
      Height = 33
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
  object QueryBaixaAuxiliar: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Baixa_Auxiliar'
      'where Numero_Banco <> '#39#39
      'order by Numero_Banco')
    Left = 60
    Top = 62
    object QueryBaixaAuxiliarData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'PRONTO.Baixa_Auxiliar.Data_Pagamento'
    end
    object QueryBaixaAuxiliarValor_Titulo: TFloatField
      FieldName = 'Valor_Titulo'
      Origin = 'PRONTO.Baixa_Auxiliar.Valor_Titulo'
      currency = True
    end
    object QueryBaixaAuxiliarJuros: TFloatField
      FieldName = 'Juros'
      Origin = 'PRONTO.Baixa_Auxiliar.Juros'
      currency = True
    end
    object QueryBaixaAuxiliarNumero_Banco: TIntegerField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.Baixa_Auxiliar.Numero_Banco'
    end
    object QueryBaixaAuxiliarFlag: TStringField
      FieldName = 'Flag'
      Origin = 'MULTI.Baixa_Auxiliar.Flag'
      Size = 3
    end
  end
  object DataSourceBaixaAuxiliar: TDataSource
    DataSet = QueryBaixaAuxiliar
    Left = 88
    Top = 30
  end
  object StoredProcDeletaBaixaAuxiliar: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_delete_Baixa_Auxiliar_1;1'
    Left = 188
    Top = 38
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivos Texto|*.txt|Arquivos Retorno|*.ret|Todos os Arquivos|*.' +
      '*'
    InitialDir = 'C:\Cobranca'
    Left = 44
    Top = 123
  end
  object QueryTitulo: TQuery
    DatabaseName = 'Multi'
    SessionName = 'Default'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where Numero_Banco = :Banco'
      'and tipo_cobranca = 10')
    Left = 103
    Top = 122
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Banco'
        ParamType = ptInput
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
  end
  object QueryOrcamentos: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from orcamento '
      'where numero =:Orcamento')
    Left = 212
    Top = 99
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Orcamento'
        ParamType = ptInput
      end>
    object QueryOrcamentosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'MULTI.orcamento.Numero'
    end
    object QueryOrcamentosStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MULTI.orcamento.Status'
    end
    object QueryOrcamentosStatus_Pagamento: TSmallintField
      FieldName = 'Status_Pagamento'
      Origin = 'MULTI.orcamento.Status_Pagamento'
    end
  end
end
