inherited FmRelFrConfCartoes: TFmRelFrConfCartoes
  Left = 188
  Top = 98
  HorzScrollBar.Position = 0
  Caption = 'FmRelFrConfCartoes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = 0
    DataSource = DataSource1
    inherited RLBandSummaryH: TRLBand
      Top = 141
      Height = 47
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 27
      end
      object RLDBResult1: TRLDBResult
        Left = 43
        Top = 3
        Width = 123
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Pago'
        DataSource = DataSource1
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
        Text = 'Total '
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 125
      object RLDBText1: TRLDBText
        Left = 25
        Top = 0
        Width = 41
        Height = 13
        Alignment = taRightJustify
        DataField = 'dtpagto'
        DataSource = DataSource1
      end
      object RLDBText2: TRLDBText
        Left = 102
        Top = 0
        Width = 65
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Pago'
        DataSource = DataSource1
        DisplayMask = '###,###,##0.00'
      end
      object RLDBText3: TRLDBText
        Left = 183
        Top = 0
        Width = 32
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'Nome_Documento'
        DataSource = DataSource1
      end
      object RLDBText4: TRLDBText
        Left = 232
        Top = 0
        Width = 72
        Height = 13
        DataField = 'Numero_Titulo'
        DataSource = DataSource1
      end
      object RLDBText5: TRLDBText
        Left = 312
        Top = 0
        Width = 77
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_contratante'
        DataSource = DataSource1
      end
      object RLDBText6: TRLDBText
        Left = 406
        Top = 0
        Width = 80
        Height = 13
        DataField = 'nm_contratante'
        DataSource = DataSource1
      end
      object RLDBText7: TRLDBText
        Left = 647
        Top = 1
        Width = 64
        Height = 13
        Alignment = taCenter
        DataField = 'tpCobrPagto'
        DataSource = DataSource1
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 109
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 59
        Height = 13
        Caption = 'DT PAGTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 312
        Top = 0
        Width = 81
        Height = 13
        Caption = 'C'#211'D CONTRAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 404
        Top = 0
        Width = 83
        Height = 13
        Caption = 'CONTRATANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 184
        Top = 0
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
        Left = 232
        Top = 0
        Width = 50
        Height = 13
        Caption = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 96
        Top = 0
        Width = 74
        Height = 13
        Caption = 'VALOR PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 634
        Top = 2
        Width = 79
        Height = 13
        Caption = 'TP COBR/PAG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 70
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 25
      end
      object RLLabelParam: TRLLabel
        Left = 8
        Top = 52
        Width = 70
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'set dateformat dmy select  convert(char(10),r.data_pagamento,103' +
        ') as dtpagto,'
      '        c.codigo as cd_contratante,'
      '        c.nome as nm_contratante,'
      '        substring(td.Descricao,1,3) as Nome_Documento,'
      '        r.Numero_Titulo,'
      '        r.Valor_Pago'
      ',Tipo_Pagamento, '
      
        'cast(replicate('#39'0'#39',3 - len(r.Tipo_Cobranca)) + cast(r.Tipo_Cobra' +
        'nca as varchar(3)) + '#39'/'#39' + replicate('#39'0'#39',3 - len(r.tipo_pagament' +
        'o)) + cast(r.tipo_pagamento as varchar(3)) as varchar(7)) as tpC' +
        'obrPagto'
      '     '
      'from Receber r'
      ''
      ''
      'left join TipoDocumento td on td.Codigo = r.Tipo_documento'
      ''
      'left join contratante c on c.codigo = r.codigo_contratante'
      ''
      'where '
      ''
      'Data_Pagamento between '
      #39'01/01/2008'#39' and '#39'01/02/2008'#39
      'and r.Tipo_Cobranca = 685'
      'and r.Tipo_Pagamento = 17'
      ''
      ''
      'order by r.data_pagamento'
      ''
      ''
      '')
    Left = 128
    Top = 248
  end
end
