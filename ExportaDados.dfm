object FmExportarDados: TFmExportarDados
  Left = 241
  Top = 133
  BorderStyle = bsSingle
  Caption = 'Exportação de Dados'
  ClientHeight = 445
  ClientWidth = 437
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 421
    Height = 426
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Exportação'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 387
        Height = 380
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 306
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 20
          Top = 16
          Width = 195
          Height = 13
          Caption = 'Caminho onde vai ser gerado os arquivos'
        end
        object BitBtn1: TBitBtn
          Left = 29
          Top = 327
          Width = 101
          Height = 25
          Caption = '&Gerar Arquivos'
          Default = True
          TabOrder = 0
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
          Left = 245
          Top = 327
          Width = 101
          Height = 25
          Caption = '&Sair'
          TabOrder = 1
          Kind = bkClose
        end
        object ProgressBar1: TProgressBar
          Left = 2
          Top = 362
          Width = 383
          Height = 16
          Align = alBottom
          Min = 0
          Max = 100
          Step = 1
          TabOrder = 2
        end
        object ButtonContrat: TButton
          Left = 348
          Top = 30
          Width = 28
          Height = 25
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = ButtonContratClick
        end
        object BitBtn4: TBitBtn
          Left = 137
          Top = 327
          Width = 101
          Height = 25
          Caption = '&Enviar '
          Default = True
          Enabled = False
          TabOrder = 4
          OnClick = BitBtn4Click
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
        object EditCaminho: TEdit
          Left = 20
          Top = 32
          Width = 323
          Height = 21
          TabOrder = 5
        end
        object GroupBox2: TGroupBox
          Left = 20
          Top = 56
          Width = 327
          Height = 246
          TabOrder = 6
          object CheckBoxContrat: TCheckBox
            Left = 4
            Top = 12
            Width = 181
            Height = 17
            Caption = '&Exportar Dados de &Contratante'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object CheckBoxUsu: TCheckBox
            Left = 4
            Top = 33
            Width = 161
            Height = 17
            Caption = '&Exportar Dados de &Usuário'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object CheckBoxCobr: TCheckBox
            Left = 4
            Top = 54
            Width = 169
            Height = 17
            Caption = 'Exportar dados de &Cobrança'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object CheckBoxCont: TCheckBox
            Left = 4
            Top = 75
            Width = 160
            Height = 17
            Caption = 'Exportar dados de C&ontatos'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
          object CheckBoxOrcAbertMenAtra: TCheckBox
            Left = 4
            Top = 96
            Width = 305
            Height = 17
            Caption = 'Exportar Orç em Atraso c Mensalidades em aberto(Lista 1)'
            Checked = True
            State = cbChecked
            TabOrder = 4
          end
          object CheckBoxAbertVenctoCompl: TCheckBox
            Left = 4
            Top = 117
            Width = 240
            Height = 17
            Caption = 'Exportar Aberto vencimento completo(Lista 2)'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object CheckBoxBaixadosPorStatus: TCheckBox
            Left = 4
            Top = 159
            Width = 274
            Height = 17
            Caption = 'Exportar baixados p/ status Orçamento(Desbloqueio)'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object CheckBoxAbertVenctoComplOrc: TCheckBox
            Left = 4
            Top = 180
            Width = 301
            Height = 17
            Caption = 'Exportar aberto vencto completo (Orçamentos)(Lista 4)'
            Checked = True
            State = cbChecked
            TabOrder = 8
          end
          object CheckBoxMensAbSemUtlConv: TCheckBox
            Left = 4
            Top = 138
            Width = 267
            Height = 17
            Caption = 'Exportar Mens aberto sem utilizar convênio(Lista 3)'
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
          object CheckBoxOrcamentos: TCheckBox
            Left = 4
            Top = 200
            Width = 301
            Height = 17
            Caption = 'Orçamentos'
            Checked = True
            State = cbChecked
            TabOrder = 9
          end
          object CheckBoxDentista: TCheckBox
            Left = 5
            Top = 220
            Width = 76
            Height = 17
            Caption = 'Dentista'
            Checked = True
            State = cbChecked
            TabOrder = 10
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Histórico Exportação'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 413
        Height = 262
        Align = alClient
        DataSource = DsHistorico
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'indice'
            Title.Caption = 'Índice'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_inicio'
            Title.Caption = 'Início Exportação de Dados'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_fim'
            Title.Caption = 'Fim Exportaçã ode Dados'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'computador'
            Title.Caption = 'Computador'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 262
        Width = 413
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn3: TBitBtn
          Left = 305
          Top = 12
          Width = 101
          Height = 25
          Caption = '&Sair'
          TabOrder = 0
          Kind = bkClose
        end
      end
    end
  end
  object DatabaseMt: TDatabase
    AliasName = 'Multiodonto'
    DatabaseName = 'Multi'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa'
      'PASSWORD=sa')
    SessionName = 'Default'
    Left = 304
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      ''
      
        '     u.codigo_completo                                          ' +
        '                          ,'
      
        '     cast(replace(u.nome                 ,'#39';'#39','#39','#39') as varchar(40' +
        ')) as nome                ,'
      
        '     u.data_nascimento                                          ' +
        '                          ,'
      
        '     cast(replace(u.cpf                  ,'#39';'#39','#39','#39') as varchar(15' +
        ')) as cpf                 ,'
      
        '     u.data_inclusao                                            ' +
        '                          ,'
      
        '     cast(replace(u.sexo                 ,'#39';'#39','#39','#39') as varchar(01' +
        ')) as sexo                ,'
      
        '     cast(replace(c.endereco_residencial ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as endereco_residencial,'
      
        '     cast(replace(c.bairro_residencial   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as bairro_residencial  ,'
      
        '     cast(replace(ci.ds_cidade           ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cidade_residencial  ,'
      
        '     cast(replace(ci.uf                  ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as estado_residencial  ,'
      
        '     cast(replace(c.cep_residencial      ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cep_residencial     ,'
      
        '     cast(replace(c.endereco_comercial   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as endereco_comercial  ,'
      
        '     cast(replace(c.bairro_comercial     ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as bairro_comercial    ,'
      
        '     cast(replace(ci.ds_cidade           ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cidade_comercial    ,'
      
        '     cast(replace(ci.uf                  ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as estado_comercial    ,'
      
        '     cast(replace(c.cep_comercial        ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cep_comercial       ,'
      
        '     c.banco                                                    ' +
        '   as banco               ,'
      
        '     cast(replace(c.agencia              ,'#39';'#39','#39','#39') as varchar(06' +
        ')) as agencia             ,'
      
        '     cast(replace(c.conta                ,'#39';'#39','#39','#39') as varchar(10' +
        ')) as conta               ,'
      
        '     cast(replace(c.digito               ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as digito              ,'
      
        '     u.data_exclusao                                            ' +
        '                          ,'
      
        '     cast(replace(c.fone1                ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as fone_residencial    ,'
      
        '     cast(replace(c.fone2                ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as celular             ,'
      
        '     cast(replace(c.fax                  ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as fone_comercial      ,'
      
        '     cast(replace(c.email                ,'#39';'#39','#39','#39') as varchar(30' +
        ')) as email               ,'
      
        '     contratante_titular                                        ' +
        '                          ,'
      
        '     u.codigo                                                   ' +
        '   as cd_contratante      ,'
      
        '     cast(replace(c.Numero_Res           ,'#39';'#39','#39','#39') as varchar(05' +
        ')) as  numero_residencial ,'
      
        '     cast(replace(c.Numero_Com           ,'#39';'#39','#39','#39') as varchar(05' +
        ')) as  numero_comercial   '
      ''
      ''
      'from '
      '     usuario u, '
      '     contratante c,'
      '     cidade ci,'
      '     cidade ci1'
      ''
      'where '
      '          u.contratante_titular = c.codigo'
      '      and ci.cd_cidade          = c.cd_cidade_res'
      '      and ci1.cd_cidade         = c.cd_cidade_com         '
      ''
      'order by u.codigo,u.digito'
      ' '
      ' '
      ' ')
    Left = 376
    Top = 72
  end
  object QueryCobranca: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '    numero_titulo,'
      '    codigo_contratante,'
      '    data_vencimento,'
      '    valor,'
      
        '    case when data_pagamento is null then '#39'ABERTO'#39' else '#39'PAGO'#39' e' +
        'nd as Status,'
      '    data_pagamento,'
      '    valor_pago,'
      '    juros,'
      '    desconto,'
      '    t.descricao as TipoDocumento,'
      '    o.codigo Cd_ocorrencia,'
      '    o.descricao ds_ocorrencia'
      ''
      'from'
      '     receber r'
      'inner join   TipoDocumento t'
      ''
      'on  t.codigo = r.Tipo_Documento'
      ''
      'left join  Ocorrencias_Retorno o'
      'on o.id_ocorrencia = r.status_ocorrencia'
      ' ')
    Left = 296
    Top = 56
  end
  object QueryContatos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select  '
      '        convert(char(10),data_contato,103) as data_contato,'
      '        convert(char(5),hora_contato,108) as Hr_contato,'
      '        codigo_contratante,'
      '        convert(char(10),data_agenda,103) as data_agenda,'
      '        convert(char(05),hora_agenda,108) as hora_agenda,'
      '        o.apelido as operador,'
      '        tc.descricao as Tipo_contato,'
      '        tl.descricao as tipo_ligacao,'
      
        '        cast(replace(replace(texto_contato,'#39';'#39','#39','#39'),char(13),'#39'||' +
        #39') as varchar(2000)) as texto_contato'
      '        '
      '        '
      'from contato c'
      ''
      'left join operador o'
      'on '
      '   o.codigo = c.operador'
      ''
      'left join tipo_contato tc'
      'on'
      '  tc.codigo = c.tipo'
      ''
      'left join tipo_ligacao tl'
      'on'
      '   tl.codigo = c.ligacao'
      ' ')
    Left = 336
    Top = 136
  end
  object QueryContrat: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '     c.codigo'#9#9#9#9#9#9#9#9#9#9'  ,'
      
        '     cast(replace(nome                   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as nome'#9#9'  ,'
      '     convert(char(10),inclusao,103) as inclusao,'
      '     convert(char(10),exclusao,103) as exclusao,'
      
        '     cast(replace(c.endereco_residencial ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as endereco_residencial,'
      
        '     cast(replace(c.bairro_residencial   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as bairro_residencial  ,'
      
        '     cast(replace(ci.ds_cidade           ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as  cidade_residencial ,'
      
        '     cast(replace(ci.uf                  ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as  estado_residencial ,'
      
        '     cast(replace(c.cep_residencial      ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cep_residencial     ,'
      
        '     cast(replace(c.endereco_comercial   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as endereco_comercial  ,'
      
        '     cast(replace(c.bairro_comercial     ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as bairro_comercial    ,'
      
        '     cast(replace(ci.ds_cidade           ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cidade_comercial    ,'
      
        '     cast(replace(ci.uf                  ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as estado_comercial    ,'
      
        '     cast(replace(c.cep_comercial        ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cep_comercial       ,'
      
        '     cast(replace(c.fone1                ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as fone_residencial    ,'
      
        '     cast(replace(c.fone2                ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as celular             ,'
      
        '     cast(replace(c.fax                  ,'#39';'#39','#39','#39') as varchar(18' +
        ')) as fone_comercial      ,'
      
        '     cast(replace(c.email                ,'#39';'#39','#39','#39') as varchar(30' +
        ')) as email               ,'
      
        '     case tc.DebAutomatico when 0 then '#39'N'#39' else '#39'S'#39' end DebAutom' +
        'atico'#9#9#9'  ,'
      
        '     cast(replace(c.Numero_Res           ,'#39';'#39','#39','#39') as varchar(05' +
        ')) as  numero_residencial ,'
      
        '     cast(replace(c.Numero_Com           ,'#39';'#39','#39','#39') as varchar(05' +
        ')) as  numero_comercial   ,'
      
        '     cast(replace(c.rg                   ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as  rg     '#9#9'  ,'
      
        '     cast(replace(c.cgc_cpf              ,'#39';'#39','#39','#39') as varchar(50' +
        ')) as cgc_cpf             ,'
      
        '     case isnull(cast(c.empresa as char(1)),'#39' '#39') when 0 then '#39'F'#39 +
        ' when 1 then '#39'J'#39' else '#39' '#39' end tipo_pessoa_FJ,'
      
        '     c.banco                                                    ' +
        '   as banco               ,'
      
        '     cast(replace(c.agencia              ,'#39';'#39','#39','#39') as varchar(06' +
        ')) as agencia             ,'
      
        '     cast(replace(c.conta                ,'#39';'#39','#39','#39') as varchar(10' +
        ')) as conta               ,'
      
        '     cast(replace(c.digito               ,'#39';'#39','#39','#39') as varchar(02' +
        ')) as digito              ,'
      
        '     cast(replace(c.email                ,'#39';'#39','#39','#39') as varchar(30' +
        ')) as email               ,'
      
        '     cast(replace(c.complemento_res      ,'#39';'#39','#39','#39') as varchar(15' +
        ')) as complemento_res     ,'
      
        '     cast(replace(c.complemento_com      ,'#39';'#39','#39','#39') as varchar(15' +
        ')) as complemento_com'
      'from'
      '    contratante c,'
      '     cidade ci,'
      '     cidade ci1,'
      '     tipocobranca tc'
      ''
      'where'
      ''
      '        ci.cd_cidade    = c.cd_cidade_res'
      '      and ci1.cd_cidade = c.cd_cidade_com'
      '      and tc.codigo     = c.forma_cobranca'
      ''
      'order by c.codigo'
      ''
      ' '
      ' ')
    Left = 248
    Top = 24
  end
  object QueryHistorico: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from historico_exporDados order by 1 desc'
      ' ')
    Left = 144
  end
  object DsHistorico: TDataSource
    DataSet = QueryHistorico
    Left = 324
    Top = 104
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 204
    Top = 16
  end
  object QueryOrcEmTratMensAbert: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '      contratante as cd_contratante,'
      '      nome'
      ''
      'from orcamento'
      ''
      'left join Contratante'
      'on (Contratante.codigo = Orcamento.Contratante)'
      ''
      'where'
      '       data < getdate()'
      '       and autorizado = 1 and'
      '       orcamento.status_pagamento = 3'
      '       and status in(1,9)'
      '       and tipo = 1'
      '       and Contratante.Exclusao is null'
      '       and exists (select *'
      '                   from receber'
      '                   where     desdobramento = '#39'M'#39
      '                         and codigo_contratante = contratante'
      '                         and data_vencimento < getdate()'
      '                         and data_pagamento is null)'
      'group by'
      '          contratante,'
      '          nome'
      'order by'
      '          Contratante,'
      '          nome')
    Left = 216
    Top = 104
  end
  object QueryAbertoVenctoCompl: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '       Contratante.Codigo as cd_contratante,'
      '       Contratante.Nome,'
      '       Numero_Titulo,'
      '       t.Descricao as Descricao_Documento'
      ''
      'from'
      '    Receber'
      ''
      
        'inner join Contratante on (Contratante.Codigo = Receber.Codigo_C' +
        'ontratante)'
      
        'left join Manutencao on ((Manutencao.usuario / 10) = Receber.Cod' +
        'igo_Contratante)'
      'left join TipoDocumento t on t.codigo = receber.Tipo_Documento'
      'where (Data_Pagamento  is null)'
      'and Data_Vencimento between '#39'01/01/1980'#39' and '#39'01/31/2050'#39
      ''
      ''
      ''
      ''
      'and Contratante.Exclusao is null'
      ''
      'and Receber.Valor <> 0'
      ''
      
        'order by Codigo_Contratante, Data_Vencimento, Tipo_Documento,  T' +
        'ipo_Cobranca'
      ''
      ' ')
    Left = 264
    Top = 136
  end
  object QueryBaixadosPStatusOrc: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select distinct'
      '    D.Numero_Titulo,'
      '    D.Codigo_Contratante as cd_contratante,'
      '    D1.Nome'
      
        'from "Receber" D, "Contratante" D1, "TipoDocumento" D2, "TipoCob' +
        'ranca" D3'
      'where'
      ' (D1.Codigo = D.Codigo_Contratante)'
      ' and (D2.Codigo = D.Tipo_Documento)'
      ' and (D3.Codigo = D.Tipo_Cobranca)'
      ' and (D.Orcamento is not null)'
      'and D.Data_Pagamento between getdate() -'
      '30'
      'and getdate()'
      ''
      ''
      
        'and exists (select * from orcamento where orcamento.contratante ' +
        '= D.Codigo_Contratante and Orcamento.Autorizado is not null'
      '            and status = 4)'
      ''
      ' ')
    Left = 320
    Top = 184
  end
  object QueryMensAbSUtl: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select codigo cd_contratante,nome from contratante c where c.exc' +
        'lusao is null'
      'and not exists'
      '(select * from orcamento o'
      ' where o.contratante_titular = c.codigo'
      '       and o.autorizado = 1'
      ')'
      'and not exists '
      '(select * from manutencao m, usuario u '
      ' where u.codigo_completo = m.usuario'
      '       and u.contratante_titular = c.codigo)'
      ''
      'and exists'
      '(select * from receber r'
      ' where r.Codigo_Contratante = c.codigo'
      ' and r.data_pagamento is null'
      ' and r.desdobramento = '#39'M'#39')')
    Left = 320
    Top = 240
  end
  object QueryOrcamentos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '       usuario,'
      '       numero           as nr_orcamento,'
      '       Data_Conferencia as dt_aprovacao,'
      '       total_bruto      as total_sinistro,'
      '       total            as cooparticipacao,'
      '       dentista         as cd_credenciado,'
      '       t.Descricao      as tipoOrcamento,'
      '       o.Numero_Parcelas,'
      '       s.descricao      as status_orcamento'
      ''
      'from orcamento o'
      'left join status_orcamento s'
      'on'
      '   s.codigo = o.status'
      'left join Tipoorcamento t'
      'on'
      '  t.tipo = o.tipo'
      ''
      'where autorizado = 1'
      ' ')
    Left = 320
    Top = 288
  end
  object QueryDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '      codigo,'
      '      cast(replace(nome,'#39';'#39','#39','#39') as varchar (40)) as nome,'
      '      fone1,'
      '      fone1,'
      '      celular,'
      '      data_exclusao'
      ''
      'from '
      '     dentista'
      ''
      'order by codigo ')
    Left = 216
    Top = 288
  end
end
