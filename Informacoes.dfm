object FormInformacoes: TFormInformacoes
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informa'#231#245'es sobre o Faturamento'
  ClientHeight = 395
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0777777777777777777777777770000000000000000000000000000007770064
    444444444444444FFFFFFFF446770064646464646464646FFF99FFF646770066
    666666666666666FFF99FFF666700066666666666666666F999999F666000066
    666666666666666F999999F666000066666666666666666FFF99FFF666000066
    666666666666666FFF99FFF666000066666666666666666FFFFFFFF666000066
    666666666666666666666666660000E64646464646464646464646464600006E
    6E6E6E6E6E6E6E6E6E6E6E6E6E00000666666666666666666666666660000006
    6666666666444446666666666000000E6E6E6E6E64000004E6E6E6E660000000
    E6E6E6E6E40070046E6E6E660000000064446E6E6407F704E6E6444600000000
    0000444444000004444400000000000000000000040000040000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFF8000001E0000000C0000000C0000000C0000001C0000003C000
    0003C0000003C0000003C0000003C0000003C0000003C0000003E0000007E000
    0007E0000007F000000FF000000FF800001FFE00007FFFE7F3FFFFE3E3FFFFF0
    07FFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 475
    Height = 395
    VertScrollBar.Position = 346
    Align = alClient
    Color = clInfoBk
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = -336
      Width = 373
      Height = 20
      Caption = 'Procedimentos para Gera'#231#227'o do Faturamento.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = -304
      Width = 65
      Height = 20
      Caption = 'Passo 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 30
      Top = -274
      Width = 353
      Height = 16
      Caption = '- Escolher o tipo de Documento. (Ex.: Manuten'#231#227'o).'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 30
      Top = -252
      Width = 398
      Height = 16
      Caption = '- Digitar a data de emiss'#227'o. Geralmente esta data '#233' a do '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = -231
      Width = 59
      Height = 16
      Caption = 'sistema.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 30
      Top = -210
      Width = 395
      Height = 16
      Caption = '- Escolher o vencimento dos contratos. Esta data servir'#225' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = -186
      Width = 366
      Height = 16
      Caption = 'para filtrar os contratos com o vencimento escolhido.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = -156
      Width = 65
      Height = 20
      Caption = 'Passo 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 30
      Top = -122
      Width = 194
      Height = 16
      Caption = '- Clicar no bot'#227'o Processar.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 30
      Top = -92
      Width = 398
      Height = 16
      Caption = 'Este procedimento ir'#225' gerar o arquivo com os contratos a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 4
      Top = -70
      Width = 117
      Height = 16
      Caption = 'serem faturados.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = -39
      Width = 65
      Height = 20
      Caption = 'Passo 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 30
      Top = -5
      Width = 178
      Height = 16
      Caption = '- Clicar no bot'#227'o Imprimir.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 30
      Top = 25
      Width = 420
      Height = 16
      Caption = 'Este procedimento ir'#225' imprimir um relat'#243'rio com os contratos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 4
      Top = 47
      Width = 420
      Height = 16
      Caption = 'que foram processados no faturamento. '#201' muito importante a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 4
      Top = 68
      Width = 431
      Height = 16
      Caption = 'impress'#227'o deste relat'#243'rio antes do processamento das outras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 4
      Top = 92
      Width = 52
      Height = 16
      Caption = 'rotinas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 8
      Top = 119
      Width = 65
      Height = 20
      Caption = 'Passo 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 30
      Top = 153
      Width = 390
      Height = 16
      Caption = '- Com o relat'#243'rio em m'#227'os, o usu'#225'rio poder'#225' realizar as '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 4
      Top = 183
      Width = 405
      Height = 16
      Caption = 'rotinas de gera'#231#227'o dos arquivos de d'#233'bitos em conta que '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 4
      Top = 205
      Width = 138
      Height = 16
      Caption = 'constam no mesmo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 8
      Top = 235
      Width = 65
      Height = 20
      Caption = 'Passo 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 30
      Top = 269
      Width = 183
      Height = 16
      Caption = '- Clicar no bot'#227'o Receber.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 30
      Top = 299
      Width = 407
      Height = 16
      Caption = 'Este procedimento ir'#225' realizar as transfer'#234'ncias dos t'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 4
      Top = 321
      Width = 402
      Height = 16
      Caption = 'processados para o Contas a Receber e a atualiza'#231#227'o do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 4
      Top = 343
      Width = 147
      Height = 16
      Caption = 'arquivo de contratos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnProcessar: TBitBtn
      Left = 236
      Top = -131
      Width = 87
      Height = 30
      Caption = '&Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Spacing = 0
    end
    object BitBtnImprimir: TBitBtn
      Left = 236
      Top = -19
      Width = 87
      Height = 30
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
    object BitBtnExportar: TBitBtn
      Left = 236
      Top = 261
      Width = 87
      Height = 30
      Caption = '&Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 6
      Top = 370
      Width = 139
      Height = 21
      Caption = 'Mostrar esta tela.'
      DataField = 'Mostrar_Informacoes'
      DataSource = DataSourcePreferencias
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object QueryPreferencias: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Preferencia')
    Left = 358
    Top = 294
    object QueryPreferenciasRegistro_Unico: TSmallintField
      FieldName = 'Registro_Unico'
      Origin = 'PRONTO.Preferencia.Registro_Unico'
    end
    object QueryPreferenciasMostrar_Informacoes: TBooleanField
      FieldName = 'Mostrar_Informacoes'
      Origin = 'PRONTO.Preferencia.Mostrar_Informacoes'
    end
  end
  object DataSourcePreferencias: TDataSource
    DataSet = QueryPreferencias
    Left = 388
    Top = 294
  end
end
