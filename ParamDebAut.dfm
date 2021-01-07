object FmParamDebAuto: TFmParamDebAuto
  Left = 219
  Top = 114
  Width = 292
  Height = 260
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Par'#226'metros gera'#231#227'o d'#233'b Autom'#225'tico'
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
    Left = 15
    Top = 7
    Width = 258
    Height = 146
    Caption = 'Selecione os vencimentos'
    TabOrder = 0
    object CheckBox10: TCheckBox
      Left = 10
      Top = 32
      Width = 121
      Height = 17
      Caption = 'Vencimento dia 10'
      TabOrder = 0
    end
    object CheckBox20: TCheckBox
      Left = 10
      Top = 60
      Width = 121
      Height = 17
      Caption = 'Vencimento dia 20'
      TabOrder = 1
    end
    object CheckBox25: TCheckBox
      Left = 10
      Top = 85
      Width = 121
      Height = 17
      Caption = 'Vencimento dia 25'
      TabOrder = 2
    end
    object CheckBox30: TCheckBox
      Left = 10
      Top = 112
      Width = 121
      Height = 17
      Caption = 'Vencimento dia 30'
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 192
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    Kind = bkClose
  end
  object CheckBox5: TCheckBox
    Left = 18
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Selecionar todos'
    TabOrder = 3
    OnClick = CheckBox5Click
  end
end
