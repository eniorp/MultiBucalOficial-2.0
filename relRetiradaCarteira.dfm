inherited FmFrRetiradaCarteira: TFmFrRetiradaCarteira
  Width = 872
  Height = 592
  Caption = 'FmFrRetiradaCarteira'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandDetailH: TRLBand
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 87
        Height = 13
        DataField = 'Codigo_Completo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 0
        Width = 30
        Height = 13
        DataField = 'Nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 384
        Top = 0
        Width = 54
        Height = 13
        DataField = 'dtRetirada'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 47
        Height = 13
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 72
        Top = 2
        Width = 89
        Height = 13
        Caption = 'NOME USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 384
        Top = 2
        Width = 155
        Height = 13
        Caption = 'DATA RETIRADA CARTEIRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      object RLLabel4: TRLLabel
        Left = 8
        Top = 24
        Width = 47
        Height = 13
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'set dateformat dmy select codigo_completo,nome,convert(char(10),' +
        'dt_retirada_carteira,103) dtRetirada from usuario where dt_retir' +
        'ada_carteira between '
      #39'01/01/2010'#39' and '#39'31/01/2010'#39
      'order by nome')
    Left = 304
    Top = 184
  end
end
