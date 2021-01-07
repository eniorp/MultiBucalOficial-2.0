inherited FmfrRelPagDentistaPorPeriodoDentista: TFmfrRelPagDentistaPorPeriodoDentista
  Left = 450
  Top = 167
  Caption = 'FmfrRelPagDentistaPorPeriodoDentista'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 287
      Height = 39
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Top = 17
      end
      object RLDBResult1: TRLDBResult
        Left = 253
        Top = 16
        Width = 159
        Height = 13
        Alignment = taRightJustify
        DataField = 'valor_dentista'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total: '
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 217
      Height = 70
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 131
    end
    inherited RLBandHeaderH: TRLBand
      Height = 92
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
        Top = 32
        Align = faNone
      end
      object RLLabel6: TRLLabel
        Left = 11
        Top = 72
        Width = 78
        Height = 13
        Caption = 'OR'#199'AMENTO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = 13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 147
      DataFields = 'cd_orcamento'
      inherited RLBand1: TRLBand
        Height = 49
        Borders.DrawBottom = True
        object RLDBText1: TRLDBText
          Left = 570
          Top = 4
          Width = 61
          Height = 13
          AutoSize = False
          DataField = 'cd_orcamento'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 330
          Top = 4
          Width = 204
          Height = 13
          AutoSize = False
          DataField = 'usuairo'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 537
          Top = 4
          Width = 32
          Height = 13
          Caption = 'OR'#199'.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 267
          Top = 4
          Width = 61
          Height = 13
          Caption = 'USU'#193'RIO: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 3
          Top = 36
          Width = 45
          Height = 11
          Caption = 'C'#211'DIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 54
          Top = 36
          Width = 64
          Height = 11
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 456
          Top = 35
          Width = 88
          Height = 11
          Caption = 'MOTIVO G LOSA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 277
          Top = 36
          Width = 44
          Height = 11
          Caption = 'REGI'#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 414
          Top = 35
          Width = 41
          Height = 11
          Caption = 'CD GLO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 370
          Top = 35
          Width = 39
          Height = 11
          Caption = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 635
          Top = 5
          Width = 29
          Height = 13
          Caption = 'M'#202'S:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 667
          Top = 5
          Width = 48
          Height = 13
          DataField = 'mesano'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 4
          Top = 4
          Width = 61
          Height = 13
          Caption = 'DENTISTA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 67
          Top = 4
          Width = 194
          Height = 13
          AutoSize = False
          DataField = 'dentista'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 11
          Top = 18
          Width = 59
          Height = 13
          Caption = 'Nivel Glosa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 73
          Top = 18
          Width = 640
          Height = 13
          AutoSize = False
          DataField = 'Nivel_Glosa'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLDBText11BeforePrint
        end
      end
      inherited RLBand2: TRLBand
        Top = 49
        Height = 17
        object RLDBText4: TRLDBText
          Left = 56
          Top = 2
          Width = 217
          Height = 13
          AutoSize = False
          DataField = 'dsServico'
          DataSource = DataSourceH
        end
        object RLDBText5: TRLDBText
          Left = 457
          Top = 3
          Width = 256
          Height = 11
          AutoSize = False
          DataField = 'ds_glosa'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 9
          Top = 1
          Width = 38
          Height = 13
          Alignment = taRightJustify
          DataField = 'Servico'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 275
          Top = 4
          Width = 54
          Height = 13
          Alignment = taRightJustify
          DataField = 'denteFace'
          DataSource = DataSourceH
        end
        object RLDBText7: TRLDBText
          Left = 413
          Top = 4
          Width = 38
          Height = 11
          Alignment = taRightJustify
          DataField = 'cd_glosa'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 325
          Top = 4
          Width = 86
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor_dentista'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      inherited RLBand3: TRLBand
        Top = 66
        Height = 13
        AutoExpand = False
        object RLDBResult2: TRLDBResult
          Left = 306
          Top = 0
          Width = 103
          Height = 13
          Alignment = taRightJustify
          DataField = 'valor_dentista'
          DataSource = DataSourceH
          Info = riSum
        end
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQueryGlosa
  end
  object ADOQueryGlosa: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnCalcFields = ADOQueryGlosaCalcFields
    Parameters = <>
    SQL.Strings = (
      'select a.cd_orcamento, a.incremento, a.mesano,'
      '       d.codigo as cdDentista, d.Nivel_Glosa,'
      '       d.Nome as dentista,'
      '       u.Codigo_Completo,'
      #9'   u.Nome as usuairo,'
      #9'   b.Servico,'
      #9'   f.Descricao as dsServico,'
      #9'   e.cd_glosa,e.ds_glosa,'
      '       convert(char(10),a.data,103) dtGlosa,'
      #9'   a.nmOperador,b.denteFace'
      ''
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
      '  and a.mesAno in'
      '  ('#39'06/2015'#39')'
      '  and d.codigo ='
      '  1078'
      ''
      '  and d.nivel_glosa='#39'VERDE'#39
      'Order by'
      '  d.nome,a.mesano,a.cd_orcamento,a.cd_glosa')
    Left = 241
    Top = 249
    object ADOQueryGlosacd_orcamento: TIntegerField
      FieldName = 'cd_orcamento'
    end
    object ADOQueryGlosacdDentista: TIntegerField
      FieldName = 'cdDentista'
    end
    object ADOQueryGlosadentista: TStringField
      FieldName = 'dentista'
      Size = 40
    end
    object ADOQueryGlosaCodigo_Completo: TIntegerField
      FieldName = 'Codigo_Completo'
    end
    object ADOQueryGlosausuairo: TStringField
      FieldName = 'usuairo'
      Size = 70
    end
    object ADOQueryGlosaServico: TIntegerField
      FieldName = 'Servico'
    end
    object ADOQueryGlosadsServico: TStringField
      FieldName = 'dsServico'
      FixedChar = True
      Size = 40
    end
    object ADOQueryGlosacd_glosa: TSmallintField
      FieldName = 'cd_glosa'
    end
    object ADOQueryGlosads_glosa: TStringField
      FieldName = 'ds_glosa'
      Size = 200
    end
    object ADOQueryGlosadtGlosa: TStringField
      FieldName = 'dtGlosa'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object ADOQueryGlosanmOperador: TStringField
      FieldName = 'nmOperador'
    end
    object ADOQueryGlosadenteFace: TStringField
      FieldName = 'denteFace'
      Size = 7
    end
    object ADOQueryGlosavalor_dentista: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_dentista'
      Calculated = True
    end
    object ADOQueryGlosaincremento: TIntegerField
      FieldName = 'incremento'
    end
    object ADOQueryGlosamesano: TStringField
      FieldName = 'mesano'
      Size = 7
    end
    object ADOQueryGlosaNivel_Glosa: TStringField
      FieldName = 'Nivel_Glosa'
      Size = 12
    end
  end
end
