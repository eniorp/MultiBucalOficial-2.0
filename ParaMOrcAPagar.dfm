object FmParamOrcAPagar: TFmParamOrcAPagar
  Left = 195
  Top = 172
  BorderStyle = bsDialog
  Caption = 'Par'#226'metros Or'#231'amentos a pagar'
  ClientHeight = 247
  ClientWidth = 383
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 71
    Width = 146
    Height = 76
    Caption = '&Inter de datas Aprova'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 15
      Top = 49
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 31
      Top = 22
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEditDtFim: TMaskEdit
      Left = 31
      Top = 47
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnChange = MaskEditDtFimChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 153
    Top = 69
    Width = 217
    Height = 78
    Caption = '&Status do or'#231'amento'
    TabOrder = 1
    object ComboBoxStatus: TComboBox
      Left = 8
      Top = 28
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        '0 - Todos'
        '1 - Tratamento'
        '5 - Pago Parcial'
        '9 - Autorizado')
    end
  end
  object BitBtn1: TBitBtn
    Left = 201
    Top = 212
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
    Left = 286
    Top = 212
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
  object GroupBox3: TGroupBox
    Left = 4
    Top = 149
    Width = 366
    Height = 50
    Caption = '&Dentista(Deixe em branco para selecionar todos os dentistas)'
    TabOrder = 2
    TabStop = True
    object EditCdDentista: TEdit
      Left = 8
      Top = 17
      Width = 53
      Height = 21
      Hint = 'Se deseja todos os dentistas, deixe em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = EditCdDentistaChange
      OnExit = EditCdDentistaExit
      OnKeyPress = EditCdDentistaKeyPress
    end
    object EditnmDentista: TEdit
      Left = 92
      Top = 17
      Width = 270
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtnPesquisaDentista: TBitBtn
      Left = 65
      Top = 17
      Width = 24
      Height = 21
      TabOrder = 2
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 68
    Align = alTop
    BevelInner = bvLowered
    Color = clHighlightText
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 7
      Top = 5
      Width = 362
      Height = 13
      Caption = 
        'OBS: Status de or'#231'amento igual a Todos  significa os Status 1(Tr' +
        'atamento),'
    end
    object Label4: TLabel
      Left = 7
      Top = 19
      Width = 150
      Height = 13
      Caption = '5(Pago Parcial) e 9(Autorizado)'
    end
    object Label5: TLabel
      Left = 7
      Top = 33
      Width = 368
      Height = 13
      Caption = 
        'Or'#231'amentos com status de pagamento igual a 1 PAGO TOTALMENTE n'#227'o' +
        ' s'#227'o'
    end
    object Label6: TLabel
      Left = 7
      Top = 47
      Width = 217
      Height = 13
      Caption = 'listados e o or'#231'amento deve estar autorizado'
    end
  end
end
