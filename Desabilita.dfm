object FormDesabilita: TFormDesabilita
  Left = 225
  Top = 221
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desabilita Inadimplentes'
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
  OnCreate = FormCreate
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
    Left = 156
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
  object ButtonDesabilita: TButton
    Left = 8
    Top = 64
    Width = 90
    Height = 25
    Caption = '&Desabilita'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonDesabilitaClick
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
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object ButtonRelatorio: TButton
    Left = 100
    Top = 64
    Width = 90
    Height = 25
    Caption = '&Relatório'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonRelatorioClick
  end
  object QueryOrcamentos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Orcamento'
      'where Contratante = :Contratante')
    Left = 206
    Top = 65535
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contratante'
        ParamType = ptInput
      end>
    object QueryOrcamentosContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.Orcamento.Contratante'
    end
  end
  object QueryReceber: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo_Contratante from Receber'
      
        'left join Contratante on (Contratante.Codigo = Receber.Codigo_Co' +
        'ntratante)'
      'where data_pagamento is null'
      'and Tipo_Documento = 1'
      'and desdobramento = '#39'M'#39
      'and Contratante.Exclusao is null '
      'and Contratante.empresa = 0'
      'group by Codigo_Contratante')
    Left = 232
    Top = 65535
    object QueryReceberCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
  end
  object QueryReceberAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo_Contratante from Receber'
      'where data_pagamento is null'
      'and desdobramento = '#39'M'#39
      'and codigo_contratante = :Contratante'
      '')
    Left = 262
    Top = 65535
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contratante'
        ParamType = ptInput
      end>
    object QueryReceberAuxiliarCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Receber.Codigo_Contratante'
    end
  end
  object QueryContratante: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Contratante'
      'where Codigo =:Contratante')
    Left = 236
    Top = 28
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contratante'
        ParamType = ptInput
      end>
    object QueryContratanteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratanteExclusao: TDateTimeField
      FieldName = 'Exclusao'
      Origin = 'MULTI.Contratante.Exclusao'
    end
    object QueryContratanteOperador_Exclusao: TIntegerField
      FieldName = 'Operador_Exclusao'
      Origin = 'MULTI.Contratante.Operador_Exclusao'
    end
    object QueryContratanteMotivo_Cancelamento: TIntegerField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'MULTI.Contratante.Motivo_Cancelamento'
    end
    object QueryContratanteEmpresa: TBooleanField
      FieldName = 'Empresa'
      Origin = 'MULTI.Contratante.Empresa'
    end
  end
  object QueryUsuarios: TQuery
    AutoCalcFields = False
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Usuario '
      'where Contratante_Titular =:Contratante'
      'order by Codigo_Completo')
    Left = 262
    Top = 28
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Contratante'
        ParamType = ptInput
      end>
    object QueryUsuariosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Usuario.Codigo'
    end
    object QueryUsuariosCodigo_Completo: TIntegerField
      FieldName = 'Codigo_Completo'
      Origin = 'MULTI.Usuario.Codigo_Completo'
    end
    object QueryUsuariosData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Usuario.Data_Exclusao'
    end
    object QueryUsuariosOperador_Exclusao: TIntegerField
      FieldName = 'Operador_Exclusao'
      Origin = 'MULTI.Usuario.Operador_Exclusao'
    end
    object QueryUsuariosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Usuario.Contratante_Titular'
    end
    object QueryUsuariosMotivo_Cancelamento: TIntegerField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'MULTI.Usuario.Motivo_Cancelamento'
    end
  end
end
