object FormCoberturaProcedimento: TFormCoberturaProcedimento
  Left = 136
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cobertura Procedimento'
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
        DataSource = DataSourceCoberturaProcedimento
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
      Width = 40
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEditCodigoProcedimento
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
      Caption = 'C'#243'digo '
      FocusControl = DBEditCodigoCobertura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 110
      Top = 43
      Width = 117
      Height = 13
      Caption = 'Descri'#231#227'o Cobertura'
      FocusControl = DBEditDescricaoCobertura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 110
      Top = 5
      Width = 139
      Height = 13
      Caption = 'Descri'#231#227'o Procedimento'
      FocusControl = DBEditCodigoProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 400
      Top = 5
      Width = 55
      Height = 13
      Caption = 'Categoria'
      FocusControl = DBEditCodigoProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 403
      Top = 43
      Width = 26
      Height = 13
      Caption = 'Dias'
      FocusControl = DBEditCodigoProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 460
      Top = 43
      Width = 62
      Height = 13
      Caption = 'Percentual'
      FocusControl = DBEditCodigoProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditCodigoProcedimento: TDBEdit
      Left = 12
      Top = 19
      Width = 68
      Height = 21
      DataField = 'Codigo_procedimento'
      DataSource = DataSourceCoberturaProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditCodigoProcedimentoKeyDown
    end
    object DBEditDescricaoProcedimento: TDBEdit
      Left = 109
      Top = 19
      Width = 289
      Height = 21
      DataField = 'Descricao_Procedimento'
      DataSource = DataSourceCoberturaProcedimento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditDescricaoProcedimentoKeyDown
    end
    object DBEditCodigoCobertura: TDBEdit
      Left = 12
      Top = 57
      Width = 67
      Height = 21
      DataField = 'Codigo_Tabela'
      DataSource = DataSourceCoberturaProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBEditCodigoProcedimentoKeyDown
    end
    object DBEditDescricaoCobertura: TDBEdit
      Left = 109
      Top = 57
      Width = 290
      Height = 21
      DataField = 'Descricao_Cobertura'
      DataSource = DataSourceCoberturaProcedimento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyDown = DBEditDescricaoCoberturaKeyDown
    end
    object DBEditCategoria: TDBEdit
      Left = 400
      Top = 19
      Width = 55
      Height = 21
      DataField = 'Categoria_Procedimento'
      DataSource = DataSourceCoberturaProcedimento
      TabOrder = 2
      OnKeyDown = DBEditCategoriaKeyDown
    end
    object DBEditPercentual: TDBEdit
      Left = 460
      Top = 57
      Width = 70
      Height = 21
      DataField = 'Percentual'
      DataSource = DataSourceCoberturaProcedimento
      TabOrder = 6
      OnKeyDown = DBEditPercentualKeyDown
    end
    object DBEditDias: TDBEdit
      Left = 402
      Top = 57
      Width = 55
      Height = 21
      DataField = 'Dias'
      DataSource = DataSourceCoberturaProcedimento
      TabOrder = 5
      OnKeyDown = DBEditDiasKeyDown
    end
    object BitBtnPesquisarCobertura: TBitBtn
      Left = 82
      Top = 57
      Width = 24
      Height = 21
      TabOrder = 7
      OnClick = BitBtnPesquisarCoberturaClick
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
    object BitBtnPesquisaServico: TBitBtn
      Left = 82
      Top = 19
      Width = 24
      Height = 21
      TabOrder = 8
      OnClick = BitBtnPesquisaServicoClick
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
    object DBGridCoberturaProcedimento: TDBGrid
      Left = 3
      Top = 3
      Width = 621
      Height = 225
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceCoberturaProcedimento
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
          FieldName = 'Codigo_procedimento'
          Title.Caption = 'C'#243'digo'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Procedimento'
          Title.Caption = 'Descri'#231#227'o Procedimento'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Tabela'
          Title.Caption = 'C'#243'digo'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Cobertura'
          Title.Caption = 'Descri'#231#227'oCobertura'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Categoria_Procedimento'
          Title.Caption = 'Categoria'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dias'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual'
          Visible = True
        end>
    end
  end
  object QueryTabelaCobertura: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCobertura'
      'order by Descricao')
    Left = 210
    Top = 147
    object QueryTabelaCoberturaCodigoTabela: TIntegerField
      FieldName = 'CodigoTabela'
      Origin = 'MULTI.TabelaCobertura.CodigoTabela'
    end
    object QueryTabelaCoberturaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TabelaCobertura.Descricao'
      FixedChar = True
      Size = 50
    end
  end
  object DataSourceTabelaCobertura: TDataSource
    DataSet = QueryTabelaCobertura
    Left = 210
    Top = 175
  end
  object QueryCoberturaProcedimento: TQuery
    AfterInsert = QueryCoberturaProcedimentoAfterInsert
    AfterPost = QueryCoberturaProcedimentoAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from CoberturaxProcedimento'
      'order by Codigo_Tabela,codigo_procedimento')
    Left = 166
    Top = 147
    object QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField
      FieldName = 'Codigo_Tabela'
      Origin = 'MULTI.CoberturaxProcedimento.Codigo_Tabela'
    end
    object QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField
      FieldName = 'Codigo_procedimento'
      Origin = 'MULTI.CoberturaxProcedimento.Codigo_procedimento'
    end
    object QueryCoberturaProcedimentoDias: TIntegerField
      FieldName = 'Dias'
      Origin = 'MULTI.CoberturaxProcedimento.Dias'
    end
    object QueryCoberturaProcedimentoPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'MULTI.CoberturaxProcedimento.Percentual'
    end
    object QueryCoberturaProcedimentoDescricao_Cobertura: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Cobertura'
      LookupDataSet = QueryTabelaCobertura
      LookupKeyFields = 'CodigoTabela'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Tabela'
      Size = 50
      Lookup = True
    end
    object QueryCoberturaProcedimentoDescricao_Procedimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Procedimento'
      LookupDataSet = QueryProcedimento
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_procedimento'
      Size = 50
      Lookup = True
    end
    object QueryCoberturaProcedimentoCategoria_Procedimento: TStringField
      FieldKind = fkLookup
      FieldName = 'Categoria_Procedimento'
      LookupDataSet = QueryProcedimento
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Categoria'
      KeyFields = 'Codigo_procedimento'
      Size = 4
      Lookup = True
    end
  end
  object DataSourceCoberturaProcedimento: TDataSource
    DataSet = QueryCoberturaProcedimento
    Left = 182
    Top = 175
  end
  object QueryProcedimento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Servicos '
      'order by Codigo')
    Left = 238
    Top = 147
    object QueryProcedimentoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Servicos.Codigo'
    end
    object QueryProcedimentoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Servicos.Descricao'
      FixedChar = True
      Size = 40
    end
    object QueryProcedimentoCategoria: TIntegerField
      FieldName = 'Categoria'
      Origin = 'MULTI.Servicos.Categoria'
    end
  end
  object DataSourceProcedimento: TDataSource
    DataSet = QueryProcedimento
    Left = 238
    Top = 175
  end
end
