object FmGraficIncXExc: TFmGraficIncXExc
  Left = 192
  Top = 114
  Width = 783
  Height = 540
  Caption = 'Gr'#225'fico de Inclus'#245'es X Exclus'#245'es de usu'#225'rios'
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
    Width = 767
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 23
      Top = 7
      Width = 325
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
      object Label2: TLabel
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
      Left = 353
      Top = 13
      Width = 96
      Height = 43
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 69
    Width = 767
    Height = 432
    BackWall.Brush.Color = clWhite
    Title.Text.Strings = (
      'QTde de Usu'#225'rios Inclu'#237'dos X Qtde Usu'#225'rios Exclu'#237'dos')
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
      DataSource = sp_inclusoesExclusoes
      SeriesColor = clRed
      Title = 'Quantidade de Ingressos'
      XLabelsSource = 'Mesano'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'Inc'
    end
    object Series2: TBarSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = sp_inclusoesExclusoes
      SeriesColor = clGreen
      Title = 'Quantidade de Exclus'#245'es'
      XLabelsSource = 'Mesano'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'Exc'
    end
  end
  object sp_inclusoesExclusoes: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_inclusoesExclusoes'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dtini'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '01/01/2008'
      end
      item
        Name = '@DtFim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '30/11/2008'
      end>
    Left = 320
    Top = 128
  end
end
