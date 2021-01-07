object FmSexHemOrcamento: TFmSexHemOrcamento
  Left = 264
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Dados Adicionais'
  ClientHeight = 153
  ClientWidth = 193
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
  object DBRHemiArco: TDBRadioGroup
    Left = 8
    Top = 8
    Width = 172
    Height = 110
    Caption = 'Hemi-Arco'
    DataField = 'Hemiarco'
    DataSource = FormOrcamentos.DataSourceItensOrcamento
    Items.Strings = (
      'Superior Direito'
      'Superior Esquerdo'
      'Inferior Direito'
      'Inferior Esquerdo')
    TabOrder = 1
    TabStop = True
    Values.Strings = (
      'SD'
      'SE'
      'ID'
      'IE')
    OnClick = DBRHemiArcoClick
  end
  object DBRGSexante: TDBRadioGroup
    Left = 7
    Top = 6
    Width = 174
    Height = 114
    Caption = 'Sexante'
    Columns = 3
    DataField = 'sexante'
    DataSource = FormOrcamentos.DataSourceItensOrcamento
    Items.Strings = (
      'I'
      'II'
      'III'
      'IV'
      'V'
      'VI')
    TabOrder = 0
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
    OnClick = DBRHemiArcoClick
  end
  object DBRGArcada: TDBRadioGroup
    Left = 8
    Top = 8
    Width = 173
    Height = 112
    Caption = 'Arcada'
    DataField = 'Hemiarco'
    DataSource = FormOrcamentos.DataSourceItensOrcamento
    Items.Strings = (
      'Superior'
      'Inferior')
    TabOrder = 2
    TabStop = True
    Values.Strings = (
      'AS'
      'AI')
    OnClick = DBRHemiArcoClick
  end
  object GroupBoxSexanteN: TGroupBox
    Left = 8
    Top = 8
    Width = 173
    Height = 112
    Caption = 'Marque as Sexantes'
    TabOrder = 3
    object CheckBoxS1: TCheckBox
      Left = 8
      Top = 24
      Width = 33
      Height = 17
      Caption = 'I'
      TabOrder = 0
    end
    object CheckBoxS2: TCheckBox
      Left = 8
      Top = 60
      Width = 29
      Height = 17
      Caption = 'II'
      TabOrder = 1
    end
    object CheckBoxS3: TCheckBox
      Left = 68
      Top = 24
      Width = 31
      Height = 17
      Caption = 'III'
      TabOrder = 2
    end
    object CheckBoxS4: TCheckBox
      Left = 65
      Top = 60
      Width = 32
      Height = 17
      Caption = 'IV'
      TabOrder = 3
    end
    object CheckBoxS5: TCheckBox
      Left = 128
      Top = 24
      Width = 31
      Height = 17
      Caption = 'V'
      TabOrder = 4
    end
    object CheckBoxS6: TCheckBox
      Left = 128
      Top = 60
      Width = 31
      Height = 17
      Caption = 'VI'
      TabOrder = 5
    end
  end
  object CheckBoxTodasSex: TCheckBox
    Left = 8
    Top = 127
    Width = 148
    Height = 17
    Caption = 'Marcar todas as Sexantes'
    TabOrder = 4
    Visible = False
    OnClick = CheckBoxTodasSexClick
  end
end
