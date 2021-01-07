inherited FrRelServicoPorPlano: TFrRelServicoPorPlano
  Caption = 'FrRelServicoPorPlano'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 158
    end
    inherited RLBandDetailH: TRLBand
      Top = 157
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 3
        Width = 72
        Height = 13
        Caption = 'C'#211'D SERVI'#199'O'
      end
      object RLLabel2: TRLLabel
        Left = 90
        Top = 2
        Width = 62
        Height = 13
        Caption = 'DESCRI'#199#195'O'
      end
      object RLLabel3: TRLLabel
        Left = 418
        Top = 2
        Width = 99
        Height = 13
        Caption = 'CAR'#202'NCIA EM DIAS'
      end
      object RLLabel4: TRLLabel
        Left = 546
        Top = 2
        Width = 67
        Height = 13
        Caption = 'PERCENTUAL'
        Visible = False
      end
      object RLLabel5: TRLLabel
        Left = 642
        Top = 2
        Width = 63
        Height = 13
        Caption = 'VR A PAGAR'
      end
    end
    inherited RLBandHeaderH: TRLBand
      object RLLabel6: TRLLabel
        Left = 8
        Top = 43
        Width = 36
        Height = 13
        Caption = 'PLANO'
      end
    end
    inherited RLGroup1: TRLGroup
      Height = 39
      DataFields = 'CD_SERVICO'
      inherited RLBand1: TRLBand
        object RLDBText1: TRLDBText
          Left = 7
          Top = 7
          Width = 67
          Height = 13
          DataField = 'CD_SERVICO'
          DataSource = DataSourceH
        end
        object RLDBText2: TRLDBText
          Left = 81
          Top = 5
          Width = 66
          Height = 13
          DataField = 'DS_SERVICO'
          DataSource = DataSourceH
        end
      end
      inherited RLBand2: TRLBand
        object RLDBText3: TRLDBText
          Left = 573
          Top = 2
          Width = 45
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'FATOR'
          DataSource = DataSourceH
          DisplayMask = '##0.00%'
          Visible = False
        end
        object RLDBText4: TRLDBText
          Left = 668
          Top = 3
          Width = 44
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'VALOR'
          DataSource = DataSourceH
          DisplayMask = '###,###,###,##0.00'
        end
        object RLDBText5: TRLDBText
          Left = 463
          Top = 3
          Width = 55
          Height = 13
          Alignment = taRightJustify
          DataField = 'CARENCIA'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Height = 1
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = SP_VR_SERVICO_POR_PLANO
  end
  object SP_VR_SERVICO_POR_PLANO: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'SP_VR_SERVICO_POR_PLANO'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PLANO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 321
      end>
    Left = 136
    Top = 296
  end
end
