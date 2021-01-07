inherited FmFrRelManutencoesPorPeriodo: TFmFrRelManutencoesPorPeriodo
  Caption = 'FmFrRelManutencoesPorPeriodo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Left = 8
    inherited RLBandSummaryH: TRLBand
      Top = 225
      Height = 32
    end
    inherited RLBandDetailH: TRLBand
      Top = 224
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 130
      object RLLabel1: TRLLabel
        Left = 8
        Top = 2
        Width = 212
        Height = 13
        Caption = 'PER'#205'ODO : 01/02/2014 A 28/02/2014'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 91
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
        Align = faNone
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Top = 56
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Top = 72
      end
      inherited RLLabelBarraH: TRLLabel
        Top = 72
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Top = 72
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 146
      Height = 78
      DataFields = 'tipo'
      inherited RLBand1: TRLBand
        Height = 42
        Borders.DrawBottom = True
        object RLDBText2: TRLDBText
          Left = 52
          Top = 5
          Width = 25
          Height = 13
          DataField = 'tipo'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 16
          Top = 8
          Width = 36
          Height = 13
          Caption = 'TIPO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 316
          Top = 25
          Width = 28
          Height = 13
          Caption = 'SERV'
        end
        object RLLabel4: TRLLabel
          Left = 355
          Top = 25
          Width = 47
          Height = 13
          Caption = 'INI TRAT'
        end
        object RLLabel5: TRLLabel
          Left = 420
          Top = 25
          Width = 50
          Height = 13
          Caption = 'FIM TRAT'
        end
        object RLLabel6: TRLLabel
          Left = 484
          Top = 23
          Width = 52
          Height = 13
          Caption = 'DENTISTA'
        end
        object RLLabel7: TRLLabel
          Left = 60
          Top = 26
          Width = 75
          Height = 13
          Caption = 'BENEFICI'#193'RIO'
        end
      end
      inherited RLBand2: TRLBand
        Top = 42
        object RLDBText1: TRLDBText
          Left = 48
          Top = 1
          Width = 38
          Height = 13
          DataField = 'usuario'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 92
          Top = 1
          Width = 210
          Height = 13
          AutoSize = False
          DataField = 'nome'
          DataSource = DataSourceH
        end
        object RLDBText4: TRLDBText
          Left = 316
          Top = 1
          Width = 37
          Height = 13
          Alignment = taRightJustify
          DataField = 'servico'
          DataSource = DataSourceH
        end
        object RLDBText5: TRLDBText
          Left = 357
          Top = 1
          Width = 25
          Height = 13
          DataField = 'dtIni'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 420
          Top = 1
          Width = 29
          Height = 13
          DataField = 'dtFim'
          DataSource = DataSourceH
        end
        object RLDBText7: TRLDBText
          Left = 452
          Top = 1
          Width = 59
          Height = 13
          Alignment = taRightJustify
          DataField = 'cd_dentista'
          DataSource = DataSourceH
        end
        object RLDBText8: TRLDBText
          Left = 516
          Top = 1
          Width = 42
          Height = 13
          DataField = 'dentista'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 58
        Height = 23
        object RLSystemInfo1: TRLSystemInfo
          Left = 5
          Top = 1
          Width = 115
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = itDetailCount
          ParentFont = False
          Text = 'Qtde : '
        end
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
      
        'select '#39'TERMINARAM '#39' tipo ,usuario, u.nome,servico,convert(char(' +
        '10),data_inicial,103) dtIni, convert(char(10),data_final,103) dt' +
        'Fim, dentista cd_dentista, d.nome dentista, vencimento'
      'from'
      #9'manutencao m,'
      #9'usuario u,'
      #9'dentista d'
      ' where m.Usuario = u.Codigo_Completo'
      '   and m.dentista = d.codigo'
      '   and  m.data_final    between'
      '   '#39'01/02/2014'#39' and '#39'28/02/2014'#39
      'union'
      
        'select '#39'INICIARAM '#39' tipo, usuario, u.nome,servico,convert(char(1' +
        '0),data_inicial,103) dtIni, convert(char(10),data_final,103) dtF' +
        'im, dentista cd_dentista, d.nome dentista, vencimento'
      'from'
      #9'manutencao m,'
      #9'usuario u,'
      #9'dentista d'
      ' where m.Usuario = u.Codigo_Completo'
      '   and m.dentista = d.codigo'
      '   and m.data_inicial  between'
      '   '#39'01/02/2014'#39' and '#39'28/02/2014'#39
      '   order by 1,3')
    Left = 432
    Top = 272
  end
end
