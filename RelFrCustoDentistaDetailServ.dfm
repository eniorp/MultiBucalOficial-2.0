inherited FmFrRelFrCustoDentistaDetailServ: TFmFrRelFrCustoDentistaDetailServ
  Caption = 'FmFrRelFrCustoDentistaDetailServ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 212
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 10
      end
      object RLDBResult6: TRLDBResult
        Left = 434
        Top = 12
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
        Top = 10
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
        Top = 9
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
        Top = 12
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
        Left = 286
        Top = 12
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
      Top = 211
    end
    inherited RLBandHeaderH: TRLBand
      object RLLabel9: TRLLabel
        Left = 10
        Top = 50
        Width = 56
        Height = 13
        Caption = 'DENTISTA:'
      end
    end
    inherited RLGroup1: TRLGroup
      Height = 93
      DataFields = 'codigo'
      inherited RLBand1: TRLBand
        Height = 41
        object RLLabel1: TRLLabel
          Left = 6
          Top = 6
          Width = 51
          Height = 13
          Caption = 'SERVI'#199'O:'
        end
        object RLDBText1: TRLDBText
          Left = 67
          Top = 5
          Width = 34
          Height = 13
          DataField = 'codigo'
          DataSource = DataSourceH
        end
        object RLDBText2: TRLDBText
          Left = 111
          Top = 5
          Width = 48
          Height = 13
          DataField = 'descricao'
          DataSource = DataSourceH
        end
        object RLLabel3: TRLLabel
          Left = 156
          Top = 27
          Width = 52
          Height = 13
          Caption = 'DENTISTA'
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
          Left = 426
          Top = 4
          Width = 62
          Height = 13
          Caption = 'QTDE ORC: '
        end
        object RLDBText7: TRLDBText
          Left = 495
          Top = 4
          Width = 80
          Height = 13
          DataField = 'QtdeOrcamento'
          DataSource = DataSourceH
        end
        object RLLabel11: TRLLabel
          Left = 612
          Top = 4
          Width = 42
          Height = 13
          Caption = 'M'#201'DIA: '
        end
        object RLDBText12: TRLDBText
          Left = 658
          Top = 4
          Width = 39
          Height = 13
          DataFormula = 'media'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDraw1: TRLDraw
          Left = 2
          Top = 23
          Width = 718
          Height = 1
        end
      end
      inherited RLBand2: TRLBand
        Top = 41
        object RLDBText3: TRLDBText
          Left = 139
          Top = 1
          Width = 42
          Height = 13
          Alignment = taRightJustify
          DataField = 'dentista'
          DataSource = DataSourceH
        end
        object RLDBText4: TRLDBText
          Left = 185
          Top = 1
          Width = 141
          Height = 13
          AutoSize = False
          DataField = 'nm_dentista'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 366
          Top = 1
          Width = 67
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Bruto'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText8: TRLDBText
          Left = 491
          Top = 1
          Width = 81
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Dentista'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText9: TRLDBText
          Left = 561
          Top = 1
          Width = 84
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor_Protetico'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText10: TRLDBText
          Left = 679
          Top = 1
          Width = 36
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'saldo'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText11: TRLDBText
          Left = 452
          Top = 1
          Width = 35
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'Valor'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText5: TRLDBText
          Left = 346
          Top = 1
          Width = 13
          Height = 13
          Alignment = taRightJustify
          DataField = 'qt'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 57
        Height = 34
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
      end
      item
        Name = '@dtini'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@dtFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@DentistaIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@DentistaFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@cdServicoIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@cdServicoFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@cdOrdem'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
      end
      item
        Name = '@agrupamento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end>
    Left = 408
    Top = 272
  end
end
