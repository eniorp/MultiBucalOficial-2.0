object FormUsuarios: TFormUsuarios
  Left = 8
  Top = 113
  Width = 745
  Height = 445
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Usu'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 24
    Top = 172
    Width = 70
    Height = 13
    Caption = 'Representante'
  end
  object Panel1: TPanel
    Left = 0
    Top = 365
    Width = 729
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 386
      Height = 39
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object DBNavigatorOperador: TDBNavigator
        Left = 0
        Top = 0
        Width = 386
        Height = 39
        DataSource = DataSourceOperador
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        ConfirmDelete = False
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 387
      Top = 1
      Width = 341
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 267
        Top = 1
        Width = 69
        Height = 39
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
      object BitBtn3: TBitBtn
        Left = 180
        Top = 1
        Width = 84
        Height = 38
        Caption = 'Localizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn3Click
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
      object CheckBoxOcuExl: TCheckBox
        Left = 6
        Top = 12
        Width = 172
        Height = 17
        Caption = 'Ocutar usu'#225'rios Exclu'#237'dos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBoxOcuExlClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 217
    Align = alTop
    TabOrder = 1
    object Label15: TLabel
      Left = 10
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Nome Completo'
      FocusControl = DBEditNomeOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 10
      Top = 46
      Width = 43
      Height = 13
      Caption = 'Apelido'
      FocusControl = DBEditApelidoOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 10
      Top = 84
      Width = 40
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEditCidadeOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 156
      Top = 84
      Width = 17
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 114
      Top = 46
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEditEnderecoOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 377
      Top = 46
      Width = 34
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEditBairroOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 432
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Senha'
      FocusControl = DBEditSenhaOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 288
      Top = 84
      Width = 29
      Height = 13
      Caption = 'Fone'
      FocusControl = DBEditFoneOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 204
      Top = 84
      Width = 25
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEditCepOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 542
      Top = 84
      Width = 95
      Height = 13
      Caption = 'Banco de Dados'
      FocusControl = DBEditBairroOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 473
      Top = 6
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 694
      Top = 20
      Width = 22
      Height = 21
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 544
      Top = 46
      Width = 52
      Height = 13
      Caption = 'Exclus'#227'o'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 696
      Top = 60
      Width = 22
      Height = 21
      Hint = 'Apaga Data de Exclus'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 15
      Top = 133
      Width = 120
      Height = 13
      Caption = 'Grupo de funcion'#225'rio'
      FocusControl = DBEditCidadeOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 20
      Top = 157
      Width = 117
      Height = 13
      Caption = 'Visualizar baixas de '
      FocusControl = DBEditCidadeOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 44
      Top = 188
      Width = 84
      Height = 13
      Caption = 'Representante'
      FocusControl = DBEditCidadeOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditNomeOperador: TDBEdit
      Left = 10
      Top = 22
      Width = 455
      Height = 21
      DataField = 'Nome'
      DataSource = DataSourceOperador
      TabOrder = 0
    end
    object DBEditApelidoOperador: TDBEdit
      Left = 10
      Top = 60
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Apelido'
      DataSource = DataSourceOperador
      TabOrder = 2
    end
    object DBEditCidadeOperador: TDBEdit
      Left = 10
      Top = 98
      Width = 138
      Height = 21
      DataField = 'Cidade'
      DataSource = DataSourceOperador
      TabOrder = 5
    end
    object DBComboBoxEstadoOperador: TDBComboBox
      Left = 156
      Top = 98
      Width = 40
      Height = 19
      Style = csOwnerDrawFixed
      DataField = 'UF'
      DataSource = DataSourceOperador
      ItemHeight = 13
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      TabOrder = 6
    end
    object DBEditEnderecoOperador: TDBEdit
      Left = 114
      Top = 60
      Width = 255
      Height = 21
      DataField = 'Endereco'
      DataSource = DataSourceOperador
      TabOrder = 3
    end
    object DBEditBairroOperador: TDBEdit
      Left = 377
      Top = 60
      Width = 160
      Height = 21
      DataField = 'Bairro'
      DataSource = DataSourceOperador
      TabOrder = 4
    end
    object DBEditSenhaOperador: TDBEdit
      Left = 432
      Top = 98
      Width = 104
      Height = 21
      DataField = 'Senha'
      DataSource = DataSourceOperador
      PasswordChar = '*'
      TabOrder = 9
    end
    object DBEditFoneOperador: TDBEdit
      Left = 288
      Top = 98
      Width = 138
      Height = 21
      DataField = 'Fone'
      DataSource = DataSourceOperador
      TabOrder = 8
    end
    object DBEditCepOperador: TDBEdit
      Left = 204
      Top = 98
      Width = 78
      Height = 21
      DataField = 'CEP'
      DataSource = DataSourceOperador
      TabOrder = 7
    end
    object DBComboBoxBanco: TDBComboBox
      Left = 542
      Top = 98
      Width = 177
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'Banco_Dados'
      DataSource = DataSourceOperador
      ItemHeight = 16
      Items.Strings = (
        'Todos'
        'Ribeir'#227'o Preto'
        'Serrana')
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object BitBtn2: TBitBtn
      Left = 635
      Top = 122
      Width = 81
      Height = 25
      Caption = '&Especiais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5000555555555555577755555555555550B0555555555555F7F7555555555550
        00B05555555555577757555555555550B3B05555555555F7F557555555555000
        3B0555555555577755755555555500B3B0555555555577555755555555550B3B
        055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
        555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
        55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
        555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
        55555575FFFF7755555555570000755555555557777775555555}
      NumGlyphs = 2
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 544
      Top = 10
      Width = 144
      Height = 35
      Caption = 'Libera Odontograma'
      Columns = 2
      DataField = 'LiberaOdonto'
      DataSource = DataSourceOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 11
      Values.Strings = (
        'S'
        'N')
    end
    object DBEdit1: TDBEdit
      Left = 471
      Top = 21
      Width = 63
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'Codigo'
      DataSource = DataSourceOperador
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 544
      Top = 60
      Width = 147
      Height = 21
      DataField = 'dtExclusao'
      DataSource = DataSourceOperador
      TabOrder = 13
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 140
      Top = 130
      Width = 169
      Height = 21
      DataField = 'cd_grupo'
      DataSource = DataSourceOperador
      KeyField = 'cd_grupo'
      ListField = 'ds_grupo'
      ListSource = DsGrupo
      TabOrder = 14
    end
    object BitBtn4: TBitBtn
      Left = 491
      Top = 123
      Width = 131
      Height = 25
      Caption = '&Novas Permiss'#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5000555555555555577755555555555550B0555555555555F7F7555555555550
        00B05555555555577757555555555550B3B05555555555F7F557555555555000
        3B0555555555577755755555555500B3B0555555555577555755555555550B3B
        055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
        555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
        55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
        555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
        55555575FFFF7755555555570000755555555557777775555555}
      NumGlyphs = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 139
      Top = 154
      Width = 169
      Height = 21
      Hint = 
        'Se "TODOS" permite visualizar todos os tipos de baixa realizados' +
        ' (relat'#243'rio 08), sen'#227'o permite visualizar apenas o tipo de cobra' +
        'n'#231'a selecionado.'
      DataField = 'tp_baixa_visualiza'
      DataSource = DataSourceOperador
      KeyField = 'descricao'
      ListField = 'descricao'
      ListSource = DsTpCobranca
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 217
    Width = 729
    Height = 148
    Align = alClient
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 8
      Top = 3
      Width = 339
      Height = 202
      Caption = 'Procedimentos Dispon'#237'veis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBGridDisponiveis: TDBGrid
        Left = 2
        Top = 15
        Width = 335
        Height = 185
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourceDisponiveis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao_Grupo'
            Title.Caption = 'Grupo'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Procedimento'
            Title.Caption = 'Procedimento'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_SubProcedimento'
            Title.Caption = 'Sub Procedimento'
            Width = 121
            Visible = True
          end>
      end
    end
    object GroupBox3: TGroupBox
      Left = 391
      Top = 3
      Width = 339
      Height = 202
      Caption = 'Procedimentos Permitidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBGridPermitidos: TDBGrid
        Left = 2
        Top = 15
        Width = 335
        Height = 185
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourcePermissoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome_Grupo'
            Title.Caption = 'Grupo'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Procedimento'
            Title.Caption = 'Procedimento'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_SubProcedimento'
            Title.Caption = 'Sub Procedimento'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Somente_Leitura'
            Visible = True
          end>
      end
    end
    object BitBtnMandaUm: TBitBtn
      Left = 354
      Top = 31
      Width = 30
      Height = 31
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtnMandaUmClick
    end
    object BitBtnMandaTodos: TBitBtn
      Left = 354
      Top = 74
      Width = 30
      Height = 31
      Caption = '>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtnMandaTodosClick
    end
    object BitBtnRetornaUm: TBitBtn
      Left = 354
      Top = 116
      Width = 30
      Height = 31
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtnRetornaUmClick
    end
    object BitBtnRetornaTodos: TBitBtn
      Left = 354
      Top = 159
      Width = 30
      Height = 31
      Caption = '<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtnRetornaTodosClick
    end
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 139
    Top = 184
    Width = 307
    Height = 21
    DataField = 'cdRepresentante'
    DataSource = DataSourceOperador
    KeyField = 'codigo'
    ListField = 'nome'
    ListSource = DataSourceRepresentante
    TabOrder = 3
  end
  object QueryOperador: TQuery
    AfterInsert = QueryOperadorAfterInsert
    AfterEdit = QueryOperadorAfterEdit
    BeforePost = QueryOperadorBeforePost
    AfterPost = QueryOperadorAfterPost
    BeforeDelete = QueryOperadorBeforeDelete
    AfterScroll = QueryOperadorAfterScroll
    OnNewRecord = QueryOperadorNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Operador'
      'where dtExclusao is null'
      'order by Codigo'
      ' ')
    Left = 279
    Top = 222
    object QueryOperadorCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'PRONTO.Operador.Codigo'
    end
    object QueryOperadorNome: TStringField
      FieldName = 'Nome'
      Origin = 'PRONTO.Operador.Nome'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorApelido: TStringField
      FieldName = 'Apelido'
      Origin = 'PRONTO.Operador.Apelido'
    end
    object QueryOperadorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'PRONTO.Operador.Endereco'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'PRONTO.Operador.Bairro'
      FixedChar = True
    end
    object QueryOperadorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'PRONTO.Operador.Cidade'
      FixedChar = True
      Size = 30
    end
    object QueryOperadorUF: TStringField
      FieldName = 'UF'
      Origin = 'PRONTO.Operador.UF'
      FixedChar = True
      Size = 2
    end
    object QueryOperadorCep: TStringField
      FieldName = 'Cep'
      Origin = 'PRONTO.Operador.Cep'
      FixedChar = True
      Size = 9
    end
    object QueryOperadorFone: TStringField
      FieldName = 'Fone'
      Origin = 'PRONTO.Operador.Fone'
      FixedChar = True
      Size = 18
    end
    object QueryOperadorSenha: TStringField
      FieldName = 'Senha'
      Origin = 'PRONTO.Operador.Senha'
      OnChange = QueryOperadorSenhaChange
      Size = 10
    end
    object QueryOperadorBanco_Dados: TStringField
      FieldName = 'Banco_Dados'
      Origin = 'MULTI.Operador.Banco_Dados'
      Size = 14
    end
    object QueryOperadorLiberaOdonto: TStringField
      FieldName = 'LiberaOdonto'
      Origin = 'MULTI.Operador.LiberaOdonto'
      FixedChar = True
      Size = 1
    end
    object QueryOperadorestacaoTrab: TStringField
      FieldName = 'estacaoTrab'
      Origin = 'MULTI.Operador.estacaoTrab'
      Size = 50
    end
    object QueryOperadordtExclusao: TDateTimeField
      FieldName = 'dtExclusao'
      Origin = 'MULTI.Operador.dtExclusao'
    end
    object QueryOperadorcd_grupo: TSmallintField
      FieldName = 'cd_grupo'
      Origin = 'MULTI.Operador.cd_grupo'
    end
    object QueryOperadortp_baixa_visualiza: TStringField
      FieldName = 'tp_baixa_visualiza'
      Origin = 'MULTI.Operador.tp_baixa_visualiza'
      Size = 30
    end
    object QueryOperadorcdRepresentante: TSmallintField
      FieldName = 'cdRepresentante'
      Origin = 'MULTI.Operador.cdRepresentante'
    end
  end
  object DataSourcePermissoes: TDataSource
    DataSet = QueryPermissoes
    Left = 341
    Top = 250
  end
  object DataSourceOperador: TDataSource
    DataSet = QueryOperador
    OnDataChange = DataSourceOperadorDataChange
    Left = 341
    Top = 222
  end
  object DataSourceDisponiveis: TDataSource
    DataSet = QueryDisponiveis
    Left = 342
    Top = 196
  end
  object QueryDisponiveis: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * '
      'From Disponiveis d'
      'where not exists'
      '(select * from permissoes p'
      ' where'
      '     p.Codigo_Operador        = :operador'
      ' and p.Codigo_Grupo           = d.Codigo_Grupo'
      ' and p.Codigo_Procedimento    = d.Codigo_Procedimento'
      ' and p.Codigo_SubProcedimento = d.Codigo_SubProcedimento)'
      ''
      
        'Order By descricao_grupo,descricao_procedimento,descricao_subpro' +
        'cedimento')
    Left = 314
    Top = 194
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'operador'
        ParamType = ptUnknown
        Value = 22
      end>
    object QueryDisponiveisCodigo_Grupo: TIntegerField
      FieldName = 'Codigo_Grupo'
      Origin = 'PRONTO.Disponiveis.Codigo_Grupo'
    end
    object QueryDisponiveisCodigo_Procedimento: TIntegerField
      FieldName = 'Codigo_Procedimento'
      Origin = 'PRONTO.Disponiveis.Codigo_Procedimento'
    end
    object QueryDisponiveisDescricao_Grupo: TStringField
      FieldName = 'Descricao_Grupo'
      Origin = 'PRONTO.Disponiveis.Descricao_Grupo'
      FixedChar = True
      Size = 30
    end
    object QueryDisponiveisDescricao_Procedimento: TStringField
      FieldName = 'Descricao_Procedimento'
      Origin = 'PRONTO.Disponiveis.Descricao_Procedimento'
      FixedChar = True
      Size = 40
    end
    object QueryDisponiveisCodigo_SubProcedimento: TSmallintField
      FieldName = 'Codigo_SubProcedimento'
      Origin = 'MULTI.Disponiveis.Codigo_SubProcedimento'
    end
    object QueryDisponiveisDescricao_SubProcedimento: TStringField
      FieldName = 'Descricao_SubProcedimento'
      Origin = 'MULTI.Disponiveis.Descricao_SubProcedimento'
      Size = 40
    end
  end
  object QueryPermissoes: TQuery
    OnCalcFields = QueryPermissoesCalcFields
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * From Permissoes'
      ''
      '')
    Left = 312
    Top = 250
    object QueryPermissoesCodigo_Operador: TSmallintField
      FieldName = 'Codigo_Operador'
      Origin = 'MULTI.Permissoes.Codigo_Operador'
    end
    object QueryPermissoesCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
      Origin = 'MULTI.Permissoes.Codigo_Grupo'
    end
    object QueryPermissoesCodigo_Procedimento: TSmallintField
      FieldName = 'Codigo_Procedimento'
      Origin = 'MULTI.Permissoes.Codigo_Procedimento'
    end
    object QueryPermissoesCodigo_SubProcedimento: TSmallintField
      FieldName = 'Codigo_SubProcedimento'
      Origin = 'MULTI.Permissoes.Codigo_SubProcedimento'
    end
    object QueryPermissoesNome_Grupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_Grupo'
      Size = 30
      Calculated = True
    end
    object QueryPermissoesNome_Procedimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_Procedimento'
      Size = 40
      Calculated = True
    end
    object QueryPermissoesNome_SubProcedimento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_SubProcedimento'
      Size = 40
      Calculated = True
    end
    object QueryPermissoesSomente_Leitura: TBooleanField
      FieldName = 'Somente_Leitura'
      Origin = 'MULTI.Permissoes.Somente_Leitura'
    end
  end
  object QueryDisponiveisAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Disponiveis')
    Left = 312
    Top = 278
    object QueryDisponiveisAuxiliarCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
      Origin = 'MULTI.Disponiveis.Codigo_Grupo'
    end
    object QueryDisponiveisAuxiliarCodigo_Procedimento: TSmallintField
      FieldName = 'Codigo_Procedimento'
      Origin = 'MULTI.Disponiveis.Codigo_Procedimento'
    end
    object QueryDisponiveisAuxiliarCodigo_SubProcedimento: TSmallintField
      FieldName = 'Codigo_SubProcedimento'
      Origin = 'MULTI.Disponiveis.Codigo_SubProcedimento'
    end
    object QueryDisponiveisAuxiliarDescricao_Grupo: TStringField
      FieldName = 'Descricao_Grupo'
      Origin = 'MULTI.Disponiveis.Descricao_Grupo'
      Size = 30
    end
    object QueryDisponiveisAuxiliarDescricao_Procedimento: TStringField
      FieldName = 'Descricao_Procedimento'
      Origin = 'MULTI.Disponiveis.Descricao_Procedimento'
      Size = 40
    end
    object QueryDisponiveisAuxiliarDescricao_SubProcedimento: TStringField
      FieldName = 'Descricao_SubProcedimento'
      Origin = 'MULTI.Disponiveis.Descricao_SubProcedimento'
      Size = 40
    end
  end
  object ADOQueryGrupo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from grupo_funcionario order by  2')
    Left = 186
    Top = 224
  end
  object DsGrupo: TDataSource
    DataSet = ADOQueryGrupo
    Left = 186
    Top = 280
  end
  object DsTpCobranca: TDataSource
    DataSet = ADOQueryTpCobranca
    Left = 408
    Top = 24
  end
  object ADOQueryTpCobranca: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select '#39'TODOS'#39'  descricao '
      'UNION'
      
        'select descricao from  TipoCobranca where ativo = 1 order by des' +
        'cricao ')
    Left = 344
    Top = 24
  end
  object DataSourceRepresentante: TDataSource
    DataSet = ADOQueryRepresentante
    Left = 488
    Top = 168
  end
  object ADOQueryRepresentante: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select codigo,nome from representante where data_exclusao is nul' +
        'l order by nome')
    Left = 416
    Top = 155
  end
end
