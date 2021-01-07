inherited FmfrRelUsuExcluidosManutAtivas: TFmfrRelUsuExcluidosManutAtivas
  Width = 834
  Height = 583
  Caption = 'FmfrRelUsuExcluidosManutAtivas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 155
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      Borders.FixedTop = True
    end
    inherited RLBandDetailH: TRLBand
      Top = 139
      object RLDBText1: TRLDBText
        Left = -25
        Top = 0
        Width = 87
        Height = 13
        Alignment = taRightJustify
        DataField = 'Codigo_Completo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 0
        Width = 29
        Height = 13
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 328
        Top = 0
        Width = 32
        Height = 13
        DataField = 'dtExcl'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 432
        Top = 0
        Width = 38
        Height = 13
        DataField = 'Servico'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 512
        Top = 0
        Width = 25
        Height = 13
        DataField = 'dtIni'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 624
        Top = 0
        Width = 29
        Height = 13
        DataField = 'dtFim'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 119
      Height = 20
      object RLLabel1: TRLLabel
        Left = 16
        Top = 5
        Width = 47
        Height = 13
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 66
        Top = 5
        Width = 55
        Height = 13
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 327
        Top = 5
        Width = 60
        Height = 13
        Caption = 'EXCLUS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 431
        Top = 5
        Width = 51
        Height = 13
        Caption = 'SERVI'#199'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 510
        Top = 5
        Width = 99
        Height = 13
        Caption = 'INI TRATAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 612
        Top = 6
        Width = 103
        Height = 13
        Caption = 'FIM TRATAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 80
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
        Align = faNone
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Top = 47
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 63
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 63
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 63
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select'
      #9'a.Codigo_Completo,'
      #9'a.nome,'
      #9'convert(char(10),a.Data_Exclusao,103)  dtExcl,'
      #9'convert(char(10),b.Data_Inicial ,103)  dtIni,'
      #9'convert(char(10),b.Data_Final   ,103)  dtFim,'
      #9'b.Servico'
      ''
      ' from usuario    a,'
      '      Manutencao b'
      ''
      #9'  where Data_Exclusao between'
      '    '#39#39' and '#39#39
      #9'    and a.Codigo_Completo = b.usuario'
      '     and b.Data_Final > a.Data_Exclusao'
      ''
      ''
      '')
    Left = 304
    Top = 184
  end
end
