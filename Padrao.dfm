object FmPadrao: TFmPadrao
  Left = 116
  Top = 92
  Width = 544
  Height = 375
  Caption = 'FmPadrao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 10
    Height = 348
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
  end
  object PanelRigth: TPanel
    Left = 526
    Top = 0
    Width = 10
    Height = 348
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
  end
  object PanelCenter: TPanel
    Left = 10
    Top = 0
    Width = 516
    Height = 348
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PanelBotton: TPanel
      Left = 0
      Top = 307
      Width = 516
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel1: TPanel
        Left = 424
        Top = 0
        Width = 92
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtnSair: TBitBtn
          Left = 9
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Kind = bkClose
        end
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 516
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 0
        Top = 52
        Width = 516
        Height = 10
        Align = alBottom
        Shape = bsTopLine
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 62
      Width = 516
      Height = 245
      Align = alClient
      DataSource = DataSource1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    Left = 162
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 82
    Top = 208
  end
  object ADOQueryH: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter procedure sp_bbota'
      'as '
      'select getdate()')
    Left = 224
    Top = 192
  end
end
