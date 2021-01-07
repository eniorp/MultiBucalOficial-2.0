object FmAtualizaDB: TFmAtualizaDB
  Left = 365
  Top = 155
  BorderStyle = bsDialog
  Caption = 'Atualiza'#231#227'o de banco de dados'
  ClientHeight = 447
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 156
    Height = 13
    Caption = 'N'#186' da '#218'ltima atualiza'#231#227'o ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 35
    Width = 448
    Height = 32
    Hint = 'Clique aqui para atualizar o banco de dados'
    Caption = 'Atualiza'#231#227'o de Banco de dados '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 388
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Erros'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333C3333333333333337F3333333333333C0C3333
      333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
      3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
      333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
      0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
      0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
      3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
      3333333333777333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object RichEdit1: TRichEdit
    Left = 6
    Top = 74
    Width = 461
    Height = 283
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object BitBtnSair: TBitBtn
    Left = 183
    Top = 366
    Width = 85
    Height = 25
    Caption = 'S&air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 460
    Top = 7
    Width = 5
    Height = 25
    TabOrder = 4
    OnClick = BitBtn2Click
    NumGlyphs = 2
  end
  object RichEdit2: TRichEdit
    Left = 6
    Top = 74
    Width = 461
    Height = 283
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object QueryGenerica: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter procedure sp_relComissaoUsuario --sp_relComissaoUsuario '#39'0' +
        '1/02/2014'#39','#39'31/03/2014'#39',2,2,0'
      '-- versao 3.0'
      '@dtPagIni char (10),'
      '@dtPagFim char (10),'
      '@nrParcIni int,'
      '@nrParcFim int,'
      '@cdRepresentante int,'
      '@tpPessoa char(1)'
      ''
      'as'
      'declare @vrDesc as money '
      'declare @vrDescUnit as money '
      'declare @vrDescUsu as money  '
      ''
      'set dateformat dmy'
      ''
      'select '
      '  identity(int,1,1)  as indice,'
      '  empresa,'
      '  u.codigo,'
      '  u.digito,'
      '  u.nome,'
      '  u.dt_venda,'
      '  m.valor valor_mensalidade, '
      '  v.codigo as codigo_vendedor,'
      '  v.nome as nome_vendedor,'
      '  vr.codigo as codigo_representante,'
      '  vr.nome as nome_representante,'
      '  r.numero_titulo,'
      '  r.data_pagamento,'
      '  r.data_vencimento,'
      
        '  case empresa when 0 then datediff(month,u.dt_venda,r.Data_Venc' +
        'imento) + 1 -- se for pf sempre considera a parcela referente ao' +
        ' vencimento o mes subsequente'
      
        '  else -- se for pj e o dia de inclusao for <= 21 prevalece a re' +
        'gra de pf, caso contr'#225'rio considera a parecela referente ao venc' +
        'imento 2 meses subsequente'
      
        '  case when datepart(day,u.dt_venda) <= 21 then  datediff(month,' +
        'u.dt_venda,r.Data_Vencimento) + 1 else datediff(month,u.dt_venda' +
        ',r.Data_Vencimento) end'
      '   end parcela'
      '   '
      ''
      'into #temp '
      ''
      'from'
      '  contratante c,'
      '  usuario u,'
      '  receber r,'
      '  mensalidade_usuario m,'
      '  vendedor v,'
      '  representante vr'
      'where'
      '--  u.dt_venda between '#39'01/01/2014'#39' and '#39'31/01/2014'#39' and'
      '  u.vendedor = v.codigo'
      '  and v.representante = vr.codigo'
      '  and m.cd_usuario =u.codigo'
      '  and dg_usuario = u.digito'
      '  and c.codigo = u.contratante_titular'
      '  AND R.DESDOBRAMENTO = '#39'M'#39
      '  and  u.contratante_titular = r.codigo_contratante'
      '  and tipo_documento = 1'
      '  and r.data_vencimento between m.dtinicio and m.dtfim'
      ' '
      '  '
      
        '  and (vr.codigo = @cdRepresentante or @cdRepresentante = 0)  --' +
        'representante'
      ' '
      '-- ********  pessoa fisica  '
      '  and (--a'
      '  (  -- b'
      '  empresa = 0  and '
      ''
      '  r.data_vencimento between '
      
        '  -- pega o dia 01 do m'#234's correspondente '#224' parcela Inicial . Ex:' +
        ' se a parcela inicial for 2 e a data de inclusao do benef for 10' +
        '/02/2015, pega 01/03/2015 pois '#233' nesse mes que vence a segunda p' +
        'arcela do benefici'#225'rio'
      
        '  convert(datetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nr' +
        'ParcIni - 1,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(ye' +
        'ar,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103)'
      '  and'
      
        '  -- pega o ultimo dia do m'#234's corresopndente '#224' parcela final. Ex' +
        'emplo se a parcela final for 3 e a data de inclus'#227'o do benef fo ' +
        '10/02/2015 , pega 30/04/2015 pois '#233' nesse mes que vence a tercei' +
        'ra parcela'
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(year,dat' +
        'eadd(month,@nrParcFim,u.dt_venda)) as varchar(4)))'
      ''
      '  ) -- b'
      '  or'
      '  (-- c'
      '  empresa = 1 and'
      ' ( -- d'
      ' (datepart(day,u.dt_venda) <= 21 '
      ''
      ''
      'and r.data_vencimento between'
      
        '  -- PJ : quando a data de inclusao foi menor ou igual a 21 prev' +
        'alece a regra de pessoa f'#237'sica'
      
        '  convert(datetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nr' +
        'ParcIni - 1,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(ye' +
        'ar,dateadd(month,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103)'
      '  and'
      '  '
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(year,dat' +
        'eadd(month,@nrParcFim,u.dt_venda)) as varchar(4))))  '
      ''
      '  OR'
      ' (-- e'
      ' datepart(day,u.dt_venda) > 21 '
      ''
      ''
      'and r.data_vencimento between'
      
        '  -- PJ : se a data for superior a 21 a mensalidade referente '#224' ' +
        'segunda parcela por exemplo '#233' a de dois meses seguinte, exemplo ' +
        'se o beneficiario entrou dia 22/01/2015 a segunda parcela ter'#225' v' +
        'encimento entre 01/03/2015 e 31/03/2015'
      
        '  convert(datetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nr' +
        'ParcIni ,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(year,' +
        'dateadd(month,@nrParcIni ,u.dt_venda)) as varchar(4)),103)'
      '  and'
      '  '
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim + 1,u.dt_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(year' +
        ',dateadd(month,@nrParcFim + 1,u.dt_venda)) as varchar(4)))'
      '  )-- e'
      '  '
      '  )--d'
      ''
      '  ) -- c'
      
        '   )-- a                                                   -- pr' +
        'imeiro dia correspondente '#224' parcela inicial . Idem acima.'
      
        '  and (u.data_exclusao is null or u.data_exclusao >=  convert(da' +
        'tetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrParcIni ,u.d' +
        't_venda)) as varchar(2)) + '#39'/'#39' + cast(datepart(year,dateadd(mont' +
        'h,@nrParcIni - 1,u.dt_venda)) as varchar(4)),103))'
      ''
      '  and data_pagamento between @dtPagIni  and @dtPagFim'
      ' '
      ''
      'order by'
      '  vr.codigo,'
      '  v.codigo,'
      '  u.codigo,'
      '  u.digito,'
      '  parcela'
      ''
      ''
      'if  @tpPessoa = '#39'F'#39
      '  delete #temp where empresa = 1'
      '  else if @tpPessoa = '#39'J'#39
      '    delete #temp where empresa = 0'
      ''
      ''
      'declare @indice as int'
      'declare @codigo as int'
      'declare @digito as int'
      'declare @dtAtual char(10)'
      'declare @lgAchou char(1)'
      'declare @cdCompleto as int'
      'set @lgAchou = '#39'N'#39
      'set @dtAtual = convert(char(10),getdate(),103)'
      'declare cs cursor for select indice,codigo,digito from #temp'
      ''
      'open cs'
      'FETCH NEXT FROM cs INTO @indice,@codigo,@digito'
      'WHILE @@FETCH_STATUS = 0'
      'begin'
      
        '   set @cdCompleto =  cast(@codigo as varchar(10)) + cast(@digit' +
        'o as varchar(2)) '
      '   '
      
        '   exec SpCalculaDesconto @codigo,@cdCompleto,@dtAtual, @vrDesc ' +
        'output, @vrDescUnit output,@vrDescUsu output '
      '   '
      '   if @vrDescUsu is not null'
      '   begin'
      
        '     update #temp set valor_mensalidade = valor_mensalidade - @v' +
        'rDescUsu where indice = @indice'
      #9'  print '#39'achou'#39
      #9'  set @lgAchou = '#39'S'#39
      #9'end'
      '   FETCH NEXT FROM cs INTO @indice,@codigo,@digito'
      'end'
      'print @lgachou'
      'close cs'
      'deallocate cs'
      ''
      ''
      'select * from #temp'
      ''
      ''
      ''
      '')
    Left = 424
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
  end
  object QueryErroAtu: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from erro_atualizacao where indice = 0')
    Left = 320
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter procedure sp_bbota'
      'as '
      'select getdate()')
    Left = 280
    Top = 120
  end
end
