inherited FmFrContrVendasEmp: TFmFrContrVendasEmp
  Left = 132
  Top = 126
  Width = 1036
  Height = 780
  Caption = 'FmFrContrVendasEmp'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 207
      Height = 94
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      Borders.FixedTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 15
        Width = 114
        Text = 'QTDE :'
      end
      object RLLabel11: TRLLabel
        Left = 440
        Top = 13
        Width = 45
        Height = 13
        Caption = 'TOTAIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 595
        Top = 12
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'IncMesAtu'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 630
        Top = 12
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'ExcMesAtu'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 670
        Top = 12
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'Total'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 8
        Top = 54
        Width = 194
        Height = 11
        Caption = '* Se S indica que pagou primeira mensalidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 7
        Top = 68
        Width = 637
        Height = 11
        Caption = 
          '** VMU = Valor M'#233'dio Unit'#225'rio('#201' Realizado uma m'#233'dia entre a quan' +
          'tidade de usu'#225'rios ativos atual) - Obs: Se sair zerado '#233' porque ' +
          'n'#227'o h'#225' vidas ativas)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult7: TRLDBResult
        Left = 564
        Top = 14
        Width = 42
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'VidasMesAnt'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 500
        Top = 14
        Width = 42
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataFormula = 'VidasIni'
        DataSource = DataSourceH
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
      Top = 206
      Height = 1
      Visible = False
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 113
      Height = 1
    end
    inherited RLBandHeaderH: TRLBand
      Height = 74
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 27
      end
      object RLLabel14: TRLLabel
        Left = 414
        Top = 56
        Width = 67
        Height = 13
        Caption = 'PERR'#205'ODO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 488
        Top = 56
        Width = 64
        Height = 13
        Caption = 'VENDEDOR: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 114
      Width = 718
      Height = 92
      DataFields = 'CdVendedor'
      PageBreaking = pbBeforePrint
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 43
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel17: TRLLabel
          Left = 5
          Top = 26
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
        object RLLabel18: TRLLabel
          Left = 65
          Top = 26
          Width = 55
          Height = 13
          Caption = 'EMPRESA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 384
          Top = 26
          Width = 28
          Height = 13
          Caption = 'INCL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 424
          Top = 26
          Width = 30
          Height = 13
          Caption = 'VENC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 463
          Top = 26
          Width = 33
          Height = 13
          Caption = 'PAG*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 496
          Top = 26
          Width = 58
          Height = 13
          Caption = 'VIDAS INI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 560
          Top = 26
          Width = 51
          Height = 13
          Caption = 'MES ANT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 616
          Top = 26
          Width = 22
          Height = 13
          Caption = 'INC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 646
          Top = 26
          Width = 29
          Height = 13
          Caption = 'EXCL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 682
          Top = 27
          Width = 39
          Height = 13
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 5
          Top = 5
          Width = 67
          Height = 13
          Caption = 'VENDEDOR: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 80
          Top = 5
          Width = 44
          Height = 13
          AutoSize = False
          DataField = 'CdVendedor'
          DataSource = DataSourceH
        end
        object RLDBText2: TRLDBText
          Left = 132
          Top = 5
          Width = 69
          Height = 13
          DataField = 'nm_vendedor'
          DataSource = DataSourceH
        end
        object RLLabel2: TRLLabel
          Left = 318
          Top = 27
          Width = 42
          Height = 13
          Caption = 'VMU**'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 43
        Width = 718
        Height = 18
        object RLDBText11: TRLDBText
          Left = 0
          Top = 2
          Width = 34
          Height = 13
          DataField = 'codigo'
          DataSource = DataSourceH
        end
        object RLDBText12: TRLDBText
          Left = 64
          Top = 2
          Width = 217
          Height = 13
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSourceH
        end
        object RLDBText13: TRLDBText
          Left = 368
          Top = 2
          Width = 41
          Height = 13
          Alignment = taRightJustify
          DataField = 'MesAno'
          DataSource = DataSourceH
        end
        object RLDBText14: TRLDBText
          Left = 424
          Top = 2
          Width = 26
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'vencimento'
          DataSource = DataSourceH
        end
        object RLDBText15: TRLDBText
          Left = 466
          Top = 2
          Width = 18
          Height = 13
          Alignment = taCenter
          AutoSize = False
          DataField = 'PgMens'
          DataSource = DataSourceH
        end
        object RLDBText16: TRLDBText
          Left = 503
          Top = 2
          Width = 40
          Height = 13
          Alignment = taRightJustify
          DataField = 'VidasIni'
          DataSource = DataSourceH
        end
        object RLDBText17: TRLDBText
          Left = 613
          Top = 2
          Width = 23
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'IncMesAtu'
          DataSource = DataSourceH
        end
        object RLDBText18: TRLDBText
          Left = 639
          Top = 2
          Width = 34
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ExcMesAtu'
          DataSource = DataSourceH
        end
        object RLDBText19: TRLDBText
          Left = 562
          Top = 4
          Width = 40
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VidasMesAnt'
          DataSource = DataSourceH
        end
        object RLDBText20: TRLDBText
          Left = 679
          Top = 4
          Width = 34
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Total'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 285
          Top = 3
          Width = 74
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'MediaVrMens'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 61
        Width = 718
        Height = 28
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel1: TRLLabel
          Left = 442
          Top = 13
          Width = 45
          Height = 13
          Caption = 'TOTAIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 595
          Top = 12
          Width = 42
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'IncMesAtu'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult5: TRLDBResult
          Left = 630
          Top = 12
          Width = 42
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'ExcMesAtu'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 670
          Top = 12
          Width = 42
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'Total'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult8: TRLDBResult
          Left = 561
          Top = 13
          Width = 42
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'VidasMesAnt'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult9: TRLDBResult
          Left = 501
          Top = 15
          Width = 42
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'VidasIni'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_controleVendasEmpresariais
    Left = 181
    Top = 336
  end
  object sp_controleVendasEmpresariais: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_controleVendasEmpresariais'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Dtini'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '01/05/2008'
      end
      item
        Name = '@DtFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '31/05/2008'
      end
      item
        Name = '@VendedorIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 8101
      end
      item
        Name = '@VendedorFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 8101
      end>
    Left = 280
    Top = 320
  end
end
