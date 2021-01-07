inherited FmfrRelContratosExcluidos: TFmfrRelContratosExcluidos
  Left = 328
  Top = 206
  Width = 897
  Height = 466
  Caption = 'FmfrRelContratosExcluidos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Width = 1123
    Height = 794
    PageSetup.Orientation = poLandscape
    inherited RLBandSummaryH: TRLBand
      Top = 143
      Width = 1047
    end
    inherited RLBandDetailH: TRLBand
      Width = 1047
      Height = 45
      Borders.Sides = sdCustom
      Borders.DrawBottom = True
      object RLDBText2: TRLDBText
        Left = 12
        Top = 0
        Width = 34
        Height = 13
        DataField = 'codigo'
        DataSource = DataSourceH
      end
      object RLDBText1: TRLDBText
        Left = 69
        Top = 0
        Width = 29
        Height = 13
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 215
        Top = 0
        Width = 68
        Height = 13
        Alignment = taRightJustify
        DataField = 'qtdeContrato'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 290
        Top = 0
        Width = 38
        Height = 13
        Alignment = taRightJustify
        DataField = 'nrvidas'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 344
        Top = 0
        Width = 53
        Height = 13
        Alignment = taRightJustify
        DataField = 'dtInclusao'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 420
        Top = 0
        Width = 55
        Height = 13
        Alignment = taRightJustify
        DataField = 'dtExclusao'
        DataSource = DataSourceH
      end
      object RLDBText7: TRLDBText
        Left = 497
        Top = 0
        Width = 76
        Height = 13
        DataField = 'tempoContrato'
        DataSource = DataSourceH
      end
      object RLDBText8: TRLDBText
        Left = 567
        Top = 0
        Width = 87
        Height = 13
        Alignment = taRightJustify
        DataField = 'NrParcelasAberto'
        DataSource = DataSourceH
      end
      object RLDBText9: TRLDBText
        Left = 687
        Top = 0
        Width = 94
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'vrParcelasAberto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
      object RLDBText10: TRLDBText
        Left = 800
        Top = 0
        Width = 103
        Height = 13
        DataField = 'motivoCancelamento'
        DataSource = DataSourceH
      end
      object RLLabel11: TRLLabel
        Left = 6
        Top = 18
        Width = 60
        Height = 11
        Caption = 'ENDERE'#199'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 76
        Top = 18
        Width = 257
        Height = 11
        DataFormula = 'endereco + '#39' - '#39' + BAIRRO + '#39' - '#39' + CIDADE + '#39' - '#39' + CEP'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 495
        Top = 18
        Width = 64
        Height = 11
        Caption = 'TELEFONES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 566
        Top = 18
        Width = 40
        Height = 11
        DataField = 'telefones'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 901
        Top = 17
        Width = 25
        Height = 11
        DataField = 'email'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 855
        Top = 17
        Width = 40
        Height = 11
        Caption = 'EMAIL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Width = 1047
      object RLLabel1: TRLLabel
        Left = 9
        Top = 2
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
      object RLLabel2: TRLLabel
        Left = 65
        Top = 2
        Width = 83
        Height = 13
        Caption = 'CONTRATANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 251
        Top = 2
        Width = 32
        Height = 13
        Caption = 'QTDE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 291
        Top = 2
        Width = 38
        Height = 13
        Caption = 'VIDAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 357
        Top = 2
        Width = 59
        Height = 13
        Caption = 'INCLUS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 421
        Top = 2
        Width = 60
        Height = 13
        Caption = 'EXCLUS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 797
        Top = 2
        Width = 138
        Height = 13
        Caption = 'MOTIVO CANCELAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 493
        Top = 2
        Width = 104
        Height = 13
        Caption = 'TEMPO CONTRATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 604
        Top = 2
        Width = 51
        Height = 13
        Caption = 'QT PARC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 676
        Top = 2
        Width = 105
        Height = 13
        Caption = 'VR PARC ABERTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Width = 1047
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 497
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Left = 903
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Left = 964
      end
      inherited RLLabelBarraH: TRLLabel
        Left = 955
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Left = 839
      end
      object RLLabelParam: TRLLabel
        Left = 6
        Top = 24
        Width = 44
        Height = 13
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_relBenefExcluidos
  end
  object sp_relBenefExcluidos: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_relBenefExcluidos'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@tipoPessoa'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
      end
      item
        Name = '@dtIni'
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
        Name = '@ordenacao'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
      end
      item
        Name = '@cdcidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 384
    Top = 192
  end
end
