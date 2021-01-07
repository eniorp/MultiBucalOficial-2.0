object FormPagProtetico: TFormPagProtetico
  Left = 37
  Top = 118
  ActiveControl = BitBtnPesquisar
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pagamento de Prot'#233'ticos'
  ClientHeight = 482
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 96
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 12
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
      Left = 167
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
      Left = 12
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
      Left = 5
      Top = 74
      Width = 52
      Height = 13
      Caption = 'Prot'#233'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 286
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
    object DBEditNumero: TDBEdit
      Left = 60
      Top = 8
      Width = 75
      Height = 21
      DataField = 'Numero'
      DataSource = DataSourceOrcamento
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
      Left = 201
      Top = 8
      Width = 79
      Height = 21
      DataField = 'Data'
      DataSource = DataSourceOrcamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditDataKeyDown
    end
    object DBEditUsuario: TDBEdit
      Left = 60
      Top = 37
      Width = 75
      Height = 21
      DataField = 'Usuario'
      DataSource = DataSourceOrcamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditDataKeyDown
    end
    object DBEditProtetico: TDBEdit
      Left = 60
      Top = 66
      Width = 75
      Height = 21
      DataField = 'Protetico'
      DataSource = DataSourcePagProtetico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = DBEditProteticoEnter
      OnExit = DBEditProteticoExit
      OnKeyDown = DBEditDataKeyDown
    end
    object BitBtnPesquisar: TBitBtn
      Left = 139
      Top = 8
      Width = 24
      Height = 21
      TabOrder = 5
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
    object EditNomeUsuario: TEdit
      Left = 140
      Top = 37
      Width = 643
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object EditNomeProtetico: TEdit
      Left = 167
      Top = 66
      Width = 610
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEditTipo: TDBEdit
      Left = 318
      Top = 8
      Width = 44
      Height = 21
      DataField = 'Tipo'
      DataSource = DataSourceOrcamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditDataKeyDown
    end
    object BitBtnPesquisaTipo: TBitBtn
      Left = 366
      Top = 8
      Width = 24
      Height = 21
      TabOrder = 8
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
      Left = 395
      Top = 8
      Width = 135
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
    object GroupBoxProcura: TGroupBox
      Left = 541
      Top = 3
      Width = 243
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Visible = False
      object Label7: TLabel
        Left = 8
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Digite o N'#186
      end
      object EditProcura: TEdit
        Left = 81
        Top = 8
        Width = 157
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
    object BitBtnPesquisaProtetico: TBitBtn
      Left = 139
      Top = 67
      Width = 24
      Height = 21
      TabOrder = 11
      OnClick = BitBtnPesquisaProteticoClick
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
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 792
    Height = 305
    Align = alClient
    TabOrder = 1
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 303
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label9: TLabel
        Left = 424
        Top = 56
        Width = 28
        Height = 13
        Caption = 'status'
      end
      object DBGridItens: TDBGrid
        Left = 0
        Top = 0
        Width = 790
        Height = 303
        Align = alClient
        Color = clInfoBk
        DataSource = DataSourceItensPagProtetico
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
            FieldName = 'status'
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
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Servico'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 247
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MesAno'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
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
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Paga'
            Title.Caption = 'Qtde. Paga'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Protetico'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProte'
            Title.Caption = 'Nome Protetico'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 147
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
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacao'
            Title.Caption = 'Observa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cd_tabela'
            ReadOnly = True
            Title.Caption = 'Tab Pagto'
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 792
    Height = 46
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object Label5: TLabel
      Left = 97
      Top = 4
      Width = 64
      Height = 13
      Caption = 'Presta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 576
      Top = 22
      Width = 78
      Height = 16
      Caption = 'Total Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 80
      Top = 27
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
      Left = 11
      Top = 4
      Width = 55
      Height = 13
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 198
      Top = 5
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
    object DBEditPrestacoes: TDBEdit
      Left = 97
      Top = 18
      Width = 75
      Height = 21
      DataField = 'Numero_Parcelas'
      DataSource = DataSourceOrcamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEditDataKeyDown
    end
    object DBEditDesconto: TDBEdit
      Left = 11
      Top = 18
      Width = 65
      Height = 21
      DataField = 'Desconto'
      DataSource = DataSourceOrcamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditDataKeyDown
    end
    object EditTotal: TEdit
      Left = 658
      Top = 16
      Width = 121
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'R$ 0.00'
    end
    object DBLookupComboBoxStatus: TDBLookupComboBox
      Left = 199
      Top = 18
      Width = 193
      Height = 21
      DataField = 'Status_Pagamento'
      DataSource = DataSourceOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSourceStatus_Pagto
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBEditDataKeyDown
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 447
    Width = 792
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Panel5: TPanel
      Left = 0
      Top = 1
      Width = 792
      Height = 34
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object Panel6: TPanel
        Left = 639
        Top = 2
        Width = 151
        Height = 30
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtnSair: TBitBtn
          Left = 76
          Top = 0
          Width = 75
          Height = 30
          Hint = 'Sair do Cadastro'
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtnSairClick
          Kind = bkClose
        end
        object BitBtnTitulos: TBitBtn
          Left = 1
          Top = 0
          Width = 75
          Height = 30
          Caption = '&Obs.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtnTitulosClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
      end
      object Panel7: TPanel
        Left = 2
        Top = 2
        Width = 637
        Height = 30
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtnPgTotal: TBitBtn
          Left = 552
          Top = 0
          Width = 83
          Height = 30
          Caption = 'Pg &Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtnPgTotalClick
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
        end
        object DBNavigatorPagProtetico: TDBNavigator
          Left = 0
          Top = 0
          Width = 460
          Height = 30
          DataSource = DataSourceItensPagProtetico
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
          Align = alLeft
          TabOrder = 1
        end
        object BitBtnPgParcial: TBitBtn
          Left = 464
          Top = 0
          Width = 84
          Height = 30
          Caption = 'Pg &Parcial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtnPgParcialClick
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
        end
      end
    end
  end
  object QueryOrcamentos: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Orcamento'
      'where Numero = :Numero_Orcamento'
      'order by Numero'
      ''
      ''
      '')
    Left = 42
    Top = 154
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryOrcamentosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'MULTI.Orcamento.Numero'
    end
    object QueryOrcamentosUsuario: TIntegerField
      FieldName = 'Usuario'
      Origin = 'MULTI.Orcamento.Usuario'
    end
    object QueryOrcamentosData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Orcamento.Data'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryOrcamentosDentista: TIntegerField
      FieldName = 'Dentista'
      Origin = 'MULTI.Orcamento.Dentista'
    end
    object QueryOrcamentosTotal: TFloatField
      FieldName = 'Total'
      Origin = 'MULTI.Orcamento.Total'
      currency = True
    end
    object QueryOrcamentosNumero_Parcelas: TSmallintField
      FieldName = 'Numero_Parcelas'
      Origin = 'MULTI.Orcamento.Numero_Parcelas'
    end
    object QueryOrcamentosData_Conferencia: TDateTimeField
      FieldName = 'Data_Conferencia'
      Origin = 'MULTI.Orcamento.Data_Conferencia'
      EditMask = '!90/90/0000;1;_'
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
    object QueryOrcamentosAutorizado: TBooleanField
      FieldName = 'Autorizado'
      Origin = 'MULTI.Orcamento.Autorizado'
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
      currency = True
    end
    object QueryOrcamentosData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'MULTI.Orcamento.Data_Hora'
    end
    object QueryOrcamentosDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Orcamento.Desconto'
    end
    object QueryOrcamentosTotal_Desconto: TFloatField
      FieldName = 'Total_Desconto'
      Origin = 'MULTI.Orcamento.Total_Desconto'
      currency = True
    end
    object QueryOrcamentosStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MULTI.Orcamento.Status'
    end
    object QueryOrcamentosContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.Orcamento.Contratante'
    end
    object QueryOrcamentosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Orcamento.Contratante_Titular'
    end
    object QueryOrcamentosnro_urgencia: TIntegerField
      FieldName = 'nro_urgencia'
      Origin = 'MULTI.Orcamento.nro_urgencia'
    end
    object QueryOrcamentosData_Status: TDateTimeField
      FieldName = 'Data_Status'
      Origin = 'MULTI.Orcamento.Data_Status'
    end
    object QueryOrcamentosOperador_Status: TIntegerField
      FieldName = 'Operador_Status'
      Origin = 'MULTI.Orcamento.Operador_Status'
    end
    object QueryOrcamentosStatus_Pagamento: TSmallintField
      FieldName = 'Status_Pagamento'
      Origin = 'MULTI.Orcamento.Status_Pagamento'
    end
    object QueryOrcamentosPericiaFinal: TBooleanField
      FieldName = 'PericiaFinal'
      Origin = 'MULTI.Orcamento.PericiaFinal'
    end
  end
  object QueryItensPagProtetico: TQuery
    AfterInsert = QueryItensPagProteticoAfterInsert
    BeforePost = QueryItensPagProteticoBeforePost
    AfterPost = QueryItensPagProteticoAfterPost
    BeforeDelete = QueryItensPagProteticoBeforeDelete
    OnNewRecord = QueryItensPagProteticoNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Itens_PagProtetico'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento, Protetico, Incremento')
    Left = 72
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryItensPagProteticoOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Itens_PagProtetico.Orcamento'
    end
    object QueryItensPagProteticoIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Itens_PagProtetico.Incremento'
    end
    object QueryItensPagProteticoMesAno: TStringField
      FieldName = 'MesAno'
      Origin = 'MULTI.Itens_PagProtetico.MesAno'
      Size = 7
    end
    object QueryItensPagProteticoServico: TIntegerField
      FieldName = 'Servico'
      Origin = 'MULTI.Itens_PagProtetico.Servico'
    end
    object QueryItensPagProteticoQuantidade: TIntegerField
      FieldName = 'Quantidade'
      Origin = 'MULTI.Itens_PagProtetico.Quantidade'
    end
    object QueryItensPagProteticoQuantidade_Paga: TIntegerField
      FieldName = 'Quantidade_Paga'
      Origin = 'MULTI.Itens_PagProtetico.Quantidade_Paga'
      OnValidate = QueryItensPagProteticoQuantidade_PagaValidate
    end
    object QueryItensPagProteticoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Itens_PagProtetico.Valor'
      currency = True
    end
    object QueryItensPagProteticoObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'MULTI.Itens_PagProtetico.Observacao'
      Size = 30
    end
    object QueryItensPagProteticoDescricao_Servico: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Servico'
      LookupDataSet = QueryServicos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Servico'
      Size = 35
      Lookup = True
    end
    object QueryItensPagProteticoProtetico: TIntegerField
      FieldName = 'Protetico'
      Origin = 'MULTI.Itens_PagProtetico.Protetico'
    end
    object QueryItensPagProteticoNomeProte: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProte'
      LookupDataSet = QueryProteticoAux
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Protetico'
      Size = 30
      Lookup = True
    end
    object QueryItensPagProteticoid_pagto: TIntegerField
      FieldName = 'id_pagto'
      Origin = 'MULTI.Itens_PagProtetico.id_pagto'
    end
    object QueryItensPagProteticocd_tabela: TSmallintField
      FieldName = 'cd_tabela'
      Origin = 'MULTI.Itens_PagProtetico.cd_tabela'
    end
    object QueryItensPagProteticostatus: TStringField
      FieldName = 'status'
      Origin = 'MULTI.Itens_PagProtetico.status'
      FixedChar = True
      Size = 1
    end
    object QueryItensPagProteticoindiceTabPagProtetico: TIntegerField
      FieldName = 'indiceTabPagProtetico'
      Origin = 'MULTI.Itens_PagProtetico.indiceTabPagProtetico'
    end
  end
  object DataSourceOrcamento: TDataSource
    DataSet = QueryOrcamentos
    OnDataChange = DataSourceOrcamentoDataChange
    Left = 98
    Top = 154
  end
  object DataSourceItensPagProtetico: TDataSource
    DataSet = QueryItensPagProtetico
    Left = 98
    Top = 182
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Usuario'
      'where Codigo = :Usuario'
      'and Digito = :Digito_Usuario')
    Left = 126
    Top = 154
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Usuario'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Digito_Usuario'
        ParamType = ptInput
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
  end
  object QueryServicos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Servicos'
      'order by Codigo')
    Left = 154
    Top = 154
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
  end
  object QueryProtetico: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Protetico'
      'where Codigo = :Protetico')
    Left = 154
    Top = 182
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Protetico'
        ParamType = ptInput
      end>
    object QueryProteticoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Protetico.Codigo'
    end
    object QueryProteticoNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Protetico.Nome'
      Size = 40
    end
    object QueryProteticoData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Protetico.Data_Exclusao'
    end
  end
  object QueryOrcamentosAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Numero from Orcamento'
      'order by Numero Desc')
    Left = 70
    Top = 154
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
    object QueryValorProcedimentoValor_Dentista: TFloatField
      FieldName = 'Valor_Dentista'
      Origin = 'MULTI.ValorxProcedimento.Valor_Dentista'
    end
    object QueryValorProcedimentoValor_Protetico: TFloatField
      FieldName = 'Valor_Protetico'
      Origin = 'MULTI.ValorxProcedimento.Valor_Protetico'
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
    object QueryReceberStatus_Cheque: TStringField
      FieldName = 'Status_Cheque'
      Origin = 'MULTI.Receber.Status_Cheque'
      Size = 10
    end
    object QueryReceberObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'MULTI.Receber.Observacoes'
    end
    object QueryReceberStatus_Orcamento: TSmallintField
      FieldName = 'Status_Orcamento'
      Origin = 'MULTI.Receber.Status_Orcamento'
    end
  end
  object QueryPreferencias: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select Registro_Unico, Status_Grava, Status_Autorizado, Status_P' +
        'arcial, Status_Total,'
      'Nome_Empresa, Valor_US from Preferencia'
      'order by Registro_Unico')
    Left = 182
    Top = 154
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
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome, Plano, Grupo_Contratante from Contratante'
      'where Codigo = :Codigo_Contrantante'
      'order by Codigo')
    Left = 42
    Top = 180
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
    Top = 154
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
    Top = 154
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
    Left = 208
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
    Left = 70
    Top = 210
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
  object QueryStatus_Pagto: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Status_Pagto'
      'order by Descricao')
    Left = 238
    Top = 182
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
    Left = 266
    Top = 182
  end
  object QueryOperador: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Operador'
      'where Codigo = :Operador')
    Left = 267
    Top = 154
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
    Top = 154
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
      'where Codigo <> '#39#39)
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
    Top = 211
  end
  object QueryItensOrcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Itens_Orcamento'
      'where status <> '#39'C'#39' and Orcamento = :Numero_Orcamento'
      'and Valor_Protetico <> 0'
      'order by Orcamento, Incremento'
      ''
      ''
      '')
    Left = 98
    Top = 210
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryItensOrcamentoOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Itens_Orcamento.Orcamento'
    end
    object QueryItensOrcamentoIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Itens_Orcamento.Incremento'
    end
    object QueryItensOrcamentoServico: TIntegerField
      FieldName = 'Servico'
      Origin = 'MULTI.Itens_Orcamento.Servico'
    end
    object QueryItensOrcamentoQuantidade: TSmallintField
      FieldName = 'Quantidade'
      Origin = 'MULTI.Itens_Orcamento.Quantidade'
    end
    object QueryItensOrcamentoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Itens_Orcamento.Valor'
    end
    object QueryItensOrcamentoValor_Bruto: TFloatField
      FieldName = 'Valor_Bruto'
      Origin = 'MULTI.Itens_Orcamento.Valor_Bruto'
    end
    object QueryItensOrcamentoValor_Dentista: TFloatField
      FieldName = 'Valor_Dentista'
      Origin = 'MULTI.Itens_Orcamento.Valor_Dentista'
    end
    object QueryItensOrcamentoValor_Protetico: TFloatField
      FieldName = 'Valor_Protetico'
      Origin = 'MULTI.Itens_Orcamento.Valor_Protetico'
    end
    object QueryItensOrcamentostatus: TStringField
      FieldName = 'status'
      Origin = 'MULTI.Itens_Orcamento.status'
      FixedChar = True
      Size = 1
    end
  end
  object QueryPagProtetico: TQuery
    AfterInsert = QueryPagProteticoAfterInsert
    AfterPost = QueryPagProteticoAfterPost
    BeforeDelete = QueryPagProteticoBeforeDelete
    AfterDelete = QueryPagProteticoAfterDelete
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from PagProtetico'
      'where Orcamento = :Numero_Orcamento'
      'order by Protetico'
      ''
      '')
    Left = 154
    Top = 266
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryPagProteticoOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.PagProtetico.Orcamento'
    end
    object QueryPagProteticoProtetico: TIntegerField
      FieldName = 'Protetico'
      Origin = 'MULTI.PagProtetico.Protetico'
      OnValidate = QueryPagProteticoProteticoValidate
    end
    object QueryPagProteticoUsuario: TIntegerField
      FieldName = 'Usuario'
      Origin = 'MULTI.PagProtetico.Usuario'
    end
    object QueryPagProteticoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.PagProtetico.Data'
    end
  end
  object DataSourcePagProtetico: TDataSource
    DataSet = QueryPagProtetico
    OnDataChange = DataSourcePagProteticoDataChange
    Left = 126
    Top = 210
  end
  object QueryPagProteticoAuxiliar: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from PagProtetico'
      'where Orcamento = :Numero_Orcamento'
      'order by Protetico')
    Left = 182
    Top = 210
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.PagProtetico.Orcamento'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Protetico'
      Origin = 'MULTI.PagProtetico.Protetico'
    end
  end
  object QueryPermissoes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from permissoes'
      'where codigo_operador = :Operador'
      'and codigo_grupo = :Grupo'
      'and Codigo_Procedimento = :Procedimento'
      'and Codigo_SubProcedimento = :SubProcedimento')
    Left = 323
    Top = 155
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
  object QueryObservacoes: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Observacoes_Orcamento'
      'where Orcamento = :Numero_Orcamento')
    Left = 239
    Top = 154
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryObservacoesOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Observacoes_Orcamento.Orcamento'
    end
    object QueryObservacoesTexto: TMemoField
      FieldName = 'Texto'
      Origin = 'MULTI.Observacoes_Orcamento.Texto'
      BlobType = ftMemo
      Size = 1
    end
  end
  object QueryProteticoAux: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Protetico'
      'order by nome')
    Left = 352
    Top = 155
    object QueryProteticoAuxCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Protetico.Codigo'
    end
    object QueryProteticoAuxNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Protetico.Nome'
      Size = 40
    end
  end
  object DataSourceProteticoAux: TDataSource
    DataSet = QueryProteticoAux
    Left = 352
    Top = 183
  end
  object QueryVerifica: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select (select count(*) from Itens_PagProtetico  where orcamento' +
        ' ='
      '0'
      
        ') - (select sum(quantidade) from Itens_Orcamento  where orcament' +
        'o ='
      '0'
      'and Valor_Protetico <> 0) as qtde')
    Left = 449
    Top = 305
  end
end
