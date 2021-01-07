object FmGeraPerdidosANS: TFmGeraPerdidosANS
  Left = 238
  Top = 134
  Width = 544
  Height = 329
  BorderIcons = [biSystemMenu]
  Caption = 'Gera exclusão dos registros não identificados da ANS(SIB)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 99
    Width = 524
    Height = 142
  end
  object Label1: TLabel
    Left = 9
    Top = 109
    Width = 192
    Height = 13
    Caption = 'Diretório para geração do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 155
    Width = 97
    Height = 13
    Caption = 'Nome do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 9
    Top = 197
    Width = 82
    Height = 13
    Caption = 'Qtde exclusão'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 4
    Top = 245
    Width = 524
    Height = 46
  end
  object EditDiretorio: TEdit
    Left = 9
    Top = 128
    Width = 373
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'C:\SUSEP'
  end
  object EditNmArq: TEdit
    Left = 9
    Top = 172
    Width = 361
    Height = 21
    TabStop = False
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 308
    Top = 253
    Width = 107
    Height = 31
    Caption = '&Gerar arquivo'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 420
    Top = 253
    Width = 102
    Height = 31
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Kind = bkClose
  end
  object EditQtdeExcl: TEdit
    Left = 9
    Top = 214
    Width = 90
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 84
    Align = alTop
    Color = clHighlightText
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label7: TLabel
      Left = 3
      Top = 46
      Width = 518
      Height = 14
      Caption = 
        'IMPORTANTE: Antes de processar essa rotina você deve processar a' +
        ' rotina de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 5
      Top = 62
      Width = 105
      Height = 14
      Caption = 'conferência ANS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 19
      Width = 511
      Height = 14
      Caption = 
        'ram no arquivo de conferência  da ANS e que não foram localizado' +
        's na base'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 5
      Width = 525
      Height = 14
      Caption = 
        'Esta rotina gera um arquivo de exclusões de todos os registros n' +
        'ão que vie-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
  end
  object QueryParam: TQuery
    DatabaseName = 'multi'
    SQL.Strings = (
      'select convert(char(10),getdate(),103) as Data, '
      '       Cast('
      
        '       Replicate('#39'0'#39', 6 - Len(CodOperSusep))    + Cast(CodOperSu' +
        'sep    as varchar(6))  as char(6)) as CodOperSusep,'
      '       CNPJ,'
      '       Cast('
      
        '       Replicate('#39'0'#39', 7 - Len(UltArqSusep)) + Cast(UltArqSusep  ' +
        'as varchar(7))  as char(7)) as UltArqSusep,'
      
        '       CodOperSusep as CodOperSusepOri,  UltArqSusep  as UltArqS' +
        'usepOri'
      ''
      'from paramANS')
    Left = 453
    Top = 95
  end
  object SpArqSusep: TStoredProc
    DatabaseName = 'multi'
    StoredProcName = 'SpGeraArqANSRegPerdidos'
    Left = 349
    Top = 103
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      
        'select codigo, endereco_comercial, endereco_residencial, numero_' +
        'res, numero_com, complemento_res, complemento_com from Contratan' +
        'te'
      'order by codigo')
    Left = 162
    Top = 83
    object QueryContratantecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QueryContratanteendereco_comercial: TStringField
      FieldName = 'endereco_comercial'
      Size = 50
    end
    object QueryContratanteendereco_residencial: TStringField
      FieldName = 'endereco_residencial'
      Size = 50
    end
    object QueryContratantenumero_res: TStringField
      FieldName = 'numero_res'
      Size = 5
    end
    object QueryContratantenumero_com: TStringField
      FieldName = 'numero_com'
      Size = 5
    end
    object QueryContratantecomplemento_res: TStringField
      FieldName = 'complemento_res'
      Size = 15
    end
    object QueryContratantecomplemento_com: TStringField
      FieldName = 'complemento_com'
      Size = 15
    end
  end
end
