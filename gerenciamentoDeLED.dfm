object FmGerenciamentoLEADS: TFmGerenciamentoLEADS
  Left = 408
  Top = 136
  Width = 519
  Height = 500
  Caption = 'Gerenciamento de LADS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 394
    Top = 195
    Width = 105
    Height = 140
  end
  object Label1: TLabel
    Left = 24
    Top = 36
    Width = 29
    Height = 13
    Caption = #205'ndice'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 76
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 116
    Width = 24
    Height = 13
    Caption = 'DDD'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 61
    Top = 116
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 154
    Width = 27
    Height = 13
    Caption = 'e-mail'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 24
    Top = 198
    Width = 88
    Height = 13
    Caption = 'Origem do Contato'
  end
  object Label7: TLabel
    Left = 24
    Top = 240
    Width = 70
    Height = 13
    Caption = 'Representante'
  end
  object Label8: TLabel
    Left = 96
    Top = 36
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 224
    Top = 36
    Width = 44
    Height = 13
    Caption = 'Operador'
  end
  object Label10: TLabel
    Left = 24
    Top = 290
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label11: TLabel
    Left = 28
    Top = 330
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object LabelEmail: TLabel
    Left = 104
    Top = 241
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 192
    Top = 115
    Width = 33
    Height = 13
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 52
    Width = 65
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'indice'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 92
    Width = 458
    Height = 21
    CharCase = ecUpperCase
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 132
    Width = 28
    Height = 21
    DataField = 'ddd'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 59
    Top = 132
    Width = 124
    Height = 21
    DataField = 'fone'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 170
    Width = 456
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 96
    Top = 52
    Width = 118
    Height = 21
    TabStop = False
    Color = cl3DLight
    DataField = 'dtInclusao'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 260
    Width = 353
    Height = 21
    DataField = 'cdRepresentante'
    DataSource = DataSource1
    KeyField = 'codigo'
    ListField = 'nome'
    ListSource = DataSourceRepresentante
    TabOrder = 7
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 24
    Top = 212
    Width = 350
    Height = 21
    DataField = 'cdOrigemContato'
    DataSource = DataSource1
    KeyField = 'cdOrigemContato'
    ListField = 'descricao'
    ListSource = DataSourceOrigemContato
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 406
    Width = 360
    Height = 27
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 12
    BeforeAction = DBNavigator1BeforeAction
  end
  object Button1: TButton
    Left = 407
    Top = 202
    Width = 86
    Height = 27
    Caption = '&Gravar(ALT+G)'
    TabOrder = 10
    OnClick = Button1Click
  end
  object DBMemo1: TDBMemo
    Left = 28
    Top = 343
    Width = 457
    Height = 54
    DataField = 'observacao'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object Button2: TButton
    Left = 407
    Top = 234
    Width = 86
    Height = 25
    Caption = '&Novo(ALT+N)'
    TabOrder = 13
    TabStop = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 407
    Top = 297
    Width = 86
    Height = 25
    Caption = '&Sair(ALT+S)'
    TabOrder = 14
    OnClick = Button3Click
  end
  object EditNmOperador: TEdit
    Left = 224
    Top = 52
    Width = 135
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = cl3DLight
    ReadOnly = True
    TabOrder = 15
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 444
    Width = 503
    Height = 17
    Align = alBottom
    TabOrder = 16
  end
  object Button4: TButton
    Left = 407
    Top = 264
    Width = 85
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 17
    OnClick = Button4Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Caption = 'CADASTRO DE NOVOS LEADS(OPERAODRES)'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object DBCheckBox1: TDBCheckBox
    Left = 374
    Top = 54
    Width = 97
    Height = 17
    Caption = 'Enviado e-mail'
    DataField = 'enviadoEmail'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 19
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 24
    Top = 305
    Width = 353
    Height = 21
    DataField = 'cdStatus'
    DataSource = DataSource1
    Enabled = False
    KeyField = 'cdStatus'
    ListField = 'dsStatus'
    ListSource = DataSourceStatus
    TabOrder = 8
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 191
    Top = 132
    Width = 258
    Height = 21
    DataField = 'cdCidade'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'cd_cidade'
    ListField = 'ds_cidade'
    ListSource = DsCidade
    ParentFont = False
    TabOrder = 4
  end
  object AdoQueryGerenciametnoLEADS: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = AdoQueryGerenciametnoLEADSBeforePost
    BeforeDelete = AdoQueryGerenciametnoLEADSBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'select * from GerenciamentoLEADS where indice = '
      '0')
    Left = 424
    Top = 63
    object AdoQueryGerenciametnoLEADSindice: TIntegerField
      FieldName = 'indice'
    end
    object AdoQueryGerenciametnoLEADSnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object AdoQueryGerenciametnoLEADSddd: TSmallintField
      FieldName = 'ddd'
    end
    object AdoQueryGerenciametnoLEADSfone: TIntegerField
      FieldName = 'fone'
    end
    object AdoQueryGerenciametnoLEADSemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object AdoQueryGerenciametnoLEADScdOrigemContato: TSmallintField
      FieldName = 'cdOrigemContato'
    end
    object AdoQueryGerenciametnoLEADScdRepresentante: TSmallintField
      FieldName = 'cdRepresentante'
    end
    object AdoQueryGerenciametnoLEADSdtInclusao: TDateTimeField
      FieldName = 'dtInclusao'
    end
    object AdoQueryGerenciametnoLEADScdOperador: TIntegerField
      FieldName = 'cdOperador'
    end
    object AdoQueryGerenciametnoLEADScdStatus: TStringField
      FieldName = 'cdStatus'
      Size = 2
    end
    object AdoQueryGerenciametnoLEADSobservacao: TStringField
      FieldName = 'observacao'
      Size = 300
    end
    object AdoQueryGerenciametnoLEADSenviadoEmail: TBooleanField
      FieldName = 'enviadoEmail'
    end
    object AdoQueryGerenciametnoLEADSdtExclusao: TDateTimeField
      FieldName = 'dtExclusao'
    end
    object AdoQueryGerenciametnoLEADScdCidade: TSmallintField
      FieldName = 'cdCidade'
    end
  end
  object DataSource1: TDataSource
    DataSet = AdoQueryGerenciametnoLEADS
    Left = 200
    Top = 276
  end
  object ADOQueryRepresentante: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select codigo,nome from representante where data_exclusao is nul' +
        'l order by nome')
    Left = 112
    Top = 23
  end
  object DataSourceRepresentante: TDataSource
    DataSet = ADOQueryRepresentante
    Left = 328
    Top = 52
  end
  object DataSourceOrigemContato: TDataSource
    DataSet = ADOQueryOrigemContato
    Left = 232
    Top = 188
  end
  object ADOQueryOrigemContato: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from origemContatoLEADS where ativo = 1 order by descri' +
        'cao')
    Left = 40
    Top = 31
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer2Timer
    Left = 288
    Top = 244
  end
  object ADOQueryStatus: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from statusLEADS')
    Left = 168
    Top = 39
  end
  object DataSourceStatus: TDataSource
    DataSet = ADOQueryStatus
    Left = 256
    Top = 36
  end
  object QueryCidade: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from cidade order by ds_cidade')
    Left = 390
    Top = 226
  end
  object DsCidade: TDataSource
    DataSet = QueryCidade
    Left = 334
    Top = 237
  end
end
