inherited FmRelBaixaPorAtendente: TFmRelBaixaPorAtendente
  Left = 173
  Top = 156
  HorzScrollBar.Position = 52
  Caption = 'FmRelBaixaPorAtendente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = -52
    DataSource = Dsreceber
    inherited RLBandSummaryH: TRLBand
      Top = 208
      Height = 23
      object RLDBResult5: TRLDBResult
        Left = 544
        Top = 5
        Width = 90
        Height = 13
        Alignment = taRightJustify
        DataField = 'vr_titulo'
        DataSource = Dsreceber
        DisplayMask = 'R$###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 609
        Top = 5
        Width = 105
        Height = 13
        Alignment = taRightJustify
        DataField = 'valor_pago'
        DataSource = Dsreceber
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
    inherited RLBandDetailH: TRLBand
      Top = 82
      Height = 1
      BandType = btColumnHeader
      Visible = False
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 83
      Height = 1
      Borders.DrawBottom = False
    end
    inherited RLBandHeaderH: TRLBand
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 339
        Top = 14
        Width = 40
        Height = 14
        Font.Height = -12
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Font.Height = -8
      end
      inherited RLLabelBarraH: TRLLabel
        Width = 7
        Height = 10
        Font.Height = -8
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Left = 590
        Width = 84
        Height = 10
        Font.Height = -8
      end
      object RLLabelPeriodo: TRLLabel
        Left = 4
        Top = 28
        Width = 143
        Height = 10
        Caption = 'Per'#237'odo 01/01/2007 a 31/01/2007'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 84
      Width = 718
      Height = 124
      DataFields = 'codigo'
      BeforePrint = RLGroup2BeforePrint
      object RLGroup1: TRLGroup
        Left = 0
        Top = 16
        Width = 718
        Height = 73
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataFields = 'codigo;tpcobranca'
        BeforePrint = RLGroup1BeforePrint
        object RLBandHeader2: TRLBand
          Left = 0
          Top = 18
          Width = 718
          Height = 23
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel3: TRLLabel
            Left = 104
            Top = 11
            Width = 37
            Height = 10
            Caption = 'CLIENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 344
            Top = 11
            Width = 22
            Height = 10
            Caption = 'TIPO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 392
            Top = 11
            Width = 58
            Height = 10
            Caption = 'DT OPERA'#199#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 493
            Top = 11
            Width = 39
            Height = 10
            Caption = 'DT BAIXA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 573
            Top = 11
            Width = 46
            Height = 10
            Caption = 'VR T'#205'TULO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 661
            Top = 11
            Width = 37
            Height = 10
            Caption = 'VR PAGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBandDetail: TRLBand
          Left = 0
          Top = 41
          Width = 718
          Height = 11
          object RLDBText11: TRLDBText
            Left = 94
            Top = 0
            Width = 55
            Height = 10
            Alignment = taRightJustify
            DataField = 'cd_contratante'
            DataSource = Dsreceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 153
            Top = 0
            Width = 58
            Height = 10
            DataField = 'nm_contratante'
            DataSource = Dsreceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 350
            Top = 0
            Width = 16
            Height = 10
            Alignment = taCenter
            DataField = 'tipo'
            DataSource = Dsreceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 406
            Top = 0
            Width = 46
            Height = 10
            Alignment = taCenter
            DataField = 'dt_operacao'
            DataSource = Dsreceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 504
            Top = 0
            Width = 32
            Height = 10
            Alignment = taCenter
            DataField = 'dt_baixa'
            DataSource = Dsreceber
            DisplayMask = '###,###,#0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 596
            Top = 0
            Width = 38
            Height = 10
            Alignment = taRightJustify
            DataFormula = 'vr_titulo'
            DataSource = Dsreceber
            DisplayMask = 'R$###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 668
            Top = 0
            Width = 46
            Height = 10
            Alignment = taRightJustify
            DataFormula = 'valor_pago'
            DataSource = Dsreceber
            DisplayMask = 'R$###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBandFooterGroup1: TRLBand
          Left = 0
          Top = 52
          Width = 718
          Height = 19
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBResult2: TRLDBResult
            Left = 639
            Top = 2
            Width = 75
            Height = 10
            Alignment = taRightJustify
            DataField = 'valor_pago'
            DataSource = Dsreceber
            DisplayMask = 'R$###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 24
            Top = 2
            Width = 121
            Height = 10
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Info = itDetailCount
            ParentFont = False
            Text = 'Qtde Registros : '
          end
          object RLDBResult1: TRLDBResult
            Left = 571
            Top = 2
            Width = 63
            Height = 10
            Alignment = taRightJustify
            DataField = 'vr_titulo'
            DataSource = Dsreceber
            DisplayMask = 'R$###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLLabelTpCobranca: TRLLabel
            Left = 71
            Top = 1
            Width = 82
            Height = 10
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBandHeader1: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 18
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel1: TRLLabel
            Left = 7
            Top = 1
            Width = 65
            Height = 13
            Caption = 'Operador : '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 83
            Top = 2
            Width = 23
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'codigo'
            DataSource = Dsreceber
          end
          object RLDBText2: TRLDBText
            Left = 112
            Top = 2
            Width = 37
            Height = 13
            DataField = 'apelido'
            DataSource = Dsreceber
          end
          object RLLabel2: TRLLabel
            Left = 215
            Top = 1
            Width = 36
            Height = 13
            Caption = 'Tipo : '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 260
            Top = 2
            Width = 61
            Height = 13
            DataField = 'TpCobranca'
            DataSource = Dsreceber
          end
        end
      end
      object RLBandSummary: TRLBand
        Left = 0
        Top = 89
        Width = 718
        Height = 33
        BandType = btSummary
        Borders.Color = clGray
        object RLDBResult3: TRLDBResult
          Left = 544
          Top = 5
          Width = 90
          Height = 13
          Alignment = taRightJustify
          DataField = 'vr_titulo'
          DataSource = Dsreceber
          DisplayMask = 'R$###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 609
          Top = 5
          Width = 105
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor_pago'
          DataSource = Dsreceber
          DisplayMask = 'R$###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 7
          Top = 6
          Width = 172
          Height = 13
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = itDetailCount
          ParentFont = False
          Text = 'Qtde Registros : '
        end
      end
      object RLBandHeaderGroup2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btHeader
        Visible = False
        object RLLabel9: TRLLabel
          Left = 7
          Top = 1
          Width = 65
          Height = 13
          Caption = 'Operador : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 83
          Top = 2
          Width = 23
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'codigo'
          DataSource = Dsreceber
        end
        object RLDBText5: TRLDBText
          Left = 112
          Top = 2
          Width = 37
          Height = 13
          DataField = 'apelido'
          DataSource = Dsreceber
        end
      end
    end
  end
  object QueryReceber: TQuery [1]
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy'
      'select'
      '       o.codigo,o.apelido,'
      
        '       substring(t.Descricao,1,25) + '#39' - '#39' + substring(tp.Descri' +
        'cao_TipoPgto,1,20) as TpCobranca,'
      '       c.codigo as cd_contratante,'
      '       c.nome as nm_contratante,'
      '       r.desdobramento as tipo,'
      '       r.numero_titulo as titulo,'
      '       r.valor as vr_titulo,'
      '       r.valor_pago ,'
      
        '       substring(convert(char(10),r.Data_Pagamento,103),1,6) + s' +
        'ubstring(convert(char(10),r.Data_Pagamento,103),9,2) as dt_baixa' +
        ','
      
        '       substring(convert(char(10),rb.dtbaixa,103),1,6) + substri' +
        'ng(convert(char(10),rb.dtbaixa,103),9,2) as dt_operacao'
      'from'
      #9' receber r'
      ''
      'inner join registro_baixa rb'
      'on'
      '       rb.numero_titulo = r.numero_titulo'
      '   and rb.desdobramento = r.desdobramento'
      'inner join contratante c'
      'on'
      '   c.codigo = r.codigo_contratante'
      ''
      'left join TipoCobranca t'
      ''
      'on t.Codigo = r.Tipo_Cobranca'
      ''
      'left join operador o'
      ''
      'on o.codigo = r.operador'
      ''
      'left join tipos_pagamentos tp'
      ''
      'on tp.Id_TipoPgto = r.tipo_pagamento'
      ''
      
        'where rb.dtbaixa between '#39'19/11/2007'#39' and '#39'19/12/2007'#39' --and r.O' +
        'perador = 50'
      ''
      'order by o.apelido,'
      '         t.descricao,'
      '         tp.Descricao_TipoPgto,'
      '         rb.dtbaixa,'
      '         c.nome'
      ''
      ''
      ''
      ' '
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 416
    Top = 208
  end
  object Dsreceber: TDataSource [2]
    DataSet = QueryReceber
    Left = 224
    Top = 208
  end
  inherited RLExpressionParserH: TRLExpressionParser
    Left = 508
    Top = 304
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    FileName = 'RelBaixaPorAtend'
    DisplayName = 'Documento PDF'
    Left = 357
    Top = 336
  end
  object RLSaveDialogSetup1: TRLSaveDialogSetup
    SaveInBackground = False
    Left = 181
    Top = 288
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 457
    Top = 280
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 505
    Top = 280
  end
end
