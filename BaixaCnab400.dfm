inherited FmBaixaCnab400: TFmBaixaCnab400
  Left = 274
  Top = 264
  Width = 638
  Height = 428
  Caption = 'Baixa Padr'#227'o CNAB400'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 389
  end
  inherited PanelRigth: TPanel
    Left = 612
    Height = 389
  end
  inherited PanelCenter: TPanel
    Width = 602
    Height = 389
    object RichEdit1: TRichEdit [0]
      Left = 0
      Top = 105
      Width = 602
      Height = 243
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
    end
    inherited PanelBotton: TPanel
      Top = 348
      Width = 602
      inherited Panel1: TPanel
        Left = 56
        Width = 546
        inherited BitBtnSair: TBitBtn
          Left = 465
        end
        object BitBtn5: TBitBtn
          Tag = 1
          Left = 65
          Top = 9
          Width = 75
          Height = 25
          Caption = '&Visualizar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object BitBtn4: TBitBtn
          Left = 144
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 2
          OnClick = BitBtn4Click
        end
        object BitBtn3: TBitBtn
          Left = 225
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Limpar'
          Enabled = False
          TabOrder = 3
          OnClick = BitBtn3Click
        end
        object BitBtnCarregar: TBitBtn
          Left = 302
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Carregar'
          TabOrder = 4
          OnClick = BitBtnCarregarClick
        end
        object BitBtn1: TBitBtn
          Left = 380
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Processar'
          Enabled = False
          TabOrder = 5
          OnClick = BitBtn1Click
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 602
      Height = 105
      inherited Bevel1: TBevel
        Top = 95
        Width = 602
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
    end
    inherited DBGrid1: TDBGrid
      Top = 105
      Width = 602
      Height = 243
      Columns = <
        item
          Expanded = False
          FieldName = 'desdobramento'
          Title.Caption = 'Desd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_titulo'
          Title.Caption = 'N'#186' T'#237'tulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'd Contrat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contratante'
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_pago'
          Title.Caption = 'R$ Pago'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Title.Caption = 'Observa'#231#227'o'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_acrescimo'
          Title.Caption = 'R$ Acr'#233'simo'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_desconto'
          Title.Caption = 'R$ Desconto'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_abatimento'
          Title.Caption = 'R$ Abatimento'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_liquido'
          Title.Caption = 'R$ L'#237'quido'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_pagto'
          Title.Caption = 'Dt Pagto'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indice'
          Title.Caption = #205'ndice'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'flag'
          Title.Caption = 'Flag'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_liquidacao'
          Title.Caption = 'C'#243'd Liq'
          Width = 45
          Visible = True
        end>
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
      'left join receber b'
      'on'
      '    b.numero_titulo = a.numero_titulo'
      'left join contratante c'
      'on'
      '    c.codigo = b.codigo_contratante'
      ''
      'order by a.indice,a.numero_titulo'
      ' '
      ' ')
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
    object QueryRetornoCNABcd_liquidacao: TStringField
      FieldName = 'cd_liquidacao'
      Size = 10
    end
    object QueryRetornoCNABcd_retorno: TSmallintField
      FieldName = 'cd_retorno'
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
end
