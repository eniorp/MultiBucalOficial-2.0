object FmBaca: TFmBaca
  Left = 192
  Top = 115
  Width = 458
  Height = 215
  Caption = 'FmBaca'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 57
    Height = 13
    Caption = 'Acrescentar'
  end
  object Label2: TLabel
    Left = 119
    Top = 16
    Width = 94
    Height = 13
    Caption = 'Dias ao vencimento'
  end
  object UpDown1: TUpDown
    Left = 97
    Top = 11
    Width = 16
    Height = 21
    Associate = Edit1
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 72
    Top = 11
    Width = 25
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 43
    Width = 425
    Height = 99
    Caption = 'Cobrar Boleto Banc'#225'rio?'
    ItemIndex = 0
    Items.Strings = (
      'Cobrar Boleto de todos os Contrantantes'
      'N'#227'o cobrar Boleto'
      
        'Cobrar Boleto apenas dos contratantes parametrizados para cobrar' +
        ' taxa de boleto')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 135
    Top = 147
    Width = 207
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
