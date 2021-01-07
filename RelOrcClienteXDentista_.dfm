inherited QrOrcClienteXDentista: TQrOrcClienteXDentista
  Top = -155
  Width = 1032
  Height = 1459
  BeforePrint = QuickRepBeforePrint
  DataSet = QueryOrcamento
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
  ReportTitle = 'MULTIODONTO - CONVÊNIO ODONTOLÓGICO'
  Zoom = 130
  inherited PageHeaderBand1: TQRBand
    Left = 49
    Top = 49
    Width = 934
    Height = 208
    Frame.Color = clGray
    Frame.DrawBottom = False
    Size.Values = (
      423.333333333333
      1900.92948717949)
    inherited QRSysData1: TQRSysData
      Left = 261
      Top = 13
      Width = 411
      Height = 26
      Size.Values = (
        52.9166666666667
        531.201923076923
        26.4583333333333
        836.490384615385)
      FontSize = 11
    end
    inherited QRSysData2: TQRSysData
      Left = 740
      Top = 52
      Width = 183
      Height = 13
      Size.Values = (
        26.4583333333333
        1506.08974358974
        105.833333333333
        372.451923076923)
      Font.Height = -8
      ParentFont = False
      Text = 'Emissão : '
      FontSize = 6
    end
    inherited QRSysData3: TQRSysData
      Left = 13
      Top = 13
      Width = 65
      Height = 26
      Enabled = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        26.4583333333333
        132.291666666667)
      FontSize = 8
    end
    inherited QRLabel2: TQRLabel
      Left = 182
      Top = 52
      Width = 129
      Height = 26
      Enabled = True
      Size.Values = (
        52.9166666666667
        370.416666666667
        105.833333333333
        262.548076923077)
      Caption = 'ORÇAMENTO Nº: '
      Font.Style = [fsBold]
      ParentFont = False
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 468
      Top = 39
      Width = 56
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        952.5
        79.375
        113.974358974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DATA :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape1: TQRShape
      Left = 3
      Top = 68
      Width = 929
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        26.4583333333333
        5.29166666666667
        137.583333333333
        1891.77083333333)
      Pen.Color = clGray
      Shape = qrsHorLine
    end
    object QRLabel4: TQRLabel
      Left = 13
      Top = 78
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        26.4583333333333
        158.75
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'BENEF    :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel5: TQRLabel
      Left = 13
      Top = 98
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        26.4583333333333
        199.455128205128
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONTRAT  :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel6: TQRLabel
      Left = 13
      Top = 117
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        26.4583333333333
        238.125
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DENTISTA :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel7: TQRLabel
      Left = 13
      Top = 137
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        26.4583333333333
        278.830128205128
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EMPRESA  :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel8: TQRLabel
      Left = 13
      Top = 156
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        26.4583333333333
        317.5
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'GRUPO    :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel9: TQRLabel
      Left = 624
      Top = 78
      Width = 112
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        1270
        158.75
        227.948717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓD DO BENEF    :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel10: TQRLabel
      Left = 624
      Top = 98
      Width = 112
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        1270
        199.455128205128
        227.948717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓD DO CONTRAT  :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel11: TQRLabel
      Left = 624
      Top = 117
      Width = 112
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        1270
        238.125
        227.948717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓD DO DENTISTA :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel12: TQRLabel
      Left = 624
      Top = 137
      Width = 112
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        1270
        278.830128205128
        227.948717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓD DA EMPRESA  :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel13: TQRLabel
      Left = 624
      Top = 156
      Width = 112
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        30.5288461538462
        1270
        317.5
        227.948717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓD DO GRUPO    :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel14: TQRLabel
      Left = 13
      Top = 182
      Width = 56
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        370.416666666667
        113.974358974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CÓDIGO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel15: TQRLabel
      Left = 130
      Top = 182
      Width = 156
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        264.583333333333
        370.416666666667
        317.5)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRIÇÃO SERVIÇO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel16: TQRLabel
      Left = 598
      Top = 182
      Width = 38
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1217.08333333333
        370.416666666667
        77.3397435897436)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QTDE'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel17: TQRLabel
      Left = 663
      Top = 182
      Width = 101
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1349.375
        370.416666666667
        205.560897435897)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR BRUTO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel18: TQRLabel
      Left = 806
      Top = 182
      Width = 120
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1640.41666666667
        370.416666666667
        244.230769230769)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR C/ DESC'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape2: TQRShape
      Left = 3
      Top = 179
      Width = 929
      Height = 8
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        15.875
        5.29166666666667
        365.125
        1891.77083333333)
      Pen.Color = clGray
      Shape = qrsHorLine
    end
    object QRDBText1: TQRDBText
      Left = 91
      Top = 78
      Width = 66
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        185.208333333333
        158.75
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'nm_usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText2: TQRDBText
      Left = 91
      Top = 98
      Width = 66
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        185.208333333333
        199.455128205128
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'nm_contrat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText3: TQRDBText
      Left = 91
      Top = 118
      Width = 73
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        185.208333333333
        240.160256410256
        148.573717948718)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'nm_dentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText4: TQRDBText
      Left = 91
      Top = 138
      Width = 66
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        185.208333333333
        280.865384615385
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'nm_empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText5: TQRDBText
      Left = 754
      Top = 79
      Width = 47
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        1534.58333333333
        160.785256410256
        95.6570512820513)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText6: TQRDBText
      Left = 754
      Top = 99
      Width = 66
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        1534.58333333333
        201.490384615385
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'cd_contrat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText7: TQRDBText
      Left = 754
      Top = 118
      Width = 53
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        1534.58333333333
        240.160256410256
        107.86858974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'dentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText8: TQRDBText
      Left = 754
      Top = 138
      Width = 66
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        1534.58333333333
        280.865384615385
        134.326923076923)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'cd_empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText9: TQRDBText
      Left = 754
      Top = 157
      Width = 53
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        1534.58333333333
        319.535256410256
        107.86858974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'cd_grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText10: TQRDBText
      Left = 325
      Top = 39
      Width = 56
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        661.458333333333
        79.375
        113.974358974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'numero'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 546
      Top = 39
      Width = 38
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1111.25
        79.375
        77.3397435897436)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'data'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText17: TQRDBText
      Left = 91
      Top = 158
      Width = 53
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        22.3878205128205
        185.208333333333
        321.570512820513
        107.86858974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'ds_grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRImage1: TQRImage
      Left = 8
      Top = 1
      Width = 114
      Height = 68
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        137.583333333333
        15.875
        2.64583333333333
        232.833333333333)
      Picture.Data = {
        07544269746D61707EC60000424D7EC60000000000003600000028000000B300
        00005E000000010018000000000048C60000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DEADAAF7FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF31
        34DEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF76B69EFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7DEAEADCE82
        84CE7D84EFC3C6FFFFFFFFFFFFFFFFFFFFF3F7D68E8CCE8284CE7D84DEA2A5FF
        FFFFFFFFFFF7DFE7EFC3C6E7BEBDFFFFFFFFFFFFFFFFFFEFCFCEF7E3E7FFFFFF
        FFFFFFFFFFFFFFFFFFF7DFE7FFFFFFFFFFFFFFFFFFFFFFFFEFC3C6E7BEBDEFC3
        C6E7BEC6EFC3C6E7BEBDF7E3E7F7DFE7EFC3C6E7BEBDFFF3F7FFFFFFFFFFFFFF
        EFEFF7E3E7FFEFF7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFF7E3E7CE7D84
        D68284CE7D7BF7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC3
        C6CE7D84D68284D68E8CFFF3F7FFFFFFFFF3F7E7BEBDEFC3C6E7BEC6EFC3C6E7
        BEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6D68284CE7D7BD69294FFEFF7
        FFFFFFFFFFFFEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFFFFFFFE7B2B5FFFFFFFFFF
        FFFFEFF7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFEFF7DE9294CE
        7D7BCE8284DE9EA5FFFFFFFFFFFFF7E3E7E7BEC6EFC3C6E7BEBDEFC3C6E7BEC6
        EFC3C6FFEFEFFFFFFFFFFFFFEFC3C6CE7D7BCE8284D68E94FFF3F7FFFFFFFFFF
        FFFFFFFFFFFFFFE7BEBDCE8284CE7D84D68284EFCFCEFFFFFFFFEFF7EFC3C6E7
        BEBDEFC3C6EFCFD6FFFFFFFFFFFFF7E3E7DE9EA5D68284CE7D7BEFC3C6FFFFFF
        FFFFFFFFFFFFFFF3F7D68E94D68284CE7D7BEFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2A59C0C08C66163F7DFE7FFFFFF
        EFCFCEE7B2B5FFFFFFFFF3F7AD2C29D68284FFEFF7FFF3F7A51C18C66163FFFF
        FFFFFFFFC66D6BFFF3F7FFFFFFFFFFFFFFEFEFAD3031E7BEC6FFFFFFFFFFFFFF
        FFFFFFEFF7AD2021FFEFEFFFFFFFFFFFFFFFFFFFFFFFFF9400009C0C10FFFFFF
        FFFFFFF7D3D6CE7D84FFFFFFCE7D7BFFF3F7FFFFFFFFFFFFFFFFFFBD5152E7BE
        C6FFFFFFFFEFEF940000B53C42FFFFFFFFFFFFEFC3C69C0C10E7B2B5FFFFFFF7
        D3D69C0C10EFC3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD69294AD2C31FFF3F7
        FFFFFFD69294AD2C31F7E3E7FFFFFFEFC3C6940000B54142FFFFFFDEA2A5A51C
        21E7B2B5FFFFFFFFFFFFDE9EA5AD2021EFCFCEFFFFFFD68E94AD3031F7DFDEFF
        FFFFFFEFF7CE7173FFFFFFFFFFFFFFFFFFDEA2A5B53C39FFFFFFFFFFFFFFFFFF
        E7BEBD940000B53C42FFFFFFFFFFFFFFFFFFFFEFF7AD3031CE7D7BFFF3F7FFEF
        F7AD2021BD5D5AFFFFFFFFFFFFCE8284940000D68284FFFFFFFFFFFFBD5D5AE7
        B2B5FFFFFFDEA2A5A51C18F7D3D6FFFFFFD69294AD2C29F7E3E7FFFFFFFFFFFF
        C66D6BA51010FFEFF7FFFFFFE7BEBD940000CE7D84FFFFFFF7DFDE940000B53C
        42FFFFFFFFFFFFDEA2A59C0C10DEA2A5FFFFFFFFFFFFDE9EA5E7B2B5FFFFFFF7
        E3E7AD2C31CE8284FFEFEFFFF3F7A51C21D69294FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9C1010AD3031FFFFFFFFFFFFFFFFFFFFFFFFFF
        F3F7FFFFFFB54142940000FFF3F7FFFFFFFFFFFFD69294940000DEA2A5FFFFFF
        CE8284FFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFD682
        84940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000B54142FFFFFFF7E3E7FF
        FFFFDEA2A5FFFFFFCE8284FFFFFFFFFFFFFFFFFFC67173940000EFC3C6FFFFFF
        FFFFFF940000B54142FFFFFFFFF3F79C1010B53031FFFFFFFFFFFFFFFFFFBD51
        52940000F7E3E7FFFFFFFFFFFFFFFFFFEFC3C6940000DEA2A5FFFFFFFFFFFFFF
        FFFFA51010A52021FFFFFFE7C3C6940000B54142FFFFFFFFFFFFAD20219C1010
        FFFFFFE7C3C6940000C67173FFFFFFFFFFFFFFFFFFA52021A52021FFFFFFFFFF
        FFCE8284FFFFFFFFFFFFF7D3D6940000B54142FFFFFFFFFFFFFFFFFFEFC3C694
        0000B54142FFFFFFFFFFFFFFFFFFB541429C1010FFFFFFFFFFFFFFFFFFD69294
        940000DEA2A5FFFFFFCE8284940000E7C3C6FFFFFFFFFFFFFFF3F7D69294EFC3
        C6940000D69294FFFFFFFFFFFFFFFFFFA52021A52021FFFFFFE7B2B5940000C6
        7173FFFFFFFFFFFFEFC3C6940000CE7173FFFFFFFFFFFF940000B54142FFFFFF
        F7E3E79C1010B53031FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7FFFFFFA52021A510
        10FFFFFFFFFFFFFFFFFFDE9294940000DEA2A5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEFC3C6940000B54142FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF940000940000FFFFFFFFFFFFFFFFFFE7C3C6940000BD5152FFFFFFCE8284FF
        FFFFFFFFFFCE8284940000AD3031EFC3C6FFFFFFFFFFFFFFFFFFA510109C1010
        CE8284FFF3F7FFFFFFFFFFFFFFFFFF940000B54142FFFFFFC67173FFFFFFFFFF
        FFFFFFFFCE8284FFFFFFFFFFFFDEA2A5940000AD3031EFC3C6FFFFFFFFFFFF94
        0000B54142FFFFFFD69294940000CE8284FFFFFFFFFFFFFFFFFFCE8284940000
        D69294FFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFB541
        42940000EFD3D6EFC3C6940000B54142FFFFFFFFFFFFB54142940000EFD3D6D6
        8284940000E7C3C6FFFFFFFFFFFFFFFFFFB54142940000F7D3D6FFFFFFCE8284
        FFFFFFFFF3F7A510109C1010BD6163FFFFFFFFFFFFFFFFFFE7C3C6940000B541
        42FFFFFFFFFFFFF7E3E7940000B54142FFFFFFFFFFFFFFFFFFE7C3C6940000BD
        5152FFFFFFCE8284940000EFC3C6FFFFFFFFFFFFFFFFFFFFF3F7C66163940000
        E7C3C6FFFFFFFFFFFFFFFFFFB54142940000EFD3D6BD5152940000DEA2A5FFFF
        FFFFFFFFD69294B54142BD5152F7E3E7FFFFFF940000B54142FFFFFFD6929494
        0000C66163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD3D6940000B54142FFFFFF
        FFFFFFFFFFFFEFC3C6940000BD5152FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCE8284940000CE7173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D3D6940000
        B54142FFFFFFFFFFFFFFFFFFEFC3C6940000B54142FFFFFFD68284FFFFFFE7B2
        B5940000B53031DEAEADEFC3C6FFFFFFFFFFFFD69E9C940000CE7D84FFF3F7D6
        8E8CFFFFFFFFFFFFFFFFFF940000AD2021C66D73B54142FFFFFFFFFFFFFFFFFF
        D68284FFFFFFF7D3D6940000A51010EFCFCEEFC3C6FFFFFFFFFFFF940000B541
        42FFFFFFDE9294940000CE8284FFFFFFFFFFFFFFFFFFCE8284940000D68284FF
        FFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFB54142940000
        EFC3C6E7BEBD940000B53C42FFFFFFFFFFFFCE8284940000D68284B54D4A9400
        00E7BEC6FFFFFFFFFFFFFFFFFFB53C42940000E7BEBDFFFFFFCE7D84FFFFFFAD
        2C29940000DE9EA5D68284FFFFFFFFFFFFFFFFFFEFC3C6940000B54142FFFFFF
        FFFFFFEFCFCE940000B53C42FFFFFFFFFFFFFFFFFFE7BEC6940000B53C39FFFF
        FFCE7D84940000E7BEBDFFFFFFFFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FF
        FFFFFFFFFFFFFFFFB54142940000EFC3C6B53C42940000E7BEBDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF940000B54142FFFFFFD68284940000CE82
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D3D6940000B54142FFFFFFFFFFFFFF
        FFFFEFC3C6940000B54142FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BE
        C6940000AD2C29FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7FFFFFFAD2021AD2C29FF
        FFFFFFFFFFFFFFFFE7BEBD940000CE7D84FFFFFFCE7D7BF7D3D69C0C10A51010
        F7DFDEEFC3C6E7BEC6FFFFFFFFFFFFAD2021940000F7E3E7FFFFFFD69294FFEF
        F7FFFFFFFFFFFF940000B53C42FFFFFFBD5D5AFFFFFFFFFFFFFFFFFFCE7D7BF7
        E3E79C0C10940000DEAEADFFFFFFE7BEC6FFFFFFFFFFFF940000B53C42FFFFFF
        F7DFDE940000BD5D63FFFFFFFFFFFFFFFFFFCE7D84940000D69E9CFFFFFFFFFF
        FFFFFFFFD69E9C940000DE9EA5FFFFFFFFFFFFFFFFFFB53C42940000F7DFDEEF
        C3C6940000B54142FFFFFFFFFFFFB53C42940000D69E9CDEA2A5940000E7B2B5
        FFFFFFFFFFFFFFFFFFB54142940000FFFFFFFFFFFFCE8284BD5D5A940000C66D
        73FFFFFFCE7D7BFFFFFFFFFFFFFFFFFFE7BEBD940000B53C42FFFFFFFFFFFFFF
        FFFFA51C21AD3031FFFFFFFFFFFFFFFFFFEFC3C6940000D68284FFFFFFCE8284
        940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFFDE9EA5940000DEAEADFFFFFFFFFF
        FFFFFFFFB53C39940000FFFFFFC66163940000D69294FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF940000B53C42FFFFFFD69E9C940000B54D52FFFFFF
        FFFFFFFFFFFFFFFFFFFFF3F7FFFFFFAD2021A51C21FFFFFFFFFFFFFFFFFFE7BE
        C6940000BD5D5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8284
        940000FFF3F7FFFFFFFFFFFFFFFFFFCE8284FFFFFFCE8284940000F7E3E7FFFF
        FFFFFFFFD69294940000F7D3D6FFFFFFCE8284AD3031940000E7B2B5FFFFFFE7
        C3C6EFC3C6FFFFFFE7B2B5940000C66163FFFFFFFFFFFFFFF3F7D68284FFFFFF
        FFFFFF940000B54142FFFFFFF7E3E7FFF3F7EFC3C6FFFFFFCE8284AD30319400
        00C67173FFFFFFFFFFFFEFC3C6FFFFFFFFFFFF940000B54142FFFFFFFFFFFFB5
        4142B53031FFFFFFFFFFFFFFFFFFBD5152AD3031FFFFFFFFFFFFFFFFFFFFFFFF
        FFF3F79C1010CE7173FFFFFFFFFFFFFFF3F7A51010C67173FFFFFFE7C3C69400
        00B54142FFFFFFFFF3F7940000AD3031FFFFFFFFF3F7A51010BD6163FFFFFFFF
        FFFFFFFFFF9C1010BD5152FFFFFFFFFFFFAD3031940000AD3031FFFFFFFFFFFF
        CE8284FFFFFFEFC3C6FFFFFFEFC3C6940000B54142FFFFFFF7E3E7EFD3D6D682
        84940000F7E3E7FFFFFFFFFFFFD69294940000EFD3D6FFFFFFCE8284940000E7
        C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFF3F79C1010C66163FFFFFFFFFFFFFFFFFF
        A51010BD5152FFFFFFF7E3E7A51010B54142FFFFFFFFFFFFFFFFFFFFF3F7DEA2
        A5FFFFFFFFFFFF940000B54142FFFFFFFFFFFFB54142AD2021FFF3F7FFFFFFFF
        FFFFFFF3F7BD6163FFFFFFCE8284940000FFF3F7FFFFFFFFFFFFDE9294940000
        F7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD6163AD
        3031DEA2A5E7C3C6C67173BD5152FFFFFFFFFFFFB54142CE7173EFC3C6E7B2B5
        B54142D68284FFFFFFFFFFFFB54142940000CE8284FFFFFFFFF3F7D68284DEA2
        A5F7E3E7B54142940000E7B2B5FFFFFFFFFFFFFFF3F7A51010EFD3D6FFF3F794
        0000AD3031E7C3C6E7B2B5AD3031EFC3C6FFFFFFBD5152940000B54142FFFFFF
        FFF3F7E7B2B5C66163FFFFFFE7C3C6940000AD3031FFFFFFFFFFFFE7B2B5A520
        21DEA2A5E7C3C6DEA2A5AD3031F7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6
        8284AD3031E7B2B5E7C3C6C66163B54142FFFFFFFFFFFFE7B2B5940000AD3031
        E7C3C6AD3031BD5152EFD3D6FFFFFFFFFFFFE7B2B5AD3031E7B2B5EFC3C6CE82
        84AD3031F7E3E7FFFFFFEFC3C69400009C1010FFF3F7FFFFFFEFD3D6B54142FF
        FFFFCE8284C67173CE8284940000AD3031E7C3C6AD3031EFC3C6FFFFFFB54142
        C67173EFC3C6E7B2B5B54142CE8284FFFFFFFFFFFFC67173940000D68284FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7B2B5AD3031E7B2B5EFC3C6CE8284AD3031F7
        E3E7FFFFFFFFFFFFDEA2A5940000DEA2A5E7C3C6DEA2A5C66163D69294FFFFFF
        E7C3C6940000AD3031FFFFFFFFFFFFFFF3F7AD3031AD3031DEA2A5EFC3C6CE82
        84BD5152FFFFFFFFFFFFB54142C67173E7C3C6E7B2B5B54142CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7E7BEBDEFC3
        C6EFCFD6FFFFFFF7DFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7DFE7EFC3C6E7BEBDFFFFFFFFFFFFFFF3F7E7BEBDEFC3C6EFCFD6
        EFC3C6E7BEBDEFC3C6FFEFF7FFFFFFEFCFCEEFC3C6F7DFE7EFC3C6E7BEBDDEA2
        A5E7BEC6E7B2B5DEAEADFFF3F7F7DFE7EFC3C6E7BEBDFFF3F7FFFFFFFFF3F7E7
        BEBDEFC3C6F7DFE7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7E7BEBDEFC3C6E7BEC6FFF3F7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFEFCFD6EFC3C6EFCFCEF7E3
        E7E7BEC6EFC3C6E7BEBDEFC3C6E7BEC6EFC3C6FFEFEFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E3E7E7BEC6EFC3C6E7BEBDF7E3E7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF7DFDEEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFFFEFF7EFC3C6E7
        BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFEFF7EFC3C6F7DFDEFFFFFFF7DFE7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54D52CE7173
        AD2C29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F7AD2C31FFF3F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7B54142E7B2B5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC66163C67173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF73941DEFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF8C8EEFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFEFFFC6C3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF9492FF1010FF0000D6D6D3D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF525152424142D6D3D6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3FF4241
        FF0000FF0000F7000021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF737173313031000000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3FF080CFF0000FF0000FF
        4241A5393C39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848284847D84C6C3C6000000949294FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF8482FF0000FF0000FF0000FF4241FF6B6D6B94
        9294FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BE
        C6424142FFFFFF737173000000C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6361FF0000FF0000FF0000FF0000FFE7E3FF424142C6C3C6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D3D6313031
        FFFFFFFFFFFF424142101010F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63
        61FF0000FF0000FF0000FF0000FF7371FFFFFFFF101010F7F3F7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
        FFFFF7F3F7101010848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6361FF0000FF0000
        FF0000FF0000FF080CFFF7F3FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FFA59EA5212021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF0000FF0000FF0000FF0000FF
        0000FF6361FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212021DEDFDEFFFFFFFFFFFFFFFFFF
        181C18A5A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD6D3FF0000FF0000FF0000FF0000FF0000FF0000FFB5
        B2FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFFFFFFFFA5A2A531
        3031FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3FF2120FF0000FF0000FF0000FF0000FF0000FF1010FFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFFFFFFFFF7F3F7000000F7F3
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B
        7DFF0000FF0000FF0000FF0000FF0000FF0000FF5251FFFFFFFFFFFFFFFFFFFF
        101010EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF423C42C6C3C6FFFFFFFFFFFFFFFFFFFFFFFF292C29C6C3C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFF1010FF0000
        FF0000FF0000FF0000FF0000FF0000FF7B7DFFFFFFFFFFFFFFFFFFFF393C39C6
        C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF424142BDBEBDFFFFFFFFFFFFFFFFFFFFFFFF424142C6BEC6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8482FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FFB5B2FFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424142
        C6C3C6FFFFFFFFFFFFFFFFFFFFFFFF737173949294FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2120FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212021E7E3E7FF
        FFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDE9EA5D68284CE7D7BCE8284CE7D84FFE3E7FFFFFFDEA2
        A5CE7D84D68284D69E9CFFFFFFF7DFE7D68284CE7D7BCE8284CE7D84DEA2A5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2A5AD2C31940000940000940000B53C42
        DEA2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8284CE7D84D68284CE7D7BCE82
        84CE7D84D68284CE7D7BCE8284FFFFFFFFE3E7CE7D7BCE8284CE7D84D68284CE
        7D7BF7E3E7FFFFFFFFFFFFFFFFFFFFFFFFCE7D84D68284CE7D7BCE8284CE7D84
        EFC3C6FFFFFFFFFFFFB5AEFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FFC6C3FFFFFFFFFFFFFFFFFFFF8482847B7D7BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6CE71739C0C08940000940000
        A51010C66D6BF7D3D6FFFFFFFFFFFFFFFFFFFFFFFF000000D68284CE7D7BCE82
        84CE7D84D682848C3C398C4142CE7D84D68284E7BEBDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7DFDECE71739C0C10940000940000A51010C66D73
        F7D3D6FFFFFFFFFFFFFFFFFFFFFFFFF7DFDECE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFD69E9CCE8284CE7D84D68284CE7D7BF7E3E7FFFFFFFFFFFFFF
        FFFFFFFFFFCE7D84D68284CE7D7BCE8284CE7D84EFC3C6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEFF7DE9294B53C39940000940000940000B53C39D692
        94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000E7BEBDFFFFFFAD2C31940000
        940000AD3031FFFFFFEFC3C6940000940000940000940000B53C39FFFFFFFFFF
        FFFFFFFFFFEFEFAD3031940000940000940000940000940000940000940000CE
        7173FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000940000
        940000940000940000FFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFF7371FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        BDBEFFFFFFFFFFFFFFFFFFFFBDBEBD424142FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDE9EA5A5101094000094000094000094000094000094
        00009C0C10F7D3D6FFFFFFFFFFFFFFFFFF000000940000940000940000940000
        940000940000940000940000940000940000A51C21F7E3E7FFFFFFFFFFFFFFFF
        FFFFFFFFEFCFCEA510109400009400009400009400009400009400009C0C08DE
        A2A5FFFFFFFFFFFFFFFFFFEFC3C6940000940000940000940000CE7D84FFFFFF
        FFFFFF940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000940000940000940000C66163
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000EFC3C6FFFFFF94000094000094000094
        0000FFFFFFE7C3C6940000940000940000940000B54142FFFFFFFFFFFFFFFFFF
        AD3031940000940000940000940000940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFF94000094000094000094000094000094000094000094
        0000940000FFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FF3130FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7E3E7A510109400009400009400009400009400009400009400009400
        00AD3031FFFFFFFFFFFFFFFFFF00000094000094000094000094000094000094
        0000940000940000940000940000940000B54142FFFFFFFFFFFFFFFFFFFFFFFF
        A520219400009400009400009400009400009400009400009400009C1010FFE3
        E7FFFFFFFFFFFFE7C3C6940000940000940000940000D68284FFFFFFEFD3D694
        0000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2
        A5940000940000940000940000940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000E7C3C6FFFFFF940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000B54142FFFFFFFFFFFFE7B2B594000094
        0000940000940000940000940000940000940000940000940000AD3031FFFFFF
        FFFFFFFFFFFF9400009400009400009400009400009400009400009400009400
        00FFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFF
        FFFFFFFFFFFFFF424142B5B2B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
        6163940000940000940000940000940000940000940000940000940000940000
        CE8284FFFFFFC6C3C62900009400009400009400009400009400009400009400
        00940000940000940000940000940000F7E3E7FFFFFFFFFFFFCE828494000094
        0000940000940000940000940000940000940000940000940000C66163FFFFFF
        FFFFFFEFC3C6940000940000940000940000CE8284FFFFFFE7B2B59400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7A51010940000
        940000940000940000940000940000940000940000940000940000F7E3E7FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000EFC3C6EFCFCE940000940000940000940000F7E3E7E7BEC6
        940000940000940000940000B54142FFFFFFFFFFFFC66D739400009400009400
        00940000940000940000940000940000940000940000940000EFCFD6FFFFFFFF
        FFFF940000940000940000940000940000940000940000940000940000FFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFD6D3FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF9492FFFFFFFFFFFFFFFFFFFF
        FFFFFF7B7D7B525152FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000940000940000940000940000940000940000AD2021FF
        FFFF7371734A0000940000940000940000940000940000940000940000940000
        940000940000940000940000EFC3C6FFFFFFFFFFFFA51C219400009400009400
        00940000940000940000940000940000940000940000940000FFFFFFFFFFFFE7
        BEBD940000940000940000940000CE8284FFFFFFD68284940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFFD69E9C94000094000094000094
        0000940000940000940000940000940000940000940000D68E8CFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000E7BEBDEFC3C6940000940000940000940000E7BEC6EFC3C694000094
        0000940000940000B53C39FFFFFFFFFFFFAD3031940000940000940000940000
        B53C39DEA2A5940000940000940000940000940000CE8284FFFFFFFFFFFF9400
        00940000940000940000940000940000940000940000940000FFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFC6BEFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF6B6DFFFFFFFFFFFFFFFFFFFFFFFFFFE7
        E3E7000000E7E3E7FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000
        940000940000C66D73CE7173940000940000940000940000940000F7E3E7211C
        217B30319400009400009400009400009400005A000094000094000094000094
        0000940000940000D68E8CFFFFFFF7DFE7940000940000940000940000940000
        C66D6BCE7173940000940000940000940000940000EFC3C6FFFFFFEFC3C69400
        00940000940000940000CE7D84FFFFFFB53C3994000094000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFFC661639400009400009400009400009C0C
        10EFC3C69C0C08940000940000940000940000BD5152FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        EFC3C6E7C3C6940000940000940000940000EFC3C6E7C3C69400009400009400
        00940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000CE8284FFFFFFFFFFFF940000940000
        940000940000940000940000940000940000940000FFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFC6C3FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF4241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5251
        52848284FFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000FFE3E7E7C3C6940000940000940000940000940000B59294101010CE8284
        940000940000940000940000840000000000DE92949400009400009400009400
        00940000CE8284FFFFFFEFC3C6940000940000940000940000940000EFC3C6F7
        E3E7940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000D68284FFFFFFA51010940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000C66163FFFFFF
        C66163940000940000940000940000B54142FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000E7C3C6D6
        8284940000940000940000940000D69294E7C3C6940000940000940000940000
        B54142FFFFFFF7E3E7940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFF9492FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3C6101010
        F7F3F7FFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C69400009400009400009400009400004A2021636163CE828494000094
        0000940000940000730000424142FFF3F7940000940000940000940000940000
        CE8284FFFFFFEFC3C6940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000CE8284F7E3E7940000940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFFB54142940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000B54142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C42940000940000940000940000EFC3C6CE7D7B9400
        00940000940000940000CE8284E7BEC6940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFC6C3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FFADAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF635D63424142FF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000000000E7E3E7CE7D849400009400009400
        00940000940000DEBEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFD69294940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD940000940000940000940000CE82
        84E7BEC6940000940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF9C0C08940000940000940000940000CE8284FFFFFFD682849400009400
        009400009400009C0C08FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000E7BEBDCE7173940000940000
        940000940000CE7D84EFC3C6940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFC6BEFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF6361FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7292C29848284FFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000D68284FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFCE7D
        84940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000CE7D84CE8284
        940000940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000EFC3C6B5414294000094000094000094
        0000B54142E7C3C6940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFC6C3
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF10
        10FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D3D6424142D6D3D6FFFFFF
        CE8284940000940000940000940000940000FFFFFFE7C3C69400009400009400
        00940000940000CE8284FFFFFFCE8284940000940000940000940000940000E7
        C3C6FFFFFF940000940000940000940000940000CE8284FFFFFFD68284940000
        940000940000940000940000EFC3C6FFFFFF9400009400009400009400009400
        00CE8284FFFFFFE7C3C6940000940000940000940000D68284BD515294000094
        0000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000D68284FFFFFFCE828494000094000094000094000094
        0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000E7C3C6B54142940000940000940000940000B541
        42E7C3C6940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFF
        FFFFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFE7E3FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFB5B2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7525152A5A2A5CE828494
        0000940000940000940000940000FFFFFFE7C3C6940000940000940000940000
        940000D68284FFFFFFCE8284940000940000940000940000940000EFC3C6FFFF
        FF940000940000940000940000940000CE8284FFFFFFCE828494000094000094
        0000940000940000E7C3C6FFFFFF940000940000940000940000940000CE8284
        FFFFFFEFC3C6940000940000940000940000CE8284A520219400009400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000
        940000940000CE8284FFFFFFCE8284940000940000940000940000940000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000EFC3C69C0C08940000940000940000940000AD2021E7BEC6
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFFFFFFFFFFFFFFFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFFFFFFF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF4241FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF423C420000009400009400
        00940000940000940000FFFFFFE7BEC6940000940000940000940000940000CE
        7D7BFFFFFFCE7D84940000940000940000940000940000E7BEBDFFFFFF940000
        940000940000940000940000D68284FFFFFFCE82849400009400009400009400
        00940000EFC3C6FFFFFF940000940000940000940000940000CE7D84FFFFFFE7
        BEBD940000940000940000940000CE8284940000940000940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFF94000094000094000094000094
        0000CE8284FFFFFFD68284940000940000940000940000940000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000E7BEBD940000940000940000940000940000940000EFC3C694000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFFFFFFF4241FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFD6D3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA55D5A940000940000940000
        940000940000A59EA58C6163940000940000940000940000940000D68284FFFF
        FFCE8284940000940000940000940000940000EFC3C6FFFFFF94000094000094
        0000940000940000CE7D7BFFFFFFCE7D84940000940000940000940000940000
        E7BEBDFFFFFF940000940000940000940000940000CE8284FFFFFFEFC3C69400
        00940000940000940000B53C4294000094000094000094000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D
        84FFFFFFCE7D7B940000940000940000940000940000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        EFC3C6940000940000940000940000940000940000E7C3C69400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFF7371FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF1010FFF7F3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000636163846163940000940000940000940000940000CE8284FFFFFFCE8284
        940000940000940000940000940000E7C3C6FFFFFF9400009400009400009400
        00940000CE8284FFFFFFD68284940000940000940000940000940000EFC3C6FF
        FFFF940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000A51010940000940000940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000D68284FFFFFF
        CE8284940000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000CE828494
        0000940000940000940000940000940000D69294940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFFFFFFFFA5A2FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000940000D68284FFFFFFCE828494000094
        0000940000940000940000EFC3C6FFFFFF940000940000940000940000940000
        CE8284FFFFFFCE8284940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000940000940000940000940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C42940000940000940000940000D682849400009400
        00940000940000940000940000CE7D84940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFFFFFFFF7EFFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF181CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000CE7D7BFFFFFFCE7D849400009400009400
        00940000940000E7BEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFCE8284940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD9400009400009400009400009400
        00940000940000940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF940000940000940000940000940000CE8284FFFFFFD682849400009400
        00940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000C66D6B940000940000940000
        940000940000940000CE8284940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFFFFFFFF393CFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000D68284FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFCE7D
        84940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000940000940000
        940000940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000B54142940000940000A52021A5101094
        0000940000B54142940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFF9492FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF7
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CE8284940000940000940000940000940000FFFFFFE7C3C69400009400009400
        00940000940000CE8284FFFFFFCE8284940000940000940000940000940000E7
        C3C6FFFFFF940000940000940000940000940000CE8284FFFFFFD68284940000
        940000940000940000940000EFC3C6FFFFFF9400009400009400009400009400
        00CE8284FFFFFFE7C3C69400009400009400009400009400009400009400009C
        1010940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000D68284FFFFFFCE828494000094000094000094000094
        0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000B54142940000940000B54142B541429400009400
        00B54142940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFF
        FFFFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFFFF
        E7E3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF5251FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494
        0000940000940000940000940000FFFFFFE7C3C6940000940000940000940000
        940000D68284FFFFFFCE8284940000940000940000940000940000EFC3C6FFFF
        FF940000940000940000940000940000CE8284FFFFFFCE828494000094000094
        0000940000940000E7C3C6FFFFFF940000940000940000940000940000CE8284
        FFFFFFEFC3C6940000940000940000940000940000940000940000B541429400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000
        940000940000CE8284FFFFFFCE8284940000940000940000940000940000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000A51010940000940000B53C42B54142940000940000AD2C31
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFFFFFFFFFFFFFFFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFFF7F3FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF9492FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD682849400009400
        00940000940000940000FFFFFFE7BEC6940000940000940000940000940000CE
        7D7BFFFFFFCE7D84940000940000940000940000940000E7BEBDFFFFFF940000
        940000940000940000940000D68284FFFFFFCE82849400009400009400009400
        00940000EFC3C6FFFFFF940000940000940000940000940000CE7D84FFFFFFE7
        BEBD940000940000940000940000940000940000940000CE7D7B940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFF94000094000094000094000094
        0000CE8284FFFFFFD68284940000940000940000940000940000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000940000940000940000CE8284B54D4A9400009400009C000094000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFF9C9EFF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FFCECFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7D7B940000940000940000
        940000940000FFFFFFEFC3C6940000940000940000940000940000D68284FFFF
        FFCE8284940000940000940000940000940000EFC3C6FFFFFF94000094000094
        0000940000940000CE7D7BFFFFFFCE7D84940000940000940000940000940000
        E7BEBDFFFFFF940000940000940000940000940000CE8284FFFFFFEFC3C69400
        00940000940000940000940000940000B53C39D6828494000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D
        84FFFFFFCE7D7B940000940000940000940000940000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        940000940000940000CE8284CE82849400009400009C00009400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFF5251FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000FFFFFFE7C3C6940000940000940000940000940000CE8284FFFFFFCE8284
        940000940000940000940000940000E7C3C6FFFFFF9400009400009400009400
        00940000CE8284FFFFFFD68284940000940000940000940000940000EFC3C6FF
        FFFF940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000940000940000C67173CE8284940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000D68284FFFFFF
        CE8284940000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB5414294000094000094000094000094000094
        0000940000DEA2A5CE8284940000940000940000940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFFFFFFFFE7E3FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF4241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000940000D68284FFFFFFCE828494000094
        0000940000940000940000EFC3C6FFFFFF940000940000940000940000940000
        CE8284FFFFFFCE8284940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000940000940000DEA2A5D68284940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C429400009400009400009400009400009400009400
        00E7BEC6DE9294940000940000940000940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFFFFFFFA59EFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF635DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000D68E8CFFFFFFCE7D849400009400009400
        00940000940000E7BEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFD69294940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD9400009400009400009400009400
        00940000F7D3D6CE7D7B940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF940000940000940000940000940000CE8284FFFFFFD682849400009400
        009400009400009C0C08FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000940000940000940000EFC3C6
        E7BEBD940000940000940000940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFF5251FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8482FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000EFC3C6FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFE7BE
        C6940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000940000A51010
        FFFFFFD68284940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000B54142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000940000940000940000FFFFFFEFC3C694
        0000940000940000940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE
        8284940000940000940000940000940000940000940000940000940000940000
        940000B54142FFFFFF940000940000940000940000940000CE8284FFFFFFF7F3
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8482FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7B2B5940000940000940000940000940000FFF3F7E7C3C69400009400009400
        00940000940000E7C3C6FFFFFFCE8284940000940000940000940000940000D6
        9294D68284940000940000940000940000940000CE8284FFFFFFEFC3C6940000
        940000940000940000940000E7B2B5FFF3F79400009400009400009400009400
        00CE8284FFFFFFE7C3C6940000940000940000940000940000B54142FFFFFFCE
        8284940000940000940000940000EFC3C6CE8284940000940000940000940000
        940000940000940000940000940000940000940000B54142FFFFFF9400009400
        00940000940000940000CE7173FFFFFFC67173940000940000940000940000B5
        4142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000940000940000940000FFFFFFEFD3D69400009400
        00940000940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFD682849400
        00940000940000940000940000940000940000940000940000940000940000B5
        4142FFFFFF940000940000940000940000940000CE8284FFFFFFB5B2FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F794
        0000940000940000940000940000B54142C66163940000940000940000940000
        940000F7D3D6FFFFFFCE82849400009400009400009400009400009400009400
        00940000940000940000940000940000CE8284FFFFFFF7E3E794000094000094
        0000940000940000AD3031C66163940000940000940000940000940000E7C3C6
        FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFFD682849400
        00940000940000940000EFC3C6CE828494000094000094000094000094000094
        0000940000940000940000940000940000B54142FFFFFFB54142940000940000
        940000940000A51010C67173A52021940000940000940000940000BD5152FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000940000940000AD2021FFFFFFFFFFFF940000940000940000
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000
        940000940000940000940000940000940000940000940000940000B53C39FFFF
        FF940000940000940000940000940000D68284FFFFFF7371FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FFC6BEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD2C299400
        00940000940000940000940000940000940000940000940000940000AD2021FF
        FFFFFFFFFFCE7D84940000940000940000940000940000940000940000940000
        940000940000940000940000EFC3C6FFFFFFFFFFFFAD2C319400009400009400
        00940000940000940000940000940000940000940000A51010FFEFF7FFFFFFE7
        BEBD940000940000940000940000940000DEAEB5FFFFFFCE7D7B940000940000
        940000940000EFC3C6CE7D849400009400009400009400009400009400009400
        00940000940000940000940000B53C42FFFFFFD68E8C94000094000094000094
        0000940000940000940000940000940000940000940000D69E9CFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000940000940000B53C42FFFFFFFFFFFF94000094000094000094000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFD6828494000094000094000094
        0000940000940000940000940000940000940000940000B54142FFFFFF940000
        940000940000940000940000CE7D7BFFFFFF312CFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7173940000940000
        940000940000940000940000940000940000940000940000D69E9CFFFFFFFFFF
        FFCE828494000094000094000094000094000094000094000094000094000094
        0000940000AD2021FFFFFFFFFFFFFFFFFFDEA2A5940000940000940000940000
        940000940000940000940000940000940000BD5D63FFFFFFFFFFFFEFC3C69400
        00940000940000940000940000F7E3E7FFFFFFD6828494000094000094000094
        0000E7BEC6CE8284940000940000940000940000940000940000940000940000
        940000940000940000B54142FFFFFFF7E3E79400009400009400009400009400
        00940000940000940000940000940000A51C18FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        940000940000B54142FFFFFFFFFFFF9C10109400009400009400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFCE82849400009400009400009400009400
        00940000940000940000940000940000940000B54142FFFFFF94000094000094
        0000940000940000CE8284FFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7A5101094000094000094
        0000940000940000940000940000940000A52021FFF3F7FFFFFFFFFFFFCE8284
        9400009400009400009400009400009400009400009400009400009400009400
        00E7B2B5FFFFFFFFFFFFFFFFFFFFFFFFA5202194000094000094000094000094
        00009400009400009400009C1010FFF3F7FFFFFFFFFFFFE7C3C6940000940000
        940000940000AD2021FFFFFFFFFFFFCE8284940000940000940000940000EFC3
        C6CE828494000094000094000094000094000094000094000094000094000094
        0000940000B54142FFFFFFFFFFFFD68284940000940000940000940000940000
        940000940000940000940000D69294FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB5414294000094000094000094000094000094
        0000CE8284FFFFFFFFFFFFB54142940000940000940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFD68284940000940000940000940000940000940000
        940000940000940000940000940000B54142FFFFFF9400009400009400009400
        00940000CE8284C6C3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD3D69C10109400009400009400
        00940000940000940000AD3031EFD3D6FFFFFFFFFFFFFFFFFFCE828494000094
        0000940000940000940000940000940000940000940000B54142EFD3D6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFD3D6A510109400009400009400009400009400
        009400009C1010F7D3D6FFFFFFFFFFFFFFFFFFEFC3C694000094000094000094
        0000BD5152FFFFFFFFFFFFD68284940000940000940000940000EFC3C6CE8284
        9400009400009400009400009400009400009400009400009400009400009400
        00B54142FFFFFFFFFFFFFFFFFFC6616394000094000094000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDE9EA5D68284CE7D7BCE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFD69E9CCE8284CE7D84D68284CE7D7BCE8284CE7D84DEA2A5FF
        FFFFF7E3E7CE7D84D68284CE7D7BCE8284CE7D84EFC3C6FFFFFFCE8284CE7D84
        D68284CE7D7BCE8284DE9EA5FFFFFFFFFFFFCE8284CE7D84D68284CE7D7BCE82
        84E7BEC6FFFFFFE7BEBDCE8284CE7D84D68284CE7D7BCE8284CE7D84D68284CE
        7D7BCE8284CE7D84D68284D69E9CFFFFFFCE7D84D68284CE7D7BCE8284CE7D84
        EFC3C68C8EFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF847DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFE7B54142940000940000940000
        940000B54D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6D68284CE7D7BCE82
        84CE7D84D682848C3C39AD8284E7BEC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7DFDEB54142940000940000940000940000B53C42
        FFE3E7FFFFFFFFFFFFFFFFFFFFFFFFF7DFDECE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFE7BEBDCE8284CE7D84D68284CE7D7BF7E3E7E7BEC6D68284CE
        7D7BCE8284CE7D84D68284CE7D7BCE8284CE7D84D68284CE7D7BCE8284DE9EA5
        FFFFFFFFFFFFFFFFFFFFFFFFD68284A51C18940000940000940000A51C18E7B2
        B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
        82FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF7371FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF636163A59EA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5251FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3130FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3E710
        1010F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFE7E3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD6D3FFC6C3FFC6C3FFC6C3FFE7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF636163636163FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF393CFF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF8482FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF181CFF0000
        FF0000FF0000FF0000FF0000FF423CFFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFD6000000DEDFDEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF181CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DFFF5251FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF7371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5251527B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF6361FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9492FF1010FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF1010FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6361FF4241B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF7371FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF5251FFD6D3FFFFFFFFFFFFFFFFFFFFB5B2FF
        4241FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF4241FFA5A2FFC6C3FFC6C3FF8482FF21
        20FF0000FF9492FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7B7DFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3130
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5
        A2FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1010FFD6CFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FFA5A2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6361FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF7371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF524DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A2FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF423C
        FFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A2FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF5251FFA5A2
        FFF7F3FFFFFFFFFFFFFFFFFFFFE7E3FF5251FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF4241FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3FF4241FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF4241FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF4241FFF7F3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BEFF6361FF080CFF0000
        FF0000FF5251FFBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF100CFF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF847DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAEFF8482FF847DFF4241FF393CFF63
        61FFD6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      Stretch = True
    end
    object QRImage2: TQRImage
      Left = 17
      Top = 5
      Width = 87
      Height = 62
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        127
        34.3958333333333
        10.5833333333333
        177.270833333333)
      Picture.Data = {
        07544269746D61707EC60000424D7EC60000000000003600000028000000B300
        00005E000000010018000000000048C60000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134
        DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE31
        34DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE3134DE
        3134DEADAAF7FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF31
        34DEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF710
        10FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF
        080CF71010FF080CF7100CFF080CF71010FF080CF7100CFF080CF71010FF080C
        F7100CFF080CF71010FF080CF7100CFF080CF76B69EFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7DEAEADCE82
        84CE7D84EFC3C6FFFFFFFFFFFFFFFFFFFFF3F7D68E8CCE8284CE7D84DEA2A5FF
        FFFFFFFFFFF7DFE7EFC3C6E7BEBDFFFFFFFFFFFFFFFFFFEFCFCEF7E3E7FFFFFF
        FFFFFFFFFFFFFFFFFFF7DFE7FFFFFFFFFFFFFFFFFFFFFFFFEFC3C6E7BEBDEFC3
        C6E7BEC6EFC3C6E7BEBDF7E3E7F7DFE7EFC3C6E7BEBDFFF3F7FFFFFFFFFFFFFF
        EFEFF7E3E7FFEFF7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFF7E3E7CE7D84
        D68284CE7D7BF7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC3
        C6CE7D84D68284D68E8CFFF3F7FFFFFFFFF3F7E7BEBDEFC3C6E7BEC6EFC3C6E7
        BEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6D68284CE7D7BD69294FFEFF7
        FFFFFFFFFFFFEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFFFFFFFE7B2B5FFFFFFFFFF
        FFFFEFF7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFEFF7DE9294CE
        7D7BCE8284DE9EA5FFFFFFFFFFFFF7E3E7E7BEC6EFC3C6E7BEBDEFC3C6E7BEC6
        EFC3C6FFEFEFFFFFFFFFFFFFEFC3C6CE7D7BCE8284D68E94FFF3F7FFFFFFFFFF
        FFFFFFFFFFFFFFE7BEBDCE8284CE7D84D68284EFCFCEFFFFFFFFEFF7EFC3C6E7
        BEBDEFC3C6EFCFD6FFFFFFFFFFFFF7E3E7DE9EA5D68284CE7D7BEFC3C6FFFFFF
        FFFFFFFFFFFFFFF3F7D68E94D68284CE7D7BEFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2A59C0C08C66163F7DFE7FFFFFF
        EFCFCEE7B2B5FFFFFFFFF3F7AD2C29D68284FFEFF7FFF3F7A51C18C66163FFFF
        FFFFFFFFC66D6BFFF3F7FFFFFFFFFFFFFFEFEFAD3031E7BEC6FFFFFFFFFFFFFF
        FFFFFFEFF7AD2021FFEFEFFFFFFFFFFFFFFFFFFFFFFFFF9400009C0C10FFFFFF
        FFFFFFF7D3D6CE7D84FFFFFFCE7D7BFFF3F7FFFFFFFFFFFFFFFFFFBD5152E7BE
        C6FFFFFFFFEFEF940000B53C42FFFFFFFFFFFFEFC3C69C0C10E7B2B5FFFFFFF7
        D3D69C0C10EFC3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD69294AD2C31FFF3F7
        FFFFFFD69294AD2C31F7E3E7FFFFFFEFC3C6940000B54142FFFFFFDEA2A5A51C
        21E7B2B5FFFFFFFFFFFFDE9EA5AD2021EFCFCEFFFFFFD68E94AD3031F7DFDEFF
        FFFFFFEFF7CE7173FFFFFFFFFFFFFFFFFFDEA2A5B53C39FFFFFFFFFFFFFFFFFF
        E7BEBD940000B53C42FFFFFFFFFFFFFFFFFFFFEFF7AD3031CE7D7BFFF3F7FFEF
        F7AD2021BD5D5AFFFFFFFFFFFFCE8284940000D68284FFFFFFFFFFFFBD5D5AE7
        B2B5FFFFFFDEA2A5A51C18F7D3D6FFFFFFD69294AD2C29F7E3E7FFFFFFFFFFFF
        C66D6BA51010FFEFF7FFFFFFE7BEBD940000CE7D84FFFFFFF7DFDE940000B53C
        42FFFFFFFFFFFFDEA2A59C0C10DEA2A5FFFFFFFFFFFFDE9EA5E7B2B5FFFFFFF7
        E3E7AD2C31CE8284FFEFEFFFF3F7A51C21D69294FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF9C1010AD3031FFFFFFFFFFFFFFFFFFFFFFFFFF
        F3F7FFFFFFB54142940000FFF3F7FFFFFFFFFFFFD69294940000DEA2A5FFFFFF
        CE8284FFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFD682
        84940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000B54142FFFFFFF7E3E7FF
        FFFFDEA2A5FFFFFFCE8284FFFFFFFFFFFFFFFFFFC67173940000EFC3C6FFFFFF
        FFFFFF940000B54142FFFFFFFFF3F79C1010B53031FFFFFFFFFFFFFFFFFFBD51
        52940000F7E3E7FFFFFFFFFFFFFFFFFFEFC3C6940000DEA2A5FFFFFFFFFFFFFF
        FFFFA51010A52021FFFFFFE7C3C6940000B54142FFFFFFFFFFFFAD20219C1010
        FFFFFFE7C3C6940000C67173FFFFFFFFFFFFFFFFFFA52021A52021FFFFFFFFFF
        FFCE8284FFFFFFFFFFFFF7D3D6940000B54142FFFFFFFFFFFFFFFFFFEFC3C694
        0000B54142FFFFFFFFFFFFFFFFFFB541429C1010FFFFFFFFFFFFFFFFFFD69294
        940000DEA2A5FFFFFFCE8284940000E7C3C6FFFFFFFFFFFFFFF3F7D69294EFC3
        C6940000D69294FFFFFFFFFFFFFFFFFFA52021A52021FFFFFFE7B2B5940000C6
        7173FFFFFFFFFFFFEFC3C6940000CE7173FFFFFFFFFFFF940000B54142FFFFFF
        F7E3E79C1010B53031FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7FFFFFFA52021A510
        10FFFFFFFFFFFFFFFFFFDE9294940000DEA2A5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEFC3C6940000B54142FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF940000940000FFFFFFFFFFFFFFFFFFE7C3C6940000BD5152FFFFFFCE8284FF
        FFFFFFFFFFCE8284940000AD3031EFC3C6FFFFFFFFFFFFFFFFFFA510109C1010
        CE8284FFF3F7FFFFFFFFFFFFFFFFFF940000B54142FFFFFFC67173FFFFFFFFFF
        FFFFFFFFCE8284FFFFFFFFFFFFDEA2A5940000AD3031EFC3C6FFFFFFFFFFFF94
        0000B54142FFFFFFD69294940000CE8284FFFFFFFFFFFFFFFFFFCE8284940000
        D69294FFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFB541
        42940000EFD3D6EFC3C6940000B54142FFFFFFFFFFFFB54142940000EFD3D6D6
        8284940000E7C3C6FFFFFFFFFFFFFFFFFFB54142940000F7D3D6FFFFFFCE8284
        FFFFFFFFF3F7A510109C1010BD6163FFFFFFFFFFFFFFFFFFE7C3C6940000B541
        42FFFFFFFFFFFFF7E3E7940000B54142FFFFFFFFFFFFFFFFFFE7C3C6940000BD
        5152FFFFFFCE8284940000EFC3C6FFFFFFFFFFFFFFFFFFFFF3F7C66163940000
        E7C3C6FFFFFFFFFFFFFFFFFFB54142940000EFD3D6BD5152940000DEA2A5FFFF
        FFFFFFFFD69294B54142BD5152F7E3E7FFFFFF940000B54142FFFFFFD6929494
        0000C66163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD3D6940000B54142FFFFFF
        FFFFFFFFFFFFEFC3C6940000BD5152FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCE8284940000CE7173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D3D6940000
        B54142FFFFFFFFFFFFFFFFFFEFC3C6940000B54142FFFFFFD68284FFFFFFE7B2
        B5940000B53031DEAEADEFC3C6FFFFFFFFFFFFD69E9C940000CE7D84FFF3F7D6
        8E8CFFFFFFFFFFFFFFFFFF940000AD2021C66D73B54142FFFFFFFFFFFFFFFFFF
        D68284FFFFFFF7D3D6940000A51010EFCFCEEFC3C6FFFFFFFFFFFF940000B541
        42FFFFFFDE9294940000CE8284FFFFFFFFFFFFFFFFFFCE8284940000D68284FF
        FFFFFFFFFFFFFFFFBD5152940000EFC3C6FFFFFFFFFFFFFFFFFFB54142940000
        EFC3C6E7BEBD940000B53C42FFFFFFFFFFFFCE8284940000D68284B54D4A9400
        00E7BEC6FFFFFFFFFFFFFFFFFFB53C42940000E7BEBDFFFFFFCE7D84FFFFFFAD
        2C29940000DE9EA5D68284FFFFFFFFFFFFFFFFFFEFC3C6940000B54142FFFFFF
        FFFFFFEFCFCE940000B53C42FFFFFFFFFFFFFFFFFFE7BEC6940000B53C39FFFF
        FFCE7D84940000E7BEBDFFFFFFFFFFFFFFFFFFFFFFFFBD5152940000EFC3C6FF
        FFFFFFFFFFFFFFFFB54142940000EFC3C6B53C42940000E7BEBDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF940000B54142FFFFFFD68284940000CE82
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D3D6940000B54142FFFFFFFFFFFFFF
        FFFFEFC3C6940000B54142FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BE
        C6940000AD2C29FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7FFFFFFAD2021AD2C29FF
        FFFFFFFFFFFFFFFFE7BEBD940000CE7D84FFFFFFCE7D7BF7D3D69C0C10A51010
        F7DFDEEFC3C6E7BEC6FFFFFFFFFFFFAD2021940000F7E3E7FFFFFFD69294FFEF
        F7FFFFFFFFFFFF940000B53C42FFFFFFBD5D5AFFFFFFFFFFFFFFFFFFCE7D7BF7
        E3E79C0C10940000DEAEADFFFFFFE7BEC6FFFFFFFFFFFF940000B53C42FFFFFF
        F7DFDE940000BD5D63FFFFFFFFFFFFFFFFFFCE7D84940000D69E9CFFFFFFFFFF
        FFFFFFFFD69E9C940000DE9EA5FFFFFFFFFFFFFFFFFFB53C42940000F7DFDEEF
        C3C6940000B54142FFFFFFFFFFFFB53C42940000D69E9CDEA2A5940000E7B2B5
        FFFFFFFFFFFFFFFFFFB54142940000FFFFFFFFFFFFCE8284BD5D5A940000C66D
        73FFFFFFCE7D7BFFFFFFFFFFFFFFFFFFE7BEBD940000B53C42FFFFFFFFFFFFFF
        FFFFA51C21AD3031FFFFFFFFFFFFFFFFFFEFC3C6940000D68284FFFFFFCE8284
        940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFFDE9EA5940000DEAEADFFFFFFFFFF
        FFFFFFFFB53C39940000FFFFFFC66163940000D69294FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF940000B53C42FFFFFFD69E9C940000B54D52FFFFFF
        FFFFFFFFFFFFFFFFFFFFF3F7FFFFFFAD2021A51C21FFFFFFFFFFFFFFFFFFE7BE
        C6940000BD5D5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8284
        940000FFF3F7FFFFFFFFFFFFFFFFFFCE8284FFFFFFCE8284940000F7E3E7FFFF
        FFFFFFFFD69294940000F7D3D6FFFFFFCE8284AD3031940000E7B2B5FFFFFFE7
        C3C6EFC3C6FFFFFFE7B2B5940000C66163FFFFFFFFFFFFFFF3F7D68284FFFFFF
        FFFFFF940000B54142FFFFFFF7E3E7FFF3F7EFC3C6FFFFFFCE8284AD30319400
        00C67173FFFFFFFFFFFFEFC3C6FFFFFFFFFFFF940000B54142FFFFFFFFFFFFB5
        4142B53031FFFFFFFFFFFFFFFFFFBD5152AD3031FFFFFFFFFFFFFFFFFFFFFFFF
        FFF3F79C1010CE7173FFFFFFFFFFFFFFF3F7A51010C67173FFFFFFE7C3C69400
        00B54142FFFFFFFFF3F7940000AD3031FFFFFFFFF3F7A51010BD6163FFFFFFFF
        FFFFFFFFFF9C1010BD5152FFFFFFFFFFFFAD3031940000AD3031FFFFFFFFFFFF
        CE8284FFFFFFEFC3C6FFFFFFEFC3C6940000B54142FFFFFFF7E3E7EFD3D6D682
        84940000F7E3E7FFFFFFFFFFFFD69294940000EFD3D6FFFFFFCE8284940000E7
        C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFF3F79C1010C66163FFFFFFFFFFFFFFFFFF
        A51010BD5152FFFFFFF7E3E7A51010B54142FFFFFFFFFFFFFFFFFFFFF3F7DEA2
        A5FFFFFFFFFFFF940000B54142FFFFFFFFFFFFB54142AD2021FFF3F7FFFFFFFF
        FFFFFFF3F7BD6163FFFFFFCE8284940000FFF3F7FFFFFFFFFFFFDE9294940000
        F7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD6163AD
        3031DEA2A5E7C3C6C67173BD5152FFFFFFFFFFFFB54142CE7173EFC3C6E7B2B5
        B54142D68284FFFFFFFFFFFFB54142940000CE8284FFFFFFFFF3F7D68284DEA2
        A5F7E3E7B54142940000E7B2B5FFFFFFFFFFFFFFF3F7A51010EFD3D6FFF3F794
        0000AD3031E7C3C6E7B2B5AD3031EFC3C6FFFFFFBD5152940000B54142FFFFFF
        FFF3F7E7B2B5C66163FFFFFFE7C3C6940000AD3031FFFFFFFFFFFFE7B2B5A520
        21DEA2A5E7C3C6DEA2A5AD3031F7E3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6
        8284AD3031E7B2B5E7C3C6C66163B54142FFFFFFFFFFFFE7B2B5940000AD3031
        E7C3C6AD3031BD5152EFD3D6FFFFFFFFFFFFE7B2B5AD3031E7B2B5EFC3C6CE82
        84AD3031F7E3E7FFFFFFEFC3C69400009C1010FFF3F7FFFFFFEFD3D6B54142FF
        FFFFCE8284C67173CE8284940000AD3031E7C3C6AD3031EFC3C6FFFFFFB54142
        C67173EFC3C6E7B2B5B54142CE8284FFFFFFFFFFFFC67173940000D68284FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7B2B5AD3031E7B2B5EFC3C6CE8284AD3031F7
        E3E7FFFFFFFFFFFFDEA2A5940000DEA2A5E7C3C6DEA2A5C66163D69294FFFFFF
        E7C3C6940000AD3031FFFFFFFFFFFFFFF3F7AD3031AD3031DEA2A5EFC3C6CE82
        84BD5152FFFFFFFFFFFFB54142C67173E7C3C6E7B2B5B54142CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7E7BEBDEFC3
        C6EFCFD6FFFFFFF7DFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7DFE7EFC3C6E7BEBDFFFFFFFFFFFFFFF3F7E7BEBDEFC3C6EFCFD6
        EFC3C6E7BEBDEFC3C6FFEFF7FFFFFFEFCFCEEFC3C6F7DFE7EFC3C6E7BEBDDEA2
        A5E7BEC6E7B2B5DEAEADFFF3F7F7DFE7EFC3C6E7BEBDFFF3F7FFFFFFFFF3F7E7
        BEBDEFC3C6F7DFE7EFC3C6E7BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7E7BEBDEFC3C6E7BEC6FFF3F7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFEFCFD6EFC3C6EFCFCEF7E3
        E7E7BEC6EFC3C6E7BEBDEFC3C6E7BEC6EFC3C6FFEFEFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E3E7E7BEC6EFC3C6E7BEBDF7E3E7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF7DFDEEFC3C6E7BEC6FFE3E7FFFFFFFFFFFFFFEFF7EFC3C6E7
        BEBDEFC3C6EFCFD6FFFFFFFFFFFFFFFFFFFFEFF7EFC3C6F7DFDEFFFFFFF7DFE7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54D52CE7173
        AD2C29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F7AD2C31FFF3F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7B54142E7B2B5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC66163C67173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF
        211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF71818EF181C
        F71818EF211CF71818EF181CF71818EF211CF71818EF181CF71818EF211CF718
        18EF181CF71818EF211CF71818EF181CF71818EF211CF73941DEFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF3134DEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF21
        28E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E7
        2928EF2128E72928EF2128E72928EF2128E72928EF2128E72928EF2128E72928
        EF2128E72928EF8C8EEFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFEFFFC6C3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF9492FF1010FF0000D6D6D3D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF525152424142D6D3D6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3FF4241
        FF0000FF0000F7000021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF737173313031000000848284FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3FF080CFF0000FF0000FF
        4241A5393C39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848284847D84C6C3C6000000949294FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF8482FF0000FF0000FF0000FF4241FF6B6D6B94
        9294FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BE
        C6424142FFFFFF737173000000C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6361FF0000FF0000FF0000FF0000FFE7E3FF424142C6C3C6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D3D6313031
        FFFFFFFFFFFF424142101010F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63
        61FF0000FF0000FF0000FF0000FF7371FFFFFFFF101010F7F3F7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
        FFFFF7F3F7101010848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6361FF0000FF0000
        FF0000FF0000FF080CFFF7F3FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FFA59EA5212021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF0000FF0000FF0000FF0000FF
        0000FF6361FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212021DEDFDEFFFFFFFFFFFFFFFFFF
        181C18A5A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD6D3FF0000FF0000FF0000FF0000FF0000FF0000FFB5
        B2FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFFFFFFFFA5A2A531
        3031FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3FF2120FF0000FF0000FF0000FF0000FF0000FF1010FFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFFFFFFFFF7F3F7000000F7F3
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B
        7DFF0000FF0000FF0000FF0000FF0000FF0000FF5251FFFFFFFFFFFFFFFFFFFF
        101010EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF423C42C6C3C6FFFFFFFFFFFFFFFFFFFFFFFF292C29C6C3C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFF1010FF0000
        FF0000FF0000FF0000FF0000FF0000FF7B7DFFFFFFFFFFFFFFFFFFFF393C39C6
        C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF424142BDBEBDFFFFFFFFFFFFFFFFFFFFFFFF424142C6BEC6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8482FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FFB5B2FFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424142
        C6C3C6FFFFFFFFFFFFFFFFFFFFFFFF737173949294FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2120FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFF424142C6C3C6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212021E7E3E7FF
        FFFFFFFFFFFFFFFFFFFFFF848284848284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDE9EA5D68284CE7D7BCE8284CE7D84FFE3E7FFFFFFDEA2
        A5CE7D84D68284D69E9CFFFFFFF7DFE7D68284CE7D7BCE8284CE7D84DEA2A5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2A5AD2C31940000940000940000B53C42
        DEA2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8284CE7D84D68284CE7D7BCE82
        84CE7D84D68284CE7D7BCE8284FFFFFFFFE3E7CE7D7BCE8284CE7D84D68284CE
        7D7BF7E3E7FFFFFFFFFFFFFFFFFFFFFFFFCE7D84D68284CE7D7BCE8284CE7D84
        EFC3C6FFFFFFFFFFFFB5AEFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FFC6C3FFFFFFFFFFFFFFFFFFFF8482847B7D7BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6CE71739C0C08940000940000
        A51010C66D6BF7D3D6FFFFFFFFFFFFFFFFFFFFFFFF000000D68284CE7D7BCE82
        84CE7D84D682848C3C398C4142CE7D84D68284E7BEBDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7DFDECE71739C0C10940000940000A51010C66D73
        F7D3D6FFFFFFFFFFFFFFFFFFFFFFFFF7DFDECE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFD69E9CCE8284CE7D84D68284CE7D7BF7E3E7FFFFFFFFFFFFFF
        FFFFFFFFFFCE7D84D68284CE7D7BCE8284CE7D84EFC3C6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEFF7DE9294B53C39940000940000940000B53C39D692
        94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000E7BEBDFFFFFFAD2C31940000
        940000AD3031FFFFFFEFC3C6940000940000940000940000B53C39FFFFFFFFFF
        FFFFFFFFFFEFEFAD3031940000940000940000940000940000940000940000CE
        7173FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000940000
        940000940000940000FFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFF7371FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        BDBEFFFFFFFFFFFFFFFFFFFFBDBEBD424142FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDE9EA5A5101094000094000094000094000094000094
        00009C0C10F7D3D6FFFFFFFFFFFFFFFFFF000000940000940000940000940000
        940000940000940000940000940000940000A51C21F7E3E7FFFFFFFFFFFFFFFF
        FFFFFFFFEFCFCEA510109400009400009400009400009400009400009C0C08DE
        A2A5FFFFFFFFFFFFFFFFFFEFC3C6940000940000940000940000CE7D84FFFFFF
        FFFFFF940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000940000940000940000C66163
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000EFC3C6FFFFFF94000094000094000094
        0000FFFFFFE7C3C6940000940000940000940000B54142FFFFFFFFFFFFFFFFFF
        AD3031940000940000940000940000940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFF94000094000094000094000094000094000094000094
        0000940000FFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FF3130FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7E3E7A510109400009400009400009400009400009400009400009400
        00AD3031FFFFFFFFFFFFFFFFFF00000094000094000094000094000094000094
        0000940000940000940000940000940000B54142FFFFFFFFFFFFFFFFFFFFFFFF
        A520219400009400009400009400009400009400009400009400009C1010FFE3
        E7FFFFFFFFFFFFE7C3C6940000940000940000940000D68284FFFFFFEFD3D694
        0000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEA2
        A5940000940000940000940000940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000E7C3C6FFFFFF940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000B54142FFFFFFFFFFFFE7B2B594000094
        0000940000940000940000940000940000940000940000940000AD3031FFFFFF
        FFFFFFFFFFFF9400009400009400009400009400009400009400009400009400
        00FFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFF
        FFFFFFFFFFFFFF424142B5B2B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
        6163940000940000940000940000940000940000940000940000940000940000
        CE8284FFFFFFC6C3C62900009400009400009400009400009400009400009400
        00940000940000940000940000940000F7E3E7FFFFFFFFFFFFCE828494000094
        0000940000940000940000940000940000940000940000940000C66163FFFFFF
        FFFFFFEFC3C6940000940000940000940000CE8284FFFFFFE7B2B59400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFF3F7A51010940000
        940000940000940000940000940000940000940000940000940000F7E3E7FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000EFC3C6EFCFCE940000940000940000940000F7E3E7E7BEC6
        940000940000940000940000B54142FFFFFFFFFFFFC66D739400009400009400
        00940000940000940000940000940000940000940000940000EFCFD6FFFFFFFF
        FFFF940000940000940000940000940000940000940000940000940000FFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFD6D3FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF9492FFFFFFFFFFFFFFFFFFFF
        FFFFFF7B7D7B525152FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000940000940000940000940000940000940000AD2021FF
        FFFF7371734A0000940000940000940000940000940000940000940000940000
        940000940000940000940000EFC3C6FFFFFFFFFFFFA51C219400009400009400
        00940000940000940000940000940000940000940000940000FFFFFFFFFFFFE7
        BEBD940000940000940000940000CE8284FFFFFFD68284940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFFD69E9C94000094000094000094
        0000940000940000940000940000940000940000940000D68E8CFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000E7BEBDEFC3C6940000940000940000940000E7BEC6EFC3C694000094
        0000940000940000B53C39FFFFFFFFFFFFAD3031940000940000940000940000
        B53C39DEA2A5940000940000940000940000940000CE8284FFFFFFFFFFFF9400
        00940000940000940000940000940000940000940000940000FFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFC6BEFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF6B6DFFFFFFFFFFFFFFFFFFFFFFFFFFE7
        E3E7000000E7E3E7FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000
        940000940000C66D73CE7173940000940000940000940000940000F7E3E7211C
        217B30319400009400009400009400009400005A000094000094000094000094
        0000940000940000D68E8CFFFFFFF7DFE7940000940000940000940000940000
        C66D6BCE7173940000940000940000940000940000EFC3C6FFFFFFEFC3C69400
        00940000940000940000CE7D84FFFFFFB53C3994000094000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFFC661639400009400009400009400009C0C
        10EFC3C69C0C08940000940000940000940000BD5152FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        EFC3C6E7C3C6940000940000940000940000EFC3C6E7C3C69400009400009400
        00940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000CE8284FFFFFFFFFFFF940000940000
        940000940000940000940000940000940000940000FFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFC6C3FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF4241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5251
        52848284FFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000FFE3E7E7C3C6940000940000940000940000940000B59294101010CE8284
        940000940000940000940000840000000000DE92949400009400009400009400
        00940000CE8284FFFFFFEFC3C6940000940000940000940000940000EFC3C6F7
        E3E7940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000D68284FFFFFFA51010940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000C66163FFFFFF
        C66163940000940000940000940000B54142FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000E7C3C6D6
        8284940000940000940000940000D69294E7C3C6940000940000940000940000
        B54142FFFFFFF7E3E7940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFF9492FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3C6101010
        F7F3F7FFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C69400009400009400009400009400004A2021636163CE828494000094
        0000940000940000730000424142FFF3F7940000940000940000940000940000
        CE8284FFFFFFEFC3C6940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000CE8284F7E3E7940000940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFFB54142940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000B54142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C42940000940000940000940000EFC3C6CE7D7B9400
        00940000940000940000CE8284E7BEC6940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFC6C3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FFADAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF635D63424142FF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000000000E7E3E7CE7D849400009400009400
        00940000940000DEBEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFD69294940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD940000940000940000940000CE82
        84E7BEC6940000940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF9C0C08940000940000940000940000CE8284FFFFFFD682849400009400
        009400009400009C0C08FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000E7BEBDCE7173940000940000
        940000940000CE7D84EFC3C6940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFC6BEFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF6361FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7292C29848284FFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000D68284FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFCE7D
        84940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000CE7D84CE8284
        940000940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000EFC3C6B5414294000094000094000094
        0000B54142E7C3C6940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFC6C3
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF10
        10FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D3D6424142D6D3D6FFFFFF
        CE8284940000940000940000940000940000FFFFFFE7C3C69400009400009400
        00940000940000CE8284FFFFFFCE8284940000940000940000940000940000E7
        C3C6FFFFFF940000940000940000940000940000CE8284FFFFFFD68284940000
        940000940000940000940000EFC3C6FFFFFF9400009400009400009400009400
        00CE8284FFFFFFE7C3C6940000940000940000940000D68284BD515294000094
        0000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000D68284FFFFFFCE828494000094000094000094000094
        0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000E7C3C6B54142940000940000940000940000B541
        42E7C3C6940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFF
        FFFFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFE7E3FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFB5B2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7525152A5A2A5CE828494
        0000940000940000940000940000FFFFFFE7C3C6940000940000940000940000
        940000D68284FFFFFFCE8284940000940000940000940000940000EFC3C6FFFF
        FF940000940000940000940000940000CE8284FFFFFFCE828494000094000094
        0000940000940000E7C3C6FFFFFF940000940000940000940000940000CE8284
        FFFFFFEFC3C6940000940000940000940000CE8284A520219400009400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000
        940000940000CE8284FFFFFFCE8284940000940000940000940000940000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000EFC3C69C0C08940000940000940000940000AD2021E7BEC6
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFFFFFFFFFFFFFFFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFFFFFFF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF4241FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF423C420000009400009400
        00940000940000940000FFFFFFE7BEC6940000940000940000940000940000CE
        7D7BFFFFFFCE7D84940000940000940000940000940000E7BEBDFFFFFF940000
        940000940000940000940000D68284FFFFFFCE82849400009400009400009400
        00940000EFC3C6FFFFFF940000940000940000940000940000CE7D84FFFFFFE7
        BEBD940000940000940000940000CE8284940000940000940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFF94000094000094000094000094
        0000CE8284FFFFFFD68284940000940000940000940000940000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000E7BEBD940000940000940000940000940000940000EFC3C694000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFFFFFFF4241FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFD6D3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA55D5A940000940000940000
        940000940000A59EA58C6163940000940000940000940000940000D68284FFFF
        FFCE8284940000940000940000940000940000EFC3C6FFFFFF94000094000094
        0000940000940000CE7D7BFFFFFFCE7D84940000940000940000940000940000
        E7BEBDFFFFFF940000940000940000940000940000CE8284FFFFFFEFC3C69400
        00940000940000940000B53C4294000094000094000094000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D
        84FFFFFFCE7D7B940000940000940000940000940000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        EFC3C6940000940000940000940000940000940000E7C3C69400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFF7371FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF1010FFF7F3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000636163846163940000940000940000940000940000CE8284FFFFFFCE8284
        940000940000940000940000940000E7C3C6FFFFFF9400009400009400009400
        00940000CE8284FFFFFFD68284940000940000940000940000940000EFC3C6FF
        FFFF940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000A51010940000940000940000940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000D68284FFFFFF
        CE8284940000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000CE828494
        0000940000940000940000940000940000D69294940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFFFFFFFFA5A2FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000940000D68284FFFFFFCE828494000094
        0000940000940000940000EFC3C6FFFFFF940000940000940000940000940000
        CE8284FFFFFFCE8284940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000940000940000940000940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C42940000940000940000940000D682849400009400
        00940000940000940000940000CE7D84940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFFFFFFFF7EFFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF181CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000CE7D7BFFFFFFCE7D849400009400009400
        00940000940000E7BEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFCE8284940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD9400009400009400009400009400
        00940000940000940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF940000940000940000940000940000CE8284FFFFFFD682849400009400
        00940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000C66D6B940000940000940000
        940000940000940000CE8284940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFFFFFFFF393CFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000D68284FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFCE7D
        84940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000940000940000
        940000940000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000B54142940000940000A52021A5101094
        0000940000B54142940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFF
        FFFFFFFFFFFFFFFFEFC3C6940000940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFF9492FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF7
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CE8284940000940000940000940000940000FFFFFFE7C3C69400009400009400
        00940000940000CE8284FFFFFFCE8284940000940000940000940000940000E7
        C3C6FFFFFF940000940000940000940000940000CE8284FFFFFFD68284940000
        940000940000940000940000EFC3C6FFFFFF9400009400009400009400009400
        00CE8284FFFFFFE7C3C69400009400009400009400009400009400009400009C
        1010940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF9400009400
        00940000940000940000D68284FFFFFFCE828494000094000094000094000094
        0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000B54142940000940000B54142B541429400009400
        00B54142940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFF
        FFFFFFFFE7C3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFFFFFFFFFF
        E7E3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF5251FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494
        0000940000940000940000940000FFFFFFE7C3C6940000940000940000940000
        940000D68284FFFFFFCE8284940000940000940000940000940000EFC3C6FFFF
        FF940000940000940000940000940000CE8284FFFFFFCE828494000094000094
        0000940000940000E7C3C6FFFFFF940000940000940000940000940000CE8284
        FFFFFFEFC3C6940000940000940000940000940000940000940000B541429400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000
        940000940000CE8284FFFFFFCE8284940000940000940000940000940000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000A51010940000940000B53C42B54142940000940000AD2C31
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFFFFFFFFFFFFFFFFFFF
        EFC3C6940000940000940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFFF7F3FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF9492FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD682849400009400
        00940000940000940000FFFFFFE7BEC6940000940000940000940000940000CE
        7D7BFFFFFFCE7D84940000940000940000940000940000E7BEBDFFFFFF940000
        940000940000940000940000D68284FFFFFFCE82849400009400009400009400
        00940000EFC3C6FFFFFF940000940000940000940000940000CE7D84FFFFFFE7
        BEBD940000940000940000940000940000940000940000CE7D7B940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000D68284FFFFFFFFFFFFFFFFFFFFFFFF94000094000094000094000094
        0000CE8284FFFFFFD68284940000940000940000940000940000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000940000940000940000CE8284B54D4A9400009400009C000094000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD94
        0000940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000
        940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFF9C9EFF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FFCECFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7D7B940000940000940000
        940000940000FFFFFFEFC3C6940000940000940000940000940000D68284FFFF
        FFCE8284940000940000940000940000940000EFC3C6FFFFFF94000094000094
        0000940000940000CE7D7BFFFFFFCE7D84940000940000940000940000940000
        E7BEBDFFFFFF940000940000940000940000940000CE8284FFFFFFEFC3C69400
        00940000940000940000940000940000B53C39D6828494000094000094000094
        0000E7BEC6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D
        84FFFFFFCE7D7B940000940000940000940000940000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        940000940000940000CE8284CE82849400009400009C00009400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFEFC3C69400009400
        00940000940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF94000094000094
        0000940000940000CE8284FFFFFFFFFFFFFFFFFF5251FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE828494000094000094000094000094
        0000FFFFFFE7C3C6940000940000940000940000940000CE8284FFFFFFCE8284
        940000940000940000940000940000E7C3C6FFFFFF9400009400009400009400
        00940000CE8284FFFFFFD68284940000940000940000940000940000EFC3C6FF
        FFFF940000940000940000940000940000CE8284FFFFFFE7C3C6940000940000
        940000940000940000940000C67173CE8284940000940000940000940000EFC3
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FF
        FFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000D68284FFFFFF
        CE8284940000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB5414294000094000094000094000094000094
        0000940000DEA2A5CE8284940000940000940000940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFE7C3C6940000940000940000
        940000940000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF9400009400009400009400
        00940000CE8284FFFFFFFFFFFFE7E3FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF4241FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCE8284940000940000940000940000940000FFFF
        FFE7C3C6940000940000940000940000940000D68284FFFFFFCE828494000094
        0000940000940000940000EFC3C6FFFFFF940000940000940000940000940000
        CE8284FFFFFFCE8284940000940000940000940000940000E7C3C6FFFFFF9400
        00940000940000940000940000CE8284FFFFFFEFC3C694000094000094000094
        0000940000940000DEA2A5D68284940000940000940000940000EFC3C6FFFFFF
        FFFFFFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFFFFF
        FFFFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE828494
        0000940000940000940000940000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB53C429400009400009400009400009400009400009400
        00E7BEC6DE9294940000940000940000940000940000940000940000B54142FF
        FFFFEFC3C6940000940000940000940000940000D68284FFFFFF940000940000
        940000940000940000B53C42FFFFFFFFFFFF9400009400009400009400009400
        00CE7D84FFFFFFFFFFFFFFFFFFFFFFFFEFC3C694000094000094000094000094
        0000EFC3C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000
        D68284FFFFFFFFFFFFA59EFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF635DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD68284940000940000940000940000940000FFFFFFE7BEC6
        940000940000940000940000940000D68E8CFFFFFFCE7D849400009400009400
        00940000940000E7BEBDFFFFFF940000940000940000940000940000D68284FF
        FFFFD69294940000940000940000940000940000EFC3C6FFFFFF940000940000
        940000940000940000CE7D84FFFFFFE7BEBD9400009400009400009400009400
        00940000F7D3D6CE7D7B940000940000940000940000EFC3C6FFFFFFFFFFFFFF
        FFFFFFFFFF940000940000940000940000940000D68284FFFFFFFFFFFFFFFFFF
        FFFFFF940000940000940000940000940000CE8284FFFFFFD682849400009400
        009400009400009C0C08FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB54142940000940000940000940000940000940000940000EFC3C6
        E7BEBD940000940000940000940000940000940000940000B53C39FFFFFFE7BE
        C6940000940000940000940000940000CE7D7BFFFFFF94000094000094000094
        0000940000B54142FFFFFFFFFFFF940000940000940000940000940000CE8284
        FFFFFFFFFFFFFFFFFFFFFFFFE7BEBD940000940000940000940000940000E7BE
        C6FFFFFFFFFFFFFFFFFFFFFFFF940000940000940000940000940000CE7D7BFF
        FFFFFFFFFF5251FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8482FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCE7D7B940000940000940000940000940000FFFFFFEFC3C694000094
        0000940000940000940000EFC3C6FFFFFFCE8284940000940000940000940000
        940000EFC3C6FFFFFF940000940000940000940000940000CE7D7BFFFFFFE7BE
        C6940000940000940000940000940000E7BEBDFFFFFF94000094000094000094
        0000940000CE8284FFFFFFEFC3C6940000940000940000940000940000A51010
        FFFFFFD68284940000940000940000940000E7BEC6FFFFFFFFFFFFFFFFFFFFFF
        FF940000940000940000940000940000CE7D7BFFFFFFFFFFFFFFFFFFFFFFFF94
        0000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000940000
        940000B54142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB54142940000940000940000940000940000940000940000FFFFFFEFC3C694
        0000940000940000940000940000940000940000B54142FFFFFFEFC3C6940000
        940000940000940000940000CE8284FFFFFF9400009400009400009400009400
        00B54142FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFCE
        8284940000940000940000940000940000940000940000940000940000940000
        940000B54142FFFFFF940000940000940000940000940000CE8284FFFFFFF7F3
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8482FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7B2B5940000940000940000940000940000FFF3F7E7C3C69400009400009400
        00940000940000E7C3C6FFFFFFCE8284940000940000940000940000940000D6
        9294D68284940000940000940000940000940000CE8284FFFFFFEFC3C6940000
        940000940000940000940000E7B2B5FFF3F79400009400009400009400009400
        00CE8284FFFFFFE7C3C6940000940000940000940000940000B54142FFFFFFCE
        8284940000940000940000940000EFC3C6CE8284940000940000940000940000
        940000940000940000940000940000940000940000B54142FFFFFF9400009400
        00940000940000940000CE7173FFFFFFC67173940000940000940000940000B5
        4142FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142
        940000940000940000940000940000940000940000FFFFFFEFD3D69400009400
        00940000940000940000940000940000B54142FFFFFFEFC3C694000094000094
        0000940000940000CE8284FFFFFF940000940000940000940000940000B54142
        FFFFFFFFFFFF940000940000940000940000940000CE8284FFFFFFD682849400
        00940000940000940000940000940000940000940000940000940000940000B5
        4142FFFFFF940000940000940000940000940000CE8284FFFFFFB5B2FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F794
        0000940000940000940000940000B54142C66163940000940000940000940000
        940000F7D3D6FFFFFFCE82849400009400009400009400009400009400009400
        00940000940000940000940000940000CE8284FFFFFFF7E3E794000094000094
        0000940000940000AD3031C66163940000940000940000940000940000E7C3C6
        FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFFD682849400
        00940000940000940000EFC3C6CE828494000094000094000094000094000094
        0000940000940000940000940000940000B54142FFFFFFB54142940000940000
        940000940000A51010C67173A52021940000940000940000940000BD5152FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB53C4294000094
        0000940000940000940000940000AD2021FFFFFFFFFFFF940000940000940000
        940000940000940000940000B54142FFFFFFEFC3C69400009400009400009400
        00940000D68284FFFFFF940000940000940000940000940000B53C42FFFFFFFF
        FFFF940000940000940000940000940000CE7D84FFFFFFCE7D7B940000940000
        940000940000940000940000940000940000940000940000940000B53C39FFFF
        FF940000940000940000940000940000D68284FFFFFF7371FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FFC6BEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD2C299400
        00940000940000940000940000940000940000940000940000940000AD2021FF
        FFFFFFFFFFCE7D84940000940000940000940000940000940000940000940000
        940000940000940000940000EFC3C6FFFFFFFFFFFFAD2C319400009400009400
        00940000940000940000940000940000940000940000A51010FFEFF7FFFFFFE7
        BEBD940000940000940000940000940000DEAEB5FFFFFFCE7D7B940000940000
        940000940000EFC3C6CE7D849400009400009400009400009400009400009400
        00940000940000940000940000B53C42FFFFFFD68E8C94000094000094000094
        0000940000940000940000940000940000940000940000D69E9CFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB541429400009400009400
        00940000940000940000B53C42FFFFFFFFFFFF94000094000094000094000094
        0000940000940000B53C39FFFFFFE7BEC6940000940000940000940000940000
        CE7D7BFFFFFF940000940000940000940000940000B54142FFFFFFFFFFFF9400
        00940000940000940000940000CE8284FFFFFFD6828494000094000094000094
        0000940000940000940000940000940000940000940000B54142FFFFFF940000
        940000940000940000940000CE7D7BFFFFFF312CFF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7173940000940000
        940000940000940000940000940000940000940000940000D69E9CFFFFFFFFFF
        FFCE828494000094000094000094000094000094000094000094000094000094
        0000940000AD2021FFFFFFFFFFFFFFFFFFDEA2A5940000940000940000940000
        940000940000940000940000940000940000BD5D63FFFFFFFFFFFFEFC3C69400
        00940000940000940000940000F7E3E7FFFFFFD6828494000094000094000094
        0000E7BEC6CE8284940000940000940000940000940000940000940000940000
        940000940000940000B54142FFFFFFF7E3E79400009400009400009400009400
        00940000940000940000940000940000A51C18FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB54142940000940000940000940000
        940000940000B54142FFFFFFFFFFFF9C10109400009400009400009400009400
        00940000B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FF
        FFFF940000940000940000940000940000B54142FFFFFFFFFFFF940000940000
        940000940000940000CE8284FFFFFFCE82849400009400009400009400009400
        00940000940000940000940000940000940000B54142FFFFFF94000094000094
        0000940000940000CE8284FFFFFF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7A5101094000094000094
        0000940000940000940000940000940000A52021FFF3F7FFFFFFFFFFFFCE8284
        9400009400009400009400009400009400009400009400009400009400009400
        00E7B2B5FFFFFFFFFFFFFFFFFFFFFFFFA5202194000094000094000094000094
        00009400009400009400009C1010FFF3F7FFFFFFFFFFFFE7C3C6940000940000
        940000940000AD2021FFFFFFFFFFFFCE8284940000940000940000940000EFC3
        C6CE828494000094000094000094000094000094000094000094000094000094
        0000940000B54142FFFFFFFFFFFFD68284940000940000940000940000940000
        940000940000940000940000D69294FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB5414294000094000094000094000094000094
        0000CE8284FFFFFFFFFFFFB54142940000940000940000940000940000940000
        B54142FFFFFFEFC3C6940000940000940000940000940000CE8284FFFFFF9400
        00940000940000940000940000B54142FFFFFFFFFFFF94000094000094000094
        0000940000CE8284FFFFFFD68284940000940000940000940000940000940000
        940000940000940000940000940000B54142FFFFFF9400009400009400009400
        00940000CE8284C6C3FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD3D69C10109400009400009400
        00940000940000940000AD3031EFD3D6FFFFFFFFFFFFFFFFFFCE828494000094
        0000940000940000940000940000940000940000940000B54142EFD3D6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFD3D6A510109400009400009400009400009400
        009400009C1010F7D3D6FFFFFFFFFFFFFFFFFFEFC3C694000094000094000094
        0000BD5152FFFFFFFFFFFFD68284940000940000940000940000EFC3C6CE8284
        9400009400009400009400009400009400009400009400009400009400009400
        00B54142FFFFFFFFFFFFFFFFFFC6616394000094000094000094000094000094
        0000940000CE8284FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDE9EA5D68284CE7D7BCE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFD69E9CCE8284CE7D84D68284CE7D7BCE8284CE7D84DEA2A5FF
        FFFFF7E3E7CE7D84D68284CE7D7BCE8284CE7D84EFC3C6FFFFFFCE8284CE7D84
        D68284CE7D7BCE8284DE9EA5FFFFFFFFFFFFCE8284CE7D84D68284CE7D7BCE82
        84E7BEC6FFFFFFE7BEBDCE8284CE7D84D68284CE7D7BCE8284CE7D84D68284CE
        7D7BCE8284CE7D84D68284D69E9CFFFFFFCE7D84D68284CE7D7BCE8284CE7D84
        EFC3C68C8EFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF847DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFE7B54142940000940000940000
        940000B54D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BEC6D68284CE7D7BCE82
        84CE7D84D682848C3C39AD8284E7BEC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7DFDEB54142940000940000940000940000B53C42
        FFE3E7FFFFFFFFFFFFFFFFFFFFFFFFF7DFDECE8284CE7D84D68284CE7D7BEFC3
        C6FFFFFFFFFFFFE7BEBDCE8284CE7D84D68284CE7D7BF7E3E7E7BEC6D68284CE
        7D7BCE8284CE7D84D68284CE7D7BCE8284CE7D84D68284CE7D7BCE8284DE9EA5
        FFFFFFFFFFFFFFFFFFFFFFFFD68284A51C18940000940000940000A51C18E7B2
        B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
        82FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF7371FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF636163A59EA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5251FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3130FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3E710
        1010F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFE7E3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD6D3FFC6C3FFC6C3FFC6C3FFE7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF636163636163FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF393CFF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF8482FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF181CFF0000
        FF0000FF0000FF0000FF0000FF423CFFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFD6000000DEDFDEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF181CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DFFF5251FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF7371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5251527B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4241FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF6361FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF9492FF1010FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF1010FFC6C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6361FF4241B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF7371FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF5251FFD6D3FFFFFFFFFFFFFFFFFFFFB5B2FF
        4241FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF4241FFA5A2FFC6C3FFC6C3FF8482FF21
        20FF0000FF9492FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7B7DFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3130
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5
        A2FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF1010FFD6CFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FFA5A2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6361FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF7371FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E3FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF524DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A2FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF423C
        FFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A2FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF5251FFA5A2
        FFF7F3FFFFFFFFFFFFFFFFFFFFE7E3FF5251FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF4241FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C3FF4241FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF4241FFA5A2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF4241FFF7F3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BEFF6361FF080CFF0000
        FF0000FF5251FFBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9492FF100CFF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF847DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAEFF8482FF847DFF4241FF393CFF63
        61FFD6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      Stretch = True
    end
  end
  inherited DetailBand1: TQRBand
    Left = 49
    Top = 291
    Width = 934
    Height = 26
    BeforePrint = DetailBand1BeforePrint
    Size.Values = (
      52.9166666666667
      1900.92948717949)
    BandType = rbGroupFooter
    object QRDBText12: TQRDBText
      Left = 13
      Top = 0
      Width = 65
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        0
        132.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'servico'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText13: TQRDBText
      Left = 130
      Top = 0
      Width = 92
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        264.583333333333
        0
        187.24358974359)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'ds_servico'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText14: TQRDBText
      Left = 532
      Top = 0
      Width = 92
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1082.75641025641
        0
        187.24358974359)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'quantidade'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText15: TQRDBText
      Left = 666
      Top = 0
      Width = 101
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1355.48076923077
        0
        205.560897435897)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'Valor_Bruto'
      Mask = '###,###,###,##0.00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText16: TQRDBText
      Left = 876
      Top = 0
      Width = 47
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1782.88461538462
        0
        95.6570512820513)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'valor'
      Mask = '###,###,###,##0.00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited SummaryBand1: TQRBand
    Left = 49
    Top = 330
    Width = 934
    Height = 143
    Frame.Color = clGray
    Frame.DrawTop = True
    BeforePrint = SummaryBand1BeforePrint
    Size.Values = (
      291.041666666667
      1900.92948717949)
    BandType = rbGroupHeader
    inherited QRSysData4_her: TQRSysData
      Left = 13
      Top = 13
      Width = 183
      Height = 26
      Enabled = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        26.4583333333333
        372.451923076923)
      FontSize = 8
    end
    object QRLabel19: TQRLabel
      Left = 390
      Top = 0
      Width = 101
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        793.75
        0
        205.560897435897)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Geral'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 633
      Top = 4
      Width = 139
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.0972222222222
        1287.63888888889
        8.81944444444444
        282.222222222222)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryOrcamento.Valor_Bruto)'
      Mask = '###,###,###,##0.00'
      FontSize = 8
    end
    object QRExpr2: TQRExpr
      Left = 780
      Top = 4
      Width = 139
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.0972222222222
        1587.5
        8.81944444444444
        282.222222222222)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(QueryOrcamento.Valor)'
      Mask = '###,###,###,##0.00'
      FontSize = 8
    end
    object QRLabel20: TQRLabel
      Left = 13
      Top = 39
      Width = 202
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        79.375
        411.121794871795)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Condições de Pagamento'
      Color = clWhite
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
    object QRLabel21: TQRLabel
      Left = 286
      Top = 39
      Width = 101
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        582.083333333333
        79.375
        205.560897435897)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Parcelas de'
      Color = clWhite
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
    object QRDBText18: TQRDBText
      Left = 221
      Top = 39
      Width = 52
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.0972222222222
        449.791666666667
        79.375
        105.833333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'numero_parcelas'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape3: TQRShape
      Left = 3
      Top = 27
      Width = 929
      Height = 9
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        18.5208333333333
        5.29166666666667
        55.5625
        1891.77083333333)
      Pen.Color = clGray
      Shape = qrsHorLine
    end
    object QRDBText19: TQRDBText
      Left = 831
      Top = 39
      Width = 92
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1691.29807692308
        79.375
        187.24358974359)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'vr_parcela'
      Mask = '###,###,###,##0.00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape4: TQRShape
      Left = 3
      Top = 62
      Width = 929
      Height = 9
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        18.5208333333333
        5.29166666666667
        127
        1891.77083333333)
      Pen.Color = clGray
      Shape = qrsHorLine
    end
    object QRLabel22: TQRLabel
      Left = 13
      Top = 78
      Width = 529
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        158.75
        1076.65064102564)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'OBS: O PRESENTE ORÇAMENTO TEM VALIDADE NO MÁXIMO ATÉ O DIA'
      Color = clWhite
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
    object QRShape5: TQRShape
      Left = 3
      Top = 100
      Width = 929
      Height = 9
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        18.5208333333333
        5.29166666666667
        203.729166666667
        1891.77083333333)
      Pen.Color = clGray
      Shape = qrsHorLine
    end
    object QRLabel23: TQRLabel
      Left = 13
      Top = 117
      Width = 74
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        26.4583333333333
        238.125
        150.608974358974)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'STATUS: '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText20: TQRDBText
      Left = 91
      Top = 117
      Width = 83
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        185.208333333333
        238.125
        168.926282051282)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryOrcamento
      DataField = 'ds_status'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited PageFooterBand1: TQRBand
    Left = 49
    Top = 317
    Width = 934
    Height = 13
    Size.Values = (
      26.4583333333333
      1900.92948717949)
  end
  inherited QRLabel1: TQRLabel
    Left = 234
    Top = 13
    Width = 74
    Height = 26
    Size.Values = (
      52.9166666666667
      476.25
      26.4583333333333
      150.608974358974)
    FontSize = 8
  end
  object QRSubDetail1: TQRSubDetail [5]
    Left = 49
    Top = 257
    Width = 934
    Height = 34
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRSubDetail1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      69.198717948718
      1900.92948717949)
    Master = Owner
    DataSet = QueryEvent
    FooterBand = DetailBand1
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText21: TQRDBText
      Left = 10
      Top = 6
      Width = 1430
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        40.7051282051282
        20.3525641025641
        12.2115384615385
        2910.41666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = QueryEvent
      DataField = 'tx_evento'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QueryOrcamento: TQuery
    Active = True
    DatabaseName = 'multi'
    SQL.Strings = (
      'select'
      #9'o.numero,'
      #9'o.data,'
      #9'o.usuario,'
      #9'u.nome as nm_usuario,'
      #9'u.codigo as cd_contrat,'
      #9'c.nome as nm_contrat,'
      #9'o.dentista,'
      #9'd.nome as nm_dentista,'
      #9'c1.codigo as cd_empresa,'
      #9'c1.nome as nm_empresa,'
      #9'g.codigo as cd_grupo,'
      #9'g.descricao as ds_grupo,'
      #9'i.servico,'
      #9's.descricao as ds_servico,'
      #9'i.quantidade,'
      #9'i.Valor_Bruto,'
      #9'i.valor,'
      '        o.numero_parcelas,'
      
        '        case numero_parcelas when 0 then o.total else round(o.to' +
        'tal / numero_parcelas,10,2) end as vr_parcela,'
      '        so.descricao as ds_status,'
      '        i.incremento'
      ''
      #9
      'from orcamento o'
      'left join itens_orcamento i'
      'on o.numero = i.orcamento'
      ''
      'left join servicos s'
      'on s.codigo = i.servico'
      ''
      'left join usuario u'
      'on u.codigo_completo = o.usuario'
      ''
      'left join dentista d'
      'on d.codigo = o.dentista'
      ''
      'left join contratante c'
      'on c.codigo = u.codigo'
      ''
      'left join contratante c1'
      'on c1.codigo = o.contratante_titular'
      ''
      'left join grupo_contratante g'
      'on g.codigo = c1.Grupo_Contratante'
      'left join status_orcamento so'
      'on so.codigo = o.status'
      ''
      'where o.numero ='
      '87951'
      ' '
      ' ')
    Left = 336
    Top = 320
  end
  object QueryEvent: TQuery
    Active = True
    DatabaseName = 'multi'
    SQL.Strings = (
      
        'select orcamento,REPLACE(tx_evento, CHAR(13) + CHAR(10),'#39' '#39') as ' +
        'tx_evento from EventOdontograma where orcamento ='
      '87951'
      'and incremento ='
      '191103')
    Left = 216
    Top = 320
  end
end
