object FormPesquisaContas_Bancos: TFormPesquisaContas_Bancos
  Left = 166
  Top = 212
  Width = 475
  Height = 212
  Caption = 'Contas do Banco: '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridContas: TDBGrid
    Left = 0
    Top = 0
    Width = 467
    Height = 154
    Align = alClient
    Color = clInfoBk
    DataSource = DataSourceContas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridContasDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Banco'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Conta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Agencia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titular'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JurosDiario'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'layout'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object PanelBottons: TPanel
    Left = 0
    Top = 154
    Width = 467
    Height = 31
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 4
      Top = 3
      Width = 380
      Height = 25
      DataSource = DataSourceContas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object BitBtnSair: TBitBtn
      Left = 386
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnSairClick
      Kind = bkClose
    end
  end
  object QueryContas: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Contas_Banco'
      'where Banco = :Cod_Banco'
      'and Boleto = 1')
    Left = 361
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'Cod_banco'
        ParamType = ptInput
      end>
    object QueryContasBanco: TStringField
      FieldName = 'Banco'
      Origin = 'MULTI.Contas_Banco.Banco'
      Size = 3
    end
    object QueryContasNumero_Conta: TStringField
      FieldName = 'Numero_Conta'
      Origin = 'MULTI.Contas_Banco.Numero_Conta'
    end
    object QueryContasAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'MULTI.Contas_Banco.Agencia'
      Size = 10
    end
    object QueryContasTitular: TStringField
      FieldName = 'Titular'
      Origin = 'MULTI.Contas_Banco.Titular'
      Size = 40
    end
    object QueryContasCGC: TStringField
      FieldName = 'CGC'
      Origin = 'MULTI.Contas_Banco.CGC'
    end
    object QueryContasConvenio: TStringField
      FieldName = 'Convenio'
      Origin = 'MULTI.Contas_Banco.Convenio'
    end
    object QueryContasNome_Banco: TStringField
      FieldName = 'Nome_Banco'
      Origin = 'MULTI.Contas_Banco.Nome_Banco'
      Size = 30
    end
    object QueryContasBoleto: TBooleanField
      FieldName = 'Boleto'
      Origin = 'MULTI.Contas_Banco.Boleto'
    end
    object QueryContasMensagem_Header: TStringField
      FieldName = 'Mensagem_Header'
      Origin = 'MULTI.Contas_Banco.Mensagem_Header'
      Size = 30
    end
    object QueryContasEspaco_Header: TIntegerField
      FieldName = 'Espaco_Header'
      Origin = 'MULTI.Contas_Banco.Espaco_Header'
    end
    object QueryContasId_Banco: TIntegerField
      FieldName = 'Id_Banco'
      Origin = 'MULTI.Contas_Banco.Id_Banco'
    end
    object QueryContasDebito_Tipo: TSmallintField
      FieldName = 'Debito_Tipo'
      Origin = 'MULTI.Contas_Banco.Debito_Tipo'
    end
    object QueryContasDebito_Sequencial: TIntegerField
      FieldName = 'Debito_Sequencial'
      Origin = 'MULTI.Contas_Banco.Debito_Sequencial'
    end
    object QueryContasBoleto_Sequencial: TIntegerField
      FieldName = 'Boleto_Sequencial'
      Origin = 'MULTI.Contas_Banco.Boleto_Sequencial'
    end
    object QueryContaslayout: TStringField
      FieldName = 'layout'
      Size = 30
    end
    object QueryContasJurosDiario: TFloatField
      FieldName = 'JurosDiario'
      Origin = 'MULTI.Contas_Banco.JurosDiario'
      currency = True
    end
    object QueryContasmsg1: TStringField
      FieldName = 'msg1'
      Origin = 'MULTI.Contas_Banco.msg1'
      Size = 40
    end
    object QueryContasmsg2: TStringField
      FieldName = 'msg2'
      Origin = 'MULTI.Contas_Banco.msg2'
      Size = 40
    end
    object QueryContasPasta: TStringField
      FieldName = 'Pasta'
      Origin = 'MULTI.Contas_Banco.Pasta'
      Size = 30
    end
  end
  object DataSourceContas: TDataSource
    DataSet = QueryContas
    Left = 405
    Top = 16
  end
end
