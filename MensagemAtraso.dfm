object FormMensagemAtraso: TFormMensagemAtraso
  Left = 176
  Top = 235
  BorderStyle = bsDialog
  Caption = 'Mensagem do Cadastro'
  ClientHeight = 145
  ClientWidth = 454
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 37
    Width = 384
    Height = 24
    Caption = 'O Associado possui Títulos com 120 dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 170
    Top = 69
    Width = 114
    Height = 24
    Alignment = taCenter
    Caption = 'de Atraso !!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelEmpresa: TLabel
    Left = 90
    Top = 7
    Width = 281
    Height = 24
    Alignment = taCenter
    Caption = 'A Empresa relacionada a este'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BitBtnOk: TBitBtn
    Left = 129
    Top = 104
    Width = 75
    Height = 25
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtnTitulos: TBitBtn
    Left = 252
    Top = 104
    Width = 72
    Height = 25
    Caption = 'Títulos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnTitulosClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555500000000005555550FFFFFFFF05555550F0000FFF05555550FFFFFFFF
      05555550F000000F05555550FFFFFFFF05555550F000000F05555550FFFFFFFF
      05555550F000FFFF05555550FFFFF00005555550F00FF0F055555550FFFFF005
      5555555000000055555555555555555555555555555555555555}
  end
end
