inherited QrContratInadip: TQrContratInadip
  DataSet = QueryContrInad
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
  ReportTitle = 'Contratantes Inadimplentes'
  inherited PageHeaderBand1: TQRBand
    Size.Values = (
      198.4375
      1899.70833333333)
    inherited QRSysData1: TQRSysData
      Left = 241
      Width = 235
      Size.Values = (
        50.2708333333333
        637.645833333333
        21.1666666666667
        621.770833333333)
      FontSize = 11
    end
    inherited QRSysData2: TQRSysData
      Left = 575
      Width = 134
      Size.Values = (
        39.6875
        1521.35416666667
        21.1666666666667
        354.541666666667)
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
      Size.Values = (
        39.6875
        296.333333333333
        21.1666666666667
        150.8125)
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 8
      Top = 56
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        21.1666666666667
        148.166666666667
        113.770833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Código'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 104
      Top = 56
      Width = 78
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        275.166666666667
        148.166666666667
        206.375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Contratante'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 472
      Top = 56
      Width = 141
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1248.83333333333
        148.166666666667
        373.0625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Qt Títulos em atraso'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited DetailBand1: TQRBand
    Height = 17
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    object QRDBText1: TQRDBText
      Left = 8
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
        21.1666666666667
        0
        113.770833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryContrInad
      DataField = 'codigo'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 104
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
        275.166666666667
        0
        76.7291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryContrInad
      DataField = 'nome'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 595
      Top = 0
      Width = 15
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1574.27083333333
        0
        39.6875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryContrInad
      DataField = 'qt'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited SummaryBand1: TQRBand
    Top = 130
    Height = 37
    Size.Values = (
      97.8958333333333
      1899.70833333333)
    inherited QRSysData4_her: TQRSysData
      Width = 64
      Size.Values = (
        39.6875
        18.5208333333333
        15.875
        169.333333333333)
      FontSize = 8
    end
  end
  inherited PageFooterBand1: TQRBand
    Top = 167
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
  object QueryContrInad: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select codigo,nome, count(*) qt from contratante c, receber r wh' +
        'ere'
      'c.exclusao is null'
      'and r.codigo_contratante = c.codigo'
      'and r.data_pagamento is null'
      'and lg_geraFat ='
      '1'
      'and r.data_vencimento < getdate()'
      'group by codigo,nome, desdobramento having count(*)'
      '>'
      '3'
      'order by c.nome'
      ' ')
    Left = 262
    Top = 6
  end
end
