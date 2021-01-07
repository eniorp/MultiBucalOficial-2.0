inherited FmFrRelPagDentistaPorPeriodo: TFmFrRelPagDentistaPorPeriodo
  Width = 872
  Height = 588
  Caption = 'FmFrRelPagDentistaPorPeriodo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 130
      Height = 39
      Borders.Sides = sdCustom
      Borders.DrawTop = True
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 16
      end
      object RLDBResult1: TRLDBResult
        Left = 317
        Top = 12
        Width = 58
        Height = 13
        Alignment = taRightJustify
        DataField = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult2: TRLDBResult
        Left = 454
        Top = 12
        Width = 71
        Height = 13
        Alignment = taRightJustify
        DataField = 'imposto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
      object RLDBResult3: TRLDBResult
        Left = 552
        Top = 12
        Width = 131
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'VALOR - IMPOSTO'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 114
      object RLDBText1: TRLDBText
        Left = 182
        Top = 1
        Width = 41
        Height = 13
        Alignment = taRightJustify
        DataField = 'mesAno'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 344
        Top = 1
        Width = 35
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
      object RLDBText3: TRLDBText
        Left = 479
        Top = 1
        Width = 48
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'imposto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
      object RLDBResult4: TRLDBResult
        Left = 552
        Top = 0
        Width = 132
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'VALOR - imposto'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 98
      object RLLabel2: TRLLabel
        Left = 184
        Top = 0
        Width = 41
        Height = 13
        Caption = 'PER'#205'DO'
      end
      object RLLabel3: TRLLabel
        Left = 341
        Top = 0
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
      object RLLabel4: TRLLabel
        Left = 478
        Top = 2
        Width = 49
        Height = 13
        Caption = 'IMPOSTO'
      end
      object RLLabel5: TRLLabel
        Left = 619
        Top = 2
        Width = 62
        Height = 13
        Caption = 'VR LIQUIDO'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 59
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
        Top = 6
        Align = faNone
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 39
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 39
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 39
      end
      object RLLabel1: TRLLabel
        Left = 8
        Top = 40
        Width = 46
        Height = 13
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '#9'b.Dentista, c.Nome,'
      'a.mesAno, d.TipoPessoa,  sum(a.valor) as valor,'
      
        'case d.TipoPessoa when '#39'AU'#39' then (sum(a.valor) * e.percent_inss ' +
        '/100)'
      
        '                  when '#39'PJ'#39' then case when d.optante_simples = 1' +
        ' then 0 when sum(a.valor) > e.VrBaseCobr_Ir then sum(a.valor) * ' +
        '(e.Percent_IR / 100) ELSE 0 end end '#39'imposto'#39
      'from'
      
        #9'Itens_PagDentista a, orcamento b, dentista c, clinicas d, Prefe' +
        'rencia e'
      'where substring(a.MesAno,4,4) + SUBSTRING(a.mesAno,1,2)  between'
      #39'201409'#39
      'and'
      #39'201409'#39
      'and a.Orcamento = b.numero'
      'and c.codigo  = b.dentista'
      'and d.Codigo = c.Codigo_Clinica'
      'and b.Dentista ='
      '1002'
      ''
      'group by'
      
        '    a.mesAno,d.TipoPessoa, e.Percent_Inss, e.VrBaseCobr_Ir, e.Pe' +
        'rcent_IR, b.Dentista,c.Nome,d.optante_simples'
      ''
      'order by'
      ''
      'b.Dentista, substring(a.MesAno,4,4) + SUBSTRING(a.mesAno,1,2)'
      '')
    Left = 304
    Top = 184
  end
end
