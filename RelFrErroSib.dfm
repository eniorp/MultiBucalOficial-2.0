inherited FrRelErroSib: TFrRelErroSib
  Width = 1230
  Height = 510
  Caption = 'FrRelErroSib'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Width = 1123
    Height = 794
    PageSetup.Orientation = poLandscape
    inherited RLBandSummaryH: TRLBand
      Top = 116
      Width = 1047
    end
    inherited RLBandDetailH: TRLBand
      Top = 100
      Width = 1047
      object RLDBText1: TRLDBText
        Left = 40
        Top = 3
        Width = 40
        Height = 10
        DataField = 'cd_usuario'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 104
        Top = 3
        Width = 43
        Height = 10
        DataField = 'nm_usuario'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 304
        Top = 3
        Width = 29
        Height = 10
        DataField = 'ds_erro'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 592
        Top = 3
        Width = 35
        Height = 10
        DataField = 'ds_causa'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 1015
        Top = 3
        Width = 29
        Height = 10
        Alignment = taRightJustify
        DataField = 'cd_erro'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 832
        Top = 3
        Width = 44
        Height = 10
        DataField = 'campo_erro'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = -8
        Top = 3
        Width = 39
        Height = 10
        Alignment = taRightJustify
        DataField = 'tp_detalhe'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Width = 1047
      Height = 18
      Margins.BottomMargin = 1.000000000000000000
      object RLLabel1: TRLLabel
        Left = 4
        Top = 0
        Width = 16
        Height = 10
        Caption = 'TIP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 41
        Top = 0
        Width = 35
        Height = 10
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 304
        Top = 0
        Width = 25
        Height = 10
        Caption = 'ERRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 592
        Top = 0
        Width = 53
        Height = 10
        Caption = 'CAUSA ERRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 832
        Top = 0
        Width = 69
        Height = 10
        Caption = 'CAMPO DO ERRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1000
        Top = 0
        Width = 38
        Height = 10
        Caption = 'C'#211'D ERR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 105
        Top = 0
        Width = 40
        Height = 10
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Width = 1047
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 497
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Left = 959
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Left = 1012
      end
      inherited RLLabelBarraH: TRLLabel
        Left = 1003
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Left = 887
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = FmCargaErroSib.ADOQuery1
  end
end
