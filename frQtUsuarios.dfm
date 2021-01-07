inherited FmFrQtUsuarios: TFmFrQtUsuarios
  Width = 947
  Height = 526
  Caption = 'FmFrQtUsuarios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    inherited RLBandDetailH: TRLBand [0]
      Top = 114
      Height = 17
      object RLDBText1: TRLDBText
        Left = 148
        Top = 1
        Width = 47
        Height = 13
        DataField = 'tpPessoa'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 238
        Top = 1
        Width = 19
        Height = 13
        DataField = 'qtd'
        DataSource = DataSourceH
      end
    end
    inherited RLBandSummaryH: TRLBand [1]
      Top = 131
    end
    inherited RLBandColumnHeaderH: TRLBand
      Top = 98
      object RLLabel1: TRLLabel
        Left = 130
        Top = 0
        Width = 85
        Height = 13
        Caption = 'TIPO DE PESSOA'
      end
      object RLLabel2: TRLLabel
        Left = 234
        Top = 2
        Width = 30
        Height = 13
        Caption = 'QTDE'
      end
    end
    inherited RLBandHeaderH: TRLBand
      Height = 59
      inherited RLSystemInfoTitH: TRLSystemInfo
        Top = 20
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQuery1
    Left = 213
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SET DATEFORMAT DMY select case empresa when 0 then '#39'Fisica'#39' else' +
        ' '#39'Jur'#237'dica'#39' end tpPessoa, count(*)qtd from usuario u,contratante' +
        ' c'
      'where u.contratante_titular = c.codigo and data_inclusao <='
      #39'31/12/2016'#39
      'and (data_exclusao >'
      #39'01/01/2017'#39
      'or data_exclusao is null) group by empresa')
    Left = 312
    Top = 200
  end
end
