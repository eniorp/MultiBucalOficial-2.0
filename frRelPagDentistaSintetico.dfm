inherited FmfrRelPagDentistaSintetico: TFmfrRelPagDentistaSintetico
  Left = 226
  Top = 285
  Caption = 'FmfrRelPagDentistaSintetico'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    ShowProgress = False
    BeforePrint = RLReportHBeforePrint
    inherited RLBandSummaryH: TRLBand
      Top = 309
    end
    inherited RLBandDetailH: TRLBand
      Top = 308
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 116
      object RLLabel1: TRLLabel
        Left = 128
        Top = 2
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'OR'#199'AMENTO'
      end
      object RLLabel2: TRLLabel
        Left = 557
        Top = 2
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'QTDE'
      end
      object RLLabel4: TRLLabel
        Left = 657
        Top = 2
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'VR TOTAL'
      end
      object RLLabel5: TRLLabel
        Left = 199
        Top = 2
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'BENEFICI'#193'RIO'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 77
      inherited RLSystemInfoTitH: TRLSystemInfo
        Left = 309
        Top = 11
        Align = faNone
      end
      object QRLabelEmpresa: TRLLabel
        Left = 16
        Top = 56
        Width = 84
        Height = 13
      end
      object RLLabelPeriodo: TRLLabel
        Left = 304
        Top = 56
        Width = 99
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLGroup1: TRLGroup
      Top = 132
      Height = 176
      DataFields = 'cdDentista'
      PageBreaking = pbAfterPrint
      inherited RLBand1: TRLBand
        object RLDBText2: TRLDBText
          Left = 424
          Top = 2
          Width = 61
          Height = 14
          DataField = 'NmClinica'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 373
          Top = 2
          Width = 45
          Height = 14
          Alignment = taRightJustify
          DataField = 'codigo'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 60
          Top = 2
          Width = 98
          Height = 14
          DataField = 'Nome_Dentista'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = -16
          Top = 2
          Width = 70
          Height = 14
          Alignment = taRightJustify
          DataField = 'cdDentista'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      inherited RLBand2: TRLBand
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 200
          Top = 0
          Width = 72
          Height = 13
          DataField = 'Nome_Usuario'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 142
          Top = 0
          Width = 54
          Height = 13
          Alignment = taRightJustify
          DataField = 'orcamento'
          DataSource = DataSourceH
        end
        object RLDBText7: TRLDBText
          Left = 531
          Top = -1
          Width = 57
          Height = 13
          Alignment = taRightJustify
          DataField = 'quantidade'
          DataSource = DataSourceH
        end
        object RLDBText8: TRLDBText
          Left = 674
          Top = 0
          Width = 35
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor'
          DataSource = DataSourceH
          DisplayMask = '###,###,##0.00'
        end
      end
      inherited RLBand3: TRLBand
        Height = 133
        BandType = btFooter
        BeforePrint = RLBand3BeforePrint
        object RLDBResult1: TRLDBResult
          Left = 347
          Top = 6
          Width = 240
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'quantidade'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'Itens desse dentista : '
        end
        object RLDBResult2: TRLDBResult
          Left = 610
          Top = 28
          Width = 98
          Height = 13
          Alignment = taRightJustify
          DataFormula = 'valor'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'R$ '
        end
        object QRLabelTrib: TRLLabel
          Left = 557
          Top = 70
          Width = 57
          Height = 13
          Caption = 'INSS(11%)'
        end
        object QRLabelImposto: TRLLabel
          Left = 648
          Top = 71
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'INSS(11%)'
        end
        object RLDraw1: TRLDraw
          Left = 544
          Top = 88
          Width = 167
          Height = 1
        end
        object QRLabelData: TRLLabel
          Left = 39
          Top = 112
          Width = 66
          Height = 13
        end
        object QRLabelDadosDep: TRLLabel
          Left = 606
          Top = 112
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object QRLabel9: TRLLabel
          Left = 557
          Top = 46
          Width = 57
          Height = 13
          Caption = 'INSS(11%)'
        end
        object QRLabelIR: TRLLabel
          Left = 648
          Top = 47
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'INSS(11%)'
        end
        object QRLabelVrTotLiq: TRLLabel
          Left = 648
          Top = 94
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'INSS(11%)'
        end
        object QRLabelAcordo: TRLLabel
          Left = 42
          Top = 48
          Width = 77
          Height = 13
        end
        object RLDraw2: TRLDraw
          Left = 37
          Top = 84
          Width = 358
          Height = 1
        end
        object RLDBResult3: TRLDBResult
          Left = 40
          Top = 88
          Width = 141
          Height = 13
          DataField = 'Nome_Dentista'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
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
      'select '#9
      #9'banco, '
      #9'agencia, '
      #9'contaCorrente, '
      #9'digitoCC, '
      #9'lg_recebimento_deposito, '
      #9'clinicas.codigo,'
      #9'clinicas.descricao as NmClinica,'
      #9'rtrim(ltrim(clinicas.TipoPessoa)) TipoPessoa, '
      #9'dentista.codigo   as cdDentista,'
      #9'Dentista.Nome as Nome_Dentista, '
      #9
      #9'Usuario.Nome as Nome_Usuario, '
      #9'Orcamento.Numero, '
      #9'Orcamento.Usuario, '
      #9'Orcamento.Data, '
      #9'Orcamento.Dentista,  '
      #9'sum(quantidade) as quantidade,'
      #9'isnull(Dentista.Desconto,0) as Desconto,  '
      #9'sum(valor)  vrBruto,'
      
        'sum(valor) - (sum(valor) * (isnull(dentista.Desconto,0) / 100.0)' +
        ') as valor,'
      #9' orcamento '
      #9' from Itens_PagDentista'
      
        'left join Orcamento on (Itens_PagDentista.Orcamento = Orcamento.' +
        'Numero)'
      
        'left join Usuario on (Orcamento.Usuario = Usuario.Codigo_Complet' +
        'o)'
      'left join Dentista on (Orcamento.Dentista = Dentista.Codigo)'
      
        'left join clinicas on (dentista.codigo_clinica = clinicas.codigo' +
        ')'
      'where Itens_PagDentista.MesAno ='
      #39'05/2015'#39
      '--and Dentista.Desconto > 0'
      '--and Dentista.Codigo_Clinica in(48,46,29)'
      ''
      'group by'
      #9'clinicas.codigo,'
      #9'clinicas.descricao,'
      #9'clinicas.TipoPessoa,'
      #9'Dentista.Nome ,'
      #9'Dentista.Desconto,'
      #9'Usuario.Nome,'
      #9'Orcamento.Numero,'
      #9'Orcamento.Usuario,'
      #9'Orcamento.Data,'
      #9'Orcamento.Dentista,'
      '    orcamento, '
      #9'banco, '
      #9'agencia, '
      #9'contaCorrente, '
      #9'digitoCC, '
      #9'lg_recebimento_deposito,'
      '   dentista.codigo'
      ''
      'order by'
      '  dentista.nome, '
      #9'Orcamento.Dentista, '
      #9'Orcamento.Usuario, '
      #9'Orcamento.Numero'
      '')
    Left = 176
    Top = 264
  end
  object QueryParam: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select vrBaseCobr_tributos, VrBaseCobr_ir, Percent_ir, Percent_t' +
        'ributos,Percent_inss from preferencia')
    Left = 176
    Top = 336
  end
  object QueryVrTotalClinica: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'sum(valor) '#9#9'as Valor '
      ''
      'from Itens_PagDentista'
      ''
      'left join Orcamento '
      'on (Itens_PagDentista.Orcamento = Orcamento.Numero)'
      'left join Dentista '
      'on (Orcamento.Dentista = Dentista.Codigo)'
      'left join Clinicas '
      'on (Dentista.Codigo_Clinica = ClinicaS.Codigo)'
      ''
      'where '
      #9'   Itens_PagDentista.MesAno = '
      #39#39
      '       and Clinicas.Codigo ='
      '0'
      '')
    Left = 304
    Top = 336
  end
end
