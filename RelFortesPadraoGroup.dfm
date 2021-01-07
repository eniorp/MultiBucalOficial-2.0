inherited FmFortesPadraoGroup: TFmFortesPadraoGroup
  Width = 824
  Height = 490
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 189
      Borders.Sides = sdCustom
      Borders.DrawTop = True
    end
    inherited RLBandDetailH: TRLBand
      Top = 188
      Height = 1
      Visible = False
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 102
    end
    inherited RLBandHeaderH: TRLBand
      Height = 63
      Borders.DrawBottom = False
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 22
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 118
      Width = 718
      Height = 70
      DataFields = 'origem'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 22
        Width = 718
        Height = 16
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 38
        Width = 718
        Height = 26
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
    end
  end
  inherited DataSourceH: TDataSource
    Left = 304
    Top = 264
  end
end
