object FormVendedores: TFormVendedores
  Left = 194
  Top = 109
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Manutenção de Vendedores'
  ClientHeight = 385
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 344
    Align = alClient
    TabOrder = 0
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 606
      Height = 204
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label6: TLabel
        Left = 12
        Top = 6
        Width = 40
        Height = 13
        Caption = 'Código'
        FocusControl = DBEditCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 82
        Top = 6
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Top = 46
        Width = 55
        Height = 13
        Caption = 'Endereço'
        FocusControl = DBEditEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 283
        Top = 46
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEditBairro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 12
        Top = 86
        Width = 40
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEditCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 174
        Top = 86
        Width = 17
        Height = 13
        Caption = 'UF'
        FocusControl = DBEditUF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 210
        Top = 86
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEditCep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 303
        Top = 86
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEditTelefone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 421
        Top = 85
        Width = 21
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEditFax
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 174
        Top = 124
        Width = 19
        Height = 13
        Caption = 'RG'
        FocusControl = DBEditRG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 293
        Top = 124
        Width = 61
        Height = 13
        Caption = 'CNPJ/CPF'
        FocusControl = DBEditCPF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 12
        Top = 124
        Width = 30
        Height = 13
        Caption = 'email'
        FocusControl = DBEditemail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 412
        Top = 125
        Width = 52
        Height = 13
        Caption = 'Dia Com.'
        FocusControl = DBEditDiaComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 12
        Top = 162
        Width = 98
        Height = 13
        Caption = 'Data Nascimento'
        FocusControl = DBEditDataNascimento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 114
        Top = 162
        Width = 49
        Height = 13
        Caption = 'Inclusão'
        FocusControl = DBEditInclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 216
        Top = 162
        Width = 52
        Height = 13
        Caption = 'Exclusão'
        FocusControl = DBEditExclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 318
        Top = 162
        Width = 84
        Height = 13
        Caption = 'Representante'
        FocusControl = DBEditExclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 493
        Top = 32
        Width = 44
        Height = 13
        Caption = 'excluidos'
      end
      object Bevel1: TBevel
        Left = 464
        Top = 8
        Width = 129
        Height = 45
      end
      object DBEditCodigo: TDBEdit
        Left = 12
        Top = 20
        Width = 64
        Height = 21
        DataField = 'Codigo'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditNome: TDBEdit
        Left = 82
        Top = 20
        Width = 351
        Height = 21
        DataField = 'Nome'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditEndereco: TDBEdit
        Left = 12
        Top = 60
        Width = 267
        Height = 21
        DataField = 'Endereco'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditBairro: TDBEdit
        Left = 283
        Top = 60
        Width = 320
        Height = 21
        DataField = 'Bairro'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditCidade: TDBEdit
        Left = 12
        Top = 100
        Width = 157
        Height = 21
        DataField = 'Cidade'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditUF: TDBEdit
        Left = 174
        Top = 100
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Estado'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditCep: TDBEdit
        Left = 210
        Top = 100
        Width = 89
        Height = 21
        DataField = 'Cep'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditTelefone: TDBEdit
        Left = 303
        Top = 100
        Width = 114
        Height = 21
        DataField = 'Fone'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditFax: TDBEdit
        Left = 421
        Top = 99
        Width = 180
        Height = 21
        DataField = 'Fax'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditRG: TDBEdit
        Left = 174
        Top = 138
        Width = 114
        Height = 21
        DataField = 'RG'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditCPF: TDBEdit
        Left = 293
        Top = 138
        Width = 114
        Height = 21
        DataField = 'CNPJ_CPF'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyDown = DBEditCodigoKeyDown
      end
      object EditProcura: TEdit
        Left = 82
        Top = 20
        Width = 350
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnChange = EditProcuraChange
        OnExit = EditProcuraExit
        OnKeyDown = DBEditCodigoKeyDown
      end
      object BitBtnPesquisar: TBitBtn
        Left = 436
        Top = 20
        Width = 24
        Height = 21
        TabOrder = 18
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
      object DBEditemail: TDBEdit
        Left = 12
        Top = 138
        Width = 157
        Height = 21
        CharCase = ecLowerCase
        DataField = 'e_mail'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditDiaComissao: TDBEdit
        Left = 412
        Top = 138
        Width = 55
        Height = 21
        DataField = 'Dia_Comissao'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditDataNascimento: TDBEdit
        Left = 12
        Top = 176
        Width = 97
        Height = 21
        DataField = 'Data_Nascimento'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditInclusao: TDBEdit
        Left = 114
        Top = 176
        Width = 97
        Height = 21
        DataField = 'Data_Inclusao'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBEditExclusao: TDBEdit
        Left = 216
        Top = 176
        Width = 97
        Height = 21
        DataField = 'Data_Exclusao'
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyDown = DBEditCodigoKeyDown
      end
      object DBLookupComboBoxRepresentante: TDBLookupComboBox
        Left = 318
        Top = 176
        Width = 280
        Height = 21
        DataField = 'Representante'
        DataSource = DataSourceVendedores
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = DataSourceRepresentante
        TabOrder = 16
        OnKeyDown = DBEditCodigoKeyDown
      end
      object CheckBox1: TCheckBox
        Left = 472
        Top = 16
        Width = 116
        Height = 17
        Caption = '&Mostrar vendedores'
        TabOrder = 19
        OnClick = CheckBox1Click
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 205
      Width = 606
      Height = 138
      Align = alClient
      BevelOuter = bvNone
      BevelWidth = 3
      Caption = 'Panel14'
      TabOrder = 1
      object DBGridRepresentantes: TDBGrid
        Left = 0
        Top = 0
        Width = 606
        Height = 138
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourceVendedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'Código'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Title.Caption = 'Endereço'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fax'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Rg'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dia_Comissao'
            Title.Caption = 'Dia Comissão'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 608
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Panel4: TPanel
      Left = 517
      Top = 1
      Width = 90
      Height = 39
      Align = alRight
      TabOrder = 0
      object BitBtnSair: TBitBtn
        Left = 1
        Top = 1
        Width = 88
        Height = 37
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Kind = bkClose
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 516
      Height = 39
      Align = alClient
      TabOrder = 1
      object DBNavigatorRepresentantes: TDBNavigator
        Left = 1
        Top = 1
        Width = 514
        Height = 37
        DataSource = DataSourceVendedores
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object QueryVendedores: TQuery
    AfterInsert = QueryVendedoresAfterInsert
    AfterPost = QueryVendedoresAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Vendedor'
      'where Nome <> '#39#39
      'and data_exclusao is null order by Nome')
    Left = 26
    Top = 228
    object QueryVendedoresCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Vendedor.Codigo'
    end
    object QueryVendedoresNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Vendedor.Nome'
      Size = 40
    end
    object QueryVendedoresCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'MULTI.Vendedor.CNPJ_CPF'
      Size = 18
    end
    object QueryVendedoresRg: TStringField
      FieldName = 'Rg'
      Origin = 'MULTI.Vendedor.Rg'
      Size = 15
    end
    object QueryVendedoresEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'MULTI.Vendedor.Endereco'
      Size = 40
    end
    object QueryVendedoresBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'MULTI.Vendedor.Bairro'
      Size = 30
    end
    object QueryVendedoresCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Vendedor.Cidade'
      Size = 30
    end
    object QueryVendedoresCep: TStringField
      FieldName = 'Cep'
      Origin = 'MULTI.Vendedor.Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object QueryVendedoresData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
      Origin = 'MULTI.Vendedor.Data_Inclusao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryVendedoresData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Vendedor.Data_Exclusao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryVendedoresData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
      Origin = 'MULTI.Vendedor.Data_Nascimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryVendedorese_mail: TStringField
      FieldName = 'e_mail'
      Origin = 'MULTI.Vendedor.e_mail'
      Size = 30
    end
    object QueryVendedoresFone: TStringField
      FieldName = 'Fone'
      Origin = 'MULTI.Vendedor.Fone'
      Size = 12
    end
    object QueryVendedoresFax: TStringField
      FieldName = 'Fax'
      Origin = 'MULTI.Vendedor.Fax'
      Size = 12
    end
    object QueryVendedoresRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'MULTI.Vendedor.Representante'
    end
    object QueryVendedoresDia_Comissao: TSmallintField
      FieldName = 'Dia_Comissao'
      Origin = 'MULTI.Vendedor.Dia_Comissao'
    end
    object QueryVendedoresEstado: TStringField
      FieldName = 'Estado'
      Origin = 'MULTI.Vendedor.Estado'
      Size = 2
    end
  end
  object DataSourceVendedores: TDataSource
    DataSet = QueryVendedores
    Left = 36
    Top = 288
  end
  object Query50: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Nome from Vendedor'
      'where Nome > '#39#39
      'order by Nome')
    Left = 104
    Top = 229
    object Query50Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 35
    end
  end
  object QueryRepresentantes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Representante'
      'order by Nome')
    Left = 65
    Top = 289
    object QueryRepresentantesCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'MULTI.Representante.Codigo'
    end
    object QueryRepresentantesNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Representante.Nome'
      Size = 40
    end
  end
  object DataSourceRepresentante: TDataSource
    DataSet = QueryRepresentantes
    Left = 95
    Top = 289
  end
end
