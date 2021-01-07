inherited FmPadraoExcel: TFmPadraoExcel
  Caption = 'FmPadraoExcel'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    object Label5: TLabel [0]
      Left = 144
      Top = 64
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    inherited DBGrid1: TDBGrid [1]
      Left = 8
      Align = alNone
      Visible = False
    end
    object PageControl1: TPageControl [2]
      Left = 0
      Top = 62
      Width = 508
      Height = 233
      ActivePage = TbsGrid
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 3
      OnChange = PageControl1Change
      object TbsGrid: TTabSheet
        Caption = '&Grade'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 500
          Height = 202
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
          Width = 500
          Height = 202
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
    inherited PanelBotton: TPanel [3]
      object Label6: TLabel [0]
        Left = 7
        Top = 11
        Width = 27
        Height = 13
        Caption = 'Fonte'
        Visible = False
      end
      inherited Panel1: TPanel
        Left = 252
        Width = 256
        inherited BitBtnSair: TBitBtn
          Left = 169
        end
        object Button2: TButton
          Left = 8
          Top = 8
          Width = 76
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 89
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Excel'
          TabOrder = 2
          OnClick = Button3Click
        end
      end
      object ComboBox1: TComboBox
        Left = 39
        Top = 9
        Width = 54
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Visible = False
        OnChange = ComboBox1Change
        Items.Strings = (
          '6'
          '8'
          '10'
          '12'
          '14')
      end
    end
    inherited PanelTop: TPanel [4]
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 240
    Top = 208
  end
  object PsD: TPrinterSetupDialog
    Left = 230
    Top = 145
  end
end
