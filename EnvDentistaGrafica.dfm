object FmEnvDentistaGrafica: TFmEnvDentistaGrafica
  Left = 192
  Top = 114
  BorderStyle = bsDialog
  Caption = 'ENVIO DE ALTERA'#199#213'ES PARA GR'#193'FICA'
  ClientHeight = 203
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 31
    Top = 24
    Width = 387
    Height = 25
    Caption = 
      'Visualizar dentistas que sofreram altera'#231#227'o e ainda n'#227'o foram en' +
      'viados '#224' gr'#225'fica'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 64
    Width = 387
    Height = 25
    Caption = 'Enviar dentistas que sofreram altera'#231#227'o para a gr'#225'fica'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 31
    Top = 105
    Width = 387
    Height = 25
    Caption = 'Cancelar '#250'ltimo envio para a gr'#225'fica'
    TabOrder = 2
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
    Kind = bkClose
  end
end
