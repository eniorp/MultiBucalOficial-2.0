object FmDadosBancario: TFmDadosBancario
  Left = 409
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Dados Banc'#225'rio '
  ClientHeight = 326
  ClientWidth = 351
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
    Left = 124
    Top = 83
    Width = 31
    Height = 13
    Caption = 'Banco'
  end
  object Label2: TLabel
    Left = 116
    Top = 115
    Width = 39
    Height = 13
    Caption = 'Ag'#234'ncia'
  end
  object Label3: TLabel
    Left = 127
    Top = 148
    Width = 28
    Height = 13
    Caption = 'Conta'
  end
  object Label4: TLabel
    Left = 103
    Top = 19
    Width = 52
    Height = 13
    Caption = 'Tipo Pagto'
  end
  object Label5: TLabel
    Left = 91
    Top = 177
    Width = 64
    Height = 13
    Caption = 'Nr 1'#186' Cheque'
  end
  object Label6: TLabel
    Left = 96
    Top = 208
    Width = 59
    Height = 13
    Caption = 'Valor a Vista'
  end
  object Label7: TLabel
    Left = 91
    Top = 237
    Width = 64
    Height = 13
    Caption = 'In'#237'cio Vencto'
  end
  object Label8: TLabel
    Left = 3
    Top = 264
    Width = 158
    Height = 13
    Caption = 'Corrigir Vencto a partir da Parcela'
  end
  object Label9: TLabel
    Left = 84
    Top = 50
    Width = 70
    Height = 13
    Caption = 'Tipo Cobran'#231'a'
  end
  object Edit1: TEdit
    Left = 168
    Top = 80
    Width = 175
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 168
    Top = 112
    Width = 175
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Edit3: TEdit
    Left = 168
    Top = 144
    Width = 175
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 15
    Width = 177
    Height = 21
    KeyField = 'Id_TipoPgto'
    ListField = 'Descricao_TipoPgto'
    ListSource = DsTpPagto
    TabOrder = 0
    OnClick = Edit1Change
  end
  object Edit4: TEdit
    Left = 168
    Top = 173
    Width = 175
    Height = 21
    TabOrder = 5
    OnChange = Edit1Change
  end
  object EditVrVista: TEdit
    Left = 168
    Top = 205
    Width = 175
    Height = 21
    TabOrder = 6
    OnChange = Edit1Change
  end
  object MaskEditIniVencto: TMaskEdit
    Left = 168
    Top = 232
    Width = 177
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 7
    Text = '  /  /    '
  end
  object EditParcela: TEdit
    Left = 168
    Top = 260
    Width = 175
    Height = 21
    TabOrder = 8
    OnChange = Edit1Change
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 166
    Top = 46
    Width = 177
    Height = 21
    KeyField = 'codigo'
    ListField = 'descricao'
    ListSource = DataSource1
    TabOrder = 1
    OnClick = Edit1Change
  end
  object Button1: TButton
    Left = 144
    Top = 294
    Width = 75
    Height = 25
    Caption = 'Ok'
    Enabled = False
    TabOrder = 9
    OnClick = Button1Click
  end
  object ADOQueryTpPagto: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from Tipos_Pagamentos where ativo = 1'
      'order by Descricao_TipoPgto')
    Left = 152
    Top = 72
  end
  object DsTpPagto: TDataSource
    DataSet = ADOQueryTpPagto
    Left = 184
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TIPOCOBRANCA WHERE ATIVO = 1 ORDER BY DESCRICAO'
      ''
      '')
    Left = 50
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 82
    Top = 128
  end
end
