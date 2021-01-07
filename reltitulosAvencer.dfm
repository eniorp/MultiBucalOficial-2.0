inherited FmFrTitulosAVencer: TFmFrTitulosAVencer
  Width = 1029
  Height = 599
  Caption = 'FmFrTitulosAVencer'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandDetailH: TRLBand
      object RLDBText1: TRLDBText
        Left = 12
        Top = 0
        Width = 36
        Height = 13
        Alignment = taRightJustify
        DataField = 'Codigo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 58
        Top = 3
        Width = 167
        Height = 13
        AutoSize = False
        DataField = 'contratante'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 239
        Top = 3
        Width = 72
        Height = 13
        DataField = 'Numero_Titulo'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 306
        Top = 3
        Width = 87
        Height = 13
        DataField = 'Data_Vencimento'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 342
        Top = 3
        Width = 80
        Height = 13
        Alignment = taCenter
        DataField = 'Desdobramento'
        DataSource = DataSourceH
      end
      object RLDBText8: TRLDBText
        Left = 466
        Top = 3
        Width = 33
        Height = 13
        DataField = 'Fone1'
        DataSource = DataSourceH
      end
      object RLDBText10: TRLDBText
        Left = 544
        Top = 3
        Width = 33
        Height = 13
        DataField = 'Fone2'
        DataSource = DataSourceH
      end
      object RLDBText7: TRLDBText
        Left = 420
        Top = 0
        Width = 35
        Height = 13
        Alignment = taRightJustify
        DataFormula = 'valor'
        DataSource = DataSourceH
        DisplayMask = '###,###,###,##0.00'
      end
      object RLDBText6: TRLDBText
        Left = 676
        Top = 3
        Width = 34
        Height = 13
        Alignment = taRightJustify
        DataField = 'celular'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 44
        Height = 13
        Caption = 'CODIGO'
      end
      object RLLabel2: TRLLabel
        Left = 56
        Top = 2
        Width = 77
        Height = 13
        Caption = 'CONTRATANTE'
      end
      object RLLabel3: TRLLabel
        Left = 237
        Top = 2
        Width = 39
        Height = 13
        Caption = 'TITULO'
      end
      object RLLabel4: TRLLabel
        Left = 305
        Top = 2
        Width = 43
        Height = 13
        Caption = 'VENCTO'
      end
      object RLLabel5: TRLLabel
        Left = 370
        Top = 2
        Width = 27
        Height = 13
        Caption = 'TIPO'
      end
      object RLLabel6: TRLLabel
        Left = 421
        Top = 2
        Width = 36
        Height = 13
        Caption = 'VALOR'
      end
      object RLLabel8: TRLLabel
        Left = 462
        Top = 2
        Width = 39
        Height = 13
        Caption = 'FONE 1'
      end
      object RLLabel9: TRLLabel
        Left = 542
        Top = 2
        Width = 39
        Height = 13
        Caption = 'FONE 2'
      end
      object RLLabel10: TRLLabel
        Left = 665
        Top = 2
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'CELULAR'
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
      'set dateformat dmy '
      'select '
      '    '
      '    c.Codigo,'
      #9'c.Nome as contratante,  '
      #9'r.Numero_Titulo,'
      #9'r.Data_Vencimento,'
      #9'r.Desdobramento,'
      #9'td.Descricao as tpdocumento,'
      #9'r.Data_Emissao,'
      #9'r.Valor,'
      #9'r.Saldo,'
      #9'r.Parcela,'
      #9'c.Fone1,'
      #9'c.Fone2,'
      #9'c.email,'
      
        #9'isnull(CAST(cel.ddd AS VARCHAR(2)),'#39#39') + '#39'-'#39' + CAST(cel.celular' +
        ' AS VARCHAR(11)) as celular'
      ''
      'from receber r '
      'inner join contratante c on c.Codigo = r.Codigo_Contratante'
      '                       and (c.Exclusao is null )'
      'left join TipoDocumento td on td.Codigo = r.Tipo_Documento'
      'left join celulares cel on cel.codigo = c.Codigo'
      '                            '
      ''
      'where '
      ''
      'r.Data_Vencimento between'
      #39'25/12/2020'#39' and '#39'31/12/2020'#39
      'and  (saldo > 0 or r.Data_Pagamento is null)')
    Left = 304
    Top = 184
  end
end
