inherited FmPermGrupo: TFmPermGrupo
  Width = 775
  Height = 444
  Caption = 'Permiss'#245'es do Grupo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 410
  end
  inherited PanelRigth: TPanel
    Left = 757
    Height = 410
  end
  inherited PanelCenter: TPanel
    Width = 747
    Height = 410
    inherited PanelBotton: TPanel
      Top = 369
      Width = 747
      inherited Panel1: TPanel
        Left = 655
      end
    end
    inherited PanelTop: TPanel
      Width = 747
      Height = 53
      inherited Bevel1: TBevel
        Top = 36
        Width = 747
        Height = 17
      end
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label2: TLabel
        Left = 4
        Top = 39
        Width = 91
        Height = 13
        Caption = 'Menus Dispon'#237'veis'
      end
      object Label3: TLabel
        Left = 386
        Top = 39
        Width = 114
        Height = 13
        Caption = 'Permiss'#245'es desse grupo'
      end
      object Edit1: TEdit
        Left = 53
        Top = 7
        Width = 196
        Height = 21
        Enabled = False
        TabOrder = 0
      end
    end
    inherited DBGrid1: TDBGrid
      Left = 382
      Top = 53
      Width = 365
      Height = 316
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      Columns = <
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_menu'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_menu'
          Title.Caption = 'C'#243'd Menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_menu'
          Title.Caption = 'Nome Menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_grupo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'seq_menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Subseq_menu'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 53
      Width = 358
      Height = 316
      Align = alLeft
      DataSource = DsPermissoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_menu'
          Title.Caption = 'Descri'#231#227'o'
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_menu'
          Title.Caption = 'Nome Interno do Menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_menu'
          Title.Caption = 'C'#243'd Menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seq_menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Subseq_menu'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 358
      Top = 53
      Width = 24
      Height = 316
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object BitBtnRetornaUm: TBitBtn
        Left = 2
        Top = 148
        Width = 21
        Height = 22
        Caption = '<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnRetornaUmClick
      end
      object BitBtnMandaUm: TBitBtn
        Left = 2
        Top = 79
        Width = 21
        Height = 22
        Caption = '>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnMandaUmClick
      end
      object BitBtnMandaTodos: TBitBtn
        Left = 2
        Top = 108
        Width = 21
        Height = 18
        Caption = '>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtnMandaTodosClick
      end
      object BitBtnRetornaTodos: TBitBtn
        Left = 3
        Top = 175
        Width = 20
        Height = 20
        Caption = '<<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtnRetornaTodosClick
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryPermissaoGrupo
  end
  object ADOQueryPermissoes: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ' select * from menu_disponivel m'
      'where not exists'
      '(select * from  permissao_grupo p where cd_grupo ='
      ' 1'
      ' and m.cd_menu = p.cd_menu'
      ')'
      'order by seq_menu,subseq_menu,menu,ds_menu')
    Left = 98
    Top = 112
  end
  object ADOQueryPermissaoGrupo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from  permissao_grupo p, menu_disponivel m where cd_gru' +
        'po ='
      ' 1'
      ' and m.cd_menu = p.cd_menu'
      ''
      'order by menu,seq_menu,subseq_menu,ds_menu'
      '')
    Left = 386
    Top = 104
  end
  object DsPermissoes: TDataSource
    DataSet = ADOQueryPermissoes
    Left = 98
    Top = 168
  end
end
