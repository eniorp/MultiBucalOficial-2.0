object FormCarteirinhaIndividual: TFormCarteirinhaIndividual
  Left = 192
  Top = 107
  ActiveControl = MemoEtiqueta
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Carteirinha Individual'
  ClientHeight = 216
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 27
    Height = 175
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 2
      Width = 23
      Height = 171
      Align = alClient
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        ''
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 175
    Width = 266
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 44
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditNumero: TEdit
      Left = 58
      Top = 11
      Width = 39
      Height = 21
      TabOrder = 0
      Text = '1'
      OnExit = EditNumeroExit
      OnKeyDown = EditNumeroKeyDown
      OnKeyPress = EditNumeroKeyPress
    end
    object BitBtnImprimir: TBitBtn
      Left = 106
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      Left = 184
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Kind = bkClose
    end
  end
  object Panel3: TPanel
    Left = 27
    Top = 0
    Width = 239
    Height = 175
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Shape1: TShape
      Left = 2
      Top = 2
      Width = 235
      Height = 171
      Align = alClient
      Shape = stRoundRect
    end
    object MemoEtiqueta: TMemo
      Left = 11
      Top = 19
      Width = 210
      Height = 140
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        '12345678901234567890123456789'
        '0'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10')
      ParentFont = False
      TabOrder = 0
      OnExit = MemoEtiquetaExit
    end
  end
end
