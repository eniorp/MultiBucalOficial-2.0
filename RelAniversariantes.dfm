object FormRelAniversariantes: TFormRelAniversariantes
  Left = 242
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Aniversariantes'
  ClientHeight = 210
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 44
    Top = 8
    Width = 62
    Height = 13
    Caption = 'M'#234's Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 44
    Top = 50
    Width = 55
    Height = 13
    Caption = 'M'#234's Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 50
    Width = 20
    Height = 13
    Caption = 'Dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 95
    Width = 76
    Height = 13
    Caption = 'Classifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBoxMesInicial: TComboBox
    Left = 44
    Top = 22
    Width = 209
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 1
    OnChange = ComboBoxMesInicialChange
    OnKeyDown = ComboBoxMesInicialKeyDown
    Items.Strings = (
      '01 - Janeiro'
      '02 - Fevereiro'
      '03 - Mar'#231'o'
      '04 - Abril'
      '05 - Maio'
      '06 - Junho'
      '07 - Julho'
      '08 - Agosto'
      '09 - Setembro'
      '10 - Outubro'
      '11 - Novembro'
      '12 - Dezembro')
  end
  object BitBtnImprimir: TBitBtn
    Left = 34
    Top = 168
    Width = 93
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnImprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtnSair: TBitBtn
    Left = 133
    Top = 168
    Width = 93
    Height = 25
    Caption = '&Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Kind = bkClose
  end
  object ComboBoxMesFinal: TComboBox
    Left = 44
    Top = 66
    Width = 209
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 3
    OnKeyDown = ComboBoxMesInicialKeyDown
    Items.Strings = (
      '01 - Janeiro'
      '02 - Fevereiro'
      '03 - Mar'#231'o'
      '04 - Abril'
      '05 - Maio'
      '06 - Junho'
      '07 - Julho'
      '08 - Agosto'
      '09 - Setembro'
      '10 - Outubro'
      '11 - Novembro'
      '12 - Dezembro')
  end
  object CheckBoxExclusao: TCheckBox
    Left = 6
    Top = 141
    Width = 131
    Height = 17
    Caption = 'Imprime Exclu'#237'dos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnKeyDown = ComboBoxMesInicialKeyDown
  end
  object EditDia1: TEdit
    Left = 10
    Top = 23
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 0
    Text = '1'
    OnKeyDown = ComboBoxMesInicialKeyDown
    OnKeyPress = EditDia1KeyPress
  end
  object EditDia2: TEdit
    Left = 10
    Top = 67
    Width = 28
    Height = 21
    MaxLength = 2
    TabOrder = 2
    Text = '31'
    OnKeyDown = ComboBoxMesInicialKeyDown
    OnKeyPress = EditDia1KeyPress
  end
  object ComboBoxClassif: TComboBox
    Left = 12
    Top = 111
    Width = 239
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 7
    OnKeyDown = ComboBoxMesInicialKeyDown
    Items.Strings = (
      'Por Idade'
      'Por Anivers'#225'rio(dia e m'#234's)'
      'Por Ordem alfab'#233'tica'
      'Por C'#243'digo')
  end
end
