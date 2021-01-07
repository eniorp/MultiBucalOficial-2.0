object FmSelContrEtiqCobr: TFmSelContrEtiqCobr
  Left = 148
  Top = 97
  Width = 558
  Height = 486
  Caption = 'Sele'#231#227'o de contratante para emiss'#227'o de etiquetas de cobran'#231'a'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 10
    Height = 459
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 540
    Top = 0
    Width = 10
    Height = 459
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 10
    Top = 0
    Width = 530
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 530
      Height = 121
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 9
        Top = 8
        Width = 77
        Height = 13
        Caption = 'C'#243'd Contratante'
      end
      object LabelNmcontrat: TLabel
        Left = 200
        Top = 24
        Width = 324
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 10
        Top = 24
        Width = 88
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 111
        Top = 21
        Width = 75
        Height = 25
        Caption = '&Selecionar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 56
        Width = 527
        Height = 46
        Caption = 'Par'#226'metros de Impress'#227'o'
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 6
          Top = 23
          Width = 110
          Height = 13
          Caption = 'Imprimir 2'#186' Coluna ap'#243's'
        end
        object Label3: TLabel
          Left = 159
          Top = 23
          Width = 51
          Height = 13
          Caption = 'Caracteres'
        end
        object Label4: TLabel
          Left = 262
          Top = 22
          Width = 99
          Height = 13
          Caption = 'Imprimir 2'#186' linha ap'#243's'
        end
        object Label5: TLabel
          Left = 415
          Top = 22
          Width = 51
          Height = 13
          Caption = 'Caracteres'
        end
        object EditCarcCol: TEdit
          Left = 120
          Top = 18
          Width = 34
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object EditCaracRow: TEdit
          Left = 369
          Top = 17
          Width = 34
          Height = 21
          TabOrder = 1
          OnKeyPress = Edit1KeyPress
        end
      end
      object Button2: TButton
        Left = 191
        Top = 21
        Width = 75
        Height = 25
        Caption = 'Parametros'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 418
      Width = 530
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object CheckBox1: TCheckBox
        Left = 6
        Top = 4
        Width = 125
        Height = 15
        Caption = 'Selecionar tudo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object BitBtnImprimir: TBitBtn
        Left = 378
        Top = 8
        Width = 72
        Height = 25
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object BitBtnSair: TBitBtn
        Left = 456
        Top = 8
        Width = 72
        Height = 25
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Kind = bkClose
      end
      object BitBtn1: TBitBtn
        Left = 240
        Top = 9
        Width = 134
        Height = 25
        Caption = 'Incluir Aniversariantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
    object ListView: TListView
      Left = 0
      Top = 121
      Width = 530
      Height = 297
      Cursor = crHandPoint
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          Caption = 'C'#243'd'
          Width = 70
        end
        item
          Caption = 'Contratante'
          Width = 350
        end
        item
          Alignment = taCenter
          Caption = 'Qtde Parcelas'
          Width = 100
        end>
      FlatScrollBars = True
      TabOrder = 2
      ViewStyle = vsReport
    end
  end
  object QueryContratantes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from contratante where codigo ='
      '-1')
    Left = 290
    Top = 120
  end
end
