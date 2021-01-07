object FormFaturamento: TFormFaturamento
  Left = 246
  Top = 16
  ActiveControl = DBEditCodigoContratante
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registros do Faturamento'
  ClientHeight = 624
  ClientWidth = 852
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelGrid: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 279
    Align = alTop
    TabOrder = 0
    object Label15: TLabel
      Left = 408
      Top = 128
      Width = 78
      Height = 13
      Caption = 'vr_complemento'
    end
    object DBGridFaturamento: TDBGrid
      Left = 1
      Top = 1
      Width = 850
      Height = 277
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceFaturamento
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'Codigo_Contratante'
          Title.Caption = 'C'#243'digo'
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
          Title.Caption = 'Nome Titular'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Titulo'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_complemento'
          Title.Caption = 'Vr complemento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Cobranca'
          Title.Caption = 'Cobran'#231'a'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Banco'
          Title.Caption = 'N'#186' Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 108
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 279
    Width = 852
    Height = 317
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 11
      Width = 67
      Height = 13
      Caption = 'Contratante'
      FocusControl = DBEditCodigoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 101
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 65
      Top = 64
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 47
      Top = 90
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 186
      Top = 90
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desd.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 44
      Top = 114
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 138
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 14
      Top = 160
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Original'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 33
      Top = 182
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cobran'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 292
      Top = 87
      Width = 153
      Height = 90
    end
    object Label16: TLabel
      Left = 17
      Top = 218
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mensagem 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 16
      Top = 243
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mensagem 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 16
      Top = 269
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mensagem 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditCodigoContratante: TDBEdit
      Left = 18
      Top = 27
      Width = 45
      Height = 21
      DataField = 'Codigo_Contratante'
      DataSource = DataSourceFaturamento
      TabOrder = 0
      OnExit = DBEditCodigoContratanteExit
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBLookupComboBoxTipo: TDBLookupComboBox
      Left = 95
      Top = 58
      Width = 183
      Height = 21
      DataField = 'Tipo_Documento'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSourceTipoDocumento
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditNumero: TDBEdit
      Left = 95
      Top = 82
      Width = 85
      Height = 21
      DataField = 'Numero_Titulo'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBComboBoxDesdobramento: TDBComboBox
      Left = 225
      Top = 82
      Width = 53
      Height = 19
      Style = csOwnerDrawFixed
      DataField = 'Desdobramento'
      DataSource = DataSourceFaturamento
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Z')
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditEmissao: TDBEdit
      Left = 95
      Top = 106
      Width = 80
      Height = 21
      DataField = 'Data_Emissao'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditVencimento: TDBEdit
      Left = 95
      Top = 130
      Width = 80
      Height = 21
      DataField = 'Data_Vencimento'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditValor: TDBEdit
      Left = 95
      Top = 152
      Width = 150
      Height = 21
      DataField = 'Valor'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBLookupComboBoxCobranca: TDBLookupComboBox
      Left = 94
      Top = 178
      Width = 181
      Height = 21
      DataField = 'Tipo_Cobranca'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSourceTipoCobranca
      ParentFont = False
      TabOrder = 7
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object EditNomeContratante: TEdit
      Left = 95
      Top = 27
      Width = 243
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object BitBtnPesquisar: TBitBtn
      Left = 67
      Top = 29
      Width = 24
      Height = 21
      TabOrder = 12
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
    object EditPesquisa: TEdit
      Left = 18
      Top = 27
      Width = 45
      Height = 21
      TabOrder = 13
      Visible = False
      OnExit = EditPesquisaExit
      OnKeyDown = DBEditCodigoContratanteKeyDown
      OnKeyPress = EditPesquisaKeyPress
    end
    object DBCheckBox1: TDBCheckBox
      Left = 333
      Top = 103
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Emitido Doc'
      DataField = 'Emitido_Documento'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 296
      Top = 124
      Width = 134
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Enviado C.Receber'
      DataField = 'Exportado_Receber'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox1: TGroupBox
      Left = 456
      Top = 8
      Width = 384
      Height = 223
      Caption = 'Op'#231#245'es de Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      object Label12: TLabel
        Left = 9
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Contratante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 13
        Top = 109
        Width = 85
        Height = 13
        Caption = 'Tipo de Cobran'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 187
        Top = 109
        Width = 79
        Height = 13
        Caption = 'Tipo Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RadioGroupTp: TRadioGroup
        Left = 11
        Top = 20
        Width = 365
        Height = 48
        Caption = 'Tipo de Contratante'
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 2
        Items.Strings = (
          'Contratantes PJ'
          'Contratanes PF'
          'Todos')
        ParentFont = False
        TabOrder = 0
      end
      object EditCdContr: TEdit
        Left = 68
        Top = 77
        Width = 49
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = EditCdContrExit
        OnKeyDown = DBEditCodigoContratanteKeyDown
        OnKeyPress = EditPesquisaKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 122
        Top = 77
        Width = 22
        Height = 21
        TabOrder = 2
        OnClick = BitBtn2Click
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
      object Edit2: TEdit
        Left = 145
        Top = 76
        Width = 233
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 12
        Top = 125
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = DataSourceTipoCobranca
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxTpDoc: TComboBox
        Left = 188
        Top = 124
        Width = 190
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 5
        Items.Strings = (
          'Manuten'#231#227'o'
          'Mensalidade'
          'Or'#231'amento'
          'Reapresenta'#231#227'o'
          'Desconto em Folha')
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 162
        Width = 219
        Height = 51
        Caption = '&Intervalo de datas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Label3: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label4: TLabel
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
      object BitBtn3: TBitBtn
        Left = 248
        Top = 176
        Width = 125
        Height = 36
        Caption = '&Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object DBCheckBox3: TDBCheckBox
      Left = 296
      Top = 147
      Width = 134
      Height = 17
      Alignment = taLeftJustify
      Caption = '           Cobra Juros'
      DataField = 'lg_cobraJuros'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit1: TDBEdit
      Left = 95
      Top = 213
      Width = 344
      Height = 21
      DataField = 'mensagem1'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEdit2: TDBEdit
      Left = 94
      Top = 238
      Width = 344
      Height = 21
      DataField = 'mensagem2'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEdit3: TDBEdit
      Left = 94
      Top = 264
      Width = 344
      Height = 21
      DataField = 'mensagem3'
      DataSource = DataSourceFaturamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 596
    Width = 852
    Height = 28
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 763
      Height = 24
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object DBNavigatorFaturamento: TDBNavigator
        Left = 0
        Top = 0
        Width = 763
        Height = 24
        DataSource = DataSourceFaturamento
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 765
      Top = 2
      Width = 85
      Height = 24
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 0
        Top = 0
        Width = 83
        Height = 23
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
  end
  object QueryContratante: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Contratante'
      '')
    Left = 244
    Top = 112
    object QueryContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'PRONTO.Contratante.Codigo'
    end
    object QueryContratanteNome: TStringField
      FieldName = 'Nome'
      Origin = 'PRONTO.Contratante.Nome'
      Size = 40
    end
  end
  object DataSourceFaturamento: TDataSource
    DataSet = QueryFaturamento
    OnDataChange = DataSourceFaturamentoDataChange
    Left = 76
    Top = 112
  end
  object QueryTipoDocumento: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoDocumento'
      'order by Descricao')
    Left = 132
    Top = 112
    object QueryTipoDocumentoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.TipoDocumento.Codigo'
    end
    object QueryTipoDocumentoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoDocumento.Descricao'
      Size = 50
    end
  end
  object QueryTipoCobranca: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoCobranca'
      'where ativo = 1'
      'order by Descricao')
    Left = 160
    Top = 112
    object QueryTipoCobrancaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.TipoCobranca.Codigo'
    end
    object QueryTipoCobrancaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoCobranca.Descricao'
      Size = 50
    end
    object QueryTipoCobrancaGera_Receber: TBooleanField
      FieldName = 'Gera_Receber'
      Origin = 'MULTI.TipoCobranca.Gera_Receber'
    end
  end
  object DataSourceTipoDocumento: TDataSource
    DataSet = QueryTipoDocumento
    Left = 188
    Top = 112
  end
  object DataSourceTipoCobranca: TDataSource
    DataSet = QueryTipoCobranca
    Left = 216
    Top = 112
  end
  object QueryContratanteAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Contratante'
      '')
    Left = 104
    Top = 112
    object QueryContratanteAuxiliarCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'PRONTO.Contratante.Codigo'
    end
    object QueryContratanteAuxiliarNome: TStringField
      FieldName = 'Nome'
      Origin = 'PRONTO.Contratante.Nome'
      Size = 40
    end
  end
  object QueryFaturamento: TQuery
    Active = True
    AfterInsert = QueryFaturamentoAfterInsert
    BeforePost = QueryFaturamentoBeforePost
    AfterPost = QueryFaturamentoAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Faturamento'
      'where Tipo_Cobranca <> '#39#39' '
      'and Desdobramento = :Desdobramento'
      'order by Data_Vencimento, Codigo_Contratante'
      ' ')
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'Desdobramento'
        ParamType = ptInput
      end>
    object QueryFaturamentoNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'PRONTO.Faturamento.Numero_Titulo'
    end
    object QueryFaturamentoDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'PRONTO.Faturamento.Desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryFaturamentoCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'PRONTO.Faturamento.Codigo_Contratante'
    end
    object QueryFaturamentoData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'PRONTO.Faturamento.Data_Emissao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryFaturamentoData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'PRONTO.Faturamento.Data_Vencimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryFaturamentoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'PRONTO.Faturamento.Valor'
      currency = True
    end
    object QueryFaturamentoNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'PRONTO.Faturamento.Numero_Banco'
      Size = 15
    end
    object QueryFaturamentoExportado_Receber: TBooleanField
      FieldName = 'Exportado_Receber'
      Origin = 'PRONTO.Faturamento.Exportado_Receber'
    end
    object QueryFaturamentoEmitido_Documento: TBooleanField
      FieldName = 'Emitido_Documento'
      Origin = 'PRONTO.Faturamento.Emitido_Documento'
    end
    object QueryFaturamentoDescricao_Documento: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Documento'
      LookupDataSet = QueryTipoDocumento
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Documento'
      Lookup = True
    end
    object QueryFaturamentoDescricao_Cobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Cobranca'
      LookupDataSet = QueryTipoCobranca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Cobranca'
      Lookup = True
    end
    object QueryFaturamentoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = QueryContratante
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Contratante'
      Size = 40
      Lookup = True
    end
    object QueryFaturamentoTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Faturamento.Tipo_Documento'
    end
    object QueryFaturamentoTipo_Cobranca: TIntegerField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Faturamento.Tipo_Cobranca'
    end
    object QueryFaturamentoAlteracao_Cobranca: TBooleanField
      FieldName = 'Alteracao_Cobranca'
      Origin = 'MULTI.Faturamento.Alteracao_Cobranca'
    end
    object QueryFaturamentoAlteracao_Valor: TBooleanField
      FieldName = 'Alteracao_Valor'
      Origin = 'MULTI.Faturamento.Alteracao_Valor'
    end
    object QueryFaturamentoOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Faturamento.Orcamento'
    end
    object QueryFaturamentoCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
      Origin = 'MULTI.Faturamento.Codigo_Usuario'
    end
    object QueryFaturamentoCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Faturamento.Cidade'
      Size = 50
    end
    object QueryFaturamentoParcela: TIntegerField
      FieldName = 'Parcela'
      Origin = 'MULTI.Faturamento.Parcela'
    end
    object QueryFaturamentoTipo_Pagamento: TIntegerField
      FieldName = 'Tipo_Pagamento'
      Origin = 'MULTI.Faturamento.Tipo_Pagamento'
    end
    object QueryFaturamentodtinclusao: TDateTimeField
      FieldName = 'dtinclusao'
      Origin = 'MULTI.Faturamento.dtinclusao'
    end
    object QueryFaturamentoempresa: TBooleanField
      FieldName = 'empresa'
      Origin = 'MULTI.Faturamento.empresa'
    end
    object QueryFaturamentoseq_periodo_fat: TIntegerField
      FieldName = 'seq_periodo_fat'
      Origin = 'MULTI.Faturamento.seq_periodo_fat'
    end
    object QueryFaturamentovr_complemento: TFloatField
      FieldName = 'vr_complemento'
      Origin = 'MULTI.Faturamento.vr_complemento'
      currency = True
    end
    object QueryFaturamentolg_cobraJuros: TBooleanField
      FieldName = 'lg_cobraJuros'
      Origin = 'MULTI.Faturamento.lg_cobraJuros'
    end
    object QueryFaturamentomensagem1: TStringField
      FieldName = 'mensagem1'
      Origin = 'MULTI.Faturamento.mensagem1'
      Size = 40
    end
    object QueryFaturamentomensagem2: TStringField
      FieldName = 'mensagem2'
      Origin = 'MULTI.Faturamento.mensagem2'
      Size = 40
    end
    object QueryFaturamentomensagem3: TStringField
      FieldName = 'mensagem3'
      Origin = 'MULTI.Faturamento.mensagem3'
      Size = 40
    end
  end
  object DataSourceContratante: TDataSource
    DataSet = QueryContratante
    Left = 272
    Top = 112
  end
  object DataSourceContratanteAuxiliar: TDataSource
    DataSet = QueryContratanteAuxiliar
    Left = 20
    Top = 112
  end
end
