object FmRelatorioRapido: TFmRelatorioRapido
  Left = 224
  Top = 118
  Width = 902
  Height = 700
  Caption = 'Relat'#243'rios R'#225'pidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 894
    Height = 649
    ActivePage = TabSheet_Cadastro
    Align = alClient
    TabOrder = 1
    OnChange = TabSheet_CadastroShow
    object TabSheet_Relatorio: TTabSheet
      Caption = 'Relat'#243'rio'
      OnShow = TabSheet_RelatorioShow
      object DBGrid2: TDBGrid
        Left = 0
        Top = 185
        Width = 886
        Height = 398
        Align = alClient
        DataSource = DS_Comando
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = Edit1KeyDown
      end
      object Panel_botoes: TPanel
        Left = 0
        Top = 583
        Width = 886
        Height = 38
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          886
          38)
        object Label8: TLabel
          Left = 8
          Top = 12
          Width = 111
          Height = 13
          Caption = 'Qtde. de Registros:'
        end
        object Button_Excel: TButton
          Left = 720
          Top = 8
          Width = 155
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Exportar para Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button_ExcelClick
        end
        object Button_Atualizar: TButton
          Left = 550
          Top = 8
          Width = 155
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Atualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button_AtualizarClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 886
        Height = 185
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 2
      end
    end
    object TabSheet_Cadastro: TTabSheet
      Caption = 'Cadastro de Relat'#243'rios'
      ImageIndex = 1
      OnShow = TabSheet_CadastroShow
      object Label3: TLabel
        Left = 16
        Top = 224
        Width = 9
        Height = 13
        Caption = 'Id'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 64
        Top = 224
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label5: TLabel
        Left = 16
        Top = 264
        Width = 19
        Height = 13
        Caption = 'Obs'
      end
      object Label6: TLabel
        Left = 16
        Top = 352
        Width = 45
        Height = 13
        Caption = 'Comando'
        FocusControl = DBMemo2
      end
      object Label7: TLabel
        Left = 704
        Top = 232
        Width = 113
        Height = 13
        Caption = 'Operadores Autorizados'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 240
        Width = 41
        Height = 21
        DataField = 'Id'
        DataSource = DS_Relatorios
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 240
        Width = 633
        Height = 21
        DataField = 'Nome'
        DataSource = DS_Relatorios
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 368
        Width = 681
        Height = 217
        DataField = 'Comando'
        DataSource = DS_Relatorios
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 592
        Width = 673
        Height = 25
        DataSource = DS_Relatorios
        Align = alCustom
        TabOrder = 3
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 280
        Width = 681
        Height = 65
        DataField = 'Obs'
        DataSource = DS_Relatorios
        TabOrder = 4
      end
      object DBGrid3: TDBGrid
        Left = 704
        Top = 248
        Width = 177
        Height = 337
        DataSource = DS_Operadores
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'apelido'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object Panel_Relatorios: TPanel
    Left = 5
    Top = 24
    Width = 882
    Height = 185
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      882
      185)
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 245
      Height = 13
      Caption = 'Procurar por ID, Nome ou Obs do Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 448
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Obs'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 48
      Width = 417
      Height = 129
      Anchors = [akLeft, akTop, akBottom]
      DataSource = DS_Relatorios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      OnKeyDown = Edit1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 280
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 297
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object DBMemo1: TDBMemo
      Left = 448
      Top = 48
      Width = 418
      Height = 97
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'Obs'
      DataSource = DS_Relatorios
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = Edit1KeyDown
    end
    object Button_Selecionar: TButton
      Left = 722
      Top = 152
      Width = 139
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Selecionar Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button_SelecionarClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 16
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
  object Query_Relatorios: TADOQuery
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    AfterScroll = Query_RelatoriosAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from RelatorioDinamico '
      'where 1=1'
      ' '
      'and (nome like '#39'%%'#39' or obs like '#39'%%'#39' or id like '#39#39')'
      ''
      ''
      ''
      'order by nome')
    Left = 528
    Top = 16
    object Query_RelatoriosId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Query_RelatoriosNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object Query_RelatoriosObs: TStringField
      FieldName = 'Obs'
      Size = 120
    end
    object Query_RelatoriosComando: TMemoField
      FieldName = 'Comando'
      BlobType = ftMemo
    end
  end
  object DS_Relatorios: TDataSource
    DataSet = Query_Relatorios
    Left = 552
    Top = 48
  end
  object Query_Comando: TADOQuery
    Connection = DM.ADOConn
    BeforeOpen = Query_ComandoBeforeOpen
    AfterOpen = Query_ComandoAfterOpen
    Parameters = <>
    Left = 504
    Top = 16
  end
  object DS_Comando: TDataSource
    DataSet = Query_Comando
    Left = 512
    Top = 48
  end
  object Query_Operadores: TADOQuery
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Id_Relatorio'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'select '
      ' codigo,apelido, id_operador '
      'from '
      ' operador o left  join '
      
        ' RelatorioDinamicoPermissao r on o.codigo = r.id_operador and id' +
        '_relatorio = :Id_Relatorio'
      'where '
      ' dtExclusao is null ')
    Left = 476
    Top = 16
    object Query_Operadorescodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object Query_Operadoresapelido: TStringField
      FieldName = 'apelido'
    end
    object Query_Operadoresid_operador: TIntegerField
      FieldName = 'id_operador'
    end
  end
  object DS_Operadores: TDataSource
    DataSet = Query_Operadores
    Left = 477
    Top = 48
  end
end
