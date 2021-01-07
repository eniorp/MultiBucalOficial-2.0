object FormProcessa: TFormProcessa
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Processa Parcelas'
  ClientHeight = 104
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 28
    Width = 138
    Height = 13
    Caption = 'Registros Processados :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelRegistros: TLabel
    Left = 154
    Top = 28
    Width = 8
    Height = 13
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonMensalidade: TButton
    Left = 8
    Top = 64
    Width = 90
    Height = 25
    Caption = '&Mensalidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonMensalidadeClick
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 64
    Width = 90
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Kind = bkClose
  end
  object ButtonManutencoes: TButton
    Left = 102
    Top = 64
    Width = 90
    Height = 25
    Caption = '&Manutencoes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonManutencoesClick
  end
  object QueryReceber: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Receber'
      'where Desdobramento = :Desd'
      'order by Codigo_Contratante, Data_Vencimento')
    Left = 177
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'Desd'
        ParamType = ptInput
      end>
    object QueryReceberNumero_Titulo: TIntegerField
      FieldName = 'Numero_Titulo'
      Origin = 'MULTI.Receber.Numero_Titulo'
    end
    object QueryReceberDesdobramento: TStringField
      FieldName = 'Desdobramento'
      Origin = 'MULTI.Receber.Desdobramento'
      Size = 2
    end
    object QueryReceberTipo_Documento: TSmallintField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.Receber.Tipo_Documento'
    end
    object QueryReceberCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
    object QueryReceberData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'MULTI.Receber.Data_Emissao'
    end
    object QueryReceberData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'MULTI.Receber.Data_Vencimento'
    end
    object QueryReceberValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.Receber.Valor'
    end
    object QueryReceberSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'MULTI.Receber.Saldo'
    end
    object QueryReceberTipo_Cobranca: TSmallintField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.Receber.Tipo_Cobranca'
    end
    object QueryReceberNumero_Banco: TStringField
      FieldName = 'Numero_Banco'
      Origin = 'MULTI.Receber.Numero_Banco'
      Size = 11
    end
    object QueryReceberData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'MULTI.Receber.Data_Pagamento'
    end
    object QueryReceberValor_Pago: TFloatField
      FieldName = 'Valor_Pago'
      Origin = 'MULTI.Receber.Valor_Pago'
    end
    object QueryReceberDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Receber.Desconto'
    end
    object QueryReceberJuros: TFloatField
      FieldName = 'Juros'
      Origin = 'MULTI.Receber.Juros'
    end
    object QueryReceberOperador: TSmallintField
      FieldName = 'Operador'
      Origin = 'MULTI.Receber.Operador'
    end
    object QueryReceberOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Receber.Orcamento'
    end
    object QueryReceberParcela: TIntegerField
      FieldName = 'Parcela'
      Origin = 'MULTI.Receber.Orcamento'
    end
    object QueryReceberCodigo_Usuario: TIntegerField
      FieldName = 'Codigo_Usuario'
      Origin = 'MULTI."dbo.Receber".Codigo_Usuario'
    end
    object QueryReceberStatus_Cheque: TStringField
      FieldName = 'Status_Cheque'
      Origin = 'MULTI."dbo.Receber".Status_Cheque'
      Size = 10
    end
    object QueryReceberObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'MULTI."dbo.Receber".Observacoes'
    end
    object QueryReceberStatus_Orcamento: TSmallintField
      FieldName = 'Status_Orcamento'
      Origin = 'MULTI."dbo.Receber".Status_Orcamento'
    end
    object QueryReceberNro_cheque: TStringField
      FieldName = 'Nro_cheque'
      Origin = 'MULTI."dbo.Receber".Nro_cheque'
    end
    object QueryReceberBanco_Cheque: TStringField
      FieldName = 'Banco_Cheque'
      Origin = 'MULTI."dbo.Receber".Banco_Cheque'
      Size = 3
    end
    object QueryReceberNro_ContaCheque: TStringField
      FieldName = 'Nro_ContaCheque'
      Origin = 'MULTI."dbo.Receber".Nro_ContaCheque'
    end
    object QueryReceberAgencia_Cheque: TStringField
      FieldName = 'Agencia_Cheque'
      Origin = 'MULTI."dbo.Receber".Agencia_Cheque'
      Size = 10
    end
    object QueryReceberStatus_Ocorrencia: TSmallintField
      FieldName = 'Status_Ocorrencia'
      Origin = 'MULTI."dbo.Receber".Status_Ocorrencia'
    end
    object QueryReceberDeposito: TBooleanField
      FieldName = 'Deposito'
      Origin = 'MULTI."dbo.Receber".Deposito'
    end
  end
end
