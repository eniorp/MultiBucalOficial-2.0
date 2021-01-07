object fmGrafDentistaXProteticoXManut: TfmGrafDentistaXProteticoXManut
  Left = 206
  Top = 50
  Width = 982
  Height = 632
  Caption = 'Gr'#225'fico de Dentista X Protetico X Manuten'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBChartTotal: TDBChart
    Left = 0
    Top = 69
    Width = 974
    Height = 532
    Hint = 'Clique no gr'#225'fico para alternar'
    BackWall.Brush.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clRed
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Text.Strings = (
      'Gr'#225'fico de Pagamento de Dentista X Prot'#233'tico X Manuten'#231#227'o')
    Legend.Alignment = laBottom
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 2
    OnClick = DBChartTotalClick
    object Label2: TLabel
      Left = 64
      Top = 56
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Series4: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_graficoGastosProtDentManut
      SeriesColor = clGreen
      Title = 'vrTotal'
      XLabelsSource = 'mesAno'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'total'
    end
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 69
    Width = 974
    Height = 532
    Hint = 'Clique no gr'#225'fico para alternar'
    BackWall.Brush.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clRed
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Text.Strings = (
      'Gr'#225'fico de Pagamento de Dentista X Prot'#233'tico X Manuten'#231#227'o')
    Legend.Alignment = laBottom
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 1
    OnClick = DBChart1Click
    object Label1: TLabel
      Left = 64
      Top = 56
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Series3: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_graficoGastosProtDentManut
      SeriesColor = clYellow
      Title = 'VrDentista'
      XLabelsSource = 'mesAno'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'vrDentista'
    end
    object Series1: TBarSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_graficoGastosProtDentManut
      SeriesColor = clRed
      Title = 'VrProtetico'
      XLabelsSource = 'MesAno'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'vrProtetico'
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_graficoGastosProtDentManut
      SeriesColor = clGreen
      Title = 'VrManutencao'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'vrManutencao'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 23
      Top = 7
      Width = 218
      Height = 51
      Caption = 'Intervalo de Datas'
      TabOrder = 0
      object MaskEditDtVIni: TMaskEdit
        Left = 24
        Top = 21
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object MaskEditDtVFim: TMaskEdit
        Left = 113
        Top = 21
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object Button1: TButton
      Left = 377
      Top = 13
      Width = 96
      Height = 43
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 243
      Top = 29
      Width = 129
      Height = 17
      Caption = 'Apenas Servi'#231'os Rol'
      TabOrder = 2
    end
  end
  object sp_graficoGastosProtDentManut: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_graficoGastosProtDentManut'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DtIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '01/01/2019'
      end
      item
        Name = '@DtFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '31/01/2019'
      end
      item
        Name = 'Rol'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 384
    Top = 208
  end
end
