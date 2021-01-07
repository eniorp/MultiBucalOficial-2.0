object FmParamRelDentista: TFmParamRelDentista
  Left = 458
  Top = 118
  Width = 420
  Height = 245
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Dentista'
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
  object GroupBox1: TGroupBox
    Left = 9
    Top = 10
    Width = 376
    Height = 63
    Caption = '&Intervalo de datas Inclus'#227'o de dentista'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
    end
    object Label2: TLabel
      Left = 162
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Data Fim'
    end
    object SpeedButton1: TSpeedButton
      Left = 298
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Limpar datas de inclus'#227'o'
      OnClick = SpeedButton1Click
    end
    object MaskEditIniInc: TMaskEdit
      Left = 66
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEditDtFimInc: TMaskEdit
      Left = 209
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 86
    Width = 376
    Height = 63
    Caption = '&Intervalo de datas exclus'#227'o de dentista'
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
    end
    object Label4: TLabel
      Left = 162
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Data Fim'
    end
    object SpeedButton2: TSpeedButton
      Left = 298
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Limpar datas de exclus'#227'o'
      OnClick = SpeedButton2Click
    end
    object MaskEditIniExcl: TMaskEdit
      Left = 66
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEditFimExcl: TMaskEdit
      Left = 209
      Top = 21
      Width = 85
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Button1: TButton
    Left = 111
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object BitBtnSair: TBitBtn
    Left = 200
    Top = 160
    Width = 78
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Kind = bkCancel
  end
end
