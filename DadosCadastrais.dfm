object FormDadosCadastrais: TFormDadosCadastrais
  Left = 3
  Top = 115
  ActiveControl = BitBtnSair
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados Cadastrais'
  ClientHeight = 319
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 84
    Top = 14
    Width = 33
    Height = 13
    Caption = 'Nome'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 4
    Top = 14
    Width = 40
    Height = 13
    Caption = 'Código'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBoxEnderecoCobranca: TGroupBox
    Left = 4
    Top = 164
    Width = 768
    Height = 104
    Caption = 'Endereço Comercial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label12: TLabel
      Left = 9
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Endereço'
      FocusControl = DBEditEndComercial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 387
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEditBairroCobranca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 9
      Top = 59
      Width = 40
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEditCidadeComercial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 192
      Top = 59
      Width = 17
      Height = 13
      Caption = 'UF'
      FocusControl = DBEditEstadoComercial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 229
      Top = 59
      Width = 25
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEditCepComercial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 315
      Top = 59
      Width = 34
      Height = 13
      Caption = 'e-mail'
      FocusControl = DBEditEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditEndComercial: TDBEdit
      Left = 9
      Top = 29
      Width = 373
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Endereco_Comercial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEditBairroCobranca: TDBEdit
      Left = 387
      Top = 29
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Bairro_Comercial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEditCidadeComercial: TDBEdit
      Left = 9
      Top = 73
      Width = 177
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Cidade_Comercial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEditEstadoComercial: TDBEdit
      Left = 192
      Top = 73
      Width = 31
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Estado_Comercial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEditCepComercial: TDBEdit
      Left = 229
      Top = 73
      Width = 83
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Cep_Comercial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEditEmail: TDBEdit
      Left = 315
      Top = 73
      Width = 228
      Height = 21
      CharCase = ecLowerCase
      DataField = 'email'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object GroupBoxResidencial: TGroupBox
    Left = 4
    Top = 52
    Width = 768
    Height = 109
    Caption = 'Residêncial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label10: TLabel
      Left = 325
      Top = 60
      Width = 29
      Height = 13
      Caption = 'Fone'
      FocusControl = DBEditFone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 443
      Top = 60
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
    object Label9: TLabel
      Left = 237
      Top = 60
      Width = 25
      Height = 13
      Caption = 'CEP'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 200
      Top = 60
      Width = 17
      Height = 13
      Caption = 'UF'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 9
      Top = 60
      Width = 40
      Height = 13
      Caption = 'Cidade'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 387
      Top = 18
      Width = 34
      Height = 13
      Caption = 'Bairro'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Endereço'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 570
      Top = 60
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
    object DBEditFax: TDBEdit
      Left = 443
      Top = 74
      Width = 123
      Height = 21
      DataField = 'Fax'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEditFone: TDBEdit
      Left = 325
      Top = 74
      Width = 113
      Height = 21
      DataField = 'Fone1'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEditCidade: TDBEdit
      Left = 9
      Top = 74
      Width = 184
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Cidade_Residencial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEditEstado: TDBEdit
      Left = 200
      Top = 74
      Width = 31
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Estado_Residencial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEditCep: TDBEdit
      Left = 237
      Top = 74
      Width = 83
      Height = 21
      DataField = 'CEP_Residencial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEditBairro: TDBEdit
      Left = 387
      Top = 32
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Bairro_Residencial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEditEndereco: TDBEdit
      Left = 9
      Top = 32
      Width = 373
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Endereco_Residencial'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEditCelular: TDBEdit
      Left = 570
      Top = 74
      Width = 113
      Height = 21
      DataField = 'Fone2'
      DataSource = FormConsultaReceber.DataSourceContratante
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBEditCodigo: TDBEdit
    Left = 4
    Top = 29
    Width = 73
    Height = 21
    DataField = 'Codigo'
    DataSource = FormConsultaReceber.DataSourceContratante
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEditNome: TDBEdit
    Left = 84
    Top = 29
    Width = 374
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Nome'
    DataSource = FormConsultaReceber.DataSourceContratante
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BitBtnSair: TBitBtn
    Left = 665
    Top = 276
    Width = 106
    Height = 37
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
    TabOrder = 4
    Kind = bkClose
  end
end
