inherited FmFrRelGlosas: TFmFrRelGlosas
  Width = 901
  Height = 516
  Caption = 'FmFrRelGlosas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'RELAT'#211'RIO DE GLOSAS POR PER'#205'ODO'
    inherited RLBandSummaryH: TRLBand
      Top = 136
    end
    inherited RLBandDetailH: TRLBand
      Top = 120
      object RLDBText1: TRLDBText
        Left = -12
        Top = 0
        Width = 71
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_orcamento'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 66
        Top = 0
        Width = 150
        Height = 13
        AutoSize = False
        DataField = 'dentista'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 224
        Top = 0
        Width = 155
        Height = 13
        AutoSize = False
        DataField = 'usuairo'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 387
        Top = 0
        Width = 124
        Height = 13
        AutoSize = False
        DataField = 'dsServico'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 521
        Top = 0
        Width = 125
        Height = 13
        AutoSize = False
        DataField = 'ds_glosa'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 661
        Top = 0
        Width = 39
        Height = 13
        DataField = 'dtGlosa'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 104
      object RLLabel1: TRLLabel
        Left = 5
        Top = 3
        Width = 53
        Height = 13
        Caption = 'OR'#199'AMEN'
      end
      object RLLabel2: TRLLabel
        Left = 65
        Top = 0
        Width = 52
        Height = 13
        Caption = 'DENTISTA'
      end
      object RLLabel3: TRLLabel
        Left = 225
        Top = 0
        Width = 49
        Height = 13
        Caption = 'USU'#193'RIO'
      end
      object RLLabel4: TRLLabel
        Left = 386
        Top = 0
        Width = 47
        Height = 13
        Caption = 'SERVI'#199'O'
      end
      object RLLabel5: TRLLabel
        Left = 521
        Top = 0
        Width = 36
        Height = 13
        Caption = 'GLOSA'
      end
      object RLLabel6: TRLLabel
        Left = 663
        Top = 0
        Width = 30
        Height = 13
        Caption = 'DATA'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 65
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 11
        Align = faNone
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 43
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 43
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 43
      end
      object RLLabel7: TRLLabel
        Left = 8
        Top = 43
        Width = 46
        Height = 13
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQueryGlosa
  end
  object ADOQueryGlosa: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'SET DATEFORMAT DMY'
      'select a.cd_orcamento,'
      '       d.codigo as cdDentista,'
      '       d.Nome as dentista,'
      '       u.Codigo_Completo,'
      #9'   u.Nome as usuairo,'
      #9'   b.Servico,'
      #9'   f.Descricao as dsServico,'
      #9'   e.ds_glosa,'
      '       convert(char(10),a.data,103) dtGlosa,'
      #9'   a.nmOperador'
      ''
      ''
      ''
      
        '      from glosaDentista a, Itens_PagDentista b, orcamento c, de' +
        'ntista d, glosa e, Servicos f, Usuario u'
      'where a.cd_orcamento = b.Orcamento'
      '  and a.incremento = b.Incremento'
      '  and c.Numero     = b.Orcamento'
      '  and d.Codigo     = c.Dentista'
      '  and e.cd_glosa   = a.cd_glosa'
      '  and f.Codigo     = b.Servico'
      '  and u.Codigo_Completo = c.Usuario'
      '  and a.data between'
      '  '#39'01/01/2014'#39' and '#39'31/12/2014'#39)
    Left = 257
    Top = 177
  end
end
