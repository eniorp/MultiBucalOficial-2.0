object FormDentistas: TFormDentistas
  Left = 422
  Top = 141
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o dos Dentistas'
  ClientHeight = 577
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 683
    Height = 577
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheetDados: TTabSheet
      Caption = '&Dados Cadastrais'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 675
        Height = 549
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel8: TPanel
          Left = 2
          Top = 2
          Width = 671
          Height = 453
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object Label6: TLabel
            Left = 6
            Top = 6
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEditCodigo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 75
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
          object Label19: TLabel
            Left = 112
            Top = 127
            Width = 86
            Height = 13
            Caption = 'Tel Consult'#243'rio'
            FocusControl = DBEditTelefone1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 411
            Top = 127
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
          object Label21: TLabel
            Left = 245
            Top = 172
            Width = 83
            Height = 13
            Caption = 'Data Exclus'#227'o'
            FocusControl = DBEditExclusao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 6
            Top = 169
            Width = 34
            Height = 13
            Caption = 'e-mail'
            FocusControl = DBEditemail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 206
            Top = 127
            Width = 89
            Height = 13
            Caption = 'Tel Residencial'
            FocusControl = DBEditTelefone2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 297
            Top = 127
            Width = 40
            Height = 13
            Caption = 'Celular'
            FocusControl = DBEditCelular
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 6
            Top = 42
            Width = 39
            Height = 13
            Caption = 'Clinica'
            FocusControl = DBEditNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButtonExtorno: TSpeedButton
            Left = 559
            Top = 185
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
          object Label13: TLabel
            Left = 6
            Top = 266
            Width = 100
            Height = 13
            Caption = 'Acrescimo NF (%)'
            FocusControl = DBEditAcrecimo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 9
            Top = 307
            Width = 76
            Height = 13
            Caption = 'Desconto (%)'
            FocusControl = DBEditDesconto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 6
            Top = 86
            Width = 24
            Height = 13
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 297
            Top = 88
            Width = 100
            Height = 13
            Caption = 'INSS(Aut'#244'nomos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 75
            Top = 42
            Width = 77
            Height = 13
            Caption = 'Nome Cl'#237'nica'
            FocusControl = DBEditNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 112
            Top = 87
            Width = 27
            Height = 13
            Caption = 'R.G.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 206
            Top = 88
            Width = 27
            Height = 13
            Caption = 'CRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 411
            Top = 87
            Width = 70
            Height = 13
            Caption = 'Estado C'#237'vil'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 6
            Top = 127
            Width = 87
            Height = 13
            Caption = 'Data Forma'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 150
            Top = 171
            Width = 80
            Height = 13
            Caption = 'Data Inclus'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 380
            Top = 172
            Width = 94
            Height = 13
            Caption = 'Motivo Exclus'#227'o'
            FocusControl = DBEditExclusao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 9
            Top = 347
            Width = 75
            Height = 13
            Caption = #217'lt Altera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 9
            Top = 387
            Width = 34
            Height = 13
            Caption = 'CNES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 251
            Top = 216
            Width = 291
            Height = 13
            Caption = 'Lan'#231'a pacotes do odontograma automaticamente ?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 11
            Top = 209
            Width = 84
            Height = 13
            Caption = 'Dt Nascimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 169
            Top = 239
            Width = 76
            Height = 13
            Caption = 'Credenciador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 368
            Top = 240
            Width = 69
            Height = 13
            Caption = 'Nivel_Glosa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEditCodigo: TDBEdit
            Left = 6
            Top = 20
            Width = 64
            Height = 21
            DataField = 'Codigo'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = DBEditCodigoExit
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditNome: TDBEdit
            Left = 75
            Top = 20
            Width = 479
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Nome'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEditNomeKeyDown
          end
          object BitBtnPesquisar: TBitBtn
            Left = 558
            Top = 20
            Width = 24
            Height = 21
            TabOrder = 24
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
          object DBEditTelefone1: TDBEdit
            Left = 112
            Top = 141
            Width = 83
            Height = 21
            DataField = 'Fone1'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditFax: TDBEdit
            Left = 409
            Top = 141
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Fax'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditExclusao: TDBEdit
            Left = 245
            Top = 186
            Width = 114
            Height = 21
            DataField = 'Data_Exclusao'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditemail: TDBEdit
            Left = 6
            Top = 183
            Width = 136
            Height = 21
            CharCase = ecLowerCase
            DataField = 'email'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditTelefone2: TDBEdit
            Left = 206
            Top = 141
            Width = 82
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Fone2'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditCelular: TDBEdit
            Left = 297
            Top = 141
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Celular'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditClinica: TDBEdit
            Left = 6
            Top = 58
            Width = 63
            Height = 21
            DataField = 'Codigo_Clinica'
            DataSource = DataSourceDentistas
            TabOrder = 2
            OnKeyDown = DBEditNomeKeyDown
          end
          object BitBtnPesquisaClinica: TBitBtn
            Left = 559
            Top = 58
            Width = 23
            Height = 21
            TabOrder = 25
            OnClick = BitBtnPesquisaClinicaClick
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
          object DBEditAcrecimo: TDBEdit
            Left = 6
            Top = 280
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Acrescimo_NF'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditDesconto: TDBEdit
            Left = 7
            Top = 321
            Width = 96
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Desconto'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditCic: TDBEdit
            Left = 6
            Top = 100
            Width = 101
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIC'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEditInss: TDBEdit
            Left = 297
            Top = 102
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INSS'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyDown = DBEditNomeKeyDown
          end
          object EditNmClinica: TEdit
            Left = 73
            Top = 58
            Width = 481
            Height = 21
            CharCase = ecUpperCase
            ReadOnly = True
            TabOrder = 26
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEdit1: TDBEdit
            Left = 112
            Top = 101
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'rg'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEdit2: TDBEdit
            Left = 206
            Top = 102
            Width = 82
            Height = 21
            CharCase = ecUpperCase
            DataField = 'cro'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyDown = DBEditNomeKeyDown
            OnKeyPress = DBEdit2KeyPress
          end
          object DBComboBoxEstadoCivil: TDBComboBox
            Left = 409
            Top = 100
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'E_Civil'
            DataSource = DataSourceDentistas
            ItemHeight = 16
            Items.Strings = (
              'Casado(a)'
              'Divorciado(a)'
              'Solteiro(a)'
              'Vi'#250'vo(a)')
            TabOrder = 7
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEdit3: TDBEdit
            Left = 6
            Top = 141
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'dt_formacao'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEdit4: TDBEdit
            Left = 148
            Top = 185
            Width = 92
            Height = 21
            DataField = 'dt_inclusao'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 377
            Top = 185
            Width = 177
            Height = 21
            DataField = 'cd_motivo_exclusao'
            DataSource = DataSourceDentistas
            KeyField = 'Codigo'
            ListField = 'Descricao'
            ListSource = DataSourceCancelamento
            TabOrder = 16
            OnKeyDown = DBEditNomeKeyDown
          end
          object GroupBoxEsp: TGroupBox
            Left = 164
            Top = 288
            Width = 392
            Height = 155
            Caption = 'Especialidades'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 27
            object DBGrid1: TDBGrid
              Left = 2
              Top = 33
              Width = 388
              Height = 120
              Align = alClient
              DataSource = DsEspXDent
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnKeyPress = DBGrid1KeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cd_especialidade'
                  Title.Caption = 'c'#243'd'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ds_especialidade'
                  PickList.Strings = (
                    'test'
                    'teste')
                  Title.Caption = 'Especialidade'
                  Width = 143
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'AnoFormacao'
                  Title.Caption = 'Ano forma'#231#227'o'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'principal'
                  Title.Caption = 'Principal(S/N)'
                  Visible = True
                end>
            end
            object DBNavigator1: TDBNavigator
              Left = 2
              Top = 15
              Width = 388
              Height = 18
              DataSource = DsEspXDent
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alTop
              Flat = True
              TabOrder = 1
            end
          end
          object EditAlter: TEdit
            Left = 8
            Top = 365
            Width = 95
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 28
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 399
            Width = 84
            Height = 21
            Hint = 'ANS - Cadastro Nacional Estabelecimento Sa'#250'de'
            CharCase = ecUpperCase
            DataField = 'cnes'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnKeyDown = DBEditNomeKeyDown
            OnKeyPress = DBEdit6KeyPress
          end
          object Button1: TButton
            Left = 101
            Top = 398
            Width = 58
            Height = 25
            Caption = 'Tab Pagto'
            TabOrder = 29
            OnClick = Button1Click
          end
          object DBComboBox1: TDBComboBox
            Left = 546
            Top = 211
            Width = 47
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'lanca_pkg_orcamento'
            DataSource = DataSourceDentistas
            ItemHeight = 16
            Items.Strings = (
              'S'
              'N')
            TabOrder = 18
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBCheckBox9: TDBCheckBox
            Left = 112
            Top = 216
            Width = 135
            Height = 17
            Caption = 'Exibir na Nominata'
            DataField = 'exibir'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 30
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdit22: TDBEdit
            Left = 9
            Top = 223
            Width = 93
            Height = 21
            DataField = 'dt_nascimento'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 17
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 168
            Top = 256
            Width = 177
            Height = 21
            DataField = 'cd_credenciador'
            DataSource = DataSourceDentistas
            KeyField = 'cd_credenciador'
            ListField = 'nm_credenciador'
            ListSource = DsCredenciador
            TabOrder = 21
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBComboBox2: TDBComboBox
            Left = 368
            Top = 256
            Width = 145
            Height = 21
            DataField = 'Nivel_Glosa'
            DataSource = DataSourceDentistas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              'VERDE'
              'AMARELO'
              'VERMELHO')
            ParentFont = False
            TabOrder = 22
            OnChange = DBComboBox2Change
            OnKeyDown = DBEditNomeKeyDown
            OnKeyPress = DBComboBox2KeyPress
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 455
          Width = 671
          Height = 92
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 667
            Height = 88
            Align = alClient
            TabOrder = 0
            object Panel4: TPanel
              Left = 576
              Top = 1
              Width = 90
              Height = 86
              Align = alRight
              TabOrder = 0
              object BitBtnSair: TBitBtn
                Left = 3
                Top = 1
                Width = 87
                Height = 25
                Caption = '&Sair'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                TabStop = False
                Kind = bkClose
              end
            end
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 575
              Height = 86
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object DBNavigatorDentistas: TDBNavigator
                Left = 0
                Top = 0
                Width = 575
                Height = 86
                DataSource = DataSourceDentistas
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                Align = alClient
                Flat = True
                TabOrder = 0
              end
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&Endere'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 2
      ParentFont = False
      object Label20: TLabel
        Left = 8
        Top = 24
        Width = 135
        Height = 13
        Caption = 'Endere'#231'os Cadastrados'
      end
      object DBText2: TDBText
        Left = 231
        Top = 12
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = True
        DataField = 'Nome'
        DataSource = DataSourceDentistas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 40
        Width = 201
        Height = 409
        TabStop = False
        DataSource = DsEndDentista
        Options = [dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'ds_endereco'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 220
        Top = 38
        Width = 437
        Height = 451
        Caption = 'Dados do Endere'#231'o'
        TabOrder = 1
        object Label31: TLabel
          Left = 8
          Top = 95
          Width = 65
          Height = 13
          Caption = 'Logradouro'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 8
          Top = 227
          Width = 34
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 8
          Top = 266
          Width = 40
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 280
          Top = 228
          Width = 25
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 8
          Top = 55
          Width = 111
          Height = 13
          Caption = 'T'#237'tulo do Endere'#231'o'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 53
          Top = 226
          Width = 65
          Height = 17
          DataField = 'bairro'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 12
          Top = 131
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 132
          Top = 131
          Width = 76
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 10
          Top = 175
          Width = 40
          Height = 13
          Caption = 'Fone 1'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 130
          Top = 174
          Width = 40
          Height = 13
          Caption = 'Fone 2'
          FocusControl = DBEdit20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 235
          Top = 173
          Width = 40
          Height = 13
          Caption = 'Fone 3'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 109
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          DataField = 'logradouro'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEdit8: TDBEdit
          Left = 280
          Top = 242
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cep'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 8
          Top = 280
          Width = 205
          Height = 21
          DataField = 'cd_cidade'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cd_cidade'
          ListField = 'ds_cidade'
          ListSource = DsCidade
          ParentFont = False
          TabOrder = 9
          OnKeyDown = DBEditNomeKeyDown
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 303
          Width = 361
          Height = 48
          Caption = 'Hor'#225'rio de Atendimento Neste Endere'#231'o'
          TabOrder = 10
          object Label36: TLabel
            Left = 8
            Top = 19
            Width = 34
            Height = 13
            Caption = 'In'#237'cio'
          end
          object Label37: TLabel
            Left = 104
            Top = 19
            Width = 20
            Height = 13
            Caption = 'Fim'
          end
          object DBEdit9: TDBEdit
            Left = 48
            Top = 16
            Width = 48
            Height = 21
            DataField = 'hr_ini_atend'
            DataSource = DsEndDentista
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = DBEditNomeKeyDown
          end
          object DBEdit10: TDBEdit
            Left = 128
            Top = 16
            Width = 48
            Height = 21
            DataField = 'hr_fim_atend'
            DataSource = DsEndDentista
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBEdit10Exit
            OnKeyDown = DBEditNomeKeyDown
          end
        end
        object Panel6: TPanel
          Left = 2
          Top = 424
          Width = 433
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel6'
          TabOrder = 11
          object Panel7: TPanel
            Left = 368
            Top = 0
            Width = 65
            Height = 25
            Align = alRight
            TabOrder = 0
            object BitBtn1: TBitBtn
              Left = 1
              Top = 2
              Width = 63
              Height = 23
              Caption = '&Sair'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TabStop = False
              Kind = bkClose
            end
          end
          object DBNavigator2: TDBNavigator
            Left = 0
            Top = 0
            Width = 368
            Height = 25
            DataSource = DsEndDentista
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
            Align = alClient
            TabOrder = 1
          end
        end
        object DBEdit11: TDBEdit
          Left = 11
          Top = 71
          Width = 357
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ds_endereco'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEditNomeKeyDown
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 358
          Width = 361
          Height = 48
          Caption = '&Dias da semana que atende neste endere'#231'o'
          TabOrder = 12
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 21
            Width = 45
            Height = 17
            Caption = '&Seg'
            DataField = 'SEG'
            DataSource = DsEndDentista
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 69
            Top = 21
            Width = 45
            Height = 17
            Caption = '&Ter'
            DataField = 'ter'
            DataSource = DsEndDentista
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 123
            Top = 21
            Width = 48
            Height = 17
            Caption = '&Qua'
            DataField = 'qua'
            DataSource = DsEndDentista
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 176
            Top = 21
            Width = 48
            Height = 17
            Caption = 'Q&ui'
            DataField = 'qui'
            DataSource = DsEndDentista
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 230
            Top = 21
            Width = 48
            Height = 17
            Caption = 'S&ex'
            DataField = 'sex'
            DataSource = DsEndDentista
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 283
            Top = 21
            Width = 48
            Height = 17
            Caption = 'S&ab'
            DataField = 'sab'
            DataSource = DsEndDentista
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 8
          Top = 243
          Width = 249
          Height = 21
          DataField = 'cd_bairro'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cd_bairro'
          ListField = 'ds_bairro'
          ListSource = DsBairro
          ParentFont = False
          TabOrder = 7
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 11
          Top = 16
          Width = 361
          Height = 31
          Caption = 'Tipo'
          Columns = 2
          DataField = 'tp_endereco'
          DataSource = DsEndDentista
          Items.Strings = (
            'Comercial'
            'Residencial')
          TabOrder = 13
          Values.Strings = (
            'C'
            'R')
        end
        object DBEdit18: TDBEdit
          Left = 6
          Top = 145
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEdit19: TDBEdit
          Left = 134
          Top = 145
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          DataField = 'complemento'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEdit7: TDBEdit
          Left = 7
          Top = 189
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'fone1'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEdit20: TDBEdit
          Left = 127
          Top = 188
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'fone2'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEdit21: TDBEdit
          Left = 232
          Top = 187
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'fone3'
          DataSource = DsEndDentista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyDown = DBEditNomeKeyDown
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Complemento'
      ImageIndex = 2
      object Label40: TLabel
        Left = 24
        Top = 24
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object Label57: TLabel
        Left = 312
        Top = 264
        Width = 163
        Height = 13
        Caption = 'Qtde. de Dias para vencto de guia'
        FocusControl = DBEdit23
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 40
        Width = 449
        Height = 137
        DataField = 'obs'
        DataSource = DataSourceDentistas
        MaxLength = 2000
        TabOrder = 0
      end
      object DBNavigator3: TDBNavigator
        Left = 4
        Top = 400
        Width = 444
        Height = 25
        DataSource = DataSourceDentistas
        VisibleButtons = [nbEdit, nbPost, nbCancel]
        Flat = True
        TabOrder = 1
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 16
        Top = 184
        Width = 113
        Height = 57
        Caption = 'Houve altera'#231#227'o?'
        DataField = 'alterado'
        DataSource = DataSourceDentistas
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object GroupBox4: TGroupBox
        Left = 136
        Top = 184
        Width = 160
        Height = 56
        Caption = 'Data '#218'ltimo Envio Para Gr'#225'fica'
        TabOrder = 3
        object DBEdit12: TDBEdit
          Left = 10
          Top = 20
          Width = 138
          Height = 21
          DataField = 'dt_envio_grafica'
          DataSource = DataSourceDentistas
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 16
        Top = 264
        Width = 281
        Height = 113
        Caption = 'Dados Banc'#225'rios'
        TabOrder = 4
        object Label47: TLabel
          Left = 68
          Top = 24
          Width = 31
          Height = 13
          Caption = 'Banco'
        end
        object Label48: TLabel
          Left = 60
          Top = 54
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object Label49: TLabel
          Left = 7
          Top = 85
          Width = 92
          Height = 13
          Caption = 'Conta Corrente/DG'
        end
        object DBEdit14: TDBEdit
          Left = 106
          Top = 20
          Width = 138
          Height = 21
          DataField = 'banco'
          DataSource = DataSourceDentistas
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 106
          Top = 50
          Width = 138
          Height = 21
          DataField = 'agencia'
          DataSource = DataSourceDentistas
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 106
          Top = 80
          Width = 138
          Height = 21
          DataField = 'contaCorrente'
          DataSource = DataSourceDentistas
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 250
          Top = 81
          Width = 24
          Height = 21
          DataField = 'digitoCC'
          DataSource = DataSourceDentistas
          TabOrder = 3
        end
      end
      object DBCheckBox7: TDBCheckBox
        Left = 16
        Top = 247
        Width = 201
        Height = 17
        Caption = 'Recebimento via dep'#243'sito banc'#225'rio'
        DataField = 'lg_recebimento_deposito'
        DataSource = DataSourceDentistas
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GroupBox8: TGroupBox
        Left = 306
        Top = 186
        Width = 281
        Height = 56
        Caption = 'Tabela de Qtde de US'
        TabOrder = 6
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 7
          Top = 21
          Width = 265
          Height = 21
          DataField = 'cd_tabelaQTUS'
          DataSource = DataSourceDentistas
          KeyField = 'cd_tabela'
          ListField = 'ds_tabela'
          ListSource = dsTabelaQtUS
          TabOrder = 0
        end
      end
      object DBEdit23: TDBEdit
        Left = 312
        Top = 280
        Width = 134
        Height = 21
        DataField = 'DiasVenctoOrc'
        DataSource = DataSourceDentistas
        ReadOnly = True
        TabOrder = 7
      end
      object DBCheckBox8: TDBCheckBox
        Left = 312
        Top = 312
        Width = 225
        Height = 17
        Caption = 'Dispensado de Justificar Panoramica'
        DataField = 'autorizado_panoramica'
        DataSource = DataSourceDentistas
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'os &Antigos'
      ImageIndex = 1
      object Label39: TLabel
        Left = 41
        Top = 43
        Width = 468
        Height = 24
        Caption = 'Estes dados foram mantidos apenas para consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBoxComercial: TGroupBox
        Left = 5
        Top = 221
        Width = 553
        Height = 103
        Caption = 'Endere'#231'o Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 6
          Top = 18
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEditEndereco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 275
          Top = 18
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
          Left = 6
          Top = 58
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
          Left = 175
          Top = 58
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
          Left = 204
          Top = 58
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
        object DBEditEndereco: TDBEdit
          Left = 6
          Top = 32
          Width = 267
          Height = 21
          DataField = 'Endereco_Comercial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditBairro: TDBEdit
          Left = 275
          Top = 32
          Width = 272
          Height = 21
          DataField = 'Bairro_Comercial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCidade: TDBEdit
          Left = 6
          Top = 72
          Width = 157
          Height = 21
          DataField = 'Cidade_Comercial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditUF: TDBEdit
          Left = 168
          Top = 72
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Estado_Comercial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCep: TDBEdit
          Left = 204
          Top = 72
          Width = 89
          Height = 21
          DataField = 'Cep_Comercial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          OnKeyDown = DBEditNomeKeyDown
        end
      end
      object GroupBoxResidencial: TGroupBox
        Left = 6
        Top = 96
        Width = 553
        Height = 102
        Caption = 'Endere'#231'o Residencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 18
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEditEnderecoResidencial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 275
          Top = 18
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEditBairroResidencial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 58
          Width = 40
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEditCidadeResidencial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 168
          Top = 58
          Width = 17
          Height = 13
          Caption = 'UF'
          FocusControl = DBEditEstadoResidencial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 204
          Top = 58
          Width = 25
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEditCepResidencial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEditEnderecoResidencial: TDBEdit
          Left = 6
          Top = 32
          Width = 267
          Height = 21
          DataField = 'Endereco_Residencial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditBairroResidencial: TDBEdit
          Left = 275
          Top = 32
          Width = 272
          Height = 21
          DataField = 'Bairro_Residencial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCidadeResidencial: TDBEdit
          Left = 6
          Top = 72
          Width = 157
          Height = 21
          DataField = 'Cidade_Residencial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditEstadoResidencial: TDBEdit
          Left = 168
          Top = 72
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Estado_Residencial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCepResidencial: TDBEdit
          Left = 204
          Top = 72
          Width = 89
          Height = 21
          DataField = 'Cep_Residencial'
          DataSource = DataSourceDentistas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          OnKeyDown = DBEditNomeKeyDown
        end
      end
    end
    object TabSheetContatos: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 4
      object GroupBox5: TGroupBox
        Left = 16
        Top = 16
        Width = 569
        Height = 361
        Caption = 'Registros de Contatos com o Dentista'
        TabOrder = 0
        object Label67: TLabel
          Left = 276
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Data Contato'
          FocusControl = DBEditDataContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 276
          Top = 60
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 278
          Top = 106
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label45: TLabel
          Left = 421
          Top = 52
          Width = 63
          Height = 13
          Caption = 'Data Sistema'
          FocusControl = DBEditDataContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEditDataContato: TDBEdit
          Left = 276
          Top = 34
          Width = 114
          Height = 21
          DataField = 'data'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditNomeOperador: TEdit
          Left = 276
          Top = 74
          Width = 127
          Height = 21
          Color = clInactiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = 'EditNomeOperador'
        end
        object DBMemoTexto: TDBMemo
          Left = 272
          Top = 128
          Width = 281
          Height = 145
          DataField = 'ds_contato'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 1000
          ParentFont = False
          TabOrder = 2
        end
        object DBNavigator4: TDBNavigator
          Left = 273
          Top = 281
          Width = 280
          Height = 31
          DataSource = DsContato
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 420
          Top = 73
          Width = 114
          Height = 21
          Color = clInactiveBorder
          DataField = 'dt_sistema'
          DataSource = DsContato
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 16
          Width = 257
          Height = 295
          Caption = 'Contatos realizados'
          TabOrder = 5
          object DBGrid3: TDBGrid
            Left = 6
            Top = 19
            Width = 246
            Height = 267
            DataSource = DsContato
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'data'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'resumo'
                Title.Caption = 'Resumo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cd_operador'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dt_sistema'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Foto'
      ImageIndex = 5
      object Button2: TButton
        Left = 184
        Top = 440
        Width = 289
        Height = 25
        Caption = 'Incluir Foto'
        TabOrder = 0
        OnClick = Button2Click
      end
      object GroupBox9: TGroupBox
        Left = 112
        Top = 16
        Width = 449
        Height = 409
        Caption = 'Foto Dentista'
        TabOrder = 1
        object Image1: TImage
          Left = 2
          Top = 15
          Width = 382
          Height = 387
          Align = alClient
          AutoSize = True
          Center = True
          Picture.Data = {
            0A544A504547496D61676569B40000FFD8FFE000104A46494600010101006000
            600000FFDB0043000302020302020303030304030304050805050404050A0707
            06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
            1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
            1414141414141414141414141414141414141414141414141414141414141414
            14141414141414141414141414FFC00011080183017E03011100021101031101
            FFC4001D000001050101010100000000000000000004020305060701080009FF
            C400511000020102040305050505040705050900010203041100051221063141
            07132251611432718191082342A1B1155262C1D10972E1F0162433538292F125
            4363A2B2173473B4C22635465466747693B3FFC4001C01000203010101010000
            00000000000000000201030405060708FFC4002A110002020104020202020203
            010000000000010211030412213113410522325114611571233342B1FFDA000C
            03010002110311003F00F3CF02E6337FA07C37182AC172DA600587FBA5C7CF35
            58272D4646BF6FFF00A7BAD3B5E087FA5FFC26466338DB5116E801DB19D69323
            2D724822924CC27FF614753552335818A2637F4D81C5CBE3F33F41E5C68B5657
            D9B71FE7840A1E0FCF2A758B831E5936923CAE52D8B97C5E67E8A9EA71AF65B7
            29FB3276C99B056A6E06CC29C31DCD418A02BEA7BC75C5F1F87C8FB287F21857
            B2E397FD883B67CCECB34194E5F195E75B995CFC088D5F1A63F0F32A7F278516
            BCABFB3B78E6720E61C5992D229E6B02CD311F50831A17C2C7DB287F2D15D22D
            F957F67041A57F6A71DD44C6FE2145972C7F42EEDFA63447E27147B297F2F2F5
            12D996FF00677767B4AC0D6E6DC45991EAAD591C6BF45407F3C688FC66146697
            C9E49745AF2CFB0DF63D97682DC3B5556C86E0D4E6B5441F8812007E16C6A8E8
            F0C7D19DEB734BD975CAFECE9D9864F614DC0790965E4D3D124C7EAE09C3F830
            C7A4532CF95FFE8B550F03F0EE58C868B21CB290A7BBDC52469A7E830C941748
            A9E5CBFB26805500002C312DC57B12EC1EA733A2A004D4554307FF0011D57F5C
            56F3635FFA1B6C990B5FDA570AE5609A8E20CBA33D57DA549FA02714BD6635EC
            6F149FA2B1987DA378032E6647CF524753EEC31B31FD308F5F044FF1E4CAE669
            F6B7E08CB436835B5006DABBB5517F99C677AF87A2C5A79156CD3EDC5C354A97
            A7CB5E561FBF5883F200938AFF00C9574875A5BED953CCFEDDB51246C32EC912
            E79318A597F4005F7C677ADCCFA1D69E2BD954ACFB66F1D57A489474C69CF352
            B4086FE9E26DBE78A5EA73BF658B040ACE79F6AAED11A89E6ABAA7A0818E9134
            D591D1ADFF00BC010309BF3C8758F12329E23FB59D78D7155768D95452A36E8B
            98BD5B1FF92D865873CB9A2C52847A450EBBED6393BB69AFE2CA99E5B9FBCA1C
            A9DAE3E32037C5AB4795F2439C7B395BF693CAF86F8772DE2282BB3CCC61CCE4
            9E1A7105353432078880FA8DC326E56C45F6C5AB4191F6C479A28CFB36FB5CB6
            66DFFDC3595654EA0F996772B807E013F9E2E8FC73F62BCAFD154CD3ED2D9E54
            B134F9164111DECF3D23CEE3D35349FCB17C74315D8AF348EF1D76DFC6797663
            4A72DCD21CAE8EAE869AB228A92829C5BBC8958D99A32FEF13CCE2F869B0A74D
            153C8DF251735ED7B8D33552957C5B9CB27EE455B244BFF2A1031AE3A6C6BA42
            3C8C2FB2AE20ABAEED172D8EAEAA6AC1531D452BFB4CCD26A0F038EA7CED81E0
            8AF42BC8BD99ED44F0D34D220440C188B2A81D717422BD89B931B12EA17B5AFD
            316ED886F2E39C1F68ECC38625B5DA1ADACA737E43757FFEBC52A2AC5722965B
            D41F862FE974165C7B20A8EE78F69D010167A4AC81F57201A9A4FE606127D2E0
            4B29E5EC48DB6DB6C3C5FF00437A1A94DE293E17C12E4565ABB4B3AB8D73293F
            DE0497EAA30AAC8E4AB8E43DDC3B4C9A2E3C73511D6E43C18DB6A5CA844DA772
            74C8C07E98AD2E48A29FA940BBB2AF4F33F1DB0ED05137C40EC385386DD999E1
            44A848E55005FEF49208E9CF0A828AF248A18EB595C0E8A40FE58185163E21AC
            39864F96D3C7DE3CF96C5ECEF1C86E54162C08200B8E9BE04415A58A5A870740
            084E9277DAFB75C4C80BF7EDBC8A4CDA9B31E25C85734A6445A56A786B0C0E04
            63486F091727CAE3E38502C19571AF095366B0CF9070EE4394BA481D06614351
            592784DF9BD4CA01B0DACBCF05D810F99F68FC47595351365F9FD2655493CACE
            A994D0250BADCF530C486FF3BE0009E12CFF0089E6CEEA24AEE23CD7302B0100
            CD532CB6BB0FDF6F4C4501FB47F659FB33F661987D9D3B2BCDEAF83F2FADCC6B
            F84F2AA9A99AAC3CDDE4925244EEDA5D8A8BB126C05B19FC70BB68D2B5195249
            3375CAFB22E07C8995B2FE0FC868DD793C39742AC3E616F864A0BD092CD965EC
            B35350D351268A7823A74F28D028FCB129A2B7293EC7AC2DD310E51FD8B52112
            CF14035C8E8807562062BF2C57B276B64555719E45417F68CE286123986A9504
            7E7847A98A19636C84ABED8F83E8F5F799F529D3FEED8B81F12062B96AA0B9B1
            BC4CAAE69F6A1E0ACBE3731CD515DA45CFB3C637F85C8C6697C8C5748B160655
            2B7ED9FC3914265A5C9EB64037FBF658B6E7EB8CD2F927E90EB4E53388BEDD6D
            97D334B064D490A917067A8D7D7C815DB1965F2393D22D5A7452732FB73F1256
            C8528E5CBE9803EED2D3995D7EA18633CB5D998FE081019AFDAC3B41CE54C54B
            5F5A757E28298446DFF9713E6CF35D8EB1E3457B33ED938E2B2955B31AEAD95B
            75635B988810FAEE5AD854B3C86B8AE8CB38A3B694CBBBF5AFE37C832F7DA4EE
            8E65ED120B58ECA82E3CAD6F961D69B34F90F2A441F1A76E395F056671E539EF
            12E6351347695A0A5A5F0C61C065D0428D8820FBDC88EB89C5A2CB26C9F22A28
            75DF6A5E11F6BEF05071256E9F755A744427CEC653FA0C6E8FC7647ECA659085
            CDFED5B4331BE5BC0F4A920F177B98D5F786FF00DD4403EA4F3C5D1F8D8DDB23
            C839C41F697E248B81787337CB20CAA8330AB9EB21AAD143DE46A6365D0115D8
            D8E9604DEF8BE3A1C698AF219ED67DA3FB45AA6671C4D24018DF4D351D3C407A
            0D31DFF3C6B5A5C697457655733E3FE24E229A59F31E20CD2A9E4D9CCB5B2907
            D34EAB5BD3962C5A7820B2C4B5AD57D854F4D2399451F122C963BED2D35F71E6
            4A1FCF0BE34B270236505A5B0DB1A36858CB4B8B1448DC5CEA2BBDBFB1CCBE03
            EF65D9DCE015E7A65891ADF5538A946A41B8A6997BAC5B417637254779B60A15
            B2DFC723BEE1EE09AE0ECCB3E4E2224F206295E3B6DE41462A847ECC8297AB7C
            5DEC4658FB39AE197F685C333B7B82BE253BDF666D27FF005621F0044F13D0AE
            5F9FE634CFEF53D54919F931C4C46237585361C861905976A42951D8E5513B9A
            5CF435FCBBC8147FF46297F911652C3826E14B8FE10716A14B1F675582878EF2
            4A8951A28854047661B85605797FC585920A20B315922AFA94EEC8D32B0F74DF
            99E98852A44D03F7724C08D12D8FF011FC8E21C828B0F13A57710D5C55EA8244
            34F146CECDEEB2A816E9BEDE588B0DA47D2F0ED5CAFE35551E77E5F2B6F84792
            86DA5B23E129F30C8E8E299D2A596565815E3B305BEE011B95BDF9F5EB8ADE51
            B60443D9CD5C51F7CB4721A7D5A35240A509E76D4E3D3CF09E41B69211E410D5
            53227B3D243245EE3B5DDEDD46840140FF008B02C84B457ABFB3DA0CA28CD566
            79C088BDFBB81235EF5F7E61351207A9B62C52B2B681E6C9EA38811E7A08A656
            48D637590AFDF28160C749B03E9BFCB0DE4A23611F4BD9FE7534E806532E9620
            13DEA2102FBEE4ED83C81B0B1E75D9FE77535F333E588F4A86E8A66B3DAD6BB1
            B9B93E77C1E644EC645E4F92459656A4F5D97D422C64949A9A6074B0E9BAEE7E
            784F25878D8AAB4E119D1FBF7CFE85C0BA0758E4466F51E1B0F9E1D4911B0E70
            D679FE8DACF252CA69D26365964934A301D025C9BF99BE1D342EC3F5D7B14FB6
            42704FD9EBB32CA5B86DC365FC2B965389A79ACB2F774912EA000E46D7E78E06
            6D74A13947F4CBE386D276767FED0CADAC4658E972DCBCB0D6A6437363CB9B9D
            FAE31CB5F3FD172C08A9E7DF6E6E2BAF58D72ECC6A191B676A5A05201B8DC1D2
            079F5C532D66597458B14515DCE3ED25C779CA2AC755C43346C7C45A411ADFA7
            261CFCFA79633F933CCB6308A295C47DB1712CA55EB2AF2FCBE38E425CE679AC
            61DEE05810C4F97202FE670EA19E42BDA8808BED0B97E58A643C6BC330CBA6C4
            24C6A594F50BA08F4E98D0B4B9DF626F8A2B39AFDA63869A6692BF8C6A6B251C
            FD972B66D3E7632272F527EB8B1E872B42DAEC67B45EDC725E07E21932ACD973
            ECD6AA951678E5A29E38602245D4A7C2CBCC1DFC3D30D8FE3DBED91E4A335AFF
            00B56F7AA529B84602031292667984B53B7404055FD4E372F8C8F646F642D7FD
            AAB8ADC114397F0F655E4F4D96976E9FEF6471D3CB1AA3F1F8D7683C8C90ECEF
            B7AE31CFF34CF29B30CF5A479726AD9290474F0C222A8440E8C3BB4517B2B73B
            F3C13D1C157D48F2998E6DDA5F15E6D50DEDDC4D9BD503B90D5D285FF943587D
            317E3C314AA85DE8AD55549AB93BC9C99E473BC92F898FCCEF8D6A114A921370
            C3C8AC92280006D8002D6E98878C2ECBFF006B7593E65986419AD5789B31C968
            E70DCF947A08BFC50FE58CD8A3F761667DDE13B9E7D71B7A22C587D862524C86
            CB752CC959D92555391792873C496FFBA934041F80BC18CAD2B11B2A424E9CF1
            A13554167DAF13482CB770B4EB370471950B31F045495C8BEA929427E9362A95
            29A26CA9B3163726E7CF0C9F24D891D70EA5CB0A2CD91FDFF01713457B7B2D45
            2D6017F7BDF43B7CC62A6E98514F9EAED7187B2066179AA2509046D248FB0540
            589F90C4D8AD9ACD67679C53C4BD97F08C341C359AD554D24F588FA68E450B1B
            38752490000751DEFE78AD3A6C82BDFF00B18E26A6909CC4E57920500139966D
            4D09FF0093596FCB06FE4563EBC0D4DC2F9851555671665534914E92470E5D15
            44ECEC18100168D13E7A8E25B208BE3FACCBABB8C335ABA7A7A971513BCEBADC
            22598DC58006E37E771898B1915C497BB3734F4EABD0599ADF56C5910B2D1935
            50AAE19CDE9C4AB04178A62A6108A6452C0599479123C5E78A9FE4056D65D624
            2CBDE3725D521DBE439E277531E893C8B2F96A269236A396A219001E10C0A91B
            8DD46DBF9E12520A2DD53D9F66D1CCE4C50524280697A9902122D7B59D958FF3
            C51B8648E5364F2C4CA65A882417DD8ADC5FD00385722D48B3FECBA6ABA38295
            EB3D9A38834A252C8B7BF45420B1F3D88184730A00A5C825EF045057545431DC
            0EEA18ADE97D4C4FE584726C7A0CE22C9F2DA5AA8D27AAA898CB1011C3AA472C
            00F158AAAA8DFF008B11560C068BB42CB726A234B95E4F33E62965BD890B6F35
            20DC7F789DF0DB44B202A339E21CC6A82D4D42D22331601E4D007A7771D81F86
            8C3ED4882528B2CCA92BBDA5729F6CA990ECB50344517A817058FAB838572A19
            224C66D52EA6331A0DEC047CBE40E2A722C4892467852332B4AA586E1516FF00
            FAB6FA60DCC9A085AB823B8686690922CCD31D43E1E5846D8C9224294C4E1824
            3525DC7889656FD70AE6D13407A516411D5C31C69D19E9831F990306E636C4C7
            2AAA164D291D30AB8D46CDA63B7D19B6C329488D88AFE4FF006816C9F86728A1
            A0E10CA8CF47470539ABAE9649FBC28814BE85D1A6F6BDB56D7EB869682139B9
            3F6CC9197081F30FB44F17553B353B65996822C3D8E810D87A779AFD7162F8EC
            64EE212A7B69E3BAB84C72715662919E694EEB07FF00E617177F1312F41B890E
            32E26CCF88FB36E10CC2A2BEAAAA48E5ADCBAA5E69D9CBBA3ACA9AEE773A25EB
            E5858E1C69F41BCCE4C688C4E807E206372846846CEF79B6DCBCB13B51070C9A
            6370CBBB5C06F4382489B342ED7AB24CDA2E0ACD5CF78D5BC3D4CA5BCDE32F1B
            FE8319B1AFB30B339660391B8F3F3C6D4C41039E0B02D9D9756C743DA270FB4C
            8B245354FB3307E444A8D15BE1E3C53324AF55C0F495534528FBC8DCC4C3D54D
            B0B0EC2C60BDCDF1790258779B62082F3C501B31ECCB826B9CEB7A7F6BCB9DAC
            2F6494BA2F2E8AF8CA95486B28E09F2B7A6367A0B384E21905A384E4153C35C5
            F40A6EED470D5AAF998A600FCED29C54C82069F25AFAC37481954723232C6BF5
            6207E78B17403B2E54B4EE055E6597D2DBDE09299D87FF00D6185FE7800B0F07
            BE5505466F1455B595CD5196CD1483D91624651692C18B3107546A41D3D39614
            0AA1CC28CA8D34B5A1FF000FFAE4761F2EE8620060C864943772E231F849BFE6
            00FD30CDF005D781338A585336A2FD8349511D5D21EFBDAA79CEA55656FC1227
            2207237C50D813341C6797E551318787784F2D665F0CAB978A975F81AA9251F9
            1C0450256F6C5C5413B8A0E287A184EC572C8A3A2B7A7DC429F9600A19978B2A
            B37E19963CD734A9CEA55AA69B457D4CF312BA14126EDB8BDB99DB7C4592417B
            6C53C45225AB8A1604134B1A4482FD365BFD5B11601997F0F4B3466B20A07608
            BB544EDE207CC02581EBD30AE40A2179CF08493C341319ED09804424368EEC39
            ECD6EBB6C08F5C1B8751068B83F2F1178EA2413DBC2400C18FAF2188DEC9D88B
            170D65315152D6C527B3AD0BC044CD280396EA6FB5CDFA0B9DF0ADB6452446AE
            6F95D028125540B7DC77284B0F91046269923A9C7D4C08A7BCD574E46C93C770
            9D0911A8D37B75C1440E71471666926653C54F495132441150B5980006DE3E5C
            BD311B50112955C5554A0C5098C723A8A96F9721F5183EA8749928D4DC56F97C
            4E6B0514C0E806495753A5B9D9411B5BADBE1847244D30BCAF27CFAA25443C51
            5104ED75022EF2DB8DFC40EDB7A1C25A19458EA70B468C245EFE79149067A898
            BAB11D40E47E630BBC6D8110F0F48222A65BC6C6E4036527FBAA00FCB0BB8651
            2422E1D8E3810A21617DC46806FEBD6D84DE36D0DA6C90A2990C0235E85896D5
            E9B580F9E11CC9DA353656232480AA3C947F918652006A8A5128520BAC82CA00
            0589C4EE01B4A1A977B242EA7F7E436C459342CE4B52B3248110CBD267049BFA
            62380A2597DAB42FB4D5A8551EEA129FFA4EFF003C2D96A42A1902C84BAD54B7
            1D158A8C1B8369E7FA792D4D17F707E98EFA48E5AE8E4B378970D6893EEF2F89
            DDC0174CAA54AFECA33FA4643DEE5B99D2E6119E634CA8F03FC3711E31DF2053
            998163CC6FC8E3527C01C06F82C0E30C1DB22CBD6792FED5EC6F856A35EA972A
            AEADCBD8DB750FA67417F9BFC3144789322CA21DB17A038D2201BE0207B2BCD4
            6559AD1D62ABEAA59E39C151D51837F2C2480B2769D973D17681C431D2C6D3C0
            6B24911E204A9476D6BBF5D98608015A1495477EE1D3D5881FAE2C0088F22AE9
            633249251D3A730D3D5C6A6DF0D45BF2C401675955BB289B2E9AA9651499BFB4
            A4F4E9AD543C61596E74F55C515C8147A934F0E9EE5E7988F79E40107D013FAE
            2E4C060D4393B6C3CB0CC09CE10AA925CC2AA0B8769A8A78D10EDACE9BD86DFC
            37F962A60433405C6AD0491CCDB961D74023BBBFE3B7F779E24092CA6A64CB12
            6AA8351934F721ED7D3ABDEBFC46DF3385603B592AA0060A7893BF8813A6E79F
            40B7DAC6FE7800629F25ADA9F1A524EC9E7A0D87E5846C6A2DD91F06564D9534
            F1C4C583DE4511313A34DBA0B5B737DC1E58A1B0A198F8329D5C892602DFBAE0
            91F250D6F81C2EE1A87865395658AC24EE9FF8A552C47C003FCAF8370504E539
            95252CC1E279A1A58C8D73C11AA945DAF6079DFF005C3764502E65C7904B3C8F
            1D3D438EF095EF5CD941FE1DC60A22801F8EAA2300681A2F7DAF6F96F61F4C45
            21FD1219DF10E6392D2FB3342123ACD1511B3EFA937B5C11606E77B7960A42D8
            165D5DC519AC8528E19546D61145DDDC7F0B36D89E113CB0A1C319F4CF035639
            A748DF588E59353137DF501607CB98C2B9A41B1B0E9784E99E77A868119E4376
            432055B9F25BFEA715398EA02D329997EEE308A96B77719517F92F3F9E23716A
            81351524D081145483BB4DCB14DDDBAEF6040F4FCF154A6C95027B8678438878
            B6ADE9B27C9AB73278D0CB2434711760A399B73B6D8A5C997AC60F2D2DA0D131
            31481980848B30DED6DFD7029327C690EAACD421D5A231CCA9E12A35358F5B01
            7B5BF5C3262D501D1E61155496095679F8D623183FF3E9FD310D7201E2A69297
            530A6A78D01D2AB5323C8EDE7EE8500FD70C90AD898B8AA2A691447A5A25DCA3
            8BFC3C87D5711B2C2C6CF13C334A2EC6E7F08EB857026C3E0CD62941EED5DDBF
            7F4EC3FAE0A03EFDA3346E02E904DFDF4B60A0A1D7AD7762249901F20C00C412
            21AA2362ABF7B35BA451B37E78007A29595BEE9169BCDDD771FCF0513BA86AA2
            46790EAAAEF3F8E35D8FD77C1B4371E76A6FF611FF00747E98F40BA39ABA1641
            BE024E8641CF9FC40FD70302D7C119B4547067F974EC3B9CE32D6A3880900B4F
            DE46F113E7E2523FE2C54D08420CA67599A2966A4A69158AB8A9AB45208E608D
            C8C300E0C815FC4F9F64B001D4D43B9FA2213F96001CA7C97271A9EAF8BE956D
            C96928AA6527FE6441F9E06313B93CF90BE439A656732CDF308830CC638C51C5
            4AA5A356562A4BC9CD1FAA8D9708C92B4F9DE4B18BC591CB339E4D5798165F98
            8D23FD71284059F888C82D165D414E072D31B381F3919B0E00AF9B5648A48934
            802D68D552DFF28181F404FF001B495735465F5265711D565F4F281DE6C7C015
            BAF3BA9C4440ADD3D177CA6F510D39FF00C4D573F4070E021E93492BED11C96D
            BC17FE606002C9C22BDD43992C65A58DE99D2A2064DE40478349DF70C2FBDBAE
            140AF3A2231528F706DE236C02895201F06953FBA2D738602778523A85CEA95A
            4826EE1C94BAA11CD4ECADC813CB7DB7384022EA72E6A5A9649CAC0CAC410C2E
            47AD80FE981107CB1C3ACF76B2540E86DA6FF2DFF5C3A639259640FADE16A5EE
            A39D40625807501AF701B99DB96DCF98C56E44D0466CA88D0A8A859563401108
            2ACA97E4C3F7BCFA6F8A9B0A08878B3D9148A1A5F6456B02B0B36FF3D8FD70AD
            8E912AB98711490CCCB473224E811A799180D17BEDACD8F2E7BE2B64D0C55D1C
            D534F0AB56A42CA855D0788937E6029FCB06E24E45C33491C9049515CB2248BA
            9ACDA74FA30B120FA60DC0170252CB50522A186A641B069A769B50FEE0BD8FCA
            DF0C1B803065F0B1588D04552E7DE1A008D0DB617B5CFADAC30BB8625A8B85C0
            A696B9F2489A9948476A4A32E41F92923116C9A112716C546C9410647506B118
            2430CABDCB9BF255015C8DF7B10312450B9E7E2291CCB2D065D93E8E49572BEB
            B7A052483F103081425F37AE790CF599C432E81668E9E9030B91B02EDD07C37C
            1563592591E7B1C463ACCC2920CFA9BBDEEBD82564A192436E49222ED6E77208
            DB7DB09B6C94C9F8F34E06CA6AE5199F12E62D2259932BC8A386A66079956AA6
            EEA22072F0063E8711B0D31565838527E0FE32E1F8E1C9A6ADC8733ADA931A54
            715B25740C072589A0556472760244B5CD83372C54D25D96ED35BAE3C27D8967
            B473E7BC07C43C315D55095A1E24C9F3C929877816CC1E028EA8FD7435C1E7A6
            DB0A9AE2D13453F27A0CB33B9730CC21A88F38A792A91DBF6BE5B0FB6C6BAC33
            159A100EE356E2CBFC37DB14B9513B49FED5789F80B3B55ABABC823CBFD8BBEC
            BE19F2CFB8690AFB865D2D6761BEE5403C89037C3C642B898ED3E6F95664A996
            649C275D356D5814F34D479A47573AEA2195BD959142B9D240B4C46FD79635A8
            26ACAF6F23F41C0194711530A9C9333AF82668DD968F3ACB55655656D0CAD2A4
            9A17C5702E308D5035651B3FE18E24E1BAEF61CDB21ACCB6565EF156AE99A2D6
            BE6B70030F552462E4B833B5C8D522E66E34C74DDDA83FEE80FCF051058F21C8
            73ACF7318E8682964AEAE9768A92910CD2B902E7C2A3C81C1B2C9B26573FAEE1
            0CBF32CA6B608A015BA3BF1514C7BD5D04D8213EEF3DC8DF078C3715CA8E2FCB
            D5AD16A0C0791B0C478C479688A938D23496DA646BF42C6C3F3DF078C3CA1438
            B3BC000A6603CD9881F2C4F8C8DF60751C5E2298ACB4CAABF86CDBFCC5C61BC6
            46F32BFD9891C74E4DEED0C6DE1FE25077FAE3A452BA13FB3B528226717DEC56
            F6C492312D0F75FF0079AFD2E311603D44AF3472514101A896A194AAA2966D40
            91A40F5BEF80424B8B72F92865A382762D591C4054C92B0D65F72576DECA2C2E
            77F536C4720401441B5D9BD34DBF3C1C81F2A6FCADE9818E4BE4D5232D54A8D2
            DAA396F1B231D5AAD62397220EE3ADCE15809AECA6994453C32DE0947BC6CBA1
            BAA117D88DADE86F894280265E1CEA122A81FBDCCFCB0E40E454916B05C38DEF
            6D1700F4C4BE8028CB365B52AC1622F03EC64B585B7F749DC5FA72C4440EF105
            BF68C9277488F22877883161196172B7277B7CFE3860224EFB8E470012990809
            51DE244D24E8C8D1C624D018DFAB1DBC8DBF5C280AACA9EE26A911D344CCCDBD
            44C9AE42D7DEC4EC3E98050619AD711A456CC918DB4C7215189009CBDC54D504
            915DA37B07A89256BC5E6C4D8802D7E985009ADA69B33AA57A6A7353490A0863
            EF1C0D0A395CF877DEF7D86F8501E8386DE16FF5BCCA8E813AA413091BE17536
            FCCE12C625F2FCA3223342227A8AE98B69BA06666279720062A722C4B82DD59C
            30B24AB51065B1186350B2B2C20C8961605829206E3AE2A722688B4C84BC8342
            287E40B2283B74B016FCB1163504887D92B206ACCD2280AB063AE5D1E1077BDF
            D313D934033C9952D45C56A3B49E352A0DD81E46C01E789A14126AFC96090219
            65948FC2B0BFD3C41705005D1E7F94D2D52D35264F519A48EA01412346589FC2
            42AB1B5FA0E78289459A5A1CEA58A2968320A4C9410438CC6A4C8140506FD181
            3CEDA3095FB1D0C4B41994AA23A9E23CC2AD5BC3252D0834B05B9E9D4082E3E2
            8301224430E4CA9EC6B4B95DF72C5AD2DCF325C924E2000A5CBE2CCD9D9AB9AA
            08DCF772137F86AB0C23744A565AF84F85F87330A4A98B8833B932A4854253C6
            29647698904DCC8818228F3D2C4F90E78A5E4A2F8E3B026A6A7C8AAA96922AFA
            6A0CBEA240A2A6186232B8B90499667240B6FB05F55E5898E4B1D62A64DE5D53
            474F9DCF9BE43534992D1D3C0F0C59B6675344269E41B1D0B2091A5523F1221B
            74F2C4CE6688C68265ED2B8A78872A83237CEB2ECDA189999A8A9E410CF2020D
            DA36EED16FE96E9C873C67DF65B401C4FC699B719662279A4AB8AADA2486AE09
            CB4E1912C149049D476E64937E56C52E44ED17C0533D0674D4D574EEF20211E3
            91B498C020950BD4DB717F5C6694B91F6960E2AC90D770D66539530A9AA69A27
            0C7EF4924F3DC1205B6F4C34642B897DFB2F7D97ABB8DB304E33CF2AAAB2CCA5
            80146228C996AAC3FDA1B6FA45B63B79DF1AD66E28AA510BEDF89E19ED5F23E1
            1C8E5D74796B7B1FB6C69AD8C5231323B85F78D99D80607E78B37A62257D917F
            6A8CBA8B84332E0DA5A759ABD732C950C6D983E996150EC03B28B589517BED7F
            2187521258F922B853B26C9F8BB849B33AFACCE327926678E9A58E963AB81F4F
            BAF66EE98A5B985BB732350C5CA452E056383B80789726E3FAECB29C507ED3A7
            A29E55AB82695102777712C6C8431B8B587F16E316EE11C4ABF11419C7125365
            343515A668F2E8CC104403174BB12C1F512C5AE7ADBE189DC54D10AFD9DD4473
            AC3595F151D9B4486646534E3CE45DD946FCED85F2515F8EC28709E579554B45
            0575267050D85553F79DDB9FE1D68ADF50307903C63B5F97410A41A3D96A5E44
            D7DDA6B6EEB7B697D8007D013875217600E5CD9850D53C9FB272EAC8CA95EEA7
            8DA35BDC59AEAF7E846E7AF2C32906C33B13A555051082575029625632953665
            500DB48D85F95F7DF7C6A2B5D11D3C7DCDF4F7B2A8E6CEEB18F8E917E7F1C351
            231EDEBDDB470E5B4EADCB5B6B90FC7736FCB036450FD0D457294D0EF552AFBB
            0C60E84F2240D89F43B7E98ADC83686D7F0DD7D553C159EC9336A4B4F3691A4C
            9A9BCB99D3A7A0E588F250DB4622E13AD6655923310277794690A3CF7B1B7CB0
            7943693949C1942AD69A69EAC0FF0075F740F3DF704F975C57E41F68555F039A
            96F63CB5C4D132F7A8ED2247A5F4DDB56A6B9B0B8FA60F206D23697836AA3592
            31DDD54BB302B21EEC0DEFEEEE6DEB8959057023F88385330C9A78E2A88E169C
            A83DD51B33151EBB6C7CEF8B53B2A7C10EF43329532298998784104313E9E67E
            1876E85ECB08E12CD3332950F46D02B2EE27221D80D8D8EE6FE56C56F2516A85
            8741D9D6675C42CF534F4D1A2DC492976206DB6CBFCF09E6436C04ACE028682D
            DF67F47B92008E0964371D3C01ADF3C32CC2B811AD4668210B15E59198912C24
            DC8E5BAFBCBB83CC0BDF0DE54C8D837474F5D1CC4AD049502DBA9899C1FF0036
            C46EB0DA104D41123C68D13290AD17721185FD3AE26C5A24F21CB735CD25315A
            42C4590C8142A9F5536B9F2FE7837500ACB781F896A9DC8CA2A5C6960CD3488A
            0FC75B0BFC315B9C49DA24F6739C46C124869E173D1E7BDBFE504611CE23ED24
            72DE02CCE82A5249AB68E1001FBB42CF7B8239103CF9E11CFF0043288651F673
            5AD55719BA43656024EECB73D80372363CBE784DEC7511353C054B93396CCF32
            9675F782411C563B5C6CEDB8BDAFF3B5F0E990552A5A08660D0C48C7930D2A01
            3FC216D6C4D8AD07D665065D350F98C34C1F7686AE479A646E445910FE76C4DA
            228FA9B28CB18F8EBEB2B2FF00FE5299231FF99AFF00F9706E19227B2DA0CB69
            C334597C9542C096AE768D7FF2A9BFCBF2C2364D133266159052AC34913C70DB
            52C2B4C55147A313B9FF0083A62965A81FD8AA6B448F5D551CEDCBBB2D2305F4
            D2A47FE93865D10D9C9AA178763684C1246F3A828B43088D997D1D635BFCDB12
            1648653DF6774ED2C795E715AD1369748944C53CAEC5C81F3C5728FB1F1AE4D9
            F30AEE13E12E18CB61A4C96958C94B1354C9995148B5B3543025844D7D56076B
            E92BCAD7E9CE9CB93A908F057B32A1E1C686968332E12AEADE28AE60D4191235
            44DAE3F77548ECE9617D44801AD61BDB0D18F1BACB28073DADE03AACBD325CBE
            37E13AF89D16A2B1F234CC75153662264AB3A579F8443D39E1D34BB0DA67D365
            95904B2CB97E634B9AC7149F77534D4BECEE6C76754654607E209FD714CA54C9
            512CB9149C581EAC56CD995753851225454C8E444411CD98EC2C7CF14CE68B54
            498CBF2C905747354172B330566084E927A5FE3E57E78C92996D706C990706C3
            98F0FA7ED1A88AA995CE9A7900D6BB6EC41E634EDCFE3855311A353CD7B43ACC
            B784A38E895B2B69231474F4F49290D14640D7B96F7B48DDB6B5C7962E522ADA
            60B534B9AA71E9CC5AA23CB2B6AEB1299639248DE45491D4025AE40D4BB6E791
            F5B634C5912890FDBD67638ABB64AC5A99B2A998CAD4F49551D5698A1B124280
            01240171A8A004E34FA29A2839F54E7D9BF1065BDE7123D75653B2471D2D24A5
            ADBD955400AAA49DAD6536F4C3465456D1AD65DC2D45C5345270356D34396F68
            794D29A8A1AA8E56917335B9268DE060CA26DFC254EF6B7C34295A29651A8F23
            CAF298ABA9F88867B93E754E6D0E5F164EA195ADFF007CD24D1B4763D0231C4E
            E2B04A2A98696AE59AB3298739FBB61A249DD06A23672D1F8891E57DFAE1BB29
            72A74450F6CAA6744A345959ACBDC1D44FCBFAE08A22ECD3A5ECAF8A78868B28
            3FFB20E2BCA29A3A6706BB25CB2B49AC703C2F209CB4605F995D37E98B5215AE
            4CBE5C8AA24AA991D9E09E13A2485E40AC8DE441E471344187D165B35565D1AC
            459BBC8D3501E561E7B0C69DD4CA17487870C4A882521512F63AF7FA69D43F3C
            4EF183E8F28A589B76694F9228503E66F84721D22629A23111DDC4611D0EA37F
            A9C52D9345928F2EAD9F2B904B9846A26B18299A5DCDAFA9C2FD16FD77C25324
            0DF2886387EF99E6989D96D651CB724F3BEFB0F2F5C14C08DAAAA8A92FDE55D1
            D3DBDE4EF9491F1B1DB9E276D858453D446281EA2391EA24653B43130D2BD6C5
            801737B5EFD306D26C8F7E209630E90E5DDC44A35BCB50549B796906DF536C32
            891D8056E659DE7B2BF7504D1A0F02582E951CEC18D80DED7D38B13A2B71B0DC
            9721CC72EAD15A2BE182A96F69045DF3A1B5B62DB036F2DFCB10E60A05962699
            58B4D5D53592907534F21209FEE8B2F5F2C6594ACD51886C9533CF02A248DE1D
            895BFBC7F96286DD8FB45D250D64CE523967B75580B13BF3B81C872E789B626C
            248646D146FDF558A41158B3B4AAB25CF450C093CC8D97E7895260E00D98D2D9
            23D3C799954AF76DA963850B21DFC22EA011B0DEFF00438B9652A712BC1B8CAA
            02D1D3F1B5655C570121EF6537BF216D3B1F418B964B2B6880CE388731C9E47A
            36CF83542AF8E482A9DCA3722A6E058F3E436BF3C5AB929686E87897896A1C43
            0A3665DC8B89248C38B1E8CC6C2DBF2388718929854DC45C5132E97A154D3CB4
            D35C8F417276C2ED88E9837ED0E2EF1014F550A916FF00DC8004790BAE0E10E9
            93468F3FCDA8A15ADAF6CB6223548A92789BCBC2A40FCC7C30BC0C98D5370965
            91B93348F5D2F4D5230BFD2D8A9B2035F228982C7150D2D3283BB1D4EDCFCC9B
            8FAE22C748363A2144032C50C8576F700FCED7C1B84A16209DD8B08E0A7B7E20
            07E6306E1921C84F7618CD53238F356007C2C31164D0A4CE193EE28E8C1BB5CB
            B93627CEF616FAE24918A75AF94969616488B58BA90748F4BEE7E64626C5A155
            3C3D13E6327B14D575E9238119AA81632C4F2D403328FF00988F5C1658A26979
            1766999E4F95D266B58B36645A6115053C55021A446461ADD5C060E770B6502C
            4DEFC8E3265CBE8DB8F1FB2E797F06D564E1F8878A33DC932DA815657D95EA84
            923A7E0A6670185EF7042DC104026FB630F337C1B3F105CEA5E1619CCF9966D9
            949968CCA048EB2972CA3D8AAE90A8C84C4DDD01B005B726FA6D8B37B4A86455
            F31CAF84228521A5CBF3597BE3DCC63319E0A308A77F0C6C8C0281C8896FF0E7
            847265AA276BF87728E1D9585165D93C91AE86D55F553999AE3F088E661F99F9
            6334E458A25FB87A932AABAD8EB32AAF928E548ED23445AAE246FE25D1729D0E
            FA879ED8CBBED96289A85050E519B5546999E534B3D490BAA589434338079A38
            3CC74BD88EB8493B25A2E39BF67D97D4647DE508580B1D0694DB5BDBC8F2FAE1
            2254D198711D5666B4B3C0945A69E915FBCA98DD808D7F10F3D3E6C3E18B14B9
            2144CFF89F8A323A4E134AA76CCEA288C43EEA6A9F669EB6AB9ABC5A0DC451FC
            CB122F8DB0904A279D38CB89DB37A96A932CB0348C0CF1B2902FC89D5A8B31F3
            B917C7461CA304DD322724E3E97872B055E571F77994526A4AA76274DB91D3B8
            3F9E2E7028722CD9371AF1A71EE794B513F12D0D254D1CA67A7A9AEAD8686385
            8DAE431B58EDD2E7CB1628F054C2E5E3FAACD388ABFF006855BD7D5C9E292A6A
            6724335EDE1791402BD4127EB89DA293791E559967F1B55D0D03E670C2E1258E
            9C0761B1372AAD72363E21B7AE2D8A2A70F62D6AF2E39455C5DCA5457778196A
            A2AC7458D2FEE180AF88FADEF8B1AA2A7C1A6567DA2B8E2BB8521CA2873B4582
            9E98521A6ABCDAB259A5536B32D3CD298FC36E4BF4C4AE84DC64DC67C55C5BC4
            B98C53E759F4D9C4D046208A4AD8D11910725006C00F89C4D15B9997E4FC4147
            494196D256D2466314F1B9633AA100AD81B852413CF7DB12D2B6347A437DED45
            6EF9665A2B9C6C4025CDFD00604FC875C452245C0BC4FF007AC9C3AE1225EF65
            0B44C5923B8176DCE9DC8E630704D03CFC4551155AC45D6266B5D7B951616DFC
            56FF000C014265E24CCF88E4A7A5615525346AC34248432F3B1BDFF536E76DF0
            0509FF0044A7918B546605C03FBA4923E7CBFAE0DC87A0DA5C9E9A815444F50B
            26A0E248E240E0F4D2DB91F0C46E0A0E7CA20A980B55493CF1DF7579EFA4EF6D
            5A00B5F7E7E588DC1439450C39702D490C548C762635D2C47C79E11B25215254
            6E74EA2DD711632472169A56210B03E6BCC62A649294545215264D6D37484F88
            DBCCFF004C231D70181DA01A64766D1B90DC8614047B5544A1842C516F6DAE30
            00A149512400CD28F183A14EEDF1F4C04B0F87861109659692B1859B4B4B22A3
            EDB80CB19F87C70E54C126A4A8A5A594576630047F1AD1509688A0E8AECA7511
            EA71A17452C89FDB54D474C20820A6891087D11C4BA55EDCD7606FBF338B5104
            654D71AABBDE62D7BEA5BD88F2BF4C3362572319849515337769A9815163A6C0
            0F2F3F9E11B1A8232FA3142D791E6BFEE86234FC395F08CB112CF99C23459656
            5B6E1AC547F3C230088B3782346202A0FDD8F763B790C2D00A19A23444849083
            B8D4B637FCF050E0EE6AEB56ED562003F0AA69C400BA6A3286ED23CF21E5A9B6
            B61C561CA1550B304461F85BFC01189A177502499EC3133AC72247A3F084B83F
            3DBE8060A0DC3699BD654CCE29E8C4B1C6BAE5663A2CBB5F73CBF3E6303E10D1
            E4D2BB2FECC332E2977CDB35CBEA32ECA299AD14D2890CB57232F863A78829D7
            606ECDB003AF961C9348E8E285973CAB32A7C9F25FDA1579AB134723AE5792A5
            2A03305F0AB3B2AEE373EE213A9B6EAC72EF523A11814EE05E0FE32E304ACCCA
            AB2695B2A95DAF49512490C4003CD99E323AF33720F20310F2460F825E30CC9B
            80AA2873F89F24932DCA2A6176093E56057D44600DDD6445B446E40D94302798
            C55E7B76C78E3649651D976799CD74F9D6639FE612F124E7B98E5CCDE495DE3E
            4F234A54B0455DADD6FB72C2CB359728B45CDF81E1CCFF0067E5DFB0A8A1314B
            DECD98532033548D85C3E9042EDC88EA7E18C7295B2C8BE68D3BB3DEC8AA22AF
            D6C924714C7422DAC6E4F31BF2F8E10BAA2FB3778BB38A1A2C9D4BB3168C843E
            1F0F3DCA8E87E18046BF444679C1D32E4F350C64B55C47EEC95B6B4E7B9E7BFA
            E14471321E24CA6578922A6A28DD85C48274D811B0206DB8E846FEB8ABA63463
            6661C51D94E69994A93CD540D415D01DD033587204EDB0E806C316AC945AF1D9
            83F1E76413F0F77B3343552873BBB8B293D79138E862D4518B2606CC82A72F96
            9646322B2B03B0D5C87CC63AD0CC99CC960681C397990ACBA00F09D445BEB8B9
            53324AE2E8B5767190419F715525357D7D2D36528E1EA640E35325F7082FA99A
            DF2186BA2172685C439865790F1DC73F0648D14597132A48AF14AD15C59B5312
            55BC26C4116DEDBE2DC4F9B29CB36951095B9FF793BCF1B489287EF63903E928
            7F874D87C86D8D4FB397E4763147C615B4729BC54F3EA24699D0386BF3D8EC7E
            60E2768DBC7D789830BC995CCA3A7773161FA60DA1BCAA6439CE59499065ED24
            931558A38A4105202478416B5ED73EB7DCE33493B66A8AE105C1DA150C7AC0A0
            ACAB850FDDC7354AC17E762C3C7CBD01E7CF0B4C6A236AF88F33CF96A2382A59
            69E77D4F4B4719E9C86AD3736BF5BE24904A1C92A623DFD570FD6D55229B6940
            EAEC74EDE2D24DBD2D6C16059F2BA8A1923314997D6650FA0808F4B248ACD7D8
            0D0B71B1EA398F5C2363245823E139331CBDE78C46D03398DC80D1BC6DB5B507
            B73BED6E7638A5C8B1201AFE0CA8A55579E75F10D819119D7D4A6AD401F32003
            D306E2686E1A35A5A668B4995E56B90EE01B798171F1C1B8286172F490E811AD
            C6FE2E56DFAE1AC287972A850EA6B58EF645C163241B4CD4B4F12AC74FA6546D
            465662491FDDE5FF004F962180ED7564092A8899945AE429B16BF5B1361F1C23
            1183E655494E9762638C80006F15B6F3E5850B045A817F795D3A9E57F4C01617
            4893D64ABE161D340DF9790C03054FC431E491C891B09AA8DC3598D9479100EF
            F336F4C395BECA5D554D5D6162B6B1DCA2FBB8BD14B3EA4A6EFA48C4DDDAB5F4
            2995C22A0F324D801F1C5C880ECCA824CA9BBA98050412B224AB22483CD5D495
            23972381B20662A9706C26503CB4E11B1920B875D4A95694B9E5674B2FA5B6DF
            15B6305D3658E633DF3220F3030AD80EC597A249AA17D440B5C26923E182C053
            64F2C7B9914BFF0013802DCFE782C71AF63506C6528BC894FEB88011515D151C
            27BB68E1B6D75BBB9F2BEF87159151D6BD6A4B22CCB0EE001A4B337CAF61F5C3
            D15B41B4D5B37ECF968A090849C012004AA9B790007E773828369A1F637C214D
            0668788B35CAA4CE69F2F533D2E5AB1875A999412BA85C0545D2492F65DBA918
            CB9275C1B716335ECB9B34CC3876A7896AE147973193BA05E46EE5E1B03208E5
            3A4B8BE9074D948E5B1C72E6ED9D682A4414195E6BC5AF4555493FB6CB55AA73
            515152F052C688ED1AC691EB6BD8213650177DBCF19E52A46A89A850E412712D
            3E5D04F52D21FF0066F28BC6A91820F8514E955E66DBFADCE334A4E45F48BB1E
            CEF2ECE268A929A8639A951487768954B9F4E5A46D88DAE8879231E0B0D27655
            99CD2ACB065F5B5522B0B2FB29650A2D617DEE3D3961E306CA9EA228BD55765F
            9E3B8AB4E12AB405403249E292FF0089AC397A0D3603A62EF13A123ACC575617
            9770CB654C8F5C649234058454F01D41B95DC91B7F2C6792A36A9C67D16A48A8
            0D2160DDF328B2F8C1B5B726C36C29624099FF007554F14F48CC924636BA8018
            7D30A3A899EE774A2A6ADA461A8EC1DB9FCF14B25469957CE32C8EC7EEFAE2A6
            58DD158CE38729AB919648125522C430182DC45A4CC938C7B09C9F3567912944
            6C41D946DFE7E18D10D4B4572C299E71ED27B19ABE1466A883C701362340BAE3
            B18353BBB3979B4ABB32D12CD4EE049192A36000031D65F6471E51DAC2696B05
            4E6B4F4E8C292398F76566DF49E8CA7A1C68C6A8C991A2FE687D9A18E361AE7B
            0D4DA6C0FA8DF1A63CB3972AB3832F590EA60C01FDEBA9C5ECAFB3EFD9A8AC74
            4EA01FC0B6603E76C1645101C354D45164F42F14AA246A743224AED662500200
            BDADB9E9F2C60976CE9C7F144D34CFA1BBA8E103A889140FA0B5B15961F4799D
            4AD39A7770B1310761EEDB71B5EC7104511B257E630AA158A69941DD63237FCF
            D47D70050EC399554D3B22C45589B901CED88A190F45C475C699E99AAA448C31
            3DCA3314B9B026DCB9003D6C30AE238E53D64D1162D605C6909B723D7CFA0C45
            0C7DAE590076F7873C14022469907781AC1BA5F7F8624060CB3E91F780EFF85B
            120482D6CD4E8BA1D8A69D449DC0BEC7CB015BB22CC33CE6E4B127991B13808A
            0C8B2E9258A144EF2F73ABC57DC9B6C3CF96168095A5CA809A5814090C4BAA54
            460DA0742C6F61D0D8D8EF8368F435575FF7260A4B2DF66746376DF6EB6DBFC7
            0B4311B064EF7EF25373CC9BDF0E840B8A34BE86E4371E1DFEBD313B8568FA68
            55994C74EB25EDEBD7CEF86522281A4C8A69C191A111C17B9DC0B1C36E1768EC
            394AA3698E648EFF0088B83F2C1B864890A4CB228C492BB6B684789F434A14F2
            16D3CB7DBE78AD9214F472686678E489EC6CD3148D47C351EB88A003FDA0F4F2
            130CC1909B189947847F7EC6E7E431231C59E95D8B4C24575DE2275321F95B6F
            CF000D54D7D2C64A8A9D0D6170D1B0E7D6F6FD31085634B482BE432281246A6C
            582ECC7D2FCF0C8561232A8E350656017C82E918715960E06E0BA8E39E21A5C8
            B22A26AFCCEA49EEC5B4A2002ECCEDF840173FD7144DD1A3142CDA2A5A3E0E8E
            8F82F27CDE97DB6485CC9DCC0CF3564DA80F113A41B0523528D96FBEF8C32675
            611A447E67C499DD4563F0FBE619FD3410D377752B5350248E56651E20412096
            E565B9DCF2BE31499A51BD7D9EBB06CC7896AE2A3A84968F288C6BA936058311
            BA5CEC4F21A77037C666C49E651E0F61507611C319665AB97C1461F5B0792A66
            725EC3A6D6BFC39616CE7CB5537D1A0E599764FC334090D253454902EC1634FA
            DF164674619CB24DDB0B873EA3950BC6DA917726D6DBE78D71CE9157866C6AAF
            89692180B120F40A0EE70F2CC997E3D2649328B9FE6F473B33CC91A75B3589C6
            09CACF47A6C13C6B9333CF331A67EFFB995A8750B31853DE1F0B6286CEBA4CAB
            E63C42D480C93D4A4D1850AACA84103FCFAE2A6C9A216AB3EA678B503762A483
            6C56D8515E9B3659124BF3B6F84B1A88D7AA49091E2C4593407550A4B7F5C162
            345378C78569738A09609901471B9B1BDFE38B212DAEC1F478EBB5DECEAA383E
            B8CF4AAE28DDAD722E47CF1E834DA8525470F5386F93370B54B4CE93085E1460
            C1A4F786FCD7D7D31DA833CFE48D1A5D2558A9A6A7210C80A0F1B902FEA403B6
            3644E74C724AB58DCABCE2C3F7771F5C5E673E6ACA1D20C92BDFCD4118914AA6
            431A3E4341F791AA2D3C64AB445893A475B6DF5EBCB1CE976CEA47F141922695
            475F74A863F1BFF4B7D715161D0E1C951C86C301217450BCA5E3055A20A752BD
            AC0916BEFF002C000832E29E12CA08DAC390F8E22C07E9E8D55B53A0940FC0AB
            60DE573856C70948646624A589DCB79E1370C3EB12F5E7D706E01DEED2400685
            DBADBF3C480A4A0BF28EE3CB9DFD300044B0D1C597C8CB247DFC6CBDE45AC066
            06FBFF002B73F4DB1362D0C52B541AC6028A8853950A93D5194B03FBC002BCBD
            6E3D305850DD76555558268E6CC9522274F7744D757E7BDC2AB75E57B60DC03B
            9165D064334492C0333A54275D3CCE53BCE760597C40027617C1B860C8E9AF14
            AC8608640352890358FA5C03F01B01EA3120C1E072D4E86A228E19893A962625
            7D2E4EFE7857C08332B98F748759E801FF000C2D051D82B6B01BA8EE0FBBE163
            7DF98C324142E5AD8A0466921517E82C09C5942B6463E68B392F0C06351B1F11
            24E0A11C87F2F2F98D42450468F38058292ABA6C2E482C4016C4D059D973133F
            824D6D6D8235CFF3C144D8FE5F5EF95B3BA3AA24C863917496D6A7F0ED6B7C41
            BE149131CEA1B78D0AB1B9DAE4FEA70122846A930686631A153E0753727E56C4
            201D2663B8B30F2D47F2C32158C4F4BDF92D24AF18B58850357C2E77FA61A3CB
            20DABB14E05A8CA328CCAAAAA8EA72DAAAA89921ACCC91A0108D81975B15205C
            DD40362400719B3F08E9608960A7A06CCE4CDA3AD0B266559491C32CD1C44B45
            0A02BDDC977DEF62F211E12CD61736C739C99D2480FB2387339F3D8A11224AF3
            CF6829298AA410ADCDE5695B6D6A06C01622FCF18E6C63F46BB0DCBDB2ACA444
            27EFCEBB1DC1F15AE4FCCF5C666F933E751DB66A1535D1D37DDBBEE7A615B304
            31B93E087ABACB1643289073D048D8E22CDF8F0A642D5E766090091EF7BD979B
            7C001CF13C9D48E9E35D15DAECEAB8B12453D22F5352DE25F5B2DFF5186E4BA3
            8B6BB450B8A388E8A1134B256C9571C6B6F039405BE1B93846CD34CA90CEBF68
            4825124AD4C1478AF661EA7FA0C23658A2466715748CC63EF2A180E6A1B603CC
            EDBE2A6C28809EB29C31EE1E52BD031E5851D2056AA8A4D998A375BB72F86147
            486967895C8258DB917C56D850A9EB2CB6FD3058BB488AC67915EDC89BE04EC5
            944CFBB4AE19A7E26E14AE8A6406410B1536DEE39636E926E390A3518D6CB3C3
            2CCB4B99E89751456293238E9C8F3DF1ECE0F83C6665CB2EDC374EB5795212CE
            8EA4ADC837B03B1BFC3D71B6071F206BC34D1B2A9696427F1741E9CFF9E34A32
            05D2C94305D5D2463E68A481E9EF0FAE019109C31388725CB9A47668FD9E3041
            6200F08F238E6CBF2674E2BEA823319217611D30548BDE6373CCF3FE5CBD7083
            50CC54DEA4FA8E5852C41B4D1346A6541A4AED7EA7E7FCB000FC34C58DC9D64F
            3C20E1A90170141DC6CA8BB9BE0039227B3026A3BB83637EF9C27D01E67D30B4
            45886ADA206FED824B6F68E06623F20BF9E1A82C1BFD25A66A9514D153C8EBEF
            9A897C02F7B0F00F09DBAB1C4ED209558973CFBB7ABA278CECD1C722DAFD032A
            6C5BD08245F7C2DD12859CAA4A5B4B1FDDA822CE0AE906DB6FCBFC30A48B8E8A
            58E2BCA17D40607E2763CB000C1D7175BFA8DBF2C00366F7325D98F95F0E8069
            EB373B5BD3560A11886CCA2885DFF4BE252106973D8831D2975E9B5B0D40226E
            215605628D0B0E6A493BF43CF0512052D4D455B8D7A6C7F87FAE1841E8689E43
            6FD300058CB56001880C7A86E980069D1893A1C7F7C72C381F22C9D59A53E7E7
            85A00DA7B8E62C7CB050041A9D3B6ED6E83962289B1B6CDE0A346BA2B487A0E5
            86DA56D90F53C535304F1BD2934B3C6E1D6489886537D8A9E8716C1511BCF537
            0CF1CCBC6FD9E9A9E28CF6A1F3AA82235CCE4AA8567588C41B5CC4DB52802C2D
            BAEA1D6F7E7EA3B3B181F00FC57C7B914B45419670A6572660E94DECE6AE924D
            2B592335A4695C7FDDEA2A00016E4125AD7BF3246F44C700E56E38E6947B2409
            308CBC91401B4456B8E77EB6BD86C05BCF1867D96A3DF7D9E40B96F08D2430A3
            77845CADB99F3DFA632BEC24ACB5C35122477916CDE67A620AD4002BD1E770ED
            23136D8EC30C9B66BC6947A2B79CC93A53C8D0CA91B28BB48E761F4E7F0C3D33
            6F912ECA754E4D5BC4B28820A69AA948D41A950B2B7AB3FBA3E17C3508F518E3
            EC097B28ABA7A969E4A5662BB2A4BA9A3F9DCEE7E1828B239A1223788783C515
            2AC403452C7E3EEE288A293F0C532468525E8CCAB329CC4CD2AC34D348093A95
            54927E58A5A1D2B223B9A98CE9929E54BF52A46168710D4CE241E06F98C2B18E
            CF0B0E967E985240E40C059CEA6EA3A61408F9CCF0CCAF1DCA9DF4B6F6C1E800
            2A996A29E60E2C1C1D862713A914E6E62785F8CA822CB78D335874F823A8656D
            B90271ED34F26E08F1FA88A5265FB22E1BCC67CBE1922CBE6AB882DEC29E4D2E
            3A1BA58FCEF8E9ACB18AE4E24F149BB4472E5937B61A40ACB56C6C60404B0B9D
            85AF7DF97AE1D6A71A57656B4D37E8F607643FD9A39F71E70EC19E7137124FC1
            B055461E9E825CB43D50BF2D619ECA2DD2C0FC31CE96B929765D1C308AFECF13
            E43451C9C3F9669D5A8D2C4C7FE418D13FC996417D507C7417DF737FC4790C28
            D41F49942B80E2195C03BB37BBD39F2037F3FF001C0350FEAA779A58C399CA36
            953159627200B956B1DBD6D63D0F5C01C0AF6C14D511C3198E4ABBD9228D0CAF
            CBA0B1BF5E6B6C04875664D9DD14827AE99F2DA3A9621E5CCEA5D23B9E7E1B90
            1406BD80006002AB3B77F990A2A46873A24D9A4A0D4D15BA36A2021E56B1230D
            428FB70FE4D51530D26639E5265CAEC16594399162B735B2065D4395EC47AE19
            22043E55C37954F1ABCA0B137582A26D5A8EFBD940FAE0605C5A8A7A3A24A586
            387BB58C02695D00456B1080A9B5CDF7EB73E98CED58C819D64964469134104A
            068E0058790005B0A3834F00D8EB6946FA83AE920DFE3FCB01222BA825A19922
            9295DDD96E2C400A0F46B9163FD70C8ADB02691D589294D0A83602599A4B7ADC
            051F9FCF0E459D9F3CC9D62548D46B61BDAE431F3E7B7C37E786A20024996AC7
            802AA1E47D30D420DA50424EFB9EA7FC305005474291EEB0865EBAB6F9DB0512
            2D68DA56016CAB7D828201C40064B01A517D4A2DD2F7C004754B1A9246B0ABD4
            DEDFF4C056D832B4519D28AF35B6BAF4C39162C545B9A2B798DF6C016389248F
            E2EED820E614D87D700589A8AC088422E90C2D73736DFD37C5AA22365A7B44E1
            4E17E07A0C94E57C5D96F19E6D531192B532F904D4715C90AA1859830005C310
            D73C862CDA54D99ABB967F0A90072B01F9ED86AA42AECDD72AED08671C0B9741
            98E5D3265996BB474996D0B6D54E4007BC72A58A0D20B124DC9B0B6F8E367FC8
            F45A657105E16A6AFAAA8868A2588564EDDDBDE40A8AABCEC14D82062401E649
            F5C7366FD1D048F46F64195A5767AC91A2A2429190059B5B7BA3C6370B600E9E
            5737E7B0E7CCB51EE2E1D8522CAE9D21D4F7402DA6D616C671A89C8E9DE6F0A8
            6247E1F3C05139A893541C272552A3CEDDCA5B6400138E862C1B92672726B36B
            A88E5670E53D1465A183BC606E015D641FE58BE58B6910D5CA5F911D555D5514
            77923954F300F841FE76C6768D5894723E0A1712718AE5B53F791932EBF324AE
            F8A59DDC582295954CFB8C9648E48526BA9376637F17A018A59BA3149150CB6A
            96A28AB2A8491CA15B42416B5BF2C52D1627457F35F65003542A26A163A40BFD
            7114311398FECFA38FFD48DC1EBCFF00E9846395F967D6C47877C21032F46845
            C0D2DD4DF084580D551C9BDD5597CF0225911550685736B5F6D86223C32B9F28
            F18F6E946D4BDA3E66C83416B061CAF71CF1ECF479178D23CB6AB13DF67B4FEC
            6DD9BE5A9D9DE5DC49165D5833DAC8E4892596494472C67DD2A8C740008DD940
            F5C71B5FA99C25B51B34FA78B8DB3D4F906494996E5D0CF9DD0512E672582488
            826911C6FF0076D6E5FDD1B79E38DFC9C8FD9AE3A78CDF1E8B6C1DAA8E1B9A2A
            47AB791DE23277328D4CA2E0026FCBAED86C396526ED98757A384DDC0FC59E17
            96A6AB8732D823A158EF4D0A0909D4EFE0162A3DDB1F507A6FD4FBE9FE4CF3B0
            FC505E679DFECC91A9E547EFD58031ABC48EA398BE92BF0DF71E580190B539DD
            4E63277268E042BCBBF769D93D540161F9E2C42026652D451C0B2D6995E26208
            453A05AFC8816DB6EA0E0E009DE1EE38CD2A6861A5CAB86E928680386924A791
            E06A9239092A092FA41D442C263009BF3C320175F933E7D9CBE6B9ED50AEAA71
            A84685D624E408F1333372E64DCF5BE164C090ADCC929E9D29A96768A30A11EC
            8BA937B8EEC9BA8D858F86FE44604C6214C113B992A249AB37B015950D369F85
            C90399E430C988202D0C4C4AE5D02B5F72ABB7E5CF10C81C8A0A27A88AA7F664
            12CF1ECA642CE07FC24E9FA838418944AF96121A18569B490CA604D3A7E16B7D
            7E78A5AE4B11F49573917D04FA9C1448054C93CA0EA6603F759B61F2C3200139
            44D592020B1B7BAD7B5FD30E840C5C9969D40603BDE615CDFE787B1458CAE59B
            EF24908EB61C8E140752904562A2C7F79B90C003F043A5BBCEFEF22F896C7AFA
            6000A0FDDEEEC357F0F5C1614332C734E49B0B1FC2F71F5C1B85A07392995C3B
            4C01EA060484B1E5CA2243AA4939FF009F3C324458A7F62A2F119114F95F73F2
            C324458155670D25C53A161D0BADAD8B1216C8AA833CEE3BFB58F96D8B515B3E
            5A3EF36FFBBC49039FB2D53712288FF748DFE58593E05AE4D0B21A669B86A969
            5A43513544C8AD0C69BA28BE98D74F56F0937237624EE31C6CF23D1E957D4D7F
            8178429F32E2F396E575597D0CAB12D2FB554D6AD320D6B63A5C837034937B5D
            8F2B8C7266CEAFA365EC4784278F39AAD2B1A3BD51A6D510B85118D0A16C2C7A
            9BF5BF218C72B26D23D8F559C64FC1D95C4735CCE932C8E34176AC9826C073DC
            DCE2162948CF3C888087ED2BD9ED23A0A4ACACE209035965CBA864921BDFFDE1
            0176F438E8E1D37ECE5666E4C4F12FDB6BB3BE16C95EADEB5EA2A11D90522001
            EE003722E485DF9DBA1C7671A515460786DD98A677FDA9391D206347C2EB228E
            466AC61F977585C98F70CB0A2859EFF6A53E684253707D3060482FFB40823E46
            3FE78CAF4CDA376194317650F33FB7A50D55627ED8C86BA891D895781A399757
            C2E2FF00E76C649E919DBC7ABC75563B4BF6A9E19E339C88AB4ACB6D46196064
            21473241B8007D318E7A7CABA474219A0FD937076A1472E5ED1D1E60AE256D56
            8E416607D073C637872A7D1AA3920FD8B978984D0B3CB3F8554FA623C73FD0FB
            E1FB22DF8EA863A362262DDDA166B2DEC07536E589F0647E8259F1AF6546ABED
            0BC2740099EB8161F8110B11EBB62F5A29B56667ADC4B8064FB4FF0009AFB9FB
            46A0373EEA8EF6FA9C4FF06654F598C322FB4AF05951DFBE674A876D7351136F
            8D89C2FF000B20BFCD8741B49DAC70667CDA72DE23A49266D84533774DF20C01
            C23D1E4FD0FF00C88BF679CBED0F4491F683248C2DED1124886F6B8E4483D71D
            BD363708F27273C94A5C1EE6FB29711E5F907623C3492D254D2CED47DD89D6A3
            BC52DA8DF4C56D8DBADF1E6FE427FF002C8E8699705A788FB4BA6A56CAF2EA2A
            798C860292D5B547BC49F08365B9B7A30C7314A8DB087D9B334E3AE369A4CDDD
            CD42333AA58B12CA005B05036E5E7F9E2715CA4C968F0C70BE6F98D1E45967B0
            52C4C5692202596EE01D0A775D23AFF174F2C7D3A5F933E7F07F54113C32554F
            1BCF151AC91DCB4B0C0A9A8F322CBD37E5AADE87104B1F0B1083418D0213A88D
            3F0C040C8A2CBC4C92AC110653AAEF129B9F5DBFCFCB0012CF9819DC19240DD2
            CB6205BD3048618A98C2DE30F61CC018AD3023DE2DCF8F0E8069D610372CE7A8
            B61D082112393611941E6D891436050A0008081D461070C5A9780021D469DD47
            3C2345884997BD36E7F0C4512391AC3AFEF4906DB05506F8803934731A6EF228
            254A7048EF993C2585AE2F6B5C023979E1908370D345EFCAACEC390048FCF058
            A3A5C33EB0ED18D9428D80B1EBBEFF003C3A01E91D4E93AC01BEA0EB720F4B10
            76C02D824952152D1BAAB5F98B1DBD072FAE00B0C96B72B972FA45896B1F3056
            7F6B6999042FBF80441402BB73BDF7E5B627686E0232D75448169E1EF1DAE42C
            60B31F95BF4C4ED177119535F58975918A91B1057961D2296C09EBE492E19DAD
            86A0B11DF374371894856C58AA2059F962D4856C762AC8E4DB4B3DBA6DFD3120
            190589F0288CFF0016000B4A313152CCAC09DCA9DBE18AA6F81D2E51A064BC35
            57AF2C9A599E8E92343244222E5C8E82E09201D46E76F4E78E06A24ECF47A55F
            5246B73D59A8A96684F755AC6E9AD0EE3617BDFDEF131DC631463B8D729509CC
            7ED17C4DC0D3A70EF0ED354E58151634969C07A89D9F73F7DCC127F76DEB8D51
            D3A91965919A1706C33E5944DC43C6952D9BE793832219E569E2A4FEEA35C33F
            FE21BB5F91031AD282FAA4669C9F62F8C7B6BA0A0CAE4969EA6592A5C68590A5
            C13CAC086FD71A630BE8C4E679EF8FB3CAD865596A99E433ADD0588D89BDC1E4
            0E2D51A2B7266479B712BCCE53530B1E44DFF9E344628473633479ABA107BEB7
            E58B29153959F669C40E4C60BB32A9E60DEC70BB10D17B47E497DB6954841248
            0F8828B35BCF14C92352CD25D30CCBB3DCCF252CD03BCB126E7BC170BF13B1C5
            1E34FD172D44D7B25538FF003DCD229196725D05CA493B0523E276FCB12B0C2F
            91FF00933AECAD4D9CD766129198D5B3460ED0A9F0FCED8BE38A0BD19726A323
            F6375599DA548A2509A45C145B0C4B87E8A3CADF61B4B99494BDCCF0022263A5
            D074C54E2CB5642E3473A5753AB00AE8E3DC637B79DF145F3435CBB29FC49958
            C91BBE01A58A6BF76C4ECA7A8B62F8C6FD0CB3490BA4CE62AFCD2292A6264A1B
            22C94F15C88D7933463A1B5C81CB0EF1F03433B72E4F6750717D1F0A64197E55
            45512E6D922D246692A217EE44CBCEF22DAEA4F22BBF2C785D662BCCCF5DA6E6
            3647F12769A6A182D329586351A08509A6DBDEE2DFA631786DA46E8CAB82AD98
            71C4999089AA641A94108DAEC0AFF3C6DC7A7DA2DD98AF0F4467C8B2A0DAACB4
            B111FF0020C7B59BFB33E7F0FC512A488E363EF13EE8BE12C6131159233DF868
            EDCAC35EABF402E2DF3E78B2C061E254FF0067EE2FC39E001705398EC5EE01FD
            EE43A6D82C02D42117D05BD061585D1D92DA7C101BFF0010C4D0AD814B348091
            DDA8B7F0E1A856C0A5AD9D490DA428E5FF0040716A88B670D7BE91A1B41B7302
            F89DA1620E673C7BEB2DFC4545860DA1B8793359D4067286FB820581FEB83686
            E1F5CE8D877880FAAE2BD81B831B8AEA64A24A13533B522B178E9DA5631A31B5
            C8526C09B0B91CED83606E06FDA6E4DEF7BF5C1B48DE5838338DA83857349AB7
            31E1FA5E228CD34B1414B5B2B2431CCC2CB330504BE8DC85BADC9BDF61860DE5
            7EBB3215B3C92B2C700762CB1441B4203D01624DBE249C4D11600CC97F0BF8BA
            F4C142B67CB3DB6BDFD70F4258A3993AEA5524A80014D22D8288B1D8E78E6657
            6082EA4001B6BF4DB0C403CB97CCC418B49B9DC6FCF0103951410FB48F6433C9
            0E9173531AC675DBC4000CC2D7BD8DF95AF6C0074E54F268B8B03F88B127E986
            4049D7F06E6190542C198525450CC45CA55C2D1B01D4D8807117E828E4595A05
            E664DFA9B0C143264FE6D9D475B0D0A4D4996659EC5025388F29A6EE44817F1C
            97662D21FC4C4D89E8315CDAA262E4E5C96DE17CE65CCCE570463DA63624C8A4
            16D2C01B02145CF423D481BE3CDEA1B523D3E955479328E38CCF30A8CEA3A28E
            79A95514386941841161A4B7A5ADD0DC918D9812AB62669DCA91A864F4D17087
            66593F1057CA6B33692BDE0A999E5D61620E554AAF240146FE77DF0995DBE068
            C6959F711F6C74557352C592BB4E55CFFB440405B5B91B8BF3FCAD8B31459833
            332CCE6B7F6754D554D642E4C8C5A22E2DA7D40EBFA63A5189CEF64156F1E4D5
            D42D4954AD2D2B5C0745DD4F981CBE8462C4846CCE6BE7669D8AEEA4ED8B908D
            9C8E736DF9E242CF8CBE23802C9BC92A5542BB0D2BEE35B97C4E334DB4CB614D
            D16DE1BA1FDB9570652950D12D6CE11A548FBD31AFEF69B8BFA0BE2B964D8AD9
            AF069F2649EC5D1A7F687F677CC386B862A33BE1BCC25CDE8A1807B64530D33A
            0EADA2DCBE048C63C7A9529533AB3D0BC716CF3B569EEA404FBAC36B63AB1E55
            9E764DC5B4C04CA01DB961D95A64E64D53A61B6B015C10357204628922D4CB37
            0A6689EDED4A48B311B81B5FE38A5AAE4BAF806E25E10A99339967EFBBAA793F
            D9316D6EEE7F0017D87AF4C6884B715B3EECC6AB2DA2ED3F8761CCE5B65A95D1
            45512C60B6AD4749E5CC5CDB16B5C3153FB23D3BC5D45FE87D23F0FCB2A4EB45
            231A4AA450AD240E75206DDBDDE57BEF8F1DABFF00B0F6BA2E31941A0E21A8C9
            736A6CC11292A5A96512A435B4CB510B9F278DB665F4C5508DB3A149F26A5977
            6D3DA476BD57539765F97E579B56C56AB929A0CBA21DD460681A564902AA0B80
            00DF7DEF8DCB159832CA30E2CF3E70D2FF00F6732AFF00F69175FE018EC4DFD9
            9E460BEA89242809BA5CFF007B9E12C7A16CA0F24B8FFA7A625320498AE078B4
            7D6D8B51021CC4C34DCC8EBB1F169BE0A06224CE569E12D1A2FE830CA256D80B
            67F24C3CAFF961A84B1A6CC56536923BFAB72186A16C69C44DBA733E5CBE587B
            2469E0D42DFF001626C0EC4A62B48090C3CCDB50F2E582C8A0A9A5158A840B00
            06C011FE460B0A0378BC6DCB9E248132258AFC30009D7DD3138285A1F8EA10EE
            755F0A14111340AFA8AB4C08BE82DA6C7D7051163724809274A2AF40835107CA
            F82856C1CC86E6FCF0C40E2AAB005C902DC9473F9E001D8E0853C510218EF673
            7FFAE0008898DF7F09F318002D161201326FD75116C280553CE32FA882A29A42
            9346CB22CAB61A581B820DF9836F2C4805679C4798714E6536619C6615599D7C
            EC5A5A8AA94C8EC7E24F2F8619206C8FEF9A350C19C8537210DD9BC80F5F8612
            72A2DC71DC7BCBB00FB02F05667C3197E73DAAE75590E755F12CC320A2A9102D
            203B8591C025A4B73B1001DB7E78E4FF003F1EE70B3A2B45A96B7421C1A5557F
            67A70F7096652F10F037115484119D5479AC9DE2B000ECB320057A7356E58E66
            693CAEE26AC3AB9637E39C793F3C7B5EECEAAF3FED85F23A68E7827A78912AAA
            679359966005D765D8293A176B594635E39ED8537C9D0962BFB0F65192A4FC31
            9FF0E2296ACCA2A0CAB154C960FA96CEA3483B6B048F95CE2BDDB9892E15183E
            6EB55915634B4D2B22AB1F003BAFA1F3C74F1D1CE9C48995B37E33CC551BDA73
            3AF6FF0067122976B0F2031B13A31CA04757C35F96BFB355A5453BC66C619D0A
            B03F038B514ED1CCAA386A6A0C9530334118BBE92363D3EB8057106CC1A1AAAA
            3292CD717D3B6DF4C3A11C422922A472ACF640A792B73F9600DA4FD4D0AE4734
            D0CC8C8CE8186B045D585D6C3D41C54DA64EC7DA3DDFFD96FF0067CCBB8F38B3
            31E32E20A215741449DCD2D3CE9AA3663CC9079E30CA4A72DA7727BF49814976
            CF6C76E5D8870A566459951C1944397AB40C164A54EEDAC41B8DB98C71F3C7C5
            3E0EA68333D463A9767E2376ABC0D2705F14E67953DDA2A29898D88B1688FBA7
            1DFD364DF0B383ACD3F8E6D952A1CBE1ABA80431B310AA398D4790B6351CADA1
            F0524312494EECC1B510E1C69096E806FBDF10CB1449BE0F397419566F05642E
            9989549F2EAD2C12389D4F8D5C1E6197E857D708E3BB826E88ACEB8A750962A7
            99AA27906992B1F6DBF750741EBFA61A10DA164364CC56B2192E63EEA546D7CC
            2D8DEE3CF0D3FC48C6AE67AF78932BABAEE1EC9F881E589A1ABA58D4E852AE18
            2F36B93CFD0E3C5EA1DE43DDE9A158D1429923AAA9A6A4EF21A74EF0EAA96620
            D8F4E7B91D2C062C87055966E21F49D94CD9B66524990E63984D3AA1123D192B
            305246C55770BCBAF3B635ACAE27225279195CC8F87AAA9785B249EA7BA8A29A
            8A07445991DCA98D58165562541045AE063AB35F767260FEA87DE348874FF8DB
            10912D8DB5425ADE0F91C32891B8125AE092A2E8120373A6FB7C6FF0C5A915B6
            352B08C063DEE9D9B7B1EBBF2BDBE7E78B52297222EAAA0BB8526C47303AE1A8
            4721292A0D88D187A22C9413E5D3E590C6B4D52332590B3D5354830BC76D9045
            A05883BEA2E6FE430AC64C16381AFB72E96C2960FAAB8F96001C14A93731A4F5
            3800E1CBDA3DC1B8E87000D494C4EE6E0F90E47E38051229E18F72003D40C320
            12D4D036FE7BE24438B4A3A72E9800E1A7B138053E34F7651A80BEDA89B01808
            39252773208BBD46EB7437BE1900E471EAD4B7616F4E78901D5A16529A3636BD
            B0803E91CA5AEC8A57AF5C003D2434F22003C27F1296041F9622804C306936B0
            4B751BE184B0B4A75E6E491E6A3F961AED05D32E3D9350D156F6A5C194B3C6D3
            C6F9BD3ED200CAB670DCBAEE31CFD63DB8A474FE3E3BF344F4EF1D67353C41DA
            256C0D2313ED1A012D72A01E9E58F97C5B7394ACFD058F1E1C7A48B6BD1BCF62
            9DA7572D055E4D53546534760924AFE2D246C4DCF420EFE98E960CBB4F0DACD3
            61C8DCE8CBE93B17A6CF7B5076CDCFFAD4D529AA4525482614DAFB6D70C473C7
            4164BE4E238A8708CBFED4FD9365DF67DE386E22CBA2A8A8A5CE46A8D5E4B283
            B77A84DB7DC5EDEA31AA390CB28EF3CEFC59C2B9571952B66797BF75A97740C0
            B03E4CA3F5C7471CF83064C6D192667C1F9B51B0681639154EC636B36DD77E58
            DF09A3238301CC69B3CCE9562AA8AA272BB079640D61E409C5CB2448D8FF0044
            756E54F9752C748A744B29BB5CDB7F5C5EA6989282F6070E494E6CF535604439
            9896F61FDE6B0FA5F1629FA4659216F3E510B88A969669CF22F2CC37F2B00A30
            36D91069766A7EC39B76C99DD1E6B5B4694197C54F0D1F7917BB2B448100076B
            9DB7F2C7375195625FD9DCD269BCB252AE0FD9EFB12F64C3B30EC7B2E596330D
            556AF7EC96034A91E107D6D8A34CDE476CC5F2B9F74FC71F45CFB5788D43491A
            CA0314D2037C318B58AA6CEB7C2A756CFCAAFB7D76432F0F66197F13D2D03430
            4910A4AD64374763B86DB96FE60634E8F324B697FC86072768F1C65B98657C37
            C4597D62D34F58292A219DA391C00E55C31036E46D6DF1DD8BDCACF2AEE0E877
            89F8D3F6B71166798C196C5442AEA1E7589F72818DC2DB616189DACA9E464149
            9855668EC6767A85517B210AABEB602D86A426E020B89E02D137C2D97B6699A5
            3D222990CAE102A8E67AE33659EC8B668D3637932A47AC786A44A1C82A69F317
            9A7A149238E2476D65081C80736B0C78CC8F7E5E0FA2CF1AC581583E63C034C6
            28B38C9B326CBE78E4169175808C3706FB81F2C5F17922EA8E0CD464AECF45FD
            96ABE0E1FCB73ECC3363512F10D6557FACE6532BCAB325BC215802079918B252
            932951A3C179266AF1E4797247E10B4B10274DBF00FAE3D4CA16DB3CBA9D242E
            4CD1E55B6B6FAE05021CC4C33EB9554EE5BFCF961B686E1F9EAA384180491B4A
            C0B006C580077B75B5ED89A0B1992A9E51E2B055DBC22DF3FA7E986485681CF8
            A407473F3C3242B4110D33B39211AC7C97F4C1440EAD39EF595DD50017B2F889
            F4B5F0AC6438231A45B616FA61071F8CD801E9882438C708CB526F6D85A53214
            F620AE65000BEBF774E9BEDB35FD300014953616F16001835EE361CBE186A104
            1ABBF3E7864020CD7DF1002A077670049A3727AEFE98007A38CD4B116507CB7C
            02852D1E816F2DB6C040B5A54BEE849FE11800E772C09B46580E570411800EA1
            90480378547E3D24DC7C06F8053894EF31D8691E77C0013164523D99A64453BD
            CE02073D865A53A631DFFF00128B8FA61D0A39DD4A0012003D06D85E82EC93E1
            4A86CA789B28CC1F508E92BA1A82C97BE95704F2F418C5AB8EFC5237E83278F3
            C4F70F0DF66357C45DA1711D7168E0A5CBA2EF8BCB71777F740F95C9F88C7CDD
            429B3ED19BE47FE2C7897B02C81E3CAB38AA632E9354BDC5F50E77DBFCFAE161
            ECAB2E26F1F47A3B80383A0ADA7CBB882A99A6AB92994EA6161ABCEDD4DAC2F8
            E94170792C9F9344FF00683C039776A1C1F9870FE6D474F5904CA342D4A6A0AE
            3911B5C1E971E78BD3A333FAF27867B40FB1E657C1F5F51ECC95D9377A2CA69A
            7EF62241DAC585FE44FCB0EB3B5C1A16253566599F76175F053B245989949DEF
            2C03511EB66DBE98BE3A863C748999AE71D956774CC56378BC26C24F15BF438B
            E3AA8A2C7A3540D927D9A33FED1F315A44CE727CAAA88B46F98BCCA921BF2256
            3207C4E36E3D6C17673B2FC7B97440F157D9578C7862B1A9F319691C2ECB2C2F
            23A11E84A8C695F238970658FC4646EC3B817B0DC8E0CC2397886AEB6AD43854
            CBF2F8AD2D437EE06370A0F56E605CED8A27F20DFE27421F1118FE47B6BB25FB
            3BE77C6F5197D58C922CA722A591561869C114D49029DD4391E373BDC8BEE773
            8E6BDF964E52354B261D343C51ECFD008F8CE8386B2A869AE8A90C6151010360
            2D8BD6AD61FAA3CEBF8DC99E7B8C33B43EDBF2C6AE758E5592604FB86F638E7E
            4D47964CF61A2D22C103CF3DB1F102F1DE4957415DF7947569A4A100311D0E33
            C32B848D73C2B223C29C7FD813E5D980349576471AA3D684EDE571D463D0E1F9
            149533CEE7F8794DB92298DD8DE6F2484096093F899DBFA637FF00908D183FC3
            4C2B2EEC1F3EAEA8EE62F6737171206623E16D3857F238D223FC3CAF92CF957D
            97334A892D5598C3001EFAAC45BF98C6697CAE3458BE199B0F673F676C9B8325
            A5CC9A7AB9F3181EE1D9F425C8B7BA3A6F8E66A7E4FCAB6C4E9697E3D6292B26
            7D9A5CAF2EAAA7D34A649ABBB926A935AD8F50075C73B164D8F733A9AFC6E50D
            A868DE833714B5396D3E6125B487A2935862472B372F51BE3ACB598DAE8F212D
            2664F866AFC1FDAA6419165316519C419DAA53A8EE196A630CA3AA5EEBE11D05
            891E789F3465CA0F0E589E12C951CE4F96FDF253AFB3258B1F78E91F4F8E3D5B
            ECF34BA43F1D3978CB13148473D077FD37C039F2437DED6F4C0068D49DB36639
            3F65557C0595E5795D0D06652A4999662B4E5EB6A8ADF42190B59117537BAA09
            B9DFA6024CE9D7C47E3805683689B4C64EB68ECA5755C2F3BF327E56C02B3E94
            22B98E491D416B9123DC1E56E9EB802853347DFBC7B8287510391046DFAE00A0
            79087566E486C47C7E58091D92491E350FCE31A536F9E0004638005A6BEECDB9
            62004881C8BF9E240756093000FC740ADB9E679E001E14891382D26DFBBCB000
            FAAC5ACE8163E58400947B6D809B0B8AA52202FCFE18046150D523212C3529FE
            1361805671DE37550B1AD4AB1DC86553F3B917C04048CBE9CE92A541636EEC2B
            6A5F88B6001E7CB91189D17F53CFE582C5720CA544A68D5D3435BC4CAFBDBD2D
            D7F3C315B62D72DCC330A3ABABA1A43253D26933CCABA228D5AFB963B2FC0DAE
            48B5F0EA36AC9BE07E9EA111925AA9ED12A93689449A80E5D7F32719B2E36E26
            BD3C92C88FD16E39CC1F877B39A8CD6854C86BFBB99D9176D063016FE9618F9E
            EAE1B66CFAA681ACD38FED2326EC0784683B64ED1E2CBF35797F6551A1AD9D23
            62A6421869427F749BDEDE58CDA7C6EED9D1F9BD5E4D3E9AA3DB3DAF99411534
            CD140823852C1140D8002C063A0CF0BA6DCE29CBB2383F70ADEB8436D5B2ADC4
            B93C3C470494B50E346ADD5FA7A8F5C2D1BE2B8304ED1380BFD1699A4A768E6A
            76BF3BB30F46F2C3235C5190E699543512190A0520DB48E5F118465D40472048
            A32E14A13CADD70B61447F17715554D928CBAA24EFC44DF74ED7D518FDD1BF2C
            4A65D18C62AC8EECC72AA6A3CF1730AD6D33E92A8C79A826CC47ADB17A744B4E
            7C23D779D7DAC787B83387A0C9E91922A1A788440A580000F3BE2E79DD6D4608
            FC3C3C9E6976798389BED253F1AE6D511D3E66EF4DFF00768B7507E04EC718E5
            B9B3B51C7082A45464E32AC59C1791883FBD888A644A8AE5776A34A99EA51CEF
            3B3B1B6B8E33A17D2F8BF63AB2A4C9FCE678B3ECBD64882BB422EAE579FA62AB
            A1EAC6320A2A3AE0ACD18D57B9B60DC35174A7C961A5412431A2126F75EB846C
            187AC2A4876B06077BE1199A481F3B9C15558DCAB33A850BD4DF9622AD95A54E
            CCCFB54CD532ACC29628D9848A4CEC79956271AF1E3B306A325152A7E2FAB92B
            239DA6D2E86EB2AB59C7AE34F84E6F922399966D3554A2796412093705AD73EB
            878E3684792264F9752A47C399697A88D95A9A1FBADD5D49407752BCADD47A1B
            EF8F6EFB3C2AE90FD28F61D57D4B0B8DD397C0F4C0587520DFAFFC5B7E58006E
            416623D7A60039085D5E2D5A2E2FB5FE3840088E40BBC2580E4430B823E1F0C0
            2B1D67FBB08BA1941B1888B137BF5FF3C86182861A8AA1E592482291E251A198
            2EC3C81E9890A16B0A9963335E2523C41908DFCAFC8E020E253E9A7791D8B5E4
            2A8D18D3B0B5CFAE003E8A282663ADDA373C988B81F4C003AD44EDBA91A179B0
            DFE58004A870480081E479E0009857BCD8F3F8600252A327ABCBA1824A8A29A9
            D27412C4D3C6D18917A30B81707A11B1C20C35ECAE92DA4F7C6C76FE98090EA6
            C9E39599C2336D75600D87CB015B63B0D0C09DE5CC6FA14131A3867F92F3380A
            5B08A6A64994948741E604A5437CC6F6FF003B6185DC2ECD4B65902BB8B868E3
            8C90973D49DB1226F2522FD9BDC9D714EC6FCC037B795CAA8FA5FE3852371290
            54F0D2520228AB7DA1459BBC6451F2B31C411BC16B33ECB22B848923B788EB94
            337A6C06194457220ABB3FA09D1D4CD673CC2A107F516C5F18116090F14A52D0
            BD0D34D981A67605E033B08D987262A0D89B79DF0FD2193E04FEDB941090C5DD
            137B5FA1FE47E1886AE2598E55347EA7F6299BC5C75D837016699842B534B5B9
            6454D597B15122A856046F7DC10463C1EBF12536CF7DA3D44B1C7EBD82F02F60
            9C45D97769B9B6759251D354709D641E07150A244E4C069241B037F9631C21B6
            368DDA8F93C3AB82C593F23659AB0CCA929E6C37C2766684147840D533E95BFC
            B0A5F05722BB5F5628D2A248FDF3CCF3B9C237474631B315E37E27EF28E4123E
            86998868EC2CC3CF09BCD51463D2492B5748AA968035AF82ECB688ECC7303046
            C8DE1037BE1428A5D165EFC499B4645FD9F51B13C988F2C5908F22E4C9151A37
            8CAF26ECFF002DE0A6A7CCA8B30A8CE4ADCD553151A09E76B9FD71AF6AA39DE7
            9C65F5E8F30F1370CD454663336B69A995AE81D2CD6E97E7885146C5ADB54C6E
            93879D205558B4118AA4D4478EA11231E4728916EBAD7A8F3C56A5FA1E596FA2
            3F3CE1582AE65B0EE5977256F7C58D95AC85AF22860A2A3EE4A7842F8B153565
            AB21079AD1CFC259B45574FB65F526C1AF72ADE588A3445D979CB33615704722
            DB45B7D3B9BE207622A6B9C380B7B5F7BE1595B4371CBDF4E3E1E7868A326495
            233AED17867882AF3C79FF0063D63D2D4388E9A7893BC4700732CA4E9FF8AD8E
            8E274798D566698AE01C927E12ABA91C51C31435D96D41B4895614D544472296
            BD81F2B8C741551C57964D915C6F45C253E6664A149B2D8DB73197661F217247
            D716460989E4918B640BFF006265DFC54D19FA28FE98F4CD7271920E651D7DEE
            988A2E42A25B3AF7B7B0074D96E6E6E3FCFC71240C84D6CA08064DF6E96F3C00
            245217370AC4021493F0EB84187629AEDA16F0AE9DC13BBF3E67000FC7146000
            A2C7CB000E9876F10BB7436E580066A28A69A1605B513B0D3CC6DE580868E4D5
            B5734623963658D0DD516300FA9DB00AD1C8E1763741A09F3C004A5265A644EF
            490F2DC00A078BE36C048F4796091D426C7A6A1BFAED8002A1A08D19D5A458C0
            6B3332F2F88C3012398D654E6F2C42AEBEA33086962582192AA667EEA25D9510
            1BE9503928B01E430A2B154B051202DDED45C8166488007E6C7F91C0232428E0
            CBA973B82B065B3667301AA38ABE7EF21D414804C4174F84F8AD6E9CF12908C2
            732196D33C2D449352541D4D3DA1862424F2EEC4772073B8624E1E8A99167308
            68A579218A09266B02F200CD6E9626FF001B62521688BAEE236964B384493A15
            51707AEF864828BE706D370AE5FC3D0667C459865B5D3670EF494F4F1672A27C
            A34B8BD55453C61A4604060A86D71A8F3B0C36D2599F71E556552713D64190E6
            5FB53248E4B53D5B43243DF28FC62393C4B7F2617C1B4A9B20D63EF8DF7DFCF0
            D420B5A2F11F181FDE230E2B1D10775BDD0FF75AFF00A6186BE026121A1255F4
            906DA6C77C03459FA65FD9C79853F16F62D9AF0BD6C9ACE595722B696B30493C
            62DE5B93F4C79AD76156E477F16778B1A71ECF44E73C47365528C8E0A2A99B2F
            85040B52D1960DB5BDEE57C798C9271E8ECE934D0C91F249FD8127A8091691C8
            1F2B9C517675E18D8256D4FF00AB9F8610D58E14CCCFB48E201926453D4C6F69
            01B151CC8BEFB75C5323A31E0F3A6719D55F10D6A29BEE2E2DBFC39E110EC92E
            25829F20C82145B0A8946A625AE4FE5B61D9317465322CFC4D9B8CBD1BBB8D48
            351301EEAFA7A9E58B222649D1A1E554D4194D3C30528558E35D36D36FE78D51
            5C1CB94DB62ABB3212DD01D40F4C5C91536D95BA9CBAAAB6578DE3544BF81BF8
            7FCF9E06F82C8C1B057C92187F7758E7B75C6593B37C3183BD3A4520E9FF000F
            2C21A3C67CD44954CDCB7F2E7805F10C556532530BC7AF4FA5FF003C16238B42
            67A45CCB28968AB2CE645D2073D27A1F91C56C78CDA2B9C29354474D5103DBBC
            858C66DE630A6D8CAD13866BC657CAD8059324F214592B18382ABA799E57F3C3
            C5FA3999E7B62CB67106774B94501696770B0A03DD06015EDD79EDF1C7470A3C
            5659394999E4FC39C67DAACAD5797645365D93916FDAF5C8D0D205F3129035FF
            00C37C6D45480CF605C3BACC75DC7126635C3778F29CA669553D751E63E4317C
            58A79838767A68F20A0510996434F197249007846C0E3D139727322B84165D14
            30682566D80606EC074BF2F3C46E1BA11571199516167437BF887F43BFD70C28
            9EE582DE46EF0A9DFE76FE98003A943C51C8BE21195297D3F97F2C2D8C7169A3
            6656F1580DFA0F4C16010427ADFD70C070B36B5B3D874DB0004A2F79B2EA2DD7
            0B64D04A42EEA14D1A4CC360C5AE7058AD1D8E8D751EF23D07AA8BE1890F87BA
            85BEE55A3017DDD5737EA6F6FCB001D3552042CA49526C77DF00A0F4F2E836F0
            F9FBDE7F2C30053CAB0AFF0010F41B6DE7892B6C6A5CDD5594247A6DD6DB6011
            B1A9ABE79AFA9DB4F4C4A456D8C4B34B1C41CD8A1B837FFAE1922B642CF516F7
            6FA7ADB16242EEA1BEF232A855B41EA70D446E38B790581D43A9F3C490D8EC54
            4D21B46A5FE009380ADB0B8E8A784FB9223793AF4F8617D903EB49A9EE584648
            F7570E2B1E4A6A631B1EECC6CA96EF1D8905BE436C3036301C446E9BE008B3D7
            9FD9D1DA24590F683C41C3F5153EC92E754719A721BDF68D8EA02E39E961F4C7
            1B5D07B6CF43A38ACCABF47E9256E5D475397C3145347152C42ECC1C136EBBE3
            C6CE93E4E862C93C527C72CCCF3ACC68E3AAD11C9A6167B20040BE32BFE8F57A
            6BDAB77622A26D70117D3E97E78435AE198676CF3C92277523FDD6EA231C8FCF
            CF1548D09996E510092A892FDD5DC28B75C2A25B1DED328D723A15763DE48EA6
            CCEDAAC3C80B6D876445948E17A819470A1A893C751584CCF7E7BF21F218B222
            648D9DA5CE74CDAE49446A45CEA22D8D29942C5672A78E32FA275117FAC4A86D
            E03603E2716A917AC088AAEED0AA64D6CB345028F7A343736C43566A8E14911B
            FE98A452194D5B3A806C355B15B8972491F0E3135CCA618A79C79C5196FD0612
            837240953C5150A9154A535490EFA46943EF6205DC882AAED4465D56526ADEE6
            4D5634F504A9F80BE2E589B56915CA68BD6459CC59D451CF14C859F9006E08C6
            692A28B43993D004ACCD64F754B936D3CCE2A2D8C845EDCD300CD87649234B58
            B0EA31EB6B6D7D863663C76ACE26BB32841A276A728A9F69272E4A3A864DB555
            696D27CC2BB018DF18ED47908E54ED96219871E2E5B04838C6972E8698595DAA
            A9A96287D7C7B06F86F8B13193B2AF9DFD9BF3DED06AD337ACE32CA73BA89D4B
            2D4566686A9CA5EDB15D5617F961D320F1770FB7FD87976EA3FD5A3E836F08F4
            C7A5976CC115F544A00F20B0DBE16C40D47C21B1B75F4C4D8B47D600EFEF74DB
            13614111AC9A47F5B7E582C8A1F8A0EF54DF4AFAD8FF002182C285C3963486CA
            AD2FAAF203F96020263CBD43149836B173602FD396D80022368E36D050B93C8D
            B71F9EDFE180078891D021DD01D445AFE97BE003E9238CB85F093CC924DF4FF9
            F8E0B015246352BEB65522D63B927D2D874C562A4486350AFEF9F336FAE22C56
            81E6A5034BC7E3006EA3DEFA61AC5685ACAC5D525D7DC9E76D37B74E7828463B
            30A570B059A386E7EF9EC586DC8D872BFEB86A2A644D5C0E8AC0B2385B5F4303
            F517C3D1580CB22451B238F1FEEF961E841BA68E2991D65660546D6EBF51FCF1
            6216C35729A731002532124A965B5D7D480797AE00B131D1A09003225FF716D8
            056C3E0431315EE0AA0DEF70A7EB6C4D08CFAA6459597BB7EF39FDD8B1D3FD7A
            60A206260632A5DD507EEE26803685E39C847D22351A8ABF26F41D2F864806DE
            83736899C7A0BFE989A025F85F34CC38673CA1CCF2DA775AAA3904D1300C02B8
            E40D883F2B8F5C67CD8FC98DA66ED2E7F0CD51FA4397E65DA3669D8465DC5CF5
            7961A6ABCBC54CC28A70DB11B696E4D7FF000C7CE7558DE3933E87A3D669B235
            192E45767BC5E99D70570BD7CF7EFAA6942C88FBB2C89B38FA8C638B491D2956
            E745B7F6E4B5257BF8961F196B23EA1A7A7E56C4B6589199F6A0292AA9276D2A
            8FA8D891BEFCFE18A4BA264B9059B328D55D588900B9E9BE0198676A74065041
            62E4C67A13F4FAE21908CA330CDED90D32A83741DDE93E7EB87892CA356F06F1
            2713D43AD2E64F42A0DFC082EDF0246D8E8E19457684B1CE1EEC1B8B21AF0F3E
            751545314DA2A963666276DC79635CB242BF1249FA7ECA788B8472CCC3BDA1CB
            B379E72FDCCCB25C4571B7845C9B7CB15EE4FD10B1E47D32432EAACBF26A4862
            9B8766A9AC58EC4428A3535B7B1276C54D92F4F95FB26B81B8E9DF2B968AAB84
            67A597BC26111544722B0BF36D8107EB856908B4CFDB00CE321E25ABA3F6696A
            296982CE6A2331C435A2DC90A7983CF9DB0AD1A63A728B9C764D4D9C57435B9B
            D40AA963BDA363A4589BF21FCF17ACEE11DA86F045725DB24E19A4CA29E2F658
            4471466E2DCB1CDC92B62495744CCF0454F979D7FED6462D8A9F4226D910D295
            88AAF36041DF17E28B9F08894EA2E4C3725E1DE22CB64A7E250258B87E0712CB
            DDCC41D00D8929EE9BF4D58F5DA784238A9AE4F9DEBB34F26574F8344E221977
            1025056D1C8F2D24E82685F75D57E5718E5CFEB274531B5CB30EE22CEB883833
            8AC55E419A4F94CF3B1FBF8B4F21B9B860411F1BE1A2ACD3BAD1A7765FDB071D
            71A5566511ED5332E11A2A708CACA29CB4F235F5788A0D85B90DB7C6A8C056D3
            ECF1A70F532370E6564BAEF49113FF0020C7665F933247F1448448A0D85881CE
            DFD3961470C68A3F05A1526C37F31E786B22853422DB4600E96C16450D98FF00
            82DFCB0590280F30A1BF08F2C160295F7B1B3F98E84F218714F89B9BF9E02052
            CE13C2BA6E70D428F24D207B372B7A1FE5FA60A01897C7E3D76B625440FA9AA7
            BB372EDABF0D9B7FF3CF0CA22B612CC51959A46566DD80B7BA77DB96E461B695
            390A6AFA593C6656551D340D8FD7E386DA2EE1A9738A778CAC7134930FFBD63A
            40F96FF5BE0A22C8D92B1E4DF594E9A46D86A2B60E6A9E2B854258822ECA0FE5
            874851B9A98CCE39076E62C06FE96C32420900C64A1424FA8B624ADB1CF6598A
            ED032ADBDE2BB11E9E78822C7E2A4936BE9BFC6FFA6015B0F4A53222ABC6C919
            0033A8D20FADBAE2D48563915082CABDE5909E401DF0512493C54F49433277F1
            2CDAC6A88C0359B7939E9E988A0069A7A78A997B9A54B9D998B16627F961E853
            9156ACEAA6F1A4A0F8404016DF1DC93F1389A0B0FC9D675CEE8A59249F477A18
            48B1F7F661B86D371AAC6D717F91E5849F3065F8549E4547EC16539056D67D98
            E9B2ECCC43FB4864A8D3F75188D5A40818D946CA36E58F09AD4A568F47A7978B
            511660990C55B96701D245250B4114123CD4D3321B32937246FB8DCFD31E79AD
            BC1EE5494DDA1A9388DE99049154778845FDED8DFA8C226684817896A12A685E
            5574910A6A3C8EF80B119A50D647475ED51B210C4280BD700CC95E2DAB4932DA
            6B02A185CDF98C4321198264D1D4D60B2EA427501E470F125979C8B865AA13EE
            295DDE35D47BA1723E38D719348A2F91D97294CAAA6D5FDE253A8D4223E124F4
            E78673916221B89FB43AF48A3A6CBDA05A45B5E2A98031FAF4C4291A22538F15
            4F24C5A4EE869048B72C3597EEFECE0E29AA07C3280ADCC0C46EA16CECD9E661
            5015448A63E874E13706E67296964ACA8FBE37BDC838A9B2996EEC9C778D502A
            F2E43143622FEC8ACC6AC4AC107202D878F2897250222AE568299A409232AED7
            8D03107A6D7DF1DDF8CC0B264A679EF95D62C185D0F65DC47C41165094FF00B5
            F32828154C6238A79624546F780466D3BFA118F75FC5C5147CC5EA72CDEE3474
            E238EBF236A78162269615085361A7A10BCC63CA6B71C619383B5A49BCB1E4CF
            32AE12CE788F8BA96A5327973AEE64EF8512C1DE8700DC82BC88F8E31A9533A1
            B7D0E7137013714F1255CD99E55987084718090D326572CFA80BDF65B5ADFCF1
            A239684A3CBFC39108B23CAB4F36A388F2B7E01F5C77A4B96648FE289133A529
            BBBD9AFBF2BFA75C1430B4AF92688BF88DB6D8E2288B151D79688A8D361B1BB6
            0A0B3BED8A00046944DC9E7EB894881C82A45E464F1290006B72DEC3E1864881
            9EFC77834BADFE24FE9F3C350A26A2B52370AE46B3D4ED6F86F86480EACDA76D
            FC5E7CFAE27688C9286BE6A7A56A78B490E03126E0ADAFC8DEC073FA0C328896
            04A5A6919647D3A6E6EFCBE5E787A26C4523892067D464456B0D2BD7D7CB0F45
            4D8457E6AF3C70C681C3E9087BC6B93E801F21E580A588A3CEA5CA832C14B453
            4EBB89E6875C8963D351B0E836F2DF0E033357CF9B5554544EBF7933995B4A04
            0589BB59540037E805B05724D9BB761395F67D45C25C4F9BF1667D96C55D1D20
            860C9F32864124D23DC9681D4F302C2EC1806BEDB8C4CE371253A311CE295A79
            E59A9E3B52B3131AC4FA8C6B7BE9E40ED7E761845C215C8168A81AB1810AC517
            70BCEF892972264CE8A233574EA596CAA22601947A9DF7FE989A2A1EA7CB03B7
            7F34CA85F70AED636C140494B2E5DECCBA2963EF7F14B18B03E5B5F050024B5D
            4B146D744624101989FEB8702364AA8D64206AB01F1C302171E7AB4B01856698
            975370CC19107A03D71318836011D4A990F77E1DBDEB0187B6DD11FEC321A688
            D3FB4CEFB72EEFF78F9DF154E6A1D964713C9F89EAAFB2CFD8DB39ED5EAA9F3E
            E2AA4A8C8383A22248600A63A9AC20FE10775436F7CEE47BBE78F3FABF90EE08
            ECE1C1E15B99FA6AEB4F96532511B7B3B4215626370140D247AFF8E3CDE56DFD
            8BB1DB95A315E3FE128293862A72C84B494B0EA9297CD1493E11F0BFD31CBC8E
            F93D8692574D9E51ACACAACAEAAA68A473F764817F12E319DB4B70E5067C6BE9
            9E9E7915594165B7BC76C4D976C2A35F51309DB436837D8FCF0C83692D98554F
            2E528891292000643BEA3D7AE244AA22F29A6924AA87543F8BC2CBCEFE58B515
            4E67A43B3AC822E19A4EF2A623ED320BB1EA3D2F8D0BA32B2BFDA566793C33C9
            F71054CF1A5DA3726CCC76DEDB923125B0679B735A38E69642ACC8CCC5B6E784
            68D4991155969484339762E2EA5BCB00E0547440CAF6E4BB73F3C1604EC54C94
            F60CF72392F962B6C03A926B3DB45FD715321B0CAC378AF6B622ACA6E8AE56CC
            165625AFA79EDC863562C0F24946266D4EA218E1722EFD9EF17766900A1A6CEF
            28CEF32ACD6754E92471C08FD0AD9D5F6F88C7B4C3A2CD8209C51F3FD5EBF067
            953E8F4670B714762DC67511659534349C2D501C2B2D7492426A81D8DE6494DE
            FE45B7C2649678CBECCCB8D629AFA23618F80F81329CA1E9F87720A48290F8D2
            5CA2A159DDBCDB724FD4E38DABC8DBE4DFA6C528BFA950AF9697269196482782
            261A755444157E7B9071CBDDC9D958B72B63F59C7591D1D32433651248A08293
            E5F38E447BAC34820FC47CF0CA654F01F8F1C2F52B1F0D654B1BCB4EC2963BB2
            E904DD05EC6C7D79E3DFB5C9E7E2F84725A58259BDF919435D56C14F22082772
            7E386A1ACE3D4B4AEA9A43936452AA05F7D874C2D102249A4A4BA776C34F426D
            F227114076E8545ED7B7E1E586A14F8A391E1174F306C061E807A281A002559E
            CCDCB41DC7CF1142D8B50C8C589BC877276FE586A0B1E212550432ADFC22EC01
            3E761891182CB58B2C81124D406FA8F3BFA61AC416731A78E8AA637A6927CC24
            2BDD54F7FA446BBEA529A7C5AAE37D42D6C48AD91CB1A44CD3B332A17BAB2FE1
            27CC72C315B64C365DEC53FB420330945CCCE0EC08E43CB11EC51D1954AAAEF1
            43288E351BB21B03E43A0EBB6180522B42D178D1B5005923DB47C5AFF1C1262A
            153C468EA0BAC8B23BF8B546DE123A6FD716DDA164C2A1CCE558D51DA5AB0A36
            492C02B1EA0EE6F8AE84EC50AC78D4CD098F4BDC1555F77CEE396FE76C144D0C
            8A7766B888588D945BF9624510D59344BA03B00BB7C3000C99A49641ADCDBD58
            9FE780416A9187766236E5A4ED7F90C381CD092C1DE47649C2DDEC3DE17E86F8
            01720E29D9B4D94B8636B2F9E16591234431D9ABF657F666ED13B54AB81B23E1
            6AC9E92FABDB2A93B8A5D3E6647B023FBB73E98E6E5F9058ED1B1692F991EECE
            C1FF00B3EF25E03CE28F88F8B73219F6734CCB51050C5B5253CA391E40C96E97
            000F2C79CD4FC8B9F46EC71861E91EAEA575CB2131C851906DACB59803CB503F
            AE392E4E6F731B9C8C85E21AE126411D406025A77D242F9723FCB0F3CA9C769B
            F4B8EB2D35C143E2194667412C68E24A844324481AC4EDCB6F31B7D31827D1E9
            F1C36BE0F25F6999353CB399B2F92595B56A33F20AD6B94239EDCB7C63674F0B
            E4CC697356A699B5BE9910DEC76BE20DA1F5130A95465750CC2FE586456D97DE
            CD3870E7F055C7230F0E90A740237BDCDB16A4649CCBAE45D92CB479B24EF32C
            F0AB6B03BB2093D01C5A8CD7668D1E455110679E3EFA22BA1615F3BF336C5CBA
            2195DCFF0082DB342523A5805430274BA0256DCB9EC7E1BE2422CC7B89FB23CE
            F283ED157009222C7C5090DA3E2072C433526541F86296256BDEFF00C46E3D71
            532F88D41C3F013F77A7D76C4592387255018274C54D80D2655DC15677B31E58
            87D15D8D66737B3C4C1C83D416F3C3E356679BAE4A3E6B9F5465C5DE28833036
            7956CCB1AFEA0FADC63DEFC468952C9247CFFE675CB9C7161F91FECDCCAA41AD
            9E9A2A8D1AE47F19126DB29D2BB35F99F9EF8F59293ABFD1E2D6FAE0F44FD9BB
            33E367CEA832BA5C8A2FF476A65BBD40A3BE9B1E695417503E5A8DB1E735AF13
            E6F93BBA25922BEC8F55F1D4556D9928ABA0874AC7A23A90CE5AF6DB531517FA
            9C78CD4BB9707A9D26D6B928D559AC7474C1623ECAB50D678D4828C4733666DB
            E38C8D1B1F7C157E35E33A2A9A3A6A3A059239A17BCAC9A42B6D6E80DCFAE158
            533F25F8795FF6065968EC3D9A2DF573F00C7D19BE4F2D1E9063EB9CE8BF2F0D
            956C4FC875FCF1164845243DD105A6113006C11433EFF90E43EA70F602638888
            8AB2B489AB500EDC89E66FCF05806471848B4A88803C804DFD37FF00AE16C06D
            F2A4A81A9E6B91EE295E58640265A768231DD3FBA3C371891419DD1478F5171B
            F896C3CBCF0C80164B49B1F137416C488C42A3C46E4306E83FE9862A68320A63
            30059B73BB2DB12212C99768A630AD3344EEA0B316B8B1F97AE1C091CBB26CC2
            7A799A9BBE68615D7314175000B924DF7E44FCB008D1C46087BB94330F7AC19A
            CCDE646AB7A72C408D04411533C9A9F4538039E8371F2BF3F5C32447A3B1D550
            1A8D32E5D1184020B8D519EBC8836BF2E60FC30E85647D5430CB2114AE059750
            8C8B9239900DBD7F2C450A01054D8A902F637D3CBFE982807FDA9D62451A4106
            DDE136DB120F817A7DB203331D31A1B283B17B73B7A617688E433ED2FA648D63
            04FD348F86255A22BF439439654669571D35346D515123048E1890BC8E4F20AA
            2E49F418AA79A2BB34430BC9D9EAEEC6BFB3B3B42E3A8A9330E20922E0CCB642
            1B4D5AF7958536DC440D85C7466047518E4E6D5D747423831E347B63B28FB13F
            655D9534752990C5C439C4762F98E760543EAE60A464684F4B2DFD71C5C9AB76
            3B6FA89B40A8A7895996134CB1F840B002C3D3CB1CBC99373B2D84252222BF88
            96352A8EBCC9C63723A98748E5C947E22E385A64B48F6EF3C248DAF88F21DBC5
            A2A455722ED0E96B73BAAC9E7A846924432A2722541B1EB6F2C46EB363D3A437
            5F5D5197EB5A79A38A484EA1DEA34834F336037E5B8B62A6CB52A5460BDADC91
            18C713E5E054E4B989D350552C6966FDFB73D2DBDEFB83F1C54D59A61C18467B
            0C68A240416E61D0F84FA8BEF7C2D1AE24651711082558E437E9718B522D66A1
            D9DF68D4D903542CAC1619401DE0E60F451FF5C5A8C79606E3C2DC7D4F510C6C
            B380188D219BC47CF172306D699A1A67712521632017DC02BCFE18622F920F31
            E2AA4A2632BBAF78012CCDB10301625667F9B768F48D04BDDBDDC31605D80B5F
            017C55188F12F10C73D64EE9A7496DD93607E0315346889194B9B4719D21F503
            D7CB084B64B475AAB16A6914A9F3DB0ACADB1892BC380D21DC1E6397C4E16AD8
            AA5C340749C399DF1D3578C8F2DABCC3D8A3EF27F648EFDDA721D7727C80271D
            4D1E38AC89B393AB949626A252AB724928E4923CC639F2D95C1558E58C966DF9
            3AB11B1F963E99A7CF8A30514CF936A74FA89E47268DA3B00E0E878C4D0D2C3C
            23FE9266F0D7ACB33CB331A28E9791478FA79820F3F3C63D5E655C337E9B06D5
            F73F4772DE15A3C9B23A6A3CAE99328A68905A9A91B4AA7A023A63CE6A16E8EE
            46F8CB9DBE8CCF8D33A928A7944F27B5A45B8B36FB7A9E78F38D372E4F47862A
            31B479E38FF8C73115B5155453C94B09374818EA55F91BAFE58565FD9975571A
            55CF21696144626E5E252A4FC40DBF218403C3191CB35664394C646948E9A121
            96EC580402DB936EBE58FA1B7C9E5A3D22C1494533522EAD4559AD790D811D39
            FC711631211640EECE8AACFA05F5B30BEAE7A40FE782C067F65D45423388C00B
            B9123ADFF5DBA60B201C23924F2C1602DA54880B2EB7EA3ADF0E801A7A908352
            85563B91E5FE7F96245048E392ADCB3A175636D318B103E207E786403CD93776
            CA758F837BCBF1C390C2E9B2C2CCA8A2D73B80472C315344F9E1D8E1917B88A5
            AB9847DE77712160001726E2FE7F2B6245170C9DCA3208558588556405837C4F
            E82C30E074CF4E19C4A91468480D6625EC3D1481E5CF015B426AE7CBDE899E86
            9E546326901D790B5EE3C5FC89F5C408D15F9B3148E425D0486DB26A237F5C58
            90AC8E6AB92763A89604F21C87C30E908C7A191910347E160C3C3CAF87A14273
            18155BBD50BDDCC0BAB2FE60FA8C140374D4CF3CAA8BCCFA611F02C8913943C6
            A75CA5230C14EE0B127A0DF7C66964A2610B3D1DD8B7D82B8EBB56929ABEBA37
            E11E1E934C9EDB98C7FEB52ADF711C1B1DC7E26B0E5EF63979B5C97D51D18605
            156CFD13EC7FECC1C07D88E5689C3B9345266CA967CDEBED2D5CAD6DEF25BC00
            9E6A961E98E464CD29976EFD1A854D5A5141A9DE352B60093600F203187265AE
            19318B9B2B79A713451CCEA3477A87A35F1CB9E4E4EC60D2368ABD6F12B4B1B8
            DC15049DAC41EBF1C53BECED62D125CB28BC53C71499351555DF786C4E8FC37C
            55291D7C7854118AF1A76974D5397BCB055FB46AF12B26FCF7C529DB35C6062F
            276D75594D6D2E730175A9CB6A35CA91EFAE226C45CFA127E38D3141381EAD83
            3CA7E26CA28B38A3944EB3C4B2061750AA45F6F3E781A3335455F8A604AAA7A9
            B27B75054215ACA04049912DEF2742E2D7DFE5CB14B743459E45E25866E18CC6
            58240F3E552B130C8FEFC4B7D835F9FF002F5C32E4D70206B244687BC8E406E7
            62BCB16A45CC0A9F3B7A72F1A3872AC436FE25C3A125CA2F7C19DA145964F0C9
            21FBF87652D7BD8F3E58B118E5035CCE3B67ACA85A29E4A80605854AC6849D2A
            7DDBF5BFA1270C55E32999F76875355492086AE5134FCC87B1617B80700EA345
            267E29A94760D31B13BDCF8701602B676953E032213CEE4FE982894CE2E7690F
            BCE348F3C1B056C7BF6F8A9504332C49B5D3AE17615363F97D4D4711E6749975
            2289DAA9D61421AC2F7EBE83AFC309249341DA3DE7D90767797F66FC25065F45
            1896792D355D56901A794F327AD87203A0C596E2D3450D25C324B8BF84324E39
            A53499F6574B9BD38B85157102E87F85FDE5FF00848C5EB55920EECAA7A5C735
            D153E08ECD1FB26ACA99F8133A9F297AA0A24A7CC905640EABC92E6D228DF9EA
            2716BD7CA5C332CFE2E1246ABC23DA6E7BABB9CF6969E9E65467984139921D00
            EEF1BB806D6DCAB6E30EB52DA393A8F8F58D7009DA1D1D266B91C99C6532AC94
            CEA64741CBE200C5326A7D0BA7B8F123C9BC6DC42922CB4C13A9E66D8CED51B5
            F26615157DDB12AD604F2C290794B8529DDB87B2CB27787D92393C0351550A37
            6B721EBEB8FA0BED9E6A3F8A270E6139FBD56B15D8102DA47C072FF0C2968D99
            9C92CBE28CDD43963CEDB83D7FC8C00763AAEE24578D4C8E1B93DCDBA136F9E1
            90875EA96241A8460DB91F2F8E02B1A9388CC748D0D3469DD93E3900DCF2DAE7
            0E8402A7A49AB9B592DC8927D2FCFF003C1404AC7145480AC6C6C00BDFA7CBEB
            864802563836BCB1373BD81DB6F8619211B3E96A23A354D6A563E60C8A403F97
            2F962D42360EDC5D551543352BAD23F2D503156B5F973BFE7862B646499A5555
            4AED2CCF2B3126E7993D70C883AB34CC8CC88F22279296B7C7122B63F97D64D3
            3AC6CE8B1A125415D56F3B5FE1D7015304CCA33154480EE6DABEB878858C26D8
            B82C328E9DEA5ACA534F5791B4AA7C709CFA12492E4B164797C33CEF4B552C6D
            4A119AFA0825ADB69245C6F6F88BE15BAFC84836FA349EC93ECF3C61DAC6750D
            170D6552CD4EF70F984E9DDD2C2B7B16692D6FF845D8DB963939F55185F26C86
            07DB3F437B08FB1AF07763029F30CC00E27E26B026B6B507710B6C6D0C572011
            6B866BB7A8E58F3B9756E4F83746347A4E9E358D2E79F5C668CB9B64377C0166
            79AC74B1FBE56DD17AE2ACB98BF169DCCA667DC4D6F1A91181CE46D44DBE476F
            CF1CA94ECEE60D1B5C94ECD33AD2A59955803647FDEFA633B91E871E2DA8A167
            FC577323AC8E155482DF3DEC3E5CB15D9A7D193F127159A88A73BB4325F52B3E
            FCBF10F3F8E0B2C898A67B9ACA94B2C310B22B1206D7FADB96223D9B23D19FE5
            8A99AF14265B50CEB056B08DCC76BEF7B7E7E98DB01648F447D9DF3BCE387B86
            F33C865811A2CAF31932C8C4F3E9BA280C2FA45B585602FC8DB1664E7930C8BC
            67F98CB955447DE91DC3B850358B28FDD36F3F3DF9E30B08A316ED232EA1AFAB
            A9ACE1F599D22908A8CBD96D617F7D37373E607C6FBDB0C8D50462398D2D4E5F
            34D25236B889B9818F839EFF00038D312D23133182A272AA9DDCDF894F31E97C
            5C8A5C866A277A6064DEC3CB99F9E184DC159471DB535E2A876EE4FE200965F8
            E0A12C926E256A8766A70E5556E588B61920DC055B9C96652AC482377DEDF3C3
            A45729918D9E889F66502DCB16A295318FF48D34B5C873E5D0E0A2B73B61D954
            F2E661BB95605805BB120017BED8A65C13B8F41FD9CF87966E3CA4926208A485
            A5B9163ACECBD7E38CACD0BA3DA797F1043151A2B9D4D72028C4121273886462
            35282480179E21B1D11D3E628F5AA51CB8D56B03600F9FAE2963D8BA9AAA6ACA
            631C9A248DCFBC3C430F162CE2A48CE73FACCDB829AB1F28A89CD0D4C444D492
            3EB888EBB01E0B743CFE38D506717362E7A3CD7C61C4C20AB65662B24849B96F
            F0C5914E4E8C75B4CD33FED2A972994469AA7909F1006C063AB8347BB9673B3E
            A545D18DE57C51572707E57491949523A281045020452420FF0068545DC8F5B9
            E9B63D2BED9CA8FE286A94CFA98D5AAB9DAD1A5D5475B917B9F99C29686CF548
            8163110258DACBF840E9F0FD2DEB8006A6AE8D49205872B619080AC679CA91FE
            CC1E9B0F99C3D1592947450C01EB6A368C5B4AB0B866BF9795B0C8416F9D08B5
            B23B02E3F00D3F5C3D0847C999C961D70D40394953DFA963DEDC744FEB87A2B6
            C627AC08C5550924EE5D893FA6204B122221439D4091737B618825B2AA34AE57
            8D53BC9028275721BFE78640074D311318C8FBAD56B5EC01E86FD31256C2678A
            43108A44633037F8DF97C701533927B448A94D3788200140177B1E97C3C48B1C
            78D29A2112E9792F73A472F89FE9B62E26C721A89663DC21F0B90A123FC47A6C
            3AE11C962FB31E189CD9EBFF00B2EFD87F3AED269E978838D855F0E70BB1D50D
            003A6B2BD7F7B7FF006519DF73E23D001638F3DADF905D44E9E3C2A1D9FA4590
            70DD270FE554195E570474197D247DD45122001540D80FF3BF5C7979CE591DB2
            F9349704E41491C477376E97C4462A3D99DC86336768A9D9939F2DB6C44E55D1
            6E356CA2E610B8692400AB311728C4FEB8E7C9B91E8F4F149101514D21762492
            6FCCE2968EDC24922BB9FD29F6592447921963DB5C0B7717239020F9E2868D31
            766599FE53511C4C914B2C8146DA6C5A46E97E57DF158CCC838AA39743C8C1E1
            209B861627E22DCEF807899A6664B34840D37BEE3A9EB6C4C7B36C7A33BCEA63
            95671475F0307EE640E2D7E60DFE78DF02247BAF86385A8F34CA9EAE8E058933
            BA38B36A768C81AA751A5C6F6F79748E5869F47367D958CCF39A3CC72EA8CB33
            282A238FBC31C90CAAA6685EFC8102FA87A5C1C626590E4C2F8B647E12CED22A
            BAC77A597FF76CCE9E2B3EB02E1645E6181B0F223718646B899E663DECAEF2EA
            0CEE4B3AB0B027CC79634C424415651C1520B680261CFCC1C5C8A1A23261534C
            3491ED2A7A7236C38AD01D4411CCBE08C853CEFB61D22A7C011A331926167887
            5DEC30F454E43150D5223D018117BD81BE1E8AE57472390C963244A8F7036E63
            12524BE5D46CCE8A52EA799B622C9A2F79252AC091A4517801DDAF6B1C65C921
            E8F45F62194BD370C57676FA077D55DD2B33F354163B5AFCEFD719ACD31E8D29
            33EEF2A192398681B8D086C6FEB7C16312D0E673D531484B3951A99B700611B2
            2C7E9EAFBB1759D5DC0BF76B6EBE7CED8286B02A9E21FD9904AEBA6225AEEC49
            17F5B615BA2C4CA5713F6B8D96525454C90C7571085F5C0E4A090116B1607E1F
            4C5D8D993324795F8BB884F132544F0D288E608590A9BE9F4F5C7734AA2E5C9C
            0D54B6A7465F0E57559A4920668CB21BBB4EC1154F4173D7ADB1ECF4FA7B5678
            3D5E76A655726AE8F2FE1CCB34A0466A68C9B281ABC039E286B93B31FC51C8AB
            5A4B3329556DD50DC163EB88A1C577EDA8B3331909B338EBF0C350AC78BA44A0
            DBFE1B72F5C14233A3306B055D80DC369E786158E475FDE1EEC9D60F8BC5CB56
            1D08C66A2AF592BE216DAC30E84632875F87CF0E2B0C82131A856934806FA79D
            F00A3D23451B12977918DF7FC3F0B620510D14845E5D5ABA5F0E04B65267CB63
            6985AF2295D16F11045AFCB000DC546D23A86F00E9AB99F96237221A2C11CD4F
            152C7A53751DD3777B9B8E57245C1E5865C99DEEF4322AD66A510985567D7E09
            7578803C87E7D4E15CE312E8609BE596DE04FB3F71FF0068F213C39C27996691
            826F3471688C1F591885EBE78CD2D6A81B23A787FE8F76FD8E7EC479976559A3
            F19F1B4102F1300D065F97C72ACC94719B6A9588BAB48D6B0B7BA01DCEA36E06
            AF5AF25A469528C5523D8D0D1BC0750896463EF3BB11FCB1C09DF6C872B3EA99
            6BE320C6B114EAA41DCFC6F8AF78CA307D9135D9B66CAF648A38883CB4FF008E
            15E435E3C18D91F539C574C02C9A352DF569523F5C43959AE1822BA007ACBAE9
            1B5B6BE2A66F863A40AC9DEB1C251AD3AE012AA8D757E1D56EB8468D109953CE
            F8661AD8E43110929DF4DEDAB143ECD69991718F073D63490BA6899892B24C6E
            1795C836E43CB7C28FB8C078BB84EA6814C823EF63372B2776C36BDB911717F2
            C2A5C9AB1CB8332E22CA659A093410B211CC6F6F8E3641974BEC7AC3ECA5C5B2
            713F641065CF277B98E432352832C9C88DD54EC362A46FBE2F946D1CF947908E
            D5386CE794D2673410F73551308EAE284845A9DB75B804871C81EB6DF1864A98
            D1E0F3D6739EC198D0CF45590CA69DAE8D0CCA355C7F1117B83D7044D4BA330A
            AEFB297653DE49497F0B30BB28F236E98D9001BEEE29904A8F636E58B08681E4
            EBA96E5793618A98D3D32D40B9162DCC61ECA5A079B2E1DD9D1CFE986B2A6809
            2109B49AB6F4BE1ACADA08829226DC7B97C162B44ED2D19BA68E7C8E11B1289F
            A4455B2A0D56EB61B7D319245B047A0FB32ED1F2CA0E0D8324AB844423D5AA42
            808666DEFBFAE10D8BA26B249DA59253AD1C4721526F6561CC753F4B602B658A
            922D65435E14752C740B2B1F8DC7E785A13A0A91E4A68098E2632DEDA615BB1F
            52791FF3B60A0B33AE28CDA51DE4131962BB59D242773F0E988AB60A54631DA0
            F142D4D3FECD80EB62754B737D2BD05CF5C6DC5033E59152CB6332426570CA11
            4BD87336F2C75B4F04E68E1EA5D45B2955F9ACB355492C20441D8B08880CA3CC
            EF7B9E5BE3E9DA68456247CBF5B3BC8CC97272E72FA12F77B429A54B1B01A473
            FE98F38FB3D745FD5128926A63231D4DC8691A6FE82FCB00D63C2A0C5B9001F2
            187A11B3B2D4F7AA3BBFF8BE3828560EF238D861846C7E94EA5009B1BDEDE786
            1585CB059C4836325EDAB97217C490C7E278E1915D4062011E83F2C38ACE469D
            E1B5CB7AF538003E9E9D619A07625907BC105EDBFC3E18816891AAACA3781592
            27EF01F7E40B65E5D3CFFA61C001DE4A970C2427C883607CF0125BFB3DECD38A
            7B4DCDFF0066F0C64B599DD5A8D4C94A8CC2304800B37BAA371B9239E2896587
            48650F67B33B1BFECC8CFABD52AFB43CDE9F28A5906A39765D277D520F4D4FB4
            6845FA6B18C929CDFE23EE8C4F637673F657ECD3B31CAE1A4CB38628AAA5493B
            E35998C4B533BBFEF1761B7C0003D319DE39BE590F2B7C2355869E382358E255
            8E341A55145801E40632CB13F626EB3E36B9C73F2E351763A621DB6C60CB2490
            E81DDD46AB595ADB1231CE6CB1448AAB9CA460310491CED6C566FC5120EAEA02
            DC7960B3A908B22A6A8437BE9BE037C20C8F9EBA3A79A352E8AD21F0A96B5FE1
            8872342870226CC11BC37E584DC5918159CFB345A75603C0DCC1C566C51E0A05
            7F14B55D6F760C724E032AAC97DCDB6FCF0511446E5B96D067F4CB15408E4491
            4AD4ACBC9CEDE102DBEF7DEFB6268952A332ED0FECF35D009B30C815EB696E4B
            D1B1065407F77F787D0FC70DD1A2390A5761B439BF07F1C66199E5F14C69447A
            6BE12C42A10DB330FA836DC73C5CA7C51549DB366ED06A9F8802E63432C72D3A
            47AAA200E86473FBE855B7E66E08BF5C533E4682B3CDBC731CAB9BCD2B461660
            07816F723A5EFBDED888A2FE8A6C8BDEA35EEA7C8F5C684490F3E5E60669213D
            DB39F121F74FAFC70E4884AB1F8E2D2C7624FBB86454C5FB30BFA626C468E344
            A9657BA293BBA8BD87C30E9953445D542159807702FB0387B2BA19A7D71B5C10
            47AE26C5689ECB657241F0EDBE2993228B265D1DDEE79E2965D044FD3C8D115D
            1CEF842F34FECDB338A5A9920A87B3A80CA0B73F3DB015B468ED5EB178D59951
            4DF5DEC06DBF9DB0D454CA2712F6C106595262A77F699541D00B9517B5AE0DC5
            F0514B6627C45C659AE708F0C929A6815CB1D0F7624F99E78BA18FD94CA54542
            45FBDF78FC4F5C6E4944C939162C9630116E9EF73F861A127192662CAB745A2B
            4FC54D96D55652A2C4902CC4DE9D40D67A312194F2F5B7A63E81A7CCDE247CE7
            5D82B233CF395C96CB28C7FE0A7FE918C7ECF431FC504F7F6C481D1275F16020
            2E97EF350FE138714515B1B7960147A17B6D6D3EABCF0E04A450BCD43AF7203E
            927AEE36F9EC70C853E48157662C187303AE19101110902109F769D4F97F9BE0
            72BE01B1D8FBC401957C279DB91FAE04847C92792E4159C479853D1E5F472D55
            654308E382137691C9D9147563D062A9E58C7B1E38EB93DCFF0067EFECDBABCD
            4439B76A33C99752DB5479150CA3BF6B81BCB2AECBD7C2B73EA39639D2D44B23
            DA87DD47BEB823807877B39C8A0CA386F27A5C9B2F8AD6869630BA8F2BB1E64F
            A937C3C71D1537C96512586344550B67CD2E12440C99B18A6E8710D518E56591
            6240F3546D8E36595B2C488DA9AF488BDB56AB6F6C6566B841B2B95F9B784F4C
            56CEC60C7C1073E640EF8393AD1811B559C04902F98FA60E4BD468026CF3B90C
            4B2865175240201B6DB1C57EC6DA428CDE5869D7BDA812CAA0DE50BA7501D48B
            F3F8621A2D52A29BC51C46E8ACE5FC6C349526E39D8612864CCB739CC3B8A1A9
            CC4660B0D5D3CCABECFDE28773D1901F223D71143AEC83E0CE2FABA4CE6233D5
            39896E4AB35F51BDF97A6F87434BA375C9F8D92AA828DFDB9FB8824D6F4E917F
            B4E62C6FB803D317233FB2D74094B2CB255434F107A81F7D3468A09B0DAF7E7D
            37C450C61BDB165399767D3BE7B92C7ED594B4AD2D4A15EF26A3736F1823768F
            EB6F86F8468BA123CDDC6FC55535F9ED4D6D4494B5F492917A8A246558F6E601
            B6DE78948D09909338254A90E0EE194DC62E435834C75922F7FA6185B0495506
            C56E7CF0C23ECE4148B21D51B9461D0EEA7E589B42D851A796DE3556F4183814
            167CB1A6BE88EC7CAC0E0DC5409FB2E585C6B4DB06E025B2FA7E43CCDB0A04FD
            3DA36DC1653B5C73BF9614B507D3CE219BBA65D26DB06E630BC9622532ECC5A9
            665943F7722FBACBC860A61261F9EF683515B0252523149C0D52CC8C400BE5F1
            38B228C72666D9BE6D34ECE9DFDEE2C7722FF2C6848CF26444264940B8D27CB5
            62D33B61905139910FAE028916985929E250CC030F2173874AB9296EF82AB9D7
            0664F99D54929334059B5111B0D37EB61636C7570EB5E35472B3E85657679B32
            C3FF0066D27FF053FF0048C7A1F67363F8A0838601C8D701048529050A1E5D74
            F3F31D70C20E1A6EEC5BCB7C003F06836279E1C92632E8E4B9D4354320D2579D
            C74DBD0DB01530A932BEEBBA9090CACBA811CCEF6DF0C88140E88CAAA29DC69B
            E048951B2FDD96F65BC5BDB3713D3E43C2D969AB950FDED4C8BA60A34FF792B9
            D80DBE27A0C64CD9B6745CA08FD53FB3CFD96784BB07CB22A8A6A6199713C910
            5AACE6A3C72313EF2C57FF006697E82D7EB8E5BDD9D8929D706E31BEC3FAE3A1
            8B1A82E4CEDD8E77B8D3641F19AD846C043D4633CE5432187A8C71F2E4E47189
            2A740BB72C7173656D96A405575DA52E391C634F71A6312BD9AE61AD49D7A7A5
            B55AF8867570C2E8ADD766574BF3BE119DBC58D2440D6E6ED046D620373077DA
            F8AECD48ACD5E733AB1D45EC0FBEE7727CFD3058CA88893386EF5B535DBA8079
            9C41364554F164945DE188F7445D6EA35A8F3041E7F0C4320CE73AE21695184B
            E2986C40523F3B610B1149CEA477003A5ADE2563B13FE18287443408CF529A89
            D00DDC03636BEF6F5B625132E8DC324CEE960A7ABA6C96B454C26048D679610A
            43320B860CDCC1BF885C7962C4505BB2BCF331A68008DA99A4311506752CB7B5
            81E60FD08C3132E82E5CDA69685C4ABAA795409252B709CB60072BD8F3BE1593
            167983B64ECA5B2CCD25CDF23862A7CB2524D45046FA4C2C7F1C62DBAEFBA8E5
            D36E4E8D49F06375B10C8B44B0D425551C8A4BAD3EE6220D8FCB1621D3386AD6
            717420A9DC1E63E7890B1B53ADB4BBD93AD85EDE58615B1475D3B8643A97A8E5
            82850EA5AB43727C24F4F3C020B96B230576BFC398C29034C448E5410818DF51
            E6710141913A4712A8454602C4DF9FAE18120FA593C3BECBD6C771F0C29621E6
            6B1591A6762362ED7636F8E14B103E679B49104861F03B7899C8E9FD716A4552
            64726771D2B39D121563721580BFAF9E2D48C7260B2D4515733482765D66C239
            54A907CEFB838BD233C98F411434805A55707DD245AF89652C784E6E7BB5323F
            50A0E02998EF735B3A83602FD18EFF00E186A2AB14226A72A042B2391E333B78
            41FE1DF13C22393CAB958FFB3A97FF00849D6FD063DB1E657E283917958D97A9
            FE58821A0889803B20B0FDEC040FC52BBCA00B587EE2E1D121ED45331D4D62A4
            06171B9E43E5D711EC05889227201D4C39D9B91FE786401D4157DCCCA5D2EAA4
            128C2E08E76C3D595572587306A8CD4A485A3115BC2A65550A2DBDD49BF3FE5F
            0C43A44D1AB7D9E7ECBF9F76EFC4D2522492653925100D5B99CB1170B702C918
            D8331BF9D873C73F3EAD41522CADBC9FAA9D93764FC37D8EF0AD3E43C3344292
            963F14D2B0BCB5125B79246EAC7F2E42D8C3083CCF732994ECBDA380074C74E3
            1DAA8A05F7B8BD01F77B89012D362B6E806249F1CBD4CD16A1892A36C7032E42
            C4802BB304A788932693E5E78E7BE4D1083657EAF370D1826D7236EB85A3AB87
            095FADAF24B13E784A3AF8B1D10198E61A149C29D0AE0A96759C5E19CABEA651
            EE2917B92079E2280A8D7E65DFB6A627503B5CDFA61289237883317CAEA7D9FB
            F1237761C91E4C3A0F2B60021339A7929F2FA5AD86A29EA219CB2218DC175B73
            BAF3EBD71016552A5CB313AFA61408AAB3AD2D7C40D643B41AA464BB0D46D617
            DF128735AECBE886654B0BD9C54518315940F70DC824F3E840F9E2C429A61E1E
            78904A508DB732026FEBF0F4C3D011F9C50B8A71224AA0906E0EC5B95C5C9BDF
            E17C2B4052B3C8E6ABEEE34A299207B2B48770EE7981B585B6EB881933CC5DA6
            F0C5370F673256E586768269DD2586406CAC0F35BDC8BDF91F2DAF8B22CBD329
            26330132D20FB8E6E97B5BCED8B8184475BDEC6186C09B60A0A0A1369DB6DBE7
            8822876145A889C01AB7DC9E9F0C4D072333C8B97C7A11CEE7F162289A184AB2
            9292F622D88A0A24A8AA43A060F60C7960A2689F8174691706CBF8B61890A1D1
            32442E3DE1CEDCB7C407454F3ECD529F3D546B6A7885ADD37C69840CF3901396
            570779357BAB73B7C71A2A8CCD84533BFB4A4AAE5241F894E02A6498CC1E200C
            5259FF00172B9389119C6CDA5B6AEF187465BFF4C419E40B57985ACA6188AB6F
            E252CC4FC4E25949C8AA199353315E800D80C230ECF39E54BA32EA56BEABC49B
            7C863DC1E697E28343FA5BD3102B1C8D6E6FE787AE003E9898F97BDD2FCB0AC8
            24E67A86A043292149BDBA9C08108820796402EA91FAFF002F3C3A24978638E9
            EC6288CF21D8BC80951EB6FEB8852228DE3ECC7F667CDFB73E2459644932FE18
            A47FF5CCC191943FFE145FBCD6FA733E479FA8CFB7A24FD54E0BE11CAB80F87A
            8724C9A9568B2EA48C47142BE83993D49E64E39F8B13CD2DCCAA53BE0B1A3D80
            C76A1051548CFD0BEF716D01F77B800F8CB7C480DC93D86326595003C9518F39
            AACACBA207535600DBDEE98E4376698A2AF9B66DDD54F74EFA5CEF6F3C2D1D7C
            18934990555981D4DADFAE20ED63824889AEAF5D375626DD17AE10D295150CEF
            35929E3974C48EE6E34C9D3E3851F719CD6575746D34B21595402DA09000E980
            2CAF9CF5A48F4CC81189B6A02DF97F3C2D01195F98A4B39608CACDB117D57B75
            C2BE02C0DAA1A38813CF7B62B0B18A8A9334A09F780DF13440154C9DE2DB0513
            645CCBF7836D3EB88F65A9F058B8438D730E11AE54A79563A6A87513B347A869
            06FCF98E67A62C42D9E9BA3E208A48E99E38D0D3C8859A64DF51B786C3A8B75F
            CB1608C85CEAA69E4D2CABE264D2069F137A0037BE21916509A61C4957153534
            627AA5D565318D4B6D981DC6FCBE1886B8193A32FE32A3A6482A68E5961EE84B
            ADA91DD557572703C8DFAE21705F1661BC43964F93661A6185FB866DC3105B41
            E46E366FCB1A9745C88AA9A5EEE5EF631662791361F0F438924434814300FD36
            C040551D547192ACECA4EC0AF2C040C56CBE3E7ABD711458BA061516623F9E0A
            2494CADD9E58CEDA4796FF005C28ACB4C3278016B8005C8EA70058DD55525242
            ECE5428F111CF7B61E11B624DD2333AB9E4ADCC64AD62A859ACAB6E43E78E8C1
            5239F29724C52CC8CBAD8F8D6D60C363EB887D95D8FCD545A08D630A34DEEC79
            EFD30A013421158BD454288749F0A78DD8FC072F9DB12248428D6A486D163B0F
            3C4332CC1F3394068B4FBE2E4FC3125413484E8049B1B73C251623CF39749AA8
            28C794283FF28C7B93CA47A41B12788E0243614BDBC1A7D79DFAE24090A693D9
            1491E276D812761F3C140744AF2310C753DF63836851214517890CA19F7DB4F3
            0713B5203D11F667FB3C55F6D9C51189A95E9B22A32B256D536A0A05FDC1D0B3
            6FB796E76E7CBD467D9C227F1567EA670970D655C1D90D1E4F93D1C597E5B488
            238A08859547F5EB7EB8C58A0F2BB65129593B1CDB0B1C75E3151545039DF7AE
            2F407DDF7AE240FBBEF5C0036F536EB8CF932289290C3D4FAE38BA8CD68B1206
            92AB46ADFA5F1E7E6F732F4AC80CCB33B21F1DBD31551D3C18DB2AF5759AA590
            EBEF09E6DAAF616E588676B146883AFCCD69C39B7786DB6F6DF086FF00456735
            CF6A8441A19A5A696DBB466FD39600ECA155E693471309E4EF9EFCCF5F3C2501
            5DCEABA634FDD2A2ABEA0DA986F6C1404516EF0E142C62A17B9602FCF1144D83
            5523AA6A73B7E1C4530B0506E84DF05058C48B75C1416093235BC1CFFC3103A6
            30CC428074DFAE019334BECDB8967A7CB5E99A41208D8F76ADEF283BD81FDDEB
            874164CF1071318CD2CAD521F5DE411C2406500D875D88F961C5A331E20E22A9
            A8CC24AA92AA46A872C525BF8C31E7B8EBBE2064A8A6CD98493C522BCE1D8B78
            EE2EAC3D41EBBED8945C88ACC6A3F6AC95315630D290FDD49608C48B01BDB73E
            9D77F2C58862AB25199869EF4C5A7DE7517C39601494A1F582C6FD242B6270C3
            0D4545DDC67917BF5D89C4D01C922731696505CB1B1171B7F5C28C98CC14C101
            12232B0E4C6DCBE1E7809B26A9A8FD9A48D4DB5FE2B81D796D808B276388C562
            798DF9ED82AC5BA2AFC595C52A12910B2AB0D6C6C37DFCF1A71C4C59645726EE
            CB69D03481C9BFC31ADAE0C763D40DA5026AB7A0FE5E988F44592532BA9511B9
            B8E775FE784017BE91726FFDEC0CAECE06D049DFE5CF1156513643E639AC70D7
            10EC00000DF9E2E8C0CFB85C3C594F12DAF70391C44B1964666339546A686935
            5EDDD27BBF018F627988F489DCBCC30349E0D3B5F51DDCFF009F2C048FC52B4B
            12C8B0DA3B16BB5AEC6D6DFF00A6001704074999DC2447F15EE49F4C5A9101D4
            469EC5023027911B927FCF97AE21324D8FECF9D87663DB0F16D365D4B0CBECA8
            55EB2B88F053C77DFE67A7CBCF187519B681FAB3D9EF0364DD9BF0C51E4391D3
            0A6A0A651A761AA463CDD8F527CF1C88C1E595B2B94ACB52C806D8EB638A8AA4
            667C0B125F1A52015DEE180FBBDC0025A6C56D80C3CDCF1C7D4E468B521979EC
            31C39C9C8B5220731CCE58EB4AA11DD816606F704F5FA5B190DD8B1D95FCC6AA
            FA85FADF10F83B78A14880CC2B7425F08749469159CC731362FAD85BE785A1CA
            86779AF7AAFBB731FE6D88A029F5D5ACAFA979023EB84208DAEAC6ACA9732FBC
            396020199ADD70B440DCF52EE0967D442803E0390FA6249B0192A1D86972CD6E
            40F2C01635ABCF6F4C28C7C4F80E0005736F96F88A240AA76B8C04A62B2ACD8E
            5551AC9BA3828CA45EE31230ACE73C6AA28691A586D185377B1DFDE1B7317C30
            C880AFAA9244574611F76D76DAE1FF00CF9E24640198E60B59533D4C30080358
            9488B08D0FA037E7F1C322C4454F3192D1B789C1D40FE217C3A24054196FE3F1
            5CFE1DC61C71B34F653A4DC75BE0186800A847261C85B62305058D7740B213B8
            BEE18D8E2687475A90120A163BEC09BB01EBD311402E929DA396F10286DCC0DC
            619F44224DAB1A1A6237361C89BE260ACAF23A33BA8AD5AFCC6A2A9B5152F75B
            F223A75C6F8C691CD94AD819776918DDB73D0E2C2861948CF15BC646A04EF886
            492B0C9DE8009D4074DB9E2AA01EEF343DED6DB962595364666F989A5A0A9981
            65D08C401B5CF4B1F8E2EC6AFB33CD998C758F567BDAB699E53B17BDCFD4E352
            4BA31BEC360972FD1E3B6AFF00C4BE16487890B9353F79975220F0B18633E2DB
            6D2396D8F4B479F8F4896928CD1FDEA90EDCC063F9FAFF00861A86076AB9EA4F
            DE3027A2A2D860AA00CA4A49AAF42301101E1B0DC9F962E7CA0358ECAFB1FCC7
            8EF3DA3A1A081AA25A86B050D761E6C4F2007E9F0DF2E4CAB0C464A8FD4CEC5F
            B2BCB7B21E0F8327A18D4CEC0354CC3F1C96FD07218F3F393CB2B127234447C7
            471469233F63C24B6372421DEF70F607DDEE0B039DF7AE24810F3632E4632069
            66E76B06F3C7075332D446C92D4084095C6A3CDA20545FE671C87234C1220E40
            94E1C825998DC962589F893CF0874B1A21AAEAF548CBE5B620EC625C15ECCE6B
            2E2A66DF4563379ED1102FA05AF770373E9CCF2C02D942CFB30EF18C5AC8553F
            8795F081656E599F7F1E0241DDEFCCDCE14507926D37C003324FB6000569B738
            0064556A622FCB00C75A7F5C0036F2F84FE9E58564D80D43F83012474B358E25
            22C4C1AA9C2AC6C1B5920DD7F777FF00270C8B9024B506450921254DAE571249
            1AEBDD31DC0B1E4799FEB862465DD751620466D6F09E787400C2C1CF31E44E18
            71CF13F809247326D882C4F8189E02C2C88CCA7DD3CAD860B050763B03BF23D7
            01212D2AA2A5C825869FFA0EB800E96500693A4F517E789EC8EB92BBC619E188
            7B144E6399B794AB6FA7CAFEB8D38E062CB90AA2BB2A804597A038DC957073DB
            B763D0B6B16C231AC3A1F0A5BC8E1056C92A7974460F3DCDCF962451BA9AF765
            65F740FC7882B645E66A6BF289E2F7894363EB8B6066994358E21B137231A519
            98F243048B673600EC710C6891B94C88328A2212F27708353720348FEB8F4B47
            0A3D2240A42F0A68D6245DD81DC11D7AE1861EA65569416D614EE48363F006DF
            1C376422F5C05C279B71B67D4B94E4396C95B5B2B00AAA3BC2079936DB6F3C51
            9B278D1623F4DBECE7D84D1F639C368D51A6A388AAE31ED75170740E91A1F21D
            7FC31E77366795D08D9B3A3E2FC38F8289723CB2D863AD08D213A1626C58F814
            EF7B800E77F800419F15CA7430DBCD8E665C832430F3638BA8765890254CDB6D
            CBAE39F46981095F500036E5893A58CAF564F7BE20EBE22BB9B4BB1C21ACA7E7
            75244365BA80799DBE982852839E5640F54C223C80B97F3EB85A021B5823960A
            01A6977C2900D2CBB9C0160724FB9C000EF518006167D2E4F99C0358B3557C14
            1621EA70A160F3CBE1D5F2C41245D4CBA4918945880A57B8BE1E8B97432F2787
            C3EF60A241A590CC34B72187489B0275EEDC01CB9DED892C47263B8BFE2E7B7F
            9BE24647D18B4A01F9FC31202A52A10121010367E763EB86A20166B3E892337E
            A4A9B0C143A6291BBD84CBAE365074328362A7CFD460A0B06ABCC92815A677F0
            AA9F23BDB16638DB29C92A46755150F5D5CF5121EF1E4E77E58E9C6348E4CE56
            C6DE5D402791E9862BB24295CBA01D7F96118D64AAC4B64F08E5D4E2B0634A64
            88F898331EA0586020F99CDF7B5F015B1A913BD7D2469054EE395F16C0CD3336
            A99BB8A860C039D440FAE34A333EC90A0A44AA05E55B0B6CBE58563C48FCAA3B
            E5397F802DE9E31A98F3F08DB1E9A2FF0067062B844930701534A31D375D27FA
            73C12E391D2371FB3DFD977887B6CCC0D57B40C9321886A92B678998C86FEEC6
            A08BF23D76DB18F36A6305C31AA8FD07EC57B00E16EC4B2C116514BDF662EBA6
            7CCA524C928BDEC3F747A0F2E671C3C995E562B91AA23DB6F2C5D8E250D8F093
            1D482105F7D618D1629CEF09C4D81C33DB6C2364893362A7324434F8C93958C9
            0832E39F3630D4925F7C73723E494816A9FC1F2C6566981055D2F3F15B127531
            1075536E77BE20EAC0AE66F5655480BB756C21A17451739AB572E2D6DF97FD70
            84D946CD46B99CA7BC3C5BEDB60022DE7373FCB00583CB36D85A20067AAB5C60
            A20027ADB622890296B6C30240712B36C3123A935D49C43448967DB0500D48E4
            8C450DC91F532D81C4A45B100925EF430B11A7AED6C316211AFD41F538061A92
            45470C7773B0B73FA618011AAFF6953EA4DECC54B37316DAD89191C2E6A14016
            F08D8F4DBA6186B1714C0A92AD627720358E242CE48E1D402BE3EADBDCE242C8
            FAC5D4AA15DF486DEFB9C4D12AC74C766006DB7BF7389AB094A8A4F15E6AB355
            AD2ABFDDC26EF6DFC58DB8E147372CED9174E0BA92CA4820EE31ADF0635D8AEE
            B59665D4AA82E45B9E2B1C93A38EC1584616E3995B62B64121DEF86DF0C14032
            F22B8B6022C66F63616BFF002C08A9B18ABAA5A78243723C2DBAF4DB17C0CF36
            66D4D119A52CF62D7BD863519499827102DAD6623718ADAB26C91E1FE05AAA9C
            8B25A87ABA58DE6A58E48A95250D3142A2C5BF72FD06E7AD863BFBD49D7E8E5C
            5708F4FF00603F633AFE296A6CEB8AD21A1CA1C8921A5D25A49547226FB6922D
            CFE871CED4EB1456D45947BF327CAE9723CBA9A8A8A08E9A929E311C51449A55
            5472000C70BED276CA1C89112DB1A61457D8B4979E3541F240B1516C6F8BE0AC
            EF7F87DE024D46FCF06F03E335FAE2B94C6A38260714390523E335C586289B19
            0869B1CF9C894AC69A7C6190E075953E1C545F0457EB27BC8DCF033AD8910759
            5761B6119D482E0AAE719B6995D141641EFDF6F90C145A522B7378EED3042A14
            F37B5C1C2D0158CEF3F35B3F7AA890B1408FDDADB574E588A02BD24FB5B7F9E2
            68012A2AB40BB1D43CB114044D5D78DEDB0F2C4D010B579A9B9F436C14000737
            D6DEF5B13B402E9AB2F63CF114487A4E877C4326C5B540B6D88246A49B6C0300
            54B5F51F3C4D1620577DAD892C4C69A4DD71048A6BB589E40FC712036C631196
            008BEDB79E01901543FB3A025BB923C86DF5C38C269AA95D35A36871B1D3D7E3
            8903E9270ACAE86E49F3E786241124D552C49E786A25304E21AF196D3C926B57
            77F0A47AB7BE34638D99334A8CF156499C1B0B1E6A4753EB8E82548E539DB24E
            0F043A75F2C4344A63EAC10020827CD7F9E1070A49A6EF198B8EEB4DB4053AAF
            F1BE1180FD3C97A6DC2AD8F3C4116334B23B19589BA96B72FA6015B1729D8587
            5DCE24A99099A4C21A4A921AE0A91AB1740CF32A092E837B63525C196C7854DF
            CBE789A26CFD16FB327D9CF8525E04E0CE31CD32D4CC733ACC832D78D6A06A8A
            2B534643043B163E67C8630E7CAFC924BF6CC4A694123D434EB1C2AA1001616B
            0C66E64532904896F8D504522BBD18D007DDF5FAE0DC91077BEC58B2501F19AE
            30BE4B039DEFC306FF00EC0E77C30AE6073BFC54E64896A8C679641921B6A9F5
            C6394C7AB049F300A48F218A5B2E8E3222A73556B8EA36C167431E321EAEBBDE
            3AAC805FE1853A38E3440576690B25FCF0726B29F9F663BB68E56DBD7058142C
            CF32592F147E04BDCFA9C28C0632BF6AC9E7AC4765687DE16C14495C96A74B11
            E63AE0000A8ABB2DB034459019BE67DC46C755B6F4C4A8362B651330E251DF04
            57DEF6C6A8E22370BA3CCFBC6DDF7381C09DC4F50D5F879E296892569E7BA2E2
            B64A09320249C450E98DCD2F87094381DC4EC545F51D869C3162634EA5588762
            2DE78064C659C0240E5E78918E89F6D1E7880116B39F8E189B11570F7EAA3FA6
            249B019A9FD957C2AC588E6075C4808921D71A2EE9717D44DC7EB8641628431A
            C6CA085206E6FB5BCF7C59156439D233EE22CCDB33CC2DDEEB850E9523F5C743
            1C68E4E79D8C8D02201AC749039D811EB8D262B16B36A8CDB9836DF961686DC2
            E02E1BCFD474C23458987993444097FCB094163D03A4B19BBEDF4DF114038ECC
            AA420F101F5C142D8D962F04A18DC0DEF817023FD94ECFABD129D29F558B372F
            4C74B4D8BC8CE7EA32ED444154540CAFB9F4C75F269B6C6CE5C351B9D0949ADE
            B8E5B8D337A933F5E7ECF1201D8076662FFF00E18CB3FF00948F1CBCC97965FE
            D9813E0D0D66F5C445A40F91466DF9E2CBA2109351EB887324F8CDB73C53E40A
            3827F5C46F0A3E33FAE177B0A473BF1E783C8C291F77DEB887362D1F19EDD715
            EF1D0869FD719DCB91888CDEAEADACB4D2A4763B87526F8AECD38E29F2072D5B
            9D2A64049E6472C4A36289195954AAEE848BADB96037E244356D7E885CDF6C41
            B52A2A39B672C91DB50D3CEDCCF3C00CA6E6F9D3D8B77810B0D831B9185B24A8
            55D69F192FE11B9DF12033067D3A65F3C30CCCB0CCA3528E4C2F80920EA74B4C
            92EB6055480A0EC6F6B9B7CBF5C04015755A2C6C79DFF3C4D10D99771EF14C90
            23414FBB13626FCB1BF042CA5B33B833099A7526E49F2C6ED89156EE4B6E5352
            5CAEB63CB19E68B532E596CB68458DC631C917264CC12B6DE58CF21930C497C0
            6E7114321979CB6D7C450E346420F85D91D4DEFEB88A1D3189656249620B36E4
            9C48D630FEF0DF00E74BD89DF000A0C0F2B29F3C0458A73E03E2DEDF1C01636E
            CDABF785B9F2FCB128938D36888124136049BE190107C4199AD365D3ADC1924D
            803EB8D98A265CB2A450A47D4806C34EC49C74D4691C99CAD8D2D42AA11B0B9B
            1D36B624A6C7A0A942AD67B6D88A26C7A196EE6C6FF3C2343A612262C0DB95EC
            708C9B09501001F8798F8E207BE06EA82D408DA476010DC2A9B03F1C02825657
            9D320360000D7E98751B2B94BD14ACE25F69CC032EF6DAFE98ED6856D671F57D
            047B2070000CA3A118F513C5BE079F84F6C861A2D0E56F7B6D7C79DCDA771676
            B1E64D1FAE9F67B96DD8176683FF00D33967FF002B1E3CE66FFB25FED8ABA340
            EF715A6488336F8594863866F5C51B8939DE616C5A3BDE9B60B0A3EEFB0BB893
            867C2EE0196AF549D2225B5B6FB292309B80F9EB05BDEB621C8751B009F32944
            C02DBBB17BDF9DFD30A688E2B0296B97C4C5F7B60A35C71B21EA33362491B0F3
            C41BE1022E7A95875C8A7C6C753163CF6FF0C06B5120334CDD0A12BB0EBE9881
            CA8E639824B3690C0027960028B9AD777B213B6D8008A7AAD6B6C0160F2545B6
            C48B603575763F2C4A02A7C419DA5051CCECF6B03637DBE18D18E36572746399
            B6606B2676DFC5BF3DF7C75211A46693B01A75BB61E42A2CB9449A428B72FC58
            CD246845CF2D9D34EE6FB6E7CF18E48B913505478462968709351E1185250DB4
            FEF1D37BED7F2C2D16A13AEF27C462061B79356FE58287424CB7504F5E782806
            A6AB48212D23695BD81F5270500A2DF7424BB3DB90F3C140391CBA948DF7FA60
            01A058B18D96E390BF5C4B21B393D57734F33348228F4F8F57403ADF16C23657
            2C9B5198E6599CD9A4FDEB1EED46CA9D2D8EA423472F2E5B236AAA35D805B81E
            F1BE352306EE46E32B1AB585AE3724DC0C4D0B6291C59D6FB11B5BA8C2D1363B
            4AED1D94358E9E57B8C416264A40AEB0EA625BD31532C4C315F546AD6D3A873E
            7841EC62A66588A827ADB50E78748ADB21F319F583A4B206E78BA08A5B2BD52B
            A6642077801B105AC48F8DB6C74F4DF91CDD5728B2365491655056D33B4B4D2B
            989C3801A271F84F4371B83B7C31EBB17491E527C4980CB0A5FCBD30F3C3190F
            1C947EABFD9F49FF00D82F66DFFF001ACB7FF958F1F32CDFF64BFDB3D0AE8BEB
            31C544892714486F426E719BD81F5CE26D927D7382D81F5CE1580824DF08C06D
            C9D5818C80A5D987AE14D304464F232A9B1B6251BA29119348DE780D90403552
            377477C06A4886AF91BBA02FF8701632AD994AE17DE3CB10214FCDA560ADE2E9
            800AACAE493BF4C000AEC741C32002726CD81011D592369617E9864065DDA254
            49DE53C7ACE82D723E0063A3897466999FC9EFB7C71BFD19D30AA5723AE15F43
            22C79593DD83EB8CF2ECBA259A8892131959A1744E40C6DCFAE2964850737E78
            A996A1CE6A30A58841030120B2310E45F6C049D04E8C002A68919D015046C6C7
            CF000EC7CC7C70003D5C8C913153637E63000BCBFF00D61E0EF0EAB917C08891
            5BE3B99E3A78E256223693C4BE76E58DD8518B3F08A54EC4F5C74574721823EC
            76C5912A6254DE4B1DC61D8A371EF516E973B6159283A9D158A5C5F5117BE118
            DEC9B516516C545F1151A868646237076388199132B1F6E945F6B5EDF2C3A2B6
            46D548C20E7CC80716C4A991C58B471DCDFC431D2D27E473B51D161E1BCE2B32
            BAB11D34E5229D91258880D1C82F6B329B83F318F5F15F53CC65ED935DA3E554
            991F134B4D4308820D21F40248048F5BFD305B31B67FFFD9}
          Stretch = True
        end
      end
    end
  end
  object QueryDentistas: TQuery
    AfterInsert = QueryDentistasAfterInsert
    BeforePost = QueryDentistasBeforePost
    AfterPost = QueryDentistasAfterPost
    AfterScroll = QueryDentistasAfterScroll
    OnNewRecord = QueryDentistasNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Dentista where codigo ='
      '0'
      'order by Nome')
    Left = 168
    Top = 24
    object QueryDentistasCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Dentista.Codigo'
    end
    object QueryDentistasNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Dentista.Nome'
      Size = 40
    end
    object QueryDentistasEndereco_Comercial: TStringField
      FieldName = 'Endereco_Comercial'
      Origin = 'MULTI.Dentista.Endereco_Comercial'
      Size = 40
    end
    object QueryDentistasBairro_Comercial: TStringField
      FieldName = 'Bairro_Comercial'
      Origin = 'MULTI.Dentista.Bairro_Comercial'
      Size = 25
    end
    object QueryDentistasCep_Comercial: TStringField
      FieldName = 'Cep_Comercial'
      Origin = 'MULTI.Dentista.Cep_Comercial'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object QueryDentistasCidade_Comercial: TStringField
      FieldName = 'Cidade_Comercial'
      Origin = 'MULTI.Dentista.Cidade_Comercial'
      Size = 25
    end
    object QueryDentistasEstado_Comercial: TStringField
      FieldName = 'Estado_Comercial'
      Origin = 'MULTI.Dentista.Estado_Comercial'
      Size = 2
    end
    object QueryDentistasEndereco_Residencial: TStringField
      FieldName = 'Endereco_Residencial'
      Origin = 'MULTI.Dentista.Endereco_Residencial'
      Size = 40
    end
    object QueryDentistasBairro_Residencial: TStringField
      FieldName = 'Bairro_Residencial'
      Origin = 'MULTI.Dentista.Bairro_Residencial'
      Size = 25
    end
    object QueryDentistasCep_Residencial: TStringField
      FieldName = 'Cep_Residencial'
      Origin = 'MULTI.Dentista.Cep_Residencial'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object QueryDentistasCidade_Residencial: TStringField
      FieldName = 'Cidade_Residencial'
      Origin = 'MULTI.Dentista.Cidade_Residencial'
      Size = 25
    end
    object QueryDentistasEstado_Residencial: TStringField
      FieldName = 'Estado_Residencial'
      Origin = 'MULTI.Dentista.Estado_Residencial'
      Size = 2
    end
    object QueryDentistasFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'MULTI.Dentista.Fone1'
      Size = 18
    end
    object QueryDentistasTipo_Fone1: TStringField
      FieldName = 'Tipo_Fone1'
      Origin = 'MULTI.Dentista.Tipo_Fone1'
      Size = 10
    end
    object QueryDentistasFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'MULTI.Dentista.Fone2'
      Size = 18
    end
    object QueryDentistasTipo_Fone2: TStringField
      FieldName = 'Tipo_Fone2'
      Origin = 'MULTI.Dentista.Tipo_Fone2'
      Size = 10
    end
    object QueryDentistasFax: TStringField
      FieldName = 'Fax'
      Origin = 'MULTI.Dentista.Fax'
      Size = 18
    end
    object QueryDentistasCelular: TStringField
      FieldName = 'Celular'
      Origin = 'MULTI.Dentista.Celular'
      Size = 18
    end
    object QueryDentistasemail: TStringField
      FieldName = 'email'
      Origin = 'MULTI.Dentista.email'
      Size = 50
    end
    object QueryDentistasData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Dentista.Data_Exclusao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryDentistasCodigo_Clinica: TIntegerField
      FieldName = 'Codigo_Clinica'
      Origin = 'MULTI.Dentista.Codigo_Clinica'
      OnValidate = QueryDentistasCodigo_ClinicaValidate
    end
    object QueryDentistasAcrescimo_NF: TIntegerField
      FieldName = 'Acrescimo_NF'
      Origin = 'MULTI.Dentista.Acrescimo_NF'
    end
    object QueryDentistasDesconto: TIntegerField
      FieldName = 'Desconto'
      Origin = 'MULTI.Dentista.Desconto'
    end
    object QueryDentistasCIC: TStringField
      FieldName = 'CIC'
      Origin = 'MULTI.Dentista.CIC'
      Size = 15
    end
    object QueryDentistasINSS: TStringField
      FieldName = 'INSS'
      Origin = 'MULTI.Dentista.INSS'
      Size = 15
    end
    object QueryDentistascd_motivo_exclusao: TIntegerField
      FieldName = 'cd_motivo_exclusao'
      Origin = 'MULTI.Dentista.cd_motivo_exclusao'
    end
    object QueryDentistascro: TStringField
      FieldName = 'cro'
      Origin = 'MULTI.Dentista.cro'
      Size = 15
    end
    object QueryDentistase_civil: TStringField
      FieldName = 'e_civil'
      Origin = 'MULTI.Dentista.e_civil'
      Size = 13
    end
    object QueryDentistasdt_formacao: TDateTimeField
      FieldName = 'dt_formacao'
      Origin = 'MULTI.Dentista.dt_formacao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryDentistasrg: TStringField
      FieldName = 'rg'
      Origin = 'MULTI.Dentista.rg'
      Size = 15
    end
    object QueryDentistasdt_inclusao: TDateTimeField
      FieldName = 'dt_inclusao'
      Origin = 'MULTI.Dentista.dt_inclusao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryDentistasobs: TMemoField
      FieldName = 'obs'
      Origin = 'MULTI.Dentista.obs'
      BlobType = ftMemo
      Size = 1
    end
    object QueryDentistascd_op_alter: TIntegerField
      FieldName = 'cd_op_alter'
      Origin = 'MULTI.Dentista.cd_op_alter'
    end
    object QueryDentistascnes: TStringField
      FieldName = 'cnes'
      Origin = 'MULTI.Dentista.cnes'
      Size = 7
    end
    object QueryDentistasdt_envio_grafica: TDateTimeField
      FieldName = 'dt_envio_grafica'
      Origin = 'MULTI.Dentista.dt_envio_grafica'
    end
    object QueryDentistasalterado: TStringField
      FieldName = 'alterado'
      Origin = 'MULTI.Dentista.alterado'
      FixedChar = True
      Size = 1
    end
    object QueryDentistaslanca_pkg_orcamento: TStringField
      FieldName = 'lanca_pkg_orcamento'
      Origin = 'MULTI.Dentista.lanca_pkg_orcamento'
      FixedChar = True
      Size = 1
    end
    object QueryDentistascd_especialidade: TSmallintField
      FieldName = 'cd_especialidade'
      Origin = 'MULTI.Dentista.cd_especialidade'
    end
    object QueryDentistasbanco: TStringField
      FieldName = 'banco'
      Origin = 'MULTI.Dentista.banco'
    end
    object QueryDentistasagencia: TStringField
      FieldName = 'agencia'
      Origin = 'MULTI.Dentista.agencia'
      Size = 10
    end
    object QueryDentistascontaCorrente: TStringField
      FieldName = 'contaCorrente'
      Origin = 'MULTI.Dentista.contaCorrente'
      Size = 15
    end
    object QueryDentistasdigitoCC: TStringField
      FieldName = 'digitoCC'
      Origin = 'MULTI.Dentista.digitoCC'
      Size = 5
    end
    object QueryDentistaslg_recebimento_deposito: TBooleanField
      FieldName = 'lg_recebimento_deposito'
      Origin = 'MULTI.Dentista.lg_recebimento_deposito'
    end
    object QueryDentistascd_tabelaQTUS: TIntegerField
      FieldName = 'cd_tabelaQTUS'
      Origin = 'MULTI.Dentista.cd_tabelaQTUS'
    end
    object QueryDentistasexibir: TBooleanField
      FieldName = 'exibir'
      Origin = 'MULTI.Dentista.exibir'
    end
    object QueryDentistasdt_nascimento: TDateTimeField
      FieldName = 'dt_nascimento'
      Origin = 'MULTI.Dentista.dt_nascimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryDentistascd_credenciador: TIntegerField
      FieldName = 'cd_credenciador'
      Origin = 'MULTI.Dentista.cd_credenciador'
    end
    object QueryDentistasNivel_Glosa: TStringField
      FieldName = 'Nivel_Glosa'
      Size = 12
    end
    object QueryDentistasDiasVenctoOrc: TIntegerField
      FieldName = 'DiasVenctoOrc'
    end
    object QueryDentistasautorizado_panoramica: TBooleanField
      FieldName = 'autorizado_panoramica'
    end
  end
  object DataSourceDentistas: TDataSource
    DataSet = QueryDentistas
    Left = 284
    Top = 62
  end
  object QueryPermissoes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from permissoes'
      'where codigo_operador = :Operador'
      'and codigo_grupo = :Grupo'
      'and Codigo_Procedimento = :Procedimento'
      'and Codigo_SubProcedimento = :SubProcedimento')
    Left = 364
    Top = 30
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Operador'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Procedimento'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SubProcedimento'
        ParamType = ptInput
      end>
    object QueryPermissoesCodigo_Operador: TSmallintField
      FieldName = 'Codigo_Operador'
      Origin = 'MULTI.permissoes.Codigo_Operador'
    end
    object QueryPermissoesCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
      Origin = 'MULTI.permissoes.Codigo_Grupo'
    end
    object QueryPermissoesCodigo_Procedimento: TSmallintField
      FieldName = 'Codigo_Procedimento'
      Origin = 'MULTI.permissoes.Codigo_Procedimento'
    end
    object QueryPermissoesCodigo_SubProcedimento: TSmallintField
      FieldName = 'Codigo_SubProcedimento'
      Origin = 'MULTI.permissoes.Codigo_SubProcedimento'
    end
    object QueryPermissoesSomente_Leitura: TBooleanField
      FieldName = 'Somente_Leitura'
      Origin = 'MULTI.permissoes.Somente_Leitura'
    end
  end
  object QueryCancelamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Cancelamento'
      'where tipo = '#39'DENTISTA'#39
      'order by descricao')
    Left = 390
    Top = 65521
  end
  object DataSourceCancelamento: TDataSource
    DataSet = QueryCancelamento
    Left = 442
    Top = 49
  end
  object QueryEspXDent: TQuery
    BeforePost = QueryEspXDentBeforePost
    AfterPost = QueryEspXDentAfterPost
    AfterDelete = QueryEspXDentAfterInsert
    OnNewRecord = QueryEspXDentNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from esp_x_dentista where cd_dentista ='
      '0')
    Left = 454
    Top = 146
    object QueryEspXDentcd_dentista: TIntegerField
      FieldName = 'cd_dentista'
      Origin = 'MULTI.esp_x_dentista.cd_dentista'
    end
    object QueryEspXDentcd_especialidade: TSmallintField
      FieldName = 'cd_especialidade'
      Origin = 'MULTI.esp_x_dentista.cd_especialidade'
    end
    object QueryEspXDentAnoFormacao: TSmallintField
      FieldName = 'AnoFormacao'
      Origin = 'MULTI.esp_x_dentista.AnoFormacao'
    end
    object QueryEspXDentprincipal: TStringField
      FieldName = 'principal'
      Origin = 'MULTI.esp_x_dentista.principal'
      FixedChar = True
      Size = 1
    end
    object QueryEspXDentds_especialidade: TStringField
      FieldKind = fkLookup
      FieldName = 'ds_especialidade'
      LookupDataSet = QueryEsp
      LookupKeyFields = 'cd_especialidade'
      LookupResultField = 'ds_especialidade'
      KeyFields = 'cd_especialidade'
      Size = 30
      Lookup = True
    end
  end
  object DsEspXDent: TDataSource
    DataSet = QueryEspXDent
    Left = 366
    Top = 154
  end
  object DsEsp: TDataSource
    DataSet = QueryEsp
    Left = 542
    Top = 170
  end
  object QueryEsp: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from especialidade where ativa = '#39'S'#39' order by 2')
    Left = 494
    Top = 10
    object QueryEspcd_especialidade: TSmallintField
      FieldName = 'cd_especialidade'
    end
    object QueryEspds_especialidade: TStringField
      FieldName = 'ds_especialidade'
      Size = 30
    end
    object QueryEspativa: TStringField
      FieldName = 'ativa'
      FixedChar = True
      Size = 1
    end
  end
  object QueryEndDentista: TQuery
    BeforePost = QueryEndDentistaBeforePost
    AfterPost = QueryEndDentistaAfterPost
    OnNewRecord = QueryEndDentistaNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from endereco_x_dentista where cd_dentista  ='
      '0'
      'order by ds_endereco')
    Left = 168
    Top = 104
    object QueryEndDentistacd_dentista: TIntegerField
      FieldName = 'cd_dentista'
      Origin = 'MULTI.endereco_x_dentista.cd_dentista'
    end
    object QueryEndDentistads_endereco: TStringField
      FieldName = 'ds_endereco'
      Origin = 'MULTI.endereco_x_dentista.ds_endereco'
      Size = 30
    end
    object QueryEndDentistalogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'MULTI.endereco_x_dentista.logradouro'
      Size = 40
    end
    object QueryEndDentistabairro: TStringField
      FieldName = 'bairro'
      Origin = 'MULTI.endereco_x_dentista.bairro'
      Size = 25
    end
    object QueryEndDentistacep: TStringField
      FieldName = 'cep'
      Origin = 'MULTI.endereco_x_dentista.cep'
      Size = 12
    end
    object QueryEndDentistacd_cidade: TSmallintField
      FieldName = 'cd_cidade'
      Origin = 'MULTI.endereco_x_dentista.cd_cidade'
    end
    object QueryEndDentistafone1: TStringField
      FieldName = 'fone1'
      Origin = 'MULTI.endereco_x_dentista.fone1'
      Size = 15
    end
    object QueryEndDentistahr_ini_atend: TStringField
      FieldName = 'hr_ini_atend'
      Origin = 'MULTI.endereco_x_dentista.hr_ini_atend'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object QueryEndDentistahr_fim_atend: TStringField
      FieldName = 'hr_fim_atend'
      Origin = 'MULTI.endereco_x_dentista.hr_fim_atend'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object QueryEndDentistaseg: TBooleanField
      FieldName = 'seg'
      Origin = 'MULTI.endereco_x_dentista.seg'
    end
    object QueryEndDentistater: TBooleanField
      FieldName = 'ter'
      Origin = 'MULTI.endereco_x_dentista.ter'
    end
    object QueryEndDentistaqua: TBooleanField
      FieldName = 'qua'
      Origin = 'MULTI.endereco_x_dentista.qua'
    end
    object QueryEndDentistaqui: TBooleanField
      FieldName = 'qui'
      Origin = 'MULTI.endereco_x_dentista.qui'
    end
    object QueryEndDentistasex: TBooleanField
      FieldName = 'sex'
      Origin = 'MULTI.endereco_x_dentista.sex'
    end
    object QueryEndDentistasab: TBooleanField
      FieldName = 'sab'
      Origin = 'MULTI.endereco_x_dentista.sab'
    end
    object QueryEndDentistacd_bairro: TSmallintField
      FieldName = 'cd_bairro'
      Origin = 'MULTI.endereco_x_dentista.cd_bairro'
    end
    object QueryEndDentistatp_endereco: TStringField
      FieldName = 'tp_endereco'
      Origin = 'MULTI.endereco_x_dentista.tp_endereco'
      FixedChar = True
      Size = 1
    end
    object QueryEndDentistanumero: TStringField
      FieldName = 'numero'
      Origin = 'MULTI.endereco_x_dentista.numero'
      Size = 10
    end
    object QueryEndDentistacomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'MULTI.endereco_x_dentista.complemento'
    end
    object QueryEndDentistaupdated: TDateTimeField
      FieldName = 'updated'
      Origin = 'MULTI.endereco_x_dentista.updated'
    end
    object QueryEndDentistaidEndereco: TIntegerField
      FieldName = 'idEndereco'
      Origin = 'MULTI.endereco_x_dentista.idEndereco'
    end
    object QueryEndDentistafone2: TStringField
      FieldName = 'fone2'
      Origin = 'MULTI.endereco_x_dentista.fone2'
      Size = 15
    end
    object QueryEndDentistafone3: TStringField
      FieldName = 'fone3'
      Origin = 'MULTI.endereco_x_dentista.fone3'
      Size = 15
    end
  end
  object DsEndDentista: TDataSource
    DataSet = QueryEndDentista
    Left = 268
    Top = 30
  end
  object QueryCidade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from cidade order by ds_cidade')
    Left = 566
    Top = 250
  end
  object DsCidade: TDataSource
    DataSet = QueryCidade
    Left = 494
    Top = 293
  end
  object DsBairro: TDataSource
    DataSet = ADOQueryBairro
    Left = 84
    Top = 176
  end
  object ADOQueryContato: TADOQuery
    Connection = DM.ADOConn
    CursorLocation = clUseServer
    BeforePost = ADOQueryContatoBeforePost
    AfterScroll = ADOQueryContatoAfterScroll
    OnNewRecord = ADOQueryContatoNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select *, substring(ds_contato,1,100) resumo from contato_dentis' +
        'ta where cd_dentista ='
      '1'
      'order by data,indice')
    Left = 412
    Top = 96
    object ADOQueryContatocd_dentista: TIntegerField
      FieldName = 'cd_dentista'
    end
    object ADOQueryContatoindice: TAutoIncField
      FieldName = 'indice'
      ReadOnly = True
    end
    object ADOQueryContatodata: TDateTimeField
      FieldName = 'data'
      EditMask = '!99/99/0000 !90:00:00;1;_'
    end
    object ADOQueryContatocd_operador: TIntegerField
      FieldName = 'cd_operador'
    end
    object ADOQueryContatods_contato: TStringField
      FieldName = 'ds_contato'
      Size = 1000
    end
    object ADOQueryContatodt_sistema: TDateTimeField
      FieldName = 'dt_sistema'
    end
    object ADOQueryContatoresumo: TStringField
      FieldName = 'resumo'
      ReadOnly = True
      Size = 100
    end
  end
  object DsContato: TDataSource
    DataSet = ADOQueryContato
    Left = 308
    Top = 120
  end
  object ADOQueryBairro: TADOQuery
    Connection = DM.ADOConn
    CursorLocation = clUseServer
    BeforePost = ADOQueryContatoBeforePost
    AfterScroll = ADOQueryContatoAfterScroll
    OnNewRecord = ADOQueryContatoNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from bairro order by ds_bairro')
    Left = 228
    Top = 144
  end
  object TabelaQtUS: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TabelaQtUS where tipoTabela in('#39'D'#39','#39'T'#39') order by 2')
    Left = 482
    Top = 224
  end
  object dsTabelaQtUS: TDataSource
    DataSet = TabelaQtUS
    Left = 434
    Top = 352
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.jpg;*.jpeg|JPEG Ima' +
      'ge File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 148
    Top = 384
  end
  object ADOQueryCredenciador: TADOQuery
    Connection = DM.ADOConn
    CursorLocation = clUseServer
    BeforePost = ADOQueryContatoBeforePost
    AfterScroll = ADOQueryContatoAfterScroll
    OnNewRecord = ADOQueryContatoNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from credenciador order by nm_credenciador')
    Left = 372
    Top = 384
  end
  object DsCredenciador: TDataSource
    DataSet = ADOQueryCredenciador
    Left = 228
    Top = 384
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 320
  end
end
