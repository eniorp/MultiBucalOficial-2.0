inherited fMFrRelComprovatenEntregaCart: TfMFrRelComprovatenEntregaCart
  Left = -8
  Top = -8
  Width = 1382
  Height = 754
  Caption = 'fMFrRelComprovatenEntregaCart'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandSummaryH: TRLBand
      Top = 281
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Visible = False
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 280
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 106
      Height = 1
    end
    inherited RLBandHeaderH: TRLBand
      Height = 67
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 24
      end
      inherited RLSystemInfoEmtidoH: TRLSystemInfo
        Height = 12
      end
      inherited RLSystemInfoLastPgH: TRLSystemInfo
        Visible = False
      end
      inherited RLLabelBarraH: TRLLabel
        Visible = False
      end
      inherited RLSystemInfoPgH: TRLSystemInfo
        Visible = False
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 107
      Height = 173
      DataFields = 'VENDEDOR'
      PageBreaking = pbBeforePrint
      inherited RLBand1: TRLBand
        Height = 78
        object RLLabel1: TRLLabel
          Left = 16
          Top = 7
          Width = 82
          Height = 13
          Caption = 'VENDEDOR(A):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 24
          Width = 90
          Height = 13
          Caption = 'DATA ENTREGA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 19
          Top = 61
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
        object RLLabel4: TRLLabel
          Left = 86
          Top = 61
          Width = 34
          Height = 13
          Caption = 'NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 342
          Top = 61
          Width = 83
          Height = 13
          Caption = 'CONTRATANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 573
          Top = 63
          Width = 125
          Height = 13
          Caption = 'GRUPO CONTRATANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 104
          Top = 8
          Width = 57
          Height = 13
          DataField = 'VENDEDOR'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 105
          Top = 25
          Width = 52
          Height = 13
          DataField = 'GERACAO'
          DataSource = DataSourceH
        end
        object RLPanel2: TRLPanel
          Left = 4
          Top = 50
          Width = 712
          Height = 6
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
      inherited RLBand2: TRLBand
        Top = 78
        object RLDBText1: TRLDBText
          Left = -35
          Top = 1
          Width = 104
          Height = 13
          Alignment = taRightJustify
          DataField = 'CODIGO_COMPLETO'
          DataSource = DataSourceH
        end
        object RLDBText2: TRLDBText
          Left = 86
          Top = 1
          Width = 252
          Height = 13
          AutoSize = False
          DataField = 'NOME'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 341
          Top = 1
          Width = 228
          Height = 13
          AutoSize = False
          DataField = 'CONTRATANTE'
          DataSource = DataSourceH
        end
        object RLDBText4: TRLDBText
          Left = 574
          Top = 1
          Width = 142
          Height = 13
          AutoSize = False
          DataField = 'GRUPO_CONTRATANTE'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 94
        Height = 71
        BandType = btFooter
        GroupIndex = 1
        BeforePrint = RLBand3BeforePrint
        object RLLabel7: TRLLabel
          Left = 163
          Top = 7
          Width = 87
          Height = 13
          Caption = 'RECEBIDO POR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 170
          Top = 29
          Width = 79
          Height = 13
          Caption = 'ASSINATURA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 6
          Top = 52
          Width = 243
          Height = 13
          Caption = 'CARTEIRINHAS EMITIDAS PELO OPERADOR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel1: TRLPanel
          Left = 257
          Top = 40
          Width = 366
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLLabel10: TRLLabel
          Left = 258
          Top = 7
          Width = 82
          Height = 13
          Caption = 'RECEBIDO POR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 258
          Top = 52
          Width = 82
          Height = 13
          Caption = 'RECEBIDO POR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
      'SELECT EC.cd_emissao,'
      '    U.CODIGO_COMPLETO,'
      #9'U.NOME,'
      #9'C.NOME CONTRATANTE,'
      #9'CONVERT(CHAR(10),U.DATA_NASCIMENTO,103) NASCIMENTO,'
      #9'CONVERT(CHAR(10),ec.dt_geracao,103) GERACAO,'
      #9'V.NOME AS VENDEDOR,'
      #9'G1.Descricao AS GRUPO_CONTRATANTE,'
      '  EC.cd_operador,'
      '  EC.nm_recepcao'
      #9
      #9
      #9
      #9
      ' FROM '
      ' emissao_carteirinha ec'
      'inner join ITENS_EMISSAO_CARTEIRINHA E '
      'on e.cd_emissao = ec.cd_emissao'
      ''
      'inner join USUARIO U '
      'on e.cd_usuario = u.codigo_completo   '
      ''
      'inner join v_contratante C '
      
        'on U.CONTRATANTE_TITULAR = C.CODIGO inner join contratante c1 on' +
        ' u.codigo = c1.codigo'
      ''
      'left join Vendedor v '
      'on  v.Codigo = c.Vendedor'
      ''
      'left join GRUPO_CONTRATANTE G'
      
        'on G.Codigo = C.Grupo_Contratante left join Grupo_Contratante g1' +
        ' on g1.Codigo = c1.grupo_contratante'
      ''
      'where eC.cd_emissao = '
      '17'
      ''
      '       '
      'ORDER BY V.Nome, C.Codigo,U.Codigo_Completo'
      ''
      ''
      
        '--select a.*, b.nome from itens_emissao_carteirinha a, usuario b' +
        ' where b.codigo_completo = a.cd_usuario and cd_emissao ='
      '--0'
      ''
      '')
    Left = 536
    Top = 292
  end
end
