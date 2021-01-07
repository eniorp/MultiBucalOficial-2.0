inherited FmRelFrFinanCliente: TFmRelFrFinanCliente
  Caption = 'FmRelFrFinanCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'FICHA FINANCEIRA DO CLIENTE'
    inherited RLBandSummaryH: TRLBand
      Top = 294
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Visible = False
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 293
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 195
      Height = 1
      Borders.DrawBottom = False
      Visible = False
    end
    inherited RLBandHeaderH: TRLBand
      Height = 156
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
        Top = 21
        Align = faNone
      end
      object RLLabel7: TRLLabel
        Left = 8
        Top = 106
        Width = 61
        Height = 13
        Caption = 'ENDERE'#199'O:'
      end
      object RLPanel2: TRLPanel
        Left = 0
        Top = 100
        Width = 718
        Height = 2
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
      end
      object RLLabel8: TRLLabel
        Left = 43
        Top = 123
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP:'
      end
      object RLLabel9: TRLLabel
        Left = 6
        Top = 138
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'TELEFONES:'
      end
      object RLLabel10: TRLLabel
        Left = 472
        Top = 122
        Width = 46
        Height = 13
        Caption = 'BAIRRO:'
      end
      object RLLabel11: TRLLabel
        Left = 473
        Top = 138
        Width = 45
        Height = 13
        Caption = 'CIDADE:'
      end
      object RLLabel12: TRLLabel
        Left = 7
        Top = 84
        Width = 108
        Height = 13
        Caption = 'DADOS DO CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 15
        Top = 56
        Width = 49
        Height = 13
        Caption = 'TITULAR:'
      end
      object RLLabel14: TRLLabel
        Left = 375
        Top = 56
        Width = 51
        Height = 13
        Caption = 'CPF/CGC:'
      end
      object RLLabel15: TRLLabel
        Left = 599
        Top = 56
        Width = 44
        Height = 13
        Caption = 'C'#211'DIGO'
      end
      object RLLabelTit: TRLLabel
        Left = 71
        Top = 56
        Width = 93
        Height = 13
        Caption = 'ENIO DA SILVEIRA'
      end
      object RLLabelCpf: TRLLabel
        Left = 431
        Top = 56
        Width = 26
        Height = 13
        Caption = 'CPF:'
      end
      object RLLabelCod: TRLLabel
        Left = 647
        Top = 56
        Width = 44
        Height = 13
        Caption = 'C'#211'DIGO'
      end
      object RLLabelEnd: TRLLabel
        Left = 73
        Top = 106
        Width = 61
        Height = 13
        Caption = 'ENDERE'#199'O:'
      end
      object RLLabelCep: TRLLabel
        Left = 74
        Top = 124
        Width = 61
        Height = 13
        Caption = 'ENDERE'#199'O:'
      end
      object RLLabelFone: TRLLabel
        Left = 75
        Top = 139
        Width = 63
        Height = 13
        Caption = 'TELEFONES:'
      end
      object RLLabelBairro: TRLLabel
        Left = 525
        Top = 122
        Width = 46
        Height = 13
        Caption = 'BAIRRO:'
      end
      object RLLabelCidade: TRLLabel
        Left = 527
        Top = 137
        Width = 45
        Height = 13
        Caption = 'CIDADE:'
      end
      object RLLabel6: TRLLabel
        Left = 590
        Top = 76
        Width = 54
        Height = 13
        Caption = 'INCLUS'#195'O'
      end
      object RLLabelInclusao: TRLLabel
        Left = 647
        Top = 76
        Width = 59
        Height = 13
        Caption = '01/01/2018'
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 196
      Height = 97
      DataFields = 'quebra'
      BeforePrint = RLGroup1BeforePrint
      inherited RLBand1: TRLBand
        Height = 41
        object RLDBText1: TRLDBText
          Left = 7
          Top = 3
          Width = 50
          Height = 16
          DataField = 'quebra'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 88
          Top = 24
          Width = 46
          Height = 13
          Caption = 'N'#218'MERO'
        end
        object RLLabel2: TRLLabel
          Left = 632
          Top = 24
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'VALOR C/ JUROS'
        end
        object RLLabel3: TRLLabel
          Left = 574
          Top = 24
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'JUROS'
        end
        object RLLabel4: TRLLabel
          Left = 512
          Top = 24
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'VALOR'
        end
        object RLPanel1: TRLPanel
          Left = 0
          Top = 18
          Width = 718
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
        end
        object RLLabel5: TRLLabel
          Left = 152
          Top = 24
          Width = 32
          Height = 13
          Caption = 'NOME'
        end
        object RLLabelData: TRLLabel
          Left = 433
          Top = 25
          Width = 43
          Height = 13
          Caption = 'VENCTO'
        end
      end
      inherited RLBand2: TRLBand
        Top = 41
        object RLDBText2: TRLDBText
          Left = 94
          Top = 0
          Width = 39
          Height = 13
          Alignment = taRightJustify
          DataField = 'numero'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 674
          Top = 2
          Width = 41
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor3'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
        object RLDBText4: TRLDBText
          Left = 571
          Top = 3
          Width = 41
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor2'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
        object RLDBText5: TRLDBText
          Left = 508
          Top = 3
          Width = 41
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor1'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
        object RLDBText6: TRLDBText
          Left = 448
          Top = 3
          Width = 36
          Height = 13
          Alignment = taRightJustify
          DataField = 'vencto'
          DataSource = DataSourceH
        end
        object RLDBText7: TRLDBText
          Left = 153
          Top = 1
          Width = 256
          Height = 13
          AutoSize = False
          DataField = 'descricao'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 57
        object RLDBResult1: TRLDBResult
          Left = 649
          Top = 8
          Width = 64
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor3'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLDBResult2: TRLDBResult
          Left = 548
          Top = 8
          Width = 64
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor2'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLDBResult3: TRLDBResult
          Left = 482
          Top = 8
          Width = 64
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor1'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 5
          Top = 9
          Width = 98
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Info = itDetailCount
          ParentFont = False
          Text = 'Qtde: '
        end
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = SP_REL_FINANC_CLIENTE
  end
  object SP_REL_FINANC_CLIENTE: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'SP_REL_FINANC_CLIENTE'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CdTitular'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 14797
      end
      item
        Name = '@Multa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 10
        Value = 100000c
      end
      item
        Name = '@jurosDia'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 10
        Value = 333c
      end>
    Left = 160
    Top = 256
  end
end
