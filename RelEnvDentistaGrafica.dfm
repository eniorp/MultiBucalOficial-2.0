inherited FmFrEnvDentistaGrafica: TFmFrEnvDentistaGrafica
  Caption = 'FmFrEnvDentistaGrafica'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Font.Height = -9
    ShowProgress = False
    inherited RLBandSummaryH: TRLBand
      Top = 227
      Height = 25
      inherited RLSystemInfoQtRegH: TRLSystemInfo
        Visible = False
      end
    end
    inherited RLBandDetailH: TRLBand
      Top = 226
    end
    inherited RLGroup1: TRLGroup
      Height = 108
      DataFields = 'CODIGO;LOGRADOURO'
      inherited RLBand1: TRLBand
        Height = 74
        object RLLabel1: TRLLabel
          Left = 30
          Top = 18
          Width = 36
          Height = 11
          Caption = 'NOME:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 6
          Top = 30
          Width = 60
          Height = 11
          Caption = 'ENDERE'#199'O:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 20
          Top = 43
          Width = 46
          Height = 11
          Caption = 'CIDADE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 421
          Top = 18
          Width = 48
          Height = 11
          Caption = 'BAIRRO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 443
          Top = 29
          Width = 26
          Height = 11
          Caption = 'CEP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 411
          Top = 41
          Width = 58
          Height = 11
          Caption = 'TELEFONE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 149
          Top = 60
          Width = 96
          Height = 11
          Caption = 'ESPECIALIDADES:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 72
          Top = 18
          Width = 32
          Height = 11
          DataField = 'NOME'
          DataSource = DataSourceH
        end
        object RLDBText2: TRLDBText
          Left = 72
          Top = 30
          Width = 71
          Height = 11
          DataField = 'LOGRADOURO'
          DataSource = DataSourceH
        end
        object RLDBText3: TRLDBText
          Left = 72
          Top = 43
          Width = 59
          Height = 11
          DataField = 'DS_CIDADE'
          DataSource = DataSourceH
        end
        object RLDBText4: TRLDBText
          Left = 472
          Top = 18
          Width = 58
          Height = 11
          DataField = 'DS_BAIRRO'
          DataSource = DataSourceH
        end
        object RLDBText5: TRLDBText
          Left = 472
          Top = 29
          Width = 22
          Height = 11
          DataField = 'CEP'
          DataSource = DataSourceH
        end
        object RLDBText6: TRLDBText
          Left = 472
          Top = 41
          Width = 35
          Height = 11
          DataField = 'FONE1'
          DataSource = DataSourceH
        end
        object RLLabel8: TRLLabel
          Left = 14
          Top = 4
          Width = 54
          Height = 11
          Caption = 'CL'#205'NICA :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 73
          Top = 4
          Width = 61
          Height = 11
          DataField = 'DS_CLINICA'
          DataSource = DataSourceH
        end
        object RLDBText9: TRLDBText
          Left = 668
          Top = 4
          Width = 30
          Height = 13
          Alignment = taRightJustify
          DataField = 'TIPO'
          DataSource = DataSourceH
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      inherited RLBand2: TRLBand
        Top = 74
        Height = 14
        object RLDBText7: TRLDBText
          Left = 247
          Top = 2
          Width = 98
          Height = 11
          DataField = 'DS_ESPECIALIDADE'
          DataSource = DataSourceH
        end
      end
      inherited RLBand3: TRLBand
        Top = 88
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = SP_ENVIO_DENTISTA_GRAFICA
  end
  object SP_ENVIO_DENTISTA_GRAFICA: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'SP_ENVIO_DENTISTA_GRAFICA'
    Parameters = <>
    Left = 344
    Top = 8
  end
end
