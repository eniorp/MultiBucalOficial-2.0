object FmVrEmReal: TFmVrEmReal
  Left = 192
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Valor em R$'
  ClientHeight = 164
  ClientWidth = 377
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
    Left = 8
    Top = 8
    Width = 361
    Height = 145
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 49
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 42
      Height = 16
      Caption = 'Label2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditVr: TEdit
      Left = 63
      Top = 47
      Width = 107
      Height = 21
      TabOrder = 0
      OnKeyPress = EditVrKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 168
      Top = 104
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 256
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      Kind = bkCancel
    end
  end
end
