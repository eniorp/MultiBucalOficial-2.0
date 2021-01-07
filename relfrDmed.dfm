inherited FmFrRelDmed: TFmFrRelDmed
  HorzScrollBar.Position = 21
  Caption = 'FmFrRelDmed'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = -21
    Width = 1123
    Height = 794
    Font.Height = -8
    PageSetup.Orientation = poLandscape
    inherited RLBandSummaryH: TRLBand
      Top = 106
      Width = 1047
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      Borders.FixedTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 12
        Width = 115
        Text = 'Qtde : '
      end
      object RLDBResult1: TRLDBResult
        Left = 917
        Top = 8
        Width = 129
        Height = 11
        Alignment = taRightJustify
        DataFormula = 'VRUNIT'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'TOTAL: '
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 96
      Width = 1047
      Height = 10
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 73
        Height = 10
        DataField = 'NM_CONTRATANTE'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 272
        Top = 0
        Width = 35
        Height = 10
        DataField = 'CGC_CPF'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 384
        Top = 0
        Width = 51
        Height = 10
        DataField = 'NM_USUARIO'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 608
        Top = 0
        Width = 16
        Height = 10
        DataField = 'CPF'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 784
        Top = 0
        Width = 75
        Height = 10
        DataField = 'DATA_NASCIMENTO'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 888
        Top = 0
        Width = 68
        Height = 10
        DataField = 'DSTPDOCUMENTO'
        DataSource = DataSourceH
      end
      object RLDBText7: TRLDBText
        Left = 1006
        Top = 0
        Width = 37
        Height = 10
        Alignment = taRightJustify
        DataFormula = 'VRUNIT'
        DataSource = DataSourceH
        DisplayMask = '###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Width = 1047
      Height = 14
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 98
        Height = 11
        Caption = 'RESP FINANCEIRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 270
        Top = 0
        Width = 100
        Height = 11
        Caption = 'CPF RESPONS'#193'VEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 384
        Top = 0
        Width = 33
        Height = 11
        Caption = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 607
        Top = 0
        Width = 23
        Height = 11
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 784
        Top = 0
        Width = 48
        Height = 11
        Caption = 'DT NASC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 888
        Top = 0
        Width = 30
        Height = 11
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 1006
        Top = 0
        Width = 39
        Height = 11
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Width = 1047
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 503
        Top = 14
        Width = 40
        Height = 14
        Font.Height = -12
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Left = 954
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Left = 1015
      end
      inherited RLLabelBarraH: TRLLabel
        Left = 1006
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Left = 890
      end
      object RLLabelPeriodo: TRLLabel
        Left = 1
        Top = 25
        Width = 98
        Height = 11
        Caption = 'RESP FINANCEIRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited RLExpressionParserH: TRLExpressionParser
    Top = 280
  end
  inherited DataSourceH: TDataSource
    DataSet = SP_GERA_DMED
  end
  object SP_GERA_DMED: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'SP_GERA_DMED;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@DTINI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@DTFIM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = '@TPDOCINI'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@TPDOCFIM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 340
    Top = 176
  end
end
