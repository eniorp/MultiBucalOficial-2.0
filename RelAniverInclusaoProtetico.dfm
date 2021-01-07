inherited fmfrNiverInclusaoProtetico: TfmfrNiverInclusaoProtetico
  Caption = 'fmfrNiverInclusaoProtetico'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandColumnHeaderH: TRLBand
      inherited RLLabel2: TRLLabel
        Width = 66
        Caption = 'PROTETICO'
      end
    end
    object RLLabel6: TRLLabel
      Left = 88
      Top = 216
      Width = 337
      Height = 25
      Caption = 'ESTE RELAT'#211'RO TEM HERAN'#199'A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  inherited ADOQuery1: TADOQuery
    SQL.Strings = (
      'select '
      #9'convert(char(10),dt_inclusao,103) data, '
      #9'codigo,'
      #9'nome,'
      #9't.cd_tabela,'
      '        tp.ds_tabela'
      ''
      'from '
      #9'protetico p, '
      #9'TabPagXProtetico t , '
      #9'TabelaPagto tp'
      ''
      'where '
      #9'  data_exclusao is null '
      '      and t.cd_protetico = p.codigo'
      '      and getdate() between dtini and dateadd(day,1,dtfim)'
      '      and tp.cd_tabela = t.cd_tabela'
      'and month(dt_inclusao) = 7'
      'order by nome')
  end
end
