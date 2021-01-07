inherited FmFrRelGlosas: TFmFrRelGlosas
  Left = 801
  Top = 225
  Width = 901
  Height = 516
  Caption = 'FmFrRelGlosas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'RELAT'#211'RIO DE GLOSAS POR PER'#205'ODO'
    inherited RLBandSummaryH: TRLBand
      Top = 137
      object RLDBResult1: TRLDBResult
        Left = 363
        Top = 0
        Width = 159
        Height = 13
        Alignment = taRightJustify
        DataField = 'valor_dentista'
        DataSource = DataSourceH
        DisplayMask = 'R$0.00'
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
      Top = 120
      object RLDBText1: TRLDBText
        Left = -22
        Top = 0
        Width = 71
        Height = 13
        Alignment = taRightJustify
        DataField = 'cd_orcamento'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 50
        Top = 0
        Width = 127
        Height = 13
        AutoSize = False
        DataField = 'dentista'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 184
        Top = 0
        Width = 137
        Height = 13
        AutoSize = False
        DataField = 'usuairo'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 323
        Top = 0
        Width = 124
        Height = 13
        AutoSize = False
        DataField = 'dsServico'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 528
        Top = 1
        Width = 141
        Height = 13
        AutoSize = False
        DataField = 'ds_glosa'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 681
        Top = 2
        Width = 34
        Height = 11
        Alignment = taRightJustify
        DataField = 'dtGlosa'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 451
        Top = 0
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor_dentista'
        DataSource = DataSourceH
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 104
      object RLLabel1: TRLLabel
        Left = 5
        Top = 3
        Width = 24
        Height = 13
        Caption = 'Or'#231'.'
      end
      object RLLabel2: TRLLabel
        Left = 49
        Top = 0
        Width = 52
        Height = 13
        Caption = 'DENTISTA'
      end
      object RLLabel3: TRLLabel
        Left = 185
        Top = 0
        Width = 49
        Height = 13
        Caption = 'USU'#193'RIO'
      end
      object RLLabel4: TRLLabel
        Left = 322
        Top = 0
        Width = 47
        Height = 13
        Caption = 'SERVI'#199'O'
      end
      object RLLabel5: TRLLabel
        Left = 529
        Top = 0
        Width = 36
        Height = 13
        Caption = 'GLOSA'
      end
      object RLLabel6: TRLLabel
        Left = 683
        Top = 0
        Width = 30
        Height = 13
        Caption = 'DATA'
      end
      object RLLabel8: TRLLabel
        Left = 450
        Top = 1
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 65
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 324
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
    object RLBand1: TRLBand
      Left = 38
      Top = 136
      Width = 718
      Height = 1
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
      'SET DATEFORMAT DMY'
      'select a.cd_orcamento, a.incremento,'
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
    object ADOQueryGlosavalor_dentista: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_dentista'
      DisplayFormat = 'R$0.00'
      Calculated = True
    end
    object ADOQueryGlosaincremento: TIntegerField
      FieldName = 'incremento'
    end
  end
end
