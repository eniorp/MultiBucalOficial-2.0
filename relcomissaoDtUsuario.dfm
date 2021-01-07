inherited FmFrRelcomissaoDtUsuario: TFmFrRelcomissaoDtUsuario
  Width = 852
  Height = 591
  Caption = 'FmFrRelcomissaoDtUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    BeforePrint = RLReportHBeforePrint
    inherited RLBandSummaryH: TRLBand
      Top = 248
      Height = 342
      BeforePrint = RLBandSummaryHBeforePrint
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 312
      end
      object RLLabel1: TRLLabel
        Left = 8
        Top = 50
        Width = 196
        Height = 13
        Caption = 'Total de Mensalidades recebidas : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 419
        Top = 50
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 419
        Top = 73
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 419
        Top = 96
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 419
        Top = 119
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 419
        Top = 142
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 419
        Top = 166
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 419
        Top = 189
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 419
        Top = 212
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 412
        Top = 235
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 412
        Top = 258
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 412
        Top = 282
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 215
        Top = 50
        Width = 70
        Height = 13
        Caption = ' 2'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 215
        Top = 73
        Width = 70
        Height = 13
        Caption = ' 3'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 215
        Top = 97
        Width = 70
        Height = 13
        Caption = ' 4'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 215
        Top = 120
        Width = 70
        Height = 13
        Caption = ' 5'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 215
        Top = 144
        Width = 70
        Height = 13
        Caption = ' 6'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 215
        Top = 167
        Width = 70
        Height = 13
        Caption = ' 7'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 215
        Top = 191
        Width = 70
        Height = 13
        Caption = ' 8'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 215
        Top = 214
        Width = 70
        Height = 13
        Caption = ' 9'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 215
        Top = 238
        Width = 74
        Height = 13
        Caption = '10'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 215
        Top = 261
        Width = 74
        Height = 13
        Caption = '11'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 215
        Top = 285
        Width = 74
        Height = 13
        Caption = '12'#170' Parcela :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 569
        Top = 8
        Width = 131
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor_mensalidade'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 247
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 115
      object RLLabel33: TRLLabel
        Left = 6
        Top = 2
        Width = 25
        Height = 13
        Caption = 'C'#211'D'
      end
      object RLLabel34: TRLLabel
        Left = 40
        Top = 2
        Width = 57
        Height = 13
        Caption = 'VENDEDOR'
      end
      object RLLabel35: TRLLabel
        Left = 198
        Top = 2
        Width = 25
        Height = 13
        Caption = 'C'#211'D'
      end
      object RLLabel36: TRLLabel
        Left = 235
        Top = 2
        Width = 49
        Height = 13
        Caption = 'USU'#193'RIO'
      end
      object RLLabel37: TRLLabel
        Left = 434
        Top = 2
        Width = 70
        Height = 13
        Caption = 'DT INCLUS'#195'O'
      end
      object RLLabel38: TRLLabel
        Left = 507
        Top = 2
        Width = 59
        Height = 13
        Caption = 'DT VENCTO'
      end
      object RLLabel39: TRLLabel
        Left = 590
        Top = 2
        Width = 53
        Height = 13
        Caption = 'DT PAGTO'
      end
      object RLLabel40: TRLLabel
        Left = 686
        Top = 2
        Width = 30
        Height = 13
        Caption = 'PARC'
      end
      object RLLabel41: TRLLabel
        Left = 647
        Top = 2
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 76
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 29
      end
      object RLLabel24: TRLLabel
        Left = 4
        Top = 61
        Width = 174
        Height = 11
        Caption = 'Total de Mensalidades recebidas : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 131
      Height = 116
      DataFields = 'codigo_representante'
      inherited RLBand1: TRLBand
        Height = 25
        object RLDBText1: TRLDBText
          Left = -75
          Top = 6
          Width = 129
          Height = 13
          Alignment = taRightJustify
          DataField = 'codigo_representante'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 64
          Top = 5
          Width = 124
          Height = 13
          DataField = 'nome_representante'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      inherited RLBand2: TRLBand
        Top = 25
        Height = 18
        BeforePrint = RLBand2BeforePrint
        object RLDBText4: TRLDBText
          Left = 234
          Top = 2
          Width = 213
          Height = 13
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 184
          Top = 2
          Width = 34
          Height = 13
          Alignment = taRightJustify
          DataField = 'codigo'
          DataSource = DataSourceH
        end
        object RLDBText7: TRLDBText
          Left = 199
          Top = 2
          Width = 29
          Height = 13
          Alignment = taRightJustify
          DataField = 'digito'
          DataSource = DataSourceH
        end
        object RLDBText8: TRLDBText
          Left = 440
          Top = 2
          Width = 69
          Height = 13
          Alignment = taRightJustify
          DataField = 'data_inclusao'
          DataSource = DataSourceH
        end
        object RLDBText9: TRLDBText
          Left = 598
          Top = 2
          Width = 100
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor_mensalidade'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
        object RLDBText10: TRLDBText
          Left = 491
          Top = 2
          Width = 86
          Height = 13
          Alignment = taRightJustify
          DataField = 'data_vencimento'
          DataSource = DataSourceH
        end
        object RLDBText11: TRLDBText
          Left = 564
          Top = 2
          Width = 85
          Height = 13
          Alignment = taRightJustify
          DataField = 'data_pagamento'
          DataSource = DataSourceH
        end
        object RLDBText12: TRLDBText
          Left = 677
          Top = 2
          Width = 38
          Height = 13
          Alignment = taRightJustify
          DataField = 'parcela'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = -48
          Top = 1
          Width = 86
          Height = 13
          Alignment = taRightJustify
          DataField = 'codigo_vendedor'
          DataSource = DataSourceH
        end
        object RLDBText5: TRLDBText
          Left = 42
          Top = 1
          Width = 138
          Height = 13
          AutoSize = False
          DataField = 'nome_vendedor'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 43
        Height = 27
        object RLDBResult1: TRLDBResult
          Left = 569
          Top = 8
          Width = 131
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor_mensalidade'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
        end
        object RLDBResult3: TRLDBResult
          Left = 484
          Top = 6
          Width = 40
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor_mensalidade'
          DataSource = DataSourceH
          Info = riCount
        end
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_relComissaoUsuario
    Left = 536
    Top = 296
  end
  object sp_relComissaoUsuario: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_relComissaoUsuario'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@dtPagIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@dtPagFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@nrParcIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@nrParcFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@cdRepresentante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@tpPessoa'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@dtVendaIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@dtVendaFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end>
    Left = 168
    Top = 288
  end
end
