inherited FmFrRelCustoDentDetail: TFmFrRelCustoDentDetail
  Caption = 'FmFrRelCustoDentDetail'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 213
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 13
        Width = 139
        Text = 'QTDE REG: '
      end
      object RLDBResult6: TRLDBResult
        Left = 434
        Top = 16
        Width = 135
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Dentista'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 505
        Top = 14
        Width = 139
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Protetico'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 633
        Top = 13
        Width = 81
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'saldo'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 405
        Top = 16
        Width = 80
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 310
        Top = 16
        Width = 118
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Bruto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 212
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 109
      Height = 1
    end
    inherited RLBandHeaderH: TRLBand
      Height = 70
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 26
      end
      object RLLabel9: TRLLabel
        Left = 10
        Top = 52
        Width = 56
        Height = 13
        Caption = 'DENTISTA:'
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 110
      Height = 102
      DataFields = 'dentista'
      inherited RLBand1: TRLBand
        Height = 43
        object RLDBText1: TRLDBText
          Left = 69
          Top = 5
          Width = 42
          Height = 13
          DataField = 'dentista'
          DataSource = DataSourceH
        end
        object RLLabel1: TRLLabel
          Left = 6
          Top = 6
          Width = 56
          Height = 13
          Caption = 'DENTISTA:'
        end
        object RLDBText2: TRLDBText
          Left = 118
          Top = 6
          Width = 62
          Height = 13
          DataField = 'nm_dentista'
          DataSource = DataSourceH
        end
        object RLLabel3: TRLLabel
          Left = 156
          Top = 27
          Width = 47
          Height = 13
          Caption = 'SERVI'#199'O'
        end
        object RLLabel5: TRLLabel
          Left = 399
          Top = 27
          Width = 35
          Height = 13
          Caption = 'TOTAL'
        end
        object RLLabel4: TRLLabel
          Left = 439
          Top = 27
          Width = 47
          Height = 13
          Caption = 'A PAGAR'
        end
        object RLLabel6: TRLLabel
          Left = 520
          Top = 27
          Width = 52
          Height = 13
          Caption = 'DENTISTA'
        end
        object RLLabel7: TRLLabel
          Left = 581
          Top = 27
          Width = 61
          Height = 13
          Caption = 'PROT'#201'TICO'
        end
        object RLLabel8: TRLLabel
          Left = 676
          Top = 27
          Width = 36
          Height = 13
          Caption = 'SALDO'
        end
        object RLLabel2: TRLLabel
          Left = 332
          Top = 27
          Width = 30
          Height = 13
          Caption = 'QTDE'
        end
        object RLLabel10: TRLLabel
          Left = 420
          Top = 5
          Width = 62
          Height = 13
          Caption = 'QTDE ORC: '
        end
        object RLDBText7: TRLDBText
          Left = 489
          Top = 5
          Width = 80
          Height = 13
          DataField = 'QtdeOrcamento'
          DataSource = DataSourceH
        end
        object RLLabel11: TRLLabel
          Left = 603
          Top = 5
          Width = 39
          Height = 13
          Caption = 'M'#201'DIA:'
        end
        object RLDBText12: TRLDBText
          Left = 647
          Top = 5
          Width = 39
          Height = 13
          DataFormula = 'media'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 23
          Width = 718
          Height = 1
        end
      end
      inherited RLBand2: TRLBand
        Top = 43
        Height = 19
        object RLDBText3: TRLDBText
          Left = 147
          Top = 3
          Width = 34
          Height = 13
          Alignment = taRightJustify
          DataField = 'codigo'
          DataSource = DataSourceH
        end
        object RLDBText4: TRLDBText
          Left = 185
          Top = 3
          Width = 141
          Height = 13
          AutoSize = False
          DataField = 'descricao'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 366
          Top = 3
          Width = 67
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Bruto'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText8: TRLDBText
          Left = 491
          Top = 3
          Width = 81
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Dentista'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText9: TRLDBText
          Left = 561
          Top = 3
          Width = 84
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Protetico'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText10: TRLDBText
          Left = 679
          Top = 3
          Width = 36
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'saldo'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText11: TRLDBText
          Left = 452
          Top = 3
          Width = 35
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText5: TRLDBText
          Left = 346
          Top = 3
          Width = 13
          Height = 13
          Alignment = taRightJustify
          DataField = 'qt'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 62
        Height = 36
        Borders.DrawBottom = True
        object RLDBResult1: TRLDBResult
          Left = 457
          Top = 16
          Width = 112
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Dentista'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
        object RLDBResult2: TRLDBResult
          Left = 529
          Top = 14
          Width = 115
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Protetico'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
        object RLDBResult3: TRLDBResult
          Left = 647
          Top = 13
          Width = 67
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'saldo'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
        object RLDBResult4: TRLDBResult
          Left = 419
          Top = 16
          Width = 66
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
        object RLDBResult5: TRLDBResult
          Left = 331
          Top = 16
          Width = 98
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Bruto'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_rel_custo_orc_detail
  end
  object sp_rel_custo_orc_detail: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_rel_custo_orc_detail'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dtini'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@dtFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DentistaIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DentistaFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cdServicoIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cdServicoFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cdOrdem'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@agrupamento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 408
    Top = 272
  end
end
