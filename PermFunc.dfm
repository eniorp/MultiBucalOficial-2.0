inherited fmPermFunc: TfmPermFunc
  Width = 674
  Height = 451
  Caption = 'Permiss'#245'es de Funcion'#225'rio'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 417
  end
  inherited PanelRigth: TPanel
    Left = 656
    Height = 417
  end
  inherited PanelCenter: TPanel
    Width = 646
    Height = 417
    inherited PanelBotton: TPanel
      Top = 376
      Width = 646
      inherited Panel1: TPanel
        Left = 354
        Width = 292
        inherited BitBtnSair: TBitBtn
          Left = 201
        end
        object Button1: TButton
          Left = 0
          Top = 8
          Width = 196
          Height = 25
          Caption = 'Copiar permiss'#245'es de outro funcion'#225'rio'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Button2: TButton
        Left = 0
        Top = 8
        Width = 113
        Height = 25
        Caption = 'Permiss'#245'es do Grupo'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    inherited PanelTop: TPanel
      Width = 646
      Height = 66
      inherited Bevel1: TBevel
        Top = 48
        Width = 646
        Height = 18
      end
      object Label1: TLabel
        Left = 16
        Top = 18
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
      end
      object Label2: TLabel
        Left = 4
        Top = 51
        Width = 91
        Height = 13
        Caption = 'Menus Dispon'#237'veis'
      end
      object Label3: TLabel
        Left = 330
        Top = 51
        Width = 114
        Height = 13
        Caption = 'Permiss'#245'es desse grupo'
      end
      object Label4: TLabel
        Left = 282
        Top = 8
        Width = 359
        Height = 13
        Caption = 
          'Dica: Os "Menus Dispon'#237'veis" cujo grupo do funcion'#225'rio j'#225' tenha ' +
          'permiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 296
        Top = 24
        Width = 3
        Height = 13
      end
      object Label6: TLabel
        Left = 283
        Top = 24
        Width = 116
        Height = 13
        Caption = 'N'#227'o ser'#227'o exibidos aqui.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 77
        Top = 15
        Width = 196
        Height = 21
        Enabled = False
        TabOrder = 0
      end
    end
    inherited DBGrid1: TDBGrid
      Left = 330
      Top = 66
      Width = 316
      Height = 310
      Columns = <
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_menu'
          Title.Caption = 'Descri'#231#227'o'
          Width = 195
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_menu'
          Title.Caption = 'Nome Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_funcionario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_menu'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_menu_1'
          Visible = False
        end>
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 66
      Width = 296
      Height = 310
      Align = alLeft
      DataSource = DsPermissoes
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
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_menu'
          Title.Caption = 'Descri'#231#227'o'
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_menu'
          Title.Caption = 'Nome Interno'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_menu'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 296
      Top = 66
      Width = 34
      Height = 310
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object BitBtnMandaUm: TBitBtn
        Left = 3
        Top = 63
        Width = 30
        Height = 24
        Caption = '>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnMandaUmClick
      end
      object BitBtnMandaTodos: TBitBtn
        Left = 3
        Top = 92
        Width = 30
        Height = 20
        Caption = '>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnMandaTodosClick
      end
      object BitBtnRetornaUm: TBitBtn
        Left = 3
        Top = 132
        Width = 30
        Height = 24
        Caption = '<'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtnRetornaUmClick
      end
      object BitBtnRetornaTodos: TBitBtn
        Left = 4
        Top = 159
        Width = 29
        Height = 22
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
    DataSet = ADOQueryPermissaoFunc
  end
  object ADOQueryPermissoes: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from menu_disponivel m'
      'where not exists'
      '(select * from  permissao_funcionario f where cd_funcionario ='
      ' 1'
      ' and m.cd_menu = f.cd_menu'
      ')'
      ' '
      
        'and not exists  (select * from permissao_grupo g where g.cd_grup' +
        'o ='
      '1'
      'and g.cd_menu = m.cd_menu)'
      ''
      'order by menu,ds_menu')
    Left = 130
    Top = 112
  end
  object DsPermissoes: TDataSource
    DataSet = ADOQueryPermissoes
    Left = 130
    Top = 168
  end
  object ADOQueryPermissaoFunc: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from  permissao_funcionario f, menu_disponivel m where ' +
        'f.cd_funcionario ='
      ' 1'
      ' and m.cd_menu = f.cd_menu'
      ''
      'order by menu,ds_menu'
      '')
    Left = 418
    Top = 104
  end
end
