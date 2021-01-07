object FmNetSend: TFmNetSend
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Serviço Mensageiro :-)'
  ClientHeight = 113
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 385
    Height = 13
    Caption = 
      'ATENÇÃO - Este programa não está em produção, todas as alteraçõe' +
      's realizadas'
  end
  object Label2: TLabel
    Left = 11
    Top = 33
    Width = 348
    Height = 13
    Caption = 
      'serão armazenadas somente em protótipo. Esta é uma versão para t' +
      'estes.'
  end
  object Button1: TButton
    Left = 166
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
end
