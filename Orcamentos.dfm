object FormOrcamentos: TFormOrcamentos
  Left = 224
  Top = 65
  Width = 930
  Height = 670
  ActiveControl = DBEditData
  BorderIcons = [biSystemMenu]
  Caption = 'Or'#231'amentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 121
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 44
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 162
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 45
      Width = 44
      Height = 13
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 3
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Dentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 281
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_cidade: TLabel
      Left = 168
      Top = 89
      Width = 113
      Height = 13
      Caption = 'Cidade do Dentista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_especialidade: TLabel
      Left = 169
      Top = 102
      Width = 90
      Height = 13
      Caption = 'Especialidades:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditNumero: TDBEdit
      Left = 55
      Top = 8
      Width = 75
      Height = 21
      DataField = 'Numero'
      DataSource = DataSourceOrcamentos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEditData: TDBEdit
      Left = 196
      Top = 8
      Width = 79
      Height = 21
      DataField = 'Data'
      DataSource = DataSourceOrcamentos
      TabOrder = 0
      OnKeyDown = DBEditDataKeyDown
    end
    object DBEditUsuario: TDBEdit
      Left = 55
      Top = 37
      Width = 75
      Height = 21
      DataField = 'Usuario'
      DataSource = DataSourceOrcamentos
      TabOrder = 2
      OnExit = DBEditUsuarioExit
      OnKeyDown = DBEditDataKeyDown
      OnKeyPress = DBEditUsuarioKeyPress
    end
    object DBEditDentista: TDBEdit
      Left = 55
      Top = 66
      Width = 75
      Height = 21
      DataField = 'Dentista'
      DataSource = DataSourceOrcamentos
      TabOrder = 3
      OnExit = DBEditDentistaExit
      OnKeyDown = DBEditDataKeyDown
      OnKeyPress = DBEditDentistaKeyPress
    end
    object BitBtnPesquisar: TBitBtn
      Left = 135
      Top = 9
      Width = 24
      Height = 21
      Hint = 'Pressione F1 para pesquisar um or'#231'amento'
      Caption = 'F2'
      TabOrder = 5
      OnClick = BitBtnPesquisarClick
      NumGlyphs = 2
    end
    object BitBtnPesquisaUsuario: TBitBtn
      Left = 134
      Top = 37
      Width = 24
      Height = 21
      TabOrder = 6
      OnClick = BitBtnPesquisaUsuarioClick
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
    object BitBtnPesquisaDentista: TBitBtn
      Left = 134
      Top = 66
      Width = 24
      Height = 21
      TabOrder = 7
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
    object EditNomeUsuario: TEdit
      Left = 163
      Top = 37
      Width = 394
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object EditNomeDentista: TEdit
      Left = 168
      Top = 66
      Width = 331
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBEditTipo: TDBEdit
      Left = 313
      Top = 8
      Width = 44
      Height = 21
      DataField = 'Tipo'
      DataSource = DataSourceOrcamentos
      TabOrder = 1
      OnExit = DBEditTipoExit
      OnKeyDown = DBEditDataKeyDown
    end
    object BitBtnPesquisaTipo: TBitBtn
      Left = 361
      Top = 8
      Width = 24
      Height = 21
      TabOrder = 10
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
    object EditTipo: TEdit
      Left = 390
      Top = 8
      Width = 166
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
    object GroupBox1: TGroupBox
      Left = 576
      Top = 5
      Width = 329
      Height = 82
      Caption = 'Aprova'#231#227'o'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object Label12: TLabel
        Left = 230
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 4
        Top = 41
        Width = 53
        Height = 13
        Caption = 'Operador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 229
        Top = 44
        Width = 67
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEditDataConferencia: TDBEdit
        Left = 229
        Top = 22
        Width = 92
        Height = 21
        DataField = 'Data_Conferencia'
        DataSource = DataSourceOrcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBEditDataKeyDown
      end
      object EditNomeOperador: TEdit
        Left = 63
        Top = 57
        Width = 146
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBCheckBoxAprovado: TDBCheckBox
        Left = 84
        Top = 12
        Width = 79
        Height = 17
        Caption = 'Aprovado'
        DataField = 'Autorizado'
        DataSource = DataSourceOrcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object EditNomeDigitador: TEdit
        Left = 63
        Top = 33
        Width = 146
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit_data_validade: TDBEdit
        Left = 229
        Top = 57
        Width = 92
        Height = 21
        DataField = 'data_validade'
        DataSource = DataSourceOrcamentos
        TabOrder = 4
      end
    end
    object GroupBoxProcura: TGroupBox
      Left = 296
      Top = 36
      Width = 224
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Visible = False
      object LabelNumero: TLabel
        Left = 8
        Top = 15
        Width = 63
        Height = 13
        Caption = 'Digite o N'#186
      end
      object DBEditUrgencia: TDBEdit
        Left = 81
        Top = 11
        Width = 136
        Height = 21
        DataField = 'Nro_Urgencia'
        DataSource = DataSourceOrcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnExit = DBEditUrgenciaExit
        OnKeyDown = DBEditDataKeyDown
      end
      object EditProcura: TEdit
        Left = 81
        Top = 11
        Width = 136
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 7
        ParentFont = False
        TabOrder = 0
        OnExit = EditProcuraExit
        OnKeyDown = DBEditDataKeyDown
        OnKeyPress = EditProcuraKeyPress
      end
    end
    object BitBtnUrgencia: TBitBtn
      Left = 531
      Top = 66
      Width = 24
      Height = 21
      Hint = 'Urg'#234'ncia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = BitBtnUrgenciaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FF33333333FF3330033333333
        00333377FF33333377FF300003333330000337777FFFFFF7777F000000000000
        000077777777777777770F88FFFF8FFF88F07F333F33333333370FFF9FFF8FFF
        FF707F337FF333FFFFF70FF999FF800000037F377733377777730FFF9FFF0888
        80337F3373337F3337330FFFFFFF088803337FFFFFFF7FFF7333700000000000
        3333777777777777F33333333339399939333333333337773333333333333393
        3333333333333373333333333333933393333333333333333333333333333393
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object DBEdit1: TDBEdit
      Left = 503
      Top = 66
      Width = 25
      Height = 21
      Hint = 'Tabela de refer'#234'ncia para pagamento de dentista'
      DataField = 'cd_tabela'
      DataSource = DataSourceOrcamentos
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 15
      OnExit = DBEditDentistaExit
      OnKeyDown = DBEditDataKeyDown
      OnKeyPress = DBEditDentistaKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 914
    Height = 371
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 347
      Width = 912
      Height = 23
      Align = alBottom
      Color = clInfoBk
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnExit = DBGridItensExit
      OnKeyDown = DBGridItensKeyDown
      Columns = <
        item
          Expanded = False
          Width = 557
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total_Bruto'
          Title.Caption = 'Valor Bruto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end>
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 912
      Height = 346
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBGridItens: TDBGrid
        Left = 0
        Top = 0
        Width = 912
        Height = 346
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourceItensOrcamento
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnExit = DBGridItensExit
        OnKeyDown = DBGridItensKeyDown
        OnKeyPress = DBGridItensKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'status'
            ReadOnly = True
            Title.Caption = 'ST'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Servico'
            Title.Caption = 'Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DenteFace'
            Title.Caption = 'Dente X Face'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Servico'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 296
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Bruto'
            ReadOnly = True
            Title.Caption = 'Valor Bruto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Hemiarco'
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sexante'
            ReadOnly = True
            Title.Caption = 'Sexante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'arcada'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Arcada'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tuss_id'
            ReadOnly = True
            Title.Caption = 'TUSS'
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
  object Panel3: TPanel
    Left = 0
    Top = 492
    Width = 914
    Height = 58
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object Label5: TLabel
      Left = 53
      Top = 13
      Width = 30
      Height = 13
      Hint = 'Presta'#231#245'es'
      Caption = 'Prest'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label6: TLabel
      Left = 708
      Top = 5
      Width = 105
      Height = 13
      Caption = 'Total c/ Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 41
      Top = 32
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 4
      Top = 13
      Width = 34
      Height = 13
      Caption = 'Desc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditPrestacoes: TDBEdit
      Left = 51
      Top = 27
      Width = 54
      Height = 21
      DataField = 'Numero_Parcelas'
      DataSource = DataSourceOrcamentos
      TabOrder = 1
      OnExit = DBEditPrestacoesExit
      OnKeyDown = DBEditDataKeyDown
    end
    object DBEditTotal: TDBEdit
      Left = 711
      Top = 25
      Width = 99
      Height = 24
      DataField = 'Total_Desconto'
      DataSource = DataSourceOrcamentos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEditDesconto: TDBEdit
      Left = 4
      Top = 27
      Width = 35
      Height = 21
      DataField = 'Desconto'
      DataSource = DataSourceOrcamentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditDataKeyDown
    end
    object BitBtnPrestacoes: TBitBtn
      Left = 110
      Top = 22
      Width = 68
      Height = 25
      Caption = '&Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtnPrestacoesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      Spacing = 2
    end
    object BitBtnAutorizar: TBitBtn
      Left = 185
      Top = 22
      Width = 67
      Height = 25
      Hint = 'Autorizar Or'#231'amento'
      Caption = '&Autorizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtnAutorizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      Spacing = 0
    end
    object BitBtnImprimir: TBitBtn
      Left = 261
      Top = 22
      Width = 69
      Height = 25
      Hint = 'Imprimir Cadastro'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtnContratante: TBitBtn
      Left = 337
      Top = 22
      Width = 68
      Height = 25
      Caption = 'Contratante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtnContratanteClick
    end
    object BitBtnSair: TBitBtn
      Left = 647
      Top = 22
      Width = 62
      Height = 25
      Hint = 'Sair do Cadastro'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtnSairClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object BitBtnPagDentistas: TBitBtn
      Left = 564
      Top = 22
      Width = 78
      Height = 25
      Hint = 'Verificar Saldo do Or'#231'amento'
      Caption = '&Dentistas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtnPagDentistasClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 410
      Top = 22
      Width = 73
      Height = 25
      Hint = 'Consulta or'#231'amento/Tratamento anteriores'
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object BitBtnPgDentista_: TBitBtn
      Left = 488
      Top = 22
      Width = 73
      Height = 25
      Hint = 'Pagamento de Dentista'
      Caption = '&PG Dent'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = BitBtnPgDentista_Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      Spacing = 0
    end
    object Memo1: TMemo
      Left = 832
      Top = 51
      Width = 185
      Height = 89
      TabOrder = 11
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 550
    Width = 914
    Height = 81
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 914
      Height = 81
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object Panel6: TPanel
        Left = 179
        Top = 2
        Width = 733
        Height = 77
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label14: TLabel
          Left = 4
          Top = 15
          Width = 55
          Height = 13
          Caption = 'Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 161
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 314
          Top = 15
          Width = 104
          Height = 13
          Caption = 'Status Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BitBtnExclui: TBitBtn
          Left = 552
          Top = 24
          Width = 73
          Height = 25
          Caption = '&Exclui'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtnExcluiClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object DBLookupComboBoxTipoCobranca: TDBLookupComboBox
          Left = 1
          Top = 28
          Width = 156
          Height = 21
          DataField = 'tp_cobranca'
          DataSource = DataSourceOrcamentos
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DataSourceTipoCobranca
          TabOrder = 1
        end
        object DBLookupComboBoxStatus: TDBLookupComboBox
          Left = 158
          Top = 28
          Width = 146
          Height = 21
          DataField = 'Status'
          DataSource = DataSourceOrcamentos
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DataSourceStatus
          TabOrder = 2
          OnKeyDown = DBEditDataKeyDown
        end
        object DBLookupComboBoxStatusPgto: TDBLookupComboBox
          Left = 311
          Top = 28
          Width = 146
          Height = 21
          DataField = 'Status_Pagamento'
          DataSource = DataSourceOrcamentos
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DataSourceStatus_Pagto
          TabOrder = 3
          OnKeyDown = DBEditDataKeyDown
        end
        object BitBtnAlterarStatus: TBitBtn
          Left = 467
          Top = 24
          Width = 77
          Height = 25
          Hint = 'Cancelar itens do or'#231'amento(Alterar status)'
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = AlterarStatus1Click
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
        end
        object DBCheckBoxEmissaoIR: TDBCheckBox
          Left = 4
          Top = 53
          Width = 196
          Height = 17
          Caption = 'Emiss'#227'o de Informes de Rendimento'
          DataField = 'lg_ir'
          DataSource = DataSourceOrcamentos
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object GroupBox2: TGroupBox
          Left = 640
          Top = 4
          Width = 82
          Height = 64
          Caption = 'Per'#237'cias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object DBCheckBox2: TDBCheckBox
            Left = 16
            Top = 20
            Width = 59
            Height = 17
            Caption = 'Inicial'
            DataField = 'PericiaInicial'
            DataSource = DataSourceOrcamentos
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 41
            Width = 59
            Height = 17
            Caption = 'Final'
            DataField = 'PericiaFinal'
            DataSource = DataSourceOrcamentos
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object Panel7: TPanel
        Left = 2
        Top = 2
        Width = 79
        Height = 77
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object DBNavigatorOrcamento: TDBNavigator
          Left = 0
          Top = 0
          Width = 79
          Height = 77
          DataSource = DataSourceOrcamentos
          VisibleButtons = [nbInsert, nbPost, nbCancel]
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object QueryItensOrcamento: TQuery
    BeforeInsert = QueryItensOrcamentoBeforeInsert
    AfterInsert = QueryItensOrcamentoAfterInsert
    BeforeEdit = QueryItensOrcamentoBeforeEdit
    BeforePost = QueryItensOrcamentoBeforePost
    AfterPost = QueryItensOrcamentoAfterPost
    BeforeDelete = QueryItensOrcamentoBeforeDelete
    AfterDelete = QueryItensOrcamentoAfterDelete
    OnNewRecord = QueryItensOrcamentoNewRecord
    OnPostError = QueryItensOrcamentoPostError
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Itens_Orcamento'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento, Incremento')
    Left = 126
    Top = 318
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryItensOrcamentoServico: TIntegerField
      FieldName = 'Servico'
      Origin = 'MULTI.Itens_Orcamento.Servico'
      OnValidate = QueryItensOrcamentoServicoValidate
    end
    object QueryItensOrcamentoIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Itens_Orcamento.Incremento'
    end
    object QueryItensOrcamentoOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Itens_Orcamento.Orcamento'
    end
    object QueryItensOrcamentoQuantidade: TSmallintField
      FieldName = 'Quantidade'
      Origin = 'MULTI.Itens_Orcamento.Quantidade'
      OnValidate = QueryItensOrcamentoQuantidadeValidate
    end
    object QueryItensOrcamentoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Itens_Orcamento.Valor'
      currency = True
    end
    object QueryItensOrcamentoDescricao_Servico: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Servico'
      LookupDataSet = QueryServicos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Servico'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object QueryItensOrcamentoValor_Bruto: TFloatField
      FieldName = 'Valor_Bruto'
      Origin = 'MULTI.Itens_Orcamento.Valor_Bruto'
      currency = True
    end
    object QueryItensOrcamentoValor_Dentista: TFloatField
      FieldName = 'Valor_Dentista'
      Origin = 'MULTI.Itens_Orcamento.Valor_Dentista'
      currency = True
    end
    object QueryItensOrcamentoValor_Protetico: TFloatField
      FieldName = 'Valor_Protetico'
      Origin = 'MULTI.Itens_Orcamento.Valor_Protetico'
      currency = True
    end
    object QueryItensOrcamentoDenteFace: TStringField
      FieldName = 'DenteFace'
      Origin = 'MULTI.Itens_Orcamento.DenteFace'
      Size = 7
    end
    object QueryItensOrcamentoHemiarco: TStringField
      FieldName = 'Hemiarco'
      Origin = 'MULTI.Itens_Orcamento.Hemiarco'
      Size = 2
    end
    object QueryItensOrcamentosexante: TSmallintField
      FieldName = 'sexante'
      Origin = 'MULTI.Itens_Orcamento.sexante'
    end
    object QueryItensOrcamentoarcada: TStringField
      FieldName = 'arcada'
      Origin = 'MULTI.Itens_Orcamento.arcada'
      Size = 2
    end
    object QueryItensOrcamentostatus: TStringField
      FieldName = 'status'
      Origin = 'MULTI.Itens_Orcamento.status'
      FixedChar = True
      Size = 1
    end
    object QueryItensOrcamentotuss_id: TIntegerField
      FieldName = 'tuss_id'
      Origin = 'MULTI.Itens_Orcamento.tuss_id'
    end
    object QueryItensOrcamentoupdated: TDateTimeField
      FieldName = 'updated'
      Origin = 'MULTI.Itens_Orcamento.updated'
    end
    object QueryItensOrcamentoindiceTabPagDentista: TIntegerField
      FieldName = 'indiceTabPagDentista'
      Origin = 'MULTI.Itens_Orcamento.indiceTabPagDentista'
    end
  end
  object DataSourceItensOrcamento: TDataSource
    DataSet = QueryItensOrcamento
    Left = 98
    Top = 182
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Usuario'
      'where codigo_completo = :codigo_completo')
    Left = 126
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo_completo'
        ParamType = ptUnknown
        Value = '0'
      end>
    object QueryUsuariosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Usuario.Codigo'
    end
    object QueryUsuariosDigito: TIntegerField
      FieldName = 'Digito'
      Origin = 'MULTI.Usuario.Digito'
    end
    object QueryUsuariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Usuario.Nome'
      Size = 40
    end
    object QueryUsuariosData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Usuario.Data_Exclusao'
    end
    object QueryUsuariosData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
      Origin = 'MULTI.Usuario.Data_Inclusao'
    end
    object QueryUsuariosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Usuario.Contratante_Titular'
    end
    object QueryUsuariosCodigo_Completo: TIntegerField
      FieldName = 'Codigo_Completo'
      Origin = 'MULTI.Usuario.Codigo_Completo'
    end
    object QueryUsuariosdt_ini_cobertura: TDateTimeField
      FieldName = 'dt_ini_cobertura'
      Origin = 'MULTI.Usuario.dt_ini_cobertura'
    end
  end
  object QueryServicos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Servicos'
      'order by Codigo')
    Left = 154
    Top = 155
    object QueryServicosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Servicos.Codigo'
    end
    object QueryServicosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Servicos.Descricao'
      FixedChar = True
      Size = 40
    end
    object QueryServicosCategoria: TIntegerField
      FieldName = 'Categoria'
      Origin = 'MULTI.Servicos.Categoria'
    end
    object QueryServicosSIP: TIntegerField
      FieldName = 'SIP'
      Origin = 'MULTI.Servicos.SIP'
    end
    object QueryServicoscd_nivel_servico: TStringField
      FieldName = 'cd_nivel_servico'
      Origin = 'MULTI.Servicos.cd_nivel_servico'
      FixedChar = True
      Size = 1
    end
  end
  object QueryDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select D.Codigo, D.Nome , D.Data_Exclusao, C.Codigo_Tabela  from' +
        ' Dentista D, Clinicas C'
      'where C.Codigo = D.Codigo_Clinica'
      'and D.Codigo =:Dentista'
      '')
    Left = 154
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Dentista'
        ParamType = ptInput
      end>
    object QueryDentistaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Dentista.Codigo'
    end
    object QueryDentistaNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Dentista.Nome'
      Size = 40
    end
    object QueryDentistaData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Dentista.Data_Exclusao'
    end
    object QueryDentistaCodigo_Tabela: TIntegerField
      FieldName = 'Codigo_Tabela'
      Origin = 'MULTI.Clinicas.Codigo_Tabela'
    end
  end
  object QueryOrcamentosAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Orcamento'
      'where nro_urgencia = :Urgencia'
      'and usuario = :Usuario')
    Left = 70
    Top = 155
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Urgencia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Usuario'
        ParamType = ptInput
      end>
    object QueryOrcamentosAuxiliarNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'MULTI.Orcamento.Numero'
    end
  end
  object QueryServicosAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Servicos'
      'where Codigo = :Servico')
    Left = 126
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Servico'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Servicos.Descricao'
      FixedChar = True
      Size = 40
    end
    object IntegerField2: TIntegerField
      FieldName = 'Categoria'
      Origin = 'MULTI.Servicos.Categoria'
    end
    object QueryServicosAuxiliarCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Servicos.Codigo'
    end
  end
  object QueryValorProcedimento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from ValorxProcedimento'
      'where Codigo_Tabela = :Tabela '
      'and Codigo_Servico = :Servico')
    Left = 574
    Top = 284
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Tabela'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Servico'
        ParamType = ptInput
      end>
    object QueryValorProcedimentoCodigo_Tabela: TIntegerField
      FieldName = 'Codigo_Tabela'
      Origin = 'MULTI.ValorxProcedimento.Codigo_Tabela'
    end
    object QueryValorProcedimentoCodigo_Servico: TIntegerField
      FieldName = 'Codigo_Servico'
      Origin = 'MULTI.ValorxProcedimento.Codigo_Servico'
    end
    object QueryValorProcedimentoValor_Cobranca: TFloatField
      FieldName = 'Valor_Cobranca'
      Origin = 'MULTI.ValorxProcedimento.Valor_Cobranca'
    end
  end
  object QueryReceber: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where Numero_Titulo = '#39#39)
    Left = 182
    Top = 182
    object QueryReceberNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'MULTI.Receber.Numero_Titulo'
    end
    object QueryReceberDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'MULTI.Receber.Desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryReceberTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Receber.Tipo_Documento'
    end
    object QueryReceberCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
    object QueryReceberData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'MULTI.Receber.Data_Emissao'
    end
    object QueryReceberData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.Receber.Data_Vencimento'
    end
    object QueryReceberValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Receber.Valor'
    end
    object QueryReceberSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'MULTI.Receber.Saldo'
    end
    object QueryReceberTipo_Cobranca: TIntegerField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Receber.Tipo_Cobranca'
    end
    object QueryReceberNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.Receber.Numero_Banco'
      FixedChar = True
      Size = 15
    end
    object QueryReceberData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'MULTI.Receber.Data_Pagamento'
    end
    object QueryReceberValor_Pago: TFloatField
      FieldName = 'Valor_Pago'
      Origin = 'MULTI.Receber.Valor_Pago'
    end
    object QueryReceberDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Receber.Desconto'
    end
    object QueryReceberJuros: TFloatField
      FieldName = 'Juros'
      Origin = 'MULTI.Receber.Juros'
    end
    object QueryReceberOperador: TSmallintField
      FieldName = 'Operador'
      Origin = 'MULTI.Receber.Operador'
    end
    object QueryReceberOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Receber.Orcamento'
    end
    object QueryReceberParcela: TSmallintField
      FieldName = 'Parcela'
      Origin = 'MULTI.Receber.Parcela'
    end
    object QueryReceberObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'MULTI.Receber.Observacoes'
    end
    object QueryReceberStatus_Orcamento: TSmallintField
      FieldName = 'Status_Orcamento'
      Origin = 'MULTI.Receber.Status_Orcamento'
    end
    object QueryReceberCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
      Origin = 'MULTI.Receber.Codigo_Usuario'
    end
    object QueryReceberStatus_Ocorrencia: TSmallintField
      FieldName = 'Status_Ocorrencia'
      Origin = 'MULTI.Receber.Status_Ocorrencia'
    end
    object QueryReceberNro_cheque: TStringField
      FieldName = 'Nro_cheque'
      Origin = 'MULTI.Receber.Nro_cheque'
    end
    object QueryReceberBanco_Cheque: TStringField
      FieldName = 'Banco_Cheque'
      Origin = 'MULTI.Receber.Banco_Cheque'
      Size = 3
    end
    object QueryReceberNro_ContaCheque: TStringField
      FieldName = 'Nro_ContaCheque'
      Origin = 'MULTI.Receber.Nro_ContaCheque'
    end
    object QueryReceberAgencia_Cheque: TStringField
      FieldName = 'Agencia_Cheque'
      Origin = 'MULTI.Receber.Agencia_Cheque'
      Size = 10
    end
    object QueryReceberDeposito: TBooleanField
      FieldName = 'Deposito'
      Origin = 'MULTI.Receber.Deposito'
    end
    object QueryReceberTipo_Pagamento: TIntegerField
      FieldName = 'Tipo_Pagamento'
      Origin = 'MULTI.Receber.Tipo_Pagamento'
    end
  end
  object QueryPreferencias: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Preferencia'
      'order by Registro_Unico')
    Left = 182
    Top = 155
    object QueryPreferenciasRegistro_Unico: TSmallintField
      FieldName = 'Registro_Unico'
      Origin = 'MULTI.Preferencia.Registro_Unico'
    end
    object QueryPreferenciasNome_Empresa: TStringField
      FieldName = 'Nome_Empresa'
      Origin = 'MULTI.Preferencia.Nome_Empresa'
      Size = 40
    end
    object QueryPreferenciasValor_US: TFloatField
      FieldName = 'Valor_US'
      Origin = 'MULTI.Preferencia.Valor_US'
    end
    object QueryPreferenciasStatus_Grava: TSmallintField
      FieldName = 'Status_Grava'
      Origin = 'MULTI.Preferencia.Status_Grava'
    end
    object QueryPreferenciasStatus_Autorizado: TSmallintField
      FieldName = 'Status_Autorizado'
      Origin = 'MULTI.Preferencia.Status_Autorizado'
    end
    object QueryPreferenciasStatus_Parcial: TSmallintField
      FieldName = 'Status_Parcial'
      Origin = 'MULTI.Preferencia.Status_Parcial'
    end
    object QueryPreferenciasStatus_Total: TSmallintField
      FieldName = 'Status_Total'
      Origin = 'MULTI.Preferencia.Status_Total'
    end
    object QueryPreferenciasCaminho_Cobranca: TStringField
      FieldName = 'Caminho_Cobranca'
      Origin = 'MULTI.Preferencia.Caminho_Cobranca'
      Size = 40
    end
    object QueryPreferenciasUltimo_Lancamento: TIntegerField
      FieldName = 'Ultimo_Lancamento'
      Origin = 'MULTI.Preferencia.Ultimo_Lancamento'
    end
    object QueryPreferenciasTipo_Cobranca: TSmallintField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Preferencia.Tipo_Cobranca'
    end
    object QueryPreferenciasDebito_Cef: TSmallintField
      FieldName = 'Debito_Cef'
      Origin = 'MULTI.Preferencia.Debito_Cef'
    end
    object QueryPreferenciasDebito_Santader: TSmallintField
      FieldName = 'Debito_Santader'
      Origin = 'MULTI.Preferencia.Debito_Santader'
    end
    object QueryPreferenciasDebito_Bradesco: TSmallintField
      FieldName = 'Debito_Bradesco'
      Origin = 'MULTI.Preferencia.Debito_Bradesco'
    end
    object QueryPreferenciasDebito_Real: TSmallintField
      FieldName = 'Debito_Real'
      Origin = 'MULTI.Preferencia.Debito_Real'
    end
    object QueryPreferenciasDebito_HSBC: TSmallintField
      FieldName = 'Debito_HSBC'
      Origin = 'MULTI.Preferencia.Debito_HSBC'
    end
    object QueryPreferenciasDebito_Brasil: TSmallintField
      FieldName = 'Debito_Brasil'
      Origin = 'MULTI.Preferencia.Debito_Brasil'
    end
    object QueryPreferenciasDebito_Banespa: TSmallintField
      FieldName = 'Debito_Banespa'
      Origin = 'MULTI.Preferencia.Debito_Banespa'
    end
    object QueryPreferenciasDebito_Unibanco: TSmallintField
      FieldName = 'Debito_Unibanco'
      Origin = 'MULTI.Preferencia.Debito_Unibanco'
    end
    object QueryPreferenciasDebito_Itau: TSmallintField
      FieldName = 'Debito_Itau'
      Origin = 'MULTI.Preferencia.Debito_Itau'
    end
    object QueryPreferenciasDebito_NossaCaixa: TSmallintField
      FieldName = 'Debito_NossaCaixa'
      Origin = 'MULTI.Preferencia.Debito_NossaCaixa'
    end
    object QueryPreferenciasBoleto_Cef: TSmallintField
      FieldName = 'Boleto_Cef'
      Origin = 'MULTI.Preferencia.Boleto_Cef'
    end
    object QueryPreferenciasBoleto_Itau: TSmallintField
      FieldName = 'Boleto_Itau'
      Origin = 'MULTI.Preferencia.Boleto_Itau'
    end
    object QueryPreferenciasBoleto_Banespa: TSmallintField
      FieldName = 'Boleto_Banespa'
      Origin = 'MULTI.Preferencia.Boleto_Banespa'
    end
    object QueryPreferenciasMensagem1: TStringField
      FieldName = 'Mensagem1'
      Origin = 'MULTI.Preferencia.Mensagem1'
      Size = 40
    end
    object QueryPreferenciasMensagem2: TStringField
      FieldName = 'Mensagem2'
      Origin = 'MULTI.Preferencia.Mensagem2'
      Size = 40
    end
    object QueryPreferenciasMensagem3: TStringField
      FieldName = 'Mensagem3'
      Origin = 'MULTI.Preferencia.Mensagem3'
      Size = 40
    end
    object QueryPreferenciasMensagem4: TStringField
      FieldName = 'Mensagem4'
      Origin = 'MULTI.Preferencia.Mensagem4'
      Size = 40
    end
    object QueryPreferenciasDocumento_Manutencao: TSmallintField
      FieldName = 'Documento_Manutencao'
      Origin = 'MULTI.Preferencia.Documento_Manutencao'
    end
    object QueryPreferenciasDias_Prazo: TSmallintField
      FieldName = 'Dias_Prazo'
      Origin = 'MULTI.Preferencia.Dias_Prazo'
    end
    object QueryPreferenciasMostrar_Informacoes: TBooleanField
      FieldName = 'Mostrar_Informacoes'
      Origin = 'MULTI.Preferencia.Mostrar_Informacoes'
    end
    object QueryPreferenciasSequencial_Santander: TSmallintField
      FieldName = 'Sequencial_Santander'
      Origin = 'MULTI.Preferencia.Sequencial_Santander'
    end
    object QueryPreferenciasSequencial_Caixa: TSmallintField
      FieldName = 'Sequencial_Caixa'
      Origin = 'MULTI.Preferencia.Sequencial_Caixa'
    end
    object QueryPreferenciasSequencial_HSBC: TSmallintField
      FieldName = 'Sequencial_HSBC'
      Origin = 'MULTI.Preferencia.Sequencial_HSBC'
    end
    object QueryPreferenciasSequencial_Bradesco: TSmallintField
      FieldName = 'Sequencial_Bradesco'
      Origin = 'MULTI.Preferencia.Sequencial_Bradesco'
    end
    object QueryPreferenciasSequencial_Banespa: TSmallintField
      FieldName = 'Sequencial_Banespa'
      Origin = 'MULTI.Preferencia.Sequencial_Banespa'
    end
    object QueryPreferenciasSequencial_Real: TSmallintField
      FieldName = 'Sequencial_Real'
      Origin = 'MULTI.Preferencia.Sequencial_Real'
    end
    object QueryPreferenciasSequencial_Unibanco: TSmallintField
      FieldName = 'Sequencial_Unibanco'
      Origin = 'MULTI.Preferencia.Sequencial_Unibanco'
    end
    object QueryPreferenciasSequencial_Itau: TSmallintField
      FieldName = 'Sequencial_Itau'
      Origin = 'MULTI.Preferencia.Sequencial_Itau'
    end
    object QueryPreferenciasSequencial_NossaCaixa: TSmallintField
      FieldName = 'Sequencial_NossaCaixa'
      Origin = 'MULTI.Preferencia.Sequencial_NossaCaixa'
    end
    object QueryPreferenciasSequencial_Brasil: TSmallintField
      FieldName = 'Sequencial_Brasil'
      Origin = 'MULTI.Preferencia.Sequencial_Brasil'
    end
    object QueryPreferenciasSequencial_BoletoBanespa: TIntegerField
      FieldName = 'Sequencial_BoletoBanespa'
      Origin = 'MULTI.Preferencia.Sequencial_BoletoBanespa'
    end
    object QueryPreferenciasInicial_Contrato: TDateTimeField
      FieldName = 'Inicial_Contrato'
      Origin = 'MULTI.Preferencia.Inicial_Contrato'
    end
    object QueryPreferenciasFinal_Contrato: TDateTimeField
      FieldName = 'Final_Contrato'
      Origin = 'MULTI.Preferencia.Final_Contrato'
    end
    object QueryPreferenciasInicial_Receber: TDateTimeField
      FieldName = 'Inicial_Receber'
      Origin = 'MULTI.Preferencia.Inicial_Receber'
    end
    object QueryPreferenciasFinal_Receber: TDateTimeField
      FieldName = 'Final_Receber'
      Origin = 'MULTI.Preferencia.Final_Receber'
    end
    object QueryPreferenciasInicial_Pagar: TDateTimeField
      FieldName = 'Inicial_Pagar'
      Origin = 'MULTI.Preferencia.Inicial_Pagar'
    end
    object QueryPreferenciasFinal_Pagar: TDateTimeField
      FieldName = 'Final_Pagar'
      Origin = 'MULTI.Preferencia.Final_Pagar'
    end
    object QueryPreferenciasValor_Cobranca: TFloatField
      FieldName = 'Valor_Cobranca'
      Origin = 'MULTI.Preferencia.Valor_Cobranca'
    end
  end
  object QueryContratante: TQuery
    AfterScroll = QueryContratanteAfterScroll
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select lg_restricao,Codigo, Nome, Plano, Grupo_Contratante, Ende' +
        'reco_Residencial, CGC_CPF, Fone1 from Contratante'
      'where Codigo = :Codigo_Contrantante'
      'order by Codigo')
    Left = 42
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Contrantante'
        ParamType = ptInput
      end>
    object QueryContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratantePlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTI.Contratante.Plano'
    end
    object QueryContratanteGrupo_Contratante: TIntegerField
      FieldName = 'Grupo_Contratante'
      Origin = 'MULTI.Contratante.Grupo_Contratante'
    end
    object QueryContratanteNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Contratante.Nome'
      Size = 50
    end
    object QueryContratanteEndereco_Residencial: TStringField
      FieldName = 'Endereco_Residencial'
      Origin = 'MULTI.Contratante.Endereco_Residencial'
      Size = 50
    end
    object QueryContratanteCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'MULTI.Contratante.CGC_CPF'
      Size = 50
    end
    object QueryContratanteFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'MULTI.Contratante.Fone1'
      Size = 18
    end
    object QueryContratantelg_restricao: TBooleanField
      FieldName = 'lg_restricao'
      Origin = 'MULTI.Contratante.lg_restricao'
    end
  end
  object QueryPrecoContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabPrecoxContratante'
      'where Contratante = :Codigo_Contratante '
      'and Ativa = 1'
      'order by Contratante')
    Left = 574
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Contratante'
        ParamType = ptInput
      end>
    object QueryPrecoContratanteTabelaPreco: TIntegerField
      FieldName = 'TabelaPreco'
      Origin = 'MULTI.TabPrecoxContratante.TabelaPreco'
    end
    object QueryPrecoContratanteContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.TabPrecoxContratante.Contratante'
    end
    object QueryPrecoContratanteAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabPrecoxContratante.Ativa'
    end
  end
  object QueryPrecoGrupo: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabPrecoxGrupoContratante'
      'where Grupo_Contratante = :Grupo_Contratante'
      'and Ativa = 1'
      'order by Grupo_Contratante')
    Left = 574
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Grupo_Contratante'
        ParamType = ptInput
      end>
    object QueryPrecoGrupoGrupo_Contratante: TIntegerField
      FieldName = 'Grupo_Contratante'
      Origin = 'MULTI.TabPrecoxGrupoContratante.Grupo_Contratante'
    end
    object QueryPrecoGrupoTabelaPreco: TIntegerField
      FieldName = 'TabelaPreco'
      Origin = 'MULTI.TabPrecoxGrupoContratante.TabelaPreco'
    end
    object QueryPrecoGrupoAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabPrecoxGrupoContratante.Ativa'
    end
  end
  object QueryPrecoPlano: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabPrecoXPlano'
      'where Plano = :Codigo_Plano'
      'and Ativa = 1'
      'order by Plano')
    Left = 574
    Top = 212
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Plano'
        ParamType = ptInput
      end>
    object QueryPrecoPlanoTabelaPreco: TIntegerField
      FieldName = 'TabelaPreco'
      Origin = 'MULTI.TabPrecoXPlano.TabelaPreco'
    end
    object QueryPrecoPlanoPlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTI.TabPrecoXPlano.Plano'
    end
    object QueryPrecoPlanoAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabPrecoXPlano.Ativa'
    end
  end
  object QueryTipoOrcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoOrcamento'
      'where Tipo = :Tipo_Orcamento'
      'order by Tipo')
    Left = 210
    Top = 155
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Tipo_Orcamento'
        ParamType = ptInput
      end>
    object QueryTipoOrcamentoTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'MULTI.TipoOrcamento.Tipo'
    end
    object QueryTipoOrcamentoTipo_Documento: TSmallintField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.TipoOrcamento.Tipo_Documento'
    end
    object QueryTipoOrcamentoTipo_Cobranca: TSmallintField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.TipoOrcamento.Tipo_Cobranca'
    end
    object QueryTipoOrcamentoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoOrcamento.Descricao'
    end
  end
  object QueryCoberturaContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCoberturaxContratante'
      'where Contratante = :Codigo_Contratante '
      'and Ativa = 1'
      'order by Contratante')
    Left = 632
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Contratante'
        ParamType = ptInput
      end>
    object QueryCoberturaContratanteTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaxContratante.Tabela_Cobertura'
    end
    object QueryCoberturaContratanteContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.TabelaCoberturaxContratante.Contratante'
    end
    object QueryCoberturaContratanteAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaxContratante.Ativa'
    end
  end
  object QueryCoberturaGrupo: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCoberturaxGrupoContratante'
      'where Grupo_Contratante = :Grupo_Contratante'
      'and Ativa = 1'
      'order by Grupo_Contratante')
    Left = 632
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Grupo_Contratante'
        ParamType = ptInput
      end>
    object QueryCoberturaGrupoTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaxGrupoContratante.Tabela_Cobertura'
    end
    object QueryCoberturaGrupoGrupo_Contratante: TIntegerField
      FieldName = 'Grupo_Contratante'
      Origin = 'MULTI.TabelaCoberturaxGrupoContratante.Grupo_Contratante'
    end
    object QueryCoberturaGrupoAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaxGrupoContratante.Ativa'
    end
  end
  object QueryCoberturaPlano: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TabelaCoberturaXPlano'
      'where Plano = :Codigo_Plano'
      'and Ativa = 1'
      'order by Plano')
    Left = 632
    Top = 210
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Plano'
        ParamType = ptInput
      end>
    object QueryCoberturaPlanoTabela_Cobertura: TIntegerField
      FieldName = 'Tabela_Cobertura'
      Origin = 'MULTI.TabelaCoberturaXPlano.Tabela_Cobertura'
    end
    object QueryCoberturaPlanoPlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTI.TabelaCoberturaXPlano.Plano'
    end
    object QueryCoberturaPlanoAtiva: TBooleanField
      FieldName = 'Ativa'
      Origin = 'MULTI.TabelaCoberturaXPlano.Ativa'
    end
  end
  object QueryCoberturaProcedimento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from CoberturaxProcedimento'
      'where Codigo_Tabela = :Tabela '
      'and Codigo_Procedimento = :Servico'
      'order by Codigo_Tabela, Codigo_Procedimento, Dias Desc')
    Left = 634
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Tabela'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Servico'
        ParamType = ptInput
      end>
    object QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField
      FieldName = 'Codigo_Tabela'
      Origin = 'MULTI.CoberturaxProcedimento.Codigo_Tabela'
    end
    object QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField
      FieldName = 'Codigo_procedimento'
      Origin = 'MULTI.CoberturaxProcedimento.Codigo_procedimento'
    end
    object QueryCoberturaProcedimentoDias: TIntegerField
      FieldName = 'Dias'
      Origin = 'MULTI.CoberturaxProcedimento.Dias'
    end
    object QueryCoberturaProcedimentoPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'MULTI.CoberturaxProcedimento.Percentual'
    end
  end
  object PrintDialogOrdem: TPrintDialog
    Left = 519
    Top = 166
  end
  object QueryReceber2: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where (Codigo_Contratante = :Codigo_Contratante)'
      'and Data_Pagamento is null'
      'order by Data_Vencimento')
    Left = 210
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Contratante'
        ParamType = ptInput
      end>
    object QueryReceber2Numero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'MULTI.Receber.Numero_Titulo'
    end
    object QueryReceber2Desdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'MULTI.Receber.Desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryReceber2Tipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Receber.Tipo_Documento'
    end
    object QueryReceber2Codigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
    object QueryReceber2Data_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'MULTI.Receber.Data_Emissao'
    end
    object QueryReceber2Data_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.Receber.Data_Vencimento'
    end
    object QueryReceber2Valor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Receber.Valor'
      currency = True
    end
    object QueryReceber2Saldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'MULTI.Receber.Saldo'
      currency = True
    end
    object QueryReceber2Tipo_Cobranca: TIntegerField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Receber.Tipo_Cobranca'
    end
    object QueryReceber2Numero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.Receber.Numero_Banco'
      FixedChar = True
      Size = 15
    end
    object QueryReceber2Data_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'MULTI.Receber.Data_Pagamento'
    end
    object QueryReceber2Valor_Pago: TFloatField
      FieldName = 'Valor_Pago'
      Origin = 'MULTI.Receber.Valor_Pago'
      currency = True
    end
    object QueryReceber2Desconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Receber.Desconto'
      currency = True
    end
    object QueryReceber2Juros: TFloatField
      FieldName = 'Juros'
      Origin = 'MULTI.Receber.Juros'
      currency = True
    end
    object QueryReceber2Operador: TSmallintField
      FieldName = 'Operador'
      Origin = 'MULTI.Receber.Operador'
    end
    object QueryReceber2Orcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Receber.Orcamento'
    end
    object QueryReceber2Descricao_Documento: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Documento'
      LookupDataSet = QueryTipoDocumento
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Documento'
      Lookup = True
    end
    object QueryReceber2Descricao_Cobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Cobranca'
      LookupDataSet = QueryTipoCobranca
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Cobranca'
      Lookup = True
    end
  end
  object QueryParcelas: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Parcelas'
      'where Valor_Inicial <= :Inicial'
      'and Valor_Final >= :Final')
    Left = 238
    Top = 155
    ParamData = <
      item
        DataType = ftCurrency
        Name = 'Inicial'
        ParamType = ptInput
      end
      item
        DataType = ftCurrency
        Name = 'Final'
        ParamType = ptInput
      end>
    object QueryParcelasValor_Inicial: TFloatField
      FieldName = 'Valor_Inicial'
      Origin = 'MULTI.Parcelas.Valor_Inicial'
      currency = True
    end
    object QueryParcelasValor_Final: TFloatField
      FieldName = 'Valor_Final'
      Origin = 'MULTI.Parcelas.Valor_Final'
      currency = True
    end
    object QueryParcelasNumero_Parcelas: TSmallintField
      FieldName = 'Numero_Parcelas'
      Origin = 'MULTI.Parcelas.Numero_Parcelas'
    end
  end
  object QueryStatus: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Status_Orcamento'
      'order by Descricao')
    Left = 238
    Top = 182
    object QueryStatusCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'MULTI.Status_Orcamento.Codigo'
    end
    object QueryStatusDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Status_Orcamento.Descricao'
      Size = 30
    end
  end
  object DataSourceStatus: TDataSource
    DataSet = QueryStatus
    Left = 266
    Top = 182
  end
  object QueryOperador: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Operador'
      'where Codigo = :Operador')
    Left = 266
    Top = 155
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Operador'
        ParamType = ptInput
      end>
    object QueryOperadorCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Operador.Codigo'
    end
    object QueryOperadorNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Operador.Nome'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorApelido: TStringField
      FieldName = 'Apelido'
      Origin = 'MULTI.Operador.Apelido'
    end
    object QueryOperadorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'MULTI.Operador.Endereco'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'MULTI.Operador.Bairro'
      FixedChar = True
    end
    object QueryOperadorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Operador.Cidade'
      FixedChar = True
      Size = 30
    end
    object QueryOperadorUF: TStringField
      FieldName = 'UF'
      Origin = 'MULTI.Operador.UF'
      FixedChar = True
      Size = 2
    end
    object QueryOperadorCep: TStringField
      FieldName = 'Cep'
      Origin = 'MULTI.Operador.Cep'
      FixedChar = True
      Size = 9
    end
    object QueryOperadorFone: TStringField
      FieldName = 'Fone'
      Origin = 'MULTI.Operador.Fone'
      FixedChar = True
      Size = 18
    end
    object QueryOperadorSenha: TStringField
      FieldName = 'Senha'
      Origin = 'MULTI.Operador.Senha'
      Size = 10
    end
  end
  object QueryPrestacoes: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Prestacoes'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento, Parcela')
    Left = 296
    Top = 155
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryPrestacoesOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Prestacoes.Orcamento'
    end
    object QueryPrestacoesParcela: TSmallintField
      FieldName = 'Parcela'
      Origin = 'MULTI.Prestacoes.Parcela'
    end
    object QueryPrestacoesVencimento: TDateTimeField
      FieldName = 'Vencimento'
      Origin = 'MULTI.Prestacoes.Vencimento'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryPrestacoesValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Prestacoes.Valor'
      currency = True
    end
    object QueryPrestacoesNro_Cheque: TStringField
      FieldName = 'Nro_Cheque'
      Origin = 'MULTI.Prestacoes.Nro_Cheque'
    end
    object QueryPrestacoesBanco_Cheque: TStringField
      FieldName = 'Banco_Cheque'
      Origin = 'MULTI.Prestacoes.Banco_Cheque'
      Size = 3
    end
    object QueryPrestacoesNro_ContaCheque: TStringField
      FieldName = 'Nro_ContaCheque'
      Origin = 'MULTI.Prestacoes.Nro_ContaCheque'
    end
  end
  object DataSourceReceber2: TDataSource
    DataSet = QueryReceber2
    Left = 237
    Top = 210
  end
  object QueryTipoDocumento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoDocumento'
      'where Codigo <> '#39#39)
    Left = 294
    Top = 182
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
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoCobranca'
      'where Codigo <> '#39#39' and ativo = 1'
      'order by descricao')
    Left = 322
    Top = 182
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
  object DataSourceTipoCobranca: TDataSource
    DataSet = QueryTipoCobranca
    Left = 322
    Top = 210
  end
  object DataSourceTipoDocumento: TDataSource
    DataSet = QueryTipoDocumento
    Left = 294
    Top = 210
  end
  object DataSourceUsuarios: TDataSource
    DataSet = QueryUsuarios
    Left = 209
    Top = 210
  end
  object DataSourceContratante: TDataSource
    DataSet = QueryContratante
    Left = 265
    Top = 210
  end
  object QueryOrcamentos: TQuery
    AfterOpen = QueryOrcamentosAfterOpen
    BeforeInsert = QueryOrcamentosBeforeInsert
    AfterInsert = QueryOrcamentosAfterInsert
    BeforeEdit = QueryOrcamentosBeforeEdit
    BeforePost = QueryOrcamentosBeforePost
    AfterPost = QueryOrcamentosAfterPost
    BeforeDelete = QueryOrcamentosBeforeDelete
    AfterDelete = QueryOrcamentosAfterDelete
    AfterScroll = QueryOrcamentosAfterScroll
    OnNewRecord = QueryOrcamentosNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Orcamento'
      'where Numero = :Numero_Orcamento'
      'order by Numero')
    Left = 43
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'Numero_Orcamento'
        ParamType = ptUnknown
      end>
    object QueryOrcamentosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'MULTI.Orcamento.Numero'
    end
    object QueryOrcamentosUsuario: TIntegerField
      FieldName = 'Usuario'
      Origin = 'MULTI.Orcamento.Usuario'
      OnValidate = QueryOrcamentosUsuarioValidate
    end
    object QueryOrcamentosData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Orcamento.Data'
    end
    object QueryOrcamentosDentista: TIntegerField
      FieldName = 'Dentista'
      Origin = 'MULTI.Orcamento.Dentista'
      OnValidate = QueryOrcamentosDentistaValidate
    end
    object QueryOrcamentosTotal: TFloatField
      FieldName = 'Total'
      Origin = 'MULTI.Orcamento.Total'
    end
    object QueryOrcamentosNumero_Parcelas: TSmallintField
      FieldName = 'Numero_Parcelas'
      Origin = 'MULTI.Orcamento.Numero_Parcelas'
      OnValidate = QueryOrcamentosNumero_ParcelasValidate
    end
    object QueryOrcamentosData_Conferencia: TDateTimeField
      FieldName = 'Data_Conferencia'
      Origin = 'MULTI.Orcamento.Data_Conferencia'
    end
    object QueryOrcamentosTotal_Dentista: TFloatField
      FieldName = 'Total_Dentista'
      Origin = 'MULTI.Orcamento.Total_Dentista'
    end
    object QueryOrcamentosTotal_Protetico: TFloatField
      FieldName = 'Total_Protetico'
      Origin = 'MULTI.Orcamento.Total_Protetico'
    end
    object QueryOrcamentosTotal_Contas: TFloatField
      FieldName = 'Total_Contas'
      Origin = 'MULTI.Orcamento.Total_Contas'
    end
    object QueryOrcamentosOperador_Cadastro: TSmallintField
      FieldName = 'Operador_Cadastro'
      Origin = 'MULTI.Orcamento.Operador_Cadastro'
    end
    object QueryOrcamentosOperador_Aprovacao: TSmallintField
      FieldName = 'Operador_Aprovacao'
      Origin = 'MULTI.Orcamento.Operador_Aprovacao'
    end
    object QueryOrcamentosTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'MULTI.Orcamento.Tipo'
    end
    object QueryOrcamentosTotal_Bruto: TFloatField
      FieldName = 'Total_Bruto'
      Origin = 'MULTI.Orcamento.Total_Bruto'
    end
    object QueryOrcamentosData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'MULTI.Orcamento.Data_Hora'
    end
    object QueryOrcamentosDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Orcamento.Desconto'
      OnValidate = QueryOrcamentosDescontoValidate
    end
    object QueryOrcamentosTotal_Desconto: TFloatField
      FieldName = 'Total_Desconto'
      Origin = 'MULTI.Orcamento.Total_Desconto'
      currency = True
    end
    object QueryOrcamentosStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MULTI.Orcamento.Status'
      OnChange = QueryOrcamentosStatusChange
    end
    object QueryOrcamentosAutorizado: TBooleanField
      FieldName = 'Autorizado'
      Origin = 'MULTI.Orcamento.Autorizado'
    end
    object QueryOrcamentosContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.Orcamento.Contratante'
    end
    object QueryOrcamentosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Orcamento.Contratante_Titular'
    end
    object QueryOrcamentosNro_Urgencia: TIntegerField
      FieldName = 'Nro_Urgencia'
      Origin = 'MULTI.Orcamento.Nro_Urgencia'
    end
    object QueryOrcamentosData_Status: TDateTimeField
      FieldName = 'Data_Status'
      Origin = 'MULTI.Orcamento.Data_Status'
    end
    object QueryOrcamentosOperador_Status: TIntegerField
      FieldName = 'Operador_Status'
      Origin = 'MULTI.Orcamento.Operador_Status'
    end
    object QueryOrcamentosPericiaFinal: TBooleanField
      FieldName = 'PericiaFinal'
      Origin = 'MULTI.Orcamento.PericiaFinal'
    end
    object QueryOrcamentosStatus_Pagamento: TSmallintField
      FieldName = 'Status_Pagamento'
      Origin = 'MULTI.Orcamento.Status_Pagamento'
    end
    object QueryOrcamentoscd_tabela: TSmallintField
      FieldName = 'cd_tabela'
      Origin = 'MULTI.Orcamento.cd_tabela'
    end
    object QueryOrcamentoslg_ir: TBooleanField
      FieldName = 'lg_ir'
      Origin = 'MULTI.Orcamento.lg_ir'
    end
    object QueryOrcamentostp_cobranca: TIntegerField
      FieldName = 'tp_cobranca'
      Origin = 'MULTI.Orcamento.tp_cobranca'
    end
    object QueryOrcamentosPericiaInicial: TBooleanField
      FieldName = 'PericiaInicial'
      Origin = 'MULTI.Orcamento.PericiaInicial'
    end
    object QueryOrcamentosupdated: TDateTimeField
      FieldName = 'updated'
      Origin = 'MULTI.Orcamento.updated'
    end
    object QueryOrcamentosdata_validade: TDateTimeField
      FieldName = 'data_validade'
      Origin = 'MULTI.Orcamento.data_validade'
    end
  end
  object DataSourceOrcamentos: TDataSource
    DataSet = QueryOrcamentos
    OnDataChange = DataSourceOrcamentosDataChange
    Left = 98
    Top = 155
  end
  object QueryEmpresa: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Empresa')
    Left = 321
    Top = 155
    object QueryEmpresaRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'MULTI.Empresa.Razao_Social'
      Size = 50
    end
    object QueryEmpresaFantasia: TStringField
      FieldName = 'Fantasia'
      Origin = 'MULTI.Empresa.Fantasia'
      Size = 50
    end
    object QueryEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'MULTI.Empresa.Endereco'
      Size = 50
    end
    object QueryEmpresaCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Empresa.Cidade'
      Size = 30
    end
    object QueryEmpresaEstado: TStringField
      FieldName = 'Estado'
      Origin = 'MULTI.Empresa.Estado'
      Size = 2
    end
    object QueryEmpresaCGC: TStringField
      FieldName = 'CGC'
      Origin = 'MULTI.Empresa.CGC'
    end
    object QueryEmpresaIns_Estadual: TStringField
      FieldName = 'Ins_Estadual'
      Origin = 'MULTI.Empresa.Ins_Estadual'
    end
    object QueryEmpresaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Empresa.Codigo'
    end
  end
  object QueryGrupoContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Grupo_Contratante'
      'where codigo = :Codigo_Grupo')
    Left = 181
    Top = 209
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Grupo'
        ParamType = ptInput
      end>
    object QueryGrupoContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Grupo_Contratante.Codigo'
    end
    object QueryGrupoContratanteDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Grupo_Contratante.Descricao'
      Size = 40
    end
  end
  object QueryEspeciais: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Especiais'
      'where Codigo_Operador = :Operador ')
    Left = 156
    Top = 209
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Operador'
        ParamType = ptInput
      end>
    object QueryEspeciaisCodigo_Operador: TIntegerField
      FieldName = 'Codigo_Operador'
      Origin = 'MULTI.Especiais.Codigo_Operador'
    end
    object QueryEspeciaisCodigo_Operacao: TSmallintField
      FieldName = 'Codigo_Operacao'
      Origin = 'MULTI.Especiais.Codigo_Operacao'
    end
  end
  object QueryProcEfetuados: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select contratante, data_hora, itens_orcamento.servico from Orca' +
        'mento'
      
        'left join  Itens_Orcamento on (Orcamento.numero = Itens_orcament' +
        'o.orcamento)'
      'where Usuario = :Contratante'
      'and servico = :Serv'
      'and data_hora >= :DataPesq')
    Left = 99
    Top = 209
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contratante'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Serv'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DataPesq'
        ParamType = ptInput
      end>
  end
  object QueryStatus_Pagto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Status_Pagto')
    Left = 42
    Top = 234
    object QueryStatus_PagtoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Status_Pagto.Codigo'
    end
    object QueryStatus_PagtoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Status_Pagto.Descricao'
      Size = 30
    end
  end
  object DataSourceStatus_Pagto: TDataSource
    DataSet = QueryStatus_Pagto
    Left = 62
    Top = 202
  end
  object QueryCritOdonto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select '
      #9'cd_criterio,'
      #9'nivel_crit, '
      #9'qt_dias,'
      #9'nivel_restricao, qtde'
      ''
      'from '
      #9'criterio_odontograma '
      'where cd_servico = '
      '3190'
      '      and dt_fim_criterio is null order by dt_ini_criterio desc ')
    Left = 265
    Top = 313
  end
  object QueryPacote: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from item_pacote where cd_pacote ='
      '4110')
    Left = 201
    Top = 297
  end
  object QueryCritIdade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      #9'*'
      ''
      ''
      ''
      ''
      'from'
      #9'ServicoXIdade'
      'where cd_servico ='
      '2140 '
      'and'
      '8'
      'between idadeIni and IdadeFim'
      'and dt_fim_criterio is null '
      '')
    Left = 265
    Top = 369
  end
  object QueryDente: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from dente where cd_dente ='
      '1')
    Left = 345
    Top = 377
  end
  object QueryInsLog: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'insert into TempLogValorOrcamento values(getdate(),'
      ' :orcamento ,'
      ' :contratante,'
      ' :usuario,'
      ' :dg_usuario,'
      ' :plano,'
      ' :TabelaPreco,'
      ' :servico,'
      ' :vrServico,'
      ' :VrDentista,'
      ' :IncrementoItem'
      ' )'
      '')
    Left = 641
    Top = 377
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contratante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dg_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'plano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TabelaPreco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vrServico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VrDentista'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IncrementoItem'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 441
    Top = 193
    object OdontogramaAntigo1: TMenuItem
      Caption = 'Odontograma Antigo'
      ShortCut = 116
      OnClick = OdontogramaAntigo1Click
    end
    object EventosOramentoOdontograma1: TMenuItem
      Caption = 'Eventos Or'#231'amento/Odontograma'
      ShortCut = 117
      OnClick = EventosOramentoOdontograma1Click
    end
    object InformarSexantes1: TMenuItem
      Caption = 'Informar Sexantes'
      ShortCut = 118
      OnClick = InformarSexantes1Click
    end
    object ReestabelecerconexocomBD1: TMenuItem
      Caption = 'Reestabelecer conex'#227'o com BD'
      OnClick = ReestabelecerconexocomBD1Click
    end
    object AlterarStatus1: TMenuItem
      Caption = 'Alterar Status'
      ShortCut = 119
      OnClick = AlterarStatus1Click
    end
    object RevalorizaOramento1: TMenuItem
      Caption = 'Revaloriza Or'#231'amento'
      OnClick = RevalorizaOramento1Click
    end
    object Oramentoscommesmoprocedimento1: TMenuItem
      Caption = 'Or'#231'amentos com mesmo procedimento'
      ShortCut = 115
      OnClick = Oramentoscommesmoprocedimento1Click
    end
    object Desaprovaroramento1: TMenuItem
      Caption = 'Desaprovar or'#231'amento'
      OnClick = Desaprovaroramento1Click
    end
    object PesquisaproCdigoTUSS1: TMenuItem
      Caption = 'Pesquisa pro C'#243'digo TUSS'
      ShortCut = 114
      OnClick = PesquisaproCdigoTUSS1Click
    end
    object GerenciamentodeLEADS1: TMenuItem
      Caption = 'Registrar novo Lead'
      ShortCut = 121
      OnClick = GerenciamentodeLEADS1Click
    end
  end
  object QueryEvent: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select orcamento,'
      'REPLACE(tx_evento, CHAR(13) + CHAR(10),'#39' '#39') as tx_evento'
      'from EventOdontograma'
      'where orcamento ='
      '88033'
      ' ')
    Left = 441
    Top = 265
  end
  object QueryExtracao: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select o.numero, i.servico'
      ''
      'from '
      #9'usuario u, '
      #9'orcamento o, '
      #9'itens_orcamento i, '
      #9'servicos s,  '
      #9'DenteXorcamento d'
      ''
      'where u.codigo_completo = o.usuario'
      '      and o.numero = i.orcamento and o.autorizado = 1'
      '      and i.servico = s.codigo'
      '      and d.orcamento = i.orcamento'
      '      and d.incremento = i.incremento'
      '      and s.extracao = 1'
      '      and u.codigo_completo = '
      '      154490'
      '      and d.cd_dente ='
      '      31')
    Left = 409
    Top = 377
  end
  object SP_DeleteOrcamento: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'delete_orcamento'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@orc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cdFuncExcl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dsMotivo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 300
        Value = Null
      end>
    Left = 201
    Top = 257
  end
  object SPVerifCarenciaCrit: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'PVerifCarenciaCrit'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DtBase'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@cd_servico'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cd_dente'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@cd_face'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Dias'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Sexante'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Hemiarco'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@Arcada'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 377
    Top = 273
  end
  object sp_Upd_EventOdonto: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'sp_Upd_EventOdonto'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Orcamento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@incremento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TpEvento'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Operador'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TxEvent'
        Attributes = [paNullable]
        DataType = ftString
        Size = 300
        Value = Null
      end
      item
        Name = '@Criterio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tp_criterio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 11
        Value = Null
      end>
    Left = 497
    Top = 273
  end
  object ADOQueryItensOrcUpd: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from itens_orcamento where orcamento ='
      '0'
      'and incremento ='
      '0')
    Left = 49
    Top = 313
  end
  object ADOQuery_Temp: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    Left = 689
    Top = 250
  end
end
