inherited FmExecutaSql: TFmExecutaSql
  Left = 69
  Top = 58
  Width = 679
  Height = 488
  Caption = 'Executa comando/Lista tabelas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 449
  end
  inherited PanelRigth: TPanel
    Left = 653
    Height = 449
  end
  inherited PanelCenter: TPanel
    Width = 643
    Height = 449
    inherited PanelBotton: TPanel
      Top = 408
      Width = 643
      object Label3: TLabel [0]
        Left = 7
        Top = 14
        Width = 85
        Height = 13
        Caption = 'Qtde Registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 445
        Width = 198
        inherited BitBtnSair: TBitBtn
          Left = 121
        end
        object Button1: TButton
          Left = 42
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Processar(F5)'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object Button2: TButton
        Left = 337
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 416
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Excel'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 176
        Top = 8
        Width = 76
        Height = 25
        Caption = '&Abrir script'
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 257
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Salvar Script'
        TabOrder = 4
        OnClick = Button5Click
      end
    end
    inherited PanelTop: TPanel
      Width = 643
      Height = 163
      inherited Bevel1: TBevel
        Top = 153
        Width = 643
      end
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        Caption = 'Tabela'
      end
      object Label2: TLabel
        Left = 4
        Top = 40
        Width = 45
        Height = 13
        Caption = 'Comando'
      end
      object Memo1: TMemo
        Left = 0
        Top = 56
        Width = 643
        Height = 97
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 47
        Top = 10
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = ComboBox1Change
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 163
      Width = 643
      Height = 245
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 163
      Width = 643
      Height = 245
      ActivePage = TbsGrid
      Align = alClient
      TabOrder = 3
      OnChange = PageControl1Change
      object TbsGrid: TTabSheet
        Caption = '&Grade'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 635
          Height = 217
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Texto: TTabSheet
        Caption = '&Texto'
        ImageIndex = 1
        object RichEdit1: TRichEdit
          Left = 0
          Top = 0
          Width = 643
          Height = 229
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from tbsys')
  end
  object QueryTabelas: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select cast(name as varchar(150)) as tabela, id as indice from s' +
        'ysobjects where xtype = '#39'U'#39' order by 1'
      ' ')
    Left = 378
    Top = 48
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 344
    Top = 200
  end
end
