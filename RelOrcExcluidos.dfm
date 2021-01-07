inherited FmFrOrcExcluidos: TFmFrOrcExcluidos
  Width = 829
  Height = 596
  Caption = 'FmFrOrcExcluidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 131
      Height = 47
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 13
        Width = 101
        Font.Style = []
        Text = 'Qtde : '
      end
      object RLDBResult1: TRLDBResult
        Left = 277
        Top = 8
        Width = 114
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_desconto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult2: TRLDBResult
        Left = 359
        Top = 8
        Width = 96
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_bruto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult3: TRLDBResult
        Left = 421
        Top = 8
        Width = 109
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_dentista'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult4: TRLDBResult
        Left = 475
        Top = 8
        Width = 115
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Total_Protetico'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 115
      object RLDBText1: TRLDBText
        Left = 9
        Top = 0
        Width = 39
        Height = 13
        Alignment = taRightJustify
        DataField = 'numero'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 53
        Top = 0
        Width = 28
        Height = 13
        DataField = 'DtStr'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 114
        Top = 0
        Width = 38
        Height = 13
        Alignment = taRightJustify
        DataField = 'usuario'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 157
        Top = 0
        Width = 139
        Height = 13
        AutoSize = False
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 300
        Top = 0
        Width = 42
        Height = 13
        Alignment = taRightJustify
        DataField = 'dentista'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 312
        Top = 0
        Width = 83
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_desconto'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText7: TRLDBText
        Left = 392
        Top = 0
        Width = 65
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_bruto'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText8: TRLDBText
        Left = 451
        Top = 0
        Width = 78
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'total_dentista'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText9: TRLDBText
        Left = 507
        Top = 0
        Width = 84
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Total_Protetico'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText10: TRLDBText
        Left = 623
        Top = 0
        Width = 40
        Height = 13
        DataField = 'DtEXStr'
        DataSource = DataSourceH
      end
      object RLDBText11: TRLDBText
        Left = 651
        Top = 0
        Width = 66
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_func_excl'
        DataSource = DataSourceH
      end
      object RLDBText12: TRLDBText
        Left = 576
        Top = 3
        Width = 41
        Height = 13
        Alignment = taRightJustify
        DataField = 'STATUS'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 99
      object RLLabel1: TRLLabel
        Left = 4
        Top = 0
        Width = 46
        Height = 13
        Caption = 'NUMERO'
      end
      object RLLabel2: TRLLabel
        Left = 54
        Top = 0
        Width = 30
        Height = 13
        Caption = 'DATA'
      end
      object RLLabel3: TRLLabel
        Left = 107
        Top = 0
        Width = 48
        Height = 13
        Caption = 'C'#211'D USU'
      end
      object RLLabel4: TRLLabel
        Left = 155
        Top = 0
        Width = 32
        Height = 13
        Caption = 'NOME'
      end
      object RLLabel5: TRLLabel
        Left = 304
        Top = 0
        Width = 39
        Height = 13
        Caption = 'DENTIS'
      end
      object RLLabel6: TRLLabel
        Left = 360
        Top = 0
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
      object RLLabel7: TRLLabel
        Left = 405
        Top = 0
        Width = 53
        Height = 13
        Caption = 'VR BRUTO'
      end
      object RLLabel8: TRLLabel
        Left = 464
        Top = 0
        Width = 68
        Height = 13
        Caption = 'VR DENTISTA'
      end
      object RLLabel9: TRLLabel
        Left = 546
        Top = 0
        Width = 46
        Height = 13
        Caption = 'VR PROT'
      end
      object RLLabel10: TRLLabel
        Left = 604
        Top = 0
        Width = 15
        Height = 13
        Caption = 'ST'
      end
      object RLLabel11: TRLLabel
        Left = 670
        Top = 2
        Width = 45
        Height = 13
        Caption = 'FUNC EX'
      end
      object RLLabel12: TRLLabel
        Left = 621
        Top = 2
        Width = 38
        Height = 13
        Caption = 'DT EXC'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 60
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 20
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 40
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 40
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 40
      end
      object RLLabel13: TRLLabel
        Left = 5
        Top = 40
        Width = 46
        Height = 13
        Caption = 'NUMERO'
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQueryOrcExcluido
  end
  object ADOQueryOrcExcluido: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'numero,'
      'u.nome,'
      'convert(char(10),data,103) as DtStr,'
      'usuario,'
      'dentista,'
      'total,'
      'total_bruto,'
      'total_desconto,'
      'total_dentista,'
      'Total_Protetico,'
      'status,'
      'convert(char(10),dataExcl,103) as DtEXStr,'
      'cd_func_excl'
      ''
      'from '
      '   orcamento_bck o ,'
      '   usuario u '
      'where u.codigo_completo = o.usuario '
      'and data_hora between'
      ''
      #39'01/01/1900'#39' and '#39'01/31/2002'#39
      ''
      'order by data_hora')
    Left = 296
    Top = 112
  end
end
