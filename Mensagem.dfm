object FmMensagem: TFmMensagem
  Left = 154
  Top = 105
  BorderStyle = bsNone
  Caption = 'FmMensagem'
  ClientHeight = 286
  ClientWidth = 606
  Color = clRed
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 286
    Align = alClient
    BevelWidth = 3
    Color = clRed
    TabOrder = 0
    object Label1: TLabel
      Left = 240
      Top = 8
      Width = 136
      Height = 25
      Caption = 'A T E N '#199' '#195' O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 162
      Top = 238
      Width = 196
      Height = 13
      Caption = 'N'#227'o Mostrar  mais essa mensagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 27
      Top = 37
      Width = 562
      Height = 189
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CheckBoxNMostrar: TCheckBox
      Left = 142
      Top = 236
      Width = 16
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
end
