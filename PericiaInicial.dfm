object FmPericiaInicial: TFmPericiaInicial
  Left = 192
  Top = 107
  Width = 289
  Height = 192
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pericia Inicial?'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 249
    Height = 97
    Caption = 'Realizou Pericia Inicial?'
    Items.Strings = (
      '&Sim'
      '&N'#227'o')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 125
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
