inherited FmFrRelDentista: TFmFrRelDentista
  Width = 835
  Height = 545
  Caption = 'FmFrRelDentista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'RELAT'#211'RIO DE DENTISTAS'
    inherited RLBandSummaryH: TRLBand
      Top = 116
    end
    inherited RLBandDetailH: TRLBand
      Height = 18
      object RLDBText1: TRLDBText
        Left = 16
        Top = 0
        Width = 36
        Height = 13
        DataField = 'Codigo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 88
        Top = 0
        Width = 30
        Height = 13
        DataField = 'Nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 513
        Top = 0
        Width = 57
        Height = 13
        DataField = 'dt_inclusao'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 589
        Top = 0
        Width = 74
        Height = 13
        DataField = 'Data_Exclusao'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 657
        Top = 0
        Width = 34
        Height = 13
        DataField = 'celular'
        DataSource = DataSourceH
      end
      object RLDBText6: TRLDBText
        Left = 386
        Top = 1
        Width = 85
        Height = 13
        DataField = 'nm_credenciador'
        DataSource = DataSourceH
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel2: TRLLabel
        Left = 13
        Top = 0
        Width = 44
        Height = 13
        Caption = 'CODIGO'
      end
      object RLLabel3: TRLLabel
        Left = 90
        Top = 0
        Width = 46
        Height = 13
      end
      object RLLabel4: TRLLabel
        Left = 513
        Top = 0
        Width = 54
        Height = 13
        Caption = 'INCLUS'#195'O'
      end
      object RLLabel5: TRLLabel
        Left = 586
        Top = 0
        Width = 55
        Height = 13
        Caption = 'EXCLUS'#195'O'
      end
      object RLLabel6: TRLLabel
        Left = 652
        Top = 0
        Width = 47
        Height = 13
        Caption = 'CELULAR'
      end
      object RLLabel7: TRLLabel
        Left = 384
        Top = 2
        Width = 83
        Height = 13
        Caption = 'CREDENCIADOR'
      end
    end
    object RLLabel1: TRLLabel
      Left = 232
      Top = 192
      Width = 3
      Height = 13
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
      
        'set dateformat dmy select c.nm_credenciador,Codigo,Nome,dt_inclu' +
        'sao, Data_Exclusao, Fone1, Fone2,celular from  Dentista d left j' +
        'oin credenciador c on d.cd_credenciador = c.cd_credenciador wher' +
        'e 1 = 1  '
      'd.dt_inclusao between '#39'01/01/2017'#39' and '#39'31/12/2017'#39)
    Left = 304
    Top = 184
  end
end
