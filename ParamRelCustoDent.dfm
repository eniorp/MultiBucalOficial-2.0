inherited FmParamRelCustoDent: TFmParamRelCustoDent
  Left = 265
  Top = 71
  Caption = 'Par'#226'metro Custo Dentista'
  ClientHeight = 448
  ClientWidth = 371
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label3_: TLabel
    Top = 156
  end
  inherited BitBtnOk: TBitBtn
    Left = 197
    Top = 418
    ModalResult = 0
    Visible = False
    Kind = bkCustom
  end
  inherited BitBtnSair: TBitBtn
    Left = 281
    Top = 418
    TabStop = False
  end
  inherited GroupBox1: TGroupBox
    Width = 240
    Height = 79
    Caption = '&Intervalo de datas de aprova'#231#227'o do Or'#231'amento'
    inherited Label1: TLabel
      Width = 14
      Caption = 'De'
    end
    inherited Label2: TLabel
      Left = 13
      Top = 51
      Width = 16
      Caption = 'At'#233
    end
    inherited MaskEditDtIni: TMaskEdit
      Left = 34
    end
    inherited MaskEditDtFim: TMaskEdit
      Left = 35
      Top = 47
    end
  end
  inherited ComboBox1: TComboBox
    Top = 172
    TabOrder = 9
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 246
    Width = 352
    Height = 77
    Caption = 'Dentista'
    TabOrder = 3
    object Label3: TLabel
      Left = 11
      Top = 17
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 84
      Top = 17
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object EditCdDentista: TEdit
      Left = 8
      Top = 32
      Width = 44
      Height = 21
      Hint = 
        'Se Deseja saber o custo de todos os dentistas, deixe este campo ' +
        'em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = EditCdDentistaExit
    end
    object EditNmDent: TEdit
      Left = 80
      Top = 32
      Width = 265
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 53
      Top = 32
      Width = 24
      Height = 21
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn1Click
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
  object GroupBox3: TGroupBox
    Left = 9
    Top = 328
    Width = 352
    Height = 89
    Caption = 'Informe o servi'#231'o'
    TabOrder = 4
    object Label5: TLabel
      Left = 8
      Top = 20
      Width = 36
      Height = 13
      Caption = 'Servi'#231'o'
    end
    object Label6: TLabel
      Left = 84
      Top = 28
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object EditServico: TEdit
      Left = 7
      Top = 43
      Width = 44
      Height = 21
      Hint = 
        'Se deseja saber o custo total com todos os servi'#231'os, deixe este ' +
        'campo em branco'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = EditServicoExit
    end
    object EditNmServico: TEdit
      Left = 80
      Top = 43
      Width = 265
      Height = 21
      TabStop = False
      TabOrder = 1
    end
    object BitBtnPesquisaDentista: TBitBtn
      Left = 54
      Top = 42
      Width = 24
      Height = 21
      TabOrder = 2
      TabStop = False
      OnClick = BitBtnPesquisaDentistaClick
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
  object BitBtn2: TBitBtn
    Left = 200
    Top = 418
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 256
    Top = 12
    Width = 103
    Height = 75
    Caption = 'Tipo'
    ItemIndex = 0
    Items.Strings = (
      'Resumido'
      'Detalhado')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object RadioGroupAgrup: TRadioGroup
    Left = 8
    Top = 145
    Width = 354
    Height = 45
    Caption = 'Agrupar relat'#243'rio detalhado por'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Dentista'
      'Servi'#231'o')
    TabOrder = 7
    Visible = False
    OnClick = RadioGroupAgrupClick
  end
  object GroupBox4: TGroupBox
    Left = 9
    Top = 194
    Width = 353
    Height = 43
    TabOrder = 8
    object Label7: TLabel
      Left = 6
      Top = 16
      Width = 57
      Height = 13
      Caption = 'Ordenar Por'
    end
    object ComboBoxOrdem: TComboBox
      Left = 72
      Top = 13
      Width = 224
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Saldo em ordem decrescente'
        'Saldo em ordem crescente'
        'Dentista'
        'M'#233'dia em ordem crescente'
        'M'#233'dia em ordem decrescente')
    end
  end
  object GroupBox5: TGroupBox
    Left = 9
    Top = 95
    Width = 353
    Height = 43
    TabOrder = 10
    object Label8: TLabel
      Left = 6
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Tipo de Or'#231'amento'
    end
    object ComboBoxTpOrc: TComboBox
      Left = 107
      Top = 13
      Width = 184
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Aprovados'
      Items.Strings = (
        'Aprovados'
        'N'#227'o Aprovados')
    end
  end
end
