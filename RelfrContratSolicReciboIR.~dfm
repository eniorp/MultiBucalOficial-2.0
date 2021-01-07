inherited FmfrContratSolicReciboIR: TFmfrContratSolicReciboIR
  Left = 438
  Top = 99
  Width = 814
  Height = 605
  Caption = 'FmfrContratSolicReciboIR'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 121
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 11
      end
      object RLDBResult1: TRLDBResult
        Left = 481
        Top = 8
        Width = 82
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'vr_pago'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 105
      object RLDBText1: TRLDBText
        Left = -22
        Top = 0
        Width = 77
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_contratante'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 66
        Top = 0
        Width = 60
        Height = 13
        DataField = 'contratante'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 278
        Top = 0
        Width = 63
        Height = 13
        DataField = 'dtSolicitacao'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 397
        Top = 0
        Width = 37
        Height = 13
        DataField = 'apelido'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 513
        Top = 0
        Width = 51
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'vr_pago'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Height = 23
      object RLLabel1: TRLLabel
        Left = 9
        Top = 3
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
        Left = 65
        Top = 2
        Width = 83
        Height = 13
        Caption = 'CONTRATANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 279
        Top = 2
        Width = 73
        Height = 13
        Caption = 'DATA SOLIC.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 399
        Top = 2
        Width = 64
        Height = 13
        Caption = 'OPERADOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 529
        Top = 2
        Width = 40
        Height = 13
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      object RLLabel6: TRLLabel
        Left = 8
        Top = 21
        Width = 27
        Height = 13
        Caption = '2008'
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
      
        'select r.*, c.nome as contratante, o.apelido from ReciboIR_contr' +
        'atante R, contratante c, operador o'
      
        'where o.codigo = r.cd_funcionario and r.cd_contratante = c.codig' +
        'o'
      '')
    Left = 304
    Top = 184
  end
end
