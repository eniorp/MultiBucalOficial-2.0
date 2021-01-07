inherited FmFrRelResumoBaixaPorData: TFmFrRelResumoBaixaPorData
  Left = 70
  Top = 66
  Width = 843
  Height = 635
  Caption = 'FmFrRelResumoBaixaPorData'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 152
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Visible = False
      end
      object RLDBResult1: TRLDBResult
        Left = 351
        Top = 9
        Width = 66
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult2: TRLDBResult
        Left = 449
        Top = 10
        Width = 96
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor_pago'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 129
      Height = 23
      object RLDBText1: TRLDBText
        Left = 152
        Top = 2
        Width = 97
        Height = 13
        DataField = 'Descricao_TipoPgto'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 481
        Top = 2
        Width = 65
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor_pago'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
      object RLDBText3: TRLDBText
        Left = 383
        Top = 2
        Width = 35
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 108
      Height = 21
      object RLLabel1: TRLLabel
        Left = 152
        Top = 2
        Width = 115
        Height = 13
        Caption = 'FORMA PAGAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 475
        Top = 2
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
      object RLLabel3: TRLLabel
        Left = 342
        Top = 5
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
    end
    inherited RLBandHeaderH: TRLBand
      Height = 69
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 25
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 48
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 48
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 48
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = AdoQueryResumo
    Left = 229
    Top = 168
  end
  object AdoQueryResumo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'set dateformat dmy'
      'select '
      'Descricao_TipoPgto, sum(valor) valor,sum(Valor_Pago) valor_pago'
      ' from Receber '
      
        'left join Contratante on (Contratante.Codigo = Receber.codigo_Co' +
        'ntratante)'
      
        'left join TipoDocumento on (TipoDocumento.Codigo = Receber.Tipo_' +
        'documento)'
      
        'left join TipoCobranca on (TipoCobranca.Codigo = Receber.Tipo_Co' +
        'branca)'
      
        'left join Tipos_Pagamentos on (Tipos_Pagamentos.Id_TipoPgto = Re' +
        'ceber.Tipo_Pagamento)'
      'where 1 = 1'
      
        'and (Data_Pagamento between '#39'12/05/2010'#39' and '#39'12/05/2010'#39') and (' +
        'Data_Vencimento between '#39'01/01/1900'#39' and '#39'01/1/2011'#39')'
      ''
      ''
      ''
      'group by descricao_tipopgto'
      'order by 1')
    Left = 344
    Top = 168
  end
end
