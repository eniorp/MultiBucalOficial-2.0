object FormImpressaoOrcamento: TFormImpressaoOrcamento
  Left = 158
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o Or'#231'amento'
  ClientHeight = 157
  ClientWidth = 270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 114
    Width = 270
    Height = 43
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object BitBtnImprimir: TBitBtn
      Left = 52
      Top = 6
      Width = 75
      Height = 30
      Hint = 'Imprimir Cadastro'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object BitBtnSair: TBitBtn
      Left = 142
      Top = 6
      Width = 75
      Height = 30
      Hint = 'Sair do Cadastro'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 270
    Height = 114
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object CheckBoxCliente: TCheckBox
      Left = 22
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Via &Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxConvenio: TCheckBox
      Left = 22
      Top = 35
      Width = 135
      Height = 17
      Caption = '&Via Conv'#234'nio'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxDentista: TCheckBox
      Left = 22
      Top = 59
      Width = 97
      Height = 17
      Caption = 'Via &Dentista'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxProtetico: TCheckBox
      Left = 22
      Top = 84
      Width = 97
      Height = 17
      Caption = 'Via &Prot'#233'tico'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxPromissoria: TCheckBox
      Left = 148
      Top = 34
      Width = 97
      Height = 17
      Caption = 'Pr&omiss'#243'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxChequePre: TCheckBox
      Left = 148
      Top = 58
      Width = 97
      Height = 17
      Caption = 'Cheque Pr'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxOrtodontia: TCheckBox
      Left = 148
      Top = 12
      Width = 105
      Height = 17
      Caption = 'Via Ortodontia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyDown = CheckBoxClienteKeyDown
    end
    object CheckBoxApres: TCheckBox
      Left = 148
      Top = 84
      Width = 97
      Height = 17
      Caption = 'Apresenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
end
