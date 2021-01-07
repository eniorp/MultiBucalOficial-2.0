object FmParamDentistaXCidade: TFmParamDentistaXCidade
  Left = 192
  Top = 125
  Width = 370
  Height = 255
  Caption = 'Relat'#243'rio de Dentista X Cidade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn2: TBitBtn
    Left = 177
    Top = 178
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 0
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
    Left = 260
    Top = 178
    Width = 75
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 313
    Height = 81
    Caption = 'Cidade Comercial do Dentista'
    TabOrder = 2
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 31
      Width = 273
      Height = 21
      KeyField = 'cidade'
      ListField = 'cidade'
      ListSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 96
    Width = 313
    Height = 77
    Caption = 'Tipo de Relat'#243'rio'
    TabOrder = 3
    object ComboBox1: TComboBox
      Left = 8
      Top = 36
      Width = 257
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Todos'
        'Dentistas Ativos'
        'Dentistas Inativos')
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryH
    Left = 208
    Top = 65528
  end
  object ADOQueryH: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 0 cd_cidade, '#39' TODAS'#39' cidade'
      'union'
      
        'select cd_cidade,ds_cidade from cidade where exists(select * fro' +
        'm endereco_x_dentista e where e.cd_cidade = cidade.cd_cidade and' +
        ' e.tp_endereco = '#39'C'#39') order by 1')
    Left = 128
    Top = 72
  end
end
