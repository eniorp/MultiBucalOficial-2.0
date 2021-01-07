object FmDMED: TFmDMED
  Left = 356
  Top = 158
  Width = 531
  Height = 428
  Caption = 'FmDMED'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 145
    Width = 164
    Height = 13
    Caption = 'Situa'#231#227'o da Declara'#231#227'o Especial?'
  end
  object Label2: TLabel
    Left = 121
    Top = 177
    Width = 75
    Height = 13
    Caption = 'Data do Evento'
    Enabled = False
  end
  object Label3: TLabel
    Left = 115
    Top = 49
    Width = 72
    Height = 13
    Caption = 'Ano Calend'#225'rio'
  end
  object Label4: TLabel
    Left = 108
    Top = 210
    Width = 88
    Height = 13
    Caption = 'Nome do Arquivo :'
  end
  object Label5: TLabel
    Left = 297
    Top = 277
    Width = 70
    Height = 13
    Caption = 'Qtde Registros'
  end
  object Label6: TLabel
    Left = 313
    Top = 310
    Width = 54
    Height = 13
    Caption = 'Valor Total:'
  end
  object Label7: TLabel
    Left = 59
    Top = 81
    Width = 137
    Height = 13
    Caption = 'Essa Gera'#231#227'o '#233' retificadora?'
  end
  object Label8: TLabel
    Left = 11
    Top = 113
    Width = 185
    Height = 13
    Caption = 'N'#186' Recibo Ultima declara'#231#227'o entregue:'
    Enabled = False
  end
  object Bevel1: TBevel
    Left = 280
    Top = 265
    Width = 225
    Height = 81
  end
  object Label9: TLabel
    Left = 112
    Top = 16
    Width = 80
    Height = 13
    Caption = 'Ano Refer'#234'ncia :'
  end
  object Label10: TLabel
    Left = 35
    Top = 236
    Width = 163
    Height = 13
    Caption = 'Identificado de estrutura do leiaute'
  end
  object Button1: TButton
    Left = 160
    Top = 277
    Width = 113
    Height = 53
    Caption = 'Gerar Arquivo DMED'
    TabOrder = 7
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 206
    Top = 143
    Width = 155
    Height = 21
    Hint = 
      'Ordem 8 do registro  3.3 do layout, Se Sim  indica Situa'#231#227'o de d' +
      'eclara'#231#227'o especial, se N'#227'o indica  que n'#227'o '#233' declara'#231#227'o de situa' +
      #231#227'o especial'
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = 'N'#227'o'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object MaskEdit1: TMaskEdit
    Left = 206
    Top = 175
    Width = 153
    Height = 21
    Hint = 'Preenchimento obrigat'#243'rio se o campo acima for SIM'
    Enabled = False
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = '  /  /    '
  end
  object EditAno: TEdit
    Left = 206
    Top = 47
    Width = 151
    Height = 21
    TabOrder = 1
    Text = '2018'
    OnExit = EditAnoExit
  end
  object Edit1: TEdit
    Left = 206
    Top = 207
    Width = 290
    Height = 21
    TabOrder = 6
    Text = 'C:\DMED\'
  end
  object Edit2: TEdit
    Left = 375
    Top = 273
    Width = 122
    Height = 21
    Color = clBtnFace
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 375
    Top = 305
    Width = 122
    Height = 21
    Color = clBtnFace
    TabOrder = 9
  end
  object ComboBox2: TComboBox
    Left = 206
    Top = 79
    Width = 155
    Height = 21
    Hint = 'Sim '#233' Retificadora , N '#233' original'
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'N'#227'o'
    OnChange = ComboBox2Change
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object Edit4: TEdit
    Left = 206
    Top = 111
    Width = 151
    Height = 21
    Hint = 
      'Se a declara'#231#227'o for retificadora, dever'#225' ser preenchido com o n'#250 +
      'mero do recibo da '#250'ltima declara'#231#227'o entregue, se declarante n'#227'o ' +
      'transmitir a declara'#231#227'o com assinatura digital'
    Enabled = False
    TabOrder = 3
    OnExit = EditAnoExit
  end
  object Button2: TButton
    Left = 40
    Top = 277
    Width = 111
    Height = 53
    Caption = 'Manuten'#231#227'o'
    TabOrder = 10
    OnClick = Button2Click
  end
  object EditAnoRef: TEdit
    Left = 206
    Top = 14
    Width = 151
    Height = 21
    TabOrder = 0
    Text = '2019'
    OnExit = EditAnoExit
  end
  object EditIdentLaiaute: TEdit
    Left = 206
    Top = 234
    Width = 151
    Height = 21
    Hint = 
      'Verificar no layout no ano de 2011 foi fixo L1101M EM 2012 R2609' +
      'P, Provavelmente vai mudar em 2013'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Text = 'S8859L'
    OnExit = EditAnoExit
  end
  object SP_GERA_DMED_REG_TOP: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 200
    ProcedureName = 'SP_GERA_DMED_REG_TOP'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DTINI'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DTFIM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 420
    Top = 97
  end
end
