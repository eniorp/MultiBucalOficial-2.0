object FmFortesRepPadrao: TFmFortesRepPadrao
  Left = 193
  Top = 115
  Width = 696
  Height = 480
  Caption = 'FmFortesRepPadrao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportH: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = True
    Borders.DrawRight = False
    Borders.DrawBottom = True
    DataSource = DataSourceH
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Title = 'RELAT'#211'RIO PADR'#195'O'
    ExpressionParser = RLExpressionParserH
    object RLBandSummaryH: TRLBand
      Left = 38
      Top = 114
      Width = 718
      Height = 31
      BandType = btSummary
      object RLSystemInfoQtRegH: TRLSystemInfo
        Left = 5
        Top = 1
        Width = 172
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'Qtde Registros : '
      end
    end
    object RLBandDetailH: TRLBand
      Left = 38
      Top = 98
      Width = 718
      Height = 16
    end
    object RLBandColumnHeaderH: TRLBand
      Left = 38
      Top = 82
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
    end
    object RLBandHeaderH: TRLBand
      Left = 38
      Top = 39
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfoTitH: TRLSystemInfo
        Left = 333
        Top = 12
        Width = 52
        Height = 18
        Align = faCenter
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itTitle
        ParentFont = False
      end
      object RLSystemInfoEmtidoH: TRLSystemInfo
        Left = 623
        Top = 8
        Width = 86
        Height = 10
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itNow
        ParentFont = False
        Text = 'EMITIDO EM : '
      end
      object RLSystemInfoLastPgH: TRLSystemInfo
        Left = 684
        Top = 24
        Width = 30
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
      end
      object RLLabelBarraH: TRLLabel
        Left = 675
        Top = 24
        Width = 9
        Height = 13
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfoPgH: TRLSystemInfo
        Left = 559
        Top = 24
        Width = 115
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g : '
      end
      object RLLabelEmpresaH: TRLLabel
        Left = 6
        Top = 6
        Width = 130
        Height = 10
        Caption = 'RIBEIR'#195'O MULTIODONTO LTDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLExpressionParserH: TRLExpressionParser
    Left = 448
    Top = 360
  end
  object DataSourceH: TDataSource
    Left = 205
    Top = 272
  end
end
