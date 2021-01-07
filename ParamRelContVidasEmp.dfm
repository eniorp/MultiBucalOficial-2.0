object FmParamRelContVidasEmp: TFmParamRelContVidasEmp
  Left = 192
  Top = 114
  Width = 340
  Height = 220
  Caption = 'Relat'#243'rio de Controle de Vidas Empresariais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 286
    Height = 13
    Caption = 'Verificar com a Kelly se '#233' data de inclus'#227'o ou data da venda'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 7
    Width = 301
    Height = 51
    Caption = '&Periodo de inclus'#227'o do usu'#225'rio(Dt Venda)'
    TabOrder = 0
    object Label1: TLabel
      Left = 171
      Top = 25
      Width = 51
      Height = 13
      Caption = 'MM/AAAA'
    end
    object Label2: TLabel
      Left = 5
      Top = 25
      Width = 18
      Height = 13
      Caption = 'DE:'
    end
    object Label4: TLabel
      Left = 90
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDt_Ini: TMaskEdit
      Left = 27
      Top = 21
      Width = 56
      Height = 21
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /    '
    end
    object MaskEditFim: TMaskEdit
      Left = 106
      Top = 21
      Width = 56
      Height = 21
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 1
      Text = '  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 14
    Top = 62
    Width = 298
    Height = 56
    Caption = 'Vendedor'
    TabOrder = 1
    object EditVendedor: TEdit
      Left = 6
      Top = 21
      Width = 55
      Height = 21
      Hint = 'Informe o c'#243'digo inicial do Atendente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = EditVendedorExit
    end
    object BitBtnPesquisaDentista: TBitBtn
      Left = 65
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
    object Edit1: TEdit
      Left = 96
      Top = 21
      Width = 185
      Height = 21
      Hint = 'Informe o c'#243'digo inicial do Atendente'
      TabStop = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 145
    Width = 81
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 2
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
    Left = 235
    Top = 145
    Width = 81
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    Kind = bkClose
  end
end
