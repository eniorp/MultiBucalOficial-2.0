object fmGrafMensXOrcamento: TfmGrafMensXOrcamento
  Left = 158
  Top = 46
  Width = 900
  Height = 650
  Caption = 'Gr'#225'fico de Mensalidade X Or'#231'amentos'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 23
      Top = 7
      Width = 218
      Height = 51
      Caption = 'Intervalo de Vencimento'
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
      Left = 481
      Top = 13
      Width = 96
      Height = 43
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 248
      Top = 8
      Width = 218
      Height = 51
      Caption = 'Intervalo de Pagamento'
      TabOrder = 2
      object MaskEditDtPIni: TMaskEdit
        Left = 24
        Top = 21
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object MaskEditDtPFim: TMaskEdit
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
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 69
    Width = 884
    Height = 542
    BackWall.Brush.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clRed
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Text.Strings = (
      'Gr'#225'fico de Mensalidades X Or'#231'amentos')
    Legend.Alignment = laBottom
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 1
    object Series1: TBarSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_recebimento_mes
      SeriesColor = clRed
      Title = 'Vr Mensalidade'
      XLabelsSource = 'MesAno'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'mensalidade'
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_recebimento_mes
      SeriesColor = clGreen
      Title = 'Vr Or'#231'amento'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'orcamento'
    end
  end
  object sp_recebimento_mes: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_recebimento_mes'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DtVencIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '01/01/2010'
      end
      item
        Name = '@DtVencFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '31/12/2010'
      end
      item
        Name = '@DtPgIni'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '01/01/2010'
      end
      item
        Name = '@DtPgFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '31/12/2010'
      end>
    Left = 384
    Top = 224
  end
end
