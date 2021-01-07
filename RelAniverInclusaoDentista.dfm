inherited fmfrNiverInclusaoDentista: TfmfrNiverInclusaoDentista
  Top = 199
  Width = 778
  HorzScrollBar.Position = 41
  Caption = 'fmfrNiverInclusaoDentista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = -41
    inherited RLBandSummaryH: TRLBand
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 15
      end
    end
    inherited RLBandDetailH: TRLBand
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 34
        Height = 13
        DataField = 'codigo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 80
        Top = 0
        Width = 29
        Height = 13
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 400
        Top = 0
        Width = 25
        Height = 13
        DataField = 'data'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 504
        Top = 1
        Width = 50
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_tabela'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 567
        Top = 1
        Width = 50
        Height = 13
        DataField = 'ds_tabela'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 47
        Height = 13
        Caption = 'C'#211'DIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 80
        Top = 0
        Width = 58
        Height = 13
        Caption = 'DENTISTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 400
        Top = 0
        Width = 110
        Height = 13
        Caption = 'DATA DE INCLUS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 514
        Top = 1
        Width = 43
        Height = 13
        Caption = 'CD TAB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 565
        Top = 1
        Width = 76
        Height = 13
        Caption = 'DESC TABELA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
    Left = 189
    Top = 192
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'convert(char(10),dt_inclusao,103) data, '
      #9'codigo,'
      #9'nome,'
      #9't.cd_tabela,'
      '        tp.ds_tabela'
      ''
      'from '
      #9'dentista d, '
      #9'TabPagXDentista t , '
      #9'TabelaPagto tp'
      ''
      'where '
      #9'  data_exclusao is null '
      '      and t.cd_dentista = d.codigo'
      '      and getdate() between dtini and dateadd(day,1,dtfim)'
      '      and tp.cd_tabela = t.cd_tabela'
      'and month(dt_inclusao) = 7'
      'order by nome')
    Left = 304
    Top = 168
  end
end
