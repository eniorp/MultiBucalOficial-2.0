object FmParamRelTitPgContratRestricao: TFmParamRelTitPgContratRestricao
  Left = 252
  Top = 124
  BorderStyle = bsDialog
  Caption = 'T'#237'tulos Pagos  de contratantes com restri'#231#227'o'
  ClientHeight = 204
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 57
    Top = 24
    Width = 353
    Height = 13
    Caption = 'Lista T'#237'tulos pagos por per'#237'odo de contratantes com restri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 25
    Top = 50
    Width = 416
    Height = 78
    Caption = '&Intervalo de datas de pagamento'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 33
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
    end
    object Label2: TLabel
      Left = 178
      Top = 33
      Width = 42
      Height = 13
      Caption = 'Data Fim'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 82
      Top = 29
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MaskEditDtIniExit
    end
    object MaskEditDtFim: TMaskEdit
      Left = 225
      Top = 32
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object BitBtn2: TBitBtn
    Left = 97
    Top = 152
    Width = 112
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
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
  object BitBtnSair: TBitBtn
    Left = 225
    Top = 152
    Width = 98
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = False
    Kind = bkClose
  end
end
