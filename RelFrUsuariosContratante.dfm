object FrListaUsuarioContratante: TFrListaUsuarioContratante
  Left = 243
  Top = 0
  Width = 810
  Height = 735
  Caption = 'FrListaUsuarioContratante'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportH: TRLReport
    Left = -16
    Top = 8
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = True
    Borders.DrawRight = False
    Borders.DrawBottom = True
    DataSource = DataSourceH
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ShowProgress = False
    Title = 'Relat'#243'rio de Usu'#225'rios p/ Contratante'
    ExpressionParser = RLExpressionParserH
    BeforePrint = RLReportHBeforePrint
    object RLBandSummaryH: TRLBand
      Left = 38
      Top = 360
      Width = 718
      Height = 89
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBandSummaryHBeforePrint
      object RLSystemInfo3: TRLSystemInfo
        Left = 0
        Top = 11
        Width = 219
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itDetailCount
        ParentFont = False
        Text = 'Qtde Usu'#225'rios do Contratante: '
      end
      object RLDBResult4: TRLDBResult
        Left = 158
        Top = 58
        Width = 158
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = 'R$###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = riAverage
        ParentFont = False
        Text = 'VALOR / VIDA:'
        Visible = False
      end
      object RLLabel5: TRLLabel
        Left = 343
        Top = 27
        Width = 98
        Height = 13
        Caption = 'VR COMPLEMENTO:'
      end
      object RLLabelCompl: TRLLabel
        Left = 499
        Top = 27
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
      end
      object RLLabel7: TRLLabel
        Left = 348
        Top = 46
        Width = 94
        Height = 16
        Caption = 'TOTAL GERAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 367
        Top = 65
        Width = 74
        Height = 13
        Caption = 'VALOR / VIDA:'
      end
      object RLLabel6: TRLLabel
        Left = 496
        Top = 49
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 498
        Top = 67
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
      end
      object RLLabel15: TRLLabel
        Left = 388
        Top = 6
        Width = 53
        Height = 16
        Caption = 'TOTAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabelTtEmpresa1: TRLLabel
        Left = 497
        Top = 9
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBandDetailH: TRLBand
      Left = 38
      Top = 359
      Width = 718
      Height = 1
      Visible = False
    end
    object RLBandColumnHeaderH: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 185
        Top = 0
        Width = 55
        Height = 13
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 473
        Top = 2
        Width = 40
        Height = 13
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 609
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
    end
    object RLBandHeaderH: TRLBand
      Left = 38
      Top = 39
      Width = 718
      Height = 114
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfoTitH: TRLSystemInfo
        Left = 293
        Top = 21
        Width = 52
        Height = 18
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itTitle
        ParentFont = False
      end
      object RLSystemInfoEmtidoH: TRLSystemInfo
        Left = 623
        Top = 8
        Width = 86
        Height = 10
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itNow
        ParentFont = False
        Text = 'EMITIDO EM : '
      end
      object RLSystemInfoLastPgH: TRLSystemInfo
        Left = 684
        Top = 24
        Width = 30
        Height = 13
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
      end
      object RLLabelBarraH: TRLLabel
        Left = 675
        Top = 24
        Width = 9
        Height = 13
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfoPgH: TRLSystemInfo
        Left = 559
        Top = 24
        Width = 115
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g : '
      end
      object RLLabelEmpresaH: TRLLabel
        Left = 6
        Top = 6
        Width = 130
        Height = 10
        Caption = 'RIBEIR'#195'O MULTIODONTO LTDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 7
        Top = 60
        Width = 55
        Height = 13
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 7
        Top = 79
        Width = 55
        Height = 13
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroupEmpresa: TRLGroup
      Left = 38
      Top = 169
      Width = 718
      Height = 190
      DataFields = 'Nome_Grupo'
      object RLGroupContrat: TRLGroup
        Left = 0
        Top = 26
        Width = 718
        Height = 105
        DataFields = 'Codigo'
        object RLBand1: TRLBand
          Left = 0
          Top = 19
          Width = 718
          Height = 15
          AfterPrint = RLBand1AfterPrint
          object RLDBText7: TRLDBText
            Left = 224
            Top = 0
            Width = 30
            Height = 13
            DataField = 'Digito'
            DataSource = DataSourceH
          end
          object RLDBText2: TRLDBText
            Left = 184
            Top = 0
            Width = 36
            Height = 13
            Alignment = taRightJustify
            DataField = 'Codigo'
            DataSource = DataSourceH
          end
          object RLDBText6: TRLDBText
            Left = 240
            Top = 0
            Width = 42
            Height = 13
            DataField = 'Nome_1'
            DataSource = DataSourceH
          end
          object RLDBText8: TRLDBText
            Left = 488
            Top = 0
            Width = 35
            Height = 13
            Alignment = taRightJustify
            DataFormula = 'valor'
            DataSource = DataSourceH
            DisplayMask = 'R$###,###,##0.00'
          end
          object RLDBText9: TRLDBText
            Left = 608
            Top = 0
            Width = 72
            Height = 13
            DataField = 'Data_Inclusao'
            DataSource = DataSourceH
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 19
          BandType = btTitle
          BeforePrint = RLBand3BeforePrint
          object RLDBText3: TRLDBText
            Left = 40
            Top = 2
            Width = 47
            Height = 14
            DataField = 'Codigo'
            DataSource = DataSourceH
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 437
            Top = 2
            Width = 82
            Height = 14
            DataField = 'cd_matricula'
            DataSource = DataSourceH
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 96
            Top = 3
            Width = 38
            Height = 14
            DataField = 'Nome'
            DataSource = DataSourceH
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 409
            Top = 2
            Width = 23
            Height = 13
            Caption = 'R.E:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 34
          Width = 718
          Height = 62
          BandType = btSummary
          BeforePrint = RLBand4BeforePrint
          object RLSystemInfo2: TRLSystemInfo
            Left = 34
            Top = 40
            Width = 145
            Height = 13
            Alignment = taRightJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Info = itDetailCount
            ParentFont = False
            Text = 'Qtde Usu'#225'rios : '
          end
          object RLLabelTotalContrat: TRLLabel
            Left = 498
            Top = 36
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = '0,00'
          end
          object RLLabel1Medicar: TRLLabel
            Left = 369
            Top = 16
            Width = 81
            Height = 13
            Caption = 'MEDICAR OMT :'
          end
          object RLLabelMedicar: TRLLabel
            Left = 499
            Top = 16
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = '0,00'
          end
          object RLLabel13: TRLLabel
            Left = 408
            Top = 35
            Width = 42
            Height = 13
            Caption = 'TOTAL: '
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 26
        BandType = btHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLBand2BeforePrint
        object RLDBText5: TRLDBText
          Left = -16
          Top = 1
          Width = 130
          Height = 16
          Alignment = taRightJustify
          DataField = 'Grupo_Contratante'
          DataSource = DataSourceH
        end
        object RLLabel1: TRLLabel
          Left = 9
          Top = 1
          Width = 69
          Height = 16
          Caption = 'EMPRESA:'
        end
        object RLDBText1: TRLDBText
          Left = 121
          Top = 1
          Width = 85
          Height = 16
          DataField = 'Nome_Grupo'
          DataSource = DataSourceH
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 131
        Width = 718
        Height = 40
        BandType = btSummary
        BeforePrint = RLBand5BeforePrint
        object RLSystemInfo1: TRLSystemInfo
          Left = 15
          Top = 15
          Width = 204
          Height = 13
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Info = itDetailCount
          ParentFont = False
          Text = 'Qtde Usu'#225'rios da Empresa : '
        end
        object RLLabel14: TRLLabel
          Left = 332
          Top = 13
          Width = 113
          Height = 16
          Caption = 'TOTAL EMPRESA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabelTtEmpresa: TRLLabel
          Left = 496
          Top = 16
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = '0,00'
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
  object sp_relMensalidadeContrat: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_relMensalidadeContrat'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Contratante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 9029
      end
      item
        Name = '@DataPesq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '28/02/2012'
      end>
    Left = 174
    Top = 405
  end
  object DataSourceH: TDataSource
    DataSet = sp_relMensalidadeContrat
    Left = 304
    Top = 352
  end
  object RLExpressionParserH: TRLExpressionParser
    Left = 608
    Top = 376
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 224
    Top = 376
  end
end
