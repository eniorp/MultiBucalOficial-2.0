inherited QrEstatFatRes: TQrEstatFatRes
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
  ReportTitle = 'ESTATÍSITICA GERENCIAL DE FATURAMENTO'
  inherited PageHeaderBand1: TQRBand
    AfterPrint = PageHeaderBand1AfterPrint
    Size.Values = (
      198.4375
      1899.70833333333)
    inherited QRSysData1: TQRSysData
      Left = 192
      Width = 334
      Size.Values = (
        50.2708333333333
        508
        21.1666666666667
        883.708333333333)
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
      Left = 24
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
        63.5
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
      Left = 64
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
        169.333333333333
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
      Left = 128
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
        338.666666666667
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
      Left = 296
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
        783.166666666667
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
      Left = 400
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
        1058.33333333333
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
      Left = 493
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
        1304.39583333333
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
      Left = 576
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
        1524
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
  end
  inherited DetailBand1: TQRBand
    Height = 17
    BeforePrint = DetailBand1BeforePrint
    Color = 14408667
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    object QRDBText1: TQRDBText
      Left = 23
      Top = 0
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        60.8541666666667
        0
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
      Left = 65
      Top = 0
      Width = 22
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        171.979166666667
        0
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
      Left = 129
      Top = 0
      Width = 78
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        341.3125
        0
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
      Left = 287
      Top = 0
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        759.354166666667
        0
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
      Left = 399
      Top = 0
      Width = 29
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1055.6875
        0
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
      Left = 492
      Top = 0
      Width = 36
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1301.75
        0
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
      Left = 581
      Top = 0
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1537.22916666667
        0
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
  end
  inherited SummaryBand1: TQRBand
    Top = 130
    Height = 36
    Size.Values = (
      95.25
      1899.70833333333)
    object QRExpr2: TQRExpr [0]
      Left = 503
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
        1330.85416666667
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
    inherited QRSysData4_her: TQRSysData
      Width = 57
      Size.Values = (
        39.6875
        18.5208333333333
        15.875
        150.8125)
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 415
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
        1098.02083333333
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
    Top = 166
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
      'select'
      '        datepart(mm,f.data_vencimento) as Mes,'
      '        datepart(yy,f.data_vencimento) as Ano,'
      #9't.descricao as tpDocumento, '
      #9'f.desdobramento as desdobr,'
      '        count(*) as qtde,'
      '        sum(f.valor) as valor'
      ''
      ''
      ''
      ''
      'from'
      ''
      'faturamento f'
      ''
      'left join tipodocumento t'
      '  on f.tipo_documento = t.codigo'
      ''
      'where'
      #9'f.data_vencimento between'
      '        '#39'01/01/2006'#39' and '#39'31/12/2006 23:59:59'#39
      'group by'
      '        datepart(mm,f.data_vencimento),'
      '        datepart(yy,f.data_vencimento),'
      #9't.descricao, '
      #9'f.desdobramento'
      ''
      'order by 2,1,3'
      ' ')
    Left = 510
    Top = 30
  end
end
