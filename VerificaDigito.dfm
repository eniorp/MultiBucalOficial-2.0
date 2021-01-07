object FormVerificaDigito: TFormVerificaDigito
  Left = 246
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Verifica Dígito Conta Corrente'
  ClientHeight = 173
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroupBancos: TRadioGroup
    Left = 11
    Top = 12
    Width = 291
    Height = 105
    Caption = 'Banco'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Bradesco'
      'Banespa'
      'Caixa'
      'Itaú'
      'Unibanco'
      'HSBC'
      'Brasil'
      'Real'
      'Santander')
    ParentFont = False
    TabOrder = 0
  end
  object BitBtnVerifica: TBitBtn
    Left = 52
    Top = 136
    Width = 85
    Height = 25
    Caption = '&Verifica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnVerificaClick
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
      33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
      0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
      8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
      0083333333338F38888888F3333333330F000F000083333333338F88838888F3
      333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
      33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
      0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
      88833388F333333333333333330083333333333333333388FF33333333333333
      3330033333333333333333388F33333333333333333303333333333333333333
      8333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 178
    Top = 136
    Width = 85
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Kind = bkClose
  end
end
