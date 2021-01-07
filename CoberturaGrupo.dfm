object FormCoberturaGrupo: TFormCoberturaGrupo
  Left = 116
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobertura Grupo Contratante'
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
        DataSource = DataSourceTabelaCoberturaXGrupoContratante
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Próximo'
          'Último'
          'Acrescentar'
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
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 87
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label5: TLabel
      Left = 12
      Top = 11
      Width = 78
      Height = 13
      Caption = 'Código Grupo'
      FocusControl = DBEditGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 101
      Top = 11
      Width = 96
      Height = 13
      Caption = 'Descrição Grupo'
      FocusControl = DBEditDescricaoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 12
      Top = 47
      Width = 83
      Height = 13
      Caption = 'Código Tabela'
      FocusControl = DBEditCodigoTabela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 128
      Top = 47
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
    object DBEditGrupo: TDBEdit
      Left = 12
      Top = 25
      Width = 85
      Height = 21
      DataField = 'Grupo_Contratante'
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditGrupoKeyDown
    end
    object DBEditDescricaoGrupo: TDBEdit
      Left = 101
      Top = 25
      Width = 246
      Height = 21
      DataField = 'DescricaoGrupo'
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditDescricaoGrupoKeyDown
    end
    object DBEditCodigoTabela: TDBEdit
      Left = 12
      Top = 61
      Width = 85
      Height = 21
      DataField = 'Tabela_Cobertura'
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditCodigoTabelaKeyDown
    end
    object DBEditDescricaoTabela: TDBEdit
      Left = 128
      Top = 61
      Width = 268
      Height = 21
      DataField = 'DescricaoCobertura'
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBEditDescricaoTabelaKeyDown
    end
    object DBCheckBoxAtiva: TDBCheckBox
      Left = 400
      Top = 63
      Width = 59
      Height = 17
      Caption = 'Ativa'
      DataField = 'Ativa'
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnKeyDown = DBCheckBoxAtivaKeyDown
    end
    object BitBtnPesquisaCobertura: TBitBtn
      Left = 101
      Top = 61
      Width = 24
      Height = 21
      TabOrder = 5
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
  object Panel10: TPanel
    Left = 0
    Top = 87
    Width = 613
    Height = 225
    Align = alClient
    BevelWidth = 3
    Caption = 'Panel14'
    TabOrder = 2
    object DBGridCoberturaGrupo: TDBGrid
      Left = 3
      Top = 3
      Width = 607
      Height = 219
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceTabelaCoberturaXGrupoContratante
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
          FieldName = 'Grupo_Contratante'
          Title.Caption = 'Grupo'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoGrupo'
          Title.Caption = 'Descricao Grupo'
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tabela_Cobertura'
          Title.Caption = 'Tabela'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoCobertura'
          Title.Caption = 'Descricao'
          Width = 212
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
  object DataSourceTabelaCoberturaXGrupoContratante: TDataSource
    DataSet = QueryTabelaCoberturaXGrupoContratante
    Left = 109
    Top = 192
  end
  object DataSourceTabelaCobertura: TDataSource
    DataSet = QueryTabelaConsulta
    Left = 164
    Top = 192
  end
  object QueryTabelaConsulta: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCobertura')
    Left = 164
    Top = 165
  end
  object QueryTabelaCoberturaXGrupoContratante: TQuery
    AfterInsert = QueryTabelaCoberturaXGrupoContratanteAfterInsert
    AfterPost = QueryTabelaCoberturaXGrupoContratanteAfterPost
    OnCalcFields = QueryTabelaCoberturaXGrupoContratanteCalcFields
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from TabelaCoberturaXGrupoContratante'
      'order by Grupo_Contratante')
    Left = 109
    Top = 165
    object QueryTabelaCoberturaXGrupoContratanteGrupo_Contratante: TIntegerField
      FieldName = 'Grupo_Contratante'
      Origin = 'MULTI.TabelaCoberturaXGrupoContratante.Grupo_Contratante'
    end
    object QueryTabelaCoberturaXGrupoContratanteTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaXGrupoContratante.Tabela_Cobertura'
    end
    object QueryTabelaCoberturaXGrupoContratanteAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaXGrupoContratante.Ativa'
    end
    object QueryTabelaCoberturaXGrupoContratanteDescricaoCobertura: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoCobertura'
      LookupDataSet = QueryTabelaConsulta
      LookupKeyFields = 'CodigoTabela'
      LookupResultField = 'Descricao'
      KeyFields = 'Tabela_Cobertura'
      Size = 50
      Lookup = True
    end
    object QueryTabelaCoberturaXGrupoContratanteAtiva_Aux: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ativa_Aux'
      Size = 3
      Calculated = True
    end
    object QueryTabelaCoberturaXGrupoContratanteDescricaoGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoGrupo'
      LookupDataSet = QueryGrupoContratante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Grupo_Contratante'
      Size = 50
      Lookup = True
    end
  end
  object QueryGrupoContratante: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Grupo_Contratante'
      'order by Codigo')
    Left = 137
    Top = 165
  end
  object DataSourceGrupo_Contratante: TDataSource
    DataSet = QueryGrupoContratante
    Left = 137
    Top = 192
  end
end
