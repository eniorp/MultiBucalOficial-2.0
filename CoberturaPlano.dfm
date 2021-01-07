object FormCoberturaPlano: TFormCoberturaPlano
  Left = 81
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobertura Plano'
  ClientHeight = 348
  ClientWidth = 613
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
    Top = 312
    Width = 613
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel15: TPanel
      Left = 535
      Top = 0
      Width = 78
      Height = 36
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object BitBtnSair: TBitBtn
        Left = 2
        Top = 2
        Width = 74
        Height = 32
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
    object Panel13: TPanel
      Left = 0
      Top = 0
      Width = 535
      Height = 36
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 1
      object DBNavigatorCadastro: TDBNavigator
        Left = 2
        Top = 2
        Width = 531
        Height = 32
        DataSource = DataSourceTabelaCoberturaXPlano
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel]
        Align = alClient
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Próximo'
          'Último'
          'Acrescentar'
          'Gravar'
          'Cancelar'
          'Atualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label27: TLabel
      Left = 6
      Top = 43
      Width = 40
      Height = 13
      Caption = 'Código'
      FocusControl = DBEditCodigoTabela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 115
      Top = 43
      Width = 101
      Height = 13
      Caption = 'Descrição Tabela'
      FocusControl = DBEditDescricaoTabela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Plano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditCodigoTabela: TDBEdit
      Left = 6
      Top = 57
      Width = 77
      Height = 21
      DataField = 'Tabela_Cobertura'
      DataSource = DataSourceTabelaCoberturaXPlano
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditCodigoTabelaKeyDown
    end
    object DBEditDescricaoTabela: TDBEdit
      Left = 114
      Top = 57
      Width = 281
      Height = 21
      DataField = 'DescricaoCobertura'
      DataSource = DataSourceTabelaCoberturaXPlano
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditDescricaoTabelaKeyDown
    end
    object DBCheckBoxAtiva: TDBCheckBox
      Left = 400
      Top = 59
      Width = 59
      Height = 17
      Caption = 'Ativa'
      DataField = 'Ativa'
      DataSource = DataSourceTabelaCoberturaXPlano
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnKeyDown = DBCheckBoxAtivaKeyDown
    end
    object DBLookupComboBoxPlano: TDBLookupComboBox
      Left = 8
      Top = 19
      Width = 247
      Height = 21
      DataField = 'DescricaoPlano'
      DataSource = DataSourceTabelaCoberturaXPlano
      ListField = 'Descricao'
      TabOrder = 0
      OnKeyDown = DBLookupComboBoxPlanoKeyDown
    end
    object BitBtnPesquisar: TBitBtn
      Left = 87
      Top = 57
      Width = 24
      Height = 21
      TabOrder = 4
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
  object Panel10: TPanel
    Left = 0
    Top = 85
    Width = 613
    Height = 227
    Align = alClient
    BevelWidth = 3
    Caption = 'Panel14'
    TabOrder = 2
    object DBGridCoberturaPlano: TDBGrid
      Left = 3
      Top = 3
      Width = 607
      Height = 221
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceTabelaCoberturaXPlano
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
          FieldName = 'Plano'
          Title.Caption = 'Código'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoPlano'
          Title.Caption = 'Descricao Plano'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tabela_Cobertura'
          Title.Caption = 'Código'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoCobertura'
          Title.Caption = 'Descricao Cobertura'
          Width = 238
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
  object DataSourceTabelaCobertura: TDataSource
    DataSet = QueryTabelaConsulta
    Left = 158
    Top = 193
  end
  object QueryTabelaConsulta: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCobertura')
    Left = 154
    Top = 165
  end
  object QueryPlano: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Plano'
      'order by Codigo'
      '')
    Left = 124
    Top = 165
  end
  object DataSourcePlano: TDataSource
    DataSet = QueryPlano
    Left = 126
    Top = 193
  end
  object QueryTabelaCoberturaXPlano: TQuery
    AfterInsert = QueryTabelaCoberturaXPlanoAfterInsert
    AfterPost = QueryTabelaCoberturaXPlanoAfterPost
    OnCalcFields = QueryTabelaCoberturaXPlanoCalcFields
    OnNewRecord = QueryTabelaCoberturaXPlanoNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from TabelaCoberturaXPlano'
      'order by Plano')
    Left = 94
    Top = 165
    object QueryTabelaCoberturaXPlanoPlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTI.TabelaCoberturaXPlano.Plano'
    end
    object QueryTabelaCoberturaXPlanoDescricaoPlano: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoPlano'
      LookupDataSet = QueryPlano
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Plano'
      Size = 50
      Lookup = True
    end
    object QueryTabelaCoberturaXPlanoTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaXPlano.Tabela_Cobertura'
    end
    object QueryTabelaCoberturaXPlanoDescricaoCobertura: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCobertura'
      LookupDataSet = QueryTabelaConsulta
      LookupKeyFields = 'CodigoTabela'
      LookupResultField = 'Descricao'
      KeyFields = 'Tabela_Cobertura'
      Size = 50
      Lookup = True
    end
    object QueryTabelaCoberturaXPlanoAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaXPlano.Ativa'
    end
    object QueryTabelaCoberturaXPlanoAtiva_Aux: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ativa_Aux'
      Size = 3
      Calculated = True
    end
  end
  object DataSourceTabelaCoberturaXPlano: TDataSource
    AutoEdit = False
    DataSet = QueryTabelaCoberturaXPlano
    Left = 94
    Top = 193
  end
end
