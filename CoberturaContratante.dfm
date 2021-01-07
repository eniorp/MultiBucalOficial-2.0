object FormCoberturaContratante: TFormCoberturaContratante
  Left = 152
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobertura Contratante'
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
        DataSource = DataSourceTabelaCoberturaXContratante
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
      Width = 44
      Height = 13
      Caption = 'Código '
      FocusControl = DBEditCodigoCobertura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 112
      Top = 43
      Width = 117
      Height = 13
      Caption = 'Descrição Cobertura'
      FocusControl = DBEditDescricaoCobertura
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
      DataField = 'Contratante'
      DataSource = DataSourceTabelaCoberturaXContratante
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
      Left = 112
      Top = 19
      Width = 365
      Height = 21
      DataField = 'DescricaoContratante'
      DataSource = DataSourceTabelaCoberturaXContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditNomeContratanteKeyDown
    end
    object DBEditCodigoCobertura: TDBEdit
      Left = 12
      Top = 57
      Width = 67
      Height = 21
      DataField = 'Tabela_Cobertura'
      DataSource = DataSourceTabelaCoberturaXContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditContratanteKeyDown
    end
    object DBEditDescricaoCobertura: TDBEdit
      Left = 113
      Top = 57
      Width = 290
      Height = 21
      DataField = 'DescricaoCobertura'
      DataSource = DataSourceTabelaCoberturaXContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBEditDescricaoCoberturaKeyDown
    end
    object BitBtnPesquisar: TBitBtn
      Left = 84
      Top = 19
      Width = 24
      Height = 21
      TabOrder = 5
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
    object DBCheckBoxAtiva: TDBCheckBox
      Left = 406
      Top = 60
      Width = 57
      Height = 17
      Caption = 'Ativa'
      DataField = 'Ativa'
      DataSource = DataSourceTabelaCoberturaXContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object BitBtnPesquisaCobertura: TBitBtn
      Left = 86
      Top = 56
      Width = 24
      Height = 21
      TabOrder = 6
      OnClick = BitBtnPesquisaCoberturaClick
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
    object DBGridCoberturaContratante: TDBGrid
      Left = 3
      Top = 3
      Width = 621
      Height = 225
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceTabelaCoberturaXContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Contratante'
          Title.Caption = 'Código'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoContratante'
          Title.Caption = 'Descricao Contratante'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tabela_Cobertura'
          Title.Caption = 'Código'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoCobertura'
          Title.Caption = 'Descricao Cobertura'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ativa_Aux'
          Title.Caption = 'Ativa'
          Visible = True
        end>
    end
  end
  object QueryContratante: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Contratante'
      'order by Codigo')
    Left = 154
    Top = 151
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
  object QueryTabelaCoberturaXContratante: TQuery
    AfterInsert = QueryTabelaCoberturaXContratanteAfterInsert
    AfterPost = QueryTabelaCoberturaXContratanteAfterPost
    OnCalcFields = QueryTabelaCoberturaXContratanteCalcFields
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from TabelaCoberturaXContratante'
      'order by Contratante')
    Left = 98
    Top = 151
    object QueryTabelaCoberturaXContratanteContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.TabelaCoberturaXContratante.Contratante'
    end
    object QueryTabelaCoberturaXContratanteDescricaoContratante: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoContratante'
      LookupDataSet = QueryContratante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Contratante'
      Size = 40
      Lookup = True
    end
    object QueryTabelaCoberturaXContratanteTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaXContratante.Tabela_Cobertura'
    end
    object QueryTabelaCoberturaXContratanteAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaXContratante.Ativa'
    end
    object QueryTabelaCoberturaXContratanteDescricaoCobertura: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCobertura'
      LookupDataSet = QueryTabelaCobertura
      LookupKeyFields = 'CodigoTabela'
      LookupResultField = 'Descricao'
      KeyFields = 'Tabela_Cobertura'
      Size = 40
      Lookup = True
    end
    object QueryTabelaCoberturaXContratanteAtiva_Aux: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ativa_Aux'
      Size = 3
      Calculated = True
    end
  end
  object DataSourceTabelaCoberturaXContratante: TDataSource
    DataSet = QueryTabelaCoberturaXContratante
    Left = 98
    Top = 179
  end
  object QueryTabelaCobertura: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCobertura'
      'order by Descricao')
    Left = 127
    Top = 151
  end
  object DataSourceTabelaCobertura: TDataSource
    DataSet = QueryTabelaCobertura
    Left = 126
    Top = 179
  end
  object DataSourceContratante: TDataSource
    DataSet = QueryContratante
    Left = 154
    Top = 179
  end
end
