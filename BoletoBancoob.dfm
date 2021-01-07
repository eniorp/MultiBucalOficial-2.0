object FmBoletoBancoob: TFmBoletoBancoob
  Left = 470
  Top = 226
  Width = 337
  Height = 296
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gera Boleto Banc'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 29
    Top = 47
    Width = 44
    Height = 13
    Caption = 'Tipo Doc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelContratante: TLabel
    Left = 3
    Top = 135
    Width = 73
    Height = 13
    Caption = 'C'#243'd Contrat De'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 45
    Top = 165
    Width = 28
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 80
    Width = 64
    Height = 13
    Caption = 'Vencto Inicial'
  end
  object Label3: TLabel
    Left = 14
    Top = 110
    Width = 59
    Height = 13
    Caption = 'Vencto Final'
  end
  object Label4: TLabel
    Left = 29
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ComboBoxTipoCobranca: TComboBox
    Left = 79
    Top = 45
    Width = 198
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Manuten'#231#227'o'
      'Mensalidade'
      'Or'#231'amento'
      'Reapresenta'#231#227'o'
      'Desconto em Folha')
  end
  object EditCodigo: TEdit
    Left = 79
    Top = 133
    Width = 82
    Height = 21
    TabOrder = 4
    OnExit = EditCodigoExit
  end
  object BitBtnPesquisar: TBitBtn
    Left = 168
    Top = 133
    Width = 24
    Height = 21
    TabOrder = 6
    OnClick = BitBtnPesquisarClick
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
  object Edit1: TEdit
    Left = 79
    Top = 164
    Width = 198
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 5
  end
  object Button1: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Gerar Boletos'
    TabOrder = 7
    OnClick = Button1Click
  end
  object MaskEditDtIni: TMaskEdit
    Left = 79
    Top = 76
    Width = 84
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object MaskEditDtFim: TMaskEdit
    Left = 79
    Top = 105
    Width = 85
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object Button2: TButton
    Left = 88
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = Button2Click
  end
  object BitBtnSair: TBitBtn
    Left = 239
    Top = 216
    Width = 81
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Kind = bkClose
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 80
    Top = 16
    Width = 195
    Height = 21
    DataField = 'Banco'
    DataSource = DataSource2
    KeyField = 'Banco'
    ListField = 'Nome_Banco'
    ListSource = DataSource1
    TabOrder = 0
  end
  object chkSomenteEmpresas: TCheckBox
    Left = 80
    Top = 188
    Width = 113
    Height = 17
    Caption = 'Somente Empresas'
    TabOrder = 10
  end
  object btnSalvar: TButton
    Left = 166
    Top = 216
    Width = 72
    Height = 25
    Caption = 'Salvar'
    TabOrder = 11
    OnClick = btnSalvarClick
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = DM.QueryContasBanco
    Left = 56
    Top = 64
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from contas_banco order by banco desc')
    Left = 112
    Top = 40
  end
end
