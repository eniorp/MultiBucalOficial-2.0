object FmRelFichaFinan: TFmRelFichaFinan
  Left = 192
  Top = 114
  Width = 377
  Height = 250
  Caption = 'Ficha Financeira do Cliente'
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
  object GroupBox2: TGroupBox
    Left = 9
    Top = 18
    Width = 352
    Height = 77
    Caption = 'Titular'
    TabOrder = 0
    object Label3: TLabel
      Left = 11
      Top = 17
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 84
      Top = 17
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object EditCdUsuario: TEdit
      Left = 8
      Top = 32
      Width = 44
      Height = 21
      Hint = 
        'Se Deseja saber o custo de todos os dentistas, deixe este campo ' +
        'em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = EditCdUsuarioExit
    end
    object EditNmusu: TEdit
      Left = 80
      Top = 32
      Width = 265
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 53
      Top = 32
      Width = 24
      Height = 21
      TabOrder = 2
      TabStop = False
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
  object BitBtnSair: TBitBtn
    Left = 280
    Top = 177
    Width = 78
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    Kind = bkCancel
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 98
    Width = 352
    Height = 67
    Caption = 'Acr'#233'scimos'
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 17
      Width = 26
      Height = 13
      Caption = 'Multa'
    end
    object Label2: TLabel
      Left = 73
      Top = 34
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label5: TLabel
      Left = 97
      Top = 17
      Width = 57
      Height = 13
      Caption = 'Juros ao dia'
    end
    object Label6: TLabel
      Left = 161
      Top = 34
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 61
      Height = 21
      Hint = 
        'Se Deseja saber o custo de todos os dentistas, deixe este campo ' +
        'em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '2,00'
    end
    object Edit2: TEdit
      Left = 95
      Top = 32
      Width = 64
      Height = 21
      Hint = 
        'Se Deseja saber o custo de todos os dentistas, deixe este campo ' +
        'em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '0,0333'
    end
  end
  object BitBtn2: TBitBtn
    Left = 197
    Top = 177
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 3
    OnClick = BitBtn2Click
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
end
