object FormRegistrosAuxiliares: TFormRegistrosAuxiliares
  Left = 156
  Top = 154
  Width = 454
  Height = 244
  Caption = 'Registros Auxiliares'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 217
    Align = alClient
    TabOrder = 0
    object LabelPeriodo: TLabel
      Left = 9
      Top = 196
      Width = 46
      Height = 13
      Caption = 'Período'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 138
      Top = 196
      Width = 8
      Height = 13
      Caption = 'à'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroupRelatorios: TRadioGroup
      Left = 5
      Top = 5
      Width = 436
      Height = 175
      Caption = 'Relatórios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'Contratos e Contrapretações Emitidos'
        'Contraprestações, Restituídas e Canceladas'
        'Eventos Conhecidos'
        'Eventos Pagos'
        'Comissões Emitidas'
        'Eventos Ressarcidos ou Recuperados')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroupRelatoriosClick
    end
    object MaskEditInicio: TMaskEdit
      Left = 62
      Top = 188
      Width = 72
      Height = 21
      EditMask = '!90/90/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnKeyDown = MaskEditInicioKeyDown
    end
    object MaskEditFim: TMaskEdit
      Left = 151
      Top = 188
      Width = 72
      Height = 21
      EditMask = '!90/90/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnKeyDown = MaskEditInicioKeyDown
    end
    object BitBtnVisualizar: TBitBtn
      Left = 249
      Top = 184
      Width = 91
      Height = 25
      Caption = '&Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtnVisualizarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777700000000000077000FFFFFFFFFF070000FFFFFFF000000070FFFFFF08778
        00770FFFFF087EE8F0770FFFFF0777E870770FFFFF07E77870770FFFFF08EE78
        F0770FFFFFF0877807770FFFFFFF000077770FFFFFFFFFF077770FFFFFFF0000
        77770FFFFFFF070777770FFFFFFF007777770000000007777777}
    end
    object BitBtnSair: TBitBtn
      Left = 349
      Top = 184
      Width = 91
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Kind = bkClose
    end
  end
end
