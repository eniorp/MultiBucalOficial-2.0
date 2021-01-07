object FormPrecoGrupo: TFormPrecoGrupo
  Left = 138
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Preço Grupo Contratante'
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
        DataSource = DataSourcePrecoGrupo
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
    Height = 83
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label5: TLabel
      Left = 12
      Top = 5
      Width = 78
      Height = 13
      Caption = 'Código Grupo'
      FocusControl = DBEditGrupoPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 94
      Top = 5
      Width = 96
      Height = 13
      Caption = 'Descrição Grupo'
      FocusControl = DBEditDescricaoGrupoPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 266
      Top = 5
      Width = 71
      Height = 13
      Caption = 'Código Grau'
      FocusControl = DBEditGrauPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 348
      Top = 5
      Width = 157
      Height = 13
      Caption = 'Descrição Grau Parentesco'
      FocusControl = DBEditDescricaoGrauPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 12
      Top = 42
      Width = 28
      Height = 13
      Caption = 'Data'
      FocusControl = DBEditDataPrecoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 96
      Top = 42
      Width = 30
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEditValorGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditGrupoPreco: TDBEdit
      Left = 12
      Top = 19
      Width = 77
      Height = 21
      DataField = 'Codigo_Grupo'
      DataSource = DataSourcePrecoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEditDescricaoGrupoPreco: TDBEdit
      Left = 94
      Top = 19
      Width = 167
      Height = 21
      DataField = 'DescricaoGrupo'
      DataSource = DataSourcePrecoGrupo
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEditGrauPreco: TDBEdit
      Left = 266
      Top = 19
      Width = 77
      Height = 21
      DataField = 'Codigo_Grau_Parentesco'
      DataSource = DataSourcePrecoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEditDescricaoGrauPreco: TDBEdit
      Left = 348
      Top = 19
      Width = 167
      Height = 21
      DataField = 'Descricao_Grau'
      DataSource = DataSourcePrecoGrupo
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEditDataPrecoGrupo: TDBEdit
      Left = 12
      Top = 56
      Width = 79
      Height = 21
      DataField = 'Data'
      DataSource = DataSourcePrecoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEditValorGrupo: TDBEdit
      Left = 96
      Top = 56
      Width = 89
      Height = 21
      DataField = 'Valor'
      DataSource = DataSourcePrecoGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 83
    Width = 613
    Height = 229
    Align = alClient
    BevelWidth = 3
    Caption = 'Panel14'
    TabOrder = 2
    object DBGridInspetor: TDBGrid
      Left = 3
      Top = 3
      Width = 607
      Height = 223
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourcePrecoGrupo
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
          FieldName = 'Codigo_Grupo'
          Title.Caption = 'Grupo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoGrupo'
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Grau_Parentesco'
          Title.Caption = 'Grau Parentesco'
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
          FieldName = 'Descricao_Grau'
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 114
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
  object QueryGrauParentesco: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Grau_Parentesco'
      'order by Descricao')
    Left = 71
    Top = 142
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
  object DataSourceGrauParentesco: TDataSource
    DataSet = QueryGrauParentesco
    Left = 71
    Top = 170
  end
  object QueryPrecoGrupo: TQuery
    AfterPost = QueryPrecoGrupoAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Preco_Grupo'
      '')
    Left = 99
    Top = 142
    object QueryPrecoGrupoCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
      Origin = 'MULTI.Preco_Grupo.Codigo_Grupo'
    end
    object QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField
      FieldName = 'Codigo_Grau_Parentesco'
      Origin = 'MULTI.Preco_Grupo.Codigo_Grau_Parentesco'
    end
    object QueryPrecoGrupoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Preco_Grupo.Data'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryPrecoGrupoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Preco_Grupo.Valor'
    end
    object QueryPrecoGrupoDescricao_Grau: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Grau'
      LookupDataSet = QueryGrauParentesco
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Grau_Parentesco'
      Size = 30
      Lookup = True
    end
    object QueryPrecoGrupoDescricaoGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoGrupo'
      LookupDataSet = QueryGrupoContratante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Grupo'
      Size = 40
      Lookup = True
    end
  end
  object DataSourcePrecoGrupo: TDataSource
    DataSet = QueryPrecoGrupo
    Left = 99
    Top = 170
  end
  object QueryGrupoContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Grupo_Contratante'
      'order by Codigo'
      '')
    Left = 127
    Top = 142
  end
  object DataSourceGrupoContrantante: TDataSource
    DataSet = QueryGrupoContratante
    Left = 127
    Top = 170
  end
end
