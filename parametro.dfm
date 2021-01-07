object FmParametro: TFmParametro
  Left = 90
  Top = 111
  Width = 543
  Height = 360
  Caption = 'Manuten'#231#227'o de Par'#226'metros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 3
    Height = 326
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
  end
  object PanelRigth: TPanel
    Left = 532
    Top = 0
    Width = 3
    Height = 326
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
  end
  object PanelCenter: TPanel
    Left = 3
    Top = 0
    Width = 529
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PanelBotton: TPanel
      Left = 0
      Top = 293
      Width = 529
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel1: TPanel
        Left = 437
        Top = 0
        Width = 92
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtnSair: TBitBtn
          Left = 9
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Kind = bkClose
        end
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 529
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 0
        Top = 57
        Width = 529
        Height = 10
        Align = alBottom
        Shape = bsTopLine
      end
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 43
        Height = 13
        Caption = '&Pesquisa'
      end
      object Edit1: TEdit
        Left = 9
        Top = 22
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 216
        Top = 21
        Width = 74
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object GroupBox1: TGroupBox
        Left = 304
        Top = 4
        Width = 185
        Height = 47
        Caption = '&Classificar por'
        TabOrder = 2
        object ComboBox1: TComboBox
          Left = 8
          Top = 17
          Width = 169
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBox1Change
          Items.Strings = (
            'C'#243'digo Par'#226'metro'
            'Descri'#231#227'o Par'#226'metro'
            'Data Cria'#231#227'o do Par'#226'metro')
        end
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 67
      Width = 529
      Height = 226
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Par'#226'metros'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 521
          Height = 174
          Align = alClient
          DataSource = DsParametro
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Color = clWhite
              Expanded = False
              FieldName = 'cd_parametro'
              Title.Caption = 'C'#243'd Parametro'
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clWhite
              Expanded = False
              FieldName = 'vl_parametro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Vr Par'#226'metro'
              Width = 72
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'ds_parametro'
              Title.Caption = 'Descri'#231#227'o'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_criacao'
              Title.Caption = 'Data Cria'#231#227'o'
              Visible = True
            end>
        end
        object DBNavigator2: TDBNavigator
          Left = 0
          Top = 174
          Width = 521
          Height = 24
          DataSource = DsParametro
          Align = alBottom
          TabOrder = 1
          BeforeAction = DBNavigator2BeforeAction
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hist'#243'rio de altera'#231#227'o Par'#226'metros'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 521
          Height = 174
          Align = alClient
          Color = clInfoBk
          DataSource = DsHistParam
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'cd_parametro'
              Title.Caption = 'C'#243'd Par'#226'metro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_paramOld'
              Title.Caption = 'Vr Anterior'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_paramNew'
              Title.Caption = 'Vr Novo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data'
              Title.Caption = 'Dt Modifica'#231#227'o'
              Visible = True
            end>
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 174
          Width = 521
          Height = 24
          DataSource = DsHistParam
          Align = alBottom
          TabOrder = 1
          BeforeAction = DBNavigator1BeforeAction
        end
      end
    end
  end
  object QueryParametro: TQuery
    BeforePost = QueryParametroBeforePost
    AfterPost = QueryParametroAfterPost
    OnNewRecord = QueryParametroNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from parametro where tipo = '#39'U'#39' '
      ' '
      'order by cd_parametro')
    Left = 346
    Top = 112
  end
  object DsParametro: TDataSource
    DataSet = QueryParametro
    Left = 82
    Top = 208
  end
  object QueryHistParam: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'SELECT *FROM historico_parametro order by cd_parametro,data')
    Left = 242
    Top = 112
  end
  object DsHistParam: TDataSource
    DataSet = QueryHistParam
    Left = 122
    Top = 121
  end
end
