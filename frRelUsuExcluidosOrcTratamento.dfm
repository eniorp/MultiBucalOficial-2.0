inherited FmRelUsuExcluidosOrcAtivo: TFmRelUsuExcluidosOrcAtivo
  Width = 797
  Caption = 'FmRelUsuExcluidosOrcAtivo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    ShowProgress = False
    inherited RLBandSummaryH: TRLBand
      Top = 149
    end
    inherited RLBandDetailH: TRLBand
      Top = 133
      object RLDBText1: TRLDBText
        Left = -25
        Top = 0
        Width = 87
        Height = 13
        Alignment = taRightJustify
        DataField = 'Codigo_Completo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 0
        Width = 29
        Height = 13
        DataField = 'nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 328
        Top = 0
        Width = 55
        Height = 13
        DataField = 'dtExclusao'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 432
        Top = 0
        Width = 54
        Height = 13
        DataField = 'orcamento'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 512
        Top = 0
        Width = 42
        Height = 13
        DataField = 'dataOrc'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 108
      Height = 25
      object RLLabel1: TRLLabel
        Left = 16
        Top = 7
        Width = 47
        Height = 13
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 66
        Top = 7
        Width = 55
        Height = 13
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 327
        Top = 7
        Width = 60
        Height = 13
        Caption = 'EXCLUS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 431
        Top = 7
        Width = 72
        Height = 13
        Caption = 'OR'#199'AMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 510
        Top = 7
        Width = 90
        Height = 13
        Caption = 'DT OR'#199'AMENTO'
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
        Left = 324
        Align = faNone
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Top = 32
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
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '--tb mensalidade_usuariobck'
      'select '
      #9'a.Codigo_Completo, '
      #9'a.nome, '
      #9'convert(char(10),a.Data_Exclusao,103) dtExclusao,'
      #9'max(o.numero) orcamento,'
      #9'convert(char(10),max(o.Data_Conferencia),103) dataOrc'
      ''
      ' from usuario    a,'
      '      orcamento o'
      #9'  '
      #9'  where Data_Exclusao between'
      '    '#39#39' and '#39#39
      #9'    and a.Codigo_Completo = o.Usuario'
      #9#9'and o.status_pagamento = 3 and o.data_conferencia is not null'
      'group by a.Codigo_Completo, a.nome,a.Data_Exclusao'
      'order by a.codigo_completo'
      '')
    Left = 304
    Top = 184
  end
end
