object FormMenssagemItau: TFormMenssagemItau
  Left = 244
  Top = 219
  Width = 525
  Height = 194
  Caption = 'Menssagens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 41
    Width = 97
    Height = 13
    Caption = 'Primeira Menssagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 68
    Width = 103
    Height = 13
    Caption = 'Segunda Menssagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 96
    Width = 99
    Height = 13
    Caption = 'Terceira Menssagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object EditMenssagem1: TEdit
    Left = 135
    Top = 36
    Width = 351
    Height = 21
    MaxLength = 100
    TabOrder = 0
    Text = 'EditMenssagem1'
    OnChange = EditMenssagem1Change
    OnKeyDown = EditMenssagem1KeyDown
  end
  object EditMenssagem2: TEdit
    Left = 135
    Top = 64
    Width = 351
    Height = 21
    MaxLength = 100
    TabOrder = 1
    Text = 'EditMenssagem2'
    OnChange = EditMenssagem2Change
    OnKeyDown = EditMenssagem1KeyDown
  end
  object EditMenssagem3: TEdit
    Left = 135
    Top = 92
    Width = 351
    Height = 21
    MaxLength = 100
    TabOrder = 2
    Text = 'EditMenssagem3'
    OnChange = EditMenssagem3Change
    OnKeyDown = EditMenssagem1KeyDown
  end
  object ButtonOk: TButton
    Left = 408
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 3
    OnClick = ButtonOkClick
  end
end
