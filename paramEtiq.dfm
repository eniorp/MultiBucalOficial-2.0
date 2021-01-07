object FmParamEtiq: TFmParamEtiq
  Left = 345
  Top = 149
  Width = 246
  Height = 171
  Caption = 'Par'#226'metros Etiqueta'
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
  object Label1: TLabel
    Left = 16
    Top = 15
    Width = 163
    Height = 13
    Caption = 'Tamanho Etiqueta + espa'#231'amento'
  end
  object Label2: TLabel
    Left = 96
    Top = 52
    Width = 80
    Height = 13
    Caption = 'Margem Superior'
  end
  object Label3: TLabel
    Left = 99
    Top = 82
    Width = 76
    Height = 13
    Caption = 'altura da p'#225'gina'
  end
  object Edit1: TEdit
    Left = 182
    Top = 11
    Width = 53
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 181
    Top = 47
    Width = 53
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 80
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 180
    Top = 79
    Width = 53
    Height = 21
    TabOrder = 3
  end
end
