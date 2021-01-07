object FormCanceladosReceber: TFormCanceladosReceber
  Left = 18
  Top = 123
  Width = 734
  Height = 378
  Caption = 'Títulos Cancelados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelGrid: TPanel
    Left = 14
    Top = 99
    Width = 697
    Height = 225
    TabOrder = 0
    object DBGridCanceladosReceber: TDBGrid
      Left = 1
      Top = 1
      Width = 695
      Height = 177
      Color = clInfoBk
      DataSource = DataSourceCanceladosReceber
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Data_Cancelamento'
          Title.Caption = 'Data do Cancelamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Titulo'
          Title.Caption = 'Número do Título'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desdobramento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo_Documento'
          Title.Caption = 'Tipo do Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Contratante'
          Title.Caption = 'Código do Contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Emissao'
          Title.Caption = 'Data da Emissão'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Caption = 'Data do Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Caption = 'Valor do Título'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo_Cobranca'
          Title.Caption = 'Tipo de Cobrança'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Banco'
          Title.Caption = 'Número do Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo_Cancelamento'
          Title.Caption = 'Motivo do Cancelamento'
          Visible = True
        end>
    end
    object DBNavigator: TDBNavigator
      Left = 5
      Top = 185
      Width = 236
      Height = 34
      DataSource = DataSourceCanceladosReceber
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        ' ')
      TabOrder = 1
    end
    object BitBtnFechar: TBitBtn
      Left = 552
      Top = 190
      Width = 131
      Height = 28
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = BitBtnFecharClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object PanelButtons: TPanel
    Left = 16
    Top = 13
    Width = 693
    Height = 81
    BevelInner = bvLowered
    Color = clInactiveBorder
    TabOrder = 1
    object LabelPesPor: TLabel
      Left = 16
      Top = 22
      Width = 83
      Height = 13
      Caption = 'Pesquisar Por:'
      Color = clActiveBorder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LabelStatus: TLabel
      Left = 489
      Top = 50
      Width = 79
      Height = 13
      Caption = 'Todos os títulos.'
    end
    object BitBtnCodigo: TBitBtn
      Left = 104
      Top = 16
      Width = 120
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Código do &Contrtante'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = BitBtnCodigoClick
    end
    object EditCodigo: TEdit
      Left = 105
      Top = 45
      Width = 117
      Height = 21
      TabOrder = 1
      Visible = False
      OnExit = EditCodigoExit
      OnKeyDown = EditCodigoKeyDown
    end
    object BitBtnNumBanco: TBitBtn
      Left = 226
      Top = 16
      Width = 120
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Número do &Banco'
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = BitBtnNumBancoClick
    end
    object EditNumBanco: TEdit
      Left = 227
      Top = 45
      Width = 117
      Height = 21
      TabOrder = 3
      Visible = False
      OnExit = EditNumBancoExit
      OnKeyDown = EditCodigoKeyDown
    end
    object BitBtnNumTitulo: TBitBtn
      Left = 348
      Top = 16
      Width = 120
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Número do &Título'
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = BitBtnNumTituloClick
    end
    object EditNUmTitulo: TEdit
      Left = 350
      Top = 45
      Width = 117
      Height = 21
      TabOrder = 5
      Visible = False
      OnExit = EditNUmTituloExit
      OnKeyDown = EditCodigoKeyDown
    end
    object BitBtnTodos: TBitBtn
      Left = 470
      Top = 16
      Width = 120
      Height = 26
      Caption = '&Ver Todos'
      TabOrder = 6
      OnClick = BitBtnTodosClick
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD3C7C4B8A8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE7E6
        4D201850150CE9DCD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFE9DCD8A23B226D0E003B050178584FFEF9F8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFE4
        CFCAA23B22B52002B52002B520023B0501947A73FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFEF9F8FBA891B52002D83108F73F0DFF8462FF
        734DB520026D0E00B8A8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FCD5
        CAFF8462F73F0DFA4E1FFA4E1FFF6035FFE3DBFFE0D7FF6035B5200250150CD3
        C7C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFE7E0FBA891FF967AFF967AFF73
        4DFF967AFFFFFFFFFFFFFFB8A5FF6035B520024D2018D3C7C4FFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFF0ECFFB8A5FF8462FFE3DBFFFFFFFFFFFFFFE7
        E0FF967AFA4E1F6D0E004D2018D3C7C4FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFEF9F8FFE0D7FFFFFFFFFFFFFFFFFFFFFFFFFFC6B7FF8462F73F0D6D0E
        004D2018C6B7B3FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEF9F8FBA891FF8462F73F0D6D0E003B0501947A73EDE7
        E600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE3DBFBA891FF734DD831086D0E003B0501B8A8A400FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD5CAFBA891FF734D
        D831086D0E00D3C7C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC0FBA891FF6035D83108E9DCD800FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCEC0FF8462FA4E1FFCD5CA00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6B7FF
        6035FFC6B700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6B7FFE0D700}
    end
  end
  object DataSourceCanceladosReceber: TDataSource
    Tag = 1
    DataSet = QueryCanceladosReceber
    Left = 672
  end
  object QueryCanceladosReceber: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'Select * from CanceladosReceber'
      'Where Codigo_Contratante is not null'
      'Order By Data_Cancelamento')
    Left = 640
    object QueryCanceladosReceberData_Cancelamento: TDateTimeField
      FieldName = 'Data_Cancelamento'
      Origin = 'MULTI.CanceladosReceber.Data_Cancelamento'
    end
    object QueryCanceladosReceberNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'MULTI.CanceladosReceber.Numero_Titulo'
    end
    object QueryCanceladosReceberDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'MULTI.CanceladosReceber.Desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryCanceladosReceberTipo_Documento: TStringField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.CanceladosReceber.Tipo_Documento'
      FixedChar = True
      Size = 3
    end
    object QueryCanceladosReceberCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.CanceladosReceber.Codigo_Contratante'
    end
    object QueryCanceladosReceberData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'MULTI.CanceladosReceber.Data_Emissao'
    end
    object QueryCanceladosReceberData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.CanceladosReceber.Data_Vencimento'
    end
    object QueryCanceladosReceberValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.CanceladosReceber.Valor'
    end
    object QueryCanceladosReceberSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'MULTI.CanceladosReceber.Saldo'
    end
    object QueryCanceladosReceberTipo_Cobranca: TStringField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.CanceladosReceber.Tipo_Cobranca'
      FixedChar = True
      Size = 3
    end
    object QueryCanceladosReceberNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.CanceladosReceber.Numero_Banco'
      FixedChar = True
      Size = 15
    end
    object QueryCanceladosReceberOperador: TIntegerField
      FieldName = 'Operador'
      Origin = 'MULTI.CanceladosReceber.Operador'
    end
    object QueryCanceladosReceberMotivo_Cancelamento: TStringField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'MULTI.CanceladosReceber.Motivo_Cancelamento'
      Size = 100
    end
  end
end
