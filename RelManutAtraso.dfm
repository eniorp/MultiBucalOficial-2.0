inherited QrManutAtraso: TQrManutAtraso
  Width = 595
  Height = 842
  DataSet = sp_manutAtraso
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
  ReportTitle = 'MANUTENÇÕES EM ATRASO'
  Zoom = 75
  inherited PageHeaderBand1: TQRBand
    Left = 28
    Top = 28
    Width = 538
    Height = 56
    Size.Values = (
      197.555555555556
      1897.94444444444)
    inherited QRSysData1: TQRSysData
      Left = 197
      Top = 6
      Width = 143
      Height = 14
      Size.Values = (
        49.3888888888889
        694.972222222222
        21.1666666666667
        504.472222222222)
      FontSize = 11
    end
    inherited QRSysData2: TQRSysData
      Left = 441
      Top = 6
      Width = 90
      Height = 11
      Size.Values = (
        38.8055555555556
        1555.75
        21.1666666666667
        317.5)
      FontSize = 8
    end
    inherited QRSysData3: TQRSysData
      Left = 5
      Top = 4
      Width = 6
      Height = 11
      Size.Values = (
        38.8055555555556
        17.6388888888889
        14.1111111111111
        21.1666666666667)
      FontSize = 8
    end
    inherited QRLabel2: TQRLabel
      Left = 8
      Top = 26
      Width = 122
      Height = 11
      Enabled = True
      Size.Values = (
        38.8055555555556
        28.2222222222222
        91.7222222222222
        430.388888888889)
      Caption = 'QT PARCELAS MAIOR QUE 3'
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 13
      Top = 40
      Width = 32
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        45.8611111111111
        141.111111111111
        112.888888888889)
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
    object QRLabel4: TQRLabel
      Left = 263
      Top = 40
      Width = 32
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        927.805555555556
        141.111111111111
        112.888888888889)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FONE 1'
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
    object QRLabel5: TQRLabel
      Left = 343
      Top = 40
      Width = 32
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1210.02777777778
        141.111111111111
        112.888888888889)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FONE 2'
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
    object QRLabel6: TQRLabel
      Left = 427
      Top = 40
      Width = 32
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1506.36111111111
        141.111111111111
        112.888888888889)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FONE 3'
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
    object QRLabel7: TQRLabel
      Left = 492
      Top = 40
      Width = 43
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1735.66666666667
        141.111111111111
        151.694444444444)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QT PARC.'
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
    object QRLabel8: TQRLabel
      Left = 71
      Top = 40
      Width = 22
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        250.472222222222
        141.111111111111
        77.6111111111111)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'NOME'
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
  end
  inherited DetailBand1: TQRBand
    Left = 28
    Top = 84
    Width = 538
    Height = 14
    Size.Values = (
      49.3888888888889
      1897.94444444444)
    object QRDBText6: TQRDBText
      Left = -33
      Top = 2
      Width = 80
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        -116.416666666667
        7.05555555555556
        282.222222222222)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'codigo_completo'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 74
      Top = 2
      Width = 38
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        261.055555555556
        7.05555555555556
        134.055555555556)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'usuario'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 510
      Top = 2
      Width = 22
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1799.16666666667
        7.05555555555556
        77.6111111111111)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'Qtde'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 345
      Top = 2
      Width = 27
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1217.08333333333
        7.05555555555556
        95.25)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'fone2'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 261
      Top = 2
      Width = 27
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        920.75
        7.05555555555556
        95.25)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'fone1'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 427
      Top = 2
      Width = 17
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        1506.36111111111
        7.05555555555556
        59.9722222222222)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'fax'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 50
      Top = 2
      Width = 20
      Height = 11
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.8055555555556
        176.388888888889
        7.05555555555556
        70.5555555555556)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = sp_manutAtraso
      DataField = 'excluido'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  inherited SummaryBand1: TQRBand
    Left = 28
    Top = 98
    Width = 538
    Size.Values = (
      190.5
      1897.94444444444)
    inherited QRLabel1: TQRLabel
      Left = 264
      Top = 26
      Width = 269
      Height = 11
      Size.Values = (
        38.8055555555556
        931.333333333333
        91.7222222222222
        948.972222222222)
      FontSize = 8
    end
    inherited QRSysData4_her: TQRSysData
      Left = 5
      Top = 4
      Width = 48
      Height = 11
      Size.Values = (
        38.8055555555556
        17.6388888888889
        14.1111111111111
        169.333333333333)
      FontSize = 8
    end
  end
  inherited PageFooterBand1: TQRBand
    Left = 28
    Top = 152
    Width = 538
    Height = 8
    Size.Values = (
      28.2222222222222
      1897.94444444444)
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 456
    Top = 256
  end
  object sp_manutAtraso: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_manutAtraso'
    Left = 248
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 44617216
      end
      item
        DataType = ftSmallint
        Name = '@QtParAtraso'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftString
        Name = '@MostraExcluido'
        ParamType = ptInput
        Value = 'S'
      end>
  end
end
