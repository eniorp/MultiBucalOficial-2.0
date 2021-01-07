object FormPrecoContratante: TFormPrecoContratante
  Left = 136
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Preço Contratante'
  ClientHeight = 348
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 314
    Width = 627
    Height = 34
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 555
      Top = 2
      Width = 70
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtnSair: TBitBtn
        Left = 1
        Top = 0
        Width = 69
        Height = 30
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
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 553
      Height = 30
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 553
        Height = 30
        DataSource = DataSourcePrecoContratante
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel20: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 83
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label30: TLabel
      Left = 12
      Top = 5
      Width = 67
      Height = 13
      Caption = 'Contratante'
      FocusControl = DBEditContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 12
      Top = 43
      Width = 71
      Height = 13
      Caption = 'Código Grau'
      FocusControl = DBEditGrau
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 94
      Top = 43
      Width = 157
      Height = 13
      Caption = 'Descrição Grau Parentesco'
      FocusControl = DBEditDescricaoGrauParentesco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 267
      Top = 43
      Width = 28
      Height = 13
      Caption = 'Data'
      FocusControl = DBEditData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 361
      Top = 43
      Width = 30
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEditValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditContratante: TDBEdit
      Left = 12
      Top = 19
      Width = 68
      Height = 21
      DataField = 'Codigo_Contratante'
      DataSource = DataSourcePrecoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditContratanteKeyDown
    end
    object DBEditNomeContratante: TDBEdit
      Left = 116
      Top = 19
      Width = 365
      Height = 21
      DataField = 'Nome_Contratante'
      DataSource = DataSourcePrecoContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEditGrau: TDBEdit
      Left = 12
      Top = 57
      Width = 77
      Height = 21
      DataField = 'Codigo_Grau_Parentesco'
      DataSource = DataSourcePrecoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditContratanteKeyDown
    end
    object DBEditDescricaoGrauParentesco: TDBEdit
      Left = 94
      Top = 57
      Width = 167
      Height = 21
      DataField = 'Descricao_Grau'
      DataSource = DataSourcePrecoContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEditData: TDBEdit
      Left = 267
      Top = 57
      Width = 89
      Height = 21
      DataField = 'Data'
      DataSource = DataSourcePrecoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditContratanteKeyDown
    end
    object DBEditValor: TDBEdit
      Left = 361
      Top = 57
      Width = 109
      Height = 21
      DataField = 'Valor'
      DataSource = DataSourcePrecoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = DBEditValorExit
      OnKeyDown = DBEditContratanteKeyDown
    end
    object BitBtnPesquisar: TBitBtn
      Left = 85
      Top = 19
      Width = 24
      Height = 21
      Caption = ' '
      TabOrder = 6
      OnClick = BitBtnPesquisarClick
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
  object Panel21: TPanel
    Left = 0
    Top = 83
    Width = 627
    Height = 231
    Align = alClient
    BevelWidth = 3
    Caption = 'Panel14'
    TabOrder = 2
    object DBGridDocumento: TDBGrid
      Left = 3
      Top = 3
      Width = 621
      Height = 225
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourcePrecoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Contratante'
          Title.Caption = 'Código'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Contratante'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Grau_Parentesco'
          Title.Caption = 'Grau'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Grau'
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
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
          FieldName = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Contratante'
      'order by Codigo')
    Left = 14
    Top = 137
    object QueryContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratanteNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Contratante.Nome'
      Size = 40
    end
  end
  object QueryPrecoContratante: TQuery
    AfterInsert = QueryPrecoContratanteAfterInsert
    AfterPost = QueryPrecoContratanteAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Preco_Contratante')
    Left = 66
    Top = 209
    object QueryPrecoContratanteCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Preco_Contratante.Codigo_Contratante'
    end
    object QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField
      FieldName = 'Codigo_Grau_Parentesco'
      Origin = 'MULTI.Preco_Contratante.Codigo_Grau_Parentesco'
    end
    object QueryPrecoContratanteData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Preco_Contratante.Data'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryPrecoContratanteValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Preco_Contratante.Valor'
      currency = True
    end
    object QueryPrecoContratanteNome_Contratante: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Contratante'
      LookupDataSet = QueryContratante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Contratante'
      Size = 40
      Lookup = True
    end
    object QueryPrecoContratanteDescricao_Grau: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Grau'
      LookupDataSet = QueryGrauParentesco
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Grau_Parentesco'
      Size = 30
      Lookup = True
    end
  end
  object DataSourcePrecoContratante: TDataSource
    DataSet = QueryPrecoContratante
    Left = 70
    Top = 137
  end
  object QueryGrauParentesco: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Grau_Parentesco'
      'order by Descricao')
    Left = 178
    Top = 145
    object QueryGrauParentescoCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'MULTI.Grau_Parentesco.Codigo'
    end
    object QueryGrauParentescoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Grau_Parentesco.Descricao'
      Size = 40
    end
    object QueryGrauParentescoIdade_Inicial: TSmallintField
      FieldName = 'Idade_Inicial'
      Origin = 'MULTI.Grau_Parentesco.Idade_Inicial'
    end
    object QueryGrauParentescoIdade_Final: TSmallintField
      FieldName = 'Idade_Final'
      Origin = 'MULTI.Grau_Parentesco.Idade_Final'
    end
  end
end
