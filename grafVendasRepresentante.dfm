inherited FmGrafVendasRepresentante: TFmGrafVendasRepresentante
  Left = 209
  Top = 64
  Width = 1058
  Height = 677
  Caption = 'Gr'#225'fico Representanter X QTde'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 638
  end
  inherited PanelRigth: TPanel
    Left = 1031
    Width = 11
    Height = 638
  end
  inherited PanelCenter: TPanel
    Width = 1021
    Height = 638
    inherited PanelBotton: TPanel
      Top = 597
      Width = 1021
      inherited Panel1: TPanel
        Left = 929
      end
    end
    inherited PanelTop: TPanel
      Width = 1021
      Height = 75
      inherited Bevel1: TBevel
        Top = 65
        Width = 1021
      end
      object Label2: TLabel
        Left = 376
        Top = 10
        Width = 124
        Height = 13
        Caption = 'Selecione o representante'
      end
      object GroupBox1: TGroupBox
        Left = 31
        Top = 7
        Width = 330
        Height = 51
        Caption = '&Periodo de Data da Venda do usu'#225'rio'
        TabOrder = 0
        object Label1: TLabel
          Left = 110
          Top = 25
          Width = 51
          Height = 13
          Caption = 'MM/AAAA'
        end
        object Label3: TLabel
          Left = 260
          Top = 25
          Width = 51
          Height = 13
          Caption = 'MM/AAAA'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 24
          Top = 21
          Width = 83
          Height = 21
          EditMask = '!99/0000;1;_'
          MaxLength = 7
          TabOrder = 0
          Text = '  /    '
          OnExit = MaskEditDtIniExit
        end
        object MaskEditDtFim: TMaskEdit
          Left = 169
          Top = 21
          Width = 83
          Height = 21
          EditMask = '!99/0000;1;_'
          MaxLength = 7
          TabOrder = 1
          Text = '  /    '
        end
      end
      object Button1: TButton
        Left = 606
        Top = 13
        Width = 96
        Height = 43
        Caption = 'Visualizar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 377
        Top = 28
        Width = 216
        Height = 21
        KeyField = 'codigo'
        ListField = 'nome'
        ListSource = DataSourceRepresentante
        TabOrder = 1
      end
    end
    inherited DBGrid1: TDBGrid
      Left = 760
      Top = 179
      Width = 337
      Height = 142
      Align = alNone
      Visible = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 75
      Width = 1021
      Height = 522
      ActivePage = TabSheetMesaMes
      Align = alClient
      TabOrder = 3
      object TabSheetMesaMes: TTabSheet
        Caption = 'Gr'#225'fico Mes a Mes'
        ImageIndex = 1
        object DBChart2: TDBChart
          Left = 0
          Top = 0
          Width = 1013
          Height = 494
          BackWall.Brush.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'Gr'#225'fico de Vendas')
          Legend.Alignment = laBottom
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          Align = alClient
          TabOrder = 0
          object Series2: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = ADOQueryMesaMes
            SeriesColor = clGreen
            XLabelsSource = 'Mesano'
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'mes'
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'qtde'
          end
        end
      end
    end
  end
  inherited ADOQueryH: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select r.nome + '#39' ('#39' + str(COUNT(*) /'
      '233.0'
      '* 100,5,2) + '#39'%)'#39' vendedor, COUNT(*) qtde'
      
        'from usuario u, vendedor v, representante r where v.codigo = u.v' +
        'endedor'
      'and r.codigo = v.representante'
      'and u.dt_venda between'
      #39'01/01/2017'#39' and '#39'31/01/2017 23:59'#39
      
        'and (u.Data_Exclusao is null or substring(convert(char(10),u.Dat' +
        'a_Exclusao,103),4,7) <> substring(convert(char(10),u.Data_Inclus' +
        'ao,103),4,7)) group by r.nome '
      'order by qtde desc'
      '')
  end
  object ADOQueryMesaMes: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'set dateformat dmy select '
      
        '   REPLICATE('#39'0'#39', 2 - LEN(month(u.dt_venda))) + cast(MONTH(u.dt_' +
        'Venda) as varchar(2)) + '#39'/'#39' + '
      '   cast(YEAR(u.dt_Venda) as varchar(4)) Mesano,  '
      '   COUNT(*) qtde,'
      '   MONTH(u.dt_venda) mes, '
      '   YEAR(u.dt_venda) ano,'
      #9'r.codigo cdRepresentante,'
      #9'r.Nome representante'
      ''
      ''
      'from usuario u,'
      '     Vendedor v,'
      #9' Representante r'
      ''
      'where u.Vendedor      = v.Codigo'
      '  and v.Representante = r.CODIGO'
      
        '  and (u.Data_Exclusao is null or substring(convert(char(10),u.D' +
        'ata_Exclusao,103),4,7) <> substring(convert(char(10),u.Data_Incl' +
        'usao,103),4,7))'
      '  and u.dt_venda between'
      #39'01/01/2019'#39' and '#39'30/04/2019 23:59'#39
      '  and r.codigo ='
      '  0'
      'group by r.codigo , r.Nome ,'
      '   MONTH(u.dt_venda) , '
      '   YEAR(u.dt_venda) '
      'order by ano,mes,qtde desc')
    Left = 336
    Top = 192
  end
  object ADOQueryRepresentante: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'set dateformat dmy select nome,codigo, Data_Exclusao from  repre' +
        'sentante where (data_exclusao is null or Data_Exclusao >= '
      #39'01/01/2018'#39
      ')')
    Left = 632
    Top = 192
  end
  object DataSourceRepresentante: TDataSource
    DataSet = ADOQueryRepresentante
    Left = 490
    Top = 200
  end
end
