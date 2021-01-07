object FmPesqLogErro: TFmPesqLogErro
  Left = 192
  Top = 107
  Width = 585
  Height = 480
  Caption = 'Consulta log de erros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 537
    Height = 113
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 144
    Width = 545
    Height = 193
    DataField = 'msgErro'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 16
    Top = 344
    Width = 425
    Height = 81
    Lines.Strings = (
      'select * from log_erro order by 1 desc')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 464
    Top = 368
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from log_erro order by 1 desc')
    Left = 344
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 88
  end
end
