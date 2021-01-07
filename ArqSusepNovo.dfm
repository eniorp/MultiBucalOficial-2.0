object FormArqSusepNovo: TFormArqSusepNovo
  Left = 249
  Top = 64
  Width = 425
  Height = 345
  BorderIcons = [biSystemMenu]
  Caption = 'Gera'#231#227'o de arquivo SIB'
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
    Left = 5
    Top = 7
    Width = 391
    Height = 212
  end
  object Label1: TLabel
    Left = 12
    Top = 15
    Width = 192
    Height = 13
    Caption = 'Diret'#243'rio para gera'#231#227'o do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 75
    Width = 97
    Height = 13
    Caption = 'Nome do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 128
    Width = 79
    Height = 13
    Caption = 'Qtde inclus'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 123
    Top = 168
    Width = 82
    Height = 13
    Caption = 'Qtde exclus'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 232
    Top = 152
    Width = 30
    Height = 13
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 6
    Top = 236
    Width = 390
    Height = 64
  end
  object Label6: TLabel
    Left = 123
    Top = 128
    Width = 85
    Height = 13
    Caption = 'Qtde altera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 269
    Top = 16
    Width = 61
    Height = 13
    Caption = '&Data limite'
    FocusControl = DTPLimite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 21
    Top = 297
    Width = 99
    Height = 13
    Caption = 'c'#243'digo n'#227'o num'#233'rico'
    Visible = False
  end
  object Label9: TLabel
    Left = 23
    Top = 403
    Width = 136
    Height = 13
    Caption = 'mais de 1 registro encontrato'
    Visible = False
  end
  object Label10: TLabel
    Left = 21
    Top = 505
    Width = 121
    Height = 13
    Caption = 'N'#227'o encontrado na base.'
    Visible = False
  end
  object Label11: TLabel
    Left = 17
    Top = 168
    Width = 90
    Height = 13
    Caption = 'Qtde reinclus'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditDiretorio: TEdit
    Left = 12
    Top = 31
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'C:\SUSEP'
  end
  object EditNmArq: TEdit
    Left = 15
    Top = 92
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
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 175
    Top = 254
    Width = 107
    Height = 31
    Caption = '&Gerar arquivo'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
    Left = 287
    Top = 254
    Width = 102
    Height = 31
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Kind = bkClose
  end
  object EditQtdeIncl: TEdit
    Left = 17
    Top = 145
    Width = 92
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object EditQtdeExcl: TEdit
    Left = 123
    Top = 185
    Width = 82
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object EditQtdeTotal: TEdit
    Left = 232
    Top = 169
    Width = 82
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object EditQtdeAlter: TEdit
    Left = 123
    Top = 145
    Width = 82
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object DTPLimite: TDateTimePicker
    Left = 264
    Top = 32
    Width = 112
    Height = 21
    Date = 38414.661894861100000000
    Time = 38414.661894861100000000
    TabOrder = 1
  end
  object Button1: TButton
    Left = 40
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Associar CCO'
    TabOrder = 9
    Visible = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 312
    Width = 377
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 10
    Visible = False
  end
  object Memo2: TMemo
    Left = 16
    Top = 416
    Width = 377
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 11
    Visible = False
  end
  object Memo3: TMemo
    Left = 16
    Top = 518
    Width = 377
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 12
    Visible = False
  end
  object EditQtReinc: TEdit
    Left = 19
    Top = 185
    Width = 92
    Height = 21
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
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
    Left = 261
    Top = 55
  end
  object SpArqSusep: TStoredProc
    DatabaseName = 'multi'
    StoredProcName = 'SpArqSusep'
    Left = 181
    Top = 55
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@DtLimite'
        ParamType = ptInput
      end>
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      
        'select codigo, endereco_comercial, endereco_residencial, numero_' +
        'res, numero_com, complemento_res, complemento_com from Contratan' +
        'te'
      'order by codigo')
    Left = 88
    Top = 56
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
