object FormFiltro: TFormFiltro
  Left = 288
  Top = 239
  ActiveControl = MaskEditData
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Filtro'
  ClientHeight = 76
  ClientWidth = 185
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
    Left = 10
    Top = 18
    Width = 67
    Height = 13
    Caption = 'Vencimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MaskEditData: TMaskEdit
    Left = 10
    Top = 38
    Width = 75
    Height = 21
    EditMask = '!90/90/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MaskEditDataExit
    OnKeyDown = MaskEditDataKeyDown
  end
  object BitBtn1: TBitBtn
    Left = 100
    Top = 35
    Width = 75
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
