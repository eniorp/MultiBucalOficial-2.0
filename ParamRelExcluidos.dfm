object FmParamRelExcluidos: TFmParamRelExcluidos
  Left = 256
  Top = 124
  Width = 361
  Height = 366
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Contratantes exclu'#237'dos'
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
    Left = 12
    Top = 7
    Width = 309
    Height = 51
    Caption = '&Intervalo de Exclus'#227'o'
    TabOrder = 0
    OnExit = GroupBox1Exit
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
  object RadioGroupTpRel: TRadioGroup
    Left = 14
    Top = 64
    Width = 307
    Height = 88
    Caption = 'Tipo de Relat'#243'rio'
    ItemIndex = 2
    Items.Strings = (
      'Pessoa &F'#237'sica'
      'Pessoa &Jur'#237'dica'
      '&Ambos')
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 219
    Width = 309
    Height = 59
    Caption = 'Classifica'#231#227'o'
    TabOrder = 3
    object cboOrdenacao: TComboBox
      Left = 64
      Top = 24
      Width = 233
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Nome de Contratante'
      Items.Strings = (
        'Nome de Contratante'
        'Data de Exclus'#227'o'
        'Data de Inclus'#227'o')
    end
  end
  object Button1: TButton
    Left = 17
    Top = 281
    Width = 144
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 177
    Top = 281
    Width = 144
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object GroupBox3: TGroupBox
    Left = 11
    Top = 155
    Width = 309
    Height = 59
    Caption = 'Cidade'
    TabOrder = 2
    object cboCidade: TDBLookupComboBox
      Left = 38
      Top = 23
      Width = 249
      Height = 21
      DataField = 'cd_cidade_res'
      DataSource = DataSource2
      KeyField = 'cd_cidade_res'
      ListField = 'ds_cidade'
      ListSource = DataSource1
      TabOrder = 0
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'set dateformat dmy select distinct cd_cidade_res, c.ds_cidade  f' +
        'rom contratante co, cidade c where  c.cd_cidade = co.cd_cidade_r' +
        'es and Exclusao between '#39'01/12/2016'#39' and '#39'31/12/2016'#39' ')
    Left = 216
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 152
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'set dateformat dmy select distinct cd_cidade_res, c.ds_cidade  f' +
        'rom contratante co, cidade c where  c.cd_cidade = co.cd_cidade_r' +
        'es and Exclusao between '#39'01/12/2016'#39' and '#39'31/12/2016'#39' ')
    Left = 216
    Top = 64
  end
end
