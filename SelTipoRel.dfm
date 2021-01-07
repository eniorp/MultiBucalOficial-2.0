object fmTipoRel: TfmTipoRel
  Left = 249
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Escolha o Tipo de Visualiza'#231#227'o'
  ClientHeight = 156
  ClientWidth = 261
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
  object ComboBox1: TComboBox
    Left = 32
    Top = 40
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Relat'#243'rio'
    Items.Strings = (
      'Relat'#243'rio'
      'Gr'#225'fico')
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 96
    Width = 185
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    Kind = bkOK
  end
end
