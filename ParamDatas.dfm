object FmParamData: TFmParamData
  Left = 202
  Top = 125
  BorderStyle = bsDialog
  Caption = 'FmParamData'
  ClientHeight = 196
  ClientWidth = 257
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3_: TLabel
    Left = 12
    Top = 104
    Width = 94
    Height = 13
    Caption = 'Tipo de Documento'
  end
  object BitBtnOk: TBitBtn
    Left = 77
    Top = 152
    Width = 78
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtnSair: TBitBtn
    Left = 161
    Top = 152
    Width = 78
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkCancel
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 10
    Width = 234
    Height = 89
    Caption = '&Intervalo de datas'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
    end
    object Label2: TLabel
      Left = 18
      Top = 57
      Width = 42
      Height = 13
      Caption = 'Data Fim'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 66
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnChange = MaskEditDtIniChange
    end
    object MaskEditDtFim: TMaskEdit
      Left = 65
      Top = 56
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnChange = MaskEditDtIniChange
    end
  end
  object ComboBox1: TComboBox
    Left = 10
    Top = 120
    Width = 232
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Todos'
      'Mensalidade'
      'Or'#231'amento'
      'Manuten'#231#227'o')
  end
  object CheckBox_Excel: TCheckBox
    Left = 87
    Top = 177
    Width = 65
    Height = 17
    Caption = 'Excel'
    TabOrder = 4
    Visible = False
  end
end
