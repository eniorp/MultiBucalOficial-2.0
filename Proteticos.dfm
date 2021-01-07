object FormProteticos: TFormProteticos
  Left = 98
  Top = 71
  ActiveControl = DBEditCodigo
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o dos Prot'#233'ticos'
  ClientHeight = 482
  ClientWidth = 812
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 812
    Height = 482
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Panel8: TPanel
      Left = 2
      Top = 2
      Width = 808
      Height = 436
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
        Left = 6
        Top = 335
        Width = 62
        Height = 13
        Caption = 'Telefone 1'
        FocusControl = DBEditTelefone1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 312
        Top = 335
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
        Left = 8
        Top = 375
        Width = 80
        Height = 13
        Caption = 'Especialidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 203
        Top = 375
        Width = 52
        Height = 13
        Caption = 'Exclus'#227'o'
        FocusControl = DBEditExclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 414
        Top = 335
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
      object Label8: TLabel
        Left = 108
        Top = 335
        Width = 62
        Height = 13
        Caption = 'Telefone 2'
        FocusControl = DBEditTelefone2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 210
        Top = 335
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
        Left = 471
        Top = 6
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
        Left = 321
        Top = 389
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
        Left = 350
        Top = 375
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
        Left = 466
        Top = 375
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
        Left = 7
        Top = 42
        Width = 21
        Height = 13
        Caption = 'CIC'
        FocusControl = DBEditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 135
        Top = 42
        Width = 30
        Height = 13
        Caption = 'INSS'
        FocusControl = DBEditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 264
        Top = 42
        Width = 80
        Height = 13
        Caption = 'Especialidade'
        FocusControl = DBEditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 367
        Top = 45
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
      object Label26: TLabel
        Left = 9
        Top = 80
        Width = 80
        Height = 13
        Caption = 'Data Inclus'#227'o'
        FocusControl = DBEdit1
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
        DataSource = DataSourceProteticos
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
        Left = 75
        Top = 20
        Width = 351
        Height = 21
        DataField = 'Nome'
        DataSource = DataSourceProteticos
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
        Left = 436
        Top = 20
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
      object GroupBoxComercial: TGroupBox
        Left = 6
        Top = 122
        Width = 553
        Height = 98
        Caption = 'Endere'#231'o Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
          Left = 168
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
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditBairro: TDBEdit
          Left = 275
          Top = 32
          Width = 272
          Height = 21
          DataField = 'Bairro_Comercial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCidade: TDBEdit
          Left = 6
          Top = 72
          Width = 157
          Height = 21
          DataField = 'Cidade_Comercial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCep: TDBEdit
          Left = 204
          Top = 72
          Width = 89
          Height = 21
          DataField = 'Cep_Comercial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEditNomeKeyDown
        end
      end
      object DBEditTelefone1: TDBEdit
        Left = 6
        Top = 349
        Width = 100
        Height = 21
        DataField = 'Fone1'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditFax: TDBEdit
        Left = 312
        Top = 349
        Width = 100
        Height = 21
        DataField = 'Fax'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditExclusao: TDBEdit
        Left = 203
        Top = 389
        Width = 114
        Height = 21
        DataField = 'Data_Exclusao'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 10
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditemail: TDBEdit
        Left = 416
        Top = 349
        Width = 141
        Height = 21
        CharCase = ecLowerCase
        DataField = 'email'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEditNomeKeyDown
      end
      object GroupBoxResidencial: TGroupBox
        Left = 6
        Top = 226
        Width = 553
        Height = 102
        Caption = 'Endere'#231'o Residencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditBairroResidencial: TDBEdit
          Left = 275
          Top = 32
          Width = 272
          Height = 21
          DataField = 'Bairro_Residencial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCidadeResidencial: TDBEdit
          Left = 6
          Top = 72
          Width = 157
          Height = 21
          DataField = 'Cidade_Residencial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEditNomeKeyDown
        end
        object DBEditCepResidencial: TDBEdit
          Left = 204
          Top = 72
          Width = 89
          Height = 21
          DataField = 'Cep_Residencial'
          DataSource = DataSourceProteticos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEditNomeKeyDown
        end
      end
      object DBEditTelefone2: TDBEdit
        Left = 108
        Top = 349
        Width = 100
        Height = 21
        DataField = 'Fone2'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditCelular: TDBEdit
        Left = 210
        Top = 349
        Width = 100
        Height = 21
        DataField = 'Celular'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBLookupComboBoxEspecialidade: TDBLookupComboBox
        Left = 8
        Top = 389
        Width = 189
        Height = 21
        DataSource = DataSourceProteticos
        TabOrder = 9
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditClinica: TDBEdit
        Left = 471
        Top = 20
        Width = 51
        Height = 21
        DataField = 'Codigo_Clinica'
        DataSource = DataSourceProteticos
        TabOrder = 13
      end
      object BitBtnPesquisaClinica: TBitBtn
        Left = 525
        Top = 20
        Width = 23
        Height = 21
        TabOrder = 14
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
        Left = 350
        Top = 389
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Acrescimo_NF'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditDesconto: TDBEdit
        Left = 456
        Top = 389
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Desconto'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditCIC: TDBEdit
        Left = 5
        Top = 56
        Width = 117
        Height = 21
        DataField = 'Cic'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditINSS: TDBEdit
        Left = 135
        Top = 56
        Width = 117
        Height = 21
        DataField = 'Inss'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEditEspecialidade: TDBEdit
        Left = 264
        Top = 56
        Width = 94
        Height = 21
        DataField = 'Especialidade'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnKeyDown = DBEditNomeKeyDown
      end
      object DBEdit6: TDBEdit
        Left = 365
        Top = 57
        Width = 96
        Height = 21
        Hint = 'ANS - Cadastro Nacional Estabelecimento Sa'#250'de'
        CharCase = ecUpperCase
        DataField = 'cnes'
        DataSource = DataSourceProteticos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyDown = DBEditNomeKeyDown
        OnKeyPress = DBEdit6KeyPress
      end
      object Button1: TButton
        Left = 471
        Top = 54
        Width = 75
        Height = 25
        Caption = 'Tab Pagto'
        TabOrder = 20
        OnClick = Button1Click
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 95
        Width = 115
        Height = 21
        DataField = 'dt_inclusao'
        DataSource = DataSourceProteticos
        TabOrder = 21
      end
      object GroupBox8: TGroupBox
        Left = 560
        Top = 10
        Width = 241
        Height = 56
        Caption = 'Tabela de Qtde de US'
        TabOrder = 22
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 7
          Top = 21
          Width = 230
          Height = 21
          DataField = 'cd_tabelaQTUS'
          DataSource = DataSourceProteticos
          KeyField = 'cd_tabela'
          ListField = 'ds_tabela'
          ListSource = dsTabelaQtUS
          TabOrder = 0
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 438
      Width = 808
      Height = 42
      Align = alClient
      BevelInner = bvLowered
      Caption = 'Panel1'
      TabOrder = 1
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 804
        Height = 38
        Align = alClient
        TabOrder = 0
        object Panel4: TPanel
          Left = 713
          Top = 1
          Width = 90
          Height = 36
          Align = alRight
          TabOrder = 0
          object BitBtnSair: TBitBtn
            Left = 1
            Top = 2
            Width = 90
            Height = 30
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
          Width = 712
          Height = 36
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object DBNavigatorProteticos: TDBNavigator
            Left = 0
            Top = 0
            Width = 623
            Height = 36
            DataSource = DataSourceProteticos
            VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
            Align = alClient
            TabOrder = 0
          end
          object Panel6: TPanel
            Left = 623
            Top = 0
            Width = 89
            Height = 36
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Button3: TButton
              Left = 3
              Top = 2
              Width = 84
              Height = 31
              Caption = 'Dados Banc'#225'rios'
              TabOrder = 0
              OnClick = Button3Click
            end
          end
        end
      end
    end
  end
  object QueryProteticos: TQuery
    AfterInsert = QueryProteticosAfterInsert
    BeforePost = QueryProteticosBeforePost
    AfterPost = QueryProteticosAfterPost
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Protetico'
      'where 2 = 1')
    Left = 296
    Top = 78
    object QueryProteticosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Protetico.Codigo'
    end
    object QueryProteticosNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Protetico.Nome'
      Size = 40
    end
    object QueryProteticosEndereco_Comercial: TStringField
      FieldName = 'Endereco_Comercial'
      Origin = 'MULTI.Protetico.Endereco_Comercial'
      Size = 40
    end
    object QueryProteticosBairro_Comercial: TStringField
      FieldName = 'Bairro_Comercial'
      Origin = 'MULTI.Protetico.Bairro_Comercial'
      Size = 25
    end
    object QueryProteticosCep_Comercial: TStringField
      FieldName = 'Cep_Comercial'
      Origin = 'MULTI.Protetico.Cep_Comercial'
      Size = 9
    end
    object QueryProteticosCidade_Comercial: TStringField
      FieldName = 'Cidade_Comercial'
      Origin = 'MULTI.Protetico.Cidade_Comercial'
      Size = 25
    end
    object QueryProteticosEstado_Comercial: TStringField
      FieldName = 'Estado_Comercial'
      Origin = 'MULTI.Protetico.Estado_Comercial'
      Size = 2
    end
    object QueryProteticosEndereco_Residencial: TStringField
      FieldName = 'Endereco_Residencial'
      Origin = 'MULTI.Protetico.Endereco_Residencial'
      Size = 40
    end
    object QueryProteticosBairro_Residencial: TStringField
      FieldName = 'Bairro_Residencial'
      Origin = 'MULTI.Protetico.Bairro_Residencial'
      Size = 25
    end
    object QueryProteticosCep_Residencial: TStringField
      FieldName = 'Cep_Residencial'
      Origin = 'MULTI.Protetico.Cep_Residencial'
      Size = 9
    end
    object QueryProteticosCidade_Residencial: TStringField
      FieldName = 'Cidade_Residencial'
      Origin = 'MULTI.Protetico.Cidade_Residencial'
      Size = 25
    end
    object QueryProteticosEstado_Residencial: TStringField
      FieldName = 'Estado_Residencial'
      Origin = 'MULTI.Protetico.Estado_Residencial'
      Size = 2
    end
    object QueryProteticosFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'MULTI.Protetico.Fone1'
      Size = 18
    end
    object QueryProteticosFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'MULTI.Protetico.Fone2'
      Size = 18
    end
    object QueryProteticosFax: TStringField
      FieldName = 'Fax'
      Origin = 'MULTI.Protetico.Fax'
      Size = 18
    end
    object QueryProteticosCelular: TStringField
      FieldName = 'Celular'
      Origin = 'MULTI.Protetico.Celular'
      Size = 18
    end
    object QueryProteticosemail: TStringField
      FieldName = 'email'
      Origin = 'MULTI.Protetico.email'
      Size = 30
    end
    object QueryProteticosEspecialidade: TSmallintField
      FieldName = 'Especialidade'
      Origin = 'MULTI.Protetico.Especialidade'
    end
    object QueryProteticosData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Protetico.Data_Exclusao'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryProteticosCodigo_Clinica: TIntegerField
      FieldName = 'Codigo_Clinica'
      Origin = 'MULTI.Protetico.Codigo_Clinica'
    end
    object QueryProteticosAcrescimo_NF: TIntegerField
      FieldName = 'Acrescimo_NF'
      Origin = 'MULTI.Protetico.Acrescimo_NF'
    end
    object QueryProteticosDesconto: TIntegerField
      FieldName = 'Desconto'
      Origin = 'MULTI.Protetico.Desconto'
    end
    object QueryProteticosCic: TStringField
      DisplayWidth = 15
      FieldName = 'Cic'
      Origin = 'MULTI.Protetico.Cic'
      Size = 15
    end
    object QueryProteticosInss: TStringField
      DisplayWidth = 15
      FieldName = 'Inss'
      Origin = 'MULTI.Protetico.Inss'
      Size = 15
    end
    object QueryProteticoscnes: TStringField
      FieldName = 'cnes'
      Origin = 'MULTI.Protetico.cnes'
      Size = 7
    end
    object QueryProteticosdt_inclusao: TDateTimeField
      FieldName = 'dt_inclusao'
      Origin = 'MULTI.Protetico.dt_inclusao'
      EditMask = '!99/99/0000;1;_'
    end
    object QueryProteticosbanco: TStringField
      FieldName = 'banco'
      Origin = 'MULTI.Protetico.banco'
    end
    object QueryProteticosagencia: TStringField
      FieldName = 'agencia'
      Origin = 'MULTI.Protetico.agencia'
      Size = 10
    end
    object QueryProteticoscontaCorrente: TStringField
      FieldName = 'contaCorrente'
      Origin = 'MULTI.Protetico.contaCorrente'
      Size = 15
    end
    object QueryProteticosdigitoCC: TStringField
      FieldName = 'digitoCC'
      Origin = 'MULTI.Protetico.digitoCC'
      Size = 5
    end
    object QueryProteticoslg_recebimento_deposito: TBooleanField
      FieldName = 'lg_recebimento_deposito'
      Origin = 'MULTI.Protetico.lg_recebimento_deposito'
    end
    object QueryProteticoscd_tabelaQTUS: TIntegerField
      FieldName = 'cd_tabelaQTUS'
      Origin = 'MULTI.Protetico.cd_tabelaQTUS'
    end
  end
  object DataSourceProteticos: TDataSource
    DataSet = QueryProteticos
    Left = 398
    Top = 110
  end
  object QueryPermissoes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from permissoes'
      'where codigo_operador = :Operador'
      'and codigo_grupo = :Grupo'
      'and Codigo_Procedimento = :Procedimento'
      'and Codigo_SubProcedimento = :SubProcedimento')
    Left = 458
    Top = 96
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
  object TabelaQtUS: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TabelaQtUS where tipoTabela in('#39'P'#39','#39'T'#39') order by 2')
    Left = 682
    Top = 88
  end
  object dsTabelaQtUS: TDataSource
    DataSet = TabelaQtUS
    Left = 610
    Top = 88
  end
end
