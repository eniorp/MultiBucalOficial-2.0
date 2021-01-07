object FmParamRelEstatFat: TFmParamRelEstatFat
  Left = 517
  Top = 159
  BorderStyle = bsDialog
  Caption = 'Estatística Gerencial Faturamento/Contas a receber'
  ClientHeight = 198
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 109
    Top = 161
    Width = 81
    Height = 25
    Caption = '&Imprimir'
    Enabled = False
    TabOrder = 3
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
    Left = 194
    Top = 161
    Width = 81
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = False
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 7
    Width = 263
    Height = 51
    Caption = '&Intervalo de datas(Vencimento)'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 127
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 31
      Top = 22
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnChange = MaskEditDtIniChange
    end
    object MaskEditDtFim: TMaskEdit
      Left = 143
      Top = 23
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnClick = MaskEditDtIniChange
    end
  end
  object RadioGroupTpRel: TRadioGroup
    Left = 14
    Top = 112
    Width = 260
    Height = 44
    Caption = 'Tipo de Relatório'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '&Resumido'
      '&Detalhado')
    TabOrder = 2
    OnClick = MaskEditDtIniChange
  end
  object RadioGroupTp: TRadioGroup
    Left = 14
    Top = 61
    Width = 261
    Height = 44
    Caption = 'Tipo'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      '&Faturamento'
      '&Contas a Receber')
    ParentFont = False
    TabOrder = 1
    OnClick = MaskEditDtIniChange
  end
end
