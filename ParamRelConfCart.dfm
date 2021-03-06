object FmParamRelConfCart: TFmParamRelConfCart
  Left = 165
  Top = 112
  Width = 343
  Height = 294
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Par'#226'metros Relat'#243'rio de confer'#234'ncia cart'#245'es'
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 15
    Width = 237
    Height = 51
    Caption = '&Intervalo de datas vencimento'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 114
      Top = 25
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object MaskEditDtIni: TMaskEdit
      Left = 25
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEditDtFim: TMaskEdit
      Left = 127
      Top = 20
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 71
    Width = 236
    Height = 51
    Caption = 'Tipo de Pagamento'
    TabOrder = 1
    object DBLCTpPagto: TDBLookupComboBox
      Left = 8
      Top = 22
      Width = 201
      Height = 21
      KeyField = 'Id_TipoPgto'
      ListField = 'Descricao_TipoPgto'
      ListSource = dsTpPagot
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 4
    Top = 135
    Width = 236
    Height = 51
    Caption = 'Tipo de Cobran'#231'a'
    TabOrder = 2
    object DBLCTpCobr: TDBLookupComboBox
      Left = 8
      Top = 22
      Width = 201
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DsTpCobr
      TabOrder = 0
    end
  end
  object BitBtn2: TBitBtn
    Left = 84
    Top = 192
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
  object BitBtnSair: TBitBtn
    Left = 164
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = False
    Kind = bkClose
  end
  object SDSTpPagto: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLconn
    DataSet.CommandText = 
      'select Descricao_TipoPgto  ds, Id_TipoPgto, cast(replicate('#39'0'#39',3' +
      ' - len(Id_TipoPgto)) + cast(Id_TipoPgto as varchar(3))  + '#39' '#39' + ' +
      'Descricao_TipoPgto as varchar(30)) Descricao_TipoPgto from Tipos' +
      '_Pagamentos'#13#10'WHERE ativo = 1'#13#10'order by 1'#13#10
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 120
    Top = 72
  end
  object dsTpPagot: TDataSource
    DataSet = SDSTpPagto
    Left = 192
    Top = 64
  end
  object DsTpCobr: TDataSource
    DataSet = SDSTpCobr
    Left = 192
    Top = 112
  end
  object SDSTpCobr: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLconn
    DataSet.CommandText = 
      'select descricao ds,codigo, cast(replicate('#39'0'#39',3 - len(codigo)) ' +
      '+ cast(codigo as varchar(3)) + '#39' '#39' + descricao as varchar(35)) a' +
      's descricao from tipoCobranca'#13#10'WHERE ativo = 1'#13#10'order by 1'#13#10
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 144
    Top = 112
  end
end
