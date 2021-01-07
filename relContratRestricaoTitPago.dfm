inherited FmFrrContratRestricaoTitPago: TFmFrrContratRestricaoTitPago
  Width = 870
  Height = 682
  Caption = 'FmFrrContratRestricaoTitPago'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'TITULOS PAGOS DE CONTRATANTES COM RESTRI'#199#195'O'
    inherited RLBandSummaryH: TRLBand
      Top = 143
    end
    inherited RLBandDetailH: TRLBand
      Top = 127
      object RLDBText1: TRLDBText
        Left = -45
        Top = 0
        Width = 97
        Height = 13
        Alignment = taRightJustify
        DataField = 'codigo_contratante'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 60
        Top = 0
        Width = 30
        Height = 13
        DataField = 'Nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 336
        Top = 0
        Width = 72
        Height = 13
        Alignment = taRightJustify
        DataField = 'Numero_Titulo'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 415
        Top = 0
        Width = 25
        Height = 13
        Alignment = taCenter
        DataField = 'Desdobramento'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 448
        Top = 1
        Width = 49
        Height = 13
        DataField = 'Descricao'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 502
        Top = 0
        Width = 86
        Height = 13
        Alignment = taRightJustify
        DataField = 'data_vencimento'
        DataSource = DataSourceH
      end
      object RLDBText7: TRLDBText
        Left = 577
        Top = 0
        Width = 86
        Height = 13
        Alignment = taCenter
        DataField = 'data_pagamento'
        DataSource = DataSourceH
      end
      object RLDBText8: TRLDBText
        Left = 647
        Top = 0
        Width = 65
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'Valor_Pago'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 111
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 44
        Height = 13
        Caption = 'CODIGO'
      end
      object RLLabel2: TRLLabel
        Left = 60
        Top = 0
        Width = 77
        Height = 13
        Caption = 'CONTRATANTE'
      end
      object RLLabel3: TRLLabel
        Left = 368
        Top = 0
        Width = 39
        Height = 13
        Caption = 'TITULO'
      end
      object RLLabel4: TRLLabel
        Left = 416
        Top = 0
        Width = 29
        Height = 13
        Caption = 'DESD'
      end
      object RLLabel5: TRLLabel
        Left = 450
        Top = 0
        Width = 27
        Height = 13
        Caption = 'TIPO'
      end
      object RLLabel6: TRLLabel
        Left = 543
        Top = 0
        Width = 43
        Height = 13
        Caption = 'VENCTO'
      end
      object RLLabel7: TRLLabel
        Left = 603
        Top = 0
        Width = 37
        Height = 13
        Caption = 'PAGTO'
      end
      object RLLabel8: TRLLabel
        Left = 666
        Top = 0
        Width = 47
        Height = 13
        Caption = 'VR PAGO'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 72
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 26
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 54
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 54
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 54
      end
      object RLLabel9: TRLLabel
        Left = 8
        Top = 54
        Width = 44
        Height = 13
        Caption = 'CODIGO'
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQueryReceber
  end
  object ADOQueryReceber: TADOQuery
    Active = True
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'set dateformat dmy select'
      'r.codigo_contratante,'
      'c.Nome,'
      'Numero_Titulo, '
      'Desdobramento, '
      'td.Descricao, '
      'convert(char(10), r.data_vencimento,103) data_vencimento,'
      'CONVERT(char(10), r.data_pagamento,103) data_pagamento,'
      'r.Valor_Pago'
      ''
      'from receber r '
      'left join contratante c'
      'on c.Codigo = r.Codigo_Contratante'
      ''
      'left join TipoDocumento td'
      'on td.Codigo = r.tipo_documento'
      ''
      'where r.Data_Pagamento between '
      #39'01/01/2011'#39' and '#39'31/01/2011 23:59'#39
      '      and c.lg_restricao = 1'
      ''
      'order by c.nome,r.Data_Vencimento')
    Left = 360
    Top = 208
  end
end
