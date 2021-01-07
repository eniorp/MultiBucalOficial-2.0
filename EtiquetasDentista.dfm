object FormEtiquetasDentistas: TFormEtiquetasDentistas
  Left = 248
  Top = 160
  ActiveControl = EditDentista1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiqueta Dentistas '
  ClientHeight = 109
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 266
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object BitBtnImprimir: TBitBtn
      Left = 58
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
      Left = 136
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
    Width = 266
    Height = 68
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 90
      Top = 39
      Width = 15
      Height = 13
      Caption = 'ao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 15
      Width = 68
      Height = 13
      Caption = 'Do Dentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditDentista1: TEdit
      Left = 10
      Top = 31
      Width = 75
      Height = 21
      TabOrder = 0
      Text = '1'
      OnKeyDown = EditDentista1KeyDown
      OnKeyPress = EditDentista1KeyPress
    end
    object EditDentista2: TEdit
      Left = 110
      Top = 31
      Width = 75
      Height = 21
      TabOrder = 1
      Text = '999999'
      OnKeyDown = EditDentista1KeyDown
      OnKeyPress = EditDentista1KeyPress
    end
  end
  object QueryDentistas: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Dentista'
      'where Codigo between :Codigo1 and :Codigo2'
      'and Data_Exclusao is null'
      'order by Codigo')
    Left = 193
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Codigo2'
        ParamType = ptInput
      end>
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
  end
end
