object FormRepresentantes: TFormRepresentantes
  Left = 146
  Top = 96
  ActiveControl = DBEditCodigo
  BorderStyle = bsSingle
  Caption = 'Manutenção de Representantes'
  ClientHeight = 395
  ClientWidth = 567
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
    Width = 567
    Height = 354
    Align = alClient
    TabOrder = 0
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 565
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
        Left = 206
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
        Left = 386
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
        Left = 14
        Top = 164
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
        Left = 279
        Top = 163
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
      object SpeedButtonExtorno: TSpeedButton
        Left = 371
        Top = 178
        Width = 23
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        OnClick = SpeedButtonExtornoClick
      end
      object Label2: TLabel
        Left = 182
        Top = 163
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
      object DBEditCodigo: TDBEdit
        Left = 12
        Top = 20
        Width = 64
        Height = 21
        DataField = 'Codigo'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditNome: TDBEdit
        Left = 82
        Top = 20
        Width = 351
        Height = 21
        DataField = 'Nome'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditEndereco: TDBEdit
        Left = 12
        Top = 60
        Width = 267
        Height = 21
        DataField = 'Endereco'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditBairro: TDBEdit
        Left = 283
        Top = 60
        Width = 272
        Height = 21
        DataField = 'Bairro'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditCidade: TDBEdit
        Left = 12
        Top = 100
        Width = 157
        Height = 21
        DataField = 'Cidade'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditUF: TDBEdit
        Left = 174
        Top = 100
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Estado'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditCep: TDBEdit
        Left = 210
        Top = 100
        Width = 89
        Height = 21
        DataField = 'Cep'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditTelefone: TDBEdit
        Left = 303
        Top = 100
        Width = 114
        Height = 21
        DataField = 'Fone'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditFax: TDBEdit
        Left = 421
        Top = 99
        Width = 133
        Height = 21
        DataField = 'Fax'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditRG: TDBEdit
        Left = 206
        Top = 138
        Width = 175
        Height = 21
        DataField = 'RG'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditCPF: TDBEdit
        Left = 386
        Top = 138
        Width = 167
        Height = 21
        DataField = 'CNPJ_CPF'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyDown = DBEditNomeKeyDown
      end
      object EditProcura: TEdit
        Left = 82
        Top = 20
        Width = 443
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnChange = EditProcuraChange
        OnExit = EditProcuraExit
        OnKeyDown = DBEditNomeKeyDown
      end
      object BitBtnPesquisar: TBitBtn
        Left = 529
        Top = 20
        Width = 24
        Height = 21
        TabOrder = 17
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
        Width = 189
        Height = 21
        CharCase = ecLowerCase
        DataField = 'e_mail'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditDiaComissao: TDBEdit
        Left = 13
        Top = 178
        Width = 55
        Height = 21
        DataField = 'Dia_Comissao'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBCheckBox1: TDBCheckBox
        Left = 81
        Top = 182
        Width = 93
        Height = 17
        Caption = 'Com. Repres.'
        DataField = 'Comissa_Vendedor_Representante'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditExclusao: TDBEdit
        Left = 279
        Top = 178
        Width = 91
        Height = 21
        DataField = 'Data_Exclusao'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditInclusao: TDBEdit
        Left = 182
        Top = 178
        Width = 91
        Height = 21
        DataField = 'Data_Inclusao'
        DataSource = DataSourceRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyDown = DBEditNomeKeyDown
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 205
      Width = 565
      Height = 148
      Align = alClient
      BevelOuter = bvNone
      BevelWidth = 3
      Caption = 'Panel14'
      TabOrder = 1
      object DBGridRepresentantes: TDBGrid
        Left = 0
        Top = 0
        Width = 565
        Height = 148
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourceRepresentantes
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
    Top = 354
    Width = 567
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Panel4: TPanel
      Left = 476
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
      Width = 475
      Height = 39
      Align = alClient
      TabOrder = 1
      object DBNavigatorRepresentantes: TDBNavigator
        Left = 1
        Top = 1
        Width = 473
        Height = 37
        DataSource = DataSourceRepresentantes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object QueryRepresentantes: TQuery
    AfterInsert = QueryRepresentantesAfterInsert
    BeforePost = QueryRepresentantesBeforePost
    AfterPost = QueryRepresentantesAfterPost
    OnNewRecord = QueryRepresentantesNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Representante'
      'where Nome <> '#39#39
      'order by codigo')
    Left = 36
    Top = 260
    object QueryRepresentantesCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'MULTI.Representante.Codigo'
    end
    object QueryRepresentantesNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Representante.Nome'
      Size = 40
    end
    object QueryRepresentantesCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'MULTI.Representante.CNPJ_CPF'
      Size = 19
    end
    object QueryRepresentantesRg: TStringField
      FieldName = 'Rg'
      Origin = 'MULTI.Representante.Rg'
      Size = 12
    end
    object QueryRepresentantese_mail: TStringField
      FieldName = 'e_mail'
      Origin = 'MULTI.Representante.e_mail'
      Size = 30
    end
    object QueryRepresentantesEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'MULTI.Representante.Endereco'
      Size = 40
    end
    object QueryRepresentantesBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'MULTI.Representante.Bairro'
      Size = 40
    end
    object QueryRepresentantesCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Representante.Cidade'
      Size = 40
    end
    object QueryRepresentantesCep: TStringField
      FieldName = 'Cep'
      Origin = 'MULTI.Representante.Cep'
      Size = 10
    end
    object QueryRepresentantesDia_Comissao: TSmallintField
      FieldName = 'Dia_Comissao'
      Origin = 'MULTI.Representante.Dia_Comissao'
    end
    object QueryRepresentantesEstado: TStringField
      FieldName = 'Estado'
      Origin = 'MULTI.Representante.Estado'
      Size = 2
    end
    object QueryRepresentantesFone: TStringField
      FieldName = 'Fone'
      Origin = 'MULTI.Representante.Fone'
      Size = 18
    end
    object QueryRepresentantesFax: TStringField
      FieldName = 'Fax'
      Origin = 'MULTI.Representante.Fax'
      Size = 18
    end
    object QueryRepresentantesComissa_Vendedor_Representante: TBooleanField
      FieldName = 'Comissa_Vendedor_Representante'
      Origin = 'MULTI.Representante.Comissa_Vendedor_Representante'
    end
    object QueryRepresentantesData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Representante.Data_Exclusao'
      EditMask = '!99/99/0000;1;_'
    end
    object QueryRepresentantesData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
      Origin = 'MULTI.Representante.Data_Inclusao'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DataSourceRepresentantes: TDataSource
    DataSet = QueryRepresentantes
    Left = 40
    Top = 292
  end
  object Query50: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Nome from Representante'
      'where Nome > '#39#39
      'order by Nome')
    Left = 68
    Top = 263
    object Query50Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 35
    end
  end
end
