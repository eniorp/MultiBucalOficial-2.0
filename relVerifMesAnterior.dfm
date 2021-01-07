object FmRelVerifFatAnterior: TFmRelVerifFatAnterior
  Left = 192
  Top = 114
  Width = 696
  Height = 484
  HorzScrollBar.Position = 123
  Caption = 'FmRelVerifFatAnterior'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -123
    Top = 0
    Width = 794
    Height = 1123
    DataSource = Ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Title = 'RELA'#199#195'O DE T'#205'TULOS N'#195'O GERADO NO PER'#205'ODO ANTERIOR'
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 110
      Width = 718
      Height = 15
      object RLDBText2: TRLDBText
        Left = 88
        Top = 0
        Width = 80
        Height = 13
        DataField = 'nm_contratante'
        DataSource = Ds
      end
      object RLDBText3: TRLDBText
        Left = 375
        Top = 0
        Width = 65
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'dt_inclusao'
        DataSource = Ds
        DisplayMask = '99/99/9999'
      end
      object RLDBText4: TRLDBText
        Left = 509
        Top = 0
        Width = 29
        Height = 13
        Alignment = taRightJustify
        DataField = 'Titulo'
        DataSource = Ds
      end
      object RLDBText5: TRLDBText
        Left = 544
        Top = 0
        Width = 39
        Height = 13
        DataField = 'Periodo'
        DataSource = Ds
      end
      object RLDBText6: TRLDBText
        Left = 678
        Top = 0
        Width = 35
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = Ds
        DisplayMask = 'R$###,###,##0.00'
      end
      object RLDBText1: TRLDBText
        Left = -21
        Top = 3
        Width = 77
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_contratante'
        DataSource = Ds
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 86
      Width = 718
      Height = 24
      BandType = btColumnHeader
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 16
        Top = 0
        Width = 41
        Height = 13
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 88
        Top = 0
        Width = 72
        Height = 13
        Caption = 'Contratante'
      end
      object RLLabel3: TRLLabel
        Left = 328
        Top = 0
        Width = 113
        Height = 13
        Caption = 'Dt Inclus'#227'o Contrat'
      end
      object RLLabel4: TRLLabel
        Left = 456
        Top = 0
        Width = 84
        Height = 13
        Caption = 'N'#186' T'#237't Faltante'
      end
      object RLLabel5: TRLLabel
        Left = 544
        Top = 0
        Width = 46
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object RLLabel6: TRLLabel
        Left = 625
        Top = 0
        Width = 91
        Height = 13
        Caption = 'Valor mes atual'
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 16
        Width = 715
        Height = 1
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 48
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 337
        Top = 16
        Width = 43
        Height = 16
        Align = faCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itTitle
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 2
        Top = 36
        Width = 715
        Height = 1
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 642
        Top = 22
        Width = 71
        Height = 10
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Gerado em : '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 629
        Top = 6
        Width = 85
        Height = 10
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = 'P'#225'g: '
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 125
      Width = 718
      Height = 44
      BandType = btSummary
      object RLDraw3: TRLDraw
        Left = 2
        Top = 7
        Width = 715
        Height = 1
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 7
        Top = 10
        Width = 172
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'Qtde Registros : '
      end
      object RLDBResult1: TRLDBResult
        Left = 646
        Top = 8
        Width = 70
        Height = 13
        Alignment = taRightJustify
        DataField = 'valor'
        DataSource = Ds
        DisplayMask = 'R$###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
    end
  end
  object Ds: TDataSource
    DataSet = sp_verifFatAnterior
    Left = 461
    Top = 184
  end
  object sp_verifFatAnterior: TStoredProc
    DatabaseName = 'multi'
    StoredProcName = 'sp_verifFatAnterior'
    Left = 352
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 741420073
      end
      item
        DataType = ftString
        Name = '@Dtini'
        ParamType = ptInput
        Value = '01/01/2007'
      end
      item
        DataType = ftString
        Name = '@Dtfim'
        ParamType = ptInput
        Value = '31/01/2007'
      end>
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 229
    Top = 256
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    FileName = 'c:\temp\pdf.pdf'
    DisplayName = 'Documento PDF'
    Left = 269
    Top = 176
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 157
    Top = 200
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 357
    Top = 264
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 453
    Top = 288
  end
end
