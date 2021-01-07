inherited QrEstatFatDet: TQrEstatFatDet
  DataSet = Query
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    100
    2970
    100
    2100
    100
    100
    0)
  ReportTitle = 'ESTATÍSTICA GERENCIAL FATURAMENTO DETALHADO'
  inherited PageHeaderBand1: TQRBand
    Size.Values = (
      198.4375
      1899.70833333333)
    inherited QRSysData1: TQRSysData
      Left = 165
      Width = 388
      Size.Values = (
        50.2708333333333
        436.5625
        21.1666666666667
        1026.58333333333)
      FontSize = 11
    end
    inherited QRSysData2: TQRSysData
      Left = 582
      Width = 127
      Size.Values = (
        39.6875
        1539.875
        21.1666666666667
        336.020833333333)
      FontSize = 8
    end
    inherited QRSysData3: TQRSysData
      Width = 8
      Size.Values = (
        39.6875
        18.5208333333333
        15.875
        21.1666666666667)
      FontSize = 8
    end
    inherited QRLabel2: TQRLabel
      Left = 8
      Top = 32
      Enabled = True
      Size.Values = (
        39.6875
        21.1666666666667
        84.6666666666667
        150.8125)
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 6
      Top = 56
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        15.875
        148.166666666667
        58.2083333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Mes'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 46
      Top = 56
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        121.708333333333
        148.166666666667
        58.2083333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Ano'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 78
      Top = 56
      Width = 99
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        206.375
        148.166666666667
        261.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Tipo Documento'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 464
      Top = 56
      Width = 29
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1227.66666666667
        148.166666666667
        76.7291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Desd'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 512
      Top = 56
      Width = 29
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1354.66666666667
        148.166666666667
        76.7291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Qtde'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 581
      Top = 56
      Width = 36
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1537.22916666667
        148.166666666667
        95.25)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Valor'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel9: TQRLabel
      Left = 662
      Top = 56
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1751.54166666667
        148.166666666667
        132.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Vr Pago'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel10: TQRLabel
      Left = 216
      Top = 56
      Width = 99
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        571.5
        148.166666666667
        261.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Forma Cobrança'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited DetailBand1: TQRBand
    Height = 17
    BeforePrint = DetailBand1BeforePrint
    Color = 14408667
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    object QRDBText1: TQRDBText
      Left = 5
      Top = 1
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        13.2291666666667
        2.64583333333333
        58.2083333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'mes'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 47
      Top = 1
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        124.354166666667
        2.64583333333333
        58.2083333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'Ano'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 79
      Top = 1
      Width = 78
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        209.020833333333
        2.64583333333333
        206.375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'tpDocumento'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 455
      Top = 1
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1203.85416666667
        2.64583333333333
        132.291666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'desdobr'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 511
      Top = 1
      Width = 29
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1352.02083333333
        2.64583333333333
        76.7291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'qtde'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 579
      Top = 1
      Width = 36
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1531.9375
        2.64583333333333
        95.25)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'valor'
      Mask = '###,###,##0.00'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 668
      Top = 1
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1767.41666666667
        2.64583333333333
        113.770833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'vrPago'
      Mask = '###,###,##0.00'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 217
      Top = 1
      Width = 92
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        574.145833333333
        2.64583333333333
        243.416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'FormaCobranca'
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
  end
  inherited SummaryBand1: TQRBand
    Top = 130
    Height = 34
    Size.Values = (
      89.9583333333333
      1899.70833333333)
    inherited QRSysData4_her: TQRSysData
      Width = 57
      Size.Values = (
        39.6875
        18.5208333333333
        15.875
        150.8125)
      FontSize = 8
    end
    object QRExpr2: TQRExpr
      Left = 591
      Top = 6
      Width = 120
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1563.6875
        15.875
        317.5)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(Query.vrpago)'
      Mask = '###,###,##0.00'
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 500
      Top = 6
      Width = 113
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1322.91666666667
        15.875
        298.979166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(Query.valor)'
      Mask = '###,###,##0.00'
      FontSize = 8
    end
  end
  inherited PageFooterBand1: TQRBand
    Top = 164
    Size.Values = (
      29.1041666666667
      1899.70833333333)
  end
  inherited QRLabel1: TQRLabel
    Size.Values = (
      39.6875
      486.833333333333
      21.1666666666667
      150.8125)
    FontSize = 8
  end
  object Query: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy'
      ''
      'select'
      ''
      '        datepart(mm,f.data_vencimento) as Mes,'
      '        datepart(yy,f.data_vencimento) as Ano,'
      #9't.descricao as tpDocumento, '
      '        tc.descricao as FormaCobranca,'
      #9'f.desdobramento as desdobr,'
      '        count(*) as qtde,'
      '        sum(valor) as valor'
      ''
      ''
      ''
      'from '
      ''
      'faturamento f'
      ''
      'left join tipodocumento t'
      '  on f.tipo_documento = t.codigo'
      ''
      'left join contratante c'
      '  on c.codigo = f.codigo_contratante'
      ''
      'left join tipoCobranca tc'
      'on'
      '   tc.codigo = c.forma_cobranca'
      ''
      'where '
      #9'f.data_vencimento between '
      '        '#39'01/12/2006'#39' and '#39'31/12/2006 23:59:59'#39
      'group by '
      '        datepart(mm,f.data_vencimento),'
      '        datepart(yy,f.data_vencimento),'
      #9't.descricao, '
      #9'tc.descricao,'
      #9'f.desdobramento'
      ''
      'order by '
      '        2,1,'
      #9't.descricao, '
      #9'tc.descricao'
      ' ')
    Left = 528
    Top = 16
  end
end
