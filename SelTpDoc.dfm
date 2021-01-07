object FmSelTpDoc: TFmSelTpDoc
  Left = 417
  Top = 59
  BorderStyle = bsDialog
  Caption = 'Selecione os tipos de Documentos'
  ClientHeight = 427
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 2
    Top = 4
    Width = 349
    Height = 13
    Caption = 
      'Selecione os Tipos de Documentos ou marque a op'#231#227'o Selecionar To' +
      'dos'
  end
  object ListView: TListView
    Left = 9
    Top = 57
    Width = 346
    Height = 318
    Cursor = crHandPoint
    Checkboxes = True
    Columns = <
      item
        Caption = 'C'#243'digo'
      end
      item
        Caption = 'Descri'#231#227'o'
        Width = 230
      end
      item
        Caption = 'Classifica'#231#227'o'
        Width = 200
      end>
    FlatScrollBars = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object BitBtn1: TBitBtn
    Left = 193
    Top = 391
    Width = 81
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
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
    Left = 281
    Top = 391
    Width = 81
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = False
    Kind = bkClose
  end
  object RadioGroup1: TRadioGroup
    Left = 12
    Top = 18
    Width = 343
    Height = 32
    Caption = 'Selecionar'
    Columns = 3
    Items.Strings = (
      'Todos'
      'Mensalidades'
      'Or'#231'amentos')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Desmarcar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select codigo,descricao,upper(classificacao) classificacao from ' +
        'tipodocumento where ativo = 1 order by codigo')
    Left = 160
    Top = 168
  end
end
