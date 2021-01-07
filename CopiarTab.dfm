object FmCopiarTab: TFmCopiarTab
  Left = 466
  Top = 131
  BorderStyle = bsDialog
  Caption = 'Copiar Tabela'
  ClientHeight = 197
  ClientWidth = 167
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 122
    Height = 13
    Caption = 'C'#243'd Tabela a ser copiada'
  end
  object Label2: TLabel
    Left = 10
    Top = 63
    Width = 93
    Height = 13
    Caption = 'Acr'#233'scimo Valor (%)'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object EditAcresDent: TEdit
    Left = 8
    Top = 77
    Width = 129
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Button1: TButton
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Copiar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
