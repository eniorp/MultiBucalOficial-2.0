object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 568
  Top = 153
  Height = 446
  Width = 624
  object QueryGenerica: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select versao from preferencia')
    Left = 48
    Top = 32
  end
  object QueryGlobal: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select versao from preferencia')
    Left = 48
    Top = 96
  end
  object QueryStatus: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Status_Orcamento'
      'order by Descricao')
    Left = 130
    Top = 25
  end
  object SQLconn: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=srv01'
      'DataBase=multiodonto'
      'User_Name=sa'
      'Password=sa'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Left = 160
    Top = 80
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=MT;Data Source=ENIO-DELL\SQLEXPRESS;Use Pr' +
      'ocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Works' +
      'tation ID=MICRO10;Use Encryption for Data=False;Tag with column ' +
      'collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 312
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 296
    Top = 112
  end
  object ADOQueryMontaMenu: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      'select'
      '     '#39'F'#39' tipo ,'
      '      m.cd_menu,'
      '      m.nm_menu'
      ''
      'from '
      '    permissao_funcionario pf, '
      '    operador o, '
      '    menu_disponivel m'
      ''
      'where '
      '          pf.cd_funcionario = o.codigo'
      '      and m.cd_menu         = pf.cd_menu'
      '      and o.codigo ='
      '14'
      ''
      'union'
      ''
      'select'
      '      '#39'G'#39' tipo,'
      '      m.cd_menu,'
      '      m.nm_menu'
      ''
      'from'
      '    permissao_grupo pg,'
      '    operador o,'
      '    menu_disponivel m'
      ''
      'where'
      '          pg.cd_grupo = o.cd_grupo'
      '      and m.cd_menu   = pg.cd_menu'
      '      and o.codigo ='
      '14')
    Left = 296
    Top = 168
  end
  object ADOQueryVrPagto: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TabPagto_vrServico t where t.cd_servico ='
      '1102'
      'and cd_tabela ='
      '1'
      '')
    Left = 129
    Top = 153
  end
  object sp_gera_nr_titulo: TADOStoredProc
    Connection = ADOConn
    CursorLocation = clUseServer
    CursorType = ctDynamic
    ProcedureName = 'sp_gera_nr_titulo'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@contrat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nrTitulo'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 248
    Top = 240
  end
  object QueryContasBanco: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from contas_banco where 2 = 1')
    Left = 416
    Top = 288
  end
  object QueryTitulos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'set dateformat mdy select *,c.codigo as cdContratante from Fatur' +
        'amento f, contratante c'
      'where c.codigo = f.codigo_contratante and Tipo_Cobranca = 10'
      'and Data_Vencimento between'
      #39#39' and '#39#39
      'and Desdobramento ='
      #39#39
      'and Emitido_Documento = 0'
      ''
      'order by endereco_residencial,codigo_contratante'
      '')
    Left = 512
    Top = 224
  end
  object pGeraSeqFaturamento: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'pGeraSeqFaturamento'
    Left = 136
    Top = 231
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Tit'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Desd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Vencto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@banco'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@seq'
        ParamType = ptOutput
      end>
  end
  object sp_relMensalidadeContrat: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_relMensalidadeContrat'
    Left = 224
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 205591660
      end
      item
        DataType = ftInteger
        Name = '@Contratante'
        ParamType = ptInput
        Value = '16090'
      end
      item
        DataType = ftString
        Name = '@DataPesq'
        ParamType = ptInput
        Value = '29/11/2007'
      end>
  end
  object sp_lastDayMonth: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_lastDayMonth'
    Left = 510
    Top = 132
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@MesAno'
        ParamType = ptInput
        Value = '06/2006'
      end>
  end
  object sp_baixaTitulosOrcamento: TADOStoredProc
    Connection = ADOConn
    ProcedureName = 'sp_baixaTitulosOrcamento'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@nrOrcamento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cdLogin'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@parcela'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 385
    Top = 209
  end
  object QueryDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Dentista'
      'where codigo = :Dentista'
      'order by Nome')
    Left = 394
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Dentista'
        ParamType = ptInput
      end>
    object QueryDentistaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Dentista.Codigo'
    end
    object QueryDentistaNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Dentista.Nome'
      Size = 40
    end
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 24
    Top = 312
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 72
    Top = 312
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 152
    Top = 312
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 248
    Top = 312
  end
  object ADOQueryEmpresa: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from empresa')
    Left = 233
    Top = 129
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 56
    Top = 176
  end
  object FreeBoletoImagem: TFreeBoletoImagem
    DestruirBoletos = False
    TrackBarDelay = 0
    Left = 424
    Top = 120
  end
  object FreeBoleto: TFreeBoleto
    Cedente.DigitoContaCorrente = #0
    Sacado.Pessoa = pFisica
    Left = 344
    Top = 304
  end
  object Qy_Aux: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 504
    Top = 64
  end
end
