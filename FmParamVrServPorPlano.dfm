object FmParamServicoPorPLano: TFmParamServicoPorPLano
  Left = 424
  Top = 122
  BorderStyle = bsDialog
  Caption = 'Valor de Servico Por plano'
  ClientHeight = 249
  ClientWidth = 488
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
  object GroupBox1: TGroupBox
    Left = 32
    Top = 16
    Width = 441
    Height = 209
    Caption = 'Informe o contratante ou selecione o plano'
    TabOrder = 0
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 11
      Top = 120
      Width = 414
      Height = 21
      DataField = 'Registro_Unico'
      DataSource = DataSource2
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource1
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 257
      Top = 160
      Width = 81
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = BitBtn1Click
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
      Left = 342
      Top = 160
      Width = 81
      Height = 25
      Caption = 'S&air'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      Kind = bkClose
    end
    object GroupBox3: TGroupBox
      Left = 9
      Top = 47
      Width = 422
      Height = 50
      Caption = 'Contratante'
      TabOrder = 0
      TabStop = True
      object EditCdContratante: TEdit
        Left = 8
        Top = 17
        Width = 74
        Height = 21
        Hint = 
          'digite o codigo do contratante ou clique no bot'#227'o para pesquisar' +
          ' por nome'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = EditCdContratanteKeyPress
      end
      object EditnmContratante: TEdit
        Left = 116
        Top = 17
        Width = 301
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtnPesquisaDentista: TBitBtn
        Left = 87
        Top = 17
        Width = 24
        Height = 21
        TabOrder = 2
        TabStop = False
        OnClick = BitBtnPesquisaDentistaClick
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
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select  descricao + '#39' ('#39' + CAST(codigo as varchar(10)) + '#39')'#39' as ' +
        'ds_plano,codigo,descricao  from plano where'
      'ativo = 1'
      'order by descricao')
    Left = 360
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 408
    Top = 24
  end
  object ADOQuery2: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from preferencia')
    Left = 224
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 296
    Top = 16
  end
end
