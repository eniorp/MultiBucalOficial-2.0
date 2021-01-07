inherited FmGrafCancVendedor: TFmGrafCancVendedor
  Left = 139
  Top = 39
  Width = 1058
  Height = 677
  Caption = 'Gr'#225'fico Cancelamento Por Vendedor'
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
        Left = 480
        Top = 25
        Width = 73
        Height = 13
        Caption = 'Tipo de Gr'#225'fico'
      end
      object GroupBox1: TGroupBox
        Left = 31
        Top = 7
        Width = 330
        Height = 51
        Caption = '&Data de Exclus'#227'o'
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
        Left = 369
        Top = 13
        Width = 96
        Height = 43
        Caption = 'Visualizar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object ComboBox1: TComboBox
        Left = 560
        Top = 24
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboBox1Change
        Items.Strings = (
          'Pizza'
          'Barras'
          'inhas')
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
      ActivePage = TabSheetPorVendedor
      Align = alClient
      TabOrder = 3
      object TabSheetPorVendedor: TTabSheet
        Caption = 'Gr'#225'fico Por vendedor'
        object DBChart1: TDBChart
          Left = 0
          Top = 0
          Width = 1013
          Height = 494
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'Gr'#225'fico de Vendas')
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          Legend.Alignment = laBottom
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alClient
          TabOrder = 0
          object Series1: TPieSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            DataSource = ADOQueryH
            SeriesColor = clRed
            Title = 'Barras'
            XLabelsSource = 'vendedor'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'qtde'
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cancelamentos por Motivo'
        ImageIndex = 2
        object DBChart3: TDBChart
          Left = 0
          Top = 0
          Width = 1013
          Height = 494
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'Gr'#225'fico de Cancelamentos')
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          Legend.Alignment = laBottom
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alClient
          TabOrder = 0
          object PieSeries2: TPieSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            DataSource = ADOQueryCancMotivo
            SeriesColor = clRed
            Title = 'Barras'
            XLabelsSource = 'motivo'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'qtde'
          end
        end
      end
      object TabSheetMesaMes: TTabSheet
        Caption = 'Gr'#225'fico Mes a Mes'
        ImageIndex = 1
        object DBChart2: TDBChart
          Left = 0
          Top = 0
          Width = 1013
          Height = 494
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'Gr'#225'fico de Vendas')
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          Legend.Alignment = laBottom
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alClient
          TabOrder = 0
          object PieSeries1: TPieSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            DataSource = ADOQueryMesaMes
            SeriesColor = clRed
            Title = 'Barras'
            XLabelsSource = 'Mesano'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'qtde'
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
      'and u.Data_Exclusao between'
      #39'01/01/2017'#39' and '#39'31/01/2017 23:59'#39
      'group by r.nome '
      'order by qtde desc'
      '')
  end
  object ADOQueryMesaMes: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'REPLICATE('#39'0'#39', 2 - LEN(month(u.Data_Exclusao))) +'
      'cast(MONTH(u.Data_Exclusao) as varchar(2)) + '#39'/'#39' +'
      
        'cast(YEAR(u.Data_Exclusao) as varchar(4)) Mesano,  COUNT(*) qtde' +
        ','
      'MONTH(u.Data_Exclusao) mes, YEAR(u.Data_Exclusao) ano'
      
        'from usuario u, vendedor v, representante r where v.codigo = u.v' +
        'endedor'
      'and r.codigo = v.representante'
      'and u.Data_Exclusao between '
      #39'01/01/2017'#39' and '#39'31/12/2017 23:59'#39
      'group by YEAR(u.Data_Exclusao) , MONTH(u.Data_Exclusao)')
    Left = 336
    Top = 192
  end
  object ADOQueryCancMotivo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select c.Descricao  + '#39' ('#39' + str(COUNT(*) /'
      '233.0'
      '* 100,5,2) + '#39'%)'#39' motivo, COUNT(*) qtde'
      
        'from usuario u, Cancelamento c where c.codigo = u.Motivo_Cancela' +
        'mento'
      'and u.Data_Exclusao between'
      #39'01/01/2017'#39' and '#39'31/01/2017 23:59'#39
      'group by C.Descricao'
      'order by qtde desc')
    Left = 224
    Top = 256
  end
end
