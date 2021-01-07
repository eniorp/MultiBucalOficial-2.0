object FmFrRelRecursoGlosa: TFmFrRelRecursoGlosa
  Left = 596
  Top = 178
  Width = 838
  Height = 466
  Caption = 'FmFrRelRecursoGlosa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportH: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DS_RecursoGlosa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 0
        Top = 40
        Width = 201
        Height = 14
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 330
        Top = 18
        Width = 57
        Height = 22
        Align = faCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itTitle
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 137
        Height = 11
        Caption = 'Multi-Bucal Odontologia Ltda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 624
        Top = 0
        Width = 89
        Height = 11
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itNow
        ParentFont = False
        Text = 'EMITIDO EM: '
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 672
        Top = 40
        Width = 38
        Height = 11
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 554
        Top = 40
        Width = 106
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g.: '
      end
      object RLLabel9: TRLLabel
        Left = 664
        Top = 40
        Width = 6
        Height = 11
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 28
        Height = 14
        Caption = 'OR'#199'.'
      end
      object RLLabel3: TRLLabel
        Left = 64
        Top = 0
        Width = 52
        Height = 14
        Caption = 'DENTISTA'
      end
      object RLLabel4: TRLLabel
        Left = 240
        Top = 0
        Width = 49
        Height = 14
        Caption = 'USU'#193'RIO'
      end
      object RLLabel5: TRLLabel
        Left = 384
        Top = 0
        Width = 48
        Height = 14
        Caption = 'SERVI'#199'O'
      end
      object RLLabel6: TRLLabel
        Left = 578
        Top = 0
        Width = 40
        Height = 14
        Caption = 'VALOR'
      end
      object RLLabel8: TRLLabel
        Left = 648
        Top = 0
        Width = 24
        Height = 14
        Caption = 'M'#202'S'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 54
        Height = 14
        AutoSize = False
        DataField = 'orcamento'
        DataSource = DS_RecursoGlosa
      end
      object RLDBText2: TRLDBText
        Left = 64
        Top = 0
        Width = 169
        Height = 14
        AutoSize = False
        DataField = 'dentista'
        DataSource = DS_RecursoGlosa
      end
      object RLDBText3: TRLDBText
        Left = 240
        Top = 0
        Width = 137
        Height = 14
        AutoSize = False
        DataField = 'nome'
        DataSource = DS_RecursoGlosa
      end
      object RLDBText4: TRLDBText
        Left = 384
        Top = 0
        Width = 161
        Height = 14
        AutoSize = False
        DataField = 'dsServico'
        DataSource = DS_RecursoGlosa
      end
      object RLDBText5: TRLDBText
        Left = 552
        Top = 0
        Width = 67
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor'
        DataSource = DS_RecursoGlosa
      end
      object RLDBText6: TRLDBText
        Left = 648
        Top = 0
        Width = 41
        Height = 14
        DataField = 'mesano'
        DataSource = DS_RecursoGlosa
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 16
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 183
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'Qtde. de Registros: '
      end
      object RLDBResult1: TRLDBResult
        Left = 520
        Top = 0
        Width = 99
        Height = 14
        Alignment = taRightJustify
        DataField = 'valor'
        DataSource = DS_RecursoGlosa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total: '
      end
    end
  end
  object QueryRecursoGlosa: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  i.orcamento, d.nome dentista, u.nome,'
      '  s.descricao as dsServico ,  valor, mesano '
      'from '
      
        '  servicos s, itens_pagDentista i, orcamento o, dentista d, usua' +
        'rio u '
      'where '
      '  s.codigo = i.servico and i.orcamento = o.numero '
      '   and o.usuario = u.codigo_completo and d.codigo = o.dentista '
      ''
      'and recurso =1 '
      'and mesano in '
      '('#39'10/2020'#39')'
      ''
      'order by d.nome, i.orcamento, i.servico')
    Left = 80
    Top = 33
    object QueryRecursoGlosaorcamento: TIntegerField
      FieldName = 'orcamento'
    end
    object QueryRecursoGlosadentista: TStringField
      FieldName = 'dentista'
      Size = 40
    end
    object QueryRecursoGlosanome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object QueryRecursoGlosadsServico: TStringField
      FieldName = 'dsServico'
      FixedChar = True
      Size = 40
    end
    object QueryRecursoGlosavalor: TBCDField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
      Precision = 19
    end
    object QueryRecursoGlosamesano: TStringField
      FieldName = 'mesano'
      Size = 7
    end
  end
  object DS_RecursoGlosa: TDataSource
    DataSet = QueryRecursoGlosa
    Left = 160
    Top = 49
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 232
    Top = 40
  end
end
