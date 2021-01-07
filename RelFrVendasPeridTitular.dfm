inherited FrVendPeridTitular: TFrVendPeridTitular
  Width = 833
  Height = 619
  Caption = 'FrVendPeridTitular'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Top = -8
    ShowProgress = False
    inherited RLBandSummaryH: TRLBand
      Top = 381
      Height = 87
      object RLLabel23: TRLLabel
        Left = 9
        Top = 31
        Width = 382
        Height = 11
        Caption = 
          '* Quantidade de vidas inclu'#237'das no per'#237'odo versus quantidade de ' +
          'vidas exclu'#237'das no per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 9
        Top = 52
        Width = 348
        Height = 11
        Caption = 
          '** Quantidade de mensalidades geradas versus quantidade de mensa' +
          'lidades pagas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 380
      Height = 1
      Visible = False
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 105
      Height = 1
      Borders.DrawBottom = False
    end
    inherited RLBandHeaderH: TRLBand
      Height = 66
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 23
      end
      object RLLabel3: TRLLabel
        Left = 7
        Top = 49
        Width = 30
        Height = 13
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroupRep: TRLGroup
      Left = 38
      Top = 106
      Width = 718
      Height = 274
      DataFormula = 'cd_representante'
      BeforePrint = RLGroupRepBeforePrint
      object RLGroupVend: TRLGroup
        Left = 0
        Top = 0
        Width = 718
        Height = 133
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataFormula = 'cd_vendedor'
        object RLBand1: TRLBand
          Left = 0
          Top = 83
          Width = 718
          Height = 20
          BeforePrint = RLBand1BeforePrint
          object RLDBText6: TRLDBText
            Left = 153
            Top = 4
            Width = 48
            Height = 13
            Alignment = taRightJustify
            DataField = 'cd_titular'
            DataSource = DataSourceH
          end
          object RLDBText7: TRLDBText
            Left = 7
            Top = 6
            Width = 134
            Height = 13
            AutoSize = False
            DataField = 'nm_empresa'
            DataSource = DataSourceH
          end
          object RLDBText8: TRLDBText
            Left = 209
            Top = 4
            Width = 51
            Height = 13
            DataField = 'nm_titular'
            DataSource = DataSourceH
          end
          object RLDBText5: TRLDBText
            Left = 531
            Top = 5
            Width = 82
            Height = 13
            Alignment = taCenter
            DataField = 'QtVendXQtCanc'
            DataSource = DataSourceH
          end
          object RLDBText9: TRLDBText
            Left = 599
            Top = 4
            Width = 82
            Height = 13
            Alignment = taCenter
            DataField = 'QtMensXQtPaga'
            DataSource = DataSourceH
          end
          object RLDBText10: TRLDBText
            Left = 696
            Top = 4
            Width = 18
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'lg_pg_primeira'
            DataSource = DataSourceH
          end
          object RLDBText11: TRLDBText
            Left = 508
            Top = 6
            Width = 26
            Height = 13
            Alignment = taRightJustify
            DataField = 'dtstr'
            DataSource = DataSourceH
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 83
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText4: TRLDBText
            Left = 172
            Top = 33
            Width = 60
            Height = 19
            Alignment = taRightJustify
            AutoSize = False
            DataFormula = 'cd_vendedor'
            DataSource = DataSourceH
            DisplayMask = '0000#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 56
            Top = 33
            Width = 107
            Height = 19
            Caption = 'VENDEDOR :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 244
            Top = 33
            Width = 116
            Height = 19
            DataField = 'nm_vendedor'
            DataSource = DataSourceH
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 240
            Top = 8
            Width = 156
            Height = 19
            DataField = 'nm_representante'
            DataSource = DataSourceH
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 172
            Top = 8
            Width = 60
            Height = 19
            AutoSize = False
            DataFormula = 'cd_representante'
            DataSource = DataSourceH
            DisplayMask = '0000#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 8
            Top = 8
            Width = 159
            Height = 19
            Caption = 'REPRESENTANTE :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 8
            Top = 62
            Width = 49
            Height = 13
            Caption = 'EMPRESA'
          end
          object RLLabel10: TRLLabel
            Left = 156
            Top = 61
            Width = 77
            Height = 13
            Caption = 'CONTRATANTE'
          end
          object RLLabel11: TRLLabel
            Left = 487
            Top = 62
            Width = 52
            Height = 13
            Caption = 'DT VENDA'
          end
          object RLLabel12: TRLLabel
            Left = 544
            Top = 62
            Width = 59
            Height = 13
            Caption = 'VID X CAN*'
          end
          object RLLabel13: TRLLabel
            Left = 608
            Top = 62
            Width = 61
            Height = 13
            Caption = 'MEN X PG**'
          end
          object RLLabel14: TRLLabel
            Left = 670
            Top = 62
            Width = 44
            Height = 13
            Caption = '1'#186' PARC'
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 103
          Width = 718
          Height = 29
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.FixedTop = True
          BeforePrint = RLBand4BeforePrint
          object RLLabel18: TRLLabel
            Left = 8
            Top = 8
            Width = 67
            Height = 13
            Caption = 'VENDEDOR :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelTtVend: TRLLabel
            Left = 80
            Top = 8
            Width = 64
            Height = 13
            Caption = 'VENDEDOR :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 133
        Width = 718
        Height = 99
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand2BeforePrint
        object RLDraw1: TRLDraw
          Left = 155
          Top = 20
          Width = 390
          Height = 59
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLLabel4: TRLLabel
          Left = 158
          Top = 23
          Width = 30
          Height = 13
          Caption = 'TIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 197
          Top = 23
          Width = 40
          Height = 13
          Caption = 'QT INC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 242
          Top = 23
          Width = 41
          Height = 13
          Caption = 'QT EXC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 289
          Top = 23
          Width = 63
          Height = 13
          Caption = 'QT ATIVAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 369
          Top = 23
          Width = 95
          Height = 13
          Caption = 'QT PG 1'#186' PARC.*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 468
          Top = 23
          Width = 65
          Height = 13
          Caption = 'PERCENT**'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 165
          Top = 42
          Width = 14
          Height = 13
          Caption = 'PJ'
        end
        object RLLabel17: TRLLabel
          Left = 165
          Top = 61
          Width = 15
          Height = 13
          Caption = 'PF'
        end
        object RLDraw2: TRLDraw
          Left = 155
          Top = 56
          Width = 390
          Height = 4
          DrawKind = dkLine
        end
        object RLDraw3: TRLDraw
          Left = 155
          Top = 38
          Width = 390
          Height = 4
          DrawKind = dkLine
        end
        object RLPanel1: TRLPanel
          Left = 192
          Top = 22
          Width = 1
          Height = 57
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLPanel2: TRLPanel
          Left = 463
          Top = 22
          Width = 1
          Height = 57
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLPanel3: TRLPanel
          Left = 361
          Top = 22
          Width = 1
          Height = 57
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLPanel4: TRLPanel
          Left = 285
          Top = 21
          Width = 1
          Height = 58
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLPanel6: TRLPanel
          Left = 239
          Top = 21
          Width = 1
          Height = 58
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RlQtIncPJ: TRLLabel
          Left = 207
          Top = 42
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtIncPF: TRLLabel
          Left = 207
          Top = 61
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtExcPJ: TRLLabel
          Left = 255
          Top = 42
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPJAtiv: TRLLabel
          Left = 311
          Top = 42
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPJPg1: TRLLabel
          Left = 399
          Top = 42
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPJPercent: TRLLabel
          Left = 503
          Top = 42
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtExcPF: TRLLabel
          Left = 254
          Top = 61
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPFAtiv: TRLLabel
          Left = 310
          Top = 61
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPFPg1: TRLLabel
          Left = 398
          Top = 61
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RlQtPFPercent: TRLLabel
          Left = 503
          Top = 61
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '001'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 4
          Top = 25
          Width = 196
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = itDetailCount
          ParentFont = False
          Text = 'QT CONTRATANTES :  '
        end
        object RLLabel19: TRLLabel
          Left = 561
          Top = 23
          Width = 141
          Height = 11
          Caption = '*  Qtde  de  Contratantes    que '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 561
          Top = 39
          Width = 137
          Height = 11
          Caption = 'pagaram a primeira mensalidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 561
          Top = 61
          Width = 145
          Height = 11
          Caption = '** Percentual de contratantes que'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 561
          Top = 77
          Width = 113
          Height = 11
          Caption = 'pagaram a 1'#186' mensalidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 8
          Top = 56
          Width = 115
          Height = 13
          Caption = 'QT TOTAL VIDAS: 78'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object sp_rel_vendas_contrat_titular: TADOStoredProc [2]
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_rel_vendas_contrat_titular'
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
        Value = '01/07/2008'
      end
      item
        Name = '@Dtfim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '10/07/2008'
      end
      item
        Name = '@CdRepIni'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@CdRepFim'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 99999999
      end>
    Left = 368
    Top = 304
  end
  inherited DataSourceH: TDataSource
    DataSet = sp_rel_vendas_contrat_titular
    Left = 317
    Top = 208
  end
end
