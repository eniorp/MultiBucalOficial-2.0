object FmParamContInad: TFmParamContInad
  Left = 192
  Top = 110
  Width = 344
  Height = 222
  Caption = 'Relatório de  Contratantes Inadimplentes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 7
    Width = 321
    Height = 48
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 16
      Width = 111
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = 'Listar Contratantes com'
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 235
      Top = 19
      Width = 78
      Height = 13
      Caption = 'títulos em atraso'
    end
    object ComboBox1: TComboBox
      Left = 124
      Top = 16
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Mais de'
        'Menos de')
    end
    object Edit1: TEdit
      Left = 202
      Top = 16
      Width = 26
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 61
    Width = 318
    Height = 60
    Caption = 'Listar Contratantes'
    Items.Strings = (
      'Que está sendo gerado fatura'
      'Que NÃO está sendo gerado fatura')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 159
    Top = 150
    Width = 81
    Height = 25
    Caption = '&Imprimir'
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
    Left = 243
    Top = 150
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
