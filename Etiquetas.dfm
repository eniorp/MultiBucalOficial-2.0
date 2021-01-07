object FormEtiquetas: TFormEtiquetas
  Left = 248
  Top = 160
  ActiveControl = EditContratante1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
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
      Width = 87
      Height = 13
      Caption = 'Do Contratante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditContratante1: TEdit
      Left = 10
      Top = 31
      Width = 75
      Height = 21
      TabOrder = 0
      Text = '1'
      OnKeyDown = EditContratante1KeyDown
      OnKeyPress = EditContratante1KeyPress
    end
    object EditContratante2: TEdit
      Left = 110
      Top = 31
      Width = 75
      Height = 21
      TabOrder = 1
      Text = '999999'
      OnKeyDown = EditContratante1KeyDown
      OnKeyPress = EditContratante1KeyPress
    end
  end
  object QueryContratantes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Contratante'
      'where Codigo between :Codigo1 and :Codigo2'
      'and Exclusao is null'
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
    object QueryContratantesEndereco_Residencial: TStringField
      FieldName = 'Endereco_Residencial'
      Origin = 'MULTI.Contratante.Endereco_Residencial'
      Size = 50
    end
    object QueryContratantesBairro_Residencial: TStringField
      FieldName = 'Bairro_Residencial'
      Origin = 'MULTI.Contratante.Bairro_Residencial'
      Size = 50
    end
    object QueryContratantesCidade_Residencial: TStringField
      FieldName = 'Cidade_Residencial'
      Origin = 'MULTI.Contratante.Cidade_Residencial'
      Size = 50
    end
    object QueryContratantesEstado_Residencial: TStringField
      FieldName = 'Estado_Residencial'
      Origin = 'MULTI.Contratante.Estado_Residencial'
      Size = 50
    end
    object QueryContratantesCEP_Residencial: TStringField
      FieldName = 'CEP_Residencial'
      Origin = 'MULTI.Contratante.CEP_Residencial'
      Size = 50
    end
  end
end
