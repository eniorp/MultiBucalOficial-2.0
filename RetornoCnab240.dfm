inherited FmRetornoCnab: TFmRetornoCnab
  Left = 274
  Top = 10
  Width = 1061
  Height = 605
  Caption = 'Retorno Layout CNAB 240'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 574
  end
  inherited PanelRigth: TPanel
    Left = 1043
    Height = 574
  end
  inherited PanelCenter: TPanel
    Width = 1033
    Height = 574
    object RichEdit1: TRichEdit [0]
      Left = 0
      Top = 96
      Width = 1033
      Height = 437
      Hint = 'Pressione ESC para retornar'
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 3
      WordWrap = False
      OnKeyDown = RichEdit1KeyDown
    end
    inherited DBGrid1: TDBGrid [1]
      Top = 96
      Width = 1033
      Height = 437
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'desdobramento'
          Title.Caption = 'Desdobr'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_titulo'
          Title.Caption = 'NR T'#237'tulo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'Cod Contrat'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dsMotivoCNAB'
          Title.Caption = 'Motivo Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contratante'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 232
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_pago'
          Title.Caption = 'Vr Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_acrescimo'
          Title.Caption = 'Vr Acr'#233'scimo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_desconto'
          Title.Caption = 'Vr Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_abatimento'
          Title.Caption = 'Vr Abatimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_liquido'
          Title.Caption = 'Vr L'#237'quido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_pagto'
          Title.Caption = 'Dt Pagto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indice'
          Title.Caption = #205'ndice'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'flag'
          Title.Caption = 'Flag'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_liquidacao'
          Title.Caption = 'C'#243'd Liq'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'desdobramento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'numero_titulo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Contratante'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_pago'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_liquido'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'obs'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_liquidacao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_acrescimo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_desconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_abatimento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dt_pagto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'indice'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'flag'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_retorno'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Sacado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrDocumento'
          Title.Caption = 'Nr Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    inherited PanelBotton: TPanel [2]
      Top = 533
      Width = 1033
      inherited Panel1: TPanel
        Left = 528
        Width = 505
        inherited BitBtnSair: TBitBtn
          Left = 425
        end
        object BitBtn1: TBitBtn
          Left = 348
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Processar'
          Enabled = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 270
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Carregar'
          TabOrder = 2
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 193
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Limpar'
          Enabled = False
          TabOrder = 3
          Visible = False
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 112
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 4
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Tag = 1
          Left = 33
          Top = 9
          Width = 75
          Height = 25
          Caption = '&Visualizar'
          TabOrder = 5
          OnClick = BitBtn4Click
        end
      end
      object Button1: TButton
        Left = 480
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Excel'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel [3]
      Width = 1033
      Height = 96
      inherited Bevel1: TBevel
        Top = 86
        Width = 1033
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Arquivo'
      end
      object Label2: TLabel
        Left = 507
        Top = 64
        Width = 100
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtde Registros : 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 46
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object EditArq: TEdit
        Left = 8
        Top = 22
        Width = 316
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 8
        Top = 60
        Width = 314
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 824
        Top = 24
        Width = 185
        Height = 33
        TabOrder = 2
        Visible = False
      end
    end
  end
  inherited Query1: TQuery
    RequestLive = True
    SQL.Strings = (
      'select * from RetornoCNAB where 2 = 1')
  end
  inherited DataSource1: TDataSource
    DataSet = QueryRetornoCNAB
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivos Retorno|*.ret|Arquivos Texto|*.txt|Todos os Arquivos|*.' +
      '*'
    InitialDir = 'C:\Cobranca'
    Left = 380
    Top = 19
  end
  object QueryRetornoCNAB: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select c.codigo, c.nome as Contratante,a.* from RetornoCNAB a'
      ''
      ' left join receber b'
      'on'
      
        '   b.numero_titulo = a.numero_titulo and b.Desdobramento = a.des' +
        'dobramento'
      '   left join contratante c'
      'on'
      '    c.codigo = b.codigo_contratante'
      'where indice = -1'
      'order by a.indice,a.numero_titulo'
      ' '
      ' '
      '')
    Left = 162
    Top = 144
    object QueryRetornoCNABdesdobramento: TStringField
      FieldName = 'desdobramento'
      FixedChar = True
      Size = 1
    end
    object QueryRetornoCNABnumero_titulo: TIntegerField
      FieldName = 'numero_titulo'
    end
    object QueryRetornoCNABcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QueryRetornoCNABContratante: TStringField
      FieldName = 'Contratante'
      Size = 50
    end
    object QueryRetornoCNABvr_pago: TFloatField
      FieldName = 'vr_pago'
      currency = True
    end
    object QueryRetornoCNABvr_liquido: TFloatField
      FieldName = 'vr_liquido'
      currency = True
    end
    object QueryRetornoCNABobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object QueryRetornoCNABvr_acrescimo: TFloatField
      FieldName = 'vr_acrescimo'
      currency = True
    end
    object QueryRetornoCNABvr_desconto: TFloatField
      FieldName = 'vr_desconto'
      currency = True
    end
    object QueryRetornoCNABvr_abatimento: TFloatField
      FieldName = 'vr_abatimento'
      currency = True
    end
    object QueryRetornoCNABdt_pagto: TDateTimeField
      FieldName = 'dt_pagto'
    end
    object QueryRetornoCNABindice: TSmallintField
      FieldName = 'indice'
    end
    object QueryRetornoCNABflag: TBooleanField
      FieldName = 'flag'
    end
    object QueryRetornoCNABData: TDateTimeField
      FieldName = 'Data'
    end
    object QueryRetornoCNABcd_retorno: TSmallintField
      FieldName = 'cd_retorno'
    end
    object QueryRetornoCNABdsMotivoCNAB: TStringField
      FieldKind = fkLookup
      FieldName = 'dsMotivoCNAB'
      LookupDataSet = ADOQueryMotivoCNAB
      LookupKeyFields = 'cdMotivo'
      LookupResultField = 'dsMotivo'
      KeyFields = 'cd_retorno'
      Size = 80
      Lookup = True
    end
    object QueryRetornoCNABcd_liquidacao: TStringField
      FieldName = 'cd_liquidacao'
      Size = 10
    end
    object QueryRetornoCNABnrDocumento: TStringField
      FieldName = 'nrDocumento'
      Size = 15
    end
    object QueryRetornoCNABsacado: TStringField
      FieldName = 'sacado'
      Size = 40
    end
  end
  object spBaixaCnab: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'spBaixaCnab'
    Left = 314
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftSmallint
        Name = '@indice'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@operador'
        ParamType = ptInput
      end>
  end
  object ADOQueryMotivoCNAB: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from MotivoRetornoCNAB')
    Left = 218
    Top = 288
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryMotivoCNAB
    Left = 330
    Top = 288
  end
end
