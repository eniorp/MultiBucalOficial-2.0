object FormEtiquetaContratante: TFormEtiquetaContratante
  Left = 224
  Top = 209
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiqueta Contratante'
  ClientHeight = 109
  ClientWidth = 228
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
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 228
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtnImprimir: TBitBtn
      Left = 26
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtnSair: TBitBtn
      Left = 128
      Top = 8
      Width = 72
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 68
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label16: TLabel
      Left = 12
      Top = 11
      Width = 44
      Height = 13
      Caption = 'Código '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 164
      Top = 11
      Width = 44
      Height = 13
      Caption = 'Número'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnPesquisaCobertura: TBitBtn
      Left = 116
      Top = 29
      Width = 24
      Height = 21
      TabOrder = 2
      OnClick = BitBtnPesquisaCoberturaClick
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
    object EditCodigo: TEdit
      Left = 13
      Top = 29
      Width = 100
      Height = 21
      TabOrder = 0
      OnKeyDown = EditNumeroKeyDown
    end
    object EditNumero: TEdit
      Left = 166
      Top = 29
      Width = 39
      Height = 21
      TabOrder = 1
      Text = '1'
      OnExit = EditNumeroExit
      OnKeyDown = EditNumeroKeyDown
      OnKeyPress = EditNumeroKeyPress
    end
  end
  object QueryContratantes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Contratante'
      'where Codigo = :Codigo'
      'and Exclusao is null'
      'order by Codigo')
    Left = 105
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    object QueryContratantesCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratantesNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Contratante.Nome'
      Size = 50
    end
    object QueryContratantesExclusao: TDateTimeField
      FieldName = 'Exclusao'
      Origin = 'MULTI.Contratante.Exclusao'
    end
    object QueryContratantesEndereco_Comercial: TStringField
      FieldName = 'Endereco_Comercial'
      Origin = 'MULTI.Contratante.Endereco_Comercial'
      Size = 50
    end
    object QueryContratantesBairro_Comercial: TStringField
      FieldName = 'Bairro_Comercial'
      Origin = 'MULTI.Contratante.Bairro_Comercial'
      Size = 50
    end
    object QueryContratantesCidade_Comercial: TStringField
      FieldName = 'Cidade_Comercial'
      Origin = 'MULTI.Contratante.Cidade_Comercial'
      Size = 50
    end
    object QueryContratantesEstado_Comercial: TStringField
      FieldName = 'Estado_Comercial'
      Origin = 'MULTI.Contratante.Estado_Comercial'
      Size = 50
    end
    object QueryContratantesCep_Comercial: TStringField
      FieldName = 'Cep_Comercial'
      Origin = 'MULTI.Contratante.Cep_Comercial'
      Size = 50
    end
  end
end
