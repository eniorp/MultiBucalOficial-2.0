object FmDadosBancProt: TFmDadosBancProt
  Left = 52
  Top = 89
  Width = 292
  Height = 223
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados Banc'#225'rio Prot'#233'tico'
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
  object DBCheckBox7: TDBCheckBox
    Left = 8
    Top = 7
    Width = 201
    Height = 17
    Caption = 'Recebimento via dep'#243'sito banc'#225'rio'
    DataField = 'lg_recebimento_deposito'
    DataSource = FormProteticos.DataSourceProteticos
    TabOrder = 0
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 35
    Width = 281
    Height = 113
    Caption = 'Dados Banc'#225'rios'
    TabOrder = 1
    object Label47: TLabel
      Left = 68
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label48: TLabel
      Left = 60
      Top = 54
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
    end
    object Label49: TLabel
      Left = 7
      Top = 85
      Width = 92
      Height = 13
      Caption = 'Conta Corrente/DG'
    end
    object DBEdit14: TDBEdit
      Left = 106
      Top = 20
      Width = 138
      Height = 21
      DataField = 'banco'
      DataSource = FormProteticos.DataSourceProteticos
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 106
      Top = 50
      Width = 138
      Height = 21
      DataField = 'agencia'
      DataSource = FormProteticos.DataSourceProteticos
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 106
      Top = 80
      Width = 138
      Height = 21
      DataField = 'contaCorrente'
      DataSource = FormProteticos.DataSourceProteticos
      TabOrder = 2
    end
    object DBEdit17: TDBEdit
      Left = 250
      Top = 81
      Width = 24
      Height = 21
      DataField = 'digitoCC'
      DataSource = FormProteticos.DataSourceProteticos
      TabOrder = 3
    end
  end
  object DBNavigator3: TDBNavigator
    Left = 5
    Top = 160
    Width = 195
    Height = 25
    DataSource = FormProteticos.DataSourceProteticos
    VisibleButtons = [nbEdit, nbPost, nbCancel]
    Flat = True
    TabOrder = 2
  end
  object BitBtnSair: TBitBtn
    Left = 207
    Top = 161
    Width = 68
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Kind = bkClose
  end
end
