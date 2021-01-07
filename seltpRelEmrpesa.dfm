object fmSelRelEmpresa: TfmSelRelEmpresa
  Left = 246
  Top = 160
  BorderStyle = bsDialog
  Caption = 'Seleciona relat'#243'rio'
  ClientHeight = 457
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnDblClick = FormDblClick
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 40
    Top = 376
    Width = 81
    Height = 13
    Caption = 'AGUARDE.....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 8
    Width = 337
    Height = 103
    Caption = 'Selecione a op'#231#227'o'
    ItemIndex = 0
    Items.Strings = (
      'Relat'#243'rio Mensalidades'
      'Parcelas de Or'#231'amento com desconto em folha(N'#227'o Faturado)'
      'Parcelas de Or'#231'amento com desconto em folha(Faturado)'
      'Arquivo Layout de exporta'#231#227'o')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GroupBoxDtBase: TGroupBox
    Left = 16
    Top = 126
    Width = 324
    Height = 57
    Caption = 'Informa a Data Base'
    TabOrder = 2
    object MaskEditDataRel: TMaskEdit
      Left = 42
      Top = 22
      Width = 90
      Height = 21
      EditMask = '!90/90/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object CheckBoxTxAde: TCheckBox
    Left = 19
    Top = 186
    Width = 173
    Height = 17
    Caption = 'Imprime Taxa de ades'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object GroupBoxPeriodoFaturado: TGroupBox
    Left = 145
    Top = 126
    Width = 336
    Height = 59
    Caption = 'Informe o Per'#237'odo de Faturamento(Mes/Ano)'
    TabOrder = 1
    Visible = False
    object MaskEdit1: TMaskEdit
      Left = 42
      Top = 22
      Width = 63
      Height = 21
      EditMask = '!90/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 7
      ParentFont = False
      TabOrder = 0
      Text = '  /    '
    end
  end
  object CheckBoxOpAvancadas: TCheckBox
    Left = 208
    Top = 188
    Width = 121
    Height = 17
    Caption = 'Op'#231#245'es avan'#231'adas'
    TabOrder = 4
    OnClick = CheckBoxOpAvancadasClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 416
    Width = 374
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtnSair: TBitBtn
      Left = 280
      Top = 8
      Width = 81
      Height = 25
      Caption = 'S&air'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Kind = bkClose
    end
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 310
    Width = 324
    Height = 57
    Caption = 'Intervalo de contratantes'
    TabOrder = 6
    object Label1: TLabel
      Left = 11
      Top = 29
      Width = 21
      Height = 13
      Caption = 'DE :'
    end
    object Label2: TLabel
      Left = 134
      Top = 29
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object EditcdEmpIni: TEdit
      Left = 46
      Top = 27
      Width = 86
      Height = 21
      TabOrder = 0
    end
    object EditcdEmpFim: TEdit
      Left = 150
      Top = 27
      Width = 86
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 246
    Width = 324
    Height = 57
    TabOrder = 7
    object CheckBox3: TCheckBox
      Left = 16
      Top = 24
      Width = 225
      Height = 17
      Caption = 'Salvar relat'#243'rio automaticamente'
      TabOrder = 0
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <
      item
        Name = 'contratIni'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'contratFim'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select codigo,nome ,cgc_cpf from contratante where empresa = 1 a' +
        'nd exclusao is null and codigo '
      'between :contratIni and :contratFim'
      'order by codigo')
    Left = 184
    Top = 216
  end
end
