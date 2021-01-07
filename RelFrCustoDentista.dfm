inherited FmFrCustoDentista: TFmFrCustoDentista
  Width = 831
  Height = 644
  Caption = 'FmFrCustoDentista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    ShowProgress = False
    inherited RLBandSummaryH: TRLBand
      Top = 132
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      Borders.FixedTop = True
      Font.Height = -9
      Font.Style = [fsBold]
      ParentFont = False
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 14
        Width = 98
        Font.Style = []
        Text = 'Qtde :'
      end
      object RLDBResult1: TRLDBResult
        Left = 370
        Top = 13
        Width = 121
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Dentista'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult2: TRLDBResult
        Left = 439
        Top = 11
        Width = 126
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Protetico'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult3: TRLDBResult
        Left = 563
        Top = 10
        Width = 73
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'saldo'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult4: TRLDBResult
        Left = 336
        Top = 13
        Width = 74
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult5: TRLDBResult
        Left = 229
        Top = 13
        Width = 108
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Bruto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult7: TRLDBResult
        Left = 195
        Top = 13
        Width = 75
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'qtOrc'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0'
        Info = riSum
      end
      object RLDBResult6: TRLDBResult
        Left = 506
        Top = 9
        Width = 206
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'SUM(SALDO) / SUM(QTORC)'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 116
      Font.Height = -9
      ParentFont = False
      object RLDBText1: TRLDBText
        Left = 3
        Top = 2
        Width = 35
        Height = 11
        Alignment = taRightJustify
        DataField = 'dentista'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 41
        Top = 2
        Width = 165
        Height = 13
        AutoSize = False
        DataField = 'nm_dentista'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 418
        Top = 2
        Width = 70
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Dentista'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText4: TRLDBText
        Left = 277
        Top = 2
        Width = 58
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Bruto'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText5: TRLDBText
        Left = 377
        Top = 2
        Width = 31
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText6: TRLDBText
        Left = 489
        Top = 2
        Width = 72
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'Valor_Protetico'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText7: TRLDBText
        Left = 602
        Top = 2
        Width = 30
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'saldo'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText8: TRLDBText
        Left = 238
        Top = 2
        Width = 32
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'qtOrc'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0'
      end
      object RLDBText9: TRLDBText
        Left = 677
        Top = 3
        Width = 34
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'media'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 100
      Font.Height = -9
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 6
        Top = 0
        Width = 45
        Height = 11
        Caption = 'C'#211'DIGO'
      end
      object RLLabel2: TRLLabel
        Left = 56
        Top = 0
        Width = 56
        Height = 11
        Caption = 'DENTISTA'
      end
      object RLLabel3: TRLLabel
        Left = 365
        Top = 0
        Width = 51
        Height = 11
        Caption = 'A PAGAR'
      end
      object RLLabel5: TRLLabel
        Left = 300
        Top = 2
        Width = 39
        Height = 11
        Caption = 'TOTAL'
      end
      object RLLabel6: TRLLabel
        Left = 436
        Top = 2
        Width = 56
        Height = 11
        Caption = 'DENTISTA'
      end
      object RLLabel7: TRLLabel
        Left = 501
        Top = 2
        Width = 65
        Height = 11
        Caption = 'PROT'#201'TICO'
      end
      object RLLabel8: TRLLabel
        Left = 597
        Top = 2
        Width = 38
        Height = 11
        Caption = 'SALDO'
      end
      object RLLabel9: TRLLabel
        Left = 241
        Top = 3
        Width = 31
        Height = 11
        Caption = 'QTDE'
      end
      object RLLabel10: TRLLabel
        Left = 675
        Top = 3
        Width = 38
        Height = 11
        Caption = 'M'#201'DIA'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 61
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 21
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 39
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 39
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 39
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 44
        Width = 44
        Height = 11
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_RelCustoComOrcamento
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'set dateformat dmy'
      ''
      'select '
      #9'o.dentista, '
      '    d.nome nm_dentista, count(distinct o.numero) qtOrc,'
      #9'Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100))  as Valor,'
      #9'Sum(i.Valor_Bruto)     as Valor_Bruto,'
      #9'Sum(i.Valor_Dentista)  as Valor_Dentista,'
      #9'Sum(i.Valor_Protetico) as Valor_Protetico,'
      
        '    Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isnul' +
        'l(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) saldo'
      
        '    --sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isn' +
        'ull(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) / count(d' +
        'istinct o.numero) media'
      'from'
      #9'orcamento o,'
      #9'Itens_Orcamento i,'
      #9'dentista d'
      ''
      'where'
      '   '#9'    o.numero = i.orcamento'
      '        and d.codigo = o.dentista'
      '        and  o.Data_Conferencia between'
      '        '#39'01/01/2008'#39' and '#39'10/01/2008'#39
      '        and o.autorizado = 1'
      'group by'
      #9'o.dentista,'
      '       d.nome'
      ''
      'order by'
      '        8')
    Left = 248
    Top = 192
  end
  object sp_RelCustoComOrcamento: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_RelCustoComOrcamento'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@DtIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@Dtfim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@DentIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Dentfim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@ServIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@ServFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Ordem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end>
    Left = 384
    Top = 192
  end
end
