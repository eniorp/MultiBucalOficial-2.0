object fmParamPrevMens: TfmParamPrevMens
  Left = 192
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de previs'#227'o de mensalidade'
  ClientHeight = 202
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 60
    Top = 87
    Width = 216
    Height = 51
    Caption = '&Listar or'#231'amentos com vencimentos entre'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 114
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 25
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEditDtFim: TMaskEdit
      Left = 127
      Top = 20
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 60
    Top = 23
    Width = 216
    Height = 51
    Caption = 'Data Base'
    TabOrder = 1
    object MaskEditDtBase: TMaskEdit
      Left = 121
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 153
    Width = 81
    Height = 25
    Caption = '&Imprimir'
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
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
    Left = 193
    Top = 153
    Width = 81
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    Kind = bkClose
  end
end
