inherited FmFrRelDentistaCidade: TFmFrRelDentistaCidade
  Width = 853
  Height = 558
  Caption = 'FmFrRelDentistaCidade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportH: TRLReport
    Title = 'DENTISTA X CIDADE'
    inherited RLBandSummaryH: TRLBand
      Top = 160
    end
    inherited RLBandDetailH: TRLBand
      Height = 62
      Borders.Sides = sdCustom
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      BeforePrint = RLBandDetailHBeforePrint
      object RLDBText1: TRLDBText
        Left = 8
        Top = 0
        Width = 36
        Height = 13
        DataField = 'Codigo'
        DataSource = DataSourceH
      end
      object RLDBText2: TRLDBText
        Left = 72
        Top = 0
        Width = 30
        Height = 13
        DataField = 'Nome'
        DataSource = DataSourceH
      end
      object RLDBText3: TRLDBText
        Left = 328
        Top = 0
        Width = 51
        Height = 13
        DataField = 'ds_cidade'
        DataSource = DataSourceH
      end
      object RLDBText4: TRLDBText
        Left = 536
        Top = 0
        Width = 57
        Height = 13
        DataField = 'dt_inclusao'
        DataSource = DataSourceH
      end
      object RLDBText5: TRLDBText
        Left = 656
        Top = 0
        Width = 74
        Height = 13
        DataField = 'exibirNominata'
        DataSource = DataSourceH
      end
      object RLLabel6: TRLLabel
        Left = 79
        Top = 24
        Width = 100
        Height = 13
        Caption = 'ESPECIALIDADES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 20
        Width = 716
        Height = 0
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clMaroon
      end
      object RLLabel7: TRLLabel
        Left = 188
        Top = 24
        Width = 36
        Height = 13
        Caption = 'C'#243'digo'
      end
    end
    inherited RLBandColumnHeaderH: TRLBand
      object RLLabel1: TRLLabel
        Left = 8
        Top = 0
        Width = 36
        Height = 13
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 67
        Top = 1
        Width = 30
        Height = 13
        Caption = 'Nome'
      end
      object RLLabel3: TRLLabel
        Left = 328
        Top = 0
        Width = 36
        Height = 13
        Caption = 'Cidade'
      end
      object RLLabel4: TRLLabel
        Left = 539
        Top = 0
        Width = 43
        Height = 13
        Caption = 'Inclus'#227'o'
      end
      object RLLabel5: TRLLabel
        Left = 632
        Top = 0
        Width = 77
        Height = 13
        Caption = 'Exibir Nominata'
      end
    end
  end
  inherited DataSourceH: TDataSource
    DataSet = ADOQueryH
  end
  object ADOQueryH: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select d.codigo cd_dentista,c.cd_cidade, case when c.ds_cidade i' +
        's null then '#39'NAO POSSUI CIDADE'#39' else c.ds_cidade end ds_cidade ,' +
        ' d.Codigo,d.Nome, d.dt_inclusao, case when exibir = 1 then '#39'S'#39' e' +
        'lse '#39'N'#39' end exibirNominata'
      'from dentista d'
      
        'left join endereco_x_dentista e on d.Codigo = e.cd_dentista and ' +
        'e.tp_endereco = '#39'C'#39
      ''
      'left join cidade c on c.cd_cidade = e.cd_cidade'
      ''
      'where 1 = 1'
      'order by d.nome')
    Left = 352
    Top = 248
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ds_especialidade, principal from esp_x_dentista ed, espec' +
        'ialidade e where ed.cd_especialidade = e.cd_especialidade and cd' +
        '_dentista = '
      '4')
    Left = 464
    Top = 248
  end
end
