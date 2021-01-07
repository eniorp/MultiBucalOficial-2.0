object FmDadosNP: TFmDadosNP
  Left = 192
  Top = 114
  Width = 491
  Height = 269
  Caption = 'Dados da Nota Promiss'#243'ria'
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
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 49
    Height = 13
    Caption = 'Assinatura'
  end
  object Label2: TLabel
    Left = 16
    Top = 66
    Width = 41
    Height = 13
    Caption = 'Emitente'
  end
  object Label3: TLabel
    Left = 11
    Top = 101
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label4: TLabel
    Left = 37
    Top = 135
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label5: TLabel
    Left = 14
    Top = 163
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 282
    Top = 131
    Width = 19
    Height = 13
    Caption = 'RG:'
  end
  object Label7: TLabel
    Left = 181
    Top = 164
    Width = 42
    Height = 13
    Caption = 'Dt Nasc:'
  end
  object Label8: TLabel
    Left = 322
    Top = 163
    Width = 18
    Height = 13
    Caption = 'NC:'
  end
  object EditAss: TEdit
    Left = 64
    Top = 31
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object EditEmit: TEdit
    Left = 64
    Top = 63
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 35
    TabOrder = 2
  end
  object EditEnder: TEdit
    Left = 64
    Top = 95
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 40
    TabOrder = 3
  end
  object EditCPF: TEdit
    Left = 64
    Top = 127
    Width = 191
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = EditCPFKeyPress
  end
  object BitBtnImprimir: TBitBtn
    Left = 185
    Top = 191
    Width = 90
    Height = 25
    Hint = 'Imprimir Cadastro'
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
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
  object EditFone: TEdit
    Left = 65
    Top = 159
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = EditCPFKeyPress
  end
  object BitBtnPesquisaUsuario: TBitBtn
    Left = 454
    Top = 64
    Width = 24
    Height = 21
    TabOrder = 6
    TabStop = False
    OnClick = BitBtnPesquisaUsuarioClick
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
  object EditRg: TEdit
    Left = 305
    Top = 127
    Width = 143
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnKeyPress = EditCPFKeyPress
  end
  object MaskEditDtNasc: TMaskEdit
    Left = 229
    Top = 159
    Width = 81
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 8
    Text = '  /  /    '
  end
  object EditNC: TEdit
    Left = 344
    Top = 159
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    OnKeyPress = EditCPFKeyPress
  end
end
