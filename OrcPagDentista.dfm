object FormOrcPagDentista: TFormOrcPagDentista
  Left = 574
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Procedimentos do Or'#231'amento'
  ClientHeight = 349
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 472
    Top = 278
    Width = 81
    Height = 13
    Caption = 'Total Dentista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 349
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 624
      Top = 278
      Width = 85
      Height = 13
      Caption = 'Total Prot'#233'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 529
      Top = 278
      Width = 81
      Height = 13
      Caption = 'Total Dentista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 283
      Top = 278
      Width = 114
      Height = 13
      Caption = 'Total Valor C/ Desc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 418
      Top = 278
      Width = 64
      Height = 13
      Caption = 'Total Bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 159
      Top = 279
      Width = 33
      Height = 13
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 159
      Top = 313
      Width = 39
      Height = 13
      Caption = 'Label7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 279
      Width = 132
      Height = 13
      Caption = 'Saldo (em Cart.Cr'#233'dito)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 313
      Width = 39
      Height = 13
      Caption = 'Label9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 329
      Width = 67
      Height = 13
      Caption = 'Tarifa Cart'#227'o: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGridPrestacoes: TDBGrid
      Left = 2
      Top = 2
      Width = 724
      Height = 271
      Align = alTop
      Color = clInfoBk
      DataSource = DataSourcePagDentista
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridPrestacoesKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Servico'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 227
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Bruto'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Bruto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Dentista'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Dentista'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Protetico'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Prot'#233'tico'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end>
    end
    object EditTotalProtetico: TEdit
      Left = 624
      Top = 294
      Width = 87
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      TabOrder = 1
    end
    object EditTotalDentista: TEdit
      Left = 528
      Top = 294
      Width = 87
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      TabOrder = 2
    end
    object EditTotalValor: TEdit
      Left = 280
      Top = 293
      Width = 123
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      TabOrder = 3
    end
    object EditTotalBruto: TEdit
      Left = 416
      Top = 294
      Width = 87
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      TabOrder = 4
    end
    object EditSoma: TEdit
      Left = 158
      Top = 293
      Width = 110
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
    end
    object EditSomaEmCartao: TEdit
      Left = 7
      Top = 293
      Width = 126
      Height = 21
      BiDiMode = bdRightToLeftNoAlign
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
    end
  end
  object DataSourcePagDentista: TDataSource
    DataSet = QueryPagDentista
    Left = 8
    Top = 100
  end
  object QuerySomas: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      
        #9'round(Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)),2)  a' +
        's Tot_Valor,'
      #9'Sum(i.Valor_Bruto)     as Tot_ValorBruto, '
      #9'Sum(i.Valor_Dentista)  as Tot_ValorDentista, '
      #9'Sum(i.Valor_Protetico) as Tot_ValorProtetico'
      'from '
      #9'Itens_Orcamento i, '
      #9'orcamento o'
      'where     '
      '          i.orcamento = o.numero'
      '      and Orcamento   = :Numero_Orcamento'
      ''
      ''
      '')
    Left = 38
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QuerySomasTot_Valor: TFloatField
      FieldName = 'Tot_Valor'
      Origin = 'MULTI.Itens_Orcamento.Valor'
    end
    object QuerySomasTot_ValorBruto: TFloatField
      FieldName = 'Tot_ValorBruto'
      Origin = 'MULTI.Itens_Orcamento.Valor_Bruto'
    end
    object QuerySomasTot_ValorDentista: TFloatField
      FieldName = 'Tot_ValorDentista'
      Origin = 'MULTI.Itens_Orcamento.Valor_Dentista'
    end
    object QuerySomasTot_ValorProtetico: TFloatField
      FieldName = 'Tot_ValorProtetico'
      Origin = 'MULTI.Itens_Orcamento.Valor_Protetico'
    end
  end
  object QueryPagDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select Servicos.Descricao, Itens_Orcamento.* from Itens_Orcament' +
        'o'
      
        'left join Servicos on (Servicos.Codigo = Itens_Orcamento.Servico' +
        ')'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento, Incremento')
    Left = 9
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryPagDentistaOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Itens_Orcamento.Orcamento'
    end
    object QueryPagDentistaIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Itens_Orcamento.Incremento'
    end
    object QueryPagDentistaServico: TIntegerField
      FieldName = 'Servico'
      Origin = 'MULTI.Itens_Orcamento.Servico'
    end
    object QueryPagDentistaQuantidade: TSmallintField
      FieldName = 'Quantidade'
      Origin = 'MULTI.Itens_Orcamento.Quantidade'
    end
    object QueryPagDentistaValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Itens_Orcamento.Valor'
      currency = True
    end
    object QueryPagDentistaValor_Bruto: TFloatField
      FieldName = 'Valor_Bruto'
      Origin = 'MULTI.Itens_Orcamento.Valor_Bruto'
      currency = True
    end
    object QueryPagDentistaValor_Dentista: TFloatField
      FieldName = 'Valor_Dentista'
      Origin = 'MULTI.Itens_Orcamento.Valor_Dentista'
      currency = True
    end
    object QueryPagDentistaValor_Protetico: TFloatField
      FieldName = 'Valor_Protetico'
      Origin = 'MULTI.Itens_Orcamento.Valor_Protetico'
      currency = True
    end
    object QueryPagDentistaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Itens_Orcamento.Orcamento'
      FixedChar = True
      Size = 40
    end
  end
end
