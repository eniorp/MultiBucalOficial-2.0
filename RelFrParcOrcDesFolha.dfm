inherited FmFrParcOrcDesFolha: TFmFrParcOrcDesFolha
  Width = 833
  Height = 537
  Caption = 'FmFrParcOrcDesFolha'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = -8
    inherited RLBandSummaryH: TRLBand
      Top = 145
      object RLDBResult1: TRLDBResult
        Left = 604
        Top = 8
        Width = 66
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 129
      object RLDBText1: TRLDBText
        Left = 21
        Top = 0
        Width = 54
        Height = 13
        Alignment = taRightJustify
        DataField = 'orcamento'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 87
        Top = 0
        Width = 38
        Height = 13
        Alignment = taRightJustify
        DataField = 'parcela'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 139
        Top = 0
        Width = 58
        Height = 13
        DataField = 'vencimento'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 192
        Top = 0
        Width = 83
        Height = 13
        Alignment = taRightJustify
        DataField = 'codigo_completo'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 288
        Top = 0
        Width = 29
        Height = 13
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 636
        Top = 0
        Width = 35
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 113
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 72
        Height = 13
        Caption = 'OR'#199'AMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 92
        Top = 0
        Width = 33
        Height = 13
        Caption = 'PARC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 144
        Top = 0
        Width = 45
        Height = 13
        Caption = 'VENCTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 221
        Top = 0
        Width = 52
        Height = 13
        Caption = 'C'#211'D USU'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 288
        Top = 0
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
      object RLLabel6: TRLLabel
        Left = 632
        Top = 0
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
      Height = 74
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 27
      end
      object RLLabel7: TRLLabel
        Left = 8
        Top = 54
        Width = 46
        Height = 13
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
    Left = 117
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'set dateformat dmy '
      'select '
      ''
      #9'p.orcamento,'
      #9'p.parcela,'
      #9'p.vencimento,'
      #9'u.codigo_completo,'
      #9'u.nome,'
      #9'p.valor'
      ' '
      'from '
      #9'prestacoes p, '
      #9'orcamento o, '
      #9'usuario u '
      ''
      'where '
      #9'    p.orcamento = o.numero '
      #9'and u.codigo_completo = o.usuario'
      #9'and p.vencimento between'#9#39'01/01/2009'#39' and '#39'05/01/2009'#39)
    Left = 184
    Top = 168
  end
end
