inherited QrBaixaPAtendente: TQrBaixaPAtendente
  Width = 635
  Height = 898
  DataSet = QueryReceber
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  ReportTitle = 'RELAT'#211'RIO DE  BAIXA POR OPERADOR'
  Zoom = 80
  inherited PageHeaderBand1: TQRBand
    Left = 30
    Top = 30
    Width = 575
    Height = 60
    Size.Values = (
      198.437500000000000000
      1901.692708333333000000)
    inherited QRSysData1: TQRSysData
      Left = 236
      Top = 6
      Width = 102
      Height = 15
      Size.Values = (
        49.609375000000000000
        780.520833333333500000
        19.843750000000000000
        337.343750000000000000)
      FontSize = 11
    end
    inherited QRSysData2: TQRSysData
      Left = 505
      Top = 6
      Width = 62
      Height = 12
      Size.Values = (
        39.687500000000000000
        1670.182291666667000000
        19.843750000000000000
        205.052083333333400000)
      FontSize = 8
    end
    inherited QRSysData3: TQRSysData
      Left = 6
      Top = 5
      Width = 40
      Height = 12
      Size.Values = (
        39.687500000000000000
        19.843750000000000000
        16.536458333333330000
        132.291666666666700000)
      FontSize = 8
    end
    inherited QRLabel2: TQRLabel
      Left = 10
      Top = 30
      Width = 68
      Height = 12
      Enabled = True
      Size.Values = (
        39.687500000000000000
        33.072916666666670000
        99.218750000000000000
        224.895833333333300000)
      Caption = 'Intervalo : '
      FontSize = 8
    end
  end
  inherited DetailBand1: TQRBand
    Left = 30
    Top = 147
    Width = 575
    Height = 16
    Size.Values = (
      52.916666666666660000
      1901.692708333333000000)
    object QRDBText3: TQRDBText
      Left = 4
      Top = 3
      Width = 57
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        13.229166666666700000
        9.921875000000000000
        188.515625000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'cd_contratante'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 70
      Top = 3
      Width = 79
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        231.510416666666700000
        9.921875000000000000
        261.276041666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'nm_contratante'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 270
      Top = 3
      Width = 23
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        892.968750000000000000
        9.921875000000000000
        76.067708333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'tipo'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 452
      Top = 3
      Width = 51
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1494.895833333333000000
        9.921875000000000000
        168.671875000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'vr_titulo'
      Mask = '###,###,##0.00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 511
      Top = 3
      Width = 57
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1690.026041666667000000
        9.921875000000000000
        188.515625000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'valor_pago'
      Mask = '###,###,##0.00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText9: TQRDBText
      Left = 394
      Top = 3
      Width = 46
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1303.072916666667000000
        9.921875000000000000
        152.135416666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'dt_baixa'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText12: TQRDBText
      Left = 310
      Top = 3
      Width = 62
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1025.260416666667000000
        9.921875000000000000
        205.052083333333400000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'dt_operacao'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited SummaryBand1: TQRBand
    Left = 30
    Top = 216
    Width = 575
    Height = 43
    Size.Values = (
      142.213541666666700000
      1901.692708333333000000)
    inherited QRSysData4_her: TQRSysData
      Left = 6
      Top = 5
      Width = 113
      Height = 12
      Size.Values = (
        39.687500000000000000
        19.843750000000000000
        16.536458333333330000
        373.723958333333300000)
      FontSize = 8
    end
  end
  inherited PageFooterBand1: TQRBand
    Left = 30
    Top = 259
    Width = 575
    Height = 9
    Size.Values = (
      29.765625000000000000
      1901.692708333333000000)
  end
  inherited QRLabel1: TQRLabel
    Left = 147
    Top = 6
    Width = 46
    Height = 12
    Size.Values = (
      39.687500000000000000
      486.171874999999900000
      19.843750000000000000
      152.135416666666700000)
    FontSize = 8
  end
  object QRGroup1: TQRGroup [5]
    Left = 30
    Top = 90
    Width = 575
    Height = 22
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      72.760416666666680000
      1901.692708333333000000)
    Expression = 'QueryReceber.apelido'
    FooterBand = QRBand1
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText10: TQRDBText
      Left = 64
      Top = 3
      Width = 39
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        211.666666666666700000
        9.921875000000000000
        128.984375000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 8
      Top = 4
      Width = 65
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        26.458333333333330000
        13.229166666666670000
        214.973958333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'OPERADOR :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 110
      Top = 3
      Width = 46
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        363.802083333333400000
        9.921875000000000000
        152.135416666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'apelido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRGroup2: TQRGroup [6]
    Left = 30
    Top = 112
    Width = 575
    Height = 35
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      115.755208333333300000
      1901.692708333333000000)
    Expression = 'QueryReceber.TpCobranca'
    FooterBand = QRBand2
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel4: TQRLabel
      Left = 48
      Top = 4
      Width = 26
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        158.750000000000000000
        13.229166666666670000
        85.989583333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TIPO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 83
      Top = 3
      Width = 65
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        274.505208333333300000
        9.921875000000000000
        214.973958333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'TpCobranca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 59
      Top = 21
      Width = 29
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.130208333333400000
        69.453125000000000000
        95.911458333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CLIENTE'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel6: TQRLabel
      Left = 274
      Top = 21
      Width = 17
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        906.197916666666800000
        69.453125000000000000
        56.223958333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TIPO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel7: TQRLabel
      Left = 320
      Top = 21
      Width = 45
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1058.333333333333000000
        69.453125000000000000
        148.828125000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DT OPERA'#199#195'O'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel8: TQRLabel
      Left = 401
      Top = 21
      Width = 33
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1326.223958333333000000
        69.453125000000000000
        109.140625000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DT BAIXA'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel9: TQRLabel
      Left = 460
      Top = 21
      Width = 41
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        69.453125000000000000
        135.598958333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VR TTITULO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel10: TQRLabel
      Left = 536
      Top = 21
      Width = 29
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1772.708333333333000000
        69.453125000000000000
        95.911458333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VR PAGO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
  end
  object QRBand1: TQRBand [7]
    Left = 30
    Top = 191
    Width = 575
    Height = 25
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      82.682291666666680000
      1901.692708333333000000)
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 506
      Top = 8
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666700000
        1673.489583333330000000
        26.458333333333300000
        205.052083333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryReceber.valor_pago)'
      Mask = '###,###,##0.00'
      FontSize = 9
    end
    object QRExpr2: TQRExpr
      Left = 441
      Top = 8
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666700000
        1458.515625000000000000
        26.458333333333300000
        205.052083333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryReceber.vr_titulo)'
      Mask = '###,###,##0.00'
      FontSize = 9
    end
    object QRExpr3: TQRExpr
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        26.458333333333330000
        26.458333333333330000
        95.911458333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'COUNT'
      FontSize = 9
    end
  end
  object QRBand2: TQRBand [8]
    Left = 30
    Top = 163
    Width = 575
    Height = 28
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      92.604166666666680000
      1901.692708333333000000)
    BandType = rbGroupFooter
    object QRExpr4: TQRExpr
      Left = 506
      Top = 4
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666700000
        1673.489583333330000000
        13.229166666666700000
        205.052083333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryReceber.valor_pago)'
      Mask = '###,###,##0.00'
      FontSize = 9
    end
    object QRExpr5: TQRExpr
      Left = 441
      Top = 4
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666700000
        1458.515625000000000000
        13.229166666666700000
        205.052083333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryReceber.vr_titulo)'
      Mask = '###,###,##0.00'
      FontSize = 9
    end
    object QRExpr6: TQRExpr
      Left = 8
      Top = 4
      Width = 29
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        26.458333333333330000
        13.229166666666670000
        95.911458333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'COUNT'
      FontSize = 9
    end
    object QRDBText11: TQRDBText
      Left = 44
      Top = 4
      Width = 57
      Height = 13
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.994791666666670000
        145.520833333333300000
        13.229166666666670000
        188.515625000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryReceber
      DataField = 'TpCobranca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QueryReceber: TQuery
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
      
        'where rb.dtbaixa between '#39'01/10/2007'#39' and '#39'01/11/2007'#39' and r.Ope' +
        'rador = 22'
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
    Left = 280
    Top = 16
  end
end
