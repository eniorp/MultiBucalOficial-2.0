object FmParamBaixaAtend: TFmParamBaixaAtend
  Left = 101
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Baixas Por Atendente'
  ClientHeight = 388
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 417
    Height = 13
    Caption = 
      'Selecione os tipos de cobran'#231'a ou marque "Selecionar tudo " abai' +
      'xo para marcar  todos'
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 7
    Width = 216
    Height = 51
    Caption = '&Intervalo de datas'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 114
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 25
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnChange = MaskEditDtIniChange
    end
    object MaskEditDtFim: TMaskEdit
      Left = 127
      Top = 20
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object BitBtn1: TBitBtn
    Left = 273
    Top = 359
    Width = 81
    Height = 25
    Caption = '&Imprimir'
    Enabled = False
    TabOrder = 3
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
    Left = 358
    Top = 359
    Width = 81
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = False
    Kind = bkClose
  end
  object GroupBox2: TGroupBox
    Left = 230
    Top = 5
    Width = 211
    Height = 56
    Caption = 'Atendentes'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label4: TLabel
      Left = 110
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object EditOperador1: TEdit
      Left = 27
      Top = 21
      Width = 46
      Height = 21
      Hint = 'Informe o c'#243'digo inicial do Atendente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = EditOperador1Change
      OnExit = EditOperador1Exit
    end
    object BitBtnPesquisaDentista: TBitBtn
      Left = 78
      Top = 22
      Width = 24
      Height = 21
      TabOrder = 1
      TabStop = False
      OnClick = BitBtnPesquisaDentistaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object EditOperador2: TEdit
      Left = 121
      Top = 21
      Width = 53
      Height = 21
      Hint = 'Informe o C'#243'digo Final de atentende'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = EditOperador2Change
      OnExit = EditOperador1Exit
    end
    object BitBtn2: TBitBtn
      Left = 179
      Top = 21
      Width = 24
      Height = 21
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object RadioGroupTpRel: TRadioGroup
    Left = 14
    Top = 64
    Width = 427
    Height = 33
    Caption = 'Tipo de Relat'#243'rio'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '&Resumido'
      '&Detalhado')
    TabOrder = 2
  end
  object ListView: TListView
    Left = 14
    Top = 121
    Width = 425
    Height = 233
    Cursor = crHandPoint
    Checkboxes = True
    Columns = <
      item
        Caption = 'C'#243'digo'
      end
      item
        Caption = 'Descri'#231#227'o'
        Width = 360
      end>
    FlatScrollBars = True
    TabOrder = 5
    ViewStyle = vsReport
  end
  object CheckBox1: TCheckBox
    Left = 17
    Top = 363
    Width = 125
    Height = 15
    Caption = '&Selecionar tudo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = CheckBox1Click
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoCobranca where ativo = 1 order by descricao')
    Left = 160
    Top = 168
  end
end
