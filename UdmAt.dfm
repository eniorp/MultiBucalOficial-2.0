object DmAt: TDmAt
  OldCreateOrder = False
  Left = 213
  Top = 140
  Height = 733
  Width = 1378
  object QueryDivergANSXBase: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE TABLE [DivergANSXBase] ('
      #9'[codigo_completo] [int] NOT NULL ,'
      #9'[cdIdentBenef] [varchar] (30)  ,'
      #9'[Nome ANS] [varchar] (70)  NOT NULL ,'
      #9'[nome] [varchar] (40)  NOT NULL ,'
      #9'[CdContrat] [int] NOT NULL ,'
      #9'[NmContrat] [varchar] (50)  NOT NULL ,'
      #9'[plano] [int] NOT NULL ,'
      #9'[DtNasc ANS] [datetime] NULL ,'
      #9'[data_nascimento] [datetime] NOT NULL ,'
      #9'[Sexo ANS] [char] (1)  ,'
      #9'[sexo] [varchar] (1)  NOT NULL ,'
      #9'[CPF ANS] [varchar] (11)  ,'
      #9'[cpf] [varchar] (50)  ,'
      #9'[PIS/PASEP ANS] [varchar] (11)  ,'
      #9'[PIS PASEP] [varchar] (11)  ,'
      #9'[Nm MAE ANS] [varchar] (70)  ,'
      #9'[Nm_Mae] [varchar] (70)  ,'
      #9'[Nr Reg Plan ANS] [int] NULL ,'
      #9'[Codigo_Susep] [int] NULL ,'
      #9'[DT Adesao ANS] [datetime] NULL ,'
      #9'[Data_Inclusao] [datetime] NOT NULL ,'
      #9'[Dt Cancel ANS] [datetime] NULL ,'
      #9'[data_exclusao] [datetime] NULL ,'
      #9'[Endere'#231'o ANS] [varchar] (50)  ,'
      #9'[Endere'#231'o] [varchar] (50)  ,'
      #9'[N'#186' ANS] [varchar] (5)  ,'
      #9'[N'#186'] [varchar] (5)  ,'
      #9'[Compl ANS] [varchar] (15)  ,'
      #9'[Compl] [varchar] (15)  ,'
      #9'[Bairro ANS] [varchar] (30)  ,'
      #9'[Bairro] [varchar] (30)  ,'
      #9'[CEP ANS] [varchar] (8)  ,'
      #9'[CEP] [varchar] (50)  ,'
      #9'[Cidade ANS] [varchar] (30)  ,'
      #9'[Cidade_Residencial] [varchar] (30)  ,'
      #9'[UF ANS] [char] (2)  ,'
      #9'[Estado_Residencial] [varchar] (2)  ,'
      #9'[Tp Contrat Plano ANS] [tinyint] NULL ,'
      #9'[TpContratPlano] [varchar] (1)  ,'
      #9'[Vinc ANS] [tinyint] NULL ,'
      #9'[grau_parentesco] [tinyint] NULL ,'
      #9'[Motivo Cancel ANS] [tinyint] NULL ,'
      #9'[motivo_cancelamento] [int] NULL ,'
      #9'[CD Anterior ANS] [varchar] (30)  ,'
      #9'[cd_ans_anterior] [int] NULL ,'
      #9'[SegAssistCobPl ANS] [tinyint] NULL ,'
      #9'[SegAssistCobPl] [int] NOT NULL ,'
      #9'[AbrangGeogCobPl ANS] [tinyint] NULL ,'
      #9'[AbrangGeogCobPl] [int] NOT NULL ,'
      #9'[IndExistCobParcTemp ANS] [tinyint] NULL ,'
      #9'[IndExistCobParcTemp] [int] NOT NULL ,'
      #9'[IndExistCoPart ANS] [tinyint] NULL ,'
      #9'[IndExistCoPart] [int] NOT NULL ,'
      #9'[divergente] [bit] NULL ,'
      #9'[CpDivergentes] [varchar] (100)  '
      ') '
      ''
      ''
      ''
      ' ')
    Left = 56
    Top = 30
  end
  object Querysp_regAnsXBase: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure sp_regAnsXBase'
      ''
      'as'
      ''
      'delete DivergANSXBase'
      ''
      'insert into DivergANSXBase'
      ''
      'select '
      '        u.codigo_completo,'
      #9'a.cdIdentBenef,'
      '        a.NmBenef '#39'Nome ANS'#39','
      '        u.nome,'
      '        c.codigo as CdContrat,'
      '        c.nome as NmContrat,'
      '        c.plano,'
      #9'a.DtNasc as '#39'DtNasc ANS'#39', '
      #9'u.data_nascimento,'
      #9'a.sexo as '#39'Sexo ANS'#39','
      #9'u.sexo,'
      #9'a.cpf '#39'CPF ANS'#39','
      #9'u.cpf,'
      '        a.pis '#39'PIS/PASEP ANS'#39','
      #9'u.PIS_PASEP '#39'PIS PASEP'#39','
      #9'a.NmMaeBenef '#39'Nm MAE ANS'#39','
      #9'u.Nm_Mae,'
      #9'a.NrRegPlanoANS '#39'Nr Reg Plan ANS'#39','
      #9'p.Codigo_Susep,'
      #9'a.DtAdesaoPlano '#39'DT Adesao ANS'#39','
      #9'u.Data_Inclusao,'
      #9'a.DtCancelamento '#39'Dt Cancel ANS'#39' ,'
      #9'u.data_exclusao ,'
      #9'a.ComplLog '#39'Compl ANS'#39','
      #9'c.Complemento_Res '#39'Compl'#39','
      #9'a.Bairro '#39'Bairro ANS'#39','
      #9'c.Bairro_Residencial '#39'Bairro'#39','
      #9'a.cep '#39'CEP ANS'#39','
      ' '#9'c.CEP_Residencial '#39'CEP'#39','
      #9'a.Cidade '#39'Cidade ANS'#39','
      #9'c.Cidade_Residencial,'
      #9'a.UF '#39'UF ANS'#39','
      #9'substring(c.Estado_Residencial,1,2) as Estado_Residencial,'
      #9'a.TpContratPlano  '#39'Tp Contrat Plano ANS'#39' ,'
      #9'p.flag_envio_ans '#39'TpContratPlano'#39','
      '        a.VinculoBenef '#39'Vinc ANS'#39','
      #9'g.cd_ans '#39'grau_parentesco'#39','
      #9'a.MotivoCancel '#39'Motivo Cancel ANS'#39','
      #9'u.motivo_cancelamento,'
      #9'a.NrRegPlanoOper '#39'CD Anterior ANS'#39','
      '        p.cd_ans_anterior,'
      #9'a.SegAssistCobPl '#39'SegAssistCobPl ANS'#39','
      '        4 as '#39'SegAssistCobPl'#39', -- t'#225' fixo no envio'
      #9'a.AbrangGeogCobPl '#39'AbrangGeogCobPl ANS'#39','
      '        4 as '#39'AbrangGeogCobPl'#39', -- t'#225' fixo no envio'
      #9'a.IndExistCobParcTemp '#39'IndExistCobParcTemp ANS'#39','
      #9'2 as '#39'IndExistCobParcTemp'#39','
      #9'a.IndExistCoPart '#39'IndExistCoPart ANS'#39','
      '       '#9'1 as '#39'IndExistCoPart'#39','
      #9'cast(0 as bit) as divergente,'
      '        cast('#39#39' as varchar(100)) as CpDivergentes,'
      #9'a.Logradouro '#39'Endereco_ANS'#39','
      #9'substring(c.Endereco_Residencial,1,50) '#39'Endereco'#39','
      #9'a.NrEndereco '#39'Num_ANS'#39','
      #9'c.Numero_Res '#39'Num'#39
      ''
      ''
      'from'
      #9'usuario u,'
      #9'contratante c,'
      #9'ANS_CONF a,'
      #9'plano p ,'
      #9'grau_parentesco g'
      ''
      'where'
      #9'  u.codigo_completo = a.cdIdentBenef'
      '      and u.codigo = c.codigo'
      '      and p.codigo = c.plano'
      '      and g.codigo = u.grau_parentesco'
      '      and a.flag_compara = 1'
      '      and u.alterado = 0'
      '      and a.DtCancelamento is null'
      '      and u.data_exclusao  is null'
      '--      and u.data_inclusao > '#39'01/01/2005'#39' deu certo'
      '')
    Left = 56
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE TABLE ANS_CONF ('
      #9'NrSeqArq int NOT NULL ,'
      #9'IndDetalhe tinyint NOT NULL ,'
      #9'cdIdentBenef varchar (30)  NULL ,'
      #9'NmBenef varchar (70)  NOT NULL ,'
      #9'DtNasc datetime NULL ,'
      #9'Sexo char (1) NULL ,'
      #9'cpf char (11) NULL ,'
      #9'Pis char (11)  NULL ,'
      #9'NmMaeBenef varchar (70)  NULL ,'
      #9'NrRegPlanoANS int NULL ,'
      #9'DtAdesaoPlano datetime NULL ,'
      #9'DtCancelamento datetime NULL ,'
      #9'DtReinclusao datetime NULL ,'
      #9'Logradouro varchar (50)  NULL ,'
      #9'NrEndereco varchar (5)  NULL ,'
      #9'ComplLog varchar (15)  NULL ,'
      #9'Bairro varchar (30)  NULL ,'
      #9'Cidade varchar (30)  NULL ,'
      #9'UF char (2)  NULL ,'
      #9'Cep varchar (8)  NULL ,'
      #9'SegAssistCobPl tinyint NULL ,'
      #9'AbrangGeogCobPl tinyint NULL ,'
      #9'TpContratPlano tinyint NULL ,'
      #9'VinculoBenef tinyint NULL ,'
      #9'MotivoCancel tinyint NULL ,'
      #9'IndExistCobParcTemp tinyint NULL ,'
      #9'IndExistCoPart tinyint NULL ,'
      #9'NrRegPlanoOper varchar (30) NULL ,'
      #9'cns varchar (15) NULL ,'
      #9'Identidade varchar (30)  NULL ,'
      #9'OrgaoEmissorCI varchar (30)  NULL ,'
      #9'cdPaisEmissorCI int NULL ,'
      #9'CNPJ varchar (14)  NULL ,'
      #9'cdtitular varchar (30)  NULL ,'
      #9'IndItensProcExc tinyint NULL ,'
      #9'DtAdaptacao datetime NULL ,'
      #9'flag_compara bit NOT NULL '
      ') '
      ' ')
    Left = 56
    Top = 160
  end
  object SpAtualizaNullANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE procedure SpAtualizaNullANS'
      ''
      'as'
      ''
      'update ans_conf set IndDetalhe '#9#9'= 0  '#9#9'where IndDetalhe'#9'is null'
      'update ans_conf set NmBenef'#9#9'= '#39' '#39#9#9'where NmBenef'#9#9'is null'
      
        'update ans_conf set DtNasc '#9#9'= '#39'01/01/1800'#39'  where DtNasc '#9#9'is n' +
        'ull'
      'update ans_conf set Sexo '#9#9'= -1 '#9#9'where Sexo '#9#9'is null'
      'update ans_conf set cpf '#9#9'= -1 '#9#9'where cpf '#9#9'is null'
      'update ans_conf set Pis'#9#9#9'= '#39'0'#39' '#9#9'where pis is null'
      
        'update ans_conf set NmMaeBenef '#9#9'= '#39' '#39'  '#9#9'where NmMaeBenef '#9'is n' +
        'ull'
      
        'update ans_conf set NrRegPlanoANS '#9'= -1 '#9#9'where NrRegPlanoANS '#9'i' +
        's null'
      
        'update ans_conf set NrRegPlanoOper '#9'= -1  '#9#9'where NrRegPlanoOper' +
        ' '#9'is null'
      
        'update ans_conf set DtAdesaoPlano '#9'= '#39'01/01/1800'#39'  where DtAdesa' +
        'oPlano '#9'is null'
      ''
      
        '--update ans_conf set DtCancelamento'#9'= '#39'01/01/1800'#39'  where DtCan' +
        'celamento'#9'is null'
      
        '--update ans_conf set DtReinclusao'#9'= '#39'01/01/1800'#39'  where DtReinc' +
        'lusao'#9'is null'
      'update ans_conf set Logradouro'#9#9'= '#39' '#39#9#9'where Logradouro '#9'is null'
      'update ans_conf set NrEndereco'#9#9'= '#39' '#39#9#9'where NrEndereco'#9'is null'
      'update ans_conf set ComplLog'#9#9'= '#39' '#39#9#9'where ComplLog'#9#9'is null'
      'update ans_conf set Bairro'#9#9'= '#39' '#39' '#9#9'where Bairro'#9#9'is null'
      ''
      'update ans_conf set Cidade '#9#9'= '#39' '#39' '#9#9'where Cidade '#9#9'is null'
      'update ans_conf set UF '#9#9#9'= '#39' '#39' '#9#9'where  uf '#9#9'is null'
      ''
      'update ans_conf set Cep'#9#9#9'= '#39' '#39#9#9'where cep'#9#9'is null'
      ''
      
        'update ans_conf set SegAssistCobPl  '#9'= 0 '#9#9'where SegAssistCobPl ' +
        #9'is null'
      
        'update ans_conf set AbrangGeogCobPl '#9'= 0 '#9#9'where AbrangGeogCobPl' +
        ' '#9'is null'
      
        'update ans_conf set TpContratPlano '#9'= 0 '#9#9'where TpContratPlano '#9 +
        'is null'
      
        'update ans_conf set VinculoBenef '#9'= 0 '#9#9'where VinculoBenef '#9'is n' +
        'ull'
      
        'update ans_conf set MotivoCancel '#9'= 0 '#9#9'where MotivoCancel '#9'is n' +
        'ull'
      
        'update ans_conf set IndExistCobParcTemp = 0 '#9#9'where IndExistCobP' +
        'arcTemp is null'
      
        'update ans_conf set IndExistCoPart '#9'= 0 '#9#9'where IndExistCoPart '#9 +
        'is null'
      ''
      
        'update ans_conf set NrRegPlanoOper'#9'= '#39' '#39' '#9#9'where NrRegPlanoOper'#9 +
        'is null'
      'update ans_conf set cns'#9#9#9'= '#39' '#39#9#9'where cns'#9#9'is null'
      'update ans_conf set Identidade'#9#9'= '#39' '#39#9#9'where identidade'#9'is null'
      
        'update ans_conf set OrgaoEmissorCI'#9'= '#39' '#39#9#9'where OrgaoEmissorCI'#9'i' +
        's null'
      
        'update ans_conf set cdPaisEmissorCI'#9'= 0'#9#9'where cdPaisEmissorCI'#9'i' +
        's null'
      'update ans_conf set CNPJ'#9#9'= '#39' '#39#9#9'where CNPJ'#9#9'is null'
      'update ans_conf set cdtitular'#9#9'= '#39' '#39#9#9'where cdtitular'#9#9'is null'
      
        'update ans_conf set IndItensProcExc'#9'= 0'#9#9'where IndItensProcExc'#9'i' +
        's null'
      
        'update ans_conf set DtAdaptacao'#9#9'= '#39'01/01/1800'#39'  where DtAdaptac' +
        'ao'#9'is null'
      '')
    Left = 216
    Top = 30
  end
  object Querytr_u_i_VerifPlanoValido: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger  tr_u_i_VerifPlanoValido on contratante'
      'for insert,update  '
      '  '
      '--consiste CPF / CGC e valida o plano e tambem o vendedor'
      '  --tb registroplanoANS tb contratante tb plano'
      'as  '
      '  '
      
        'if UPDATE(inclusao) and exists(select * from parametro where cd_' +
        'parametro = '#39'VDIU'#39' and vl_parametro = '#39'S'#39')'
      'begin'
      
        '   if exists(select * from inserted d , plano p, registroPLanoAN' +
        'S r where d.plano = p.codigo and p.Codigo_Susep = r.registroPlan' +
        'o and d.inclusao < r.dt_registro)'
      '   begin'
      
        '      raiserror('#39'A data de inclus'#227'o do contratante n'#227'o pode ser ' +
        'inferior a data de registro do plano na ANS!'#39',16,1)  '
      '      rollback tran     '
      '   end'
      'end  '
      'if exists(select * from inserted where cgc_cpf is null)  '
      'begin  '
      '  raiserror('#39'CPF/CGC n'#227'o informado, favor informar '#39',16,1)  '
      '  rollback tran  '
      'end  '
      '  '
      'if update(plano) and exists(select *   '
      '          from plano p, inserted i   '
      '          where p.codigo = i.plano and ativo = 0)  '
      'begin  '
      
        '  raiserror('#39'O plano informado encontra-se desativado, o mesmo n' +
        #227'o poder'#225' ser utilizado '#39',16,1)  '
      '  rollback tran  '
      'end  '
      'else  '
      ''
      ''
      
        'if update(vendedor) and exists(select * from vendedor v, inserte' +
        'd i  '
      ' where  i.vendedor = v.codigo and v.data_exclusao is not null)  '
      'begin  '
      
        '  raiserror('#39'O vendedor informado econtra-se excluido, o mesmo n' +
        #227'o poder'#225' ser utilizado '#39',16,1)  '
      '  rollback tran  '
      'end  '
      '  '
      '  '
      'update contratante set cidade_comercial = ds_cidade  '
      'from cidade c, inserted i  '
      'where i.codigo = contratante.codigo  '
      '      and c.cd_cidade = i.cd_cidade_com  '
      
        '      and (i.cidade_comercial is null or  i.cidade_comercial = '#39 +
        #39')  '
      '  '
      'update contratante set cidade_residencial = ds_cidade  '
      'from cidade c, inserted i  '
      'where i.codigo = contratante.codigo  '
      '      and c.cd_cidade = i.cd_cidade_res  '
      
        '      and (i.cidade_comercial is null or i.cidade_comercial = '#39#39 +
        ')'
      ''
      '-- grava log para o site..'
      
        'IF not update (updated) AND (select vl_parametro  from parametro' +
        ' where cd_parametro = '#39'GLASI'#39') = '#39'S'#39
      
        '   update contratante set updated = GETDATE() from inserted i wh' +
        'ere i.Codigo = contratante.Codigo'
      '   '
      ''
      ''
      
        '--select codigo,updated from contratante where codigo = 15449 --' +
        'Nome = '#39'enio da silveira'#39
      ''
      ''
      ''
      ''
      '')
    Left = 216
    Top = 88
  end
  object QuerySpArqSusep: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter Procedure SpArqSusep ---'#39'21/06/2011'#39','#39'S'#39
      ''
      '@DtLimite char(10),'
      
        '@oficializa char(1) -- indica se oficializar(commit ou d'#225' rollba' +
        'ck) '
      ''
      'as'
      ''
      'Declare @data datetime'
      ''
      'set dateformat dmy'
      ''
      'set @data = getdate()'
      ''
      'begin tran'
      ''
      'update usuario -- usuarios de inclus'#227'o na susep'
      ''
      'set reinclusao_sib = @data,'
      
        '    alterado = 0 -- caso esteja marcado pra ser enviado como alt' +
        'era'#231#227'o desmarca'
      ''
      
        'where dtreinclusao is not null and reinclusao_sib is null -- qua' +
        'ndo tem data de reinclus'#227'o e reinclusao_sib esta vazia'
      
        '-- significa que esse usuario foi reincluido no plano ent'#227'o mand' +
        'a para ans no sib como registro tipo 8'
      
        'and Inclusao_Susep is not null and cco is not null and Data_Excl' +
        'usao is null -- nao pode estar excluido'
      '       and dtreinclusao <= @DtLimite + '#39' 23:59'#39
      #9'   and usuario.lg_naoEnviarSib = 0'
      ''
      ''
      'update usuario -- usuarios de inclus'#227'o na susep'
      'set Inclusao_Susep = @data,'
      
        '    alterado = 0 -- caso esteja marcado pra ser enviado como alt' +
        'era'#231#227'o desmarca'
      'where  Inclusao_Susep is null'
      '       and data_inclusao <= @DtLimite + '#39' 23:59'#39
      #9'   and usuario.lg_naoEnviarSib = 0'
      ''
      
        '-- se o registro j'#225' estiver sendo enviado como inclusao, nao env' +
        'ia como alteracao'
      '-- ele vai no proximo envio'
      ''
      'update usuario -- usuario com alteracao'
      'set alteracao_Susep = @data, alterado = 0'
      'where alterado = 1'
      '  and Inclusao_Susep <> @data'
      '  and cco is not null'
      '  and Data_Exclusao is null'
      
        '  and (data_alteracao <= @DtLimite + '#39' 23:59'#39' or data_alteracao ' +
        'is null)'
      '  and usuario.lg_naoEnviarSib = 0'
      ''
      
        '-- se o registro j'#225' estiver sendo enviado como inclusao ou alter' +
        'acao, nao envia como'
      '-- exclusao ele vai no proximo envio'
      ''
      'update usuario -- usuarios de exclus'#227'o na susep'
      
        'set exclusao_Susep = @data,alterado = 0 -- caso esteja marcado p' +
        'ara envio n'#227'o envia...'
      'where'
      '      exclusao_Susep is null'
      '  and Data_Exclusao  is not null'
      '  and Inclusao_Susep is not null'
      '  and cco is not null'
      '  and Inclusao_Susep <> @data'
      '  and (alteracao_susep <> @data or alteracao_susep is null)'
      '  and data_exclusao <= @DtLimite + '#39' 23:59'#39
      '  and usuario.lg_naoEnviarSib = 0'
      ''
      'select '
      '    2 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo,'
      #9'p.codigo_susep,'
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        '#39'0000000000'#39' as data_exclusao, -- qdo for inclusao nao p' +
        'ode enviar data de exclusao'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39')   as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome,'
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo,'
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial,'
      #9'c.Cidade_Residencial,'
      #9'c.Estado_Residencial,'
      #9'c.CEP_Residencial as CEP,'
      '        '#39'1'#39' as FlagIncl_Excl,'
      #9'u.CPF,'
      #9'u.Nm_mae,'
      #9'u.PIS_PASEP,'
      #9'p.flag_envio_ans,'
      #9'c.Numero_Res,'
      '        c.Complemento_Res,'
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      #9'cd_ans_anterior,'
      #9'p.Fis_Jur,'
      '        u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' as dt_exclusao_orig,'
      '        isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,'
      '       ci.cd_ibge,'
      '       '#39#39' novo_cod_usu_plano'
      ''
      '    into #temp'
      ''
      'from'
      #9'usuario u, '
      #9'contratante c, '
      #9'plano p,        '
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci '
      '        '
      ''
      '  where '
      #9'u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '    and ci.cd_cidade = c.cd_cidade_res'
      '    and Inclusao_Susep = @data'
      ''
      '    --and 2 = 1'
      '    '
      ''
      'union all'
      ''
      'select --top 162'
      '    3 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo, '
      #9'p.codigo_susep, '
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        isnull(convert(char(10),u.Data_Exclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Exclusao,'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39') as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome, '
      '    case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo, '
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial, '
      #9'c.Cidade_Residencial, '
      #9'c.Estado_Residencial, '
      #9'c.CEP_Residencial as CEP,'
      '        '#39'2'#39' as FlagIncl_Excl, '
      #9'u.CPF, '
      #9'u.Nm_mae, '
      #9'u.PIS_PASEP, '
      #9'p.flag_envio_ans, '
      #9'c.Numero_Res, '
      '        c.Complemento_Res, '
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      '        cd_ans_anterior,'
      #9'p.Fis_Jur,'
      #9'u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      'u.cd_motivo_inclusao,'
      'u.cei,'
      
        '        isnull(convert(char(10),u.dt_exclusao_orig,103)  ,'#39'00000' +
        '00000'#39')   as dt_exclusao_orig,'
      
        '    isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,ci.cd_ibg' +
        'e, '#39#39' novo_cod_usu_plano'
      'from '
      #9'usuario u , '
      #9'contratante c, '
      #9'plano p,'
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      '  where u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '   and ci.cd_cidade = c.cd_cidade_res'
      '    and Alteracao_Susep = @data'
      '    --and 2  = 1'
      ''
      ''
      'union all'
      ''
      'select '
      '    1 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo, '
      #9'p.codigo_susep, '
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        isnull(convert(char(10),u.Data_Exclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Exclusao,'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39') as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome, '
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo, '
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial, '
      #9'c.Cidade_Residencial, '
      #9'c.Estado_Residencial, '
      #9'c.CEP_Residencial as CEP,'
      '        '#39'3'#39' as FlagIncl_Excl, '
      #9'u.CPF, '
      #9'u.Nm_mae, '
      #9'u.PIS_PASEP, '
      #9'p.flag_envio_ans, '
      #9'c.Numero_Res, '
      '        c.Complemento_Res, '
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      '        cd_ans_anterior,'
      #9'p.Fis_Jur,'
      #9'u.codigo_ans,'
      
        '        '#39'0000000000'#39' as dt_migracao, -- n'#227'o se aplica na exclus'#227 +
        'o'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' dt_exclusao_orig,'
      
        '    isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,ci.cd_ibg' +
        'e,novo_cod_usu_plano'
      'from '
      #9'usuario u , '
      #9'contratante c, '
      #9'plano p,'
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      'where     u.Codigo = c.codigo'
      '      and c.plano  = p.codigo'
      '      and g.codigo = u.grau_parentesco'
      '      and c1.codigo = u.contratante_titular'
      '      and ci.cd_cidade = c.cd_cidade_res'
      '      and exclusao_Susep = @data'
      '      --and 2 = 1'
      ''
      ''
      'union'
      ''
      'select -- reinclus'#227'o'
      '    4 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo,'
      #9'p.codigo_susep,'
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        --'#39'0000000000'#39' as data_exclusao, -- qdo for inclusao nao' +
        ' pode enviar data de exclusao'
      
        '        isnull(convert(char(10),u.dt_exclusao_orig,103),'#39'0000000' +
        '000'#39')   as data_exclusao, -- para reinclusao reenvia a data de e' +
        'xclusao original'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39')   as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome,'
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo,'
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial,'
      #9'c.Cidade_Residencial,'
      #9'c.Estado_Residencial,'
      #9'c.CEP_Residencial as CEP,'
      '        '#39'8'#39' as FlagIncl_Excl, -- 8 eh reinclus'#227'o'
      #9'u.CPF,'
      #9'u.Nm_mae,'
      #9'u.PIS_PASEP,'
      #9'p.flag_envio_ans,'
      #9'c.Numero_Res,'
      '        c.Complemento_Res,'
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '  c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      #9'cd_ans_anterior,'
      #9'p.Fis_Jur,'
      '      u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' as dt_exclusao_orig,'
      '        isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,'
      '       ci.cd_ibge,'
      '       '#39#39' novo_cod_usu_plano'
      '    '
      'from'
      #9'usuario u, '
      #9'contratante c, '
      #9'plano p,        '
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      '  where '
      #9'u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '    and ci.cd_cidade = c.cd_cidade_res'
      '    and reinclusao_sib = @data'
      '    --and 2 = 1'
      ''
      ''
      'order by ordem, u.codigo, g.cd_ans'
      ''
      
        '-- Corrigido em 28/09/2011, estava mandando erroneamente o codig' +
        'o do titular pela regra inicial do sistema que era sempre o usua' +
        'rio com digito zero.'
      
        'update #temp set Campo34Cdtitular = (select top 1 cast(u.codigo_' +
        'completo as varchar(15)) from usuario u where u.codigo = #temp.c' +
        'odigo and u.grau_parentesco = 1 and Data_Exclusao is null and #t' +
        'emp.FlagIncl_Excl <> '#39'3'#39' and #temp.grau_parentesco <> '#39'01'#39' '
      'order by data_inclusao desc)'
      ''
      
        'update #temp set motivo_cancelamento =  cd_sib from cancelamento' +
        ' c where c.codigo = motivo_cancelamento'
      'select * from #temp'
      ''
      'if @@rowcount > 0'
      '   update paramANS set UltArqSusep =  UltArqSusep + 1'
      ''
      ''
      'if @oficializa = '#39'S'#39
      '   commit'
      'else'
      '  rollback   '
      '--select * from grau_parentesco'
      ''
      ''
      '')
    Left = 288
    Top = 14
  end
  object QueryTRAltera_Usuario: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'ALTER TRIGGER Altera_Usuario ON dbo.Usuario '
      'FOR INSERT, UPDATE'
      ''
      'AS'
      ''
      'declare @plano int, @grau_parentesco int'
      ''
      ''
      'select @plano = c.plano from contratante c, inserted i'
      'where i.contratante_titular = c.codigo'
      ''
      ''
      'Update Usuario '
      
        'set Codigo_Completo = cast(cast(usuario.codigo as varchar(15)) +' +
        ' cast(usuario.digito as varchar(3)) as int)'
      'from Inserted'
      'where Usuario.Codigo = Inserted.Codigo'
      'and Usuario.Digito = Inserted.Digito'
      ''
      'if update(Grau_Parentesco)'
      'begin'
      ''
      ''
      ''
      ''
      '  select @Grau_Parentesco = Grau_Parentesco from inserted'
      ''
      '  if not exists(select * from preco_plano where'
      '                codigo_plano = @plano and '
      '                codigo_grau_parentesco = @grau_parentesco)'
      '  begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel gravar o registro, n'#227'o existe ' +
        'pre'#231'o para o plano X grau de parentesco informado, verifique no ' +
        'cadastro de pre'#231'o por plano'#39',16,1)'
      '      rollback tran'
      '  end'
      ''
      'end'
      '/*'
      'if not update(inclusao_susep)  and'
      '   not update(exclusao_susep)  and'
      '   not update(alteracao_susep) and'
      '   not update(reinclusao_sib) and'
      '   not update(alterado) and'
      '   not update(cco)'
      ''
      '   begin'
      '  '
      
        '      if exists(select * from inserted where (cpf is null or cpf' +
        ' like '#39'% %'#39' or cpf = '#39#39') and data_exclusao is null)'
      '      begin'
      
        '         raiserror('#39'Opera'#231#227'o cancelada, o campo CPF '#233' obrigat'#243'ri' +
        'o'#39',16,1)'
      '         rollback tran'
      '      end  '
      ''
      'end*/'
      ''
      ''
      ''
      '')
    Left = 216
    Top = 160
  end
  object SpOrcApagar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'ALTER Procedure SpOrcApagar --'#39'01/01/2005'#39','#39'31/01/2005'#39',0,999999' +
        '9,0'
      ''
      '@DtIni          char(10),'
      '@Dtfim          char(10),'
      '@CdDentistaIni  int,'
      '@CdDentistaFim  int,'
      '@cdStatus       tinyint'
      ''
      'AS'
      ''
      'SET DATEFORMAT DMY'
      ''
      
        '-- CRIEI ESTA TEMP PRA FICAR PERFORMATICO POIS VAI FILTRAR APENA' +
        'S OS CODIGOS DE STATUS 1 3 E 9'
      '-- SEN'#195'O TERIA QUE USAR A INSTRU'#199#195'O "IN"'
      '--select * from status_orcamento'
      'CREATE TABLE #STATUS_ORCAMENTO'
      '('
      ''
      ' NR_ORCAMENTO INT'
      ''
      ')'
      'IF @cdStatus = 0  -- zero significa todos os status'
      ''
      'BEGIN'
      ''
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(1)'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(5)'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(9)'
      ''
      'END'
      'ELSE'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(@CdStatus)'
      ''
      ''
      'SELECT '
      #9'O.NUMERO,'
      '        O.DATA_CONFERENCIA DATA,'
      '        O.USUARIO,'
      #9'SO.DESCRICAO AS STATUS,'
      '        SP.DESCRICAO AS ST_PAGTO,'
      '        D.CODIGO AS CD_DENTISTA,'
      '        D.NOME AS DENTISTA,'
      '        TOTAL_DENTISTA,'
      '        TOTAL_PROTETICO,'
      '        TOTAL_DENTISTA - TOTAL_DENTISTA AS VR_PAGO_DENTISTA,'
      #9'TOTAL_PROTETICO - TOTAL_PROTETICO AS VR_PAGO_PROTETICO'
      ''
      'INTO #ORCAMENTO'
      'FROM '
      ''
      '   ORCAMENTO         O,'
      '   STATUS_ORCAMENTO SO,'
      '   STATUS_PAGTO     SP,'
      '   DENTISTA          D,'
      '   #STATUS_ORCAMENTO T'
      ''
      'WHERE'
      '     '
      '         O.STATUS           = SO.CODIGO'
      '     AND O.DENTISTA         = D.CODIGO'
      '     AND O.STATUS_PAGAMENTO = SP.CODIGO'
      '     AND O.STATUS_PAGAMENTO <> 1 -- PAGTO TOTALMENTE'
      '     AND O.AUTORIZADO       = 1'
      '     AND O.STATUS = T.NR_ORCAMENTO'
      '     AND O.DATA_CONFERENCIA BETWEEN @DtIni AND @DtFIM'
      '     AND O.DENTISTA BETWEEN @CdDentistaIni AND @CdDentistaFim'
      ''
      'ORDER BY O.DATA'
      ''
      
        '-- ATUALIZA OS TOTAIS DE DENTISTA E PROTETICO PARA PEGAR O VALOR' +
        ' SEM OS ITENS DE OR'#199'AMENTO CANCELADOS, POIS NOS CAMPOS TOTAL_DEN' +
        'TISTA E TOTAL_PROTETICO CONSIDERA OS CANCELADOS TAMB'#201'M.'
      ''
      
        'UPDATE #ORCAMENTO SET TOTAL_DENTISTA = (SELECT SUM(VALOR_DENTIST' +
        'A) FROM ITENS_ORCAMENTO I WHERE #ORCAMENTO.NUMERO = I.ORCAMENTO ' +
        'AND STATUS <> '#39'C'#39')'
      ''
      
        'UPDATE #ORCAMENTO SET TOTAL_PROTETICO = (SELECT SUM(VALOR_PROTET' +
        'ICO) FROM ITENS_ORCAMENTO I WHERE #ORCAMENTO.NUMERO = I.ORCAMENT' +
        'O AND STATUS <> '#39'C'#39')'
      ''
      
        'UPDATE #ORCAMENTO SET VR_PAGO_DENTISTA  = ISNULL((SELECT SUM(VAL' +
        'OR) FROM ITENS_PAGDENTISTA  I WHERE I.STATUS <> '#39'C'#39' AND I.ORCAME' +
        'NTO = #ORCAMENTO.NUMERO),0)'
      ''
      
        'UPDATE #ORCAMENTO SET VR_PAGO_PROTETICO = ISNULL((SELECT SUM(VAL' +
        'OR) FROM ITENS_PAGPROTETICO I WHERE I.ORCAMENTO = #ORCAMENTO.NUM' +
        'ERO),0)'
      ''
      'SELECT TOTAL_DENTISTA  - VR_PAGO_DENTISTA  AS VR_DENTISTA, '
      '       TOTAL_PROTETICO - VR_PAGO_PROTETICO AS VR_PROTETICO,*'
      ''
      'FROM #ORCAMENTO'
      ''
      'ORDER  BY DENTISTA'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 376
    Top = 88
  end
  object Query3: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table face_adjacente'
      '(cd_face char(1) not null,'
      'cd_face_adj char(1) not null,'
      'constraint pk_face_adjacente primary key (cd_face,cd_face_adj),'
      
        'constraint fk_face_adjacente_face  foreign key (cd_face) referen' +
        'ces face (cd_face),'
      
        'constraint fk_face_adjacente_face1 foreign key (cd_face_adj) ref' +
        'erences face (cd_face)'
      ')'
      ''
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'D'#39','#39'I'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'D'#39','#39'L'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'D'#39','#39'O'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'D'#39','#39'P'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'D'#39','#39'V'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'I'#39','#39'D'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'I'#39','#39'L'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'I'#39','#39'M'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'I'#39','#39'P'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'I'#39','#39'V'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'L'#39','#39'D'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'L'#39','#39'I'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'L'#39','#39'M'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'L'#39','#39'O'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'M'#39','#39'I'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'M'#39','#39'L'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'M'#39','#39'O'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'M'#39','#39'P'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'M'#39','#39'V'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'O'#39','#39'D'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'O'#39','#39'L'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'O'#39','#39'M'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'O'#39','#39'P'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'O'#39','#39'V'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'P'#39','#39'D'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'P'#39','#39'I'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'P'#39','#39'M'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'P'#39','#39'O'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'V'#39','#39'D'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'V'#39','#39'I'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'V'#39','#39'M'#39')'
      'INSERT INTO FACE_ADJACENTE VALUES ('#39'V'#39','#39'O'#39')')
    Left = 376
    Top = 160
  end
  object Querytr_hist_param: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_hist_param on parametro'
      ''
      'for insert,update,delete'
      ''
      'as'
      ''
      'insert into historico_parametro '
      'select '
      #9'isnull(i.cd_parametro,d.cd_parametro), '
      #9'd.vl_parametro,'
      #9'i.vl_parametro,'
      #9'getdate()'
      'from'
      '     inserted i'
      ''
      'full join  deleted  d'
      'on'
      '       i.cd_parametro = d.cd_parametro'
      '')
    Left = 56
    Top = 216
  end
  object Queryhistorico_parametro: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE TABLE [historico_parametro] ('
      #9'[cd_parametro] [varchar] (6),'
      #9'[vl_paramOld] [varchar] (10), '
      #9'[vl_paramNew] [varchar] (10),'
      #9'[data] [datetime] NULL ) '
      ''
      '')
    Left = 216
    Top = 216
  end
  object QueryUsuPerdidoANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'Create table UsuPerdidoANS'
      '('
      #9'codigo_completo '#9'varchar(30), '
      #9'Codigo_Susep'#9#9'int,'
      '        Data_Inclusao   '#9'datetime,'
      '        data_exclusao'#9#9'datetime,'
      '        Data_Nascimento '#9'datetime,'
      '        dtReinclusao'#9#9'datetime,'
      '        nome'#9#9#9'varchar(40), '
      #9'sexo'#9#9#9'varchar(1),'
      #9'Endereco_Residencial'#9'varchar(50),'
      #9'Bairro_Residencial'#9'varchar(50),'
      #9'Cidade_Residencial'#9'varchar(50),'
      #9'Estado_Residencial'#9'varchar(50),'
      #9'CEP_Residencial'#9#9'varchar(50),'
      '        FlagIncl_Excl'#9#9'varchar(1),  -- valor = 3 exclusao'
      #9'CPF'#9#9#9'varchar(50), '
      #9'Nm_mae'#9#9#9'varchar(70), '
      #9'PIS_PASEP'#9#9'varchar(11), '
      #9'flag_envio_ans'#9#9'varchar(1), '
      #9'Numero_Res'#9#9'varchar(5),'
      #9'Complemento_Res'#9#9'varchar(15),'
      #9'grau_parentesco'#9#9'char(2),'
      '        motivo_cancelamento'#9'int,'
      #9'Campo33CNPJ'#9#9'varchar(50),'
      '        Campo34Cdtitular '#9'varchar(15),'
      #9'cd_ans_anterior'#9#9'int,'
      #9'Fis_Jur'#9#9#9'varchar(8)'
      ') ')
    Left = 376
    Top = 216
  end
  object QuerySpGeraArqANSRegPerdidos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure SpGeraArqANSRegPerdidos'
      ''
      'as'
      ''
      'select '
      #9'codigo_completo, '
      #9'codigo_susep, '
      
        '        isnull(convert(char(10),Data_Inclusao,103)  ,'#39'0000000000' +
        #39')   as Data_Inclusao,'
      
        '        isnull(convert(char(10),Data_Exclusao,103)  ,'#39'0000000000' +
        #39')   as Data_Exclusao,'
      
        '        isnull(convert(char(10),Data_Nascimento,103),'#39'0000000000' +
        #39') as Data_Nascimento,'
      
        '        isnull(convert(char(10),dtReinclusao   ,103),'#39'0000000000' +
        #39')   as dtReinclusao,'
      '        nome, '
      #9'case sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo, '
      #9'Endereco_Residencial,'
      '        Bairro_Residencial, '
      #9'Cidade_Residencial, '
      #9'Estado_Residencial, '
      #9'CEP_Residencial as CEP,'
      '        '#39'3'#39' as FlagIncl_Excl, '
      #9'CPF, '
      #9'Nm_mae, '
      #9'PIS_PASEP, '
      #9'flag_envio_ans, '
      #9'Numero_Res, '
      '        Complemento_Res, '
      #9'grau_parentesco,'
      '        motivo_cancelamento,'
      '        Campo33CNPJ,'
      
        '        cast(Campo34Cdtitular as varchar(15)) + '#39'0'#39' as Campo34Cd' +
        'titular,'
      '        cd_ans_anterior,'
      #9'Fis_Jur'
      ''
      'from '
      #9'UsuPerdidoANS'
      '')
    Left = 56
    Top = 288
  end
  object QueryInseriPerdidos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'insert into UsuPerdidoANS'
      ''
      'select'
      #9'cdIdentBenef,'
      #9'NrRegPlanoANS,'
      #9'DtAdesaoPlano,'
      #9#39'10/01/2005'#39','
      #9'DtNasc,'
      #9'DtReinclusao,'
      #9'NmBenef,'
      #9'Sexo,'
      #9'Logradouro,'
      #9'Bairro,'
      #9'Cidade,'
      #9'UF,'
      #9'CEP,'
      #9#39'3'#39','
      #9'cpf,'
      #9'NmMaeBenef,'
      #9'Pis,'
      #9'TpContratPlano,'
      #9'NrEndereco,'
      #9'ComplLog,'
      #9'VinculoBenef,'
      #9'MotivoCancel,'
      #9'cnpj,'
      #9'cdtitular,'
      #9'NrRegPlanoOper,'
      #9#39'F'#39
      ''
      ' from ans_conf a where flag_compara = 1'
      'and not exists'
      '(select codigo_completo from usuario u where'
      ' u.codigo_completo = a.cdIdentBenef)'
      'and a.dtcancelamento is null'
      ''
      'union'
      ''
      'select'
      #9'cdIdentBenef,'
      #9'NrRegPlanoANS,'
      #9'DtAdesaoPlano,'
      #9#39'10/01/2005'#39','
      #9'DtNasc,'
      #9'DtReinclusao,'
      #9'NmBenef,'
      #9'Sexo,'
      #9'Logradouro,'
      #9'Bairro,'
      #9'Cidade,'
      #9'UF,'
      #9'CEP,'
      #9#39'3'#39','
      #9'cpf,'
      #9'NmMaeBenef,'
      #9'Pis,'
      #9'TpContratPlano,'
      #9'NrEndereco,'
      #9'ComplLog,'
      #9'VinculoBenef,'
      #9'MotivoCancel,'
      #9'cnpj,'
      #9'cdtitular,'
      #9'NrRegPlanoOper,'
      #9#39'F'#39
      ''
      ' from ans_conf where flag_compara = 0 and dtcancelamento is null'
      '')
    Left = 216
    Top = 288
  end
  object Querytr_u_i_consiste_dados: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_u_i_consiste_dados on usuario'
      'for update, insert'
      ''
      'as'
      ''
      
        '--begin tran insert into  parametro values('#39'VDIU'#39','#39's'#39','#39'Valida DT' +
        ' Inclus'#227'o Usu'#225'rio/contratante(< 15 DIAS, < CONTRATANTE e contrat' +
        ' < ans)'#39','#39'U'#39','#39'SISTEMA'#39',GETDATE()) rollback'
      
        'if UPDATE(data_inclusao) and exists(select * from parametro wher' +
        'e cd_parametro = '#39'VDIU'#39' and vl_parametro = '#39'S'#39')'
      'begin'
      
        '  if exists(select * from inserted where data_inclusao < GETDATE' +
        '() - 15)'
      '  begin'
      
        '     raiserror('#39'A data de inclus'#227'o n'#227'o pode ser inferior a 15 di' +
        'as!'#39',16,1)'
      '     rollback tran'
      '  end'
      
        '  else if exists(select * from inserted d, contratante c where d' +
        '.codigo = c.codigo and d.data_inclusao < c.inclusao)'
      '  begin'
      
        '     raiserror('#39'A data de inclus'#227'o n'#227'o pode ser inferior a data ' +
        'de inclus'#227'o do contratante!'#39',16,1)'
      '     rollback tran'
      '  '
      '  end'
      
        '  else if exists(select * from inserted d, contratante c where d' +
        '.contratante_titular = c.codigo and d.data_inclusao < c.inclusao' +
        ')'
      '  begin'
      
        '     raiserror('#39'A data de inclus'#227'o n'#227'o pode ser inferior a data ' +
        'de inclus'#227'o do contratante titular!'#39',16,1)'
      '     rollback tran'
      '  end  '
      'end'
      'if update(grau_parentesco) '
      'begin'
      
        '   if (exists (select * from grau_parentesco g, inserted i where' +
        ' g.codigo = i.grau_parentesco and g.ativo = 0))'
      '   begin'
      
        '     raiserror ('#39'Grau de parentesco inativo, n'#227'o pode ser usado ' +
        '!'#39',16,1)'
      '     rollback tran'
      '   end'
      '   '
      'end'
      
        '-- caso altere a data de inclusao do usuario , altera tamb'#233'm a d' +
        'ata da mensalidade_usuario registro id = 0'
      'if update(motivo_cancelamento)'
      'begin'
      '  if exists(select * from inserted i, cancelamento c'
      
        '            where i.motivo_cancelamento = c.codigo and ativo = 0' +
        ')'
      '  begin'
      
        '     raiserror ('#39'O motivo de cancelamento informado est'#225' inativo' +
        #39',16,1)'
      '     rollback tran'
      '  end'
      'end'
      ''
      'if update(data_inclusao) '
      'begin'
      '   if not exists(select * from mensalidade_usuario m, inserted i'
      '                 where i.codigo = m.cd_usuario and'
      '                       i.digito = m.dg_usuario and'
      '                       i.data_inclusao = m.dtinicio)'
      '   begin'
      ''
      '      update mensalidade_usuario set dtinicio = i.data_inclusao'
      '      from inserted i'
      '      where '
      '                mensalidade_usuario.cd_usuario = i.codigo'
      '            and mensalidade_usuario.dg_usuario = i.digito '
      '            and mensalidade_usuario.id_acrescimo = 0'
      '   end'
      'end'
      ''
      '-- Valida se o vendedor esta ativo'
      ''
      
        'if update(vendedor) and exists(select * from vendedor v, inserte' +
        'd i'
      ' where  i.vendedor = v.codigo and v.data_exclusao is not null)'
      'begin'
      
        '  raiserror('#39'O vendedor informado econtra-se excluido, o mesmo n' +
        #227'o poder'#225' ser utilizado '#39',16,1)'
      '  rollback tran'
      'end'
      ''
      ''
      'if update (contratante_titular)'
      
        '   if (select count(distinct u.contratante_titular) from usuario' +
        ' u, inserted i where u.codigo = i.codigo) > 1'
      '   begin'
      
        '      raiserror('#39'N'#227'o '#233' poss'#237'vel associar contratante titular dif' +
        'erente para os dependentes, verifique o contratante titular dos ' +
        'outros dependentes'#39',16,1)'
      '      rollback tran'
      '   end'
      ''
      
        'if update (cpf) and exists(select * from inserted where cpf = '#39'0' +
        '0000000000'#39')'
      'begin'
      '   raiserror('#39'N'#227'o '#233' poss'#237'vel incluir CPF zerado'#39',16,1)'
      '   rollback tran'
      'end'
      ''
      ''
      ''
      
        'IF not update (updated) AND (select vl_parametro  from parametro' +
        ' where cd_parametro = '#39'GLASI'#39') = '#39'S'#39
      'and not update(codigo_completo)'
      ''
      
        '   update usuario set updated = GETDATE() from inserted i where ' +
        'i.Codigo = usuario.Codigo and i.Digito = usuario.Digito'
      ''
      ''
      '')
    Left = 376
    Top = 400
  end
  object Qr_SpSinistralidade_Ind: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter Procedure SpSinistralidade_Ind --0,null,null,null,'#39'01/01/2' +
        '011'#39','#39'01/06/2011'#39',91'
      ''
      
        '-- Significa que tem tipos de opera'#231#227'o para plano, grupo_contrat' +
        'ante e contratante'
      ''
      '   @tipo      int  ,'
      '   @contr     int  ,'
      '   @Grp_contr int  ,'
      '   @plano     int  ,'
      '   @DtIni     char(12) ,'
      '   @DtFim     char(21) ,'
      '   @cdCidade  int'
      ''
      'as'
      ''
      'set dateformat dmy '
      ''
      
        'declare @SaldoOrcamento decimal (12,2) , @MensPagas decimal (12,' +
        '2) , @emAtraso decimal(12,2)'
      
        'declare @SaldoOrcamentoPF decimal (12,2) , @MensPagasPF decimal ' +
        '(12,2) , @emAtrasoPF decimal(12,2)'
      ''
      'if @cdCidade = 0'
      '  set @cdCidade = null'
      ''
      'if @contr = 0'
      ' set @contr = null'
      ''
      'if @Grp_contr = 0'
      '   set @Grp_contr = null'
      ''
      'if @plano = 0'
      '  set @plano = null'
      ''
      'if @tipo = 0 begin   -- Plano '
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamento ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from orcamento '
      
        '   inner join contratante on (orcamento.contratante = Contratant' +
        'e.codigo and (contratante.cd_cidade_res = @cdCidade or @cdCidade' +
        ' is null))'
      '   where autorizado = 1'
      '   and contratante.Empresa = 1'
      '   and data_conferencia between @DtIni and @DtFim'
      '   and (contratante.Plano = @Plano or @Plano is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagas ='
      ''
      '   (select  isnull(sum(valor_pago),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      '   where  (contratante.Plano = @Plano or @Plano is null)'
      '   and contratante.Empresa = 1'
      '   and  r.Data_Vencimento between  @DtIni and @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is not null) '
      '   '
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtraso ='
      ''
      '   (select  isnull(sum( valor),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      '   where  (contratante.Plano = @Plano or @Plano is null)'
      '   and contratante.Empresa = 1'
      '   and  r.Data_Vencimento between  @DtIni and @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is null) '
      ''
      'end;'
      ''
      'if @tipo = 1 begin  -- Grupo Contratante'
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamento ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from orcamento '
      
        '   inner join contratante on (orcamento.contratante = Contratant' +
        'e.codigo and (contratante.cd_cidade_res = @cdCidade or @cdCidade' +
        ' is null))'
      '   where autorizado = 1'
      '   and contratante.Empresa = 1'
      '   and data_conferencia between @DtIni and @DtFim'
      
        '   and (contratante.Grupo_Contratante = @Grp_contr or @Grp_contr' +
        ' is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagas ='
      ''
      '   (select  isnull(sum( valor_pago),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      
        '   where  (contratante.Grupo_Contratante = @Grp_contr or @Grp_co' +
        'ntr is null)'
      '   and contratante.Empresa = 1'
      '   and  r.Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is not null) '
      ''
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtraso ='
      ''
      '   (select  isnull(sum( valor),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      
        '   where  (contratante.Grupo_Contratante = @Grp_contr or @Grp_co' +
        'ntr is null)'
      '   and contratante.Empresa = 1'
      '   and  r.Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is null) '
      ''
      'end;'
      ''
      'if @tipo = 2 begin  --Contratante'
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamento ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from  orcamento , contratante c   '
      '   where autorizado = 1'
      '   and c.Empresa = 1'
      '   and c.codigo = orcamento.contratante'
      '   '
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and data_conferencia between @DtIni and @DtFim'
      '   and (Contratante = @contr or @contr is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagas ='
      ''
      
        '   (select  isnull(sum(valor_pago),0) from receber , contratante' +
        ' c'
      '   where  (Codigo_Contratante =  @contr or @contr is null)'
      '   and c.Empresa = 1'
      '   and c.codigo = receber.codigo_contratante'
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and  Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (Desdobramento = '#39'M'#39' or Desdobramento = '#39'1'#39')'
      '   and  Data_Pagamento is not null) '
      ''
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtraso ='
      ''
      '   (select  isnull(sum( valor),0) from receber ,contratante c'
      '   where  (Codigo_Contratante =  @contr or @contr is null)'
      '   and c.Empresa = 1'
      '   and c.codigo = receber.codigo_contratante'
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and  Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (Desdobramento = '#39'M'#39' or Desdobramento = '#39'1'#39')'
      '   and  Data_Pagamento is null) '
      ''
      'end;'
      ''
      ''
      '-- pessoa f'#237'sica'
      ''
      'if @tipo = 0 begin   -- Plano '
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamentoPF ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from orcamento '
      
        '   inner join contratante on (orcamento.contratante = Contratant' +
        'e.codigo and (contratante.cd_cidade_res = @cdCidade or @cdCidade' +
        ' is null))'
      '   where autorizado = 1'
      '   and contratante.Empresa = 0'
      '   and data_conferencia between @DtIni and @DtFim'
      '   and (contratante.Plano = @Plano or @Plano is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagasPF ='
      ''
      '   (select  isnull(sum(valor_pago),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      '   where  (contratante.Plano = @Plano or @Plano is null)'
      '   and contratante.Empresa = 0'
      '   and  r.Data_Vencimento between  @DtIni and @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is not null) '
      '   '
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtrasoPF ='
      ''
      '   (select  isnull(sum( valor),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      '   where  (contratante.Plano = @Plano or @Plano is null)'
      '   and contratante.Empresa = 0'
      '   and  r.Data_Vencimento between  @DtIni and @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is null) '
      ''
      'end;'
      ''
      'if @tipo = 1 begin  -- Grupo Contratante'
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamentoPF ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from orcamento '
      
        '   inner join contratante on (orcamento.contratante = Contratant' +
        'e.codigo and (contratante.cd_cidade_res = @cdCidade or @cdCidade' +
        ' is null))'
      '   where autorizado = 1'
      '   and contratante.Empresa = 0'
      '   and data_conferencia between @DtIni and @DtFim'
      
        '   and (contratante.Grupo_Contratante = @Grp_contr or @Grp_contr' +
        ' is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagasPF ='
      ''
      '   (select  isnull(sum( valor_pago),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      
        '   where  (contratante.Grupo_Contratante = @Grp_contr or @Grp_co' +
        'ntr is null)'
      '   and contratante.Empresa = 0'
      '   and  r.Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is not null) '
      ''
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtrasoPF ='
      ''
      '   (select  isnull(sum( valor),0) from receber r'
      
        '   inner join contratante on (Contratante.codigo = r.Codigo_cont' +
        'ratante and (contratante.cd_cidade_res = @cdCidade or @cdCidade ' +
        'is null))'
      
        '   where  (contratante.Grupo_Contratante = @Grp_contr or @Grp_co' +
        'ntr is null)'
      '   and contratante.Empresa = 0'
      '   and  r.Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (r.Desdobramento = '#39'M'#39' or r.Desdobramento = '#39'1'#39')'
      '   and  r.Data_Pagamento is null) '
      ''
      'end;'
      ''
      'if @tipo = 2 begin  --Contratante'
      ''
      '   -- soma or'#231'amentos aprovados'
      ''
      '   set @SaldoOrcamentoPF ='
      ''
      
        '   (select  isnull(sum( isnull(Total_Desconto,0) - (Total_Dentis' +
        'ta + Total_Protetico)),0) as Saldo_orcamento '
      '   from  orcamento , contratante c   '
      '   where autorizado = 1'
      '   and c.Empresa = 0'
      '   and c.codigo = orcamento.contratante'
      '   '
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and data_conferencia between @DtIni and @DtFim'
      '   and (Contratante = @contr or @contr is null))'
      ''
      '   -- soma com as mensalidades pagas'
      ''
      '   set @MensPagasPF ='
      ''
      
        '   (select  isnull(sum(valor_pago),0) from receber , contratante' +
        ' c'
      '   where  (Codigo_Contratante =  @contr or @contr is null)'
      '   and c.Empresa = 0'
      '   and c.codigo = receber.codigo_contratante'
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and  Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (Desdobramento = '#39'M'#39' or Desdobramento = '#39'1'#39')'
      '   and  Data_Pagamento is not null) '
      ''
      '   -- Seleciona as mensalidades em atrazo neste periodo'
      ''
      '   set @EmAtrasoPF ='
      ''
      '   (select  isnull(sum( valor),0) from receber ,contratante c'
      '   where  (Codigo_Contratante =  @contr or @contr is null)'
      '   and c.Empresa = 0'
      '   and c.codigo = receber.codigo_contratante'
      '   and (c.cd_cidade_res = @cdCidade or @cdCidade is null)'
      '   and  Data_Vencimento between  @DtIni and  @DtFim'
      '   and  (Desdobramento = '#39'M'#39' or Desdobramento = '#39'1'#39')'
      '   and  Data_Pagamento is null) '
      ''
      'end;'
      ''
      ''
      
        'select '#39'PJ'#39' tipo , @saldoOrcamento as SaldoOrcamento, @MensPagas' +
        ' as MensPagas , '
      
        '       (@saldoOrcamento + @MensPagas) as Sinistralidade, @emAtra' +
        'so as emAtraso'
      ''
      'union all'
      ''
      
        'select '#39'PF'#39' tipo , @saldoOrcamentoPF as SaldoOrcamento, @MensPag' +
        'asPF as MensPagas , '
      
        '       (@saldoOrcamentoPF + @MensPagasPF) as Sinistralidade, @em' +
        'AtrasoPF as emAtraso'
      ''
      ''
      '')
    Left = 56
    Top = 344
  end
  object QueryUpd_dtExcl_Perdidos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'update UsuPerdidoANS set data_exclusao = null'
      ''
      'update UsuPerdidoANS set cd_usuario = u.codigo_completo'
      'from usuario u'
      'where     UsuPerdidoANS.codigo_completo like '#39'%a%'#39
      
        '      and replace(UsuPerdidoANS.codigo_completo,'#39'a'#39','#39#39') = u.codi' +
        'go_completo'
      ''
      'update UsuPerdidoANS set cd_usuario = u.codigo_completo'
      'from usuario u'
      'where     UsuPerdidoANS.codigo_completo not like '#39'%a%'#39
      '      and UsuPerdidoANS.codigo_completo not like '#39'%m%'#39
      
        '      and UsuPerdidoANS.codigo_completo + '#39'0'#39' = u.codigo_complet' +
        'o'
      ''
      '--update UsuPerdidoANS set data_exclusao = null'
      'update UsuPerdidoANS set data_exclusao = u.data_exclusao'
      'from usuario u'
      'where cd_usuario = u.codigo_completo'
      '      and u.data_exclusao is not null'
      ''
      '-- N'#227'o envia usu'#225'rios perdidos que n'#227'o est'#227'o cancelados'
      
        '-- enviar'#225' depois que tivermos certeza que foram incluidos com o' +
        ' c'#243'digo correto'
      '-- pelo menos na seato'
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'ENV' +
        'CAN'#39') = '#39'S'#39
      'begin'
      '   update UsuPerdidoANS set data_exclusao = data_inclusao + 1'
      '   where data_exclusao is null'
      'end'
      ''
      
        'update UsuPerdidoANS set motivo_cancelamento = u.motivo_cancelam' +
        'ento'
      'from usuario u'
      'where cd_usuario = u.codigo_completo'
      '      and u.data_exclusao is not null'
      ''
      ''
      
        'update UsuPerdidoANS set motivo_cancelamento = 99 where (motivo_' +
        'cancelamento is null or motivo_cancelamento = 0)'
      ''
      ''
      
        '--insert into parametro values ('#39'ENVCAN'#39','#39'S'#39','#39'Envia excl de usu ' +
        'perdidos n'#227'o cancel?'#39','#39'U'#39')'
      '-- DELETE PARAMETRO WHERE CD_PARAMETRO = '#39'ENVCAN'#39)
    Left = 216
    Top = 344
  end
  object QuerySpProcessaAumentoMens: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'ALTER Procedure SpProcessaAumentoMens'
      ''
      
        '-- Esta procedure foi alterada em 19/12/2005, agora a data de re' +
        'ferencia '#233' para o aumento '#233' '
      
        '-- a data de inclus'#227'o do contratante titular e n'#227'o mais a data d' +
        'e inclus'#227'o do usu'#225'rio'
      
        '-- foi mantida a tela anterior com a tabela mensalidade_usuario_' +
        'dt_usu para consulta, '
      
        '-- pois todos os aumentos foram reprocessados com a data do cont' +
        'ratante.'
      
        '-- a procedure original foi mantida em SpProcessaAumentoMensDt_i' +
        'ni_usuario -- Enio'
      ''
      '--Declare'
      ''
      '@id_acrescimo int'
      ''
      '--set @id_acrescimo = 39'
      ''
      'as'
      ''
      'declare @dias    int,'
      #9'@Percent decimal(10,4), '
      #9'@plano'#9' int'#9'     ,'
      #9'@Data_Aumento Datetime'
      ''
      ''
      
        '-- Pega o percentual de aumento, qtde de dias que '#233' para dar aum' +
        'ento(quem tem x dias de inclusao)'
      '-- e o codigo do plano'
      ''
      'set dateformat dmy'
      ''
      'select '
      #9'@dias '#9'      = dias'#9#9','
      #9'@Percent      = Percentual / 100,'
      #9'@plano'#9'      = plano'#9'        ,'
      #9'@Data_Aumento = Data_Aumento'
      ''
      'from Acrescimo_inclusao where id_acrescimo = @id_acrescimo'
      ''
      ''
      'begin tran'
      ''
      ''
      
        '-- Aumenta o plano e coloca a data como a data de aumento como a' +
        ' data atual'
      ''
      
        '   update preco_plano set valor = valor + round((valor * @percen' +
        't),2),'
      '          data = getdate()'
      ''
      '   where codigo_plano = @plano'
      ''
      
        '-- Salva o valor atual para os usu'#225'rios do plano que est'#225' sofren' +
        'do aumento'
      ''
      'select  mu.*,'
      '        c.inclusao as DtContrat,'
      '        u.data_inclusao as inclusaoUsu'
      ''
      'into '
      #9'#mensalidade_usuario'
      ''
      'from '
      #9'mensalidade_usuario mu,'
      #9'usuario'#9#9'    u ,'
      #9'contratante'#9'    c'
      ''
      'where'
      #9'    mu.cd_usuario   = u.codigo'
      #9'and mu.dg_usuario   = u.digito'#9#9
      #9'and c.codigo'#9'    = u.contratante_titular'
      #9'and c.plano'#9'    = @plano'
      '--'#9'and c.exclusao '#9'    is null'
      '--'#9'and u.data_exclusao is null'
      '        and u.data_inclusao < @data_aumento'
      #9'-- pega o registro de maior id_acrescimo(ultimo aumento dado)'
      
        #9'and id_acrescimo    = (select max(id_acrescimo) from mensalidad' +
        'e_usuario mu1'
      #9#9#9#9'where'
      #9#9#9#9#9'    mu1.cd_usuario   = mu.cd_usuario'
      #9#9#9#9#9'and mu1.dg_usuario   = mu.dg_usuario)'
      #9#9#9
      
        '-- Coloca a data inclus'#227'o do usu'#225'rio = data inclus'#227'o do contrata' +
        'nte'
      ''
      
        '-- Coloca a data inclus'#227'o do usu'#225'rio = data inclus'#227'o do contrata' +
        'nte, quando a data inicio da '
      '-- tabela mensalidade for igual a data de inclus'#227'o do usu'#225'rio'
      ''
      
        'update #mensalidade_usuario set dtinicio = DtContrat where inclu' +
        'saoUsu >= dtInicio'
      ''
      ''
      '-- Verifica se existe dois valores para um unico usuario'
      ''
      'if exists'
      '(select cd_usuario, dg_usuario '
      ' from #mensalidade_usuario '
      ' group by cd_usuario, dg_usuario having count(*) > 1)'
      'begin'
      
        '   raiserror('#39'Existe mais de um valor de mensalidades para um ou' +
        ' mais usu'#225'rio, aumento n'#227'o realizado,'#39',16,1)'
      '   rollback tran'
      '   return -- interrompe a procedure'
      'end'
      ''
      '-- Atualiza os campos data inicio e valor da temp'
      ''
      'update #mensalidade_usuario '
      ''
      'set DtInicio = dateadd(dd,@dias,dtinicio),'
      '    VrBruto   = VrBruto + round((VrBruto * @percent),2)'
      ''
      '-- Aplica o desconto se houver..'
      ''
      'update #mensalidade_usuario'
      ''
      'set valor = VrBruto * (1 - (isnull(perc_desconto,0) / 100))'
      ''
      'from contratante c'
      ''
      
        'where c.codigo = cd_usuario -- associa'#231#227'o correta d'#250'vidas recorr' +
        'er a procedure AchaValorSeato no programa'
      ''
      ''
      ''
      
        '-- Se a data fim for menor que a data do aumento ent'#227'o o aumento' +
        ' vale a partir da data do aumento'
      '-- alterado em 15/10/2004'
      '-- para id acrescimo > que zero'
      ''
      'update #mensalidade_usuario '
      ''
      'set Dtinicio = @Data_Aumento'
      ''
      'where DtInicio < @Data_Aumento and id_acrescimo > 0'
      ''
      
        '-- para id acrescimo = zero coloca a data de inclusao do usuario' +
        ', pois o registro zero da tabela mensalidade usuario deve comeca' +
        'r'
      '-- com data inicio igual a data de inclusao do usuario'
      ''
      'update #mensalidade_usuario '
      ''
      'set Dtinicio = @Data_Aumento'
      'from usuario u'
      ''
      'where    DtInicio < @Data_Aumento '
      '     and #mensalidade_usuario.cd_usuario = u.codigo'
      '     and #mensalidade_usuario.dg_usuario = u.digito'
      '     and #mensalidade_usuario.id_acrescimo = 0'
      ''
      '--update #mensalidade_usuario'
      ''
      '--set DtInicio = @Data_Aumento --convert(char(10),getdate(),103)'
      ''
      '--where DtInicio < @Data_Aumento--getdate()'
      ''
      '-- Insere nova mensalidade para os usuarios '
      ''
      'insert into mensalidade_usuario'
      ''
      'select '
      #9'cd_usuario'#9', '
      #9'dg_usuario'#9', '
      #9'@id_acrescimo'#9', '
      #9'dtinicio'#9', '
      #9#39'01/01/2079'#39#9','
      #9'valor '#9#9','
      #9'VrBruto,'
      #9'GETDATE()'
      ''
      'from #mensalidade_usuario'
      ''
      
        '--  Atualiza a data fim do registro atual pra a data inicio do n' +
        'ovo registro menos um dia'
      ''
      'update mensalidade_usuario'
      ''
      'set dtFim = mu.DtInicio - 1'
      ''
      'from #mensalidade_usuario mu'
      ''
      'where     mu.cd_usuario   = mensalidade_usuario.cd_usuario'
      '      and mu.dg_usuario   = mensalidade_usuario.dg_usuario'
      ' and mu.id_acrescimo = mensalidade_usuario.id_acrescimo'
      ''
      ''
      
        '-- Atualiza o valor dos usuarios que tem data de inclus'#227'o superi' +
        'or a data do aumento'
      ''
      'update mensalidade_usuario'
      ''
      'set valor = valor + round((valor * @percent),2)'
      ''
      'from usuario u,'
      '     contratante c'
      ''
      'where '
      ''
      '          u.codigo        =  cd_usuario '
      '      and u.digito        =  dg_usuario      '
      '      and c.codigo'#9'  =  u.contratante_titular'
      '      and c.inclusao      >= @data_aumento'
      '      and c.plano'#9'  =  @plano'
      ''
      ''
      'commit'
      ''
      ''
      ''
      '')
    Left = 376
    Top = 288
  end
  object QuerySpProcessaAumentoMensDt_ini_usuario: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE Procedure SpProcessaAumentoMensDt_ini_usuario --38'
      ''
      '--Declare'
      ''
      '@id_acrescimo int'
      ''
      '--set @id_acrescimo = 39'
      ''
      'as'
      ''
      'declare @dias    int,'
      #9'@Percent decimal(10,4), '
      #9'@plano'#9' int'#9'     ,'
      #9'@Data_Aumento Datetime'
      ''
      ''
      
        '-- Pega o percentual de aumento, qtde de dias que '#233' para dar aum' +
        'ento(quem tem x dias de inclusao)'
      '-- e o codigo do plano'
      ''
      'set dateformat dmy'
      ''
      'select '
      #9'@dias '#9'      = dias'#9#9','
      #9'@Percent      = Percentual / 100,'
      #9'@plano'#9'      = plano'#9'        ,'
      #9'@Data_Aumento = Data_Aumento'
      ''
      'from Acrescimo_inclusao where id_acrescimo = @id_acrescimo'
      ''
      ''
      'begin tran'
      ''
      
        '-- Aumenta o plano e coloca a data como a data de aumento como a' +
        ' data atual'
      ''
      
        'update preco_plano set valor = valor + round((valor * @percent),' +
        '2),'
      '       data = getdate()'
      ''
      'where codigo_plano = @plano'
      ''
      
        '-- Salva o valor atual para os usu'#225'rios do plano que est'#225' sofren' +
        'do aumento'
      ''
      'select  mu.*'
      ''
      'into '
      #9'#mensalidade_usuario'
      ''
      'from '
      #9'mensalidade_usuario mu,'
      #9'usuario'#9#9'    u ,'
      #9'contratante'#9'    c'
      ''
      'where'
      #9'    mu.cd_usuario   = u.codigo'
      #9'and mu.dg_usuario   = u.digito'#9#9
      #9'and c.codigo'#9'    = u.contratante_titular'
      #9'and c.plano'#9'    = @plano'
      '--'#9'and c.exclusao '#9'    is null'
      '--'#9'and u.data_exclusao is null'
      '        and u.data_inclusao < @data_aumento'
      #9'-- pega o registro de maior id_acrescimo(ultimo aumento dado)'
      
        #9'and id_acrescimo    = (select max(id_acrescimo) from mensalidad' +
        'e_usuario mu1'
      #9#9#9#9'where'
      #9#9#9#9#9'    mu1.cd_usuario   = mu.cd_usuario'
      #9#9#9#9#9'and mu1.dg_usuario   = mu.dg_usuario)'
      #9#9#9
      ''
      '-- Verifica se existe dois valores para um unico usuario'
      ''
      'if exists'
      '(select cd_usuario, dg_usuario '
      ' from #mensalidade_usuario '
      ' group by cd_usuario, dg_usuario having count(*) > 1)'
      'begin'
      
        '   raiserror('#39'Existe mais de um valor de mensalidades para um ou' +
        ' mais usu'#225'rio, aumento n'#227'o realizado,'#39',16,1)'
      '   rollback tran'
      '   return -- interrompe a procedure'
      'end'
      ''
      '-- Atualiza os campos data inicio e valor da temp'
      ''
      'update #mensalidade_usuario '
      ''
      'set DtInicio = dateadd(dd,@dias,dtinicio),'
      '    VrBruto   = VrBruto + round((VrBruto * @percent),2)'
      ''
      '-- Aplica o desconto se houver..'
      ''
      'update #mensalidade_usuario'
      ''
      'set valor = VrBruto * (1 - (isnull(perc_desconto,0) / 100))'
      ''
      'from contratante c'
      ''
      
        'where c.codigo = cd_usuario -- associa'#231#227'o correta d'#250'vidas recorr' +
        'er a procedure AchaValorSeato no programa'
      ''
      ''
      ''
      
        '-- Se a data fim for menor que a data do aumento ent'#227'o o aumento' +
        ' vale a partir da data do aumento'
      '-- alterado em 15/10/2004'
      ''
      'update #mensalidade_usuario '
      ''
      'set Dtinicio = @Data_Aumento'
      ''
      'where DtInicio < @Data_Aumento'
      ''
      ''
      '--update #mensalidade_usuario'
      ''
      '--set DtInicio = @Data_Aumento --convert(char(10),getdate(),103)'
      ''
      '--where DtInicio < @Data_Aumento--getdate()'
      ''
      '-- Insere nova mensalidade para os usuarios '
      ''
      'insert into mensalidade_usuario'
      ''
      'select '
      #9'cd_usuario'#9', '
      #9'dg_usuario'#9', '
      #9'@id_acrescimo'#9', '
      #9'dtinicio'#9', '
      #9#39'01/01/2079'#39#9','
      #9'valor '#9#9','
      #9'VrBruto'
      ''
      'from #mensalidade_usuario'
      ''
      
        '--  Atualiza a data fim do registro atual pra a data inicio do n' +
        'ovo registro menos um dia'
      ''
      'update mensalidade_usuario'
      ''
      'set dtFim = mu.DtInicio - 1'
      ''
      'from #mensalidade_usuario mu'
      ''
      'where     mu.cd_usuario   = mensalidade_usuario.cd_usuario'
      '      and mu.dg_usuario   = mensalidade_usuario.dg_usuario'
      ' and mu.id_acrescimo = mensalidade_usuario.id_acrescimo'
      ''
      ''
      
        '-- Atualiza o valor dos usuarios que tem data de inclus'#227'o superi' +
        'or a data do aumento'
      ''
      'update mensalidade_usuario'
      ''
      'set valor = valor + round((valor * @percent),2)'
      ''
      'from usuario u,'
      '     contratante c'
      ''
      'where '
      ''
      '          u.codigo        =  cd_usuario '
      '      and u.digito        =  dg_usuario      '
      '      and c.codigo'#9'  =  u.contratante_titular'
      '      and u.data_inclusao >= @data_aumento'
      '      and c.plano'#9'  =  @plano'
      ''
      ''
      'commit'
      '')
    Left = 56
    Top = 400
  end
  object QuerySpVrMensalidade_dt_usu: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE procedure SpVrMensalidade_dt_usu --8810,'#39'01/01/2004'#39
      ''
      '@CdContratante int,'
      '@DtBase char(10)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare '
      '       @VrMensalidade smallmoney,'
      '       @QtdeUsu       smallint  ,'
      '       @VrDesconto    smallmoney,'
      
        '       @vrDescUni     smallmoney, -- s'#243' para o parametro out put' +
        ' '
      '       @cdUsuario     int       ,'#9
      '       @vrDescUsu     smallmoney'
      ''
      'set dateformat dmy'
      ''
      'select @VrMensalidade = isnull(sum(valor),0),'
      '       @QtdeUsu       =  count(*) '
      ''
      'from '
      #9'mensalidade_usuario_dt_usu m,'
      #9'usuario'#9#9'    u,'
      #9'contratante'#9'    c'
      ''
      'where'
      #9'    m.cd_usuario          = u.codigo'
      #9'and m.dg_usuario          = u.digito'
      #9'and c.codigo'#9#9'  = u.contratante_titular'
      '        and u.contratante_titular = @CdContratante'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      '        and @DtBase               between DtInicio and DtFim'
      ''
      ''
      
        'exec SpCalculaDesconto @CdContratante, @cdUsuario, @DtBase, @VrD' +
        'esconto output, @vrDescUni output, @vrDescUsu output'
      ''
      'select @VrMensalidade '#9#9'    as VrMensalidade'#9','
      '       @VrMensalidade - @VrDesconto as VrMensalidadeLiq , '
      '       @QtdeUsu '#9#9'    as qtdeUsu '#9#9', '
      '       @VrDesconto '#9#9'    as VrDesconto'
      ''
      ''
      ''
      ''
      '')
    Left = 216
    Top = 400
  end
  object QueryTr_i_incluiMensalidade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger Tr_i_incluiMensalidade on usuario'
      ''
      'for insert'
      ''
      'as'
      ''
      'set dateformat dmy'
      '--tb usuario'
      ''
      'declare @codigo      int     ,'
      '        @digito      int     ,'
      #9'@plano       Smallint,'
      '        @Grau_parent smallint,'
      '        @Valor       smallmoney,'
      #9'@DtInclusao  datetime  ,'
      '        @perc_desc   smallmoney,'
      '        @VrBruto     smallmoney'
      ''
      'select '
      #9'@codigo      = u.codigo'#9#9','
      #9'@digito      = u.digito'#9#9','
      #9'@plano       = c.plano          ,'
      '        @grau_parent = u.grau_parentesco,'
      '        @valor       = pp.valor'#9#9','
      #9'@DtInclusao  = c.inclusao       ,'
      #9'@VrBruto     = pp.valor'
      'from'
      ''
      '     inserted    u,'
      '     contratante c,'
      '     preco_plano pp'
      ''
      'where'
      '          u.codigo              = c.codigo'
      '      and pp.codigo_plano       = c.plano'
      '      and u.grau_parentesco     = pp.codigo_grau_parentesco'
      ''
      
        '-- O desconto est'#225' n'#227'o no contratante titular e sim no contratan' +
        'te'
      ''
      
        'select @perc_desc = isnull(perc_desconto,0) from contratante whe' +
        're codigo = @codigo'
      ''
      'set @valor = @valor * (1 - (@perc_desc / 100.00))'
      ''
      'if @valor >= 0'
      'begin'
      ''
      
        '   insert into mensalidade_usuario values (@codigo, @digito,0,@D' +
        'tInclusao,'#39'01/01/2079'#39',@valor,@VrBruto,getdate())'
      ''
      ''
      '   if @@rowcount = 0 '
      '   begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio, problema ao' +
        ' tentar calcular a mensalidade!'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else'
      'begin'
      
        '   raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio valor inv'#225'lido ' +
        #39', 16,1)'
      '   rollback tran'
      'end'
      ''
      ''
      '-- coloquei nessa trigger porque eh so de inser'#231#227'o'
      
        'if exists (select * from plano p, contratante c , inserted i whe' +
        're i.contratante_titular = c.codigo and c.plano = p.codigo and p' +
        '.ativo = 0)'
      'begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio, o plano do ' +
        'contratante est'#225' inativo!'#39',16,1)'
      '      rollback tran'
      'end'
      ''
      
        'UPDATE USUARIO SET updated = GETDATE() FROM inserted WHERE USUAR' +
        'IO.Codigo = inserted.Codigo AND Usuario.Digito = inserted.Digito'
      ''
      ''
      '')
    Left = 376
    Top = 344
  end
  object QueryPVerifCarenciaCrit: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter Procedure PVerifCarenciaCrit'
      ''
      '   @CdUsuario integer,'
      '   @DtBase    char(10),'
      '   @cd_servico integer,'
      '   @cd_dente  tinyint,'
      '   @cd_face   char(1),'
      '   @Dias      smallint,'
      '   @tipo      char(1),'
      '   @Sexante  tinyint,'
      '   @Hemiarco char(2),'
      '   @Arcada  char(2)'
      ''
      ''
      'as'
      ''
      'declare @DtAux smalldatetime, @cd_grupo smallint'
      ''
      'set dateformat dmy '
      
        'set @cd_grupo = (select cd_grupo from servicos where codigo = @c' +
        'd_servico)'
      'set @DtAux = @DtBase'
      ''
      'if @tipo = '#39'F'#39
      'begin'
      '   -- se servi'#231'o pertenter a algum grupo..analisa pelo grupo'
      ''
      '   if @cd_grupo is not null'
      '      '
      '      select o.numero, sum(i.quantidade) as qtde '
      ''
      '      from'
      #9'   orcamento o,'
      '  '#9'   itens_orcamento i,'
      #9'   FaceXorcamento f,'
      '           servicos s -- servico '
      '      where'
      #9'    o.numero     = i.orcamento'
      #9'and i.orcamento  = f.orcamento'
      #9'and i.incremento = f.incremento'
      '    and o.autorizado = 1'
      
        '        and s.cd_grupo   = @cd_grupo -- verif. todos os servicos' +
        ' do mesmo grupo'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = s.codigo'
      #9'and f.cd_dente   = @cd_dente'
      '        and f.cd_face    = @cd_face'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero'
      '      order by o.numero desc'
      '   '
      '   else'
      '   begin'
      '      select o.numero, sum(i.quantidade) as qtde '
      ''
      '      from'
      #9'   orcamento o,'
      '  '#9'   itens_orcamento i,'
      #9'   FaceXorcamento f'
      '      where'
      #9'    o.numero         = i.orcamento'
      '    and o.autorizado = 1'
      #9'and i.orcamento  = f.orcamento'
      #9'and i.incremento = f.incremento'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = @cd_servico'
      #9'and f.cd_dente   = @cd_dente'
      '        and f.cd_face    = @cd_face'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero'
      '      order by o.numero desc'
      '   end'
      ''
      'end'
      ''
      'else'
      ''
      'if @tipo = '#39'D'#39
      ''
      '   if @cd_grupo is not null'
      ''
      '      select o.numero,sum(i.quantidade) as qtde '
      ''
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i,'
      #9'DenteXorcamento d,'
      '        servicos s'
      '      where'
      #9'    o.numero     = i.orcamento'
      '    and o.autorizado = 1'
      #9'and i.orcamento  = d.orcamento'
      #9'and i.incremento = d.incremento'
      '        and s.cd_grupo   = @cd_grupo '
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = s.codigo'
      #9'and d.cd_dente   = @cd_dente'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '   group by o.numero'
      '   order by o.numero desc'
      ''
      ''
      '   else'
      ''
      '   select o.numero,sum(i.quantidade) as qtde '
      ''
      '   from'
      #9'orcamento o,'
      #9'itens_orcamento i,'
      #9'DenteXorcamento d'
      '   where'
      #9'o.numero         = i.orcamento'
      '    and o.autorizado = 1'
      #9'and i.orcamento  = d.orcamento'
      #9'and i.incremento = d.incremento'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = @cd_servico'
      #9'and d.cd_dente   = @cd_dente'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '   group by o.numero'
      '   order by o.numero desc'
      ''
      'else'
      ''
      'if @tipo = '#39'C'#39
      ''
      '   if @cd_grupo is not null'
      ''
      '      select o.numero,sum(quantidade) as qtde '
      '  '
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i,'
      '        servicos s'
      '      where'
      #9'    o.numero     = i.orcamento'
      '        and o.autorizado = 1'
      '        and s.cd_grupo   = @cd_grupo'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = s.codigo'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '   group by o.numero'
      ''
      '   order by o.numero desc'
      ''
      '   else'
      ''
      '   select o.numero,sum(quantidade) as qtde '
      ''
      '   from'
      #9'orcamento o,'
      #9'itens_orcamento i'
      '   where'
      #9'o.numero         = i.orcamento'
      '        and o.autorizado = 1'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = @cd_servico'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '   group by o.numero'
      '   order by o.numero desc'
      ''
      'else'
      ''
      'if @tipo = '#39'S'#39' -- sexante'
      ''
      '   if @cd_grupo is not null'
      ''
      '      select o.numero ,sum(quantidade) as qtde'
      ''
      '      from'
      #9'   orcamento o,'
      '   '#9'   itens_orcamento i,'
      '           servicos s'
      '      where'
      #9'       o.numero     = i.orcamento'
      '           and o.autorizado = 1'
      '           and s.cd_grupo   = @cd_grupo'
      '           and o.Usuario    = @CdUsuario'
      '           and i.servico    = s.codigo'
      '           and i.sexante    = @Sexante'
      '           and o.data       > @DtAux - @Dias'
      '           and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc '
      ''
      '   else'
      '      select o.numero ,sum(quantidade) as qtde'
      ''
      '      from'
      #9'   orcamento o,'
      '   '#9'   itens_orcamento i'
      '      where'
      #9'   o.numero         = i.orcamento'
      '           and o.autorizado = 1'
      '           and o.Usuario    = @CdUsuario'
      '           and i.servico    = @cd_servico'
      '           and i.sexante    = @Sexante'
      '           and o.data       > @DtAux - @Dias'
      '           and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc '
      ''
      'else'
      ''
      'if @tipo = '#39'H'#39' --Hemiarco'
      ''
      '   if @cd_grupo is not null'
      ''
      '      select o.numero,sum(quantidade) as qtde'
      '   '
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i,'
      '        servicos s'
      '      where'
      #9'    o.numero     = i.orcamento'
      '        and o.autorizado = 1'
      '        and s.cd_grupo   = @cd_grupo'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = s.codigo'
      '        and i.hemiarco   = @Hemiarco'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc '
      ''
      '   else'
      '      select o.numero,sum(quantidade) as qtde'
      '   '
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i'
      '      where'
      #9'    o.numero         = i.orcamento'
      '        and o.autorizado = 1'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = @cd_servico'
      '        and i.hemiarco   = @Hemiarco'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc '
      ''
      'else'
      ''
      'if @tipo = '#39'A'#39' --Arcada'
      ''
      '   if @cd_grupo is not null'
      ''
      '      select o.numero,sum(quantidade) as qtde'
      '   '
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i,'
      '        servicos s'
      '      where'
      '   '#9'    o.numero     = i.orcamento'
      '        and o.autorizado = 1'
      '        and s.cd_grupo   = @cd_grupo'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = s.codigo'
      '        and i.arcada     = @Arcada'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc '
      ''
      '   else'
      '      select o.numero,sum(quantidade) as qtde'
      '   '
      '      from'
      #9'orcamento o,'
      #9'itens_orcamento i'
      '      where'
      #9'o.numero         = i.orcamento'
      '        and o.autorizado = 1'
      '        and o.Usuario    = @CdUsuario'
      '        and i.servico    = @cd_servico'
      '        and i.arcada     = @Arcada'
      '        and o.data       > @DtAux - @Dias'
      '        and i.status     = '#39'A'#39' -- servi'#231'o ativo no orcamento'
      '      group by o.numero '
      '      order by o.numero desc'
      '')
    Left = 56
    Top = 464
  end
  object QueryTr_i_inseriDenteFace: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger Tr_i_u_inseriDenteFace on itens_orcamento'
      'for insert, update'
      ''
      'as'
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'CRI' +
        'ODO'#39') = '#39'S'#39' and'
      '   update(DenteFace)'
      ''
      'begin'
      ''
      '   declare @Faces varchar(5),'
      '           @i tinyint,'
      '           @tam tinyint'
      ''
      
        '   -- delete tudo pra incluir novamente, pois pode ser que alter' +
        'ou o dente..'
      ''
      
        '   delete DenteXorcamento from inserted i where DenteXorcamento.' +
        'orcamento = i.orcamento and DenteXorcamento.incremento = i.incre' +
        'mento'
      
        '   delete FaceXorcamento  from inserted i where FaceXorcamento.o' +
        'rcamento  = i.orcamento and FaceXorcamento.incremento = i.increm' +
        'ento'
      ''
      '  -- Posicao do Dente, se tem dente inseri na DenteXOrcamento'
      ''
      '  if (select substring(DenteFace,1,2) from inserted) <> '#39#39
      '  begin'
      '     insert into DenteXorcamento '
      
        '     select orcamento,incremento, substring(DenteFace,1,2) from ' +
        'inserted'
      ''
      ''
      '     select @Faces = substring(DenteFace,3,5)  from inserted'
      '     set @tam = len(@Faces)'
      '     set @i = 1'
      '     if @tam > 0 '
      '     while @i <= @tam '
      '     begin'
      '        insert into FaceXorcamento '
      
        '        select orcamento,incremento, substring(DenteFace,1,2), s' +
        'ubstring(@faces,@i,1) from inserted'
      '        set @i = @i + 1'
      '     end'
      '  end '
      '       '
      'end'
      ''
      '')
    Left = 216
    Top = 464
  end
  object Querysp_Upd_EventOdonto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure sp_Upd_EventOdonto'
      ''
      '@Orcamento   int,'
      '@incremento  int,'
      '@TpEvento    char(1),'
      '@Operador    int,'
      '@TxEvent     varchar(300),'
      '@Criterio    int,'
      '@tp_criterio varchar(11)'
      'as'
      ''
      
        'if exists(select * from EventOdontograma where orcamento = @orca' +
        'mento and incremento = @incremento)'
      ''
      '   update EventOdontograma '
      '        set tp_evento = @tpEvento,'
      '            cd_operador = @Operador,'
      '            tx_evento   = @TxEvent,'
      '            cd_criterio = @criterio,'
      '            tp_criterio = @tp_criterio'
      ''
      '   where'
      ''
      '         orcamento      = @orcamento'
      '         and incremento = @incremento'
      ''
      'else'
      ''
      
        '   insert into EventOdontograma values (@orcamento,@incremento,@' +
        'tpevento,@operador,@txevent,@criterio,@tp_criterio)')
    Left = 379
    Top = 464
  end
  object Querysp_manutAtraso: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure sp_manutAtraso --3,'#39'N'#39
      ''
      '@QtParAtraso smallint,'
      '@MostraExcluido char(1)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'select '
      '       identity(int,1,1) as indice ,'
      '       c.nome as Titular,'
      '       u.nome as usuario,'
      '       u.codigo_completo,'
      '       c.fone1,'
      '       c.fone2,'
      '       c.fax,'
      
        '       case when u.data_exclusao is not null then '#39'EXC'#39' else '#39#39' ' +
        'end as excluido,'
      '       count(*) as Qtde'
      '       '
      'into #Manutencao'
      ''
      'from '
      #9'usuario u, '
      #9'receber r, '
      #9'contratante c'
      ''
      ''
      'where '
      '         u.codigo         = c.codigo'
      '     and r.codigo_usuario = u.codigo_completo   '
      '     and (u.data_exclusao    is null or @MostraExcluido = '#39'S'#39')'
      '     and r.data_pagamento is null'
      '     and r.Data_Vencimento < convert(char(10),GETDATE(),103)'
      '     '
      '     and r.desdobramento = '#39'T'#39
      ''
      'group by '
      ''
      '          c.nome,'
      '          u.nome,'
      '          u.codigo_completo,'
      '          c.fone1,'
      '          c.fone2,'
      '          c.fax,'
      #9'  u.data_exclusao'
      '          having count(*) >= @QtParAtraso'
      ''
      'order by'
      ''
      '       c.nome,'
      '       u.nome'
      ''
      ''
      'declare @indice int, @MaxIndice int, @Nmcontrat varchar(100)'
      ''
      ''
      'set @maxindice = (select max(indice) from #manutencao)'
      ''
      
        'set @Nmcontrat = (select titular from #manutencao where indice =' +
        ' 1)'
      ''
      
        'set @indice = 2 -- Comeca no segundo registro p o primeiro j'#225' fo' +
        'i setado acima.'
      ''
      'while @indice <= @MaxIndice '
      'begin'
      ''
      
        '  if @NmContrat = (select titular from #manutencao where indice ' +
        '= @indice)'
      
        '      update #Manutencao set titular = '#39'--'#39', fone1 = '#39'**'#39', fone2' +
        ' = '#39'**'#39', fax = '#39'**'#39' where indice = @indice'
      ''
      
        '  set @Nmcontrat = (select titular from #manutencao where indice' +
        ' = @indice)'
      '  set @indice = @indice + 1   '
      'end'
      ''
      ''
      'select * from #Manutencao '
      ''
      '')
    Left = 1059
    Top = 96
  end
  object QueryTr_u_crit_idade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger Tr_u_crit_idade on ServicoXIdade'
      'for update'
      'as'
      ''
      
        '-- deixa alterar apenas a data de fim do criterio, caso j'#225' n'#227'o t' +
        'enha sido preenchida.'
      ''
      'if update(dt_fim_criterio) '
      'begin'
      
        '   if exists (select dt_fim_criterio from deleted where dt_fim_c' +
        'riterio is not null)'
      '   begin'
      
        '      raiserror('#39'N'#227'o '#233' poss'#237'vel alterar a data de exclus'#227'o, se n' +
        'ecess'#225'rio crie outro crit'#233'rio!'#39',16,1)'
      '      rollback tran'
      '   end'
      
        '   if exists(select dt_fim_criterio from inserted where dt_fim_c' +
        'riterio < dt_ini_criterio)'
      '   begin'
      
        '      raiserror('#39'Data fim de crit'#233'rio menor que a data in'#237'cio do' +
        ' crit'#233'rio!!'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else'
      'begin'
      
        '   raiserror('#39'N'#227'o '#233' poss'#237'vel alterar nenhum campo do crit'#233'rio, s' +
        'e necess'#225'rio finalize o crit'#233'rio e crie outro !'#39',16,1)'
      '   rollback tran'
      'end'
      ' ')
    Left = 227
    Top = 520
  end
  object QueryTr_i_crit_Idade1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger Tr_i_crit_Idade1 on ServicoXIdade'
      ''
      'for insert'
      '--'
      'as'
      ''
      
        'if exists(select * from inserted where dt_fim_criterio is not nu' +
        'll)'
      'begin'
      
        '   raiserror('#39'A Data fim do crit'#233'rio n'#227'o pode ser informada na i' +
        'nclus'#227'o,deixe a data de exclus'#227'o em branco !'#39',16,1)'
      '   rollback tran  '
      'end'
      ''
      'else'
      ''
      'if exists'
      '  ('
      '   select * from ServicoXIdade c, inserted i '
      '   where     c.cd_servico = i.cd_servico'
      
        '         and i.dt_ini_criterio between c.dt_ini_criterio and c.d' +
        't_fim_criterio'
      '         and i.cd_criterio <> c.cd_criterio'
      '  )'
      'begin'
      
        '   raiserror('#39'A Data in'#237'cio de validade do crit'#233'rio coincide com' +
        ' outro crit'#233'rio, altere a data do crit'#233'rio !'#39',16,1)'
      '   rollback tran  '
      'end'
      ''
      '--else'
      ''
      '--if exists'
      '   --('
      '   --select * from ServicoXIdade c, inserted i '
      '   --where     c.cd_servico = i.cd_servico'
      
        '         --and (c.dt_fim_criterio is null or i.dt_ini_criterio <' +
        ' c.dt_fim_criterio)'
      '         --and i.cd_criterio <> c.cd_criterio'
      '   --)'
      '--begin'
      
        '   --raiserror('#39'Existe outro crit'#233'rio v'#225'lido para este servi'#231'o n' +
        'o intervalo de data informado !'#39',16,1)'
      '   --rollback tran  '
      '--end')
    Left = 387
    Top = 528
  end
  object QueryTr_i_u_validacoesOdonto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger Tr_i_u_validacoesOdonto on itens_orcamento'
      ''
      'for insert, update'
      ''
      'as'
      ''
      '-- Verifica se o servi'#231'o inclu'#237'do ou atualizado est'#225' exclu'#237'do'
      
        'if(select count(servico) from deleted) = 0 -- se for zero ent'#227'o ' +
        't'#225' inserindo se for diferente de zero '#233' update'
      'begin'
      
        '   if exists(select orcamento from inserted i,  servicos s where' +
        ' s.codigo = i.servico and s.dt_exclusao is not null)'
      '   begin'
      
        '      raiserror('#39'TRVALIDADTEXSERV-Servi'#231'o n'#227'o pode ser utilizado' +
        ' o mesmo j'#225' foi exclu'#237'do !'#39',16,1)'
      '      rollback'
      '      return'
      '   end'
      'end'
      'else'
      'begin -- update'
      
        '   if exists(select i.orcamento from deleted d,inserted i,  serv' +
        'icos s '
      
        '              where d.Orcamento = i.orcamento and d.Incremento =' +
        ' i.incremento and s.codigo = i.servico and '
      
        '                    s.dt_exclusao is not null and d.servico <> i' +
        '.servico)'
      '   begin'
      
        '      raiserror('#39'TRVALIDADTEXSERV-Servi'#231'o n'#227'o pode ser utilizado' +
        ' o mesmo j'#225' foi exclu'#237'do !'#39',16,1)'
      '      rollback'
      '      return'
      '   end'
      'end'
      ''
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'VAL' +
        'DEN'#39') = '#39'S'#39
      ' '
      'begin'
      
        '    -- verifica se a qtde do servico por or'#231'amento foi ultrapass' +
        'ada '
      
        '    -- somente verifica se qt_orcamento for maior que zero, zero' +
        ' sig. que nao tem limite'
      
        '   if exists(select qt_orcamento from servicos s, inserted i whe' +
        're i.servico = s.codigo and qt_orcamento > 0)'
      ''
      
        '      if (select sum(it.quantidade) from itens_orcamento it, ins' +
        'erted i'
      
        '          where i.orcamento = it.orcamento and i.servico = it.se' +
        'rvico) -'
      '         (select qt_orcamento from servicos s, inserted i'
      '          where i.servico = s.codigo) > 0'
      '      begin'
      
        '        raiserror('#39'Quantidade m'#225'xima de servi'#231'o por or'#231'amento ul' +
        'trapassada, d'#250'vida verifique o cadastro do servi'#231'o !'#39',16,1)'
      '        rollback'
      '      end     '
      'end  '
      ''
      
        'if exists(select * from ServIncompativeisOdonto sio, inserted i ' +
        'where (i.servico = sio.cd_servico1 or i.servico = sio.cd_servico' +
        '2))'
      'begin'
      '        '
      
        '        select identity(int,1,1) seq, i.orcamento, sio.* into #t' +
        'emp from ServIncompativeisOdonto sio, inserted i where (i.servic' +
        'o = sio.cd_servico1 or i.servico = sio.cd_servico2)'
      ''
      #9'declare @ini int'
      #9'declare @fim int'
      #9'set @ini = 1'
      #9'set @fim = (select max(seq) from #temp)'
      
        #9'while @ini <= @fim -- faz o loop pq pode ter mais de uma regra ' +
        'para um determinado servi'#231'o'
      #9'begin'
      
        '            declare @QtServicoNoOrc int -- para pegar a qtde de ' +
        'servi'#231'os do servi'#231'o(cd_servico1)'
      
        '   '#9'    declare @QtmaximaServ1 int -- para pegar a qtde maxima d' +
        'o servico(cd_servico1), se tiver atingido a qtde maxima e contiv' +
        'er o servi'#231'o(cd_servico1) n'#227'o deixa gravar'
      ''
      
        '   '#9'    set @QtServicoNoOrc = (select isnull(count(*),0) from it' +
        'ens_orcamento ior, #temp t where ior.servico = t.cd_servico1 and' +
        ' ior.orcamento = t.orcamento and t.seq = @ini)'
      ''
      
        '   '#9'    set @QtmaximaServ1 = (select qt_servico1 from #temp wher' +
        'e seq = @ini)'
      ''
      '   '#9'    if @QtServicoNoOrc >= @QtmaximaServ1'
      '   '#9'    begin'
      
        '      '#9#9'if exists(select * from itens_orcamento i , #temp t wher' +
        'e t.seq = @ini and t.cd_servico2 = i.servico and t.orcamento = i' +
        '.orcamento)'
      #9'        begin'
      '         '#9'   declare @aux varchar(100)'
      
        '         '#9'   set @aux = '#39'Opera'#231#227'o cancelada, quando existir '#39' + ' +
        'cast(@QtmaximaServ1 as varchar(8)) + '#39' lan'#231'amentos do servi'#231'o '#39' ' +
        '+ (select cast(cd_servico1 as varchar(8)) from #temp where seq =' +
        ' @ini)'
      
        '         '#9'   set @aux = @aux + '#39' n'#227'o pode conter o servi'#231'o '#39' +  ' +
        '(select cast(cd_servico2 as varchar(8)) from #temp where seq = @' +
        'ini)'
      '         '#9'   raiserror(@aux,16,1)'
      '                   rollback tran'
      #9'           return'
      '      '#9#9'end'
      '   '#9'     end'
      '     '
      #9'   set @ini = @ini + 1'
      #9'end   '
      'end'
      ''
      '--select * from parametro where cd_parametro = '#39'VALDEN'#39
      ''
      '')
    Left = 75
    Top = 576
  end
  object Querytr_u_inibeAlterarUsu: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_u_inibeAlterarUsu on orcamento'
      'for update'
      ''
      'as'
      ''
      'if update(tp_cobranca) and (select Autorizado from inserted) = 1'
      'begin'
      
        '     raiserror('#39'Tipo de cobran'#231'a n'#227'o pode ser alterado em or'#231'ame' +
        'ntos autorizados, altere diretamente no t'#237'tulo'#39',16,1);'
      '     rollback tran'
      'end'
      ''
      'if update(autorizado)'
      'begin'
      
        '  if exists(select * from inserted where autorizado = 1 and data' +
        '_conferencia is null)'
      '  begin'
      
        '     raiserror('#39'Ocorreu uma falha na autorizacao do orcamento, o' +
        ' mesmo nao pode ser autorizado '#39',16,1)'
      '     rollback tran'
      '  end'
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'IN5' +
        '110'#39') = '#39'S'#39' and'
      'update(dentista)'
      
        'and exists(select * from itens_orcamento i, inserted o where o.n' +
        'umero = i.orcamento and i.servico = 5110 and o.dentista >= 1000)'
      'begin'
      
        '   raiserror('#39'N'#227'o pode ser aprovado or'#231'amento com o servi'#231'o 5110' +
        ' para este dentista'#39',16,1);'
      '   rollback tran'
      'end'
      
        'if update(usuario) and (select vl_parametro from parametro where' +
        ' cd_parametro = '#39'CRIODO'#39') = '#39'S'#39
      'begin'
      
        '   raiserror('#39'N'#227'o '#233' poss'#237'vel alterar o usu'#225'rio do or'#231'amento devi' +
        'do a restri'#231#245'es no odontograma'#39',16,1);'
      '   rollback tran'
      'end'
      ''
      ''
      ''
      ''
      'end'
      ''
      ''
      ''
      '')
    Left = 930
    Top = 272
  end
  object QueryServicoXFace: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table ServicoxFace'
      '(cd_servico int not null,'
      ' cd_face char(1) not null,'
      ' constraint pk_ServicoxFace primary key (cd_servico,cd_face),'
      
        ' constraint fk_ServicoXfaceServico foreign key (cd_servico) refe' +
        'rences servicos(codigo),'
      
        ' constraint fk_servicoxFaceFace foreign key(cd_face) references ' +
        'face(cd_face)'
      ')')
    Left = 314
    Top = 576
  end
  object QueryTr_i_u_inseriDenteFace: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger Tr_i_u_inseriDenteFace on itens_orcamento'
      'for insert, update'
      ''
      'as'
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'CRI' +
        'ODO'#39') = '#39'S'#39' and'
      '   update(DenteFace)'
      ''
      'begin'
      ''
      '   declare @Faces varchar(5),'
      '           @i tinyint,'
      '           @tam tinyint'
      ''
      
        '   -- delete tudo pra incluir novamente, pois pode ser que alter' +
        'ou o dente..'
      ''
      
        '   delete FaceXorcamento  from inserted i where FaceXorcamento.o' +
        'rcamento  = i.orcamento and FaceXorcamento.incremento = i.increm' +
        'ento'
      
        '   delete DenteXorcamento from inserted i where DenteXorcamento.' +
        'orcamento = i.orcamento and DenteXorcamento.incremento = i.incre' +
        'mento'
      ''
      '  -- Posicao do Dente, se tem dente inseri na DenteXOrcamento'
      ''
      '  if (select substring(DenteFace,1,2) from inserted) <> '#39#39
      '  begin'
      '     insert into DenteXorcamento '
      
        '     select orcamento,incremento, substring(DenteFace,1,2) from ' +
        'inserted'
      ''
      ''
      '     select @Faces = substring(DenteFace,3,5)  from inserted'
      '     set @tam = len(@Faces)'
      '     '
      
        '     -- para servicos de duas faces, as faces devem ser adjacent' +
        'es'
      ''
      '     if @tam = 2 and '
      
        '     not exists(select * from face_adjacente f,inserted d where ' +
        'cd_face     = substring(DenteFace,3,1) and'
      
        '                                                               c' +
        'd_face_adj = substring(DenteFace,4,1))'
      '     begin'
      
        '        raiserror('#39'As Faces informadas n'#227'o s'#227'o adjacentes! Os se' +
        'rvi'#231'os de duas faces devem ser executados em faces que sejam adj' +
        'acentes(d'#250'vidas, verifique o cadastro de Faces Adjacentes) !'#39',16' +
        ',1)'
      '        rollback'
      '     end'
      '     else'
      '     begin'
      '        set @i = 1'
      '        if @tam > 0 '
      '        while @i <= @tam '
      '        begin'
      '           insert into FaceXorcamento '
      
        '           select orcamento,incremento, substring(DenteFace,1,2)' +
        ', substring(@faces,@i,1) from inserted'
      '           set @i = @i + 1'
      '        end'
      '     end'
      '  end '
      '       '
      'end'
      ' ')
    Left = 408
    Top = 577
  end
  object QuerySpOrcApagar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter Procedure SpOrcApagar --'#39'01/01/2005'#39','#39'31/01/2005'#39',0,999999' +
        '9,0'
      ''
      '@DtIni          char(10),'
      '@Dtfim          char(10),'
      '@CdDentistaIni  int,'
      '@CdDentistaFim  int,'
      '@cdStatus       tinyint'
      ''
      'AS'
      ''
      'SET DATEFORMAT DMY'
      ''
      
        '-- CRIEI ESTA TEMP PRA FICAR PERFORMATICO POIS VAI FILTRAR APENA' +
        'S OS CODIGOS DE STATUS 1 3 E 9'
      '-- SEN'#195'O TERIA QUE USAR A INSTRU'#199#195'O "IN"'
      '--select * from status_orcamento'
      'CREATE TABLE #STATUS_ORCAMENTO'
      '('
      ''
      ' NR_ORCAMENTO INT'
      ''
      ')'
      'IF @cdStatus = 0  -- zero significa todos os status'
      ''
      'BEGIN'
      ''
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(1)'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(5)'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(9)'
      ''
      'END'
      'ELSE'
      '   INSERT INTO #STATUS_ORCAMENTO VALUES(@CdStatus)'
      ''
      ''
      'SELECT '
      #9'O.NUMERO,'
      '        O.DATA,'
      '        O.USUARIO,'
      #9'SO.DESCRICAO AS STATUS,'
      '        SP.DESCRICAO AS ST_PAGTO,'
      '        D.CODIGO AS CD_DENTISTA,'
      '        D.NOME AS DENTISTA,'
      '        TOTAL_DENTISTA,'
      '        TOTAL_PROTETICO,'
      '        TOTAL_DENTISTA - TOTAL_DENTISTA AS VR_PAGO_DENTISTA,'
      #9'TOTAL_PROTETICO - TOTAL_PROTETICO AS VR_PAGO_PROTETICO'
      ''
      'INTO #ORCAMENTO'
      'FROM '
      ''
      '   ORCAMENTO         O,'
      '   STATUS_ORCAMENTO SO,'
      '   STATUS_PAGTO     SP,'
      '   DENTISTA          D,'
      '   #STATUS_ORCAMENTO T'
      ''
      'WHERE'
      '     '
      '         O.STATUS           = SO.CODIGO'
      '     AND O.DENTISTA         = D.CODIGO'
      '     AND O.STATUS_PAGAMENTO = SP.CODIGO'
      '     AND O.STATUS_PAGAMENTO <> 1 -- PAGTO TOTALMENTE'
      '     AND O.AUTORIZADO       = 1'
      '     AND O.STATUS = T.NR_ORCAMENTO'
      '     AND O.DATA BETWEEN @DtIni AND @DtFIM'
      '     AND O.DENTISTA BETWEEN @CdDentistaIni AND @CdDentistaFim'
      ''
      'ORDER BY O.DATA'
      ''
      
        'UPDATE #ORCAMENTO SET VR_PAGO_DENTISTA  = ISNULL((SELECT SUM(VAL' +
        'OR) FROM ITENS_PAGDENTISTA  I WHERE I.ORCAMENTO = #ORCAMENTO.NUM' +
        'ERO),0)'
      ''
      
        'UPDATE #ORCAMENTO SET VR_PAGO_PROTETICO = ISNULL((SELECT SUM(VAL' +
        'OR) FROM ITENS_PAGPROTETICO I WHERE I.ORCAMENTO = #ORCAMENTO.NUM' +
        'ERO),0)'
      ''
      'SELECT TOTAL_DENTISTA  - VR_PAGO_DENTISTA  AS VR_DENTISTA, '
      '       TOTAL_PROTETICO - VR_PAGO_PROTETICO AS VR_PROTETICO,*'
      ''
      'FROM #ORCAMENTO'
      ''
      'ORDER  BY DENTISTA'
      '')
    Left = 472
    Top = 545
  end
  object QuerySpCalculaDesconto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      '--select * from usuario where codigo = 9164'
      ''
      '--  declare'
      '--  @VrDesconto    smallmoney ,'
      '--  @VrDescUnit    smallmoney ,'
      '--  @VrDescUsu     smallmoney '
      '--  '
      
        '--  exec SpCalculaDesconto 8810,88100,'#39'07/07/2004'#39',@VrDesconto o' +
        'utput,@VrDescUnit output,@vrDescUsu output'
      '--  select @VrDesconto ,@VrDescUnit ,@vrDescUsu'
      ''
      'alter Procedure SpCalculaDesconto --11553'
      ''
      '@CdContratante int,'
      
        '@cdUsuario     int = null, -- caso queira pesquisar um usu'#225'rio e' +
        'spec'#237'fico'
      '@DtBase        char(10) ,'
      '@VrDesconto    smallmoney output,'
      '@VrDescUnit    smallmoney output,'
      
        '@VrDescUsu     smallmoney output  -- se informado o usuario indi' +
        'ca se este tem desconto'
      ''
      ''
      'as'
      ''
      ''
      'set dateformat dmy'
      ''
      'Declare @Plano '#9#9' int'#9','
      #9'@QtdeUsuario '#9' smallint,'
      #9'@IdadeMaxCrianca tinyint,'
      #9'@VrDesc          smallmoney,'
      #9'@ConsideraCrianca bit'
      ''
      ''
      ''
      
        'select @plano = plano from contratante where codigo = @CdContrat' +
        'ante'
      ''
      ''
      
        '-- Pega a idade maxima considerada crian'#231'a, pq crian'#231'a n'#227'o conta' +
        '(qtde de dependentes)para dar desconto'
      '--  conforme tabela DescontoxNroUsuarios'
      ''
      'select @IdadeMaxCrianca = IdadeMaxCrianca from preferencia'
      '--select IdadeMaxCrianca from preferencia'
      '-- Pega a qtde de usuarios do contratante para dar o desconto'
      ''
      'select @QtdeUsuario = count(*) '
      ''
      'from'
      ''
      #9'usuario '#9'u,'
      #9'contratante '#9'c,'
      #9'plano'#9#9'p'
      ''
      ''
      'where'
      #9'    c.codigo         = u.contratante_titular'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and c.plano          = @plano'
      #9'and c.codigo '#9'     = @CdContratante'
      #9'and p.codigo         = c.plano        '
      
        #9'and ((p.ConsideraCrianca = 0 and ceiling(datediff(day,Data_Nasc' +
        'imento,@DtBase)/365.25) - 1   >  @IdadeMaxCrianca) -- Crian'#231'as n' +
        #227'o contam pq j'#225' possuem desconto'
      '             or p.consideraCrianca = 1)'
      
        '        -- o comando ceiling arredonda sempre para o inteiro mai' +
        's pr'#243'ximo'
      #9'-- est'#225' dividindo por 365.25 por causa do ano bixesto'
      
        '        -- verifica se o plano consedera criana ou n'#227'o para dar ' +
        'o desconto'
      ''
      
        'select @VrDesc = @QtdeUsuario * Valor_Desconto, @VrDescUnit = Va' +
        'lor_Desconto'
      ''
      'from DescontoxNroUsuarios d'
      ''
      'where'
      #9'    d.codigo_plano = @plano'
      #9'and @QtdeUsuario between d.Qtde_Usuarios1 and d.Qtde_Usuarios2'
      ''
      ''
      '-- Verifica se este usu'#225'rio em espec'#237'fico possui desconto'
      ''
      'set @VrDescUsu = isnull(@VrDescUnit,0)'
      ''
      'if @cdUsuario is not null'
      'begin'
      ''
      '   select @ConsideraCrianca = ConsideraCrianca'
      '   from  plano where codigo = @plano'
      ''
      '   if @ConsideraCrianca = 0 -- n'#227'o considera'
      '   begin'
      ''
      
        '        -- se o usuario for crianca e o plano nao considera cria' +
        'nca para desconto entao nao tem'
      '        -- desconto para esta crianca'
      ' '
      #9'if not exists (select * from usuario u'
      '           where'
      #9'          u.codigo_completo = @cdUsuario'
      
        '  '#9'      and ceiling(datediff(day,Data_Nascimento,@DtBase)/365.2' +
        '5) - 1   >  @IdadeMaxCrianca)'
      ''
      '           set @VrDescUsu = 0'
      '      '
      '   end'
      'end'
      ''
      'set @VrDesconto = isnull(@VrDesc,0)'
      'set @VrDescUnit = isnull(@VrDescUnit,0)'
      ''
      ''
      '')
    Left = 544
    Top = 505
  end
  object QueryUpdIdzero: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'update mensalidade_usuario set dtinicio = convert(datetime,conve' +
        'rt(char(10),u.data_inclusao,103),103)'
      'from'
      '(select * from usuario u where not exists'
      '(select * from mensalidade_usuario m '
      
        ' where m.cd_usuario = u.codigo and m.dg_usuario = u.digito and c' +
        'onvert(char(10),u.data_inclusao,103) = convert(char(10),m.dtinic' +
        'io,103) and m.id_acrescimo = 0)) u'
      
        'where u.codigo = mensalidade_usuario.cd_usuario and u.digito = m' +
        'ensalidade_usuario.dg_usuario'
      '      and mensalidade_usuario.id_acrescimo = 0'
      ' ')
    Left = 512
    Top = 369
  end
  object Querytr_u_AtualizacaoANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE trigger tr_u_AtualizacaoANS on contratante'
      'for update'
      ''
      'as'
      ''
      '-- caso mude alguma alteracao destes dados muda o flag'
      '--    alterado da tabela usuario'
      ''
      'if update(Endereco_Residencial) or'
      '   update(Bairro_Residencial  ) or'
      '   update(Cidade_Residencial  ) or'
      '   update(Estado_Residencial  ) or'
      '   update(CEP_Residencial     ) or '
      '   update(Numero_Res          ) or'
      '   update(Complemento_Res)'
      'begin'
      '   update usuario set alterado = 1 '
      '   from inserted i'
      '   where i.codigo = usuario.codigo'
      '   and usuario.alterado = 0'
      'end'
      ' ')
    Left = 536
    Top = 264
  end
  object spBaixaCnab: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure [dbo].[spBaixaCnab] @indice int, @operador int'
      '-- spBaixaCnab 790,22 --'
      'as'
      ''
      'begin tran'
      ''
      'declare @controle int'
      'declare @MaxCont  int'
      'declare @numero_titulo int'
      'declare @desdobramento char(1)'
      'declare @cdBaixa int'
      ''
      'update RetornoCNAB set desdobramento = r.desdobramento'
      'from receber r'
      'where     r.numero_titulo = RetornoCNAB.numero_titulo'
      
        '      and RetornoCNAB.desdobramento not in ('#39'T'#39','#39'M'#39','#39'U'#39','#39'N'#39') -- ' +
        'desdobramentos de 2006'
      
        'set @cdBaixa = (select vl_parametro from parametro where cd_para' +
        'metro = '#39'CBCNAB'#39')'
      ''
      
        'select identity(int,1,1) as controle, * into #BaixaCnab from Ret' +
        'ornoCNAB where indice = @indice and cd_retorno = @cdBaixa -- 6 b' +
        'aixa'
      ''
      
        '-- a partir de 01/03/2007 pode tirar o update abaixo, eh ref. a ' +
        'arq. enviado para a cef sem o desdobramento'
      ''
      'set @controle = 1'
      'set @MAxCont = (select max(controle) from #BaixaCnab)'
      ''
      ''
      ''
      'while @controle <= @MaxCont'
      'begin'
      ''
      '   '
      
        '   select  @numero_titulo = numero_titulo, @desdobramento = desd' +
        'obramento from #baixaCnab where controle = @controle'
      '   '
      
        '   select * into #receber from receber where numero_titulo = @nu' +
        'mero_titulo and desdobramento = @desdobramento'
      ''
      '   if @@rowcount = 0    '
      ''
      
        '      update retornoCnab set flag = 0, obs = '#39'TITULO NAO ENCONTR' +
        'ADO NO CONTAS A RECEBER'#39' where numero_titulo = @numero_titulo an' +
        'd indice = @indice'
      '   '
      '   else '
      
        '  if exists(select * from #receber where data_pagamento is not n' +
        'ull)'
      ''
      
        '      update retornoCnab set flag = 0, obs = '#39'J'#193' BAIXADO ANTERIO' +
        'RMENTE'#39' where numero_titulo = @numero_titulo and indice = @indic' +
        'e'
      ''
      '   else'
      '   if exists(select * from #receber r1, #baixaCnab r '
      '             where r1.valor > (r.vr_pago + 0.05)'
      '             and r1.numero_titulo = r.numero_titulo'
      '             and r.controle = @controle)'
      ''
      
        '      update retornoCnab set flag = 0, obs = '#39'O VALOR PAGO EH ME' +
        'NOR DO QUE O VALOR DO TITULO'#39' where numero_titulo = @numero_titu' +
        'lo   and indice = @indice'
      '   else          '
      '   begin'
      '      '
      '      declare @tipo_pagto varchar(5)'
      '      declare @tipo_cobranca varchar(5)'
      
        '      set @tipo_pagto = (select vl_parametro from parametro wher' +
        'e cd_parametro = '#39'TPBOL'#39') /*Tipo de pagamento quando for d'#233'bito ' +
        'autom'#225'ticoa*/'
      
        '      set @tipo_cobranca = (select vl_parametro from parametro w' +
        'here cd_parametro = '#39'TCBOL'#39') /*Tipo de COBRANCA DE BOLETO*/'
      '      if @tipo_pagto = '#39#39
      '          set @tipo_pagto = '#39'1'#39
      '      if @tipo_cobranca = '#39#39
      '          set @tipo_cobranca = '#39'10'#39
      '      update receber '
      
        '            set data_pagamento = convert(datetime,convert(char(1' +
        '0),getdate(),103),103),'
      '                juros          = vr_acrescimo,'
      '                desconto       = vr_desconto,'
      '                valor_pago     = vr_pago,'
      '                saldo          = saldo - valor_pago,'
      '                operador       = @operador,'
      '                Tipo_Pagamento = @tipo_pagto,'
      #9'Tipo_Cobranca  = @tipo_cobranca '
      '       from '
      '            #baixaCnab r'
      ''
      '       where'
      '                 r.numero_titulo = receber.numero_titulo'
      '             and r.controle  = @controle'
      ''
      
        '       -- o saldo pode ficar negativo caso haja pagamento com ju' +
        'ros..'
      ''
      
        '       update receber set saldo = 0 where saldo < 0 and numero_t' +
        'itulo = @numero_titulo'
      ''
      
        '       update retornoCnab set flag = 1, obs = '#39'T'#205'TULO BAIXADO CO' +
        'M SUCESSO'#39' where numero_titulo = @numero_titulo and indice = @in' +
        'dice'
      ''
      
        '      -- rotina identica a baixa do banespa, quando for T e tive' +
        'r orcamento dar baixa, duvidas'
      
        '      -- verificar FormGerarReceber ProcessaManutencao(pra cada ' +
        'parcela da manutencao eh gerado um orcamento)'
      ''
      '      update orcamento set status_pagamento = 1'
      ''
      '      from'
      '           #receber r'
      '      where'
      '                r.desdobramento = '#39'T'#39
      '            and r.orcamento is not null'
      '            and r.orcamento = orcamento.numero'
      ''
      '   end'
      ''
      '   set @controle = @controle + 1'
      ''
      '   drop table #receber'
      'end'
      ''
      '     insert into receber_formaLiqCNAB'
      '     select'
      #9'numero_titulo,'
      #9'desdobramento,'
      #9'cd_liquidacao'
      '     from RetornoCnab a'
      '     where'
      '        indice = @indice'
      '        and not exists'
      '       (select * from receber_formaLiqCNAB b'
      '        where     a.numero_titulo = b.numero_titulo'
      '              and a.desdobramento = b.desdobramento)'
      '        and exists'
      '        (select numero_titulo from receber r'
      '         where     a.numero_titulo = r.numero_titulo'
      '               and a.desdobramento = r.desdobramento)'
      '         and exists'
      '         (select * from FormaLiqCNAB240 f'
      '          where f.cd_liquidacao = a.cd_liquidacao)'
      ''
      '--delete tb RetornoCnab where indice = @indice and flag = 1'
      ''
      'commit')
    Left = 520
    Top = 441
  end
  object tr_u_d_inibeAlterPlano_TabPrecoXPlano: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'create trigger tr_u_d_inibeAlterPlano_TabPrecoXPlano on TabPreco' +
        'XPlano'
      'for delete,update'
      ''
      'as'
      ''
      'if exists(select * from deleted d, plano p'
      'where'
      ' d.plano = p.codigo'
      '      and p.ativo = 1)'
      'begin'
      
        '  raiserror('#39'Exclus'#227'o de registro n'#227'o permitida, o plano est'#225' at' +
        'ivo, para planos Ativos '#233' necess'#225'rio uma tabela de pre'#231'o X Plano' +
        #39',16,1)'
      '  rollback tran'
      'end'
      '')
    Left = 472
    Top = 184
  end
  object tr_u_inibeAlterPlano_TabPrecoXPlano: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'create trigger tr_u_inibeAlterPlano_TabPrecoXPlano on TabPrecoXP' +
        'lano'
      'for update'
      ''
      'as'
      ''
      'if update(plano)'
      'begin'
      
        '  raiserror('#39'Voc'#234' est'#225' alterando o plano, n'#227'o '#233' poss'#237'vel alterar' +
        ' o plano, para incluir um novo registro neste cadastro, clique n' +
        'o bot'#227'o incluir'#39',16,1)'
      '  rollback tran'
      'end ')
    Left = 504
    Top = 120
  end
  object QueryTempLogValorOrcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table TempLogValorOrcamento'
      '(data datetime ,'
      ' orcamento int,'
      ' contratante int,'
      ' usuario int,'
      ' dg_usuario tinyint,'
      ' plano int,'
      ' TabelaPreco int,'
      ' servico int,'
      ' vrServico smallmoney,'
      ' VrDentista smallmoney,'
      ' IncrementoItem int'
      ')')
    Left = 504
    Top = 64
  end
  object tr_i_u_valida_valores: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_i_u_valida_valores on itens_orcamento'
      'for insert,update'
      ''
      'as'
      ''
      '-- somente valida se o parametro abaixo estiver como S'
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'VAL' +
        'IDV'#39') = '#39'N'#39
      ' return'
      ''
      'declare '
      '        @Valor_servico   smallmoney,'
      '        @valor_bruto     smallmoney,'
      '        @valor_dentista  smallmoney,'
      '        @valor_protetico smallmoney,'
      '        @cd_usuario      int,'
      '        @dg_usuario      tinyint,'
      '        @servico         int,'
      '        @DtBase          char(10),'
      '        @msg             varchar(400)'
      '        '
      ''
      ''
      '-- para atualiza'#231#227'o em massa n'#227'o valida..'
      ''
      'if (select count(*) from inserted) = 1 '
      'begin'
      '  '
      '  select '
      '         @cd_usuario = codigo, '
      '         @dg_usuario = digito , '
      '         @servico    = i.servico ,'
      '         @DtBase     = convert(char(10),o.data,103)'
      ''
      '  from usuario u, inserted i, orcamento o '
      '  where o.numero = i.orcamento and o.usuario = u.codigo_completo'
      ' '
      
        '  exec pr_acha_valores_orc @cd_usuario,@dg_usuario,@servico,@DtB' +
        'ase,@Valor_servico output,@valor_bruto output,@valor_dentista ou' +
        'tput, @valor_protetico output'
      ''
      '  if exists'
      '  (select * from inserted where'
      ''
      
        '      (valor           - (@valor_servico   * quantidade) not bet' +
        'ween -1 and 1)'
      
        '   or (valor_bruto     - (@valor_bruto     * quantidade) not bet' +
        'ween -1 and 1)'
      
        '   or (valor_dentista  - (@valor_dentista  * quantidade) not bet' +
        'ween -1 and 1)'
      
        '   or (valor_protetico - (@valor_protetico * quantidade) not bet' +
        'ween -1 and 1))'
      ''
      '   begin'
      ''
      
        '--     select @msg =  '#39'Erro de valores, algum dos valores desse ' +
        'procedimento para este usu'#225'rio n'#227'o batem, este servi'#231'o n'#227'o poder' +
        #225' ser gravado, por favor saia e entre no programa novamente, se ' +
        'o problema persistir entre em contato com o desenvolvedor do sis' +
        'tema.'#39' +'
      
        '--                     '#39'Valor procedimento calculado = '#39' + str(v' +
        'alor,10,2) + '#39', valor procedimento correto = '#39' + str(@valor_serv' +
        'ico,10,2) + '#39', valor bruto calculado = '#39' + str(valor_bruto,10,2)' +
        ' + '#39', valor bruto correto = '#39' + str(@valor_bruto,10,2) +'
      
        '--                     '#39', valor dentista calculado = '#39' + str(val' +
        'or_dentista,10,2) + '#39', valor dentista correto = '#39' + str(@valor_d' +
        'entista,10,2) + '#39', valor protetico calculado = '#39' + str(valor_pro' +
        'tetico,10,2) + '#39', valor protetico correto = '#39' + str(@valor_prote' +
        'tico,10,2)'
      
        '     set @msg =  '#39'Erro de valores, algum dos valores desse proce' +
        'dimento para este usu'#225'rio n'#227'o batem, este servi'#231'o n'#227'o poder'#225' ser' +
        ' gravado, por favor saia e entre no programa novamente, se o pro' +
        'blema persistir entre em contato com o desenvolvedor do sistema.' +
        #39
      '     raiserror(@msg,16,1)'
      ''
      
        '     select @msg =   '#39'Valor procedimento calculado = '#39' + str(val' +
        'or,10,2) + '#39', valor procedimento correto = '#39' + str(@valor_servic' +
        'o * quantidade,10,2) + '#39', valor bruto calculado = '#39' + str(valor_' +
        'bruto,10,2) + '#39', valor bruto correto = '#39' + str(@valor_bruto * qu' +
        'antidade,10,2) +'
      
        '                     '#39', valor dentista calculado = '#39' + str(valor' +
        '_dentista,10,2) + '#39', valor dentista correto = '#39' + str(@valor_den' +
        'tista * quantidade,10,2) + '#39', valor protetico calculado = '#39' + st' +
        'r(valor_protetico,10,2) + '#39', valor protetico correto = '#39' + str(@' +
        'valor_protetico * quantidade,10,2)'
      ''
      '     from inserted'
      '  '
      '     raiserror(@msg,16,1)'
      '     rollback tran'
      ''
      '   end'
      ''
      'end')
    Left = 448
    Top = 16
  end
  object pr_acha_valores_orc: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure pr_acha_valores_orc'
      '-- enzo'
      
        '-- esta procedure calcula os valores dos servicos digitados no o' +
        'rcamento'
      
        '-- identica as procedures no formorcamento achavalor e achacober' +
        'tura'
      '-- desenvolvi para ser chamada na trigger tr_i_u_valida_valores'
      '-- devido ao problema de valores errado no orcamento'
      ''
      ''
      '@cd_usuario int, '
      '@dg_usuario tinyint,'
      '@servico    int, '
      '@dtBase     char(10),'
      '@Valor_servico   smallmoney output,'
      '@valor_bruto     smallmoney output,'
      '@valor_dentista  smallmoney output,'
      '@valor_protetico smallmoney output,'
      '@dtReferencia    char(10) = null ,'
      '@mostraErro     char(1) = '#39'S'#39
      ''
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare @plano           int,'
      '        @tabela          int,'
      '        @tabelaCobert    int,'
      '        @qtDiasPlano     int,'
      '        @valorUS         smallmoney,'
      '        @dtinclusao      smalldatetime,'
      '        @percent         decimal(5,2)'
      ''
      ''
      ''
      '-- para atualiza'#231#227'o em massa n'#227'o valida..'
      ''
      'set @plano = (select plano from  contratante c'
      '             where c.codigo = @cd_usuario)'
      '-- para for'#231'ar uma simula'#231#227'o de data de inclus'#227'o'
      'if not @dtReferencia is null'
      '   set @dtinclusao = @dtReferencia'
      'else'
      
        '  set @dtinclusao = (select dt_ini_cobertura from usuario where ' +
        'codigo = @cd_usuario and digito = @dg_usuario)'
      ''
      
        'set @tabela = (select tabelaPreco from  TabPrecoXPlano where pla' +
        'no = @plano and ativa = 1)'
      ''
      'if @@rowcount = 0'
      'begin'
      
        '  raiserror('#39'N'#227'o h'#225' tabela ativa para este plano, opera'#231#227'o Cance' +
        'lada'#39',16,1)'
      '  return '
      'end'
      ''
      '--select @tabela tabela, @plano plano'
      ''
      'set @valorUS = (select valor_us from preferencia)'
      ''
      'select'
      '        @valor_servico   = vp.valor_cobranca * @ValorUs,'
      '        @valor_bruto     = vp.valor_cobranca * @ValorUs,'
      '        @Valor_Dentista  = vp.Valor_Dentista,'
      '        @Valor_Protetico = vp.Valor_Protetico'
      '  from '
      '        ValorxProcedimento vp'
      '  where '
      '            vp.codigo_tabela = @tabela'
      '        and vp.codigo_servico = @servico'
      '  '
      '  if @@rowcount = 0'
      '  begin'
      '  '
      '    SET @valor_servico   = 0'
      '    SET @valor_bruto     = 0'
      '    SET @Valor_Dentista  = 0'
      '    SET @Valor_Protetico = 0'
      '  '
      '    if @mostraErro = '#39'S'#39'    '
      '    '
      
        '       raiserror('#39'N'#227'o h'#225' valor para o servi'#231'o, opera'#231#227'o Cancelad' +
        'a'#39',16,1)'
      '    return '
      '  end'
      ''
      '--select @valor_servico as valor_servico1'
      ''
      
        '  set @tabelaCobert = (select top 1 tabela_cobertura from Tabela' +
        'CoberturaXPlano'
      
        '                       where Plano = @plano and Ativa = 1 order ' +
        'by Plano)'
      ''
      '  set @qtDiasPlano = (select datediff(dd,@dtinclusao,@dtBase))'
      ''
      ' if @qtDiasPlano < 0 '
      '   set @qtDiasPlano = 1'
      ''
      
        '--select * from CoberturaxProcedimento  where codigo_procediment' +
        'o = 1020'
      
        '--select @tabelaCobert tabCobert,@servico Servico ,@qtDiasPlano ' +
        'dias'
      ''
      '  select top 1 '
      '         @percent = isnull(percentual,0)'
      ''
      '  from'
      
        '        CoberturaxProcedimento -- select * from CoberturaxProced' +
        'imento'
      ''
      '  where'
      '            codigo_tabela       = @tabelaCobert'
      '        and codigo_procedimento = @servico'
      '        and @qtDiasPlano >= dias'
      ''
      '  order by dias desc'
      ' if @percent is null'
      '   set @percent = 0'
      ''
      '-- select @valor_servico as valor_servico2,@percent as percentt'
      '--select @valor_servico as valor_servico2'
      
        '  --select @servico, @tabelaCobert tabela, @plano plano, @dtincl' +
        'usao dtInclusao,@dtBase dtBase, @qtDiasPlano dias_plano, @percen' +
        't percentual, @valor_servico vr_servico_procedure_antes'
      
        '  set @valor_servico =  @valor_servico * ((100 - @percent) / 100' +
        ')'
      
        '  --select @tabelaCobert tabela, @plano plano, @dtinclusao dtInc' +
        'lusao,@dtBase dtBase, @qtDiasPlano dias_plano, @percent percentu' +
        'al, @valor_servico  vr_servico_procedure'
      ''
      '--select @valor_servico as valor_servico3'
      ''
      '-- -- teste'
      '-- -- declare'
      '-- -- @Valor_servico   smallmoney ,'
      '-- -- @valor_bruto     smallmoney ,'
      '-- -- @valor_dentista  smallmoney ,'
      '-- -- @valor_protetico smallmoney'
      '-- --'
      
        '-- -- exec pr_acha_valores_orc 13613,0,1107,'#39'14/10/2006'#39',@Valor_' +
        'servico output,@valor_bruto output,@valor_dentista output, @valo' +
        'r_protetico output'
      '-- --'
      '-- -- select @Valor_servico valor_servico,'
      '-- --        @valor_bruto valor_bruto,'
      '-- --        @valor_dentista valor_dentista,'
      '-- --        @valor_protetico valorprotetico'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 552
    Top = 16
  end
  object QueryGrupo_servico: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table Grupo_servico'
      '(cd_grupo smallint not null,'
      ' ds_grupo varchar(30) not null,'
      ' ativo bit not null,'
      ' constraint pk_grupo_servico primary key (cd_grupo)'
      ')')
    Left = 640
    Top = 24
  end
  object Tr_u_crit_Odonto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger Tr_u_crit_Odonto on criterio_odontograma'
      'for update'
      'as'
      ''
      
        '-- deixa alterar apenas a data de fim do criterio, caso j'#225' n'#227'o t' +
        'enha sido preenchida.'
      ''
      'if update(dt_fim_criterio) '
      'begin'
      
        '   if exists (select dt_fim_criterio from deleted where dt_fim_c' +
        'riterio is not null)'
      '   begin'
      
        '      raiserror('#39'N'#227'o '#233' poss'#237'vel alterar a data de exclus'#227'o, se n' +
        'ecess'#225'rio crie outro crit'#233'rio!'#39',16,1)'
      '      rollback tran'
      '   end'
      
        '   if exists(select dt_fim_criterio from inserted where dt_fim_c' +
        'riterio < dt_ini_criterio)'
      '   begin'
      
        '      raiserror('#39'Data fim de crit'#233'rio menor que a data in'#237'cio do' +
        ' crit'#233'rio!!'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else'
      'begin'
      
        '   raiserror('#39'N'#227'o '#233' poss'#237'vel alterar nenhum campo do crit'#233'rio, s' +
        'e necess'#225'rio finalize o crit'#233'rio e crie outro !'#39',16,1)'
      '   rollback tran'
      'end')
    Left = 640
    Top = 80
  end
  object Tr_u_InibeEdicaoItensOrc: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger Tr_u_InibeEdicaoItensOrc on itens_orcamento'
      'for update'
      ''
      'as'
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'CRI' +
        'ODO'#39') = '#39'S'#39
      ''
      ''
      
        '   -- n'#227'o deixa alterar os campos abaixo, pois as valida'#231#245'es no ' +
        'or'#231'amento exigir'#227'o tratamento para inser'#231#227'o e tamb'#233'm '
      '   -- para edi'#231#227'o'
      ''
      '   if '
      #9'update(DenteFace)  or '
      #9'update(quantidade) or '
      #9'update(servico)    or '
      #9'update(hemiarco)   or '
      #9'update(sexante)    or '
      #9'update(arcada)'
      '   begin'
      
        '     raiserror('#39'N'#227'o '#233' permitido alterar os seguintes campos(Dent' +
        'e X Face, Quantidade, Servi'#231'o, Hemiarco,Sexante,Arcada), excluar' +
        ' o registro e inclua novamente'#39',16,1)'
      '     rollback tran'
      '   end'
      ''
      ''
      ''
      ''
      '')
    Left = 640
    Top = 144
  end
  object tr_u_registraBaixa: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_u_registraBaixa on receber'
      ''
      'for update'
      ''
      'as'
      ''
      'if update(Data_Pagamento)'
      'begin'
      '   '
      
        '   -- qdo for pagamento em cart'#227'o e for manutencao, colocar a da' +
        'ta de pagamento como a data do dia'
      
        '   -- para que o dentista possa receber a vista(obs: so para car' +
        'tao de credito pois o recebimento eh garantido'
      
        '   update receber set receber.dt_pagDentista = convert(datetime,' +
        'convert(char(10),getdate(),103),103)   '
      '   '
      '   from inserted i, Tipos_Pagamentos tp, parametro p'
      '   '
      '   where     i.Numero_Titulo  = receber.Numero_Titulo'
      '         and i.Desdobramento  = receber.Desdobramento'
      '         and i.Tipo_Pagamento = tp.Id_TipoPgto'
      '         and tp.eh_cartao     = '#39'S'#39
      '         and i.desdobramento  = '#39'T'#39
      '         and i.tipo_documento = 5'
      '         and p.cd_parametro   = '#39'HPDC'#39
      
        '         AND P.vl_parametro   = '#39'S'#39' -- SO ATUALIZA DESSA MANEIRA' +
        ' SE O PARAMETRO HPDC FOR S'
      
        '         and i.Data_Pagamento is not null -- nao for cancelament' +
        'o'
      ''
      '   '
      '   '
      
        '   if @@ROWCOUNT = 0 -- se nao for manutencao com pagto em cart'#227 +
        'o so atualiza a data igual a data de pagamento'
      '   begin'
      
        '      if exists(select * from inserted where (dt_pagDentista is ' +
        'null and Data_Pagamento is not null) or (dt_pagDentista is not n' +
        'ull and Data_Pagamento is  null))'
      '      begin'
      
        '        update receber set receber.dt_pagDentista = receber.Data' +
        '_Pagamento from inserted i '
      
        '        where receber.Numero_Titulo = i.Numero_Titulo and recebe' +
        'r.Desdobramento = i.Desdobramento'
      '      end'
      '    end'
      '   '
      
        '   if exists(select * from inserted where data_pagamento is not ' +
        'null)'
      '   begin      '
      '      if not exists(select * from registro_baixa a, inserted b'
      '                    where a.numero_titulo = b.numero_titulo'
      '                          and a.desdobramento = b.desdobramento)'
      ''
      '         insert into registro_baixa '
      
        '         select numero_titulo,desdobramento, getdate() from inse' +
        'rted'
      '      '
      '   end'
      '   else'
      '   begin'
      '      if exists(select * from registro_baixa a, inserted b'
      '                    where a.numero_titulo = b.numero_titulo'
      '                          and a.desdobramento = b.desdobramento)'
      ''
      '         delete registro_baixa '
      '         from inserted b '
      
        '         where     registro_baixa.numero_titulo = b.numero_titul' +
        'o'
      
        '               and registro_baixa.desdobramento = b.desdobrament' +
        'o'
      '   end'
      
        '   -- para pagamento de tratamento muda o status do orcamento pa' +
        'ra pago total'
      
        '   -- para cada titulo de tratamento eh incluido um registro de ' +
        'or'#231'amento'
      '   update orcamento set status_pagamento = 1'
      '   from inserted i'
      '   where i.orcamento = orcamento.numero'
      '         and i.desdobramento = '#39'T'#39
      '         and i.tipo_documento = 5'
      '  '
      '  if exists(select * from inserted i, '
      '                          contratante c, '
      #9#9#9#9#9#9'  plano p '
      #9#9#9'  where i.Codigo_Contratante = c.codigo '
      #9#9#9'    and c.plano = p.Codigo '
      #9#9#9#9'and p.lg_orc_incorporado_mens = 1 '
      #9#9#9#9'and i.Desdobramento = '#39'M'#39
      #9#9#9#9'and i.Data_Pagamento is not null)'
      '   begin'
      '   '
      
        '      update receber  set receber.Data_Pagamento = i.Data_Pagame' +
        'nto '
      #9'  from inserted i'
      #9'  where receber.Codigo_Contratante = i.Codigo_Contratante'
      
        #9'    and substring(convert(char(10),receber.Data_Vencimento,103)' +
        ',4,7)  = substring(convert(char(10),i.Data_Vencimento,103),4,7)'
      #9#9'and receber.Data_Pagamento is null'
      #9#9'and receber.Valor = 0'
      #9#9'and receber.Desdobramento = '#39'T'#39
      '   end'
      '   '
      'end'
      ''
      ''
      '')
    Left = 664
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
  end
  object sp_lastDayMonth: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure sp_lastDayMonth(@MesAno varchar(7))'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare @Dtstr varchar(10)'
      ''
      'set @DtStr = '#39'01/'#39' + @MesAno'
      ''
      
        'set @DtStr = (select convert(char(10),dateadd(day,31,@DtStr),103' +
        '))'
      ''
      'set @dtStr = '#39'01/'#39' + substring(@DtStr,4,7)'
      ''
      'select convert(char(10),dateadd(day,-1,@DtStr),103) LastDayMonth')
    Left = 605
    Top = 135
  end
  object Sp_alterarVrMen_GrauParent: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter Procedure Sp_alterarVrMen_GrauParent'
      ''
      '@cd_usuario int,'
      '@Digito     int,'
      '@ValorNovo  smallmoney,'
      '@ValorAntig smallmoney,'
      '@descAntig  smallmoney,'
      '@NmFunc     varchar(20),'
      '@Retorno   char(1) output'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      ''
      'declare @dtAtual Datetime , @QtdeMensValida int, @GrauAntigo int'
      ''
      
        'set @dtAtual = convert(datetime,convert(char(10),getdate(),103),' +
        '103)'
      ''
      
        'select @GrauAntigo = grau_parentesco from usuario where codigo =' +
        ' @cd_usuario and digito = @digito'
      ''
      'select @QtdeMensValida = count(*) from  mensalidade_usuario'
      ''
      'where     cd_usuario = @cd_usuario'
      '      and dg_usuario = @digito'
      '      and dtfim      >= @DtAtual'
      ''
      'if @QtdeMensValida > 1 '
      'begin'
      '  set @Retorno = '#39'1'#39' -- teve acrescimo alterar manual via script'
      '  declare @str varchar(100)'
      
        '  set @str = convert(char(10),@dtatual,103) + '#39'codigo = '#39' + cast' +
        '(@cd_usuario as varchar(10)) + '#39' digito = '#39' + cast(@digito as va' +
        'rchar(2)) + '#39' -Teve aumento(Sp_alterarVrMen_GrauParent)'#39
      '  raiserror(@str,16,1)'
      'end'
      ''
      'else'
      ''
      'begin'
      ''
      '   begin tran'
      ''
      '   '
      '   update  mensalidade_usuario set valor = @valorNovo'
      ''
      '   where     cd_usuario = @cd_usuario'
      '         and dg_usuario = @digito'
      '         and getdate() between DtInicio and dtfim'
      ''
      
        '--   insert into mensalidade_usuario values (@cd_usuario,@digito' +
        ',43,@DtAtual,'#39'01/01/2079'#39',@valorNovo)'
      ''
      
        '   insert into historico_grau_parentesco values (getdate(),@NmFu' +
        'nc,@GrauAntigo,@ValorAntig,@descAntig)'
      ''
      '   commit'
      ''
      '   set  @retorno = '#39'0'#39' -- deu tudo certo'
      ''
      'end'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 602
    Top = 295
  end
  object Altera_Receber: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter TRIGGER Altera_Receber ON Orcamento'
      'FOR UPDATE--, DELETE '
      'AS'
      'Update Receber set Status_Orcamento = Inserted.Status'
      'from Inserted'
      'where Receber.Orcamento = Inserted.Numero'
      ''
      
        '-- if exists(select * from parametro where cd_parametro = '#39'ALTOR' +
        'C'#39' and vl_parametro = '#39'N'#39')'
      '-- begin'
      '-- '
      
        '--    if not update(autorizado) and not update(status_pagamento)' +
        ' and not update(Status)'
      '--    begin'
      
        '--       if exists(select * from inserted i where autorizado = 1' +
        ')'
      '--       begin'
      
        '--          raiserror('#39'Or'#231'amento j'#225' aprovado, n'#227'o '#233' poss'#237'vel ate' +
        'r'#225'-lo'#39',16,1)'
      '--          rollback tran'
      '--       end'
      '-- '
      '--       if exists(select * from deleted i where autorizado = 1)'
      '--       begin'
      
        '--          raiserror('#39'Or'#231'amento j'#225' aprovado, n'#227'o '#233' poss'#237'vel exc' +
        'lu'#237'-lo'#39',16,1)'
      '--          rollback tran'
      '--       end'
      '--    end'
      ''
      '--end'
      ''
      '')
    Left = 738
    Top = 335
  end
  object tr_i_u_d_verifAprovacao: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_i_u_d_verifAprovacao on itens_orcamento'
      'for insert,update, delete'
      ''
      'as'
      
        'if exists(select * from parametro where cd_parametro = '#39'ALTORC'#39' ' +
        'and vl_parametro = '#39'N'#39')'
      'begin'
      ''
      
        '   if exists(select * from inserted i, orcamento o where o.numer' +
        'o = i.orcamento and o.autorizado = 1)'
      '   begin'
      
        '      raiserror('#39'Or'#231'amento j'#225' aprovado, n'#227'o '#233' poss'#237'vel ater'#225'-lo'#39 +
        ',16,1)'
      '      rollback tran'
      '   end'
      ''
      
        '   if exists(select * from deleted i, orcamento o where o.numero' +
        ' = i.orcamento and o.autorizado = 1)'
      '   begin'
      
        '      raiserror('#39'Or'#231'amento j'#225' aprovado, n'#227'o '#233' poss'#237'vel exclu'#237'-lo' +
        #39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      '')
    Left = 762
    Top = 415
  end
  object esp_x_dentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table esp_x_dentista'
      '(cd_dentista int not null,'
      ' cd_especialidade smallint not null,'
      ' AnoFormacao smallint not null,'
      
        ' constraint pk_esp_x_dentista primary key(cd_dentista,cd_especia' +
        'lidade),'
      
        ' constraint fk_dentista_esp foreign key (cd_dentista) references' +
        ' dentista(codigo),'
      
        ' constraint fk_esp_esp_dentista foreign key(cd_especialidade) re' +
        'ferences especialidade(cd_especialidade)'
      ')')
    Left = 656
    Top = 385
  end
  object endereco_x_dentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table endereco_x_dentista'
      '(cd_dentista int not null,'
      ' ds_endereco varchar(30) not null,'
      ' logradouro varchar (40) not null,'
      ' bairro     varchar (25) ,'
      ' cep        varchar (12) ,'
      ' cd_cidade  smallint     not null,'
      ' fone1      varchar (15),'
      ' hr_ini_atend varchar(5),'
      ' hr_fim_atend varchar(5),'
      
        ' constraint pk_ender_x_dents primary key (cd_dentista,ds_enderec' +
        'o),'
      
        ' constraint fk_dentista_ende_dentista foreign key (cd_dentista) ' +
        'references dentista (codigo),'
      
        ' constraint fk_ende_dent_cidade foreign key (cd_cidade) referenc' +
        'es cidade (cd_cidade))')
    Left = 698
    Top = 509
  end
  object sp_relOrc_sip: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure  sp_relOrc_sip @periodo varchar(07)'
      ''
      '--declare @periodo varchar(07)'
      '--set @periodo = '#39'02/2008'#39
      ''
      'as'
      ''
      'declare @dtiniManut as datetime '
      'declare @dtfimManut as datetime'
      ''
      
        '/*manutencao eh sempre o mes anterior, abaixo esta pegando o pri' +
        'meiro e ultimo dia do mes anterior*/'
      ''
      'set @dtiniManut = '#39'01/'#39' + @periodo'
      'set @dtfimManut =  dateadd(SECOND,-1,@dtiniManut)'
      
        'set @dtiniManut  = '#39'01/'#39' + substring(convert(char(10),@dtfimManu' +
        't,103),4,7)'
      ''
      '-- dentista'
      'select '#39'D'#39' tipo,'
      #9'id.Orcamento,'
      '        id.servico, '
      #9'sum(id.Quantidade_Paga * s.qtVezesTISS) as qt_paga,'
      #9'SUM (id.valor) vr_pagDentista,'
      #9'cast(0.0 as money) vr_pagProtetico,'
      #9'sum(io.valor) as copart'
      #9
      ''
      'into #itens_pagdentista'
      ''
      'from  itens_pagdentista id, itens_orcamento io , servicos s'
      ''
      'where MesAno = @Periodo '
      'and io.orcamento = id.orcamento'
      'and io.incremento = id.incremento'
      'and s.Codigo = id.Servico'
      ''
      'group by id.orcamento,id.servico'
      ''
      '-- protetico'
      ''
      'insert into #itens_pagdentista'
      'select '#39'P'#39' tipo,'
      #9'id.Orcamento,'
      '        id.servico, '
      #9'sum(id.Quantidade_Paga  * s.qtVezesTISS) as qt_paga,'
      #9'0.0 vr_dentista,'
      #9'SUM(id.valor) as vr_pagProtetico,'
      #9'sum(io.valor) as copart'
      #9
      ''
      'from Itens_PagProtetico id , itens_orcamento io , servicos s'
      ''
      'where MesAno = @Periodo '
      'and io.orcamento = id.orcamento'
      'and io.incremento = id.incremento'
      'and s.Codigo = id.Servico'
      ''
      'group by id.orcamento,id.servico'
      ''
      '-- manuten'#231#227'o'
      ''
      'insert into #itens_pagdentista'
      ''
      'select  '#39'M'#39' tipo,'
      '         o.numero orcamento,'
      '        i.servico,'
      #9#9'i. quantidade  * s.qtVezesTISS  qt_paga,'
      #9#9#9'  Valor_Dentista ,'
      #9#9#9'  0.0 Valor_Protetico ,'
      #9#9#9'  i.valor as copart'
      #9#9#9'  '
      #9#9#9'  '
      'from Receber r'
      ''
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join itens_orcamento i on i.orcamento = o.numero'
      'left join servicos s on s.Codigo = i.servico'
      ''
      ''
      'Where '
      '          o.Tipo           = 5'
      '      and r.dt_pagDentista between @dtiniManut and @dtfimManut'
      '      and r.Tipo_Documento = 5'
      'print '#39'log 3'#39
      
        '--select tipo, SUM(vr_pagDentista) dentista, SUM(vr_pagProtetico' +
        ') protetico from #itens_pagdentista group by tipo return'
      '--fim manuten'#231#227'o'
      ''
      ''
      'select ip.orcamento,'
      '       ip.servico,'
      '       ip.vr_pagDentista as valor_dentista,'
      '       ip.qt_paga as quantidade,'
      '       ip.vr_pagProtetico as valor_protetico,'
      '       copart as valor,'
      '       ip.qt_paga'
      ''
      'into #Itens_Orcamento'
      ''
      'from  #itens_pagdentista   ip'
      ''
      'select  i.orcamento,'
      #9'case when Plano.Familiar = 1 then '#39'Familiar'#39' '
      
        #9'     when plano.Codigo_Susep = '#39'462938108'#39' then '#39'Coletivo Por A' +
        'des'#227'o'#39
      #9#9' else '#39'Empresarial'#39' end familiar, '
      #9'sip.codigo sip, '
      #9'Servicos.Codigo, '
      #9'Servicos.Descricao, '
      #9'i.valor_dentista + i.valor_protetico as valor_dentista ,'
      
        #9'--((i.Valor_Dentista / i.quantidade) * i.qt_paga) + ((i.Valor_p' +
        'rotetico / i.quantidade) * i.qt_paga) as valor_dentista ,'
      '    i.valor as vrCoop,'
      '    --    ((i.valor / i.quantidade) * i.qt_paga) as vrCoop, '
      '        i.qt_paga as quantidade ,'
      '        sip.descricao DescricaoSip'
      ''
      'from #Itens_Orcamento i'
      ''
      '--inner join #itens_pagdentista ip '
      ' --on (i.orcamento = ip.orcamento and i.servico = ip.servico)'
      ''
      'left join Orcamento '
      'on (i.Orcamento = Orcamento.Numero)'
      ''
      'left join Servicos '
      'on (i.Servico = Servicos.Codigo)'
      ''
      'left join Contratante '
      'on (Orcamento.Contratante = Contratante.Codigo)'
      ''
      'left join Plano '
      'on (Plano.Codigo = Contratante.Plano)'
      ''
      'left join sip_ANTIGO SIP'
      'on sip.codigo = servicos.sip'
      ''
      'where'
      '       Orcamento.Autorizado = 1'
      '   and Orcamento.Tipo in(1,5,10,6)'
      '   '
      ''
      'order by 2, Servicos.Sip, Servicos.Codigo'
      ''
      ''
      '')
    Left = 1194
    Top = 386
  end
  object Tr_retornoUsuario: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter TRIGGER Tr_retornoUsuario ON Usuario '
      'FOR UPDATE'
      ''
      'AS'
      ''
      '--Altera'#231#245'es'
      
        '--Enio- 03/03/2005 Foi criado o campo data_alteracao e qdo ouver' +
        ' alteracao set como getate()'
      ''
      ''
      '-- coloca o campo alteracao_susep para 1 para ser enviado '
      '-- a ANS'
      'if update (nome) '#9#9'or '
      '   update(grau_parentesco) '#9'or '
      '   update (Data_Nascimento) '#9'or '
      '   update (Data_Inclusao) '#9'or '
      '   update (Contratante_Titular) or '
      '   update (E_Civil) '#9#9'or '
      '   update (Sexo) '#9#9'or '
      '   update (Situacao) '#9#9'or '
      '   update (Nm_Mae) '#9#9'or '
      '   update (CPF) '#9#9'or '
      '   update (PIS_PASEP) '#9#9'or '
      '   update (Motivo_Cancelamento)'
      ''
      ''
      ''
      'begin'
      '   update usuario set alterado = 1, data_alteracao = getdate()'
      ''
      '   from inserted i'
      ''
      '   where '
      #9'    usuario.codigo = i.codigo '
      #9'and usuario.digito = i.digito'
      '        and usuario.alterado = 0'
      'end'
      ''
      ''
      'if update(data_exclusao)'
      'begin'
      ''
      '   if exists(select * from inserted where data_exclusao is null)'
      '   begin'
      ''
      '      -- atualiza o campo reinclusao para reincluir o usuario'
      '      -- na ANS'
      '---      declare @dtexcl char(10)'
      
        '--      select @dtexcl = convert(char(10),data_exclusao,103) fro' +
        'm deleted'
      '  '
      
        '      update  usuario set DtReinclusao = getdate(), dt_exclusao_' +
        'orig = d.data_exclusao  from inserted i, deleted d'
      
        '      where usuario.codigo = i.codigo and usuario.digito = i.dig' +
        'ito'
      '            and d.codigo = i.codigo and d.digito = i.digito'
      ''
      '--      raiserror(@dtexcl,16,1)'
      ''
      '      insert historico_inclusao_susep'
      
        '      select d.codigo, d.digito,getdate(),d.inclusao_susep, d.al' +
        'teracao_susep, '
      '            d.exclusao_susep, i.operador_alteracao'
      ''
      '      from '
      '            deleted d, inserted i '
      ''
      '      where     i.data_exclusao is null'
      '            and d.codigo = i.codigo '
      '            and d.digito = i.digito'
      ''
      ''
      '   end'
      'end'
      ''
      ''
      '')
    Left = 818
    Top = 562
  end
  object QueryScriptExcel: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'insert into script'
      'select isnull(max(cd_script),0) + 1 ,'
      #39'Titulos Vencidos por Dt Vencimento(Excel)'#39','
      #39'set dateformat dmy'
      'select  '
      '        null as tipo,'
      #9'Tipo_Documento as nr_operacao,'
      '        td.descricao as nm_operacao,'
      #9'null as agencia,'
      '        r.Data_Vencimento,'
      '        str(r.valor,15,2) as vr_operacao,'
      #9'null as vr_vencido,'
      #9'null as cond_necociais,'
      '        c.CGC_CPF,-- tb contratante'
      #9'null as nr_ficha,'
      #9'c.Codigo as nrFicha, '
      #9'c.Nome as nm_cliente, '
      #9'c.Endereco_Residencial, '
      #9'c.Bairro_Residencial, '
      #9'c.Cep_Residencial, '
      #9'cid.ds_cidade as cidade_residencial, '
      #9'cid.uf as uf,'
      #9'c.Fone1,'
      #9'c.Fone2,'
      '        c.fax as fone3,'
      #9'null as fone4,'
      #9'null as nm_pai,'
      #9'null as nm_mae,'
      #9'null as nm_avalista1,'
      #9'null as endereco_avalista1,'
      #9'null as bairro_avalista1,'
      #9'null as cep_avalista1,'
      #9'null as cidade_avalista1,'
      #9'null as uf_avalista1,'
      #9'null as tel1_avalista1,'
      #9'null as tel2_avalista1,'
      #9'null as nm_avalista2,'
      #9'null as endereco_avalista2,'
      #9'null as bairro_avalista2,'
      #9'null as cep_avalista2,'
      #9'null as cidade_avalista2,'
      #9'null as uf_avalista2,'
      #9'null as tel1_avalista2,'
      #9'null as tel2_avalista2,'
      #9'null as profissao,'
      #9'null nm_local_trabalho,'
      #9'c.Endereco_Comercial, '
      #9'c.Bairro_Comercial, '
      #9'c.Cep_Comercial, '
      #9'cid1.ds_cidade as cidade_Comercial, '
      #9'cid1.uf as uf,'
      #9'null fone1_comercial,'
      #9'null fone2_comercial,'
      #9'null referencia_pessoal'
      ''
      'from Receber r'
      ''
      'left join Contratante c on c.Codigo = r.Codigo_Contratante'
      'left join cidade cid    on cid.cd_cidade = c.cd_cidade_res'
      'left join cidade cid1   on cid1.cd_cidade = c.cd_cidade_com'
      'left join TipoDocumento td on td.codigo = r.Tipo_Documento'
      'where r.Data_Pagamento  is null'
      
        'and r.Data_Vencimento between @Data de Vencimento Inicial(DD/MM/' +
        'AAAA)| and @Data de Vencimento Final(DD/MM/AAAA)| + '#39#39' 23:59:59'#39 +
        #39
      'and c.Exclusao is null'
      
        'order by r.Codigo_Contratante, r.Data_Vencimento, r.Tipo_Documen' +
        'to,  r.Tipo_Cobranca'#39', getdate(),null'
      'from script'
      '')
    Left = 730
    Top = 570
  end
  object QueryScriptRPC: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'insert into script'
      'select isnull(max(cd_script),0) + 1 ,'
      #39'Empresas rpc lista de aniversario '#39','
      #39'select '
      ' month(inclusao)  Mes, '
      ' c.codigo, c.nome, '
      ' convert(char(10),inclusao,103) as Inclusao  ,'
      ' count(u.codigo) as qtVidas'
      ' '
      'from '
      ' plano p '
      'inner join contratante c '
      'on c.plano = p.codigo'
      ''
      'left join usuario u'
      'on u.contratante_titular = c.codigo'
      'and u.data_exclusao is null'
      'where fis_jur = '#39#39'Jur'#237'dica'#39#39
      ''
      'and c.exclusao is null'
      'and c.empresa = 1'
      ''
      'group by '
      ' month(inclusao) , '
      ' c.codigo, '
      ' c.nome, '
      ' convert(char(10),inclusao,103)'
      ''
      ''
      'order by 1'#39',getdate(),null '
      'from script')
    Left = 626
    Top = 546
  end
  object Querysp_calcJuros: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter procedure sp_calcJuros @Titulo int, @Desd varchar(2),@Dt_P' +
        'agto varchar(10)'
      ''
      'as'
      'set dateformat dmy'
      ''
      'declare @DtVencto datetime'
      ' declare @saldo    money,'
      '         @multa    decimal(10,3),'
      '         @Mora     decimal(10,3),'
      '         @QtDias   smallint,'
      '         @juros    money,'
      '         @DtPagto  datetime'
      ''
      'set @DtPagto = @Dt_pagto'
      ''
      
        'select @dtVencto = data_vencimento, @saldo = isnull(saldo,0) fro' +
        'm receber where numero_titulo = @titulo and desdobramento = @Des' +
        'd'
      'if @DtPagto > @DtVencto'
      'begin'
      
        '   set @multa = isnull((select vl_parametro from parametro where' +
        ' cd_parametro = '#39'MULTA'#39'),0)'
      ''
      
        '   set @Mora  = isnull((select vl_parametro from parametro where' +
        ' cd_parametro = '#39'MORADI'#39'),0)'
      ''
      '   set @QtDias = datediff(dd,@DtVencto,@DtPagto)'
      ''
      
        '   set @juros = (((@QtDias * @Mora) / 100) * @saldo) + (@Saldo *' +
        ' (@multa /100))'
      ''
      
        '   --select @juros as juros,@multa multa ,@mora mora ,@Qtdias di' +
        'as ,@Dtpagto pagto ,@DtVencto vencto,@saldo as saldo'
      '   select @juros as juros'
      'end'
      'else select 0 as juros'
      ''
      ''
      ''
      '')
    Left = 626
    Top = 602
  end
  object tr_i_verifiSeq: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_i_verifiSeq on recibo'
      'for insert'
      ''
      'as'
      ''
      'declare @recibo int'
      ''
      'select  top 1 @recibo = nr_recibo - 1 from inserted'
      
        '-- o recibo nao existe ou nao foi incluido registro na tabela i_' +
        'recibo'
      
        'if (select count(*) from recibo r, i_recibo i where i.nr_recibo ' +
        '= r.nr_recibo and r.nr_recibo = @recibo) = 0'
      'begin'
      
        '   raiserror('#39'ATEN'#199#195'O !, falha na sequ'#234'ncia do recibo. O recibo ' +
        'N'#186' %I falhou, verifique este recibo, caso tenha notado comportam' +
        'ento anormal do sistema anote a mensagem de erro e informe ao re' +
        'spons'#225'vel pelo sistema'#39',16,1,@recibo)'
      '   rollback'
      'end'
      '')
    Left = 723
    Top = 634
  end
  object tr_u_validaversao: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger Tr_U_ValidaVersao on preferencia'
      'for update'
      ''
      'as'
      ''
      'declare @versaoOld int, '
      '        @VersaoNew int'
      ''
      'select @versaoOld = replace(versao,'#39'.'#39','#39#39') from deleted'
      'select @versaoNew = replace(versao,'#39'.'#39','#39#39') from inserted'
      ''
      'if @VersaoNew < @versaoOld'
      'begin'
      
        '   raiserror('#39'Erro ao tentar gravar n'#250'mero de vers'#227'o na base de ' +
        'dados, vers'#227'o menor do que a vers'#227'o informada'#39',16,1)'
      '   rollback tran'
      'end'
      ''
      
        'insert into historico_versao select versao, getdate() from inser' +
        'ted ')
    Left = 826
    Top = 303
  end
  object tr_i_delMsgOdonto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_i_delMsgOdonto on eventOdontograma'
      'for insert'
      ''
      'as'
      
        '-- delete mensagem de glosa, pois se inseriu aki significa que a' +
        'utorizou..sen'#227'o sai impresso no or'#231'amento'
      ''
      'delete  msg_odonto '
      'from inserted         i,'
      '     itens_orcamento it'
      ''
      '     where it.orcamento  = i.orcamento            and '
      '           it.incremento = i.incremento           and'
      '           i.orcamento   = msg_odonto.orcamento   and'
      '           it.servico    = msg_odonto.cd_servico     and'
      '           i.cd_criterio = msg_odonto.cd_criterio')
    Left = 826
    Top = 247
  end
  object delete_orcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter PROCEDURE delete_orcamento'
      '@orc int,'
      '@cdFuncExcl int,'
      '@dsMotivo varchar(300)'
      'AS'
      ''
      'declare @orcam varchar(10)'
      'declare @nrParc varchar(2)'
      'declare @contrat int'
      ''
      'begin tran'
      ''
      
        '-- exclui do contas a receber , caso haja parcelas desse or'#231'amen' +
        'to'
      '-- se houver parcelas pagas n'#227'o permite excluir o or'#231'amento'
      ''
      
        'set @nrParc  = isnull((select Numero_Parcelas from orcamento whe' +
        're numero = @orc),'#39'0'#39')'
      
        'set @contrat = isnull((select Contratante     from  orcamento wh' +
        'ere numero = @orc),0)'
      'set @orcam = @orc'
      ''
      'if exists(select * from receber '
      
        'where     numero_titulo between @orcam + '#39'01'#39'  and @orcam + repl' +
        'icate('#39'0'#39', 2 - len(@nrParc)) + @nrParc'
      '      and codigo_contratante = @contrat'
      '      and desdobramento = '#39'O'#39
      '      and Data_Pagamento is not null'
      '      and @NrParc <> '#39'0'#39')'
      'begin'
      
        '   raiserror('#39'Exclus'#227'o n'#227'o realizada, existe parcelas pagas no c' +
        'ontas a receber, extorne o pagamento dessa(s) parcela(s)e tente ' +
        'excluir o orca'#231'mento novamente!'#39',16,1)'
      '   rollback tran'
      'end'
      'else'
      'begin'
      ''
      '    insert into  orcamento_bck'
      ''
      '    select'
      ''
      ' '#9'Numero '#9#9#9#9',Data_Hora'#9#9#9',Operador_Cadastro'#9','
      #9'Usuario'#9#9#9#9',Contratante_Titular'#9#9',Contratante'#9#9','
      #9'Data'#9#9#9#9',Dentista'#9#9#9',Total'#9#9#9','
      #9'Total_Bruto'#9#9#9',Total_Desconto'#9#9#9',Status'#9#9#9','
      #9'Status_Pagamento'#9#9',Numero_Parcelas'#9#9',Data_Conferencia'#9','
      #9'Total_Dentista'#9#9#9',Total_Protetico'#9#9',Total_Contas'#9#9','
      #9'Autorizado'#9#9#9',Operador_Aprovacao'#9#9',Tipo'#9#9#9','
      #9'Desconto'#9#9#9',nro_urgencia'#9#9#9',Data_Status'#9#9','
      #9'Operador_Status'#9#9#9',PericiaFinal'#9#9#9',getdate()'#9#9','
      #9'@cdFuncExcl,@dsMotivo'
      ''
      '    from  orcamento'
      ''
      '    where numero = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      '    delete receber '
      '    where     '
      
        '          numero_titulo between @orcam + '#39'01'#39'  and @orcam + repl' +
        'icate('#39'0'#39', 2 - len(@nrParc)) + @nrParc'
      '      and codigo_contratante = @contrat'
      '      and desdobramento = '#39'O'#39
      '      and @NrParc <> '#39'0'#39
      ''
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete faceXorcamento where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete DenteXorcamento where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete EventOdontograma where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete msg_odonto  where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete itens_Orcamento where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete prestacoes where orcamento = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete orcamento where numero = @orc'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '-- exclui sujeiras..'
      '   delete faceXorcamento where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete DenteXorcamento where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete EventOdontograma where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete msg_odonto  where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete itens_Orcamento where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      '   delete prestacoes where orcamento = 0'
      '    if @@ERROR <> 0'
      '    begin'
      '       Rollback tran'
      '       return'
      '    end'
      ''
      ''
      '   commit'
      'end'
      ''
      ''
      '')
    Left = 826
    Top = 191
  end
  object SpCalculaDesconto: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      '/*'
      '  declare'
      '  @VrDesconto    smallmoney ,'
      '  @VrDescUnit    smallmoney ,'
      '  @VrDescUsu     smallmoney '
      ''
      
        '  exec SpCalculaDesconto 38307,383071,'#39'29/08/2020'#39',@VrDesconto o' +
        'utput,@VrDescUnit output,@vrDescUsu output'
      
        '  select @VrDesconto vrDesconto ,@VrDescUnit vrDescontoUnit ,@vr' +
        'DescUsu vrDescontoUsu'
      ''
      '*/'
      'ALTER Procedure SpCalculaDesconto --11553'
      ''
      '@CdContratante int,'
      
        '@cdUsuario     int = null, -- caso queira pesquisar um usu'#225'rio e' +
        'spec'#237'fico'
      '@DtBase        char(10) ,'
      '@VrDesconto    smallmoney output ,'
      '@VrDescUnit    smallmoney output,'
      
        '@VrDescUsu     smallmoney output  -- se informado o usuario indi' +
        'ca se este tem desconto'
      ''
      ''
      'as'
      ''
      ''
      'set dateformat dmy'
      ''
      'Declare @Plano '#9#9' int'#9','
      #9'@QtdeUsuario '#9' smallint,'
      #9'@IdadeMaxCrianca tinyint,'
      #9'@VrDesc          smallmoney,'
      #9'@ConsideraCrianca bit ,'
      #9'@descIdadeAux smallmoney,'
      '     @descIdadeAuxPeloCodigoUnitario smallmoney,'
      '     @descTemp smallmoney'
      ''
      'set @VrDesconto = 0'
      'set @VrDescUnit = 0'
      'set @VrDescUsu  = 0'
      'set @descIdadeAuxPeloCodigoUnitario = 0'
      ''
      ''
      
        'select @plano = plano from contratante where codigo = @CdContrat' +
        'ante'
      ''
      ''
      
        '-- Pega a idade maxima considerada crian'#231'a, pq crian'#231'a n'#227'o conta' +
        '(qtde de dependentes)para dar desconto'
      '--  conforme tabela DescontoxNroUsuarios'
      ''
      'select @IdadeMaxCrianca = IdadeMaxCrianca from preferencia'
      
        'if(select MAX(idade_max) from descontoXIdade where cd_plano = @P' +
        'lano and idade_max > @IdadeMaxCrianca)  > 0'
      
        '  select @IdadeMaxCrianca = MAX(idade_max) from descontoXIdade w' +
        'here cd_plano = @Plano'
      ''
      '--select IdadeMaxCrianca from preferencia'
      '-- Pega a qtde de usuarios do contratante para dar o desconto'
      ''
      'select @QtdeUsuario = count(*) '
      ''
      'from'
      ''
      #9'usuario '#9'u,'
      #9'contratante '#9'c,'
      #9'plano'#9#9'p'
      ''
      ''
      'where'
      ''
      
        '         -- alterado em 06/12/07 para considerar desconto antes ' +
        'olha a qtde de usuarios do contratante titular'
      
        '         -- agora olha qtde de usuarios do contratante, para ate' +
        'nder pessoas juridicas... versao do programa 2.1.7.5'
      '--'#9'    c.codigo         = u.contratante_titular'
      #9'    c.codigo         = u.codigo'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and c.plano          = @plano'
      #9'and c.codigo '#9'     = @CdContratante'
      #9'and p.codigo         = c.plano        '
      
        #9'and ((p.ConsideraCrianca = 0 and ceiling(datediff(day,Data_Nasc' +
        'imento,@DtBase)/365.25) - 1   >  @IdadeMaxCrianca) -- Crian'#231'as n' +
        #227'o contam pq j'#225' possuem desconto'
      '             or p.consideraCrianca = 1)'
      
        '        -- o comando ceiling arredonda sempre para o inteiro mai' +
        's pr'#243'ximo'
      #9'-- est'#225' dividindo por 365.25 por causa do ano bixesto'
      
        '        -- verifica se o plano consedera criana ou n'#227'o para dar ' +
        'o desconto'
      ''
      
        'select @VrDesc = @QtdeUsuario * Valor_Desconto, @VrDescUnit = is' +
        'null(Valor_Desconto,0)'
      ''
      ''
      ''
      'from DescontoxNroUsuarios d'
      ''
      'where'
      #9'    d.codigo_plano = @plano'
      #9'and @QtdeUsuario between d.Qtde_Usuarios1 and d.Qtde_Usuarios2'
      ''
      
        '--select '#39'log 1'#39' log1, @VrDesc vrDesc, @QtdeUsuario QtdeUsuario,' +
        ' @VrDescUnit VrDescUnit'
      ''
      'if @VrDesc is null'
      '   set @VrDesc = 0'
      ''
      'if @VrDescUnit is null '
      '  set @VrDescUnit = 0'
      ''
      ''
      ''
      
        '-- verifica se ha parametriza'#231'ao nesse plano de desconto por ida' +
        'de'
      
        'if exists(select * from descontoXIdade d where d.cd_plano = @Pla' +
        'no)'
      'begin'
      ''
      
        '   select identity(int,1,1) as id, * into #descIdade from descon' +
        'toXIdade d where d.cd_plano  = @Plano   -- armazena todas as fai' +
        'xas de descontos progressivos  na temp'
      '   --SELECT * FROM #descIdade'
      '   declare @ini as int'
      '   declare @fim as int'
      '   select @ini = min(id) from #descIdade'
      '   select @fim = max(id) from #descIdade'
      '   set @descIdadeAux = 0'
      
        '   while @ini <= @fim  -- percorre a temp procurando qtos benefi' +
        'ciarios est'#227'o na faixa de idade_min e idade_max'
      '   begin'
      '      '
      
        '      -- nessa variavel acumula todos os descontos de eventuais ' +
        'beneficiarios nas faixas de idade de desconto'
      '      set @descTemp = 0'
      
        '      select @descTemp =  isnull(count(*) * max(valor_desconto),' +
        '0) from #descIdade d, '
      #9'                                        usuario u '
      #9#9#9#9#9#9#9#9#9'   where u.codigo = @CdContratante '
      
        #9#9#9#9#9#9#9#9#9'     and cast(round(datediff(day,Data_Nascimento,getdat' +
        'e())/365.25,1,1) as int) between d.idade_min and d.idade_max'
      #9#9#9#9#9#9#9#9#9#9' and d.id = @ini'
      #9' if @descTemp is not null'
      #9'   set @descIdadeAux = @descIdadeAux + @descTemp'#9#9#9#9#9#9#9#9#9' '
      #9' '
      
        '      --print '#39'log 3.2 '#39' + cast(@descIdadeAux as varchar(15))'#9#9#9 +
        #9#9#9#9#9#9#9' '
      #9#9#9#9#9#9#9#9#9#9' '
      
        #9'  -- nessa variavel @descIdadeAuxPeloCodigoUnitario so armazena' +
        ' quando passar o codigo '#9#9#9#9#9#9#9#9#9' '
      
        '      if @cdUsuario is not null and @descIdadeAuxPeloCodigoUnita' +
        'rio = 0 '
      '      begin'
      
        '         select @descIdadeAuxPeloCodigoUnitario = isnull(count(*' +
        ') * max(valor_desconto),0) from #descIdade d, '
      #9'                                        usuario u '
      #9#9#9#9#9#9#9#9#9'   where u.codigo = @CdContratante '
      
        #9#9#9#9#9#9#9#9#9'     and cast(round(datediff(day,Data_Nascimento,getdat' +
        'e())/365.25,1,1) as int) between d.idade_min and d.idade_max'
      #9#9#9#9#9#9#9#9#9#9' and d.id = @ini'
      #9#9#9#9#9#9#9#9#9#9' and u.Codigo_Completo = @cdUsuario'#9#9#9#9#9#9#9#9#9#9' '
      #9'  end'#9#9#9#9#9#9#9#9#9' '
      '      set @ini = @ini + 1'
      '--      print '#39'log3 '#39' + CAST( @descIdadeAux AS VARCHAR(20))'
      '   end'
      ''
      ''
      'end'
      ''
      '-- Verifica se este usu'#225'rio em espec'#237'fico possui desconto'
      ''
      'if @cdUsuario is not null'
      'begin'
      '--   PRINT '#39'LOG 4'#39
      '   select @ConsideraCrianca = ConsideraCrianca'
      '   from  plano where codigo = @plano'
      ''
      '   if @ConsideraCrianca = 0 -- considera'
      '   begin'
      '--       PRINT '#39'LOG 5'#39
      ''
      
        '        -- se o usuario for crianca e o plano nao considera cria' +
        'nca para desconto entao nao tem'
      
        '        -- desconto para esta crianca, pois assume-se que no cad' +
        'astro de pre'#231'o do plano por grau de parentesco'
      '        -- o valor desse usuario '#233' diferenciado(menor)'
      '        '
      #9'if not exists (select * from usuario u'
      '           where'
      #9'          u.codigo_completo = @cdUsuario'
      
        '  '#9'      and ceiling(datediff(day,Data_Nascimento,@DtBase)/365.2' +
        '5) - 1   >  @IdadeMaxCrianca)'
      '        begin'
      '--           '#9'PRINT '#39'LOG 6'#39
      '           set @VrDescUsu = 0'
      
        '           set @VrDescUnit = isnull(@descIdadeAuxPeloCodigoUnita' +
        'rio,0) -- qdo chegar aqui so computa o desconto por iddade'
      '--           PRINT '#39'LOG 6 '#39' + cast(@VrDescUnit as varchar(20))'
      '        end'
      #9#9'else'
      
        #9#9'   set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdade' +
        'AuxPeloCodigoUnitario,0) '
      #9#9#9
      '      '
      '   end'
      '   else'
      '   begin'
      '--      PRINT '#39'LOG 7'#39
      
        '     -- se tiver desconto por idade e desconto por qtde de benef' +
        'iciarios no plano soma as duas.'
      
        '     set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdade' +
        'AuxPeloCodigoUnitario,0) '
      #9' '#9
      ''
      '   end'
      'end'
      'else'
      'begin'
      
        '   -- nao esta solicitando de um benefici'#225'rio especifico, por'#233'm ' +
        'alimenta a var...pq no fonte tem rotina que usa os parametros de' +
        ' saida, independente da entrada'
      
        '   --se tiver desconto por idade e desconto por qtde de benefici' +
        'arios no plano soma as duas.'
      
        '   set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdadeAu' +
        'xPeloCodigoUnitario,0) '
      '   '#9
      'end'
      '     '
      ''
      ''
      
        '-- soma o desconto por quantidade de usuarios no plano + descont' +
        'o por idade'
      ''
      
        'set @VrDesconto = isnull(@VrDesc,0)     + isnull(@descIdadeAux,0' +
        ')'
      ''
      ''
      ''
      'set @VrDescUsu = isnull(@VrDescUnit,0)'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1290
    Top = 295
  end
  object titulos_pagos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter PROCEDURE Titulos_Pagos'
      '@data1 datetime, '
      '@data2 datetime'
      ''
      'as'
      '   begin tran'
      
        '   update receber set valor_pago = 0 where valor_pago > 0 and da' +
        'ta_pagamento is null'
      '   update receber set pago = 0 '
      '   where data_pagamento is null'
      '   and data_vencimento between @data1 and @data2'
      ''
      '   update receber set pago = 1'
      '   where data_pagamento is not null'
      '   and data_vencimento between @data1 and @data2'
      ''
      '   commit'
      '')
    Left = 826
    Top = 71
  end
  object sp_relMensalidadeContrat: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter Procedure sp_relMensalidadeContrat'
      ''
      '--declare'
      ''
      '@Contratante int,'
      '@DataPesq char(10)'
      ''
      '--set @Contratante = 3428'
      '--set @DataPesq = '#39'07/07/2004'#39
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare'
      ''
      '@VrDesconto    smallmoney ,'
      '@VrDescUnit    smallmoney ,'
      '@codigo        int'
      ''
      ''
      '-- Verifica se ha desconto'
      ''
      ''
      ''
      ''
      'select '
      '        identity(int,1,1) as indice,      '
      #9'c.Codigo, '
      #9'c.Nome, '
      #9'c.Plano, '
      #9'c.Grupo_Contratante, '
      '--'#9'isnull(m.valor - @VrDescUnit,0) as valor,'
      #9'm.valor,'
      #9'm.valor - m.valor as desconto,'
      #9'g.descricao as Nome_Grupo,'
      #9'u.codigo_completo,'
      #9'c.lg_gerarVrMedicarTelefone'
      ''
      'into #result'
      ''
      'from Usuario u'
      ''
      'left join Contratante c '
      ''
      '   on c.Codigo = u.Codigo'
      ''
      'left join mensalidade_usuario m'
      'on'
      #9'  u.codigo = m.cd_usuario'
      '      and u.digito = m.dg_usuario'
      '      AND @DataPesq between dtinicio and dtfim'
      ''
      'left join Grupo_Contratante g'
      'on'
      #9'g.codigo = c.grupo_contratante'
      ''
      'where '
      '           u.Contratante_Titular  = @Contratante'
      '       and u.Data_Inclusao       <= @DataPesq'
      
        '       and ((u.Data_Exclusao is null) or (u.Data_Exclusao > = @D' +
        'ataPesq))'
      ''
      'order by c.Grupo_Contratante, '
      #9' c.Codigo, '
      '         u.Codigo, '
      '         u.Digito'
      ' '
      ''
      'declare @id '#9'    int,'
      #9'@max '#9'    int,'
      #9'@cdUsuario  int,'
      '        @VlrDescUsu smallmoney'
      ''
      ''
      'select @max = max(indice) from #result'
      ''
      'set @id = 1'
      ''
      'while @id <= @max '
      ''
      'begin    '
      
        '     select @codigo = codigo, @cdUsuario = codigo_completo from ' +
        '#result where indice = @id'
      ''
      
        '     exec SpCalculaDesconto @codigo, @cdUsuario, @DataPesq ,@VrD' +
        'esconto  output, @VrDescUnit output, @VlrDescUsu output     '
      ''
      
        '     update #result set desconto = @VlrDescUsu where indice = @i' +
        'd'
      ''
      '     set @id = @id + 1'
      'end'
      ''
      '--- parametro indica se mostra ou n'#227'o contratantes bloqueados.'
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'LIC' +
        'BL'#39') = '#39'N'#39
      
        '   delete from #result where exists(select * from bloqueio_contr' +
        'atante b where b.cd_contratante = #result.codigo and @DataPesq b' +
        'etween dt_ini_bloqueio and ISNULL(dt_fim_bloqueio,'#39'01/01/2079'#39'))'
      ''
      
        'select r.Codigo, r.Nome, r.Plano, r.Grupo_Contratante, r.valor -' +
        ' r.desconto as valor,'
      '       r.Nome_Grupo, u.*,r.lg_gerarVrMedicarTelefone'
      ''
      ' from #result r , usuario u'
      ' where r.codigo_completo = u.codigo_completo '
      
        'order by r.Nome_Grupo, r.Grupo_Contratante, r.nome, u.nome, u.co' +
        'digo, u.digito'
      ''
      '--tb bloqueio_contratante '
      ''
      ''
      '-- drop table #result'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 882
    Top = 359
  end
  object spCalcDescContrat: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure spCalcDescContrat '
      ''
      
        '-- calcula o desconto para os contratantes de um contratante tit' +
        'ular'
      
        '-- para atender o desconto concedido para PJ, conforme qtde de d' +
        'ependentes'
      ''
      '@CdContratante int, '
      '@DtBase char(10),'
      '@vrTotDesc smallmoney output'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'create table #contrat (indice int identity(1,1), cd_contrat int)'
      ''
      
        'insert into #contrat select distinct codigo from usuario where c' +
        'ontratante_titular = @CdContratante'
      ''
      'declare @max  smallint'
      'declare @cont smallint'
      'declare @contrat int'
      ''
      'declare @VrDesconto    smallmoney'
      
        'declare @vrDescUni     smallmoney -- s'#243' para o parametro out put' +
        ' '
      'declare @vrDescUsu     smallmoney'
      ''
      'set @vrTotDesc = 0'
      ''
      'set @max = (select max(indice) from #contrat)'
      'set @cont = 1'
      ''
      'while @cont <= @max'
      'begin'
      
        '   set @contrat = (select cd_contrat from #contrat where indice ' +
        '= @cont)'
      ''
      
        '   exec SpCalculaDesconto @contrat,null,@DtBase, @VrDesconto out' +
        'put, @vrDescUni output, @vrDescUsu output'
      ''
      '   set @vrTotDesc = @VrTotDesc + isnull(@VrDesconto,0)'
      ''
      '   set @cont = @cont + 1'
      'end')
    Left = 882
    Top = 423
  end
  object SpVrMensalidade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter procedure SpVrMensalidade --8810,'#39'01/01/2004'#39' SpVrMensalid' +
        'ade 15028,'#39'10/10/2012'#39
      ''
      '@CdContratante int,'
      '@DtBase char(10)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare '
      '       @VrMensalidade smallmoney,'
      '       @QtdeUsu       smallint  ,'
      '       @VrDesconto    smallmoney,'
      
        '       @vrDescUni     smallmoney, -- s'#243' para o parametro out put' +
        ' '
      '       @cdUsuario     int       ,'#9
      '       @vrDescUsu     smallmoney,'
      '       @vrMinimoPlano money,'
      '       @vrComplemento money'
      ''
      'set dateformat dmy'
      ''
      
        'select @vrMinimoPlano =  isnull(sum(vr_minimo_plano),0) from pla' +
        'no p, contratante c where c.plano = p.codigo and c.codigo = @CdC' +
        'ontratante'
      ''
      'select @VrMensalidade = isnull(sum(valor),0),'
      '       @QtdeUsu       =  count(*) '
      ''
      'from '
      #9'mensalidade_usuario m,'
      #9'usuario'#9#9'    u,'
      #9'contratante'#9'    c'
      ''
      'where'
      #9'    m.cd_usuario          = u.codigo'
      #9'and m.dg_usuario          = u.digito'
      #9'and c.codigo'#9#9'  = u.contratante_titular'
      '        and u.contratante_titular = @CdContratante'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      '        and @DtBase               between DtInicio and DtFim'
      ''
      ''
      
        '--exec SpCalculaDesconto @CdContratante , @cdUsuario, @DtBase, @' +
        'VrDesconto output, @vrDescUni output, @vrDescUsu output'
      
        'exec spCalcDescContrat @CdContratante, @DtBase, @VrDesconto outp' +
        'ut'
      ''
      ''
      'if (@VrMensalidade - @VrDesconto) < @vrMinimoPlano '
      
        '  set @vrComplemento = @vrMinimoPlano  - (@VrMensalidade - @VrDe' +
        'sconto)'
      'else'
      '   set @vrComplemento = 0'
      ''
      'select @VrMensalidade '#9#9'    as VrMensalidade'#9','
      '       @VrMensalidade - @VrDesconto as VrMensalidadeLiq , '
      '       @QtdeUsu '#9#9'    as qtdeUsu '#9#9', '
      '       @VrDesconto '#9#9'    as VrDesconto,'
      '       @vrComplemento as vrComplemento'
      '')
    Left = 914
    Top = 495
  end
  object sp_verifFatAnterior: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'create procedure sp_verifFatAnterior @Dtini char(10), @Dtfim cha' +
        'r(10)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'select c.codigo as cd_contratante,'
      '       c.nome as nm_contratante,'
      '       convert(char(10),c.inclusao,103) as dt_inclusao,'
      '       f.numero_titulo,'
      '       f.data_vencimento,'
      '       f.valor ,'
      
        '       cast(replicate('#39'0'#39',2 - len(month(dateadd(mm,-1,f.data_ven' +
        'cimento)))) + cast(month(dateadd(mm,-1,f.data_vencimento)) as va' +
        'rchar(2)) as varchar(2)) as MesAnt,'
      
        '       substring(cast(year(dateadd(mm,-1,f.data_vencimento)) as ' +
        'varchar(4)),3,2) as AnoAnt'
      ''
      'into #temp'
      'from '
      #9'faturamento f, '
      #9'contratante c '
      'where '
      ''
      #9'    f.codigo_contratante = c.codigo'
      #9'and c.exclusao is null'
      #9'and f.data_vencimento between  @Dtini and @Dtfim'
      #9'and desdobramento = '#39'M'#39
      #9'and c.inclusao <'
      
        #9'    cast('#39'01/'#39' + cast(month(dateadd(mm,-1,f.data_vencimento)) a' +
        's varchar(2)) + '#39'/'#39' + cast(year(dateadd(mm,-1,f.data_vencimento)' +
        ') as varchar(4)) as datetime)'
      '        and f.tipo_documento = 1 -- somente mensalidade'
      '         '
      ''
      
        'select *,cast(t.cd_contratante as varchar(10)) + t.MesAnt + t.An' +
        'oAnt as Titulo, t.MesAnt + '#39'/'#39' + t.AnoAnt as Periodo from #temp ' +
        't'
      'WHERE not exists'
      '(select * from faturamento r'
      ' where  '
      
        '           r.numero_titulo = cast(t.cd_contratante as varchar(10' +
        ')) + t.MesAnt + t.AnoAnt'
      '       and r.desdobramento = '#39'M'#39
      '       and t.cd_contratante = r.codigo_contratante'
      ')')
    Left = 914
    Top = 559
  end
  object tr_i_inibeServico: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create trigger tr_i_inibeServico on itens_orcamento'
      'for insert'
      'as'
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'IN5' +
        '110'#39') = '#39'S'#39' and'
      
        'exists(select * from inserted i, orcamento o where i.orcamento =' +
        ' o.numero and o.dentista >= 1000 and i.servico = 5110)'
      'begin'
      
        '   raiserror('#39'O Servi'#231'o 5110 n'#227'o pode ser lan'#231'ado para este dent' +
        'ista'#39',16,1);'
      '   rollback tran'
      'end')
    Left = 914
    Top = 623
  end
  object tr_u_verifContrate: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_u_verifContrate on contratante '
      'for update as '
      ''
      'if update (lg_geraFat) '
      
        'insert into log_geraFaturamento select getdate(), i.codigo,d.lg_' +
        'geraFat,i.lg_geraFat,host_name(),null from inserted i, deleted d' +
        ' where i.codigo = d.codigo'
      ''
      
        'if update(plano) and exists(select * from usuario u ,inserted d ' +
        'where u.codigo = d.codigo)'
      'begin'
      
        '   raiserror('#39'Nao eh poss'#237'vel alterar o plano, somente eh possiv' +
        'el alterar o plano caso nao haja nenhum usuario cadastrado '#39',16,' +
        '1)'
      '   rollback tran'
      'end'
      '')
    Left = 930
    Top = 216
  end
  object Tableseq_faturamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create table seq_faturamento'
      '(indice int identity(1,1) primary key,'
      ' numero_titulo  int not null,'
      ' desdobramento varchar(1) not null,'
      ' data_vencimento datetime not null,'
      
        ' constraint fk_faturamento_seq_faturamento foreign key (numero_t' +
        'itulo,desdobramento,data_vencimento) '
      
        ' references faturamento (numero_titulo,desdobramento,data_vencim' +
        'ento)'
      ')')
    Left = 930
    Top = 32
  end
  object ix_faturamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'create unique index ix_faturamento on seq_faturamento (numero_ti' +
        'tulo,desdobramento,data_vencimento)')
    Left = 930
    Top = 88
  end
  object pGeraSeqFaturamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter procedure pGeraSeqFaturamento(@Tit int,@Desd char(1),@Venc' +
        'to char(10),@banco varchar(15),@seq int output)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'begin tran'
      ''
      
        'update faturamento set Emitido_Documento = 1, numero_banco = @ba' +
        'nco '
      'where numero_titulo = @Tit and'
      '      desdobramento = @Desd and'
      '      data_vencimento = @Vencto'
      'if @@error > 0'
      'begin'
      ' rollback tran'
      ' return'
      'end'
      ''
      'insert into  seq_faturamento '
      ''
      'select @tit,@Desd,@vencto'
      ''
      'where not exists'
      ''
      '(select * from  seq_faturamento s '
      ' where '
      '           s.numero_titulo = @tit'
      '       and s.desdobramento = @desd'
      '       and s.data_vencimento =@vencto)'
      ''
      'If @@error > 0'
      'begin'
      '  rollback tran'
      '  return'
      'end'
      
        'set @seq = (select indice from seq_faturamento where numero_titu' +
        'lo = @Tit and desdobramento = @Desd and  data_vencimento = @Venc' +
        'to)'
      ''
      'commit'
      ''
      ''
      '')
    Left = 930
    Top = 152
  end
  object sp_rel_vendas_contrat_titular: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure sp_rel_vendas_contrat_titular '
      
        '--sp_rel_vendas_contrat_titular '#39'01/07/2008'#39','#39'31/07/2008'#39',0,9999' +
        '9999'
      ''
      '@Dtini char(10),'
      '@Dtfim char(10),'
      '@CdRepIni int,'
      '@CdRepFim int'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      ''
      ''
      'select '
      '       c.empresa,'
      '       r.codigo          as cd_representante,'
      '       r.nome '#9'         as nm_representante,'
      '       v.codigo          as cd_vendedor,'
      '       v.nome            as nm_vendedor,'
      '       c.codigo          as cd_empresa,'
      '       c.nome            as nm_empresa,'
      '       c1.codigo         as cd_titular,'
      '       c1.nome           as nm_titular,'
      '       u.codigo_completo as cd_usuario,'
      '       u.dt_venda,'
      '       u.data_exclusao'
      '       '
      'into #temp'
      '       '
      'from '
      #9'contratante   c, '
      #9'usuario       u, '
      #9'contratante   c1, '
      #9'vendedor      v, '
      #9'representante r'
      ''
      'where '
      ''
      '           c.codigo = u.contratante_titular'
      '      and c1.codigo = u.codigo'
      '      and v.codigo  = u.vendedor'
      '      and r.codigo  = v.representante'
      '      and u.dt_venda between @Dtini and @Dtfim + '#39' 23:59'#39
      '      and r.codigo  between @CdRepIni and @cdRepFim'
      ''
      ''
      'select '
      '        empresa,'
      #9'cd_representante,'
      #9'nm_representante,'
      #9'cd_vendedor,'
      #9'nm_vendedor,'
      #9'cd_empresa,'
      #9'nm_empresa,'
      #9'cd_titular,'
      #9'nm_titular,'
      #9'dt_venda,'
      #9'count(*) qtVendida,'
      '        0 qtCancelada,'
      '        0 QtMensGerada,'
      '        0 QtMensPaga,'
      '        '#39'S'#39' lg_pg_primeira,'
      '    '#39'00/00/00'#39' dtstr'
      ''
      'into #relatorio       '
      ''
      'from #temp'
      ''
      'group by'
      #9'cd_representante,'
      #9'nm_representante,'
      #9'cd_vendedor,'
      #9'nm_vendedor,'
      #9'cd_empresa,'
      #9'nm_empresa,'
      #9'cd_titular,'
      #9'nm_titular,'
      #9'dt_venda,'
      '    empresa'
      ''
      ''
      
        'update #relatorio set qtCancelada = (select count(*) from #temp ' +
        'where #relatorio.cd_titular = #temp.cd_titular and data_exclusao' +
        ' is not null and #relatorio.dt_venda = #temp.dt_venda)'
      ''
      'select identity(int,1,1) indice, * into #aux from #relatorio'
      ''
      'declare @ini        int'
      'declare @fim        int'
      'declare @codigo     int'
      'declare @QtMensPaga int'
      'declare @QtMens     int'
      ''
      'set @ini = 1'
      'set @fim = (select max(indice) from #aux)'
      ''
      'while @ini < @fim'
      'begin'
      '   select @codigo = cd_empresa from #aux where indice = @ini'
      ''
      
        '   set @QtMens     = (select count(*) from receber where desdobr' +
        'amento = '#39'M'#39' and codigo_contratante = @codigo)'
      
        '   set @QtMensPaga = (select count(*) from receber where desdobr' +
        'amento = '#39'M'#39' and codigo_contratante = @codigo and data_pagamento' +
        ' is not null)'
      '   '
      
        '   update #relatorio set QTMensGerada = @QtMens, QtMensPaga = @Q' +
        'tMensPaga where cd_empresa = @codigo'
      ''
      '   set @ini = @ini + 1'
      'end'
      ''
      '-- assume que n'#227'o pagou a primeira se nao houver nenhuma paga'
      'update #relatorio set lg_pg_primeira = '#39'N'#39' where QtMensPaga = 0'
      
        'update #relatorio set dtStr = convert(char(6),dt_venda,103) + su' +
        'bstring(convert(char(10),dt_venda,103),9,2)'
      'select '
      
        #9'ltrim(str(qtVendida)) + '#39'/'#39' + ltrim(str(qtCancelada)) as QtVend' +
        'XQtCanc,'
      
        '        ltrim(str(QtMensGerada)) + '#39'/'#39' + ltrim(str(QtMensPaga)) ' +
        'as QtMensXQtPaga,'
      '        '
      #9'* from #relatorio '
      '')
    Left = 874
    Top = 615
  end
  object sp_controleVendasEmpresariais: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'create procedure  sp_controleVendasEmpresariais @Dtini char(10),' +
        '@DtFim char(10),@VendedorIni int, @VendedorFim int'
      
        '--exec sp_controleVendasEmpresariais '#39'01/09/2008'#39','#39'30/09/2008'#39',8' +
        '101,8101'
      ''
      
        '-- Lista as empresas de um determinado vendedor, mostrando a qtd' +
        'e de vidas iniciais, qtde vidas'
      
        '-- do mes anterior, qtde vidas que entrou, que saiu no periodo i' +
        'nformado'
      'as'
      ''
      'set dateformat dmy'
      ''
      '--set @Dtini = '#39'01/05/2008'#39
      '--set @DtFim = '#39'30/10/2008'#39
      '--set @vendedor = 8101'
      ''
      'select '
      '        v.codigo as CdVendedor,'
      '        v.nome as nm_vendedor,'
      #9'c.codigo,'
      #9'c.nome, '
      #9'c.vencimento, '
      '        '#39'N'#39' PgMens,'
      #9'0 as VidasIni,'
      '        0 as VidasMesAnt,'
      '        0 as ExcMesAtu,'
      #9'isnull(count(u.codigo),0) IncMesAtu,'
      '        0 Total,'
      '        min(dt_venda) inclusao,'
      '        cast(null as datetime) PrimeiraMens,'
      '        cast(0 as smallmoney) MediaVrMens'
      '--        isnull(avg(mu.valor),0) as MediaVrMens'
      ''
      'into #aux'
      ''
      ' from '
      #9'contratante c '
      ''
      ''
      'left join vendedor v'
      'on'
      '   v.codigo = c.vendedor'
      ''
      'left join usuario u '
      'on'
      '       c.codigo = u.contratante_titular'
      '   and u.dt_venda between @Dtini and @DtFim + '#39' 23:59'#39
      ''
      ''
      'where '
      #9'    c.exclusao is null '
      #9'and c.empresa = 1'
      '        and c.vendedor between @VendedorIni and @VendedorFim'
      ''
      ''
      'group by '
      #9'c.codigo,'
      '        c.nome,'
      '        c.vencimento,'
      #9'inclusao,'
      '        v.codigo,'
      '        v.nome'
      ''
      
        '-- atualiza a data de inclus'#227'o para a primeira data de venda do ' +
        'usuario'
      ''
      
        'update #aux set inclusao = (select min(dt_venda) from usuario u ' +
        'where u.contratante_titular = #aux.codigo)'
      '--'
      
        'update #aux set MediaVrMens = (select isnull(avg(mu.valor),0) fr' +
        'om mensalidade_usuario mu, usuario u '
      
        '                                where     u.contratante_titular ' +
        '= #aux.codigo'
      
        '                                      and u.codigo = mu.cd_usuar' +
        'io'
      
        '                                      and u.digito = mu.dg_usuar' +
        'io'
      
        '                                      and u.data_exclusao is nul' +
        'l'
      
        '                                      and mu.id_acrescimo = (sel' +
        'ect max(id_acrescimo) from mensalidade_usuario mu1, usuario u1'
      
        '                                                             whe' +
        're     u1.contratante_titular = #aux.codigo'
      
        '                                                                ' +
        '    and u1.codigo = mu1.cd_usuario'
      
        '                                                                ' +
        '    and u1.digito = mu1.dg_usuario'
      
        '                                                                ' +
        '    and u1.data_exclusao is null)'
      '                               )'
      ''
      ''
      '--'
      
        'update #aux set PrimeiraMens = (select min(data_vencimento) from' +
        ' receber r where r.codigo_contratante = #aux.codigo and desdobra' +
        'mento = '#39'M'#39')'
      ''
      'update #aux set PgMens = '#39'S'#39' '
      'from receber r'
      'where     r.codigo_contratante = #aux.codigo'
      '      and r.data_vencimento    = #aux.PrimeiraMEns'
      '      and r.desdobramento = '#39'M'#39
      '      and r.data_pagamento is not null'
      ''
      'update '
      #9'#aux set VidasIni = (select count(*) from usuario u'
      #9#9#9'     where     month(dt_venda) = month(inclusao) '
      
        '                                   and year(dt_venda)  = year(in' +
        'clusao) '
      
        '                                   and u.contratante_titular = #' +
        'aux.codigo)'
      ''
      ''
      ''
      ''
      'update '
      #9'#aux set VidasMesAnt = (select count(*) from usuario u'
      
        #9#9#9'     where     (u.data_exclusao is null or u.data_exclusao >=' +
        ' @Dtini)'
      #9#9#9#9'       and (u.dt_venda < @Dtini)'
      
        '                                       and u.contratante_titular' +
        ' = #aux.codigo)'
      #9
      ''
      'update '
      #9'#aux set excMesAtu = (select count(*) from usuario u'
      
        #9#9#9'     where     u.data_exclusao between @Dtini and @Dtfim + '#39' ' +
        '23:59'#39
      
        '                                   and u.contratante_titular = #' +
        'aux.codigo)'
      ''
      
        'update #aux set  Total = (isnull(VidasMesAnt,0) + isnull(IncMesA' +
        'tu,0)) - isnull(excMesAtu,0)'
      ''
      ''
      ''
      
        'select substring(convert(char(10),inclusao,103),4,7)  as MesAno,' +
        '* from #aux order by nm_vendedor,cdvendedor,nome'
      ''
      '--select * from contratante where codigo = 9023'
      
        '--select * from usuario where contratante_titular = 9023 order b' +
        'y data_inclusao'
      '--select * from vendedor where nome like '#39'el%'#39
      '--select * from vendedor where codigo = 803'
      
        '--select * from usuario where contratante_titular = 9032 order b' +
        'y data_inclusao desc'
      ''
      '')
    Left = 930
    Top = 328
  end
  object sp_listaEtiq: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter procedure sp_listaEtiq @cdidSession varchar(20)'
      ''
      'as'
      ''
      ''
      ''
      'select'
      '   u.codigo_completo,'
      '   u.nome,'
      '   Endereco_Residencial endereco,'
      '   Bairro_Residencial bairro,'
      '   Cidade_Residencial cidade,'
      '   Estado_Residencial estado,'
      '   CEP_Residencial cep ,'
      '   Numero_Res numero,'
      '   Complemento_Res compl,'
      '   Endereco_Comercial,'
      '   Bairro_Comercial,'
      '   Cidade_Comercial,'
      '   Estado_Comercial,'
      '   Cep_Comercial,'
      '   Numero_Com,'
      '   Complemento_Com,'
      '   Tipo_Correspondencia'
      ''
      'into #etiqueta'
      'from '
      ''
      '   usuario u, '
      '   ##CodigoEtiquetas t, '
      '   contratante c'
      ''
      'where t.cd_usuario = u.codigo_completo'
      '     and c.codigo = u.codigo'
      #9' and t.id_sessao = @cdidSession'
      ''
      'update #etiqueta '
      'set '
      '   endereco = endereco_comercial,'
      '   bairro   = bairro_comercial,'
      '   cidade   = cidade_comercial,'
      '   estado   = estado_comercial,'
      '   cep      = cep_comercial,'
      '   numero   = numero_com,'
      '   compl    = complemento_com'
      ''
      'where tipo_correspondencia = '#39'Comercial'#39
      ''
      'select'
      '   codigo_completo cdUsuario,'
      '   nome,'
      '   endereco,'
      '   bairro,'
      '   cidade,'
      '   estado,'
      '   cep ,'
      '   numero,'
      '   compl'
      'from #etiqueta order by nome'
      ''
      ''
      '')
    Left = 1000
    Top = 400
  end
  object sp_inclusoesExclusoes: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      '--sp_inclusoesExclusoes '#39'01/01/2008'#39','#39'31/12/2008'#39
      
        'create procedure sp_inclusoesExclusoes @dtini char(10), @DtFim c' +
        'har(10)'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      '/*create table #temp'
      '(MesAno char(7),'
      ' QtInc int,'
      ' QtExc int)'
      '*/'
      ''
      'select '
      
        'replicate('#39'0'#39',2 - len(month(dt_venda))) + cast(month(dt_venda) a' +
        's varchar(2)) +'#39'/'#39' + cast(year(dt_venda) as varchar(4))  Mesano,' +
        ' count(*) qtde  '
      'into #inc'
      'from usuario'
      'where dt_venda between @dtini  and @DtFim '
      ''
      'group by '
      
        'replicate('#39'0'#39',2 - len(month(dt_venda))) + cast(month(dt_venda) a' +
        's varchar(2)) +'#39'/'#39' + cast(year(dt_venda) as varchar(4))'
      'order by 1'
      ''
      ''
      ''
      ''
      'select '
      
        'replicate('#39'0'#39',2 - len(month(data_exclusao))) + cast(month(data_e' +
        'xclusao) as varchar(2)) +'#39'/'#39' + cast(year(data_exclusao) as varch' +
        'ar(4))  Mesano, count(*) qtde  '
      'into #exc'
      'from usuario'
      'where data_exclusao between @dtini  and @DtFim '
      ''
      'group by '
      
        'replicate('#39'0'#39',2 - len(month(data_exclusao))) + cast(month(data_e' +
        'xclusao) as varchar(2)) +'#39'/'#39' + cast(year(data_exclusao) as varch' +
        'ar(4))'
      'order by 1'
      ''
      
        'select i.MesAno, i.qtde as Inc, x.qtde as Exc from #inc i , #exc' +
        ' x where i.MesAno = x.Mesano'
      'order by substring(i.mesano,4,4), substring(i.mesano,1,2)'
      '')
    Left = 976
    Top = 464
  end
  object SP_REL_FINANC_CLIENTE: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create PROCEDURE SP_REL_FINANC_CLIENTE --14797,10,0.0333'
      ''
      ''
      ''
      '@CdTitular int,'
      '@Multa decimal(10,2),'
      '@jurosDia decimal(10,4)'
      ''
      'AS'
      ''
      '--set @CdTitular = 14797'
      '--set @Multa = 10'
      '--set @jurosDia = 0.0333'
      ''
      ''
      'create table #financeiro'
      '(quebra varchar(20),'
      ' descricao varchar(50),'
      ' numero varchar(12),'
      ' vencto char(10),'
      ' valor1 smallmoney,'
      ' valor2 smallmoney,'
      ' valor3 smallmoney'
      ')'
      ''
      'insert into #financeiro'
      'select'
      '   '#39'OR'#199'AMENTOS APROVADOS'#39','
      '   u.nome,'
      '   o.numero,'
      '   convert(char(10),o.data_conferencia,103),'
      '   total_bruto,'
      '   total_desconto,'
      '   total_bruto - total_desconto diferenca'
      ''
      ' from orcamento o, usuario u where o.usuario = u.codigo_completo'
      'and u.codigo = @cdTitular'
      'and autorizado = 1'
      'and o.tipo in(1,6) --somente os tipos orcamentos e urgencia'
      'order by data_hora'
      ''
      'insert into #financeiro'
      ''
      'select'
      '      '#39'T'#205'TULOS EM ABERTO'#39','
      '      td.descricao,'
      '      r.numero_titulo,'
      '      convert(char(10),r.data_vencimento,103),'
      '      valor,'
      
        '      (valor * (@multa / 100)) + (valor * (datediff(day,data_ven' +
        'cimento,getdate()) * @JurosDia / 100)) juros,'
      
        '      valor + (valor * (@multa / 100)) + (valor * (datediff(day,' +
        'data_vencimento,getdate()) * @JurosDia / 100)) ValorComJurosMult' +
        'a'
      
        ' from receber r, tipodocumento td where codigo_contratante = @Cd' +
        'titular and data_pagamento is null'
      'and r.tipo_documento = td.codigo'
      'and data_vencimento <= getdate() + 1'
      'and r.tipo_documento <> 5 -- manuten'#231#227'o sai abaixo'
      ''
      'order by r.data_vencimento'
      ''
      '--select * from tipodocumento'
      ''
      ''
      'INSERT INTO #FINANCEIRO'
      'select'
      '      '#39'MANUTEN'#199#195'O EM ABERTO'#39','
      '      u.nome,'
      '      r.numero_titulo,'
      '      convert(char(10),r.data_vencimento,103),'
      '      valor,'
      
        '      (valor * (@multa / 100)) + (valor * (datediff(day,data_ven' +
        'cimento,getdate()) * @JurosDia / 100)) juros,'
      
        '      valor + (valor * (@multa / 100)) + (valor * (datediff(day,' +
        'data_vencimento,getdate()) * @JurosDia / 100)) ValorComJurosMult' +
        'a'
      ' from'
      #9'receber r,'
      '        usuario u'
      ''
      'where'
      '  '#9'    r.codigo_usuario =  u.codigo_completo'
      #9'and r.data_pagamento is null'
      #9'and r.data_vencimento <= getdate() + 1'
      '        and u.codigo = @Cdtitular'
      '        and r.tipo_documento = 5 -- so manutencao'
      ''
      'order by r.data_vencimento'
      '-- desconsiderado o if abaixo em 09/05/09 conf. Kelly'
      
        '--if @@rowcount > 0 -- somente inclui as manuten'#231#245'es pagas se ho' +
        'uver manuten'#231#227'o em atraso'
      '   INSERT INTO #FINANCEIRO'
      ''
      '   select'
      '      '#39'MANUTEN'#199#195'O PAGA'#39','
      '      u.nome,'
      '      r.numero_titulo,'
      '      convert(char(10),r.data_vencimento,103),'
      '      valor,'
      '      0,'
      '      valor'
      ' from'
      #9'receber r,'
      '        usuario u'
      ''
      'where'
      '  '#9'    r.codigo_usuario =  u.codigo_completo'
      #9'and r.data_pagamento is NOT null'
      '        and u.codigo = @Cdtitular'
      '        and r.tipo_documento = 5 -- so manutencao'
      'order by r.data_vencimento'
      ''
      'select * from #financeiro'
      ''
      ''
      '')
    Left = 976
    Top = 520
  end
  object OpcoesMenu: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (1,1,1,'#39'Cadastro/Diversos'#39','#39'Cidade2'#39','#39'Cid' +
        'ade'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (2,1,5,'#39'Cadastro/Diversos'#39','#39'ipodePagament' +
        'o1'#39','#39'Tipo de Pagamento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (3,1,10,'#39'Cadastro/Diversos'#39','#39'ipodeLigao1'#39 +
        ','#39'Tipo de Liga'#231#227'o'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (4,1,15,'#39'Cadastro/Diversos'#39','#39'ipodeContato' +
        '1'#39','#39'Tipo de Contato'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (5,1,20,'#39'Cadastro/Diversos'#39','#39'ipodeCobrana' +
        '1'#39','#39'Tipo de Cobran'#231'a'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (6,1,25,'#39'Cadastro/Diversos'#39','#39'ipodeDocumen' +
        'to1'#39','#39'Tipo de Documento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (7,1,30,'#39'Cadastro/Diversos'#39','#39'FormasdeLIqu' +
        'idao1'#39','#39'Formas de Liquida'#231#227'o'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (8,2,1,'#39'Cadastro/Procedimento'#39','#39'Cadastro2' +
        #39','#39'Cadastro'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (9,2,5,'#39'Cadastro/Procedimento'#39','#39'Valores1'#39 +
        ','#39'Valores'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (10,2,10,'#39'Cadastro/Procedimento'#39','#39'Cobertu' +
        'ra1'#39','#39'Cobertura'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (11,3,1,'#39'Cadastro/Planos'#39','#39'Preos1'#39','#39'Pre'#231'o' +
        's De PLanos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (12,3,5,'#39'Cadastro/Planos'#39','#39'Cobertura2'#39','#39'C' +
        'oberturas de Planos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (13,30,1,'#39'Contratos/contratante'#39','#39'Cadastr' +
        'o3'#39','#39'Cadastro de Contratantes'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (14,30,5,'#39'Contratos/contratante'#39','#39'Consult' +
        'adeTtulso1'#39','#39'Consulta de T'#237'tulos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (15,30,10,'#39'Contratos/contratante'#39','#39'Sinist' +
        'ralidade2'#39','#39'Sinistralidade'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (16,30,15,'#39'Contratos/contratante'#39','#39'Consul' +
        'taTratamento1'#39','#39'Consulta Tratamento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (17,30,20,'#39'Contratos/contratante'#39','#39'Mensag' +
        'ens2'#39','#39'Mensagens'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (18,31,1,'#39'Contratos/Etiquetas'#39','#39'Etiquetas' +
        '1'#39','#39'Etiquetas Usu'#225'rio/contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (19,32,1,'#39'Contratos/Relat'#243'rios'#39','#39'Aniversa' +
        'riantes1'#39','#39'Aniversariantes'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (20,32,5,'#39'Contratos/Relat'#243'rios'#39','#39'Incluses' +
        '1'#39','#39'Inclus'#245'es'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (21,32,10,'#39'Contratos/Relat'#243'rios'#39','#39'pBairro' +
        '1'#39','#39'Por Bairro'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (22,32,15,'#39'Contratos/Relat'#243'rios'#39','#39'PorPlan' +
        'o1'#39','#39'Por Plano'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (23,32,20,'#39'Contratos/Relat'#243'rios'#39','#39'Cancela' +
        'mentos1'#39','#39'Cancelamentos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (24,32,25,'#39'Contratos/Relat'#243'rios'#39','#39'Imposto' +
        'deRenda1'#39','#39'Imposto de Renda'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (25,32,30,'#39'Contratos/Relat'#243'rios'#39','#39'Inadimp' +
        'lentes1'#39','#39'Inadimplentes'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (26,32,35,'#39'Contratos/Relat'#243'rios'#39','#39'FichaFi' +
        'nanceira2'#39','#39'Ficha Financeira'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (27,60,01,'#39'Or'#231'amentos'#39','#39'Oramentos5'#39','#39'Or'#231'a' +
        'mentos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (28,60,05,'#39'Or'#231'amentos'#39','#39'ExcluirOramentos1' +
        #39','#39'Excluir Or'#231'amentos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (29,60,10,'#39'Or'#231'amentos'#39','#39'AlterarStatus1'#39','#39 +
        'Alterar Status'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (30,61,01,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'PorPer' +
        'odo1'#39','#39'Por Per'#237'odo'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (31,61,05,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'Finali' +
        'zados1'#39','#39'Finalizados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (32,61,10,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'EmAtra' +
        'so1'#39','#39'Em Atraso'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (33,61,15,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'QtdeOr' +
        'amentosPorStatus1'#39','#39'Qtde Or'#231'amentos Por Status'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (34,61,20,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'Proced' +
        'imentosPagos1'#39','#39'Procedimentos Pagos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (35,61,25,'#39'Or'#231'amentos/Relat'#243'rios'#39','#39'Oramen' +
        'tosPagos1'#39','#39'Or'#231'amentos a pagar'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (36,90,01,'#39'Dentista'#39','#39'CadastroDentista1'#39',' +
        #39'Cadastro Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (37,90,05,'#39'Dentista'#39','#39'PagamentoDentista1'#39 +
        ','#39'Pagamento Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (38,90,10,'#39'Dentista'#39','#39'EfetivaPagamentoDen' +
        'tista1'#39','#39'Efetiva Pagamento Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (39,90,15,'#39'Dentista'#39','#39'EtiquetasDentistas1' +
        #39','#39'Etiquetas Dentistas'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (40,90,20,'#39'Dentista'#39','#39'EndereoDentista1'#39','#39 +
        'Endere'#231'o Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (41,90,25,'#39'Dentista'#39','#39'RelatrioPagamentoDe' +
        'ntista1'#39','#39'Relat'#243'rio Pagamento Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (42,90,30,'#39'Dentista'#39','#39'RelatrioDentista1'#39',' +
        #39'Relat'#243'rio Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (43,90,35,'#39'Dentista'#39','#39'ConsultaPagamentoDe' +
        'ntista2'#39','#39'Consulta Pagamento Dentista'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (44,90,40,'#39'Dentista'#39','#39'RelatriodeCustoComO' +
        'ramentos2'#39','#39'Relat'#243'rio de Custo Com Or'#231'amentos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (45,91,01,'#39'Dentista/Ortondontia'#39','#39'Cadastr' +
        'o4'#39','#39'Cadastro Ortondontia'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (46,91,05,'#39'Dentista/Ortondontia'#39','#39'Manuten' +
        'oPerodoPagamento1'#39','#39'Manuten'#231#227'o Per'#237'odo(Pagamento)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (47,91,10,'#39'Dentista/Ortondontia'#39','#39'Relatri' +
        'oManutenoEmatraso1'#39','#39'Relat'#243'rio Manuten'#231#227'o Em atraso'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (48,92,01,'#39'Dentista/Prot'#233'tico'#39','#39'Cadastro5' +
        #39','#39'Cadastro Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (49,92,05,'#39'Dentista/Prot'#233'tico'#39','#39'Pagamento' +
        '1'#39','#39'Pagamento Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (50,92,10,'#39'Dentista/Prot'#233'tico'#39','#39'EfetivaPa' +
        'gamentoProttico1'#39','#39'Efetiva Pagamento Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (51,92,15,'#39'Dentista/Prot'#233'tico'#39','#39'EtiquetaP' +
        'rotetico1'#39','#39'Etiqueta Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (52,92,20,'#39'Dentista/Prot'#233'tico'#39','#39'RelatrioP' +
        'agamentoProttico1'#39','#39'Relat'#243'rio Pagamento Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (53,92,25,'#39'Dentista/Prot'#233'tico'#39','#39'RelatrioP' +
        'rottico1'#39','#39'Relat'#243'rio Prot'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (54,120,01,'#39'Vendas'#39','#39'Representantes1'#39','#39'Ca' +
        'dastro Representantes'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (55,120,05,'#39'Vendas'#39','#39'Vendedores1'#39','#39'Cadast' +
        'ro Vendedores'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (56,121,01,'#39'Vendas/Relat'#243'rios'#39','#39'ComissesP' +
        'orPerodo1'#39','#39'Comiss'#245'es Por Per'#237'odo'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (57,121,05,'#39'Vendas/Relat'#243'rios'#39','#39'AnalticoU' +
        'surio1'#39','#39'Anal'#237'tico(Usu'#225'rio)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (58,121,10,'#39'Vendas/Relat'#243'rios'#39','#39'ControleD' +
        'evendasPorContratante1'#39','#39'Controle De vendas Por Contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (59,121,15,'#39'Vendas/Relat'#243'rios'#39','#39'Controled' +
        'eVidasEmpresariais2'#39','#39'Controle de Vidas Empresariais'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (60,121,20,'#39'Vendas/Relat'#243'rios'#39','#39'GrficoInc' +
        'lusesXExcluses2'#39','#39'Gr'#225'fico Inclus'#245'es X Exclus'#245'es'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (61,150,01,'#39'Financeiro'#39','#39'GerenciadorFatur' +
        'amento1'#39','#39'Gerenciador Faturamento(Geral)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (62,150,05,'#39'Financeiro'#39','#39'GerenciadorFatur' +
        'amentousurio1'#39','#39'Gerenciador Faturamento(usu'#225'rio))'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (63,151,01,'#39'Financeiro/Banco'#39','#39'Preferenci' +
        'aDadosBancrios1'#39','#39'Preferencia(Dados Banc'#225'rios)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (64,151,05,'#39'Financeiro/Banco'#39','#39'ContasBanc' +
        'rias1'#39','#39'Contas Banc'#225'rias'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (65,151,10,'#39'Financeiro/Banco'#39','#39'GeraAutori' +
        'zao1'#39','#39'Gera Autoriza'#231#227'o(controle D'#233'b. Aut.)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (66,152,01,'#39'Financeiro/Contas a Receber'#39',' +
        #39'FormaPagamentoBoletoFrancesinhaCaixa1'#39','#39'Forma Pagamento Boleto(' +
        'Francesinha Caixa)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (67,152,05,'#39'Financeiro/Contas a Receber'#39',' +
        #39'tulosemAberto1'#39','#39'T'#237'tulos em Aberto'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (68,152,10,'#39'Financeiro/Contas a Receber'#39',' +
        #39'tulosCancelados1'#39','#39'T'#237'tulos Cancelados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (69,152,15,'#39'Financeiro/Contas a Receber'#39',' +
        #39'tulosBaixados1'#39','#39'T'#237'tulos Baixados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (70,152,20,'#39'Financeiro/Contas a Receber'#39',' +
        #39'CancelarRecibos1'#39','#39'Cancelar Recibos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (71,152,25,'#39'Financeiro/Contas a Receber'#39',' +
        #39'BaixaAutomticaPadroCNABCEF1'#39','#39'Baixa Autom'#225'tica Padr'#227'o CNAB(CEF)' +
        #39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (72,152,30,'#39'Financeiro/Contas a Receber'#39',' +
        #39'BaixaAutomticaPadroCNAB4001'#39','#39'Baixa Autom'#225'tica Padr'#227'o CNAB(400)' +
        ' - Bancoob'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (73,153,01,'#39'Financeiro/Controle'#39','#39'tulosBa' +
        'ixadosSRecibo1'#39','#39'T'#237'tulos Baixados S/ Recibo'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (74,153,05,'#39'Financeiro/Controle'#39','#39'Confern' +
        'ciaFaturamento1'#39','#39'Confer'#234'ncia Faturamento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (75,153,10,'#39'Financeiro/Controle'#39','#39'Estatst' +
        'icaGeral1'#39','#39'Estat'#237'stica Geral'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (76,153,15,'#39'Financeiro/Controle'#39','#39'BaixaPo' +
        'rAtendente1'#39','#39'Baixa Por Atendente'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (77,154,01,'#39'Financeiro / Relat'#243'rios'#39','#39'Con' +
        'tas1'#39','#39'Contas'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (78,154,05,'#39'Financeiro / Relat'#243'rios'#39','#39'Con' +
        'ferenciaBaixaCartesRelatriodeBaixas1'#39','#39'Conferencia Baixa Cart'#245'es' +
        '(Relat'#243'rio de Baixas)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (79,154,10,'#39'Financeiro / Relat'#243'rios'#39','#39'For' +
        'madePagtoBOLETOCNAB'#39','#39'Forma de Pagto BOLETO(CNAB)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (80,180,01,'#39'Odontograma'#39','#39'Parmetros2'#39','#39'Pa' +
        'r'#226'metros'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (81,180,05,'#39'Odontograma'#39','#39'Critrios2'#39','#39'Cri' +
        't'#233'rios'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (82,180,10,'#39'Odontograma'#39','#39'Pacotes2'#39','#39'Paco' +
        'tes'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (83,180,15,'#39'Odontograma'#39','#39'CritriodeServio' +
        'sporIdade1'#39','#39'Crit'#233'rio de Servi'#231'os por Idade'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (84,210,01,'#39'ANS'#39','#39'DiopsSIP1'#39','#39'Diops / SIP' +
        #39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (85,210,05,'#39'ANS'#39','#39'axaSuplementar1'#39','#39'Taxa ' +
        'Suplementar'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (86,210,10,'#39'ANS'#39','#39'OramentosSIP1'#39','#39'Or'#231'amen' +
        'tos/SIP'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (87,210,15,'#39'ANS'#39','#39'OramentosTotal1'#39','#39'Or'#231'am' +
        'entos Total'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (88,210,20,'#39'ANS'#39','#39'GeraarquivoSIBNovo2'#39','#39'G' +
        'era arquivo SIB(Novo)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (89,210,25,'#39'ANS'#39','#39'GeraExclusodenoIdentifi' +
        'cados2'#39','#39'Gera Exclus'#227'o de n'#227'o Identificados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (90,210,30,'#39'ANS'#39','#39'CancelaltimoSucep1'#39','#39'&C' +
        'ancela '#218'ltimo Sucep'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (91,210,35,'#39'ANS'#39','#39'RegistrosAuxiliares2'#39','#39 +
        '&Registros Auxiliares'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (92,210,40,'#39'ANS'#39','#39'ArquivoRPC2'#39','#39'Arquivo R' +
        'PC'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (93,210,45,'#39'ANS'#39','#39'UsuriosXServios1Veznoan' +
        'o2'#39','#39'Usu'#225'rios X Servi'#231'os 1'#186' Vez no ano'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (94,210,50,'#39'ANS'#39','#39'QtdeServioPagonoPerodo2' +
        #39','#39'Qtde Servi'#231'o Pago no Per'#237'odo'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (95,210,55,'#39'ANS'#39','#39'ConfernciaANS2'#39','#39'Confer' +
        #234'ncia ANS'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (96,250,01,'#39'Utilit'#225'rio'#39','#39'Parmetros3'#39','#39'Par' +
        #226'metros'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (97,250,05,'#39'Utilit'#225'rio'#39','#39'AtualizaBancodeD' +
        'adosNovaVerso1'#39','#39'Atualiza Banco de Dados(Nova Vers'#227'o)'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (98,251,10,'#39'Utilit'#225'rio/Funcion'#225'rios'#39','#39'Cad' +
        'astrodeGrupodeOperadores1'#39','#39'Cadastro de Grupo de Funcion'#225'rios'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (99,251,15,'#39'Utilit'#225'rio/Funcion'#225'rios'#39','#39'Cad' +
        'astrodeFuncionrios1'#39','#39'Cadastro de Funcion'#225'rios'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (100,252,01,'#39'Utilit'#225'rio'#39','#39'ExecutaComando1' +
        #39','#39'Executa Comando'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (101,155,'#39'01'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'01 - Aberto p/ Contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (102,155,'#39'02'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'02 - Aberto p/ Vencimento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (103,155,'#39'03'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'03 - Aberto p/ Forma Cobran'#231'a'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (104,155,'#39'04'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'04 - Aberto Vencimento Completo'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (105,155,'#39'05'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'05 - Aberto p/ Grupo Contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (106,155,'#39'06'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'06 - Aberto c/ Or'#231'amento Trat.'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (107,155,'#39'07'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'07 - Baixados p/ Contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (108,155,'#39'08'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'08 - Baixados p/ Data Baixa'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (109,155,'#39'09'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'09 - Baixados p/ Forma Cobran'#231'a'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (110,155,'#39'10'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'10 - Baixados p/ Status/Or'#231'amento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (111,155,'#39'11'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'11 - Baixados p/ Data Sint'#233'tico'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (112,155,'#39'12'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'12 - Baixados p/ Tipo Pgto'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (113,155,'#39'13'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'13 - Cancelados p/ Contratante'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (114,155,'#39'14'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'14 - Cancelados p/ Cancelamento'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (115,155,'#39'15'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'15 - Contratos p/ Forma Cobran'#231'a'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (116,155,'#39'16'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'16 - Etiqueta Cobranca'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (117,155,'#39'17'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'17 - T'#237'tulos Gerados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (118,155,'#39'18'#39','#39'Financeiro / Relat'#243'rios'#39','#39 +
        #39','#39'18 - Resumo de baixas em bancos'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (119,156,01,'#39'Financeiro/Contas a Receber'#39 +
        ','#39#39','#39' Manut/Extorno Tit. Baixados'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (120,62,01,'#39'Or'#231'amentos'#39','#39#39','#39'Altera'#231#227'o Orc' +
        '. Autorizado'#39')'
      
        'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,n' +
        'm_menu,ds_menu) values (121,62,02,'#39'Or'#231'amentos'#39','#39#39','#39'Exclus'#227'o de o' +
        'r'#231'amentos'#39')')
    Left = 976
    Top = 576
  end
  object tr_u_VerifDesativaPlano: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter trigger tr_u_VerifDesativaPlano on  plano'
      'for update'
      ''
      'as'
      'print '#39'tr_u_VerifDesativaPlano desabilitada'#39
      '/*'
      'if update(ativo) '
      'begin'
      '   if exists(select * from contratante c, inserted i '
      
        '      where i.codigo = c.plano and c.exclusao is null and i.ativ' +
        'o = 0)'
      '   begin'
      
        '      raiserror('#39'Este plano n'#227'o pode ser desativado pois existem' +
        ' contratantes ativos para este plano'#39',16,1)'
      '      rollback tran'
      '   end'
      ''
      'end'
      '*/')
    Left = 929
    Top = 624
  end
  object tr_u_alt_statusPagto: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter trigger tr_u_alt_statusPagto on itens_orcamento'
      ''
      'for update'
      ''
      'as'
      ''
      
        'if update(status) and exists(select * from inserted i , deleted ' +
        'd where i.orcamento = d.orcamento and i.incremento = d.increment' +
        'o and i.status <> d.status)'
      'begin'
      '   '
      '   declare @status  char(1)'
      
        '   -- muda a letra pq na tabela Itens_PagDentista N significa No' +
        'rmal e na tabela itens_orcamento S significa normal'
      '   set @status = (select status from inserted)'
      '   if @status = '#39'A'#39
      '      set @status = '#39'N'#39
      '  -- set rowcount 1'
      
        '   update Itens_PagDentista set status = @status from inserted i' +
        ' '
      '   where     i.orcamento = Itens_PagDentista.orcamento '
      '         and i.servico = Itens_PagDentista.servico'
      '         and i.Incremento = itens_pagDentista.Incremento'
      '         and Itens_PagDentista.status <> @status and MesAno = '#39#39
      '   '
      
        '   update itens_pagProtetico set status = @status from inserted ' +
        'i '
      '   where     i.orcamento = itens_pagProtetico.orcamento '
      '         and i.servico = itens_pagProtetico.servico'
      '         and i.Incremento = itens_pagProtetico.incremento '
      
        '         and itens_pagProtetico.status <> @status and itens_pagP' +
        'rotetico.MesAno = '#39#39'         '
      '--   set rowcount 0'
      'end'
      ''
      '')
    Left = 808
    Top = 592
  end
  object Inseri_script: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'insert into script select max(cd_script) + 1, '#39'SIB - exclus'#245'es d' +
        'o '#250'ltimo envio SIB sem CCO'#39','#39'set dateformat dmy select * from us' +
        'uario where exclusao_Susep between @Ultima data de envio SIB| an' +
        'd @Repita ultima data de envio SIB| + '#39#39' 23:59'#39#39' and cco is null' +
        #39',getdate(),null from script'
      
        'insert into script select max(cd_script) + 1, '#39'SIB - altera'#231#245'es ' +
        'do '#250'ltimo envio SIB sem CCO'#39','#39'set dateformat dmy select * from u' +
        'suario where alteracao_Susep between @Ultima data de envio SIB| ' +
        'and @Repita ultima data de envio SIB| + '#39#39' 23:59'#39#39' and cco is nu' +
        'll'#39',getdate(),null from script')
    Left = 787
    Top = 666
  end
  object SpCancArqSusep: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter Procedure SpCancArqSusep'
      ''
      ' @data datetime'
      ''
      'as'
      ''
      'begin tran'
      ''
      'update usuario -- usuarios de inclus'#227'o na susep'
      'set Inclusao_Susep = null'
      
        'where  Inclusao_Susep between (convert(datetime, @data + '#39' 00:00' +
        ':00'#39',103)) and'
      
        '                              (convert(datetime, @data + '#39' 23:59' +
        ':59'#39',103))'
      ''
      'update usuario -- usuarios de exclus'#227'o na susep'
      'set exclusao_Susep = null'
      
        'where exclusao_Susep between (convert(datetime, @data + '#39' 00:00:' +
        '00'#39',103)) and'
      
        '                              (convert(datetime, @data + '#39' 23:59' +
        ':59'#39',103))'
      ''
      'update usuario -- usuarios de alteracao na susep'
      'set alteracao_susep = null, alterado = 1'
      
        'where alteracao_Susep between (convert(datetime, @data + '#39' 00:00' +
        ':00'#39',103)) and'
      
        '                              (convert(datetime, @data + '#39' 23:59' +
        ':59'#39',103))'
      ''
      'update usuario -- usuarios de alteracao na susep'
      'set reinclusao_sib = null'
      
        'where reinclusao_sib between (convert(datetime, @data + '#39' 00:00:' +
        '00'#39',103)) and'
      
        '                              (convert(datetime, @data + '#39' 23:59' +
        ':59'#39',103))'
      '--update paramANS set UltArqSusep = UltArqSusep - 1'
      ''
      'commit'
      ''
      ''
      '')
    Left = 368
    Top = 24
  end
  object TR_U_DENTISTA: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter TRIGGER TR_U_DENTISTA ON DENTISTA'
      'FOR UPDATE'
      ''
      'AS'
      '-- ALTERA PARA MANDAR PARA A GR'#193'FICA'
      'IF UPDATE(NOME) OR UPDATE(FONE1) OR UPDATE(DATA_EXCLUSAO)'
      
        '  UPDATE DENTISTA SET ALTERADO = '#39'S'#39' FROM INSERTED I WHERE I.COD' +
        'IGO = DENTISTA.CODIGO AND DENTISTA.ALTERADO = '#39'N'#39
      '  if not update(updated)'
      
        '     UPDATE DENTISTA SET updated = getdate() FROM INSERTED I WHE' +
        'RE I.CODIGO = DENTISTA.CODIGO '
      '     '
      'if update(data_exclusao) '
      
        '  if exists(select * from inserted where data_exclusao is not nu' +
        'll)'
      
        '     update dentista set exibir = 0 from inserted d where d.codi' +
        'go = dentista.codigo and d.exibir = 1'
      '  else'
      
        '     update dentista set exibir = 1 from inserted d where d.codi' +
        'go = dentista.codigo and d.exibir = 0'
      ''
      ''
      '')
    Left = 368
    Top = 632
  end
  object TR_U_DENTISTAXENDERECO: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'ALTER TRIGGER TR_U_DENTISTAXENDERECO ON ENDERECO_X_DENTISTA'
      ''
      'FOR UPDATE'
      ''
      'AS'
      '--SELECT * FROM ENDERECO_X_DENTISTA'
      ''
      '-- para enviar para a grafica'
      'IF NOT UPDATE(UPDATED)'
      
        '  update  endereco_x_dentista set updated = GETDATE() from inser' +
        'ted i where i.cd_dentista = endereco_x_dentista.cd_dentista'
      
        '                                                                ' +
        '        and i.ds_endereco = endereco_x_dentista.ds_endereco'
      ''
      'IF EXISTS(SELECT * FROM INSERTED WHERE TP_ENDERECO = '#39'C'#39')'
      'BEGIN'
      '   IF UPDATE (LOGRADOURO) OR'
      '      UPDATE (BAIRRO)     OR'
      '      UPDATE (CEP)        OR'
      '      UPDATE (CD_CIDADE)  OR'
      '      UPDATE (FONE1)      OR'
      '      UPDATE (CD_BAIRRO)  OR'
      '      UPDATE (TP_ENDERECO) '
      '   BEGIN'
      
        '         UPDATE DENTISTA SET ALTERADO = '#39'S'#39' FROM INSERTED I WHER' +
        'E I.CD_DENTISTA = DENTISTA.CODIGO AND DENTISTA.ALTERADO = '#39'N'#39
      '   END'
      ''
      'END'
      ''
      '')
    Left = 464
    Top = 648
  end
  object TR_U_ESP_X_DENTISTA: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter TRIGGER TR_U_ESP_X_DENTISTA ON ESP_X_DENTISTA'
      ''
      'FOR INSERT,UPDATE,DELETE'
      ''
      'AS'
      'if not update(updated)'
      
        '    update esp_x_dentista set updated = getdate() from inserted ' +
        'i where i.cd_dentista      = esp_x_dentista.cd_dentista'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'and i.cd_especialidade = esp_x_dentista.cd_espe' +
        'cialidade'
      ''
      
        'UPDATE DENTISTA SET ALTERADO = '#39'S'#39' FROM INSERTED I WHERE I.CD_DE' +
        'NTISTA = DENTISTA.CODIGO AND DENTISTA.ALTERADO = '#39'N'#39
      
        'UPDATE DENTISTA SET ALTERADO = '#39'S'#39' FROM DELETED  I WHERE I.CD_DE' +
        'NTISTA = DENTISTA.CODIGO AND DENTISTA.ALTERADO = '#39'N'#39
      ''
      'if exists(select * from inserted where idEspXDentista is null)'
      'begin'
      
        '  update esp_x_dentista set idEspXDentista = (select max(idEspXD' +
        'entista) + 1 from esp_x_dentista) '
      '  from inserted '
      '  where esp_x_dentista.cd_dentista = inserted.cd_dentista '
      
        '    and esp_x_dentista.cd_especialidade = inserted.cd_especialid' +
        'ade'
      'end'
      ''
      ''
      ''
      '')
    Left = 584
    Top = 648
  end
  object sp_RelCustoComOrcamento: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter procedure sp_RelCustoComOrcamento'
      ''
      '@DtIni char(10),'
      '@Dtfim char(10),'
      '@DentIni int,'
      '@Dentfim int,'
      '@ServIni int,'
      '@ServFim int,'
      '@Ordem   int,'
      
        '@Tipo   char(1) -- A = lista or'#231'amentos aprovados, N lista or'#231'am' +
        'entos n'#227'o aprovados'
      ''
      'as'
      ''
      'set dateformat dmy'
      '-- esse primeiro select somente cria a tabela vazia.'
      'select '
      #9'o.dentista, '
      '    d.nome nm_dentista, count(distinct o.numero) qtOrc,'
      #9'Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100))  as Valor,'
      #9'Sum(i.Valor_Bruto)     as Valor_Bruto,'
      #9'Sum(i.Valor_Dentista)  as Valor_Dentista,'
      #9'Sum(i.Valor_Protetico) as Valor_Protetico,'
      
        '    Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isnul' +
        'l(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) saldo,'
      '    cast(0 as  decimal(15,2)) media'
      
        '    --sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isn' +
        'ull(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) / count(d' +
        'istinct o.numero) media'
      ''
      'into #CustoOrc'
      ''
      'from'
      #9'orcamento o,'
      #9'Itens_Orcamento i,'
      #9'dentista d'
      ''
      'where'
      '         2 = 1'
      '   '#9'    and o.numero = i.orcamento'
      '        and i.status <> '#39'C'#39
      '        and d.codigo = o.dentista'
      '        and  o.Data_Conferencia between'
      '        @DtIni and @DtFim + '#39' 23:59'#39
      '        and o.dentista between @DentIni and @DentFim'
      '        and i.servico between @ServIni and @ServFim'
      '        and o.autorizado = 1'
      '         '
      'group by'
      #9'o.dentista,'
      '       d.nome'
      ''
      ''
      'if @Tipo = '#39'A'#39
      'begin'
      ''
      'insert into #CustoOrc'
      ''
      'select '
      #9'o.dentista, '
      '    d.nome nm_dentista, count(distinct o.numero) qtOrc,'
      #9'Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100))  as Valor,'
      #9'Sum(i.Valor_Bruto)     as Valor_Bruto,'
      #9'Sum(i.Valor_Dentista)  as Valor_Dentista,'
      #9'Sum(i.Valor_Protetico) as Valor_Protetico,'
      
        '    Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isnul' +
        'l(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) saldo,'
      '    cast(0 as  decimal(15,2)) media'
      
        '    --sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isn' +
        'ull(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) / count(d' +
        'istinct o.numero) media'
      ''
      ''
      'from'
      #9'orcamento o,'
      #9'Itens_Orcamento i,'
      #9'dentista d'
      ''
      'where'
      '   '#9'    o.numero = i.orcamento'
      '        and i.status <> '#39'C'#39
      '        and d.codigo = o.dentista'
      '        and  o.Data_Conferencia between'
      '        @DtIni and @DtFim + '#39' 23:59'#39
      '        and o.dentista between @DentIni and @DentFim'
      '        and i.servico between @ServIni and @ServFim'
      '        and o.autorizado = 1'
      'group by'
      #9'o.dentista,'
      '       d.nome'
      ''
      'end'
      'else -- or'#231'amentos n'#227'o aprovados'
      'begin'
      ''
      'insert into #CustoOrc'
      ''
      'select '
      #9'o.dentista, '
      '    d.nome nm_dentista, count(distinct o.numero) qtOrc,'
      #9'Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100))  as Valor,'
      #9'Sum(i.Valor_Bruto)     as Valor_Bruto,'
      #9'Sum(i.Valor_Dentista)  as Valor_Dentista,'
      #9'Sum(i.Valor_Protetico) as Valor_Protetico,'
      
        '    Sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isnul' +
        'l(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) saldo,'
      '    cast(0 as  decimal(15,2)) media'
      
        '    --sum((i.Valor * (100 - isnull(o.desconto,0)) / 100)) - (isn' +
        'ull(Sum(i.Valor_Dentista) + Sum(i.Valor_Protetico),0)) / count(d' +
        'istinct o.numero) media'
      ''
      ''
      ''
      'from'
      #9'orcamento o,'
      #9'Itens_Orcamento i,'
      #9'dentista d'
      ''
      'where '
      '   '#9'    o.numero = i.orcamento'
      '        and i.status <> '#39'C'#39
      '        and d.codigo = o.dentista'
      '        and  o.Data_Hora between'
      '        @DtIni and @DtFim + '#39' 23:59'#39
      '        and o.dentista between @DentIni and @DentFim'
      '        and i.servico between @ServIni and @ServFim'
      '        and o.autorizado = 0'
      'group by'
      #9'o.dentista,'
      '       d.nome'
      'end'
      ''
      'update #CustoOrc set media = saldo / QtOrc'
      ''
      'if @ordem = 0'
      ' select * from #CustoOrc order by saldo '
      'else'
      'if @ordem = 1'
      ' select * from #CustoOrc order by saldo desc'
      'else'
      'if @ordem = 2'
      ' select * from #CustoOrc order by nm_dentista'
      'else'
      'if @ordem = 3'
      ' select * from #CustoOrc order by media '
      'else'
      'if @ordem = 4'
      ' select * from #CustoOrc order by media desc')
    Left = 320
    Top = 648
  end
  object sp_rel_custo_orc_detail: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create procedure sp_rel_custo_orc_detail'
      ''
      '-- declare'
      '@dtini        char(10),'
      '@dtFim        char(10),'
      '@DentistaIni  int,'
      '@DentistaFim  int,'
      '@cdServicoIni int,'
      '@cdServicoFim int,'
      '@cdOrdem      smallint,'
      '@agrupamento  varchar(10)'
      ''
      '--drop table #Orcamentos'
      ''
      'as'
      ''
      '/*'
      'set @dtini = '#39'01/06/2009'#39
      'set @dtFim = '#39'10/06/2009'#39
      'set @DentistaIni = 0'
      'set @DentistaFim = 99999999'
      'set @cdServicoIni = 0'
      'set @cdServicoFim = 99999999'
      'set @cdOrdem = 0'
      '*/'
      ''
      'set dateformat dmy'
      ''
      'select '
      #9'o.dentista, '
      '        d.nome nm_dentista,        '
      '        s.codigo,'
      '        s.descricao,'
      '  count(*) qt,'
      #9'sum((i.Valor * (100 - isnull(o.desconto,0)) / 100))  as Valor,'
      #9'sum(i.Valor_Bruto) Valor_Bruto,'
      #9'sum(i.Valor_Dentista) Valor_Dentista,'
      #9'sum(i.Valor_Protetico) Valor_Protetico,'
      
        '        sum((i.Valor * (100 - isnull(o.desconto,0)) / 100) - isn' +
        'ull(i.Valor_Dentista + i.Valor_Protetico,0)) saldo,'
      '        cast(0 as int)QtdeOrcamento,'
      '        cast(0 as decimal(15,2))SaldoTotal,'
      '        cast(0 as decimal(15,2)) media'
      ''
      'into #Orcamentos'
      ''
      'from '
      #9'orcamento o, '
      #9'Itens_Orcamento i,'
      #9'dentista d,'
      '        servicos s'
      ''
      'where '
      '   '#9'    o.numero = i.orcamento and i.status <> '#39'C'#39
      '        and d.codigo = o.dentista'
      '        and  o.Data_Conferencia between'
      '        @dtini and @dtfim + '#39' 23:59'#39
      '        and o.dentista between @DentistaIni and @DentistaFim'
      '        and i.servico between @cdServicoIni and @cdServicoFim'
      '        and o.autorizado = 1'
      '        and i.servico = s.codigo'
      ''
      'group by'
      ''
      #9'o.dentista,'
      '        d.nome ,'
      '        s.codigo,'
      '        s.descricao'
      ''
      'order by d.nome,o.dentista,10'
      ''
      ''
      
        'update #orcamentos set QtdeOrcamento = (select count(distinct o.' +
        'numero)  '
      'from '
      #9'orcamento o, '
      #9'Itens_Orcamento i,'
      #9'dentista d,'
      '        servicos s'
      ''
      'where '
      '   '#9'    o.numero = i.orcamento and i.status <> '#39'C'#39
      '        and d.codigo = o.dentista'
      '        and  o.Data_Conferencia between'
      '        @dtini and @dtfim + '#39' 23:59'#39
      '        and o.dentista between @DentistaIni and @DentistaFim'
      '        and i.servico between @cdServicoIni and @cdServicoFim'
      '        and o.autorizado = 1'
      '        and #orcamentos.dentista = o.dentista'
      '        and i.servico = s.codigo)'
      ''
      ''
      
        'update #orcamentos set SaldoTotal = (select sum(saldo) from #orc' +
        'amentos o where o.dentista = #orcamentos.dentista)'
      ''
      'update #orcamentos set media = SaldoTotal / QtdeOrcamento'
      ''
      'if @agrupamento = '#39'DENTISTA'#39
      'begin'
      '   if @cdOrdem = 1 -- saldo ordem decrescente'
      
        '      select * from  #Orcamentos order by SaldoTotal desc,dentis' +
        'ta'
      '   else'
      '   if @cdOrdem = 2 -- saldo ordem crescente'
      '      select * from  #Orcamentos order by SaldoTotal,dentista '
      '   else'
      '   if @cdOrdem = 3 -- dentista'
      '      select * from  #Orcamentos order by nm_dentista,dentista'
      '   else'
      '   if @cdOrdem = 4 -- media ordem crescente'
      '     select * from  #Orcamentos order by media,dentista'
      '   else'
      '   if @cdOrdem = 5 -- media ordem decrescente'
      '      select * from  #Orcamentos order by media desc,dentista '
      'end'
      'else'
      'if @agrupamento = '#39'SERVICO'#39
      '   select * from  #Orcamentos order by descricao,codigo'
      '/*begin'
      '   if @cdOrdem = 1 -- saldo ordem decrescente'
      '      select * from  #Orcamentos order by SaldoTotal desc,codigo'
      '   else'
      '   if @cdOrdem = 2 -- saldo ordem crescente'
      '      select * from  #Orcamentos order by SaldoTotal,codigo'
      '   else'
      '   if @cdOrdem = 3 -- dentista'
      '      select * from  #Orcamentos order by nm_dentista,codigo'
      '   else'
      '   if @cdOrdem = 4 -- media ordem crescente'
      '     select * from  #Orcamentos order by media,codigo'
      '   else'
      '   if @cdOrdem = 5 -- media ordem decrescente'
      '      select * from  #Orcamentos order by media desc,codigo'
      ''
      'end*/')
    Left = 872
    Top = 664
  end
  object sp_listaEtiqContrat: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure sp_listaEtiqContrat @CdContrat varchar(2000)'
      ''
      'as'
      ''
      'declare @i int'
      'declare @j int'
      'set @i = 1'
      'set @j = len(@CdContrat)'
      ''
      'create table #temp (cdContrat numeric(10))'
      ''
      'while @i < = @j'
      'begin'
      '   insert into #temp values (substring(@CdContrat,@i,10))'
      '   set @i = @i + 10'
      'end'
      ''
      'select'
      '   c.codigo,'
      '   c.nome,'
      '   c.Endereco_Residencial endereco,'
      '   c.Bairro_Residencial bairro,'
      '   c.Cidade_Residencial cidade,'
      '   c.Estado_Residencial estado,'
      '   c.CEP_Residencial cep ,'
      '   c.Numero_Res numero,'
      '   c.Complemento_Res compl,'
      '   c.Endereco_Comercial,'
      '   c.Bairro_Comercial,'
      '   c.Cidade_Comercial,'
      '   c.Estado_Comercial,'
      '   c.Cep_Comercial,'
      '   c.Numero_Com,'
      '   c.Complemento_Com,'
      '   c.Tipo_Correspondencia'
      ''
      'into #etiqueta'
      ''
      'from '
      ''
      '   '
      '   #temp t, '
      '   contratante c'
      ''
      'where '
      '      c.codigo = t.cdcontrat'
      ''
      'update #etiqueta '
      'set '
      '   endereco = endereco_comercial,'
      '   bairro   = bairro_comercial,'
      '   cidade   = cidade_comercial,'
      '   estado   = estado_comercial,'
      '   cep      = cep_comercial,'
      '   numero   = numero_com,'
      '   compl    = complemento_com'
      ''
      'where tipo_correspondencia = '#39'Comercial'#39
      ''
      'select'
      '   codigo cdUsuario,'
      '   nome,'
      '   endereco,'
      '   bairro,'
      '   cidade,'
      '   estado,'
      '   cep ,'
      '   numero,'
      '   compl'
      ''
      'from #etiqueta order by nome'
      ''
      '')
    Left = 75
    Top = 648
  end
  object SP_GERA_DMED: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      '-- versao 2019'
      
        'alter PROCEDURE SP_GERA_DMED_REG_TOP --SP_GERA_DMED_REG_TOP '#39'01/' +
        '01/2015'#39','#39'31/12/2015'#39
      ''
      '--DECLARE'
      ''
      '@DTINI CHAR(10),'
      '@DTFIM CHAR(10)'
      ''
      'AS'
      ''
      
        '-- DROP TABLE #DMED DROP TABLE #BOSS  DROP TABLE #RESULT DROP TA' +
        'BLE #DMEDAUX'
      '--SET @DTINI = '#39'01/01/2015'#39
      '--SET @DTFIM = '#39'31/12/2015'#39
      ''
      'SET DATEFORMAT DMY'
      'DECLARE @ANO INT'
      'SET @ANO = SUBSTRING(@DTINI,7,4)'
      ''
      'SELECT  '
      ''
      '    C.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF,'
      
        '    convert(datetime,NULL) DT_NASCIMENTO, -- CONTRATANTE NAO TEM' +
        ' DT DE NASCIMENTO MAS NO REGISTRO TOP DO DMED NAO PRECISA DE DAT' +
        'A DE NASCIMENTO, T'#193' AKI PARA COMPATIBILIDADE NO UNION'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,    '
      '    C.CODIGO,'
      '    C.CODIGO AS CD_CONTRATANTE,'
      '    '#39'M'#39' TIPO,'
      
        '    C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR' +
        ' CPF'
      
        '    CAST(0 AS INT) CD_TITULAR, -- NAO SE APLICA AKI, SOMENTE NO ' +
        'SELECT DE UNION'
      
        '    '#39'A'#39' AS LG_TITULAR -- A TITULAR, B DEPENDENTE. COMO T'#193' FAZEND' +
        'O UNION DA CONTRATANTE(MENSAILDADES) COM USUARIO(OR'#199'AMENTOS E MA' +
        'NUTEN'#199#195'O)'
      
        '                   -- DEFINE QUE OS REGISTROS DE MENSALIDADE DO ' +
        'CONTRATANTE S'#195'O DO TITULAR, E OR'#199'AMENTOS E MANUTEN'#199#213'ES , DEPENDE' +
        ' DO GRAU'
      
        '                   -- A GABI DEFINIU QUE PARAA MENSALIDADE MANDA' +
        ' TUDO NO NOME DO TITULAR, E PARA MANUTEN'#199#195'O E OR'#199'AMENTOS MANDA'
      
        '                   -- NO NOME DE QUEM FEZ, SE FOR  TITULAR MANDA' +
        ' PARA O TITULAR(REGISTRO TOP DO DMED) E SE FOR DEPENDENTE MANDA ' +
        'PARA DEPENDETE(REGISTRO DTOP DO DMED)'
      '    ,'#39'S'#39' LG_PODE_ALTERAR,'
      '    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,'
      #9'CAST('#39'MENSALIDADE'#39' AS VARCHAR(50)) MOTIVO,'
      #9'CAST(NULL AS BIT) lg_ir,'
      #9'1 grau_parentesco'
      ''
      'INTO #DMED'
      ''
      'FROM '
      #9'RECEBER R, '
      #9'TIPODOCUMENTO T,'
      '    CONTRATANTE C,'
      '    PLANO P'
      ''
      'WHERE '
      #9'     T.CODIGO = R.TIPO_DOCUMENTO '
      '        AND C.CODIGO  = R.CODIGO_CONTRATANTE'
      '        AND P.CODIGO  = C.PLANO'
      #9'AND DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    --AND P.FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI SOMENTE PESSOA F'#205 +
        'SICA..'
      
        '    AND C.empresa = 0 -- ALTERADO FILTRO DO PLANO PARA O CONTRAT' +
        'ANTE PARA FICAR IGUAL RELATORIO 08 (19/03/2012)'
      '    --AND T.CODIGO = 1 -- MENSALIDADE'
      '--  AND T.CODIGO IN (1,4, 9,10,11,14,15,16,18,21,23,26)    '
      
        '    and T.CODIGO IN(select CODIGO from TipoDocumento where Class' +
        'ificacao = '#39'Mensalidade'#39')'
      '    '
      ''
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  '
      '    U.NOME AS NM_CONTRATANTE,'
      '    U.CPF as CGC_CPF,'
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,'
      '    U.CODIGO_COMPLETO CODIGO,'
      '    U.CODIGO AS CD_CONTRATANTE,'
      '    '#39'O'#39' TIPO,'
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      
        '    CASE U.GRAU_PARENTESCO WHEN 1 THEN '#39'A'#39' ELSE '#39'B'#39' END AS LG_TI' +
        'TULAR'
      '    ,'#39'S'#39' LG_PODE_ALTERAR,'
      '    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,'
      #9#39#39' MOTIVO,'
      #9'O.lg_ir,'
      #9'U.GRAU_PARENTESCO'
      ''
      ''
      'FROM '
      #9'RECEBER R'
      ''
      'INNER JOIN'#9'TIPODOCUMENTO T '
      'ON'
      '   T.CODIGO = R.TIPO_DOCUMENTO '
      ''
      'INNER JOIN USUARIO U '
      'ON'
      '   U.CODIGO_COMPLETO = R.CODIGO_USUARIO'
      ''
      'INNER JOIN CONTRATANTE C'
      'ON'
      '    C.CODIGO  = U.CODIGO'
      ''
      
        'INNER JOIN ORCAMENTO O --- so para ficar compat'#237'vel com o script' +
        ' retira_orc_dmed.sql, pois no script precisa saber se solicitou ' +
        'ou nao DMED'
      'ON'
      '  O.NUMERO = R.ORCAMENTO --TB ORCAMENTO'
      ''
      'WHERE '
      #9'        '
      #9'    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    --AND FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI OR'#199'AMENTOS MANUT '#201' ' +
        'O BENEF. QUE PAGA, INT'#195'O N'#195'O VERIFICA SE '#201' PJ OU PF'
      #9#9#9#9'   '
      
        '    AND T.CODIGO IN(select CODIGO from TipoDocumento where Class' +
        'ificacao <> '#39'Mensalidade'#39')    -- orc. e manut)    '
      ''
      
        'update #dmed set cgc_cpf = replace(REPLACE(cgc_cpf,'#39'-'#39','#39#39'),'#39'.'#39','#39 +
        #39')'
      
        'update #dmed set CPF_ORDENACAO = replace(REPLACE(CPF_ORDENACAO,'#39 +
        '-'#39','#39#39'),'#39'.'#39','#39#39')'
      '--update #dmed set lg_ir = 0 where lg_ir is null'
      ''
      ''
      
        'UPDATE #DMED SET LG_PODE_ALTERAR = '#39'N'#39', MOTIVO = '#39'SOLICITOU RECI' +
        'BO DE IR'#39' FROM RECIBOIR_CONTRATANTE R WHERE R.CD_CONTRATANTE = #' +
        'DMED.CD_CONTRATANTE AND R.ANO IN(2010,2011,2012,2013,2014,2015,2' +
        '016,2017,2018,2019,2020)'
      ''
      
        'UPDATE #DMED SET LG_PODE_ALTERAR = '#39'N'#39', MOTIVO = '#39'CONTRATANTE NO' +
        'VO'#39' WHERE YEAR(DT_INCLUSAO_CONTRAT) >= 2018 and LG_PODE_ALTERAR ' +
        '= '#39'S'#39
      ''
      ''
      'if(select codigo from Empresa) <> 1'
      
        '   UPDATE #DMED SET LG_PODE_ALTERAR = '#39'N'#39', MOTIVO = '#39'INFORMOU IR' +
        ' NO ORCAMENTO'#39' WHERE lg_ir = 1 and LG_PODE_ALTERAR = '#39'S'#39
      '   '
      '   '
      'ALTER TABLE #DMED ADD LG_ENVIAR CHAR(1)'
      'UPDATE #DMED SET LG_ENVIAR = '#39'N'#39
      'UPDATE #DMED SET LG_ENVIAR = '#39'S'#39' WHERE tipo = '#39'M'#39
      
        '--select '#39'setou mensalidade'#39' momento, sum(valor_pago) from #dmed' +
        ' where LG_ENVIAR = '#39'S'#39
      'IF (select codigo from Empresa) = 1 '
      'BEGIN'
      ''
      
        '    UPDATE #DMED SET LG_ENVIAR = '#39'S'#39' WHERE tipo <> '#39'M'#39' AND  LG_P' +
        'ODE_ALTERAR = '#39'N'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 300' +
        '51  and nm_contratante = '#39'WELLINGTON RODRIGO GOMES PENETRA'#39'     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 321' +
        '71  and nm_contratante = '#39'HAZIME NAKAMURA'#39'                      ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 259' +
        '56  and nm_contratante = '#39'MIGUEL ANDREOLLI NETO'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 246' +
        '47  and nm_contratante = '#39'MARIA DE LOURDES WATEZECK DA SILVA'#39'   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 304' +
        '02  and nm_contratante = '#39'JORGE LUIS BORTOLIN'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 256' +
        '54  and nm_contratante = '#39'SIMONE PEREIRA DOS SANTOS'#39'            ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 319' +
        '13  and nm_contratante = '#39'MARCOS ALEXANDRE CAMARGO VIOTTO'#39'      ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 323' +
        '29  and nm_contratante = '#39'CARLOS ALBERTO FERNANDES'#39'             ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 323' +
        '05  and nm_contratante = '#39'MARIA EMILIA BIAGI SANTIAGO'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 310' +
        '12  and nm_contratante = '#39'NILTON JOSINO DA CRUZ'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 314' +
        '65  and nm_contratante = '#39'DENILTON SOARES DE SOUSA'#39'             ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 181' +
        '79  and nm_contratante = '#39'LUCINDA CEZARIO DE CARVALHO'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 310' +
        '23  and nm_contratante = '#39'LUCIMAR GABRIEL DIAS'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 174' +
        '78  and nm_contratante = '#39'DANIELA CRISTINA DE ANDRADE FERREIRA'#39' ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39
      '    '
      
        '    /*update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante ' +
        '= 26692 and nm_contratante = '#39'MARIA ALICE RIBEIRO'#39'              ' +
        '      and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '9643  and nm_contratante = '#39'MARIA CANDIDA CIPRIANO DOS SANTOS'#39'  ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '20365 and nm_contratante = '#39'MARIA AUGUSTA MENDES'#39'               ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '6403  and nm_contratante = '#39'FERNANDA BEVILACQUA NASSUR'#39'         ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '10776 and nm_contratante = '#39'CIRLENE APARECIDA DE OLIVEIRA REIS'#39' ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '18989 and nm_contratante = '#39'GENI CANDIDA DOS SANTOS SILVA'#39'      ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '20766 and nm_contratante = '#39'ROSANGELA APARECIDA DANIEL BARTHOLOM' +
        'EU'#39' and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '680   and nm_contratante = '#39'DONIZETE PIMENTA'#39' '#9#9#9#9#9'   and dstpdo' +
        'cumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '23578 and nm_contratante = '#39'BENEDITA NIZATO MEIRELES'#39'           ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '25527 and nm_contratante = '#39'JOANA DA SILVA SERTORIO'#39'            ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '18783 and nm_contratante = '#39'MARIA APARECIDA DE SOUZA'#39'           ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '23406 and nm_contratante = '#39'EDVALDO JOSE FERREIRA GALVAO'#39'       ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '27910 and nm_contratante = '#39'BENEDITO GILBERTO FILHO'#39'            ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '15601 and nm_contratante = '#39'GUIOMAR AMARAL DE CAMPOS'#39'           ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '25651 and nm_contratante = '#39'FAUSTO ALEXANDRE MACHADO DE CASTRO'#39' ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '23595 and nm_contratante = '#39'ANNA MARIA DO AMARAL FIGUEREDO'#39'     ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '27245 and nm_contratante = '#39'ANGELICA CRISTINA ANDREUCI MARCOLINO' +
        #39'   and dstpdocumento = '#39'ORCAMENTO'#39
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 2540' +
        '8 and nm_contratante = '#39'WILSON DONIZETTI MARTINS'#39'               ' +
        'and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '27766 and nm_contratante = '#39'MARIA APARECIDA DE OLIVEIRA'#39'        ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '25654 and nm_contratante = '#39'SIMONE PEREIRA DOS SANTOS'#39'          ' +
        '    and dstpdocumento = '#39'MANUTENCAO'#39
      
        '    update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = ' +
        '27742 and nm_contratante = '#39'ELISABETE LIMA ALVES'#39'               ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39'*/'
      ''
      'END'
      'ELSE '
      'BEGIN'
      '   UPDATE #DMED SET LG_ENVIAR = '#39'S'#39' '
      '   from contratante c where c.codigo = #dmed.CD_CONTRATANTE '
      '   --and  #dmed.MOTIVO <> '#39#39' '
      '   and #dmed.dstpdocumento <> '#39'MENSALIDADE'#39' '
      
        '   and exists(select * from cpfNFDMED t where cast(#dmed.CPF_ORD' +
        'ENACAO as decimal) = cast(t.cpf as decimal)) -- gabi passou plan' +
        'ilha em 2016 com alguns cpfs para filtrar criei essa tabela lemb' +
        'rar de limpar . - etc'
      '   '
      
        '   --select '#39'setou orcamentos e tramentos cpfs'#39' momento, sum(val' +
        'or_pago) from #dmed where LG_ENVIAR = '#39'S'#39
      '   '
      
        '   --2019 - tratamentos que solic IR'#9' R$      127.644,90, EXCETO' +
        ' menor ou igual a 100 reaus, delete abaixo'
      '   '
      
        '   UPDATE #DMED SET LG_ENVIAR = '#39'S'#39'  where tipo <> '#39'M'#39'  and dstp' +
        'documento = '#39'ORCAMENTO'#39' '
      
        #9'and motivo in('#39'INFORMOU IR NO ORCAMENTO'#39','#39'SOLICITOU RECIBO DE I' +
        'R'#39')   '
      
        #9'--select '#39'setou  orcamentos solicitou ir e tal..'#39' momento, sum(' +
        'valor_pago) from #dmed where LG_ENVIAR = '#39'S'#39
      #9
      
        #9'UPDATE #DMED SET LG_ENVIAR = '#39'S'#39'  where tipo <> '#39'M'#39'  and  dstpd' +
        'ocumento = '#39'MANUTENCAO'#39' '
      #9'and motivo = '#39'CONTRATANTE NOVO'#39
      
        #9'and  not exists(select * from cpfNFDMED t where cast(#dmed.CGC_' +
        'CPF as decimal) = cast(t.cpf as decimal)) -- gabi passou planilh' +
        'a em 2016 com alguns cpfs para filtrar criei essa tabela lembrar' +
        ' de limpar . - etc'
      
        #9'--select '#39'setou  manutencao contratante novo'#39' momento, sum(valo' +
        'r_pago) from #dmed where LG_ENVIAR = '#39'S'#39
      ''
      ''
      
        #9'UPDATE #DMED SET LG_ENVIAR = '#39'S'#39' where tipo <> '#39'M'#39'  and  dstpdo' +
        'cumento = '#39'MANUTENCAO'#39' '
      
        #9'and motivo in('#39'CONTRATANTE NOVO'#39','#39'INFORMOU IR NO ORCAMENTO'#39','#39'SO' +
        'LICITOU RECIBO DE IR'#39')'
      
        '    --select '#39'setou  manutencao ir'#39' momento, sum(valor_pago) fro' +
        'm #dmed where LG_ENVIAR = '#39'S'#39#9
      
        #9'--update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8' +
        '932 and nm_contratante = '#39'VALDINELIA CASTRO DOS SANTOS'#39'         ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE N' +
        'OVO'#39')'
      
        #9'--update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8' +
        '938 and nm_contratante = '#39'MARIA JOSE DE OLIVEIRA'#39'               ' +
        '    and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE N' +
        'OVO'#39')'
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 880' +
        '3 and nm_contratante = '#39'SEBASTIAO VEROLA JUNIOR'#39'                ' +
        '  and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOV' +
        'O'#39')'
      
        #9'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 896' +
        '1 and nm_contratante = '#39'VANESSA KIKUGAVA'#39'                       ' +
        '  and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOV' +
        'O'#39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8896' +
        ' and nm_contratante = '#39'CAMILA RAFAELA OLIVEIRA'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8874' +
        ' and nm_contratante = '#39'HELAINE BARBOSA DOS SANTOS'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8910' +
        ' and nm_contratante = '#39'SELMA APARECIDA BORGES'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8870' +
        ' and nm_contratante = '#39'ISABELA ROMANO FRANCISCO'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8816' +
        ' and nm_contratante = '#39'NIVIA COSTA CIQUEIRA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8795' +
        ' and nm_contratante = '#39'JULIA CRISTINA CARVALHO DE FARIAS'#39'       ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8780' +
        ' and nm_contratante = '#39'JAQUELINE BARBOSA DE MATTOS'#39'             ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8873' +
        ' and nm_contratante = '#39'IDAYANNE SABINO DA SILVA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8779' +
        ' and nm_contratante = '#39'FRANCIELI SILVA MACHADO'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8909' +
        ' and nm_contratante = '#39'CAMILA MOREIRA DA SILVA'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8915' +
        ' and nm_contratante = '#39'RONICLEI PEREIRA DO AMARAL'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8872' +
        ' and nm_contratante = '#39'JOSE RENATO DA SILVA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8858' +
        ' and nm_contratante = '#39'LILIAN VIEIRA DOS SANTOS FRANCA'#39'         ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8758' +
        ' and nm_contratante = '#39'LOURIVALDO DA SILVA'#39'                     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8785' +
        ' and nm_contratante = '#39'MARIA JOSE GOMES DE OLIVEIRA GONCALVES'#39'  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8804' +
        ' and nm_contratante = '#39'CARMEN LUCIA FAGUNDES DA SILVA'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8998' +
        ' and nm_contratante = '#39'IVANILDE PAES LADIM DE SOUSA'#39'            ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8984' +
        ' and nm_contratante = '#39'JOAO BATISTA ALVES DO NASCIMENTO'#39'        ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8845' +
        ' and nm_contratante = '#39'VANIA DE FATIMA CUSTODIO PRIMO'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8893' +
        ' and nm_contratante = '#39'ANA LAURA APARECIDA SILVA FORASTIER'#39'     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8904' +
        ' and nm_contratante = '#39'ADILSON DONIZETE RICARDO GONCALVES'#39'      ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8840' +
        ' and nm_contratante = '#39'WILLIAN CARVALHO NOGUEIRA'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8822' +
        ' and nm_contratante = '#39'SAMUEL AUGUSTO FERREIRA'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8891' +
        ' and nm_contratante = '#39'GESIO DE SOUSA GOMES'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8787' +
        ' and nm_contratante = '#39'MONIQUE APARECIDA ALIOTTO'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8861' +
        ' and nm_contratante = '#39'EMILLY DIMAS DOS REIS'#39'                   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8886' +
        ' and nm_contratante = '#39'SILVANA PEREIRA CAMILO'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8971' +
        ' and nm_contratante = '#39'MARIA ESTELA PEREIRA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8948' +
        ' and nm_contratante = '#39'SEBASTIAO APARECIDO GOMES'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8939' +
        ' and nm_contratante = '#39'LINDALVA MARIA DA SILVA'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8773' +
        ' and nm_contratante = '#39'VICTOR FREDERICO DOS SANTOS'#39'             ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8842' +
        ' and nm_contratante = '#39'MATEUS SANTOS DE OLIVEIRA'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8823' +
        ' and nm_contratante = '#39'SUELI DE FATIMA MARTINS RICARDO'#39'         ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8954' +
        ' and nm_contratante = '#39'MARIA INETI DA SILVA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8941' +
        ' and nm_contratante = '#39'ANTONIO LOPO CORREIA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8813' +
        ' and nm_contratante = '#39'CELMA DA SILVA SOARES'#39'                   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8994' +
        ' and nm_contratante = '#39'CAMILA APARECIDA DE MORAES'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 9004' +
        ' and nm_contratante = '#39'SILVANA DA SILVA GOMES RODRIGUES'#39'        ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8931' +
        ' and nm_contratante = '#39'IASMIN DOS SANTOS PRATES'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8928' +
        ' and nm_contratante = '#39'MILA VILLELA CAVALHERI'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8993' +
        ' and nm_contratante = '#39'JACIRA DE SOUZA CARVALHO'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8916' +
        ' and nm_contratante = '#39'AMANDA SIQUEIRA MARTINS'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8950' +
        ' and nm_contratante = '#39'ISAIAS BERTAGNOLI GOMES'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8966' +
        ' and nm_contratante = '#39'RENATA FERREIRA DE ASSIS'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8831' +
        ' and nm_contratante = '#39'CLAUDIA DIAS DA SILVA'#39'                   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8771' +
        ' and nm_contratante = '#39'PEDRO HENRIQUE BORGES'#39'                   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8897' +
        ' and nm_contratante = '#39'THAIS DA COSTA APARECIDO'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8762' +
        ' and nm_contratante = '#39'SALUA FABRIS RIBEIRO'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8825' +
        ' and nm_contratante = '#39'MARISA DIVINA LOPES DA SILVA'#39'            ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8866' +
        ' and nm_contratante = '#39'VIVIANE RENIER'#39'                          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8837' +
        ' and nm_contratante = '#39'VINICIUS AUGUSTO DO NASCIMENTO'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8853' +
        ' and nm_contratante = '#39'RUDE AMELIO ALVES'#39'                       ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8888' +
        ' and nm_contratante = '#39'ALEXANDRE OLIVEIRA DE CARVALHO FREITAS'#39'  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8828' +
        ' and nm_contratante = '#39'WELLINGTON PORTO MARTINS'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8982' +
        ' and nm_contratante = '#39'DANIEL APARECIDO PEREIRA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8917' +
        ' and nm_contratante = '#39'FABRICIO MARCATI DE FREITAS'#39'             ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8922' +
        ' and nm_contratante = '#39'MARIANA VENANCIO MADUREIRA'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8868' +
        ' and nm_contratante = '#39'DELIANE NOGUEIRA SANTOS'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8912' +
        ' and nm_contratante = '#39'SUZANA RODRIGUES DE SOUZA'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 9032' +
        ' and nm_contratante = '#39'NATALIA APARECIDA BRUSCHI DE SOUZA'#39'      ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8968' +
        ' and nm_contratante = '#39'ANA CLARA MOTA DOS SANTOS'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8895' +
        ' and nm_contratante = '#39'CLETO PEREIRA DA ROCHA'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8838' +
        ' and nm_contratante = '#39'KAUAN COSTA DA SILVA SALES'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8796' +
        ' and nm_contratante = '#39'LUCAS FLORENCIO DA SILVA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8787' +
        ' and nm_contratante = '#39'JOSE ROGERIO ROMANCINI'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8897' +
        ' and nm_contratante = '#39'FERNANDO DA SILVA ALMEIDA'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 9014' +
        ' and nm_contratante = '#39'JAMISE DOS SANTOS MACHADO'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8926' +
        ' and nm_contratante = '#39'JOAO PAULO DA SILVA'#39'                     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8825' +
        ' and nm_contratante = '#39'ODAIR MOREIRA'#39'                           ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8811' +
        ' and nm_contratante = '#39'ELAINE CRISTINA DE ANDRADE RAMOS'#39'        ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8945' +
        ' and nm_contratante = '#39'BRUNO SOUZA CARDOSO'#39'                     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8817' +
        ' and nm_contratante = '#39'CARLOS AUGUSTO APARECIDO BATISTA SANTANA'#39 +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8854' +
        ' and nm_contratante = '#39'CAUA SOARES DE OLIVEIRA'#39'                 ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8871' +
        ' and nm_contratante = '#39'TALITA APARECIDA FLAVIO MACHADO'#39'         ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 9054' +
        ' and nm_contratante = '#39'MARIA ELISA DE OLIVEIRA PEREIRA'#39'      and' +
        ' dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO'#39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8942' +
        ' and nm_contratante = '#39'LEONICE RASTELI DA SILVA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8801' +
        ' and nm_contratante = '#39'ROSANGELA FRANCISCO'#39'                     ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8788' +
        ' and nm_contratante = '#39'ARNORE NEVES DE OLIVEIRA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8765' +
        ' and nm_contratante = '#39'SILVIA HELENA BERDEJO UZUELLI'#39'           ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8897' +
        ' and nm_contratante = '#39'RAYSSA DA COSTA DE SOUSA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8974' +
        ' and nm_contratante = '#39'MARCIO ANDRE DA SILVA'#39'                   ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8991' +
        ' and nm_contratante = '#39'JOSE RAFAEL DA SILVA'#39'                    ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8829' +
        ' and nm_contratante = '#39'MATHEUS SOARES PEREIRA AZEVEDO'#39'          ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8919' +
        ' and nm_contratante = '#39'AMANDA CRISTINA IZIDORO DE FRANCA'#39'       ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8969' +
        ' and nm_contratante = '#39'FABIO APARECIDO DE SOUZA'#39'                ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8857' +
        ' and nm_contratante = '#39'MELISSA CHRISOSTOMO CARVALHO'#39'            ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8875' +
        ' and nm_contratante = '#39'SHEILA CRISTINA RENIER'#39'                  ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8988' +
        ' and nm_contratante = '#39'ADIMILSON GONCALVES PEDRO'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8992' +
        ' and nm_contratante = '#39'KARINA DA MOTA DE OLIVEIRA'#39'              ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8792' +
        ' and nm_contratante = '#39'ALBERTO CESAR DE SOUZA OLIVEIRA'#39'         ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8879' +
        ' and nm_contratante = '#39'ANGELICA DAS DORES SOARES'#39'               ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')'
      
        'update #dmed set lg_enviar = '#39'S'#39' where codigo_contratante = 8946' +
        ' and nm_contratante = '#39'RITA DE CASSIA TUNIS DE SOUZA'#39'           ' +
        ' and dstpdocumento = '#39'ORCAMENTO'#39' and motivo in('#39'CONTRATANTE NOVO' +
        #39')    '
      '   '
      '--select * from cpfNFDMED'
      
        '--2019 retirou da aba inforumou ir e solicitou ir menores que 10' +
        '0 reais'
      ''
      'END'
      ''
      ''
      
        '-- ATUALIZA A DT DE NASCIMENTO PARA FAZER GROUP BY COM REGISTROS' +
        ' DE OR'#199'AMENTO E MANUT.'
      ''
      ''
      'UPDATE #DMED SET  #DMED.DT_NASCIMENTO = U.DATA_NASCIMENTO '
      
        'FROM USUARIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_' +
        'PARENTESCO = 1 '
      'AND SUBSTRING(#DMED .NM_CONTRATANTE,1,3) = SUBSTRING(U.NOME,1,3)'
      ''
      
        '-- GRAVA O CODIGO DO TITULAR QUANDO FOR DEPENDENTE, DEPOIS VERIF' +
        'ICA SE O TITULAR EXISTE NO #DMED, SE NAO EXISTE INCLUI O TITULAR'
      
        'UPDATE #DMED SET  #DMED.CD_TITULAR = U.CODIGO_COMPLETO FROM USUA' +
        'RIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENTESC' +
        'O = 1 AND #DMED.LG_TITULAR = '#39'B'#39' and #DMED.lg_enviar = '#39'S'#39
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  DISTINCT'
      '    U.NOME AS NM_CONTRATANTE,'
      '    U.CPF as CGC_CPF,'
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'1,'
      '    '#39'MENSALIDADE'#39','
      #9'0.00, '
      #9'NULL ,'
      #9'NULL,'
      #9'U.CODIGO_COMPLETO, '
      #9'NULL,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    NULL,'
      '    U.CODIGO_COMPLETO CODIGO,'
      '    U.CODIGO,'
      '    '#39'M'#39','
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      '    '#39'A'#39' AS LG_TITULAR'
      '    ,'#39'N'#39' LG_PODE_ALTERAR,'
      '    C.INCLUSAO AS DT_INCLUSAO_CONTRAT,'
      #9#39'INC TIT ZERADO'#39','
      #9'0,'
      #9'1, -- grau parentesco'
      #9#39'S'#39' -- lg_enviar'
      '    '
      ''
      'FROM '
      ''
      #9'USUARIO U, '
      #9'CONTRATANTE C,'
      '    #DMED D'
      ''
      'WHERE'
      ''
      '         U.CODIGO = C.CODIGO'
      '     AND D.CD_TITULAR = U.CODIGO_COMPLETO'
      
        'AND NOT EXISTS(SELECT * FROM #DMED D WHERE LG_TITULAR = '#39'B'#39' AND ' +
        'D.CODIGO = U.CODIGO_COMPLETO AND D.CD_TITULAR > 0)'
      ''
      ''
      'UPDATE #DMED SET CGC_CPF = NULL WHERE CGC_CPF = '#39#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'-'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'.'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%.%'#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'/'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%/%'#39
      ''
      'UPDATE #DMED SET CPF_ORDENACAO = NULL WHERE CPF_ORDENACAO = '#39#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'-'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'.'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%.%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'/'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%/%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39' '#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'% %'#39
      'ALTER TABLE #DMED ADD grau_parentescoDMED char(2)'
      ''
      ''
      'IF (select codigo from Empresa) <> 1 '
      'BEGIN'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'99'#39' WHERE Grau_Parent' +
        'esco NOT IN(1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,22,23,24,30,3' +
        '1) -- ate 07/03/2016 eram esses, caso cadastre um novo ir'#225' jogar' +
        ' 99 para gerar erro no DMED e fazer a associativa correta'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'03'#39' WHERE Grau_Parent' +
        'esco IN(4,6,10) --conjuge/companheiro'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'04'#39' WHERE Grau_Parent' +
        'esco IN(2,5)    -- filho/filha'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'06'#39' WHERE Grau_Parent' +
        'esco = 3        -- enteado'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'08'#39' WHERE Grau_Parent' +
        'esco in(8,9)         -- pai/mae'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'10'#39' WHERE Grau_Parent' +
        'esco in(11,12,13,16,17,18,22,23,24,30,31)         -- outros'
      'END'
      'ELSE'
      'BEGIN'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'99'#39' WHERE Grau_Parent' +
        'esco NOT IN(1,2,3,4,8,11,15,16,17,20,23,25,27,34,41,53,56,58,67,' +
        '69,72,83,86,87)      '
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'03'#39' WHERE Grau_Parent' +
        'esco = 2 --conjuge/companheiro'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'04'#39' WHERE Grau_Parent' +
        'esco IN(4,87)    -- filho/filha'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'06'#39' WHERE Grau_Parent' +
        'esco = 58        -- enteado   '
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'08'#39' WHERE Grau_Parent' +
        'esco in(3,16)         -- pai/mae'
      
        '   UPDATE #DMED SET grau_parentescoDMED = '#39'10'#39' WHERE Grau_Parent' +
        'esco in(8,11,15,17,20,23,25,27,34,41,53,56,67,69,72,83,86)      ' +
        '   -- outros'
      ''
      'END'
      ''
      '  '
      '   '
      '--SELECT * FROM mt..GRAU_PARENTESCO where ativo = 1'
      '/*'
      
        'C'#243'digo Descri'#231#227'o 03 c'#244'njuge/companheiro 04 filho/filha 06 entead' +
        'o/enteada 08 pai/m'#227'e 10 agregado/outros '
      '*/'
      ''
      'SELECT * INTO #BOSS FROM #DMED'
      ''
      '-- ATUALIZA A DATA DE NASCIMENTO QUANDO NULL OU DIFERENTE..'
      ''
      'UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO '
      ''
      
        'FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A' +
        '.CGC_CPF = #DMED.CGC_CPF'
      'AND A.DT_NASCIMENTO IS NOT NULL '
      'AND  #DMED.DT_NASCIMENTO IS NULL '
      ''
      'UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO '
      ''
      
        'FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A' +
        '.CGC_CPF = #DMED.CGC_CPF'
      'AND A.DT_NASCIMENTO <> #DMED.DT_NASCIMENTO'
      'AND A.DT_NASCIMENTO IS NOT NULL '
      ''
      ''
      
        '-- TEVE SITUA'#199#213'ES DE EXISTIR DOIS TITULARES E NA ORDENA'#199#195'O SAIA ' +
        'FORA DA SEQUENCIA, ENTAO SE FOR TITUALR E CPC DIF ORDENACAO'
      
        '-- COMENTADO EM 10/03/2016 AP'#211'S MESMO A GERA'#199'A'#213' DOS DMEDS. PERIG' +
        'OSO POIS PODE COLOCAR UM DTOP FORA DA SEQUENCIA DO TOP(ACONTECEU' +
        ' COM UNISOLO ABAIXO DELE DIVERSOS DEPENDENTS QUE NAO ERAM DELE)'
      
        '--UPDATE #DMED SET CPF_ORDENACAO = CGC_CPF WHERE  CPF_ORDENACAO ' +
        '<> CGC_CPF AND LG_TITULAR = '#39'A'#39
      ''
      ''
      'SELECT  '
      '    IDENTITY(INT,1,1) INDICE,'
      '    NM_CONTRATANTE,    '
      '    CGC_CPF,'
      '    DT_NASCIMENTO,'
      '    LG_TITULAR,'
      #9'SUM(VALOR_PAGO) VALOR_PAGO,'
      #9'grau_parentescoDMED'
      ''
      'into #RESULT'
      ''
      'FROM #DMED where #dmed.lg_enviar = '#39'S'#39
      ''
      'GROUP BY'
      ''
      '    NM_CONTRATANTE,'
      '    CGC_CPF,'
      '    DT_NASCIMENTO,'
      '    LG_TITULAR,'
      '    CAST(CPF_ORDENACAO AS DECIMAL) ,'
      #9'grau_parentescoDMED'
      ''
      
        'ORDER BY CAST(CPF_ORDENACAO AS DECIMAL), LG_TITULAR,CGC_CPF,DT_N' +
        'ASCIMENTO'
      ''
      '--select * into #resultTemp from #RESULT'
      ' declare @indice      int'
      ' declare @nmContrat   as varchar(100)'
      ' declare @cpf         as varchar(15)'
      ' declare @dtNasc      as date'
      ' declare @lgTitular   as char(1)'
      ' declare @vrPago      as money'
      ' declare @valorAux  as money'
      ' declare @grauDMED as char(2)'
      ''
      '  '
      'DECLARE csRepetidos CURSOR FOR'
      'select * from #result'
      
        '--insert into #RESULT select NM_CONTRATANTE, CGC_CPF, DT_NASCIME' +
        'NTO,LG_TITULAR, VALOR_PAGO from #resultTemp'
      ''
      
        'OPEN csRepetidos -- agrupa mesmo beneficiario com alguma alterac' +
        'ao no nome'
      
        'FETCH NEXT FROM csRepetidos INTO @indice, @nmContrat, @cpf,  @dt' +
        'Nasc, @lgTitular, @vrPago,@grauDMED '
      'WHILE @@FETCH_STATUS = 0'
      ' BEGIN'
      '   set @valorAux = null'
      
        '   select @valorAux = sum(valor_pago) from #result a where a.ind' +
        'ice <> @indice and a.CGC_CPF = @cpf and a.LG_TITULAR = @lgTitula' +
        'r and substring(a.nm_contratante,1,3) = substring(@nmContrat,1,3' +
        ')'
      '   if @valorAux is not null'
      '   begin'
      
        '      update #RESULT set valor_pago = valor_pago + @valorAux whe' +
        're indice = @indice'
      
        '     delete #result where indice <> @indice and CGC_CPF = @cpf a' +
        'nd LG_TITULAR = @lgTitular and substring(nm_contratante,1,3) = s' +
        'ubstring(@nmContrat,1,3)'
      #9'end'
      
        '   FETCH NEXT FROM csRepetidos INTO @indice, @nmContrat, @cpf,  ' +
        '@dtNasc, @lgTitular, @vrPago  ,@grauDMED  '
      ' END'
      'CLOSE csRepetidos'
      'DEALLOCATE csRepetidos'
      ''
      ''
      'select * from #RESULT'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1219
    Top = 560
  end
  object SP_ENVIO_DENTISTA_GRAFICA: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE PROCEDURE SP_ENVIO_DENTISTA_GRAFICA'
      ''
      'AS'
      ''
      'DECLARE @DTULTENVIO DATETIME'
      ''
      
        'SET @DTULTENVIO = (SELECT ISNULL(MAX(DT_ENVIO_GRAFICA),GETDATE()' +
        ') FROM DENTISTA)'
      ''
      ''
      ''
      '--SELECT TOP 10 * FROM DENTISTA'
      'SELECT'
      '        '#39'ALTERA'#199#195'O'#39' TIPO,'
      #9'D.CODIGO,'
      '        D.NOME,'
      '        B.DS_BAIRRO,'
      '        C.DS_CIDADE,'
      '       ED.LOGRADOURO,'
      '       ED.CEP,'
      '       ED.FONE1,'
      '       E.DS_ESPECIALIDADE ,'
      '       D.DT_INCLUSAO,'
      '       D.DATA_EXCLUSAO DT_EXCLUSAO,'
      '       CL.DESCRICAO AS DS_CLINICA'
      ''
      ''
      'INTO #ENVIOGRAFICA'
      ''
      'FROM DENTISTA D'
      ''
      'LEFT JOIN ENDERECO_X_DENTISTA ED'
      'ON ED.CD_DENTISTA = D.CODIGO'
      ''
      'LEFT JOIN BAIRRO B'
      'ON B.CD_BAIRRO = ED.CD_BAIRRO'
      ''
      'LEFT JOIN CIDADE C'
      'ON C.CD_CIDADE = ED.CD_CIDADE'
      ''
      'LEFT JOIN ESP_X_DENTISTA ESD '
      'ON  ESD.CD_DENTISTA = D.CODIGO'
      ''
      'LEFT JOIN ESPECIALIDADE E'
      'ON E.CD_ESPECIALIDADE = ESD.CD_ESPECIALIDADE'
      ''
      'LEFT JOIN CLINICAS CL'
      'ON CL.CODIGO = D.CODIGO_CLINICA'
      'WHERE ALTERADO = '#39'S'#39
      ''
      
        'ORDER BY D.NOME,D.CODIGO,C.DS_CIDADE,ED.LOGRADOURO,E.DS_ESPECIAL' +
        'IDADE'
      ''
      
        'UPDATE #ENVIOGRAFICA SET TIPO = '#39'INCLUS'#195'O'#39' WHERE DT_INCLUSAO >= ' +
        '@DTULTENVIO'
      
        'UPDATE #ENVIOGRAFICA SET TIPO = '#39'EXCLUS'#195'O'#39' WHERE DT_EXCLUSAO >= ' +
        '@DTULTENVIO'
      ''
      'SELECT * FROM #ENVIOGRAFICA '
      'ORDER BY TIPO,NOME,CODIGO,DS_CIDADE,LOGRADOURO,DS_ESPECIALIDADE')
    Left = 160
    Top = 616
  end
  object UsuarioLog: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TABLE [UsuarioLog] ('
      '        dataAlteracao datetime not null,'
      #9'[Codigo] [int] NOT NULL ,'
      #9'[Digito] [int] NOT NULL ,'
      #9'[Codigo_Completo] [int] NULL ,'
      
        #9'[Nome] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT ' +
        'NULL ,'
      #9'[Grau_Parentesco] [smallint] NOT NULL ,'
      #9'[Data_Nascimento] [datetime] NOT NULL ,'
      #9'[Data_Inclusao] [datetime] NOT NULL ,'
      #9'[Data_Exclusao] [datetime] NULL ,'
      #9'[Contratante_Titular] [int] NOT NULL ,'
      #9'[Vendedor] [int] NOT NULL ,'
      
        #9'[E_Civil] [varchar] (13) COLLATE SQL_Latin1_General_CP1_CI_AS N' +
        'OT NULL ,'
      
        #9'[Sexo] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT N' +
        'ULL ,'
      #9'[Inclusao_Susep] [datetime] NULL ,'
      #9'[Exclusao_Susep] [datetime] NULL ,'
      #9'[Alteracao_Susep] [datetime] NULL ,'
      #9'[Alterado] [bit] NULL ,'
      
        #9'[Situacao] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS ' +
        'NULL ,'
      #9'[Operador_Inclusao] [int] NULL ,'
      #9'[Operador_Alteracao] [int] NULL ,'
      #9'[Operador_Exclusao] [int] NULL ,'
      #9'[Manutencao] [bit] NULL ,'
      
        #9'[Nm_Mae] [varchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NU' +
        'LL ,'
      
        #9'[CPF] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ' +
        ','
      
        #9'[PIS_PASEP] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS' +
        ' NULL ,'
      #9'[Motivo_Cancelamento] [int] NULL ,'
      #9'[Valor_Mens] [money] NULL ,'
      #9'[DtReinclusao] [datetime] NULL ,'
      #9'[data_alteracao] [smalldatetime] NULL ,'
      
        #9'[codigo_ans] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS N' +
        'ULL ,'
      #9'[cd_motivo_inclusao] [tinyint] NULL ,'
      #9'[dt_migracao] [smalldatetime] NULL ,'
      
        #9'[cei] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ' +
        ','
      #9'[dt_exclusao_orig] [datetime] NULL ,'
      #9'[dt_venda] [smalldatetime] NULL ,'
      
        #9'[NrPlanoOUtOp] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_' +
        'AS NULL ,'
      
        #9'[cco] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ' +
        ','
      
        #9'[dg_cco] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[novo_cod_usu_plano] [varchar] (30) COLLATE SQL_Latin1_General_' +
        'CP1_CI_AS NULL ,'
      #9'[reinclusao_sib] [datetime] NULL ,'
      #9'CONSTRAINT [PK_UsuarioLog] PRIMARY KEY  NONCLUSTERED '
      #9'('
      ''
      #9#9'[Codigo],'
      #9#9'[Digito],'
      '                dataAlteracao'
      #9')  ON [PRIMARY] '
      #9
      ') '
      '')
    Left = 160
    Top = 664
  end
  object ContratanteLog: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TABLE [ContratanteLog] ('
      '        dataAlteracao datetime not null,'
      #9'[Codigo] [int] NOT NULL ,'
      
        #9'[Nome] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT ' +
        'NULL ,'
      #9'[RG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,'
      
        #9'[CGC_CPF] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS N' +
        'ULL ,'
      #9'[IE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,'
      #9'[Vencimento] [int] NOT NULL ,'
      #9'[Inclusao] [datetime] NOT NULL ,'
      #9'[Exclusao] [datetime] NULL ,'
      
        #9'[Endereco_Comercial] [varchar] (50) COLLATE SQL_Latin1_General_' +
        'CP1_CI_AS NULL ,'
      
        #9'[Bairro_Comercial] [varchar] (50) COLLATE SQL_Latin1_General_CP' +
        '1_CI_AS NULL ,'
      
        #9'[Cidade_Comercial] [varchar] (50) COLLATE SQL_Latin1_General_CP' +
        '1_CI_AS NULL ,'
      
        #9'[Estado_Comercial] [varchar] (50) COLLATE SQL_Latin1_General_CP' +
        '1_CI_AS NULL ,'
      
        #9'[Cep_Comercial] [varchar] (50) COLLATE SQL_Latin1_General_CP1_C' +
        'I_AS NULL ,'
      
        #9'[Endereco_Residencial] [varchar] (50) COLLATE SQL_Latin1_Genera' +
        'l_CP1_CI_AS NULL ,'
      
        #9'[Bairro_Residencial] [varchar] (50) COLLATE SQL_Latin1_General_' +
        'CP1_CI_AS NULL ,'
      
        #9'[Cidade_Residencial] [varchar] (50) COLLATE SQL_Latin1_General_' +
        'CP1_CI_AS NULL ,'
      
        #9'[Estado_Residencial] [varchar] (50) COLLATE SQL_Latin1_General_' +
        'CP1_CI_AS NULL ,'
      
        #9'[CEP_Residencial] [varchar] (50) COLLATE SQL_Latin1_General_CP1' +
        '_CI_AS NULL ,'
      
        #9'[Fone1] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[Fone2] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[Fax] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ' +
        ','
      
        #9'[Tipo_Correspondencia] [varchar] (50) COLLATE SQL_Latin1_Genera' +
        'l_CP1_CI_AS NOT NULL ,'
      #9'[Vendedor] [int] NOT NULL ,'
      #9'[Banco] [int] NULL ,'
      
        #9'[Agencia] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NU' +
        'LL ,'
      
        #9'[Conta] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[Digito] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[Titular_Conta] [varchar] (30) COLLATE SQL_Latin1_General_CP1_C' +
        'I_AS NULL ,'
      
        #9'[Contrato_Anterior] [varchar] (10) COLLATE SQL_Latin1_General_C' +
        'P1_CI_AS NULL ,'
      
        #9'[email] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NUL' +
        'L ,'
      
        #9'[Numero_Cartao] [varchar] (16) COLLATE SQL_Latin1_General_CP1_C' +
        'I_AS NULL ,'
      
        #9'[Codigo_Seguranca] [varchar] (3) COLLATE SQL_Latin1_General_CP1' +
        '_CI_AS NULL ,'
      #9'[Motivo_Cancelamento] [int] NULL ,'
      
        #9'[Situacao] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS N' +
        'ULL ,'
      #9'[Forma_Cobranca] [int] NOT NULL ,'
      #9'[Ultimo_Faturamento] [datetime] NULL ,'
      #9'[Plano] [int] NOT NULL ,'
      #9'[Grupo_Contratante] [int] NULL ,'
      #9'[Operador_Inclusao] [int] NULL ,'
      #9'[Operador_Alteracao] [int] NULL ,'
      #9'[Operador_Exclusao] [int] NULL ,'
      #9'[perc_desconto] [decimal](5, 2) NOT NULL ,'
      #9'[Empresa] [bit] NULL ,'
      
        #9'[Numero_Res] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS' +
        ' NULL ,'
      
        #9'[Complemento_Res] [varchar] (15) COLLATE SQL_Latin1_General_CP1' +
        '_CI_AS NULL ,'
      
        #9'[Numero_Com] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS' +
        ' NULL ,'
      
        #9'[Complemento_Com] [varchar] (15) COLLATE SQL_Latin1_General_CP1' +
        '_CI_AS NULL ,'
      #9'[desc_boleto] [decimal](5, 2) NULL ,'
      #9'[cd_cidade_res] [smallint] NOT NULL ,'
      #9'[cd_cidade_com] [smallint] NOT NULL ,'
      
        #9'[profissao] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS' +
        ' NULL ,'
      #9'[lg_geraFat] [bit] NOT NULL ,'
      #9'[lg_restricao] [bit] NOT NULL ,'
      #9'[dt_termino_desconto] [datetime] NULL ,'
      #9'CONSTRAINT [PK_ContratanteLog] PRIMARY KEY  NONCLUSTERED '
      #9'('
      ''
      #9#9'[Codigo],'
      '                dataAlteracao'
      #9')  ON [PRIMARY] '
      ''
      ') ON [PRIMARY]')
    Left = 216
    Top = 656
  end
  object tr_i_Iitens_orcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_i_Iitens_orcamento on itens_orcamento'
      ''
      'for insert'
      ''
      'as'
      ''
      
        '-- verifica se o orcmanto '#233' originario de uma manuten'#231#227'o para se' +
        'tar o campo lg_ir(relat'#243'rio DMED) de acordo com o desejo'
      '-- do usuario na hora de cadastrar a manuten'#231#227'o'
      
        'if (select Tipo from inserted i, orcamento o where i.orcamento =' +
        ' o.numero) = 5  -- manuten'#231#227'o'
      'begin'
      '  '
      '  declare @lg_ir bit'
      '  -- pega o valor do lg_ir da manuten'#231#227'o'
      
        '  select top 1 @lg_ir = m.lg_ir from inserted i,  manutencao m, ' +
        'orcamento o '
      
        '                                        where     m.servico = i.' +
        'servico'
      
        '                                              and o.usuario = m.' +
        'usuario '
      
        '                                              and o.numero = i.o' +
        'rcamento'
      #9#9#9#9#9#9#9#9#9#9' order by m.data_inicial desc'
      '  '
      '  if @lg_ir is null -- se na'#245' achar pega  o valor padr'#227'o'
      '  begin'
      '     declare @aux char(1)'
      
        '     set @aux = (select vl_parametro from parametro where cd_par' +
        'ametro = '#39'ORCIR'#39')'
      
        '     if @aux = '#39'S'#39' -- se S indica que o valor padr'#227'o para todos ' +
        'os titulos '#233' para sair no relatorio DMED'
      '        set @lg_ir = 1'
      '     else'
      '         set @lg_ir = 0'
      '  end'
      ''
      
        '  update orcamento set lg_ir = @lg_ir from inserted i where lg_i' +
        'r <> @lg_ir and i.orcamento = orcamento.numero'
      ''
      'end'
      ''
      
        'if exists(select * from inserted a, Itens_Orcamento b where a.Or' +
        'camento = b.Orcamento)'
      ''
      'begin'
      ''
      
        '   insert into Itens_PagDentista select orcamento,incremento,'#39#39',' +
        'servico,quantidade,0,null,null,null,'#39'N'#39',getdate(),DenteFace,0 fr' +
        'om inserted  '
      ''
      'end'
      ''
      'declare @protetico as int'
      
        'set @protetico = (select top 1 protetico from Itens_PagProtetico' +
        ' a, inserted b where a.Orcamento = b.Orcamento)'
      ''
      'if @protetico is not null'
      'begin'
      ' declare @cdTabela as smallint'
      
        ' set @cdTabela = (select top 1 a.cd_tabela from TabPagXProtetico' +
        ' a, inserted i, orcamento o  where i.Orcamento = o.numero and cd' +
        '_protetico = @protetico and o.data_conferencia between DtIni and' +
        ' dtFim)'
      
        ' insert into Itens_PagProtetico select orcamento,@protetico,incr' +
        'emento,'#39#39',servico,quantidade,0,null,null,null,@cdTabela,'#39'N'#39',null' +
        ' from inserted'
      'end'
      ''
      '')
    Left = 227
    Top = 568
  end
  object TR_U_LOG_CONTRATANTE: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TRIGGER TR_U_LOG_CONTRATANTE ON CONTRATANTE'
      ''
      'FOR UPDATE'
      ''
      'AS'
      ''
      
        'IF (SELECT VL_PARAMETRO FROM PARAMETRO WHERE CD_PARAMETRO = '#39'LGC' +
        'ONT'#39') = '#39'S'#39
      ''
      'BEGIN'
      
        '   -- SE NAO TIVER NEHUM REGISTRO NA TABELA DE LOG INTAO INCLUI ' +
        'REGISTRO INICIAL'
      
        '   IF NOT EXISTS(SELECT TOP 1 * FROM CONTRATANTELOG C, INSERTED ' +
        'I WHERE I.CODIGO = C.CODIGO)'
      '   BEGIN'
      '   INSERT INTO CONTRATANTELOG '
      
        '  '#9' (DATAALTERACAO,CODIGO,  NOME,RG, CGC_CPF, IE, VENCIMENTO, IN' +
        'CLUSAO, EXCLUSAO, ENDERECO_COMERCIAL,'
      
        '         BAIRRO_COMERCIAL, CIDADE_COMERCIAL, ESTADO_COMERCIAL, C' +
        'EP_COMERCIAL, ENDERECO_RESIDENCIAL, '
      
        '         BAIRRO_RESIDENCIAL, CIDADE_RESIDENCIAL, ESTADO_RESIDENC' +
        'IAL, CEP_RESIDENCIAL, FONE1, FONE2, FAX, TIPO_CORRESPONDENCIA, '
      
        '         VENDEDOR, BANCO, AGENCIA, CONTA,DIGITO, TITULAR_CONTA, ' +
        'CONTRATO_ANTERIOR,'
      
        '         EMAIL, NUMERO_CARTAO, CODIGO_SEGURANCA, MOTIVO_CANCELAM' +
        'ENTO, SITUACAO, FORMA_COBRANCA, ULTIMO_FATURAMENTO, PLANO, '
      
        '         GRUPO_CONTRATANTE, OPERADOR_INCLUSAO, OPERADOR_ALTERACA' +
        'O,'
      
        '         OPERADOR_EXCLUSAO, PERC_DESCONTO, EMPRESA, NUMERO_RES, ' +
        'COMPLEMENTO_RES, NUMERO_COM, COMPLEMENTO_COM, DESC_BOLETO, '
      
        '         CD_CIDADE_RES, CD_CIDADE_COM, PROFISSAO, LG_GERAFAT, LG' +
        '_RESTRICAO, DT_TERMINO_DESCONTO)'
      ''
      '   SELECT '
      ''
      
        '  '#9' DATEADD(SECOND,-1,GETDATE()),CODIGO,  NOME,RG, CGC_CPF, IE, ' +
        'VENCIMENTO, INCLUSAO, EXCLUSAO, ENDERECO_COMERCIAL,'
      
        '         BAIRRO_COMERCIAL, CIDADE_COMERCIAL, ESTADO_COMERCIAL, C' +
        'EP_COMERCIAL, ENDERECO_RESIDENCIAL, '
      
        '         BAIRRO_RESIDENCIAL, CIDADE_RESIDENCIAL, ESTADO_RESIDENC' +
        'IAL, CEP_RESIDENCIAL, FONE1, FONE2, FAX, TIPO_CORRESPONDENCIA, '
      
        '         VENDEDOR, BANCO, AGENCIA, CONTA,DIGITO, TITULAR_CONTA, ' +
        'CONTRATO_ANTERIOR,'
      
        '         EMAIL, NUMERO_CARTAO, CODIGO_SEGURANCA, MOTIVO_CANCELAM' +
        'ENTO, SITUACAO, FORMA_COBRANCA, ULTIMO_FATURAMENTO, PLANO, '
      
        '         GRUPO_CONTRATANTE, OPERADOR_INCLUSAO, OPERADOR_ALTERACA' +
        'O,'
      
        '         OPERADOR_EXCLUSAO, PERC_DESCONTO, EMPRESA, NUMERO_RES, ' +
        'COMPLEMENTO_RES, NUMERO_COM, COMPLEMENTO_COM, DESC_BOLETO, '
      
        '         CD_CIDADE_RES, CD_CIDADE_COM, PROFISSAO, LG_GERAFAT, LG' +
        '_RESTRICAO, DT_TERMINO_DESCONTO'
      ''
      '   FROM DELETED'
      ''
      '   END'
      ''
      '   INSERT INTO CONTRATANTELOG '
      
        '  '#9' (DATAALTERACAO,CODIGO,  NOME,RG, CGC_CPF, IE, VENCIMENTO, IN' +
        'CLUSAO, EXCLUSAO, ENDERECO_COMERCIAL,'
      
        '         BAIRRO_COMERCIAL, CIDADE_COMERCIAL, ESTADO_COMERCIAL, C' +
        'EP_COMERCIAL, ENDERECO_RESIDENCIAL, '
      
        '         BAIRRO_RESIDENCIAL, CIDADE_RESIDENCIAL, ESTADO_RESIDENC' +
        'IAL, CEP_RESIDENCIAL, FONE1, FONE2, FAX, TIPO_CORRESPONDENCIA, '
      
        '         VENDEDOR, BANCO, AGENCIA, CONTA,DIGITO, TITULAR_CONTA, ' +
        'CONTRATO_ANTERIOR,'
      
        '         EMAIL, NUMERO_CARTAO, CODIGO_SEGURANCA, MOTIVO_CANCELAM' +
        'ENTO, SITUACAO, FORMA_COBRANCA, ULTIMO_FATURAMENTO, PLANO, '
      
        '         GRUPO_CONTRATANTE, OPERADOR_INCLUSAO, OPERADOR_ALTERACA' +
        'O,'
      
        '         OPERADOR_EXCLUSAO, PERC_DESCONTO, EMPRESA, NUMERO_RES, ' +
        'COMPLEMENTO_RES, NUMERO_COM, COMPLEMENTO_COM, DESC_BOLETO, '
      
        '         CD_CIDADE_RES, CD_CIDADE_COM, PROFISSAO, LG_GERAFAT, LG' +
        '_RESTRICAO, DT_TERMINO_DESCONTO)'
      ''
      '   SELECT '
      ''
      
        '  '#9' GETDATE(),CODIGO,  NOME,RG, CGC_CPF, IE, VENCIMENTO, INCLUSA' +
        'O, EXCLUSAO, ENDERECO_COMERCIAL,'
      
        '         BAIRRO_COMERCIAL, CIDADE_COMERCIAL, ESTADO_COMERCIAL, C' +
        'EP_COMERCIAL, ENDERECO_RESIDENCIAL, '
      
        '         BAIRRO_RESIDENCIAL, CIDADE_RESIDENCIAL, ESTADO_RESIDENC' +
        'IAL, CEP_RESIDENCIAL, FONE1, FONE2, FAX, TIPO_CORRESPONDENCIA, '
      
        '         VENDEDOR, BANCO, AGENCIA, CONTA,DIGITO, TITULAR_CONTA, ' +
        'CONTRATO_ANTERIOR,'
      
        '         EMAIL, NUMERO_CARTAO, CODIGO_SEGURANCA, MOTIVO_CANCELAM' +
        'ENTO, SITUACAO, FORMA_COBRANCA, ULTIMO_FATURAMENTO, PLANO, '
      
        '         GRUPO_CONTRATANTE, OPERADOR_INCLUSAO, OPERADOR_ALTERACA' +
        'O,'
      
        '         OPERADOR_EXCLUSAO, PERC_DESCONTO, EMPRESA, NUMERO_RES, ' +
        'COMPLEMENTO_RES, NUMERO_COM, COMPLEMENTO_COM, DESC_BOLETO, '
      
        '         CD_CIDADE_RES, CD_CIDADE_COM, PROFISSAO, LG_GERAFAT, LG' +
        '_RESTRICAO, DT_TERMINO_DESCONTO'
      ''
      '   FROM INSERTED'
      ''
      'END'
      ''
      '--select * from contratantelog')
    Left = 152
    Top = 520
  end
  object TR_U_LOG_USUARIO: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TRIGGER TR_U_LOG_USUARIO ON USUARIO'
      ''
      ''
      'FOR UPDATE'
      ''
      'AS'
      ''
      
        'IF (SELECT VL_PARAMETRO FROM PARAMETRO WHERE CD_PARAMETRO = '#39'LGU' +
        'SU'#39') = '#39'S'#39' AND NOT UPDATE(DATA_ALTERACAO) AND NOT UPDATE(ALTERAD' +
        'O) AND NOT UPDATE(Codigo_Completo) -- TEM UMA TRIGGER QUE CALCUL' +
        'A O CODIGO_COMPLETO E DA UPDATE NA USUARIO'
      ''
      'BEGIN'
      
        '   -- SE NAO TIVER NEHUM REGISTRO NA TABELA DE LOG INTAO INCLUI ' +
        'REGISTRO INICIAL'
      ''
      ''
      
        '   IF NOT EXISTS(SELECT TOP 1 * FROM USUARIOLOG C, INSERTED I WH' +
        'ERE I.CODIGO_COMPLETO = C.CODIGO_COMPLETO)'
      '   BEGIN'
      ''
      ''
      ''
      '   INSERT INTO USUARIOLOG '
      
        '  '#9' (DATAALTERACAO,CODIGO,DIGITO,CODIGO_COMPLETO,NOME,GRAU_PAREN' +
        'TESCO,DATA_NASCIMENTO,'
      
        '          DATA_INCLUSAO,DATA_EXCLUSAO,CONTRATANTE_TITULAR,VENDED' +
        'OR,E_CIVIL,SEXO,INCLUSAO_SUSEP,'
      
        #9'  EXCLUSAO_SUSEP,ALTERACAO_SUSEP,ALTERADO,SITUACAO,OPERADOR_INC' +
        'LUSAO,OPERADOR_ALTERACAO,'
      
        #9'  OPERADOR_EXCLUSAO,MANUTENCAO,NM_MAE,CPF,PIS_PASEP,MOTIVO_CANC' +
        'ELAMENTO,VALOR_MENS,DTREINCLUSAO,'
      
        '          DATA_ALTERACAO,CODIGO_ANS,CD_MOTIVO_INCLUSAO,DT_MIGRAC' +
        'AO,CEI,DT_EXCLUSAO_ORIG,DT_VENDA,NRPLANOOUTOP,'
      '          CCO,DG_CCO,NOVO_COD_USU_PLANO,REINCLUSAO_SIB)'
      ''
      '   SELECT '
      ''
      
        '  '#9' DATEADD(SECOND,-2,GETDATE()),CODIGO,DIGITO,CODIGO_COMPLETO,N' +
        'OME,GRAU_PARENTESCO,DATA_NASCIMENTO,'
      
        '          DATA_INCLUSAO,DATA_EXCLUSAO,CONTRATANTE_TITULAR,VENDED' +
        'OR,E_CIVIL,SEXO,INCLUSAO_SUSEP,'
      
        #9'  EXCLUSAO_SUSEP,ALTERACAO_SUSEP,ALTERADO,SITUACAO,OPERADOR_INC' +
        'LUSAO,OPERADOR_ALTERACAO,'
      
        #9'  OPERADOR_EXCLUSAO,MANUTENCAO,NM_MAE,CPF,PIS_PASEP,MOTIVO_CANC' +
        'ELAMENTO,VALOR_MENS,DTREINCLUSAO,'
      
        '          DATA_ALTERACAO,CODIGO_ANS,CD_MOTIVO_INCLUSAO,DT_MIGRAC' +
        'AO,CEI,DT_EXCLUSAO_ORIG,DT_VENDA,NRPLANOOUTOP,'
      '          CCO,DG_CCO,NOVO_COD_USU_PLANO,REINCLUSAO_SIB'
      ''
      '   FROM DELETED'
      ''
      ''
      ''
      '   END'
      ''
      ''
      '   INSERT INTO USUARIOLOG '
      
        '  '#9' (DATAALTERACAO,CODIGO,DIGITO,CODIGO_COMPLETO,NOME,GRAU_PAREN' +
        'TESCO,DATA_NASCIMENTO,'
      
        '          DATA_INCLUSAO,DATA_EXCLUSAO,CONTRATANTE_TITULAR,VENDED' +
        'OR,E_CIVIL,SEXO,INCLUSAO_SUSEP,'
      
        #9'  EXCLUSAO_SUSEP,ALTERACAO_SUSEP,ALTERADO,SITUACAO,OPERADOR_INC' +
        'LUSAO,OPERADOR_ALTERACAO,'
      
        #9'  OPERADOR_EXCLUSAO,MANUTENCAO,NM_MAE,CPF,PIS_PASEP,MOTIVO_CANC' +
        'ELAMENTO,VALOR_MENS,DTREINCLUSAO,'
      
        '          DATA_ALTERACAO,CODIGO_ANS,CD_MOTIVO_INCLUSAO,DT_MIGRAC' +
        'AO,CEI,DT_EXCLUSAO_ORIG,DT_VENDA,NRPLANOOUTOP,'
      '          CCO,DG_CCO,NOVO_COD_USU_PLANO,REINCLUSAO_SIB)'
      ''
      ''
      '   SELECT '
      ''
      
        '  '#9' GETDATE(),CODIGO,DIGITO,CODIGO_COMPLETO,NOME,GRAU_PARENTESCO' +
        ',DATA_NASCIMENTO,'
      
        '          DATA_INCLUSAO,DATA_EXCLUSAO,CONTRATANTE_TITULAR,VENDED' +
        'OR,E_CIVIL,SEXO,INCLUSAO_SUSEP,'
      
        #9'  EXCLUSAO_SUSEP,ALTERACAO_SUSEP,ALTERADO,SITUACAO,OPERADOR_INC' +
        'LUSAO,OPERADOR_ALTERACAO,'
      
        #9'  OPERADOR_EXCLUSAO,MANUTENCAO,NM_MAE,CPF,PIS_PASEP,MOTIVO_CANC' +
        'ELAMENTO,VALOR_MENS,DTREINCLUSAO,'
      
        '          DATA_ALTERACAO,CODIGO_ANS,CD_MOTIVO_INCLUSAO,DT_MIGRAC' +
        'AO,CEI,DT_EXCLUSAO_ORIG,DT_VENDA,NRPLANOOUTOP,'
      '          CCO,DG_CCO,NOVO_COD_USU_PLANO,REINCLUSAO_SIB'
      ''
      '   FROM INSERTED'
      ''
      ''
      ''
      'END'
      ''
      
        '--UPDATE USUARIO SET NOME = '#39'ENIO'#39' WHERE CODIGO_COMPLETO = 15449' +
        '0'
      ''
      ''
      '')
    Left = 144
    Top = 464
  end
  object SpRegistraDetalheMensalidade: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE procedure SpRegistraDetalheMensalidade '
      ''
      '@CdContratante int,'
      '@DtBase char(10),'
      '@NrTitulo int,'
      '@desd  char(1),'
      '@dtVencto datetime '
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare '
      '       @VrMensalidade smallmoney,'
      '       @QtdeUsu       smallint  ,'
      '       @VrDesconto    smallmoney'
      ''
      'set dateformat dmy'
      ''
      ''
      
        ' insert into DetalheFaturamento (numero_titulo, desdobramento, d' +
        'ata_vencimento , codigo , ds_detalhe , valor)'
      ' '
      
        ' select @NrTitulo,@desd, @dtVencto, cast(m.cd_usuario as varchar' +
        '(8)) + cast(m.dg_usuario as varchar(3)),u.nome,valor'
      ''
      'from '
      #9'mensalidade_usuario m,'
      #9'usuario'#9#9'    u,'
      #9'contratante'#9'    c'
      ''
      'where'
      #9'    m.cd_usuario          = u.codigo'
      #9'and m.dg_usuario          = u.digito'
      #9'and c.codigo'#9#9'  = u.contratante_titular'
      '        and u.contratante_titular = @CdContratante'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      '        and @DtBase               between DtInicio and DtFim'
      ''
      
        'exec spCalcDescContrat @CdContratante, @DtBase, @VrDesconto outp' +
        'ut'
      ''
      
        'insert into DetalheFaturamento (numero_titulo, desdobramento, da' +
        'ta_vencimento , codigo , ds_detalhe , valor)'
      'values'
      
        '                                (@NrTitulo   ,@desd         , @d' +
        'tVencto       , '#39#39', '#39'DESCONTO'#39',@VrDesconto)'
      ''
      ''
      'declare @cdCobDescEmfolha varchar(10)'
      ''
      
        'set @cdCobDescEmfolha =(select vl_parametro from parametro where' +
        ' cd_parametro = '#39'CDDEF'#39')'
      ''
      
        '--parei aqui pegar o primeiro e ultimo dia do mes confirmar com ' +
        'meninas se eh para pegar mensalidade dessa forma(intervalo de da' +
        'tas'
      
        '--select * from receber where desdobramento = '#39'O'#39' and tipoCobran' +
        'ca = @cdCobDescEmfolha and data_vencimento between ')
    Left = 1056
    Top = 600
  end
  object sp_geraMensalidadeDebFolha: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE  procedure sp_geraMensalidadeDebFolha'
      
        '--update prestacoes set per_ref_des_folha = null where per_ref_d' +
        'es_folha is not null'
      
        #9'--sp_geraMensalidadeDebFolha '#39'TD'#39','#39'07'#39','#39'2010'#39',10236,'#39'23/06/2010' +
        #39',0,1770'
      #9
      ''
      #9'   @tp_pessoa varchar(2), --PF, PJ, TD = TODOS'
      #9'   @mes varchar(2) ,'
      #9'   @ano varchar(4) ,'
      #9'   @contratante int,   '
      #9'   @DtEmissao char(10),'
      #9'   @EmitidoDoc bit ,'
      #9'   @seqPerFat int'
      #9'   '
      ''
      #9'as'
      ''
      #9'set dateformat dmy'
      ''
      #9'declare @dtCorte datetime'
      #9'declare @contratante_fim int'
      ''
      #9'if @contratante = 0'
      #9'   set @contratante_fim = 99999999'
      #9'else'
      #9'   set @contratante_fim =@contratante'
      ''
      #9'if @@error > 0'
      #9'begin'
      #9'   declare @aux  varchar(100)'
      
        #9'   set @aux =  '#39'Data corte inv'#225'lida(sp_geraMensalidadeDebFolha)' +
        ' parametro DIACF = '#39' + (select vl_parametro from parametro where' +
        ' cd_parametro = '#39'DIACF'#39')'
      #9'   raiserror(@aux,16,1)'
      #9'   return'
      #9'end'
      ''
      #9'-- c'#243'digo de desconto em folha'
      ''
      #9'declare @cdFolhaPagto int'
      ''
      
        #9'set @cdFolhaPagto = (select vl_parametro from parametro where c' +
        'd_parametro = '#39'CPDEF'#39')'
      ''
      #9'if @@error > 0 '
      #9'begin '
      
        #9'   raiserror('#39'C'#243'digo de desconto em folha inv'#225'lido parametro CP' +
        'DEF'#39',16,1) '
      #9'   return '
      #9'end'
      ''
      
        #9'set @dtCorte = (select vl_parametro from parametro where cd_par' +
        'ametro = '#39'DIACF'#39') + '#39'/'#39' + @mes + '#39'/'#39' + @ano'
      ''
      ''
      #9'select '
      #9#9#9'p.orcamento,'
      #9#9#9'p.parcela,'
      #9#9#9'c.codigo, '
      #9#9#9'c.empresa, '
      #9#9#9'p.valor ,'
      #9#9#9'c.Forma_Cobranca,'
      #9#9#9'c.vencimento'
      ''
      #9'into #MensDescFolha '
      ''
      #9'from'
      #9' '
      #9#9#9#9'prestacoes p, '
      #9#9#9#9'orcamento o , '
      #9#9#9#9'contratante c'
      ''
      #9#9'where '
      #9#9#9#9' p.orcamento         = o.numero'
      #9#9#9' and c.codigo            = o.contratante_titular   '
      
        #9#9#9' and o.contratante_titular between @contratante and @contrata' +
        'nte_fim'
      #9#9#9' and p.vencimento        < @dtCorte'
      #9#9#9' and o.autorizado        = 1'
      #9#9#9' and c.Exclusao          is null         '
      #9#9#9' and c.lg_geraFat        = 1'#9#9' '
      #9#9#9' and p.tipo_pagamento    =  @cdFolhaPagto'
      #9#9#9' and p.per_ref_des_folha is null '
      ''
      #9'       '
      #9'if @tp_pessoa = '#39'PJ'#39
      #9#9'delete #MensDescFolha where empresa = 0'
      #9'else'
      #9'if @tp_pessoa = '#39'PF'#39
      #9'   delete #MensDescFolha where empresa = 1'
      ''
      #9'--tb contratante'
      
        #9'select codigo, vencimento, forma_cobranca,  sum(valor) valor in' +
        'to #temp from #MensDescFolha  group by codigo,vencimento,forma_c' +
        'obranca'
      ''
      
        #9'select identity(int,1,1) indice, codigo, vencimento, forma_cobr' +
        'anca, valor into #contratante from #temp'
      ''
      #9'drop table #temp'
      ''
      #9'declare @i         int'
      #9'declare @max       int'
      #9'declare @vencto    varchar(3)'
      #9'declare @formaCobr int'
      #9'declare @contrat   int'
      #9'declare @valor     smallmoney'
      #9'declare @nrtitulo  varchar(15)'
      #9'declare @tipoPagto tinyint'
      ''
      #9'set @max = (select max(indice) from #contratante)'
      #9'set @i = 1'
      #9'begin tran'
      #9'while @i <= @max'
      #9'begin'
      ''
      
        #9#9'select @contrat = codigo, @valor = valor, @vencto = vencimento' +
        ', @formaCobr = forma_cobranca from #contratante'
      #9'    '
      
        #9#9'set @nrtitulo =  substring(@ano,3,2) + @mes + cast(@contrat as' +
        ' varchar(15)) + replicate('#39'0'#39',2 - len(@mes))'
      ''
      #9#9'if @formaCobr <> '#39'10'#39
      #9#9'   set @tipoPagto = 6'
      #9#9'else'
      #9#9'   set @tipoPagto = 5'
      '        --select @nrtitulo titulo'
      '        set @i = @i + 1'
      #9#9'insert into faturamento '
      ''
      
        #9#9#9'   (emitido_documento,seq_periodo_fat,numero_titulo,desdobram' +
        'ento,tipo_documento,codigo_contratante,data_emissao,'
      
        #9#9#9#9'data_vencimento, tipo_cobranca,exportado_receber,orcamento,c' +
        'idade,parcela,Tipo_Pagamento,Valor,'
      #9#9#9#9'Alteracao_Valor,Alteracao_Cobranca)'
      #9'    '
      ''
      #9#9'values  '
      ''
      
        #9#9#9#9'(@EmitidoDoc,@seqPerFat,@nrtitulo,'#39'M'#39','#39'26'#39',@contrat,@DtEmiss' +
        'ao,'
      
        #9#9#9#9' @vencto + '#39'/'#39' + @mes + '#39'/'#39' + @ano,@formaCobr,0,'#39#39','#39#39',0,@tip' +
        'oPagto,@valor,'
      #9#9#9#9' 0,0)'
      '         '
      '         if @@error > 0'
      '         begin'
      
        '            raiserror('#39'Ocorreu um erro ao incluir titulo no fatu' +
        'ramento(sp_geraMensalidadeDebFolha)'#39',16,1)'
      '            rollback tran'
      '            return'
      '         end'
      '         set @i = @i + 1'
      #9'end'
      ''
      
        #9'update prestacoes set per_ref_des_folha = @mes + '#39'/'#39' + @ano fro' +
        'm #MensDescFolha m where m.orcamento = prestacoes.orcamento and ' +
        'prestacoes.parcela = m.parcela'
      '         if @@error > 0'
      '         begin'
      
        '            raiserror('#39'Ocorreu um erro ao incluir titulo no fatu' +
        'ramento(sp_geraMensalidadeDebFolha update prestacoes )'#39',16,1)'
      '            rollback tran'
      '            return'
      '         end'
      ''
      #9'commit'
      ''
      #9'--volta'
      ''
      '')
    Left = 1064
    Top = 520
  end
  object sp_recebimento_mes: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter procedure sp_recebimento_mes --'#39'01/01/1900'#39','#39'31/12/2099'#39','#39 +
        '01/01/2010'#39','#39'31/12/2010'#39
      '@DtVencIni char(10),'
      '@DtVencFim char(10),'
      '@DtPgIni char(10),'
      '@DtPgFim char(10)'
      ''
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'create table #resultado'
      '(mes int,'
      ' ano int,'
      ' mensalidade money,'
      ' orcamento money,'
      ' manutencao money,'
      ' total money'
      ' '
      ')'
      ''
      'set dateformat dmy '
      ''
      'select '
      'year(Data_Pagamento) ano, '
      'month(data_pagamento) mes,'
      'TipoDocumento.Classificacao, '
      'sum(Receber.Valor_Pago) valor_pago  '
      ''
      'into #temp'
      ''
      'from receber '
      ''
      
        'left join TipoDocumento on (TipoDocumento.codigo = Receber.Tipo_' +
        'documento)'
      'where data_pagamento between @DtPgIni and @DtPgFim + '#39' 23:59'#39
      'and data_vencimento between @DtVencIni and @DtVencFim + '#39' 23:59'#39
      ''
      'group by '
      'year(Data_Pagamento), '
      'month(data_pagamento) ,'
      'TipoDocumento.Classificacao'
      ''
      'order by 1,2'
      ''
      
        'insert into #resultado select distinct mes,ano,0,0,0,0 from #tem' +
        'p'
      ''
      
        'update #resultado set mensalidade = valor_pago from #temp t wher' +
        'e #resultado.mes = t.mes and #resultado.ano = t.ano and t.classi' +
        'ficacao = '#39'Mensalidade'#39
      
        'update #resultado set orcamento = valor_pago from #temp t where ' +
        '#resultado.mes = t.mes and #resultado.ano = t.ano and t.classifi' +
        'cacao = '#39'Or'#231'amento'#39
      
        'update #resultado set manutencao = valor_pago from #temp t where' +
        ' #resultado.mes = t.mes and #resultado.ano = t.ano and t.classif' +
        'icacao = '#39'Manuten'#231#227'o'#39
      
        'update #resultado set total = mensalidade + orcamento + manutenc' +
        'ao'
      ''
      
        'select cast (mes as varchar(2)) + '#39'/'#39' + cast(ano as varchar(4)) ' +
        'MesAno,mensalidade,orcamento,manutencao,total from #resultado'
      'ORDER BY ANO,MES')
    Left = 1064
    Top = 456
  end
  object SP_GERA_DMED_REG_TOP: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'CREATE PROCEDURE SP_GERA_DMED_REG_TOP --SP_GERA_DMED_REG_TOP '#39'01' +
        '/01/2009'#39','#39'31/12/2009'#39
      ''
      '--DECLARE'
      ''
      '@DTINI CHAR(10),'
      '@DTFIM CHAR(10)'
      ''
      'AS'
      '-- DROP TABLE #DMED'
      '--SET @DTINI = '#39'01/01/2009'#39
      '--SET @DTFIM = '#39'31/12/2009'#39
      ''
      'SET DATEFORMAT DMY'
      ''
      'SELECT  '
      ''
      '    C.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF,'
      
        '    convert(datetime,'#39'01/01/2011'#39') DT_NASCIMENTO, -- CONTRATANTE' +
        ' NAO TEM DT DE NASCIMENTO MAS NO REGISTRO TOP DO DMED NAO PRECIS' +
        'A DE DATA DE NASCIMENTO, T'#193' AKI PARA COMPATIBILIDADE NO UNION'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,    '
      '    C.CODIGO,'
      '    C.CODIGO AS CD_CONTRATANTE,'
      
        '    C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR' +
        ' CPF'
      
        '    CAST(0 AS INT) CD_TITULAR, -- NAO SE APLICA AKI, SOMENTE NO ' +
        'SELECT DE UNION'
      
        '    '#39'A'#39' AS LG_TITULAR -- A TITULAR, B DEPENDENTE. COMO T'#193' FAZEND' +
        'O UNION DA CONTRATANTE(MENSAILDADES) COM USUARIO(OR'#199'AMENTOS E MA' +
        'NUTEN'#199#195'O)'
      
        '                   -- DEFINE QUE OS REGISTROS DE MENSALIDADE DO ' +
        'CONTRATANTE S'#195'O DO TITULAR, E OR'#199'AMENTOS E MANUTEN'#199#213'ES , DEPENDE' +
        ' DO GRAU'
      
        '                   -- A GABI DEFINIU QUE PARAA MENSALIDADE MANDA' +
        ' TUDO NO NOME DO TITULAR, E PARA MANUTEN'#199#195'O E OR'#199'AMENTOS MANDA'
      
        '                   -- NO NOME DE QUEM FEZ, SE FOR  TITULAR MANDA' +
        ' PARA O TITULAR(REGISTRO TOP DO DMED) E SE FOR DEPENDENTE MANDA ' +
        'PARA DEPENDETE(REGISTRO DTOP DO DMED)'
      ''
      ''
      'INTO #DMED'
      ''
      'FROM '
      #9'RECEBER R, '
      #9'TIPODOCUMENTO T,'
      '    CONTRATANTE C,'
      '    PLANO P'
      ''
      'WHERE '
      #9'     T.CODIGO = R.TIPO_DOCUMENTO '
      '        AND C.CODIGO  = R.CODIGO_CONTRATANTE'
      '        AND P.CODIGO  = C.PLANO'
      #9'AND DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    AND P.FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI SOMENTE PESSOA F'#205'SI' +
        'CA..'
      '    AND T.CODIGO = 1 -- MENSALIDADE'
      ''
      
        '-- ATUALIZA A DT DE NASCIMENTO PARA FAZER GROUP BY COM REGISTROS' +
        ' DE OR'#199'AMENTO E MANUT.'
      ''
      
        'UPDATE #DMED SET  #DMED.DT_NASCIMENTO = U.DATA_NASCIMENTO FROM U' +
        'SUARIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENT' +
        'ESCO = 1 '
      
        '--select * from #dmed where not exists(select * from usuario u W' +
        'HERE #DMED.CODIGO = U.CODIGO AND U.GRAU_PARENTESCO = 1 )'
      ''
      
        '-- INSERI OS REGISTROS DE MANUTEN'#199#195'O E OR'#199'AMENTO, NESSE CASO NAO' +
        ' FILTRA SE EH PJ OU PF, POIS TODO OR'#199'AMENTO E MANUTEN'#199#195'O'
      
        '-- S'#195'O PAGOS PELA POSSA FISICA, INDEPENDETE SE O CONTRATANTE EH ' +
        'OU NAO PJ.(SEGUNDO GABI)'
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  '
      '    U.NOME AS NM_CONTRATANTE,'
      '    U.CPF as CGC_CPF,'
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,'
      '    U.CODIGO_COMPLETO CODIGO,'
      '    U.CODIGO AS CD_CONTRATANTE,'
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      
        '    CASE U.GRAU_PARENTESCO WHEN 1 THEN '#39'A'#39' ELSE '#39'B'#39' END AS LG_TI' +
        'TULAR'
      ''
      '    '
      ''
      ''
      'FROM '
      #9'RECEBER R'
      ''
      'INNER JOIN'#9'TIPODOCUMENTO T '
      'ON'
      '   T.CODIGO = R.TIPO_DOCUMENTO '
      ''
      'INNER JOIN CONTRATANTE C'
      'ON'
      '    C.CODIGO  = R.CODIGO_CONTRATANTE '
      ''
      'INNER JOIN USUARIO U '
      'ON'
      '   U.CODIGO_COMPLETO = R.CODIGO_USUARIO'
      ''
      'WHERE '
      #9'        '
      #9'    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    --AND FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI OR'#199'AMENTOS MANUT '#201' ' +
        'O BENEF. QUE PAGA, INT'#195'O N'#195'O VERIFICA SE '#201' PJ OU PF'
      '    AND T.CODIGO IN(2, -- ORC'
      #9#9#9#9#9'3, -- ORC IMPL'
      #9#9#9#9#9'5, -- MANUT'
      #9#9#9#9#9'6, -- EMERG'
      #9#9#9#9'   20) -- MANUT IMPL'
      ''
      
        '-- GRAVA O CODIGO DO TITULAR QUANDO FOR DEPENDENTE, DEPOIS VERIF' +
        'ICA SE O TITULAR EXISTE NO #DMED, SE NAO EXISTE INCLUI O TITULAR'
      
        'UPDATE #DMED SET  #DMED.CD_TITULAR = U.CODIGO_COMPLETO FROM USUA' +
        'RIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENTESC' +
        'O = 1 AND #DMED.LG_TITULAR = '#39'B'#39
      ''
      ''
      
        '-- INSERI OS TITULARES, CUJO DEPENDENTE TEM , MAS O TITULAR NAO ' +
        'EST'#193' NA TEMP #DMED, ISSO OCORRE PARA OS REGISTROS DE'
      '-- ORCAMENTOS OU MANUTEN'#199#195'O DE BENEF COM CONTRATANTE PJ'
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  DISTINCT'
      '    U.NOME AS NM_CONTRATANTE,'
      '    U.CPF as CGC_CPF,'
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'1,'
      '    '#39'MENSALIDADE'#39','
      #9'0, '
      #9'NULL ,'
      #9'NULL,'
      #9'U.CODIGO_COMPLETO, '
      #9'NULL,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    NULL,'
      '    U.CODIGO_COMPLETO CODIGO,'
      '    U.CODIGO,'
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      '    '#39'A'#39' AS LG_TITULAR'
      ''
      'FROM '
      ''
      #9'USUARIO U, '
      #9'CONTRATANTE C,'
      '    #DMED D'
      ''
      'WHERE'
      ''
      '         U.CODIGO = C.CODIGO'
      '     AND D.CD_TITULAR = U.CODIGO_COMPLETO'
      
        'AND NOT EXISTS(SELECT * FROM #DMED D WHERE LG_TITULAR = '#39'B'#39' AND ' +
        'D.CODIGO = U.CODIGO_COMPLETO AND D.CD_TITULAR > 0)'
      ''
      
        '--SELECT * FROM TIPODOCUMENTO --UPDATE PARAMETRO SET VL_PARAMETR' +
        'O = '#39'S'#39' WHERE CD_PARAMETRO = '#39'VERIRO'#39
      ''
      
        'IF (SELECT VL_PARAMETRO FROM PARAMETRO WHERE CD_PARAMETRO = '#39'VER' +
        'IRO'#39') = '#39'S'#39' '
      
        '-- SE S CONSISTE SE NO OR'#199'AMENTO CLIENTE OPTOU POR N'#195'O UTILIZAR ' +
        'ESSE OR'#199'AMENTO PARA FINS DE DECLARA'#199#195'O DE IMPOSTO DE RENDA'
      '-- SE SIM ENT'#195'O DELETA ESSES OR'#199'AMENTOS PARA N'#195'O SAIR NO DMED'
      'BEGIN'
      '  '
      
        '   DELETE #DMED WHERE TIPO_DOCUMENTO IN(5,2) /*5=MANUTEN'#199#195'O E 2=' +
        'OR'#199'AMENTO*/'
      
        '                      AND EXISTS(SELECT * FROM ORCAMENTO O WHERE' +
        ' O.NUMERO = #DMED.ORCAMENTO AND LG_IR = 0)'
      ''
      'END'
      ''
      'UPDATE #DMED SET CGC_CPF = NULL WHERE CGC_CPF = '#39#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'-'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'.'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%.%'#39
      ''
      'UPDATE #DMED SET CPF_ORDENACAO = NULL WHERE CPF_ORDENACAO = '#39#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'-'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'.'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%.%'#39
      ''
      ''
      ''
      ''
      'SELECT  '
      '    NM_CONTRATANTE,    '
      '    CGC_CPF,'
      '    DT_NASCIMENTO,'
      '    LG_TITULAR,'
      #9'SUM(VALOR_PAGO) VALOR_PAGO'
      ''
      'FROM #DMED'
      ''
      'GROUP BY'
      ''
      '    NM_CONTRATANTE,'
      '    CGC_CPF,'
      '    DT_NASCIMENTO,'
      '    LG_TITULAR,'
      '    CAST(CPF_ORDENACAO AS DECIMAL) '
      ''
      'ORDER BY CAST(CPF_ORDENACAO AS DECIMAL), LG_TITULAR,CGC_CPF'
      ''
      
        '--MARIA TEREZINHA LOURENCO DE BIAGGI                 00145407896' +
        '                                        A          147,02'
      
        '--GISELA FRAZONI POSSE                               00271471859' +
        '                                        B          79,9484'
      '')
    Left = 1064
    Top = 392
  end
  object sp_gera_nr_titulo: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create procedure sp_gera_nr_titulo'
      ''
      
        '--declare @nrTit int exec sp_gera_nr_titulo 21636, @nrTit output' +
        ' select @nrTit'
      
        '-- Criada para achar um nr de titulo v'#225'lido, pois quando era ger' +
        'ado titulos de tratamento concatenava-se o codigo do usuairo + a' +
        'no + mes'
      
        '-- dessa forma ultrapassou o nr de inteiros m'#225'ximo que eh 2,147,' +
        '483,648, o metodo achado foi criar essa fun'#231#227'o que gera nr de ti' +
        'tulos'
      
        '-- para modalidade tratamento e desconto em folha, e manter o pa' +
        'dr'#227'o da mensalidade que eh contratante + mes + ano'
      ''
      '@contrat int,'
      '@nrTitulo int output'
      ''
      'as'
      ''
      ''
      ''
      
        'set @nrTitulo = cast(@contrat as varchar) + '#39'1300'#39' -- soma-se 13' +
        '00 porque no titulo da mensalidade no lugar do 13 vem o mes, com' +
        'o n'#227'o tem mes 13,inicia=se dai'
      ''
      'declare @achou char(1)'
      'set @achou = '#39'N'#39
      'while @achou = '#39'N'#39
      'begin'
      
        '   if not exists (select numero_titulo from faturamento where nu' +
        'mero_titulo = @nrTitulo)'
      '     set @achou = '#39'S'#39
      '   else'
      '     set @nrTitulo = @nrTitulo + 1'
      'end'
      ''
      
        '--select top 100 numero_titulo from faturamento order by numero_' +
        'titulo desc'
      '--2093501103')
    Left = 1064
    Top = 320
  end
  object SP_GERA_DMED_REG_TOP_ALTER: TADOQuery
    Connection = DM.ADOConn
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'ALTER PROCEDURE SP_GERA_DMED_REG_TOP --SP_GERA_DMED_REG_TOP '#39'01/' +
        '01/2010'#39','#39'31/12/2010'#39
      ''
      '--DECLARE'
      ''
      '@DTINI CHAR(10),'
      '@DTFIM CHAR(10)'
      ''
      'AS'
      '-- DROP TABLE #DMED DROP TABLE #BOSS'
      '--SET @DTINI = '#39'01/01/2010'#39
      '--SET @DTFIM = '#39'31/12/2010'#39
      ''
      'SET DATEFORMAT DMY'
      'DECLARE @ANO INT'
      'SET @ANO = SUBSTRING(@DTINI,7,4)'
      ''
      'SELECT  '
      ''
      '    C.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF,'
      
        '    convert(datetime,NULL) DT_NASCIMENTO, -- CONTRATANTE NAO TEM' +
        ' DT DE NASCIMENTO MAS NO REGISTRO TOP DO DMED NAO PRECISA DE DAT' +
        'A DE NASCIMENTO, T'#193' AKI PARA COMPATIBILIDADE NO UNION'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,    '
      '    C.CODIGO,'
      '    C.CODIGO AS CD_CONTRATANTE,'
      '    '#39'M'#39' TIPO,'
      
        '    C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR' +
        ' CPF'
      
        '    CAST(0 AS INT) CD_TITULAR, -- NAO SE APLICA AKI, SOMENTE NO ' +
        'SELECT DE UNION'
      
        '    '#39'A'#39' AS LG_TITULAR -- A TITULAR, B DEPENDENTE. COMO T'#193' FAZEND' +
        'O UNION DA CONTRATANTE(MENSAILDADES) COM USUARIO(OR'#199'AMENTOS E MA' +
        'NUTEN'#199#195'O)'
      
        '                   -- DEFINE QUE OS REGISTROS DE MENSALIDADE DO ' +
        'CONTRATANTE S'#195'O DO TITULAR, E OR'#199'AMENTOS E MANUTEN'#199#213'ES , DEPENDE' +
        ' DO GRAU'
      
        '                   -- A GABI DEFINIU QUE PARAA MENSALIDADE MANDA' +
        ' TUDO NO NOME DO TITULAR, E PARA MANUTEN'#199#195'O E OR'#199'AMENTOS MANDA'
      
        '                   -- NO NOME DE QUEM FEZ, SE FOR  TITULAR MANDA' +
        ' PARA O TITULAR(REGISTRO TOP DO DMED) E SE FOR DEPENDENTE MANDA ' +
        'PARA DEPENDETE(REGISTRO DTOP DO DMED)'
      ''
      ''
      'INTO #DMED'
      ''
      'FROM '
      #9'RECEBER R, '
      #9'TIPODOCUMENTO T,'
      '    CONTRATANTE C,'
      '    PLANO P'
      ''
      'WHERE '
      #9'     T.CODIGO = R.TIPO_DOCUMENTO '
      '        AND C.CODIGO  = R.CODIGO_CONTRATANTE'
      '        AND P.CODIGO  = C.PLANO'
      #9'AND DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    AND P.FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI SOMENTE PESSOA F'#205'SI' +
        'CA..'
      '    AND T.CODIGO = 1 -- MENSALIDADE'
      ''
      
        '-- ATUALIZA A DT DE NASCIMENTO PARA FAZER GROUP BY COM REGISTROS' +
        ' DE OR'#199'AMENTO E MANUT.'
      ''
      
        'UPDATE #DMED SET  #DMED.DT_NASCIMENTO = U.DATA_NASCIMENTO FROM U' +
        'SUARIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENT' +
        'ESCO = 1 '
      'AND SUBSTRING(#DMED .NM_CONTRATANTE,1,3) = SUBSTRING(U.NOME,1,3)'
      ''
      ''
      
        '--select * from #dmed where not exists(select * from usuario u W' +
        'HERE #DMED.CODIGO = U.CODIGO AND U.GRAU_PARENTESCO = 1 )'
      ''
      
        '-- INSERI OS REGISTROS DE MANUTEN'#199#195'O E OR'#199'AMENTO, NESSE CASO NAO' +
        ' FILTRA SE EH PJ OU PF, POIS TODO OR'#199'AMENTO E MANUTEN'#199#195'O'
      
        '-- S'#195'O PAGOS PELA POSSA FISICA, INDEPENDETE SE O CONTRATANTE EH ' +
        'OU NAO PJ.(SEGUNDO GABI)'
      ''
      
        '-- OBS: NO INICIO O DMED ENVIADO SERIA ASSIM, MENSALIDADE IRIA E' +
        'NVIAR PARA O CONTRATANTE PF SEMPRE, J'#193' OR'#199'AMENTO IRIA ENVIAR NO ' +
        'CPF DE QUEM FEZ(GERANDO O REGISTRO DTOP NO DMED)'
      
        '-- SO QUE NO FIM DA RETA DECIDIRAM ENVIAR TUDO NO NOME DO TITULA' +
        'R ,POIS O RECIDO DE IR SAI TUDO NO NOME DO TITULAR E ELIAS E CAE' +
        ' FICARAM COM RECEIO DE DAR PROBLEMA PARA'
      
        '-- OS CLIENTES POIS MUITOS LAN'#199'ARAM NO IR O VALOR DO RELATORIO D' +
        'E DECALRA'#199#195'O DE IR DA MT. ABAIXO FICOU COMENTADO NA FRENTE DE CA' +
        'DA CAMPO COMO TAVA PARA ENVIAR O DTOP.'
      '-- CASO EM ENVIOS FUTUROS DECIDA ENVIAR O DTOP BASTA TROCAR.'
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  '
      '    C.NOME AS NM_CONTRATANTE, --U.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF, --U.CPF as CGC_CPF, '
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      #9'R.VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    R.ORCAMENTO,'
      '    C.CODIGO CODIGO, --U.CODIGO_COMPLETO CODIGO,'
      '    C.CODIGO AS CD_CONTRATANTE, --U.CODIGO AS CD_CONTRATANTE,'
      '    '#39'O'#39' TIPO,'
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      
        '    '#39'A'#39' LG_TITULAR /*CASE U.GRAU_PARENTESCO WHEN 1 THEN '#39'A'#39' ELSE' +
        ' '#39'B'#39' END AS LG_TITULAR*/'
      ''
      ''
      ''
      'FROM '
      #9'RECEBER R'
      ''
      'INNER JOIN'#9'TIPODOCUMENTO T '
      'ON'
      '   T.CODIGO = R.TIPO_DOCUMENTO '
      ''
      'INNER JOIN USUARIO U '
      'ON'
      '   U.CODIGO_COMPLETO = R.CODIGO_USUARIO'
      ''
      'INNER JOIN CONTRATANTE C'
      'ON'
      '    C.CODIGO  = U.CODIGO'
      ''
      'WHERE '
      #9'        '
      #9'    DATA_PAGAMENTO BETWEEN @DTINI AND @DTFIM'
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    --AND FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI OR'#199'AMENTOS MANUT '#201' ' +
        'O BENEF. QUE PAGA, INT'#195'O N'#195'O VERIFICA SE '#201' PJ OU PF'
      '    AND T.CODIGO IN(2, -- ORC'
      #9#9#9#9#9'3, -- ORC IMPL'
      #9#9#9#9#9'5, -- MANUT'
      #9#9#9#9#9'6, -- EMERG'
      #9#9#9#9'   20) -- MANUT IMPL'
      ''
      
        '-- GRAVA O CODIGO DO TITULAR QUANDO FOR DEPENDENTE, DEPOIS VERIF' +
        'ICA SE O TITULAR EXISTE NO #DMED, SE NAO EXISTE INCLUI O TITULAR'
      
        'UPDATE #DMED SET  #DMED.CD_TITULAR = U.CODIGO_COMPLETO FROM USUA' +
        'RIO U WHERE #DMED.CD_CONTRATANTE = U.CODIGO AND U.GRAU_PARENTESC' +
        'O = 1 AND #DMED.LG_TITULAR = '#39'B'#39
      '--aqui..'
      
        '-- EXCLUI OS OR'#199'AMENTOS QUE N'#195'O DEVEM IR.   TABELA CONTRAT_DMED ' +
        'TRATADA NO SCRIPT RETIRA_ORC_DMED.SQL'
      
        '--select sum(valor_pago) from #dmed where tipo = '#39'M'#39' declare @an' +
        'o int set @ano = 2010'
      ''
      
        'IF EXISTS(SELECT * FROM CONTRAT_DMED A WHERE A.ANO = @ANO AND A.' +
        'TIPO = '#39'O'#39')'
      
        '   DELETE #DMED WHERE #DMED.TIPO = '#39'O'#39' AND NOT EXISTS(SELECT * F' +
        'ROM CONTRAT_DMED A WHERE A.ANO = @ANO AND A.TIPO = '#39'O'#39' AND #DMED' +
        '.CD_CONTRATANTE = A.CD_CONTRATANTE)'
      ''
      
        'IF EXISTS(SELECT * FROM CONTRAT_DMED A WHERE A.ANO = @ANO AND A.' +
        'TIPO = '#39'M'#39')'
      
        '   DELETE #DMED WHERE #DMED.TIPO = '#39'M'#39' AND NOT EXISTS(SELECT * F' +
        'ROM CONTRAT_DMED A WHERE A.ANO = @ANO AND A.TIPO = '#39'M'#39' AND #DMED' +
        '.CD_CONTRATANTE = A.CD_CONTRATANTE)'
      ''
      '--SELECT sum(valor) FROM CONTRAT_DMED A '
      ''
      
        '-- INSERI OS TITULARES, CUJO DEPENDENTE TEM , MAS O TITULAR NAO ' +
        'EST'#193' NA TEMP #DMED, ISSO OCORRE PARA OS REGISTROS DE'
      '-- ORCAMENTOS OU MANUTEN'#199#195'O DE BENEF COM CONTRATANTE PJ'
      ''
      ''
      ''
      'INSERT INTO #DMED'
      ''
      'SELECT  DISTINCT'
      '    U.NOME AS NM_CONTRATANTE,'
      '    U.CPF as CGC_CPF,'
      '    U.DATA_NASCIMENTO AS DT_NASCIMENTO,'
      #9'1,'
      '    '#39'MENSALIDADE'#39','
      #9'0.01, '
      #9'NULL ,'
      #9'NULL,'
      #9'U.CODIGO_COMPLETO, '
      #9'NULL,'
      '    CAST(0 AS INT) QTUSU,'
      '    CAST(0 AS SMALLMONEY) VRUNIT,'
      '    NULL,'
      '    U.CODIGO_COMPLETO CODIGO,'
      '    U.CODIGO,'
      '    '#39'M'#39','
      
        #9'C.CGC_CPF CPF_ORDENACAO, -- SEGUNDO DMED TEM QUE ORDENAR POR CP' +
        'F'
      '    CAST(0 AS INT) CD_TITULAR,'
      '    '#39'A'#39' AS LG_TITULAR'
      ''
      'FROM '
      ''
      #9'USUARIO U, '
      #9'CONTRATANTE C,'
      '    #DMED D'
      ''
      'WHERE'
      ''
      '         U.CODIGO = C.CODIGO'
      '     AND D.CD_TITULAR = U.CODIGO_COMPLETO'
      
        'AND NOT EXISTS(SELECT * FROM #DMED D WHERE LG_TITULAR = '#39'B'#39' AND ' +
        'D.CODIGO = U.CODIGO_COMPLETO AND D.CD_TITULAR > 0)'
      ''
      
        '--SELECT * FROM TIPODOCUMENTO --UPDATE PARAMETRO SET VL_PARAMETR' +
        'O = '#39'S'#39' WHERE CD_PARAMETRO = '#39'VERIRO'#39
      ''
      
        '/*IF (SELECT VL_PARAMETRO FROM PARAMETRO WHERE CD_PARAMETRO = '#39'V' +
        'ERIRO'#39') = '#39'S'#39' '
      
        '-- SE S CONSISTE SE NO OR'#199'AMENTO CLIENTE OPTOU POR N'#195'O UTILIZAR ' +
        'ESSE OR'#199'AMENTO PARA FINS DE DECLARA'#199#195'O DE IMPOSTO DE RENDA'
      '-- SE SIM ENT'#195'O DELETA ESSES OR'#199'AMENTOS PARA N'#195'O SAIR NO DMED'
      'BEGIN'
      '  '
      
        '   DELETE #DMED WHERE TIPO_DOCUMENTO IN(5,2) /*5=MANUTEN'#199#195'O E 2=' +
        'OR'#199'AMENTO*/'
      
        '                      AND EXISTS(SELECT * FROM ORCAMENTO O WHERE' +
        ' O.NUMERO = #DMED.ORCAMENTO AND LG_IR = 0)'
      ''
      'END'
      '*/'
      'UPDATE #DMED SET CGC_CPF = NULL WHERE CGC_CPF = '#39#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'-'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'.'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%.%'#39
      
        'UPDATE #DMED SET CGC_CPF = REPLACE(CGC_CPF,'#39'/'#39','#39#39') WHERE CGC_CPF' +
        ' LIKE '#39'%/%'#39
      ''
      'UPDATE #DMED SET CPF_ORDENACAO = NULL WHERE CPF_ORDENACAO = '#39#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'-'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%-%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'.'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%.%'#39
      
        'UPDATE #DMED SET CPF_ORDENACAO = REPLACE(CPF_ORDENACAO,'#39'/'#39','#39#39') W' +
        'HERE CPF_ORDENACAO LIKE '#39'%/%'#39
      ''
      ''
      
        '-- COISAS DO SQL TIVE QUE CRIAR UMA OTURA #TEMP POR DA PAU NA ME' +
        'SMA'
      'SELECT * INTO #BOSS FROM #DMED'
      ''
      '-- ATUALIZA A DATA DE NASCIMENTO QUANDO NULL OU DIFERENTE..'
      ''
      'UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO '
      ''
      
        'FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A' +
        '.CGC_CPF = #DMED.CGC_CPF'
      'AND A.DT_NASCIMENTO IS NOT NULL '
      'AND  #DMED.DT_NASCIMENTO IS NULL '
      ''
      'UPDATE #DMED SET #DMED.DT_NASCIMENTO = A.DT_NASCIMENTO '
      ''
      
        'FROM #BOSS A WHERE A.NM_CONTRATANTE = #DMED.NM_CONTRATANTE AND A' +
        '.CGC_CPF = #DMED.CGC_CPF'
      'AND A.DT_NASCIMENTO <> #DMED.DT_NASCIMENTO'
      'AND A.DT_NASCIMENTO IS NOT NULL '
      ''
      ''
      
        '-- TEVE SITUA'#199#213'ES DE EXISTIR DOIS TITULARES E NA ORDENA'#199#195'O SAIA ' +
        'FORA DA SEQUENCIA, ENTAO SE FOR TITUALR E CPC DIF ORDENACAO'
      '-- TROCA O CPF ORDENACAO'
      
        'UPDATE #DMED SET CPF_ORDENACAO = CGC_CPF WHERE  CPF_ORDENACAO <>' +
        ' CGC_CPF AND LG_TITULAR = '#39'A'#39
      ''
      '-- PARA SEATO'
      ''
      
        '--update #DMED set valor_PAGO = 658.40 where cd_contratante = 87' +
        '3'
      '--SEATO TEM QUE SER 310.949,49'
      ''
      ''
      ''
      'IF (SELECT CODIGO FROM EMPRESA) = 2 -- SEATO'
      'BEGIN'
      '   SET ROWCOUNT 1'
      ''
      
        '--   UPDATE #DMED SET VALOR_PAGO =  VALOR_PAGO + 7.33 WHERE CD_C' +
        'ONTRATANTE = 873 AND NM_CONTRATANTE = '#39'MARIA AMELIA ZAMARIOLLI S' +
        'ERRA'#39
      
        '   UPDATE #DMED SET VALOR_PAGO =  0 WHERE valor_pago = 80 and CD' +
        '_CONTRATANTE = 873 AND NM_CONTRATANTE = '#39'MARIA AMELIA ZAMARIOLLI' +
        ' SERRA'#39
      
        '   UPDATE #DMED SET VALOR_PAGO =  0 WHERE valor_pago = 80 and CD' +
        '_CONTRATANTE = 873 AND NM_CONTRATANTE = '#39'MARIA AMELIA ZAMARIOLLI' +
        ' SERRA'#39
      
        '   UPDATE #DMED SET VALOR_PAGO =  61.75 WHERE valor_pago = 80 an' +
        'd CD_CONTRATANTE = 873 AND NM_CONTRATANTE = '#39'MARIA AMELIA ZAMARI' +
        'OLLI SERRA'#39
      ''
      ''
      '   SET ROWCOUNT 0'
      'END'
      ''
      ''
      'SELECT  '
      '    NM_CONTRATANTE,    '
      '    CGC_CPF,'
      '-- DT_NASCIMENTO,'
      '    LG_TITULAR,'
      #9'SUM(VALOR_PAGO) VALOR_PAGO'
      ''
      'FROM #DMED'
      ''
      'GROUP BY'
      ''
      '    NM_CONTRATANTE,'
      '    CGC_CPF,'
      '    --DT_NASCIMENTO,'
      '    LG_TITULAR,'
      '    CAST(CPF_ORDENACAO AS DECIMAL) '
      ''
      'ORDER BY CAST(CPF_ORDENACAO AS DECIMAL), LG_TITULAR,CGC_CPF'
      ''
      ''
      ''
      ''
      ''
      ''
      
        '--SELECT * FROM #DMED WHERE NM_CONTRATANTE = '#39'VICENTE RODRIGUES ' +
        'FILHO'#39
      ''
      '')
    Left = 1048
    Top = 240
  end
  object tr_u_bloqueio_contratante: TADOQuery
    Connection = DM.ADOConn
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'CREATE trigger tr_u_bloqueio_contratante on bloqueio_contratante'
      'for update'
      ''
      'as'
      ''
      'if update(dt_ini_bloqueio)'
      'begin'
      '   raiserror('#39'Data inicio n'#227'o pode ser alterada'#39',16,1)'
      '   rollback tran'
      'end'
      'else if update(dt_fim_bloqueio)'
      'begin'
      
        '   if exists(select * from inserted where dt_fim_bloqueio < dt_i' +
        'ni_bloqueio)'
      '   begin'
      
        '      raiserror('#39'Data fim n'#227'o pode ser menor que a data in'#237'cio'#39',' +
        '16,1)'
      '      rollback tran'
      '   '
      '   end'
      '   else'
      
        '   if exists(select * from deleted d where  dt_fim_bloqueio is n' +
        'ot null)'
      '   begin'
      '      raiserror('#39'Data fim n'#227'o pode ser alterada'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else if not update(cd_usuario_desbloqueio)'
      'begin'
      '   raiserror('#39'N'#227'o pode haver modifica'#231#227'o nesse registro'#39',16,1)'
      '   rollback tran'
      'end')
    Left = 1048
    Top = 168
  end
  object tr_i_TabPagXDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_i_TabPagXDentista on TabPagXdentista  '
      'for insert  '
      ''
      'as  '
      ''
      'declare @Dtini datetime  '
      ''
      
        'if exists(select * from inserted where registroPlano is not null' +
        ')  '
      'begin     '
      ''
      
        #9'set @Dtini = (select max(a.dtIni) from  TabPagXDentista a, inse' +
        'rted b '
      #9#9#9#9'  where     a.indice <> b.indice '
      #9#9#9#9#9'    and a.registroPlano = b.registroPlano '
      #9#9#9#9#9#9'and a.cd_dentista = b.cd_dentista'
      '                        and b.registroPlano is not null)     '
      ''
      #9
      '    if exists(select *  from TabPagXDentista a, inserted b '
      
        '                        where     b.dtIni between a.dtIni and a.' +
        'dtFim '
      #9#9#9#9#9'          and a.registroPlano = b.registroPlano '
      #9#9#9#9#9#9'      and a.cd_dentista   = b.cd_dentista'
      '                              and b.registroPlano is not null'
      '                              and a.dtFim <> '#39'01/01/2079'#39
      #9#9#9#9#9#9#9'  )'
      '    begin'
      
        '        raiserror('#39'Data de vig'#234'ncia n'#227'o pode estar dentro do int' +
        'ervalo de outro registro'#39',16,1)'
      '        rollback tran'
      '        return'
      '    end'
      ''
      #9'if exists(select * from TabPagXDentista  , inserted i '
      ''
      #9'where     TabPagXDentista.indice <> i.indice '
      #9#9'  and i.registroPlano = TabPagXDentista.registroPlano '
      '          and  TabPagXDentista.cd_dentista = i.cd_dentista '
      '          and TabPagXdentista.dtIni = @Dtini)     '
      '    begin        '
      
        #9#9#9'update TabPagXDentista  set dtFim = i.dtIni - 1  from inserte' +
        'd i '
      #9#9#9'where     TabPagXDentista.indice <> i.indice '
      
        '                  and i.registroPlano = TabPagXDentista.registro' +
        'Plano '
      
        '                  and TabPagXDentista.cd_dentista = i.cd_dentist' +
        'a '
      '                  and TabPagXdentista.dtIni = @Dtini     '
      '    end  '
      'end  '
      'else  '
      'begin'
      '    '
      
        #9'set @Dtini = (select max(a.dtIni) from  TabPagXDentista a, inse' +
        'rted b '
      #9#9#9#9'  where     a.indice <> b.indice '
      #9#9#9#9#9'    and a.registroPlano is null'
      '                        and b.registroPlano is null'
      #9#9#9#9#9#9'and a.cd_dentista = b.cd_dentista'
      '                        and b.registroPlano is null)     '
      ' '
      '    if exists(select *  from TabPagXDentista a, inserted b '
      
        '                        where     b.dtIni between a.dtIni and a.' +
        'dtFim '
      #9#9#9#9#9'          and a.registroPlano is null'
      '                              and b.registroPlano is null'
      #9#9#9#9#9#9'      and a.cd_dentista   = b.cd_dentista'
      #9#9#9#9#9#9#9'  and a.dtFim <> '#39'01/01/2079'#39
      '                              )'
      '    begin'
      
        '        raiserror('#39'Data de vig'#234'ncia n'#227'o pode estar dentro do int' +
        'ervalo de outro registro'#39',16,1)'
      '        rollback tran'
      '        return'
      '    end'
      ''
      '   if exists(select * from TabPagXDentista  , inserted i '
      '   where     TabPagXDentista.indice <> i.indice '
      #9'  and i.registroPlano is null '
      '      and TabPagXDentista.registroPlano is null '
      '      and  TabPagXDentista.cd_dentista = i.cd_dentista '
      '      and TabPagXdentista.dtIni = @Dtini)  '
      '   begin     '
      '    '
      
        #9'set @Dtini = (select max(a.dtIni) from TabPagXDentista a, inser' +
        'ted b '
      #9'where     a.indice <> b.indice '
      '          and a.registroPlano is null '
      '          and b.registroPlano is null '
      '          and a.cd_dentista = b.cd_dentista)     '
      '    '
      
        #9'update TabPagXDentista  set dtFim = i.dtIni - 1  from inserted ' +
        'i '
      #9'where     TabPagXDentista.indice <> i.indice '
      #9#9'  and i.registroPlano is null '
      #9#9'  and TabPagXDentista.registroPlano is null '
      #9#9'  and TabPagXDentista.cd_dentista = i.cd_dentista '
      #9#9'  and TabPagXdentista.dtIni = @Dtini  '
      ''
      '  end '
      'end')
    Left = 1059
    Top = 64
  end
  object tr_u_TabPagXDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_u_TabPagXDentista on TabPagXdentista  '
      'for update  '
      ''
      'as  '
      'if not update(dtFim)'
      'begin'
      #9'raiserror('#39'N'#227'o pode haver altera'#231#245'es no registro !'#39',16,1)   '
      '    rollback tran   '
      'end')
    Left = 1155
  end
  object v_contratante_paralizado: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter view v_contratante_paralizado'
      ''
      'as'
      ''
      'select codigo,nome from contratante c where'
      'exists('
      'select numero from orcamento o, usuario u'
      'where     o.status = 4 '
      '      and o.usuario = u.codigo_completo'
      '      and u.contratante_titular = c.codigo'
      #9'  and u.data_exclusao is null'
      ''
      ''
      ')'
      'union'
      ''
      'select codigo,nome from contratante c where'
      'exists('
      'select numero from orcamento o, usuario u'
      'where     o.status = 4 '
      '      and o.usuario = u.codigo_completo'
      '      and u.codigo = c.codigo'
      '      and u.data_exclusao is null'
      ')'
      ''
      ''
      '')
    Left = 819
    Top = 16
  end
  object ADOQueryCriaTabelaAvisos: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TABLE tipo_aviso('
      #9'cd_tp_aviso tinyint NOT NULL,'
      #9'ds_tp_aviso varchar(30) NOT NULL,'
      #9'qt_bloqueio smallint NOT NULL,'
      #9'dt_exclusao smalldatetime NULL,'
      ' CONSTRAINT pk_tipo_aviso PRIMARY KEY CLUSTERED (cd_tp_aviso))'
      ''
      'CREATE TABLE aviso_contratante('
      #9'cd_contratante int NOT NULL,'
      #9'cd_tp_aviso tinyint NOT NULL,'
      #9'dt_aviso datetime NOT NULL,'
      #9'pessoa_avisada varchar(50) NOT NULL,'
      #9'cd_operador int NOT NULL,'
      
        ' CONSTRAINT pk_aviso_contratante PRIMARY KEY CLUSTERED (cd_contr' +
        'atante,'#9'cd_tp_aviso,dt_aviso ),'
      
        'constraint fk_tipo_aviso_avisocontratante foreign key (cd_tp_avi' +
        'so) references tipo_aviso (cd_tp_aviso),'
      
        'CONSTRAINT fk_aviso_contratante FOREIGN KEY(cd_contratante) REFE' +
        'RENCES Contratante (Codigo),'
      
        'CONSTRAINT fk_aviso_operador FOREIGN KEY(cd_operador) REFERENCES' +
        ' Operador (Codigo)) ')
    Left = 1056
    Top = 656
  end
  object SP_VR_SERVICO_POR_PLANO: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'ALTER PROCEDURE SP_VR_SERVICO_POR_PLANO --SP_VR_SERVICO_POR_PLAN' +
        'O 357'
      ''
      '@PLANO INT'
      ''
      'AS'
      ''
      'SET DATEFORMAT DMY'
      '--DECLARE @PLANO INT'
      '--SET @PLANO = 321'
      '--DROP TABLE #SERVICO'
      '--DROP TABLE #VALOR'
      
        'SELECT IDENTITY(INT,1,1) AS INDICE,Codigo CD_SERVICO, Descricao ' +
        'DS_SERVICO INTO #SERVICO FROM SERVICOS WHERE dt_exclusao IS NULL' +
        ' ORDER BY CODIGO'
      ''
      'CREATE TABLE #VALOR'
      '(CD_SERVICO INT,'
      ' DS_SERVICO VARCHAR(70),'
      ' CARENCIA   INT,'
      ' FATOR      DECIMAL(10,2),'
      ' VALOR      SMALLMONEY)'
      ''
      'DECLARE @INI INT'
      'DECLARE @FIM INT'
      'DECLARE @INIC INT'
      'DECLARE @FIMC INT'
      'DECLARE @QTDIAS INT'
      'DECLARE @FATOR DECIMAL(10,2)'
      'DECLARE @DS_SERVICO VARCHAR(70)'
      ''
      '/*PARA PASSAR COMO PARAMETRO PARA A PROCEDURE*/'
      'DECLARE @CD_USUARIO INT '
      'DECLARE @DG_USUARIO TINYINT'
      'DECLARE @VALOR_SERVICO   SMALLMONEY -- ESSE EH O QUE IMPORTA'
      
        'DECLARE @VALOR_BRUTO     SMALLMONEY -- NAO USA, APENAS PARA PASS' +
        'AR NA PROCEDURE'
      
        'DECLARE @VALOR_DENTISTA  SMALLMONEY -- NAO USA, APENAS PARA PASS' +
        'AR NA PROCEDURE'
      
        'DECLARE @VALOR_PROTETICO SMALLMONEY -- NAO USA, APENAS PARA PASS' +
        'AR NA PROCEDURE'
      'DECLARE @DTREFERENCIA    CHAR(10)'
      'DECLARE @DTBASE          CHAR(10)'
      ''
      ''
      'SET @DTBASE = CONVERT(CHAR(10),GETDATE(),103)'
      ''
      '-- PEGA UM USUARIO QUALQUER APENAS PARA PASSAR PARA PROCEDURE..'
      
        'SELECT TOP 1 @CD_USUARIO = U.CODIGO, @DG_USUARIO = U.DIGITO FROM' +
        ' USUARIO U, CONTRATANTE C WHERE C.CODIGO = U.CONTRATANTE_TITULAR' +
        ' AND C.PLANO = @PLANO'
      ''
      'IF @CD_USUARIO IS NULL'
      
        '   SELECT TOP 1 @CD_USUARIO = U.CODIGO, @DG_USUARIO = U.DIGITO F' +
        'ROM USUARIO U, CONTRATANTE C WHERE C.CODIGO = U.CODIGO AND C.PLA' +
        'NO = @PLANO'
      ''
      'DECLARE @CD_SERVICO INT'
      'DECLARE @TABELA_COBERTURA INT'
      'SET @INI = 1'
      ''
      'SET @FIM = (SELECT MAX(INDICE) FROM #SERVICO)'
      ''
      
        'SET @TABELA_COBERTURA = (SELECT TOP 1 TABELA_COBERTURA FROM TABE' +
        'LACOBERTURAXPLANO'
      
        '                       WHERE PLANO = @PLANO AND ATIVA = 1 ORDER ' +
        'BY PLANO)'
      ''
      ''
      'WHILE @INI <= @FIM'
      'BEGIN'
      '   '
      
        '   --SET @CD_SERVICO = (SELECT CD_SERVICO FROM #SERVICO WHERE IN' +
        'DICE = @INI)'
      '   SET @CD_SERVICO = NULL'
      '   SET @DS_SERVICO = NULL'
      
        '   SELECT @CD_SERVICO = CD_SERVICO, @DS_SERVICO = DS_SERVICO FRO' +
        'M #SERVICO WHERE INDICE = @INI'
      '   '
      '   --DELETE #CARENCIA'
      
        '   --select * from COBERTURAXPROCEDIMENTO where Codigo_Tabela = ' +
        '1 order by 2'
      '   '
      
        '   --INSERT INTO #CARENCIA SELECT IDENTITY(1) INDICE, CODIGO_PRO' +
        'CEDIMENTO,DIAS FROM TB COBERTURAXPROCEDIMENTO WHERE CODIGO_TABEL' +
        'A = @TABELA_PLANO AND CODIGO_PROCEDIMENTO = @CD_SERVICO ORDER BY' +
        ' DIAS'
      
        '   SELECT IDENTITY(INT,1,1) INDICE, CODIGO_PROCEDIMENTO CD_SERVI' +
        'CO,DIAS CARENCIA, PERCENTUAL FATOR INTO #CARENCIA FROM COBERTURA' +
        'XPROCEDIMENTO WHERE CODIGO_TABELA = @TABELA_COBERTURA AND CODIGO' +
        '_PROCEDIMENTO = @CD_SERVICO ORDER BY DIAS'
      '   '
      '   '
      '   SET @INIC = 1'
      '   SET @FIMC = (SELECT MAX(INDICE) FROM #CARENCIA)'
      '   '
      '   WHILE @INIC <= @FIMC'
      '   BEGIN'
      '      SET @QTDIAS = NULL'
      '      SET @FATOR = NULL'
      
        '      SELECT @QTDIAS =  CARENCIA, @FATOR = FATOR FROM #CARENCIA ' +
        'WHERE INDICE = @INIC'
      
        '      SET @DTREFERENCIA = CONVERT(CHAR(10),DATEADD(DAY,@QTDIAS *' +
        ' -1,GETDATE()),103)'
      '      '
      
        '      EXEC PR_ACHA_VALORES_ORC @CD_USUARIO,@DG_USUARIO,@CD_SERVI' +
        'CO,@DTBASE,@VALOR_SERVICO OUTPUT,@VALOR_BRUTO,@VALOR_DENTISTA,@V' +
        'ALOR_PROTETICO,@DTREFERENCIA,'#39'N'#39
      '      '
      
        '      INSERT INTO #VALOR VALUES(@CD_SERVICO,@DS_SERVICO,@QTDIAS,' +
        '@FATOR,@VALOR_SERVICO)'
      '      SET @INIC = @INIC + 1'
      '   END'
      '   '
      '   SET @INI = @INI + 1'
      '   DROP TABLE #CARENCIA'
      'END'
      ''
      'SELECT * FROM #VALOR --where cd_servico = 4241'
      '-- delete #valor'
      'GO')
    Left = 1056
    Top = 696
  end
  object SpRelClinicaManutencaoPJ: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter Procedure SpRelClinicaManutencaoPJ --0,0,'#39'01/12/2003'#39','#39'31/' +
        '12/2003'#39
      ''
      '@CdClinica  int'#9#9','
      '@CdDentista int'#9#9','
      '@DtIni '#9'    char(10)'#9','
      '@DtFim '#9'    char(10)'
      ''
      ''
      'as'
      ''
      ''
      '--set @CdClinica   = null'
      '--set @cdDentista  = null'
      '--set @DtIni       = '#39'01/12/2003'#39
      '--set @DtFim       = '#39'31/12/2003'#39
      ''
      'if @CdClinica = 0'
      '  set @CdClinica = null'
      ''
      'if @CdDentista = 0'
      '  set @CdDentista = null'
      ''
      'declare @PercentIR       decimal(5,2) ,'
      '        @PercentTributos decimal(5,2) ,'
      #9'@VrBaseTributos  decimal(10,2),'
      #9'@VrBaseIR        decimal(10,2)'
      ' '
      ''
      'set dateformat dmy'
      ''
      'select '
      #9'c.descricao as NmClinica'#9'     ,'
      #9'c.codigo    as CodClinica'#9'     ,'
      #9'd.codigo    as CodDentista'#9'     ,'
      #9'd.nome'#9'    as NmDentista'#9'     ,'
      
        #9'case d.lg_recebimento_deposito when 1 then '#39'D'#39' else '#39#39' end lg_r' +
        'ecebimento_deposito,'
      #9'Sum(o.Total_Dentista) as totDentista ,'
      
        #9'Sum(round(o.Total_Dentista - (o.total_dentista * isnull(d.desco' +
        'nto,0) / 100.0),2)) as totDentistaDesc,'
      
        '        Sum(round((o.total_dentista * isnull(d.desconto,0) / 100' +
        '.0),2)) as Desconto,'
      #9'cast(0 as numeric(10,2)) as TotClinica,'
      #9'cast(0 as numeric(10,2)) as VrIr      ,'
      #9'cast(0 as numeric(10,2)) as VrTributos,'
      #9'c.optante_simples'
      ''
      'into #temp '
      ''
      'from Receber r'
      ''
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join Usuario   u on u.Codigo_Completo  = r.Codigo_Usuario'
      'left join dentista  d on o.Dentista         = d.codigo'
      'left join clinicas  c on c.codigo           = d.codigo_clinica'
      ''
      'Where '
      '          o.Tipo           = 5'
      '      and r.dt_pagDentista between @DtIni and @DtFim'
      '      and r.Tipo_Documento = 5'
      '      and c.TipoPessoa     = '#39'PJ'#39
      '      and (c.codigo        = @cdClinica  or @cdClinica  is null)'
      
        '      and (d.codigo         = @CdDentista or @CdDentista is null' +
        ')'
      ''
      'group by'
      #9'c.descricao ,'
      #9'c.codigo    ,'
      #9'd.codigo    ,'
      #9'd.nome'#9'    ,'
      #9'd.lg_recebimento_deposito,'
      #9'c.optante_simples'
      ''
      'order by'
      #9'c.descricao ,'
      #9'd.nome'#9'    '
      ''
      
        'update #temp set TotClinica = (select sum(totDentistaDesc) from ' +
        '#temp t1 where #temp.CodClinica = t1.CodClinica)'
      ''
      ''
      'select'
      #9'@PercentIR       = Percent_IR'#9#9','
      '        @PercentTributos = Percent_Tributos'#9','
      #9'@VrBaseTributos  = VrBaseCobr_Tributos'#9','
      #9'@VrBaseIR        = VrBaseCobr_Ir'
      ''
      'from preferencia'
      ''
      ''
      ''
      
        'update #temp set VrIr = Round(totDentistaDesc * (@PercentIR / 10' +
        '0),2)'
      'where TotClinica >= @VrBaseIR'
      ''
      
        'update #temp set VrTributos = Round(totDentistaDesc * (@PercentT' +
        'ributos / 100),2)'
      'where TotClinica >= @VrBaseTributos and optante_simples = 0'
      ''
      ''
      'select *'#9#9#9#9#9','#9
      '        @PercentIR '#9' as PercentIr'#9#9','
      '        @PercentTributos as Percent_Tributos'#9','
      #9'@VrBaseTributos  as VrBaseCobr_Tributos'#9','
      #9'@VrBaseIR        as VrBaseCobr_Ir'
      ''
      '  from #temp'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1090
    Top = 345
  end
  object SpRelClinicaManutencaoAu: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter Procedure SpRelClinicaManutencaoAu --NULL,null,'#39'01/12/2003' +
        #39','#39'31/12/2003'#39
      ''
      '-- Autonomo'
      ''
      '@CdClinica  int'#9#9','
      '@CdDentista int'#9#9','
      '@DtIni '#9'    char(10)'#9','
      '@DtFim '#9'    char(10)'
      ''
      ''
      'as'
      ''
      ''
      '--set @CdClinica   = null'
      '--set @cdDentista  = null'
      '--set @DtIni       = '#39'01/12/2003'#39
      '--set @DtFim       = '#39'31/12/2003'#39
      ''
      'set dateformat dmy'
      ''
      'if @CdClinica = 0'
      '  set @CdClinica = null'
      ''
      'if @CdDentista = 0'
      '  set @CdDentista = null'
      ''
      'declare @PercentInss     decimal(5,2) '
      ''
      'select'#9'@PercentInss = isnull(Percent_Inss,0) from preferencia'
      ''
      'select '
      #9'c.descricao as NmClinica'#9'     ,'
      #9'c.codigo    as CodClinica'#9'     ,'
      #9'd.codigo    as CodDentista'#9'     ,'
      #9'd.nome'#9'    as NmDentista'#9'     ,'
      #9'Sum(o.Total_Dentista) as totDentista ,'
      
        #9'Sum(round(o.Total_Dentista - (o.total_dentista * isnull(d.desco' +
        'nto,0) / 100.0),2)) as totDentistaDesc,'
      
        '        Sum(round((o.total_dentista * isnull(d.desconto,0) / 100' +
        '.0),2)) as Desconto,'
      
        '        round(Sum(round(o.Total_Dentista - (o.total_dentista * i' +
        'snull(d.desconto,0) / 100.0),2)) * @PercentInss /100,2) as VrIns' +
        's ,'
      
        '        Sum(round(o.Total_Dentista - (o.total_dentista * isnull(' +
        'd.desconto,0) / 100.0),2)) -'
      
        '        round(Sum(round(o.Total_Dentista - (o.total_dentista * i' +
        'snull(d.desconto,0) / 100.0),2)) * @PercentInss /100,2) as VrLiq' +
        'uido,'
      '        @PercentInss as PercentInss'
      #9
      '  '
      ''
      ''
      'from Receber r'
      ''
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join Usuario   u on u.Codigo_Completo  = r.Codigo_Usuario'
      'left join dentista  d on o.Dentista         = d.codigo'
      'left join clinicas  c on c.codigo           = d.codigo_clinica'
      ''
      'Where '
      '          o.Tipo           = 5'
      '      and r.dt_pagDentista between @DtIni and @DtFim'
      '      and r.Tipo_Documento = 5'
      '      and c.TipoPessoa     = '#39'AU'#39
      '      and (c.codigo        = @cdClinica  or @cdClinica  is null)'
      
        '      and (d.codigo         = @CdDentista or @CdDentista is null' +
        ')'
      ''
      'group by'
      #9'c.descricao ,'
      #9'c.codigo    ,'
      #9'd.codigo    ,'
      #9'd.nome'#9'    '
      ''
      'order by'
      #9'c.descricao ,'
      #9'd.nome'#9'    '
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1090
    Top = 281
  end
  object Receber_log: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TABLE [dbo].[Receber_log]('
      #9'[Numero_Titulo] [int] NOT NULL,'
      #9'[Desdobramento] [varchar](2) NOT NULL,'
      #9'[Tipo_Documento] [smallint] NULL,'
      #9'[Codigo_Contratante] [int] NULL,'
      #9'[Codigo_Usuario] [int] NULL,'
      #9'[Data_Emissao] [datetime] NULL,'
      #9'[Data_Vencimento] [datetime] NULL,'
      #9'[Valor] [money] NULL,'
      #9'[Saldo] [money] NULL,'
      #9'[Tipo_Cobranca] [smallint] NULL,'
      #9'[Numero_Banco] [varchar](11) NULL,'
      #9'[Data_Pagamento] [datetime] NULL,'
      #9'[Valor_Pago] [money] NULL,'
      #9'[Desconto] [money] NULL,'
      #9'[Juros] [money] NULL,'
      #9'[Operador] [smallint] NULL,'
      #9'[Orcamento] [int] NULL,'
      #9'[Parcela] [smallint] NULL,'
      #9'[Observacoes] [varchar](100) NULL,'
      #9'[Status_Orcamento] [smallint] NULL,'
      #9'[Nro_cheque] [varchar](20) NULL,'
      #9'[Banco_Cheque] [varchar](3) NULL,'
      #9'[Nro_ContaCheque] [varchar](20) NULL,'
      #9'[Agencia_Cheque] [varchar](10) NULL,'
      #9'[Status_Ocorrencia] [smallint] NULL,'
      #9'[Deposito] [bit] NOT NULL,'
      #9'[Tipo_Pagamento] [int] NULL,'
      #9'[status_cheque] [varchar](20) NULL,'
      #9'[Pago] [bit] NULL,'
      #9'[dtinclusao] [datetime] NULL,'
      #9'[dt_pagDentista] [datetime] NULL,'
      #9'[cd_usu_alteracao] [int] NULL,'
      #9'DataHora datetime not null'
      ' CONSTRAINT [PK_Receber_log] PRIMARY KEY NONCLUSTERED '
      '('
      #9'[Numero_Titulo] ASC,'
      #9'[Desdobramento] ASC,'
      #9'DataHora ASC'
      ')'
      ')'
      ''
      ''
      '')
    Left = 1152
    Top = 461
  end
  object TR_U_LOG_RECEBER: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter TRIGGER TR_U_LOG_RECEBER ON RECEBER'
      ''
      'FOR UPDATE'
      ''
      'AS'
      
        'IF not update (updated) AND (select vl_parametro  from parametro' +
        ' where cd_parametro = '#39'GLASI'#39') = '#39'S'#39
      ''
      
        '   update  receber set updated = GETDATE() from inserted i where' +
        ' i.Numero_Titulo = receber.numero_titulo'
      
        '                                                             and' +
        ' i.Desdobramento = receber.desdobramento'
      '   '
      ''
      
        'IF (SELECT VL_PARAMETRO FROM PARAMETRO WHERE CD_PARAMETRO = '#39'LGC' +
        'ONT'#39') = '#39'N'#39
      '  RETURN'
      ''
      'IF UPDATE(TIPO_DOCUMENTO) OR'
      '   UPDATE(DATA_EMISSAO) OR'
      '   UPDATE(DATA_VENCIMENTO) OR'
      '   UPDATE(VALOR) OR'
      '   UPDATE(SALDO) OR'
      '   UPDATE(TIPO_COBRANCA) OR'
      '   UPDATE(DATA_PAGAMENTO) OR'
      '   UPDATE(VALOR_PAGO) OR '
      '   UPDATE(DESCONTO) OR'
      '   UPDATE(JUROS) OR'
      '   UPDATE(TIPO_PAGAMENTO) '
      ''
      'BEGIN'
      ''
      
        '   IF NOT EXISTS(SELECT TOP 1 L.Numero_Titulo FROM RECEBER_LOG L' +
        ', INSERTED I WHERE L.Numero_Titulo = I.Numero_Titulo AND L.Desdo' +
        'bramento = I.Desdobramento)'
      ''
      '   INSERT INTO RECEBER_LOG '
      '    ('
      
        #9'Numero_Titulo   , Desdobramento    , Tipo_Documento    , Codigo' +
        '_Contratante, Codigo_Usuario,'
      
        #9'Data_Emissao    , Data_Vencimento  , Valor   '#9'       , Saldo '#9' ' +
        '          , Tipo_Cobranca,'
      
        #9'Numero_Banco    , Data_Pagamento   , Valor_Pago      , Desconto' +
        '          , Juros,'
      
        #9'Operador'#9'    , Orcamento'#9'       , Parcela         , Observacoes' +
        '       , Status_Orcamento,'
      
        #9'Nro_cheque      , Banco_Cheque     , Nro_ContaCheque , Agencia_' +
        'Cheque    , Status_Ocorrencia,'
      
        #9'Deposito        , Tipo_Pagamento   , status_cheque   , Pago    ' +
        '          , dtinclusao,'
      #9'dt_pagDentista  , cd_usu_alteracao , DataHora'
      #9')'
      ''
      #9'SELECT '
      #9'    '
      
        #9'Numero_Titulo   , Desdobramento    , Tipo_Documento  , Codigo_C' +
        'ontratante, Codigo_Usuario,'
      
        #9'Data_Emissao    , Data_Vencimento  , Valor   '#9'     , Saldo '#9'   ' +
        '      , Tipo_Cobranca,'
      
        #9'Numero_Banco    , Data_Pagamento   , Valor_Pago      , Desconto' +
        '          , Juros,'
      
        #9'Operador'#9'    , Orcamento'#9'       , Parcela         , Observacoes' +
        '       , Status_Orcamento,'
      
        #9'Nro_cheque      , Banco_Cheque     , Nro_ContaCheque , Agencia_' +
        'Cheque    , Status_Ocorrencia,'
      
        #9'Deposito        , Tipo_Pagamento   , status_cheque   , Pago    ' +
        '          , dtinclusao,'
      
        #9'dt_pagDentista  , cd_usu_alteracao , DATEADD(SECOND,-1,GETDATE(' +
        '))'
      ''
      #9'from DELETED'
      ''
      ''
      '   INSERT INTO RECEBER_LOG '
      '    ('
      
        #9'Numero_Titulo   , Desdobramento    , Tipo_Documento  , Codigo_C' +
        'ontratante, Codigo_Usuario,'
      
        #9'Data_Emissao    , Data_Vencimento  , Valor   '#9'     , Saldo '#9'   ' +
        '        , Tipo_Cobranca,'
      
        #9'Numero_Banco    , Data_Pagamento   , Valor_Pago      , Desconto' +
        '          , Juros,'
      
        #9'Operador'#9'    , Orcamento'#9'       , Parcela         , Observacoes' +
        '       , Status_Orcamento,'
      
        #9'Nro_cheque      , Banco_Cheque     , Nro_ContaCheque , Agencia_' +
        'Cheque    , Status_Ocorrencia,'
      
        #9'Deposito        , Tipo_Pagamento   , status_cheque   , Pago    ' +
        '          , dtinclusao,'
      #9'dt_pagDentista  , cd_usu_alteracao , DataHora'
      #9')'
      ''
      #9'SELECT '
      #9'    '
      
        #9'Numero_Titulo   , Desdobramento    , Tipo_Documento  , Codigo_C' +
        'ontratante, Codigo_Usuario,'
      
        #9'Data_Emissao    , Data_Vencimento  , Valor   '#9'     , Saldo '#9'   ' +
        '      , Tipo_Cobranca,'
      
        #9'Numero_Banco    , Data_Pagamento   , Valor_Pago      , Desconto' +
        '          , Juros,'
      
        #9'Operador'#9'    , Orcamento'#9'       , Parcela         , Observacoes' +
        '       , Status_Orcamento,'
      
        #9'Nro_cheque      , Banco_Cheque     , Nro_ContaCheque , Agencia_' +
        'Cheque    , Status_Ocorrencia,'
      
        #9'Deposito        , Tipo_Pagamento   , status_cheque   , Pago    ' +
        '          , dtinclusao,'
      #9'dt_pagDentista  , cd_usu_alteracao , GETDATE()'
      ''
      #9'from INSERTED'
      ''
      ''
      ''
      'END'
      ''
      ''
      ''
      ''
      '')
    Left = 1168
    Top = 447
  end
  object Tr_i_incluiMensalidade: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'ALTER  trigger Tr_i_incluiMensalidade on usuario'
      ''
      'for insert'
      ''
      'as'
      ''
      'set dateformat dmy'
      '--tb usuario'
      ''
      'declare @codigo      int     ,'
      '        @digito      int     ,'
      #9'@plano       Smallint,'
      '        @Grau_parent smallint,'
      '        @Valor       smallmoney,'
      #9'    @DtInclusao  datetime  ,'
      '        @perc_desc   smallmoney,'
      '        @VrBruto     smallmoney'
      ''
      'select '
      #9'@codigo      = u.codigo'#9#9','
      #9'@digito      = u.digito'#9#9','
      #9'@plano       = c.plano          ,'
      '        @grau_parent = u.grau_parentesco,'
      '        @valor       = pp.valor'#9#9','
      #9'@DtInclusao  = u.data_inclusao       ,'
      #9'@VrBruto     = pp.valor'
      'from'
      ''
      '     inserted    u,'
      '     contratante c,'
      '     preco_plano pp'
      ''
      'where'
      '          u.codigo              = c.codigo'
      '      and pp.codigo_plano       = c.plano'
      '      and u.grau_parentesco     = pp.codigo_grau_parentesco'
      ''
      
        '-- O desconto est'#225' n'#227'o no contratante titular e sim no contratan' +
        'te'
      ''
      
        'select @perc_desc = isnull(perc_desconto,0) from contratante whe' +
        're codigo = @codigo'
      ''
      'set @valor = @valor * (1 - (@perc_desc / 100.00))'
      ''
      'if @valor >= 0'
      'begin'
      '   declare @id_promocao as int = 0,      '
      #9'          @qtMeses int,'
      #9#9#9'  @PercentDesconto decimal(5,3)'
      ''
      ''
      
        '   select @id_promocao = id_promocao, @qtMeses = qt_meses, @Perc' +
        'entDesconto = percent_desconto from PromocaoPlano where cd_plano' +
        ' = @plano and (dt_fim_vigencia > convert(date,getdate()) or dt_f' +
        'im_vigencia is null)'
      ''
      
        '   if @id_promocao > 0 -- significa que tem promo'#231#227'o, ent'#227'o lan'#231 +
        'a dois registros na mensalidade_usuario o primeiro com o descont' +
        'o na quantidade de meses em promo'#231#227'o. e o Segundo com o valor no' +
        'rmal sem a promo'#231#227'o'
      '   begin'
      '      declare @IdAcrescimoInclusao varchar(12),'
      #9'          @valorDescPromo smallmoney'
      ''
      
        #9'  set @IdAcrescimoInclusao = (select vl_parametro from parametr' +
        'o where cd_parametro = '#39'IDAID'#39') -- esse '#233' o id da tabela acresci' +
        'mo_inclusao referente ao desconto promocional.'
      ''
      
        #9'  set @valorDescPromo = @valor -(@valor * (@PercentDesconto / 1' +
        '00))'
      ''
      
        #9'  insert into mensalidade_usuario values (@codigo,    @digito, ' +
        '                           @IdAcrescimoInclusao,'
      
        #9'                                          @DtInclusao,dateadd(m' +
        'onth,@qtMeses,@DtInclusao),@valorDescPromo     ,@VrBruto,getdate' +
        '())'
      
        #9#9'select @dtinclusao,dateadd(month,@qtMeses,@DtInclusao),@qtmese' +
        's'#9#9#9#9#9#9#9#9#9'  '
      
        #9'  insert into mensalidade_usuario values (@codigo    , @digito,' +
        '0       , dateadd(day,1,dateadd(month,@qtMeses,@DtInclusao)) ,'
      
        #9'                                         '#39'01/01/2079'#39',@valor  ,' +
        '@VrBruto, getdate())'
      ''
      '   end'
      '   else'
      
        '      insert into mensalidade_usuario values (@codigo, @digito,0' +
        ',@DtInclusao,'#39'01/01/2079'#39',@valor,@VrBruto,getdate())'
      '   '
      '   '
      '   if @@rowcount = 0 '
      '   begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio, problema ao' +
        ' tentar calcular a mensalidade!'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else'
      'begin'
      
        '   raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio valor inv'#225'lido ' +
        #39', 16,1)'
      '   rollback tran'
      'end'
      ''
      ''
      '-- coloquei nessa trigger porque eh so de inser'#231#227'o'
      
        'if exists (select * from plano p, contratante c , inserted i whe' +
        're i.contratante_titular = c.codigo and c.plano = p.codigo and p' +
        '.ativo = 0)'
      'begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel incluir o usu'#225'rio, o plano do ' +
        'contratante est'#225' inativo!'#39',16,1)'
      '      rollback tran'
      'end'
      ''
      
        'UPDATE USUARIO SET updated = GETDATE() FROM inserted WHERE USUAR' +
        'IO.Codigo = inserted.Codigo AND Usuario.Digito = inserted.Digito'
      '/*'
      
        'if exists(select * from inserted i, contratante c where i.codigo' +
        ' = c.codigo and c.PagtoContratoAVista = 1 '
      
        'and (substring(convert(char(10),c.Inclusao,103),4,7) <> substrin' +
        'g(convert(char(10),i.dt_venda,103),4,7) or datediff(day,c.inclus' +
        'ao,i.dt_venda) < 365'
      '))'
      ''
      ''
      ''
      'begin'
      
        '   raiserror('#39'Somente poder'#225' ser incluido novo usu'#225'rio depois de' +
        ' um ano do in'#237'cio do contrato'#39',16,1)   '
      '   rollback tran'
      'end'
      '*/'
      ''
      
        'if exists(select * from inserted i, contratante c where i.codigo' +
        ' = c.codigo and c.PagtoContratoAVista = 1 '
      ''
      
        'and (substring(convert(char(10),c.Inclusao,103),4,7) <> substrin' +
        'g(convert(char(10),i.dt_venda,103),4,7) AND datediff(day,c.inclu' +
        'sao,i.dt_venda) < 365))'
      ''
      ''
      'begin'
      
        '   raiserror('#39'Somente poder'#225' ser incluido novo usu'#225'rio depois de' +
        ' um ano do in'#237'cio do contrato'#39',16,1)   '
      '   rollback tran'
      'end'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1280
    Top = 399
  end
  object TR_U_ESPECIALIDADE: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'CREATE TRIGGER TR_U_ESPECIALIDADE ON especialidade'
      'FOR UPDATE'
      ''
      'AS'
      ''
      '  if not update(updated)'
      
        '     UPDATE especialidade SET updated = getdate() FROM INSERTED ' +
        'I WHERE I.cd_especialidade = ESPECIALIDADE.cd_especialidade'
      '')
    Left = 544
    Top = 560
  end
  object sp_ajustaVenctoValorPrestacoes: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter procedure sp_ajustaVenctoValorPrestacoes --sp_ajustaVencto' +
        'ValorPrestacoes 180894,2,'#39'21/07/2014'#39',100,2'
      '@orcamento int,'
      '@parcelaIni int,'
      '@dtIniParcela char(10),'
      '@vrAvista money,'
      '@cdTipoPagoPrimeiraParc int'
      ''
      'as'
      ''
      'begin tran'
      'set dateformat dmy'
      'declare @total money'
      'declare @vrParcela money'
      'declare @NumeroParcela int'
      ''
      '--set @vrAvista = 200'
      '--set @orcamento = 180894'
      '--set @parcelaIni = 2'
      '--set @dtIniParcela = '#39'20/07/2014'#39
      ''
      ''
      
        'select @total = total_desconto, @NumeroParcela = numero_parcelas' +
        '  from orcamento where numero = @orcamento'
      ''
      'set @total = @total - @vrAvista'
      'set @numeroParcela = (@numeroParcela - @parcelaIni) + 1'
      'set @vrParcela = @total / @numeroParcela'
      ''
      
        'update prestacoes set valor = @vrParcela, vencimento = dateadd(m' +
        'onth,parcela - @parcelaIni, @dtIniParcela) where orcamento = @or' +
        'camento and parcela >= @parcelaIni'
      'if @@error > 0'
      'begin'
      '  rollback tran'
      '  return'
      'end '
      'if @vrAvista > 0 '
      
        '   update prestacoes set valor = @vrAvista, Tipo_Pagamento = @cd' +
        'TipoPagoPrimeiraParc where orcamento = @orcamento and parcela = ' +
        '1'
      ''
      'if @@error > 0'
      'begin'
      '  rollback tran'
      '  return'
      'end '
      ''
      
        'update receber set  valor = p.valor, saldo = p.valor, Tipo_Pagam' +
        'ento = p.tipo_pagamento '
      'from Prestacoes p'
      'where receber.Orcamento = p.Orcamento '
      
        '  and receber.Numero_Titulo = cast(p.orcamento as varchar(10)) +' +
        ' replicate('#39'0'#39',2 - len(p.parcela)) + cast(p.parcela as varchar(2' +
        '))'
      '  and receber.Orcamento = @orcamento'
      ' '
      ''
      
        '--select cast(orcamento as varchar(10)) + replicate('#39'0'#39',2 - len(' +
        'parcela)) + cast(parcela as varchar(2)),* from Prestacoes where ' +
        'orcamento = 180894'
      '--select * from receber where Numero_Titulo = 18089401'
      ''
      'commit'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1208
    Top = 607
  end
  object ADOQueryAtuEndDentista: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'set rowcount 1'
      'declare @i int'
      'set @i = 1'
      
        'while (select count(*) from endereco_x_dentista where idEndereco' +
        ' is null) > 0'
      'begin'
      
        ' update endereco_x_dentista set idEndereco = @i where idEndereco' +
        ' is null'
      ' set @i = @i + 1'
      'end'
      ''
      'set rowcount 0'
      ''
      ''
      'go'
      ''
      
        'CREATE UNIQUE NONCLUSTERED INDEX IX_IdEndereco ON dbo.endereco_x' +
        '_dentista'
      #9'('
      #9'cd_dentista'
      
        #9') WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALL' +
        'OW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]'
      'GO'
      
        'ALTER TABLE dbo.endereco_x_dentista SET (LOCK_ESCALATION = TABLE' +
        ')'
      'GO'
      ''
      ''
      ''
      ''
      'CREATE TRIGGER TR_I_DENTISTAXENDERECO ON ENDERECO_X_DENTISTA'
      ''
      'FOR insert'
      ''
      'AS'
      'declare @maxId int'
      
        'set @maxId = (select max(idEndereco) from endereco_x_dentista) +' +
        ' 1'
      ''
      
        'update endereco_x_dentista set idEndereco = @maxId from inserted' +
        ' i where endereco_x_dentista.cd_dentista = i.cd_dentista and end' +
        'ereco_x_dentista.ds_endereco = i.ds_endereco'
      ' '
      '')
    Left = 1200
    Top = 291
  end
  object sp_baixaTitulosOrcamento: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter procedure sp_baixaTitulosOrcamento'
      '@nrOrcamento int,'
      '@cdLogin  int,'
      
        '@parcela int -- se vier zero s'#227'o todas as parcelas, caso contrar' +
        'io baixa apenas a parcela'
      ''
      'as'
      ''
      'declare @parcelaAux as  int'
      'declare @tipoCobranca as int'
      'declare @vencto as date'
      'BEGIN TRAN'
      'if @parcela > 0'
      'begin'
      ' raiserror('#39'Rotina para baixar parcela nao implementada'#39',16,1)'
      ' rollback tran'
      ' return'
      'end'
      'else '
      'begin'
      ''
      
        '   if exists(select * from orcamento where numero = @nrOrcamento' +
        ' and orcamento.Autorizado = 0)'
      '   begin'
      
        '      raiserror('#39'Opera'#231#227'o cancelada. orcamento ainda nao autoriz' +
        'ado'#39',16,1)'
      #9'  rollback tran'
      #9'  return'
      '   end'
      
        '   if not exists(select * from receber where orcamento = @nrOrca' +
        'mento and saldo > 0 )'
      '   begin'
      
        '      raiserror('#39'Nao existe parcelas no contas a receber  para e' +
        'ste orcamento ou todas as parcelas ja foram baixadas '#39',16,1)'
      #9'  rollback tran'
      #9'  return'
      '   end'
      
        '   if exists(select * from  Prestacoes p, receber r where r.Orca' +
        'mento = @nrOrcamento and p.Orcamento = @nrOrcamento and r.Desdob' +
        'ramento = '#39'O'#39' and r.Numero_Titulo = '
      
        '   cast(p.orcamento as varchar(10)) + replicate('#39'0'#39',2 - len(p.pa' +
        'rcela)) + cast(p.parcela as varchar(2)) and p.Valor <> r.Valor)'
      '   begin'
      
        '      raiserror('#39'Opera'#231#227'o cancelada. O valor das prestacoes nao ' +
        'esta igual ao valor do contas a receber'#39',16,1)'
      #9'  rollback tran'
      #9'  return'
      '   end'
      ''
      
        '   if exists(select * from  Prestacoes p where p.Orcamento = @nr' +
        'Orcamento and (p.Tipo_Pagamento is null or p.tipoCobranca is nul' +
        'l))'
      '   begin'
      
        '      raiserror('#39'Opera'#231#227'o cancelada. Informe o tipo de pagamento' +
        ' e o tipo de cobran'#231'a em todas as parcelas'#39',16,1)'
      #9'  rollback tran'
      #9'  return'
      '   end'
      
        '   if exists(select * from Prestacoes p where p.Orcamento = @nrO' +
        'rcamento and  convert(date,p.Vencimento,103) < convert(date,getd' +
        'ate(),103))'
      '   begin'
      
        '      raiserror('#39'Data da baixa nao pode ser menor que a data atu' +
        'al'#39',16,1)'
      #9'  rollback tran'
      #9'  return      '
      '   end'
      
        '   if exists(select * from Prestacoes p, tipos_pagamentos t wher' +
        'e t.Id_TipoPgto = p.Tipo_Pagamento '
      
        '                                                              an' +
        'd p.Orcamento = @nrOrcamento '
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  and  convert(date,p.Vencimento,103) > convert(d' +
        'ate,getdate(),103)'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  and t.permite_data_futura = '#39'N'#39')'
      '   begin'
      
        '      raiserror('#39'Existe Tipos de pagamento nas parcelas que nao ' +
        'permitem  baixa com  data futura, verifique'#39',16,1)'
      #9'  rollback tran'
      #9'  return      '
      '   end'
      
        '   DECLARE PARCELAS cursor for select parcela, tipoCobranca, ven' +
        'cimento from prestacoes where orcamento = @nrOrcamento'
      '   open parcelas'
      
        '   fetch next from parcelas into @parcelaAux,@tipoCobranca,@venc' +
        'to'
      '   while @@FETCH_STATUS = 0'
      '   begin'
      '      update receber  set receber.saldo = 0,'
      #9'                      receber.Tipo_Cobranca = @tipoCobranca,'
      #9#9#9#9#9#9'  receber.data_pagamento = @vencto,'
      #9#9#9#9#9#9'  receber.juros = 0,'
      #9#9#9#9#9#9'  receber.Valor_Pago = receber.Valor,'
      #9#9#9#9#9#9'  receber.operador = @cdLogin,'
      #9#9#9#9#9#9'  receber.dt_pagDentista = @vencto'
      ''
      #9'                  '
      #9'  where receber.Desdobramento = '#39'O'#39
      
        #9'    and receber.Numero_Titulo = cast(@nrOrcamento as varchar(10' +
        ')) + replicate('#39'0'#39',2 - len(@parcelaAux)) + cast(@parcelaAux as v' +
        'archar(2))'
      #9'    and receber.Orcamento  = @nrOrcamento'
      #9'    and receber.Saldo > 0'
      
        '      fetch next from parcelas into @parcelaAux,@tipoCobranca,@v' +
        'encto'
      '   end'
      '   close parcelas'
      '   deallocate parcelas'
      ''
      'end'
      'COMMIT'
      ''
      '')
    Left = 1200
    Top = 227
  end
  object Tr_i_u_validacoesOdonto: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter trigger Tr_i_u_validacoesOdonto on itens_orcamento'
      ''
      'for insert, update'
      ''
      'as'
      ''
      '-- Verifica se o servi'#231'o inclu'#237'do ou atualizado est'#225' exclu'#237'do'
      
        'if(select count(servico) from deleted) = 0 -- se for zero ent'#227'o ' +
        't'#225' inserindo se for diferente de zero '#233' update'
      'begin'
      '   '
      
        '   if exists(select orcamento from inserted i,  servicos s where' +
        ' s.codigo = i.servico and s.dt_exclusao is not null)'
      '   begin'
      
        '      if exists(select * from orcamento o ,inserted i where o.Nu' +
        'mero = i.Orcamento and o.tipo = 5) and (select vl_parametro from' +
        ' parametro where cd_parametro ='#39'PISOM'#39') = '#39'S'#39
      
        #9'     print '#39'quando for orcamento de manutencao e o parametro PI' +
        'SOM deixa incluir o servico no orcamento, esse parametro eh alte' +
        'rado na rotina de geracao de faturamento de orcamento'#39';'
      #9'  else'
      #9'  begin'
      
        '         raiserror('#39'TRVALIDADTEXSERV-Servi'#231'o n'#227'o pode ser utiliz' +
        'ado o mesmo j'#225' foi exclu'#237'do !'#39',16,1)'
      '         rollback'
      '         return'
      #9#9'end'
      '   end'
      'end'
      'else'
      'begin -- update'
      
        '   if exists(select i.orcamento from deleted d,inserted i,  serv' +
        'icos s '
      
        '              where d.Orcamento = i.orcamento and d.Incremento =' +
        ' i.incremento and s.codigo = i.servico and '
      
        '                    s.dt_exclusao is not null and d.servico <> i' +
        '.servico)'
      '   begin'
      
        '      raiserror('#39'TRVALIDADTEXSERV-Servi'#231'o n'#227'o pode ser utilizado' +
        ' o mesmo j'#225' foi exclu'#237'do !'#39',16,1)'
      '      rollback'
      '      return'
      '   end'
      'end'
      ''
      ''
      
        'if (select vl_parametro from parametro where cd_parametro = '#39'VAL' +
        'DEN'#39') = '#39'S'#39
      ' '
      'begin'
      
        '    -- verifica se a qtde do servico por or'#231'amento foi ultrapass' +
        'ada '
      
        '    -- somente verifica se qt_orcamento for maior que zero, zero' +
        ' sig. que nao tem limite'
      
        '   if exists(select qt_orcamento from servicos s, inserted i whe' +
        're i.servico = s.codigo and qt_orcamento > 0)'
      ''
      
        '      if (select sum(it.quantidade) from itens_orcamento it, ins' +
        'erted i'
      
        '          where i.orcamento = it.orcamento and i.servico = it.se' +
        'rvico) -'
      '         (select qt_orcamento from servicos s, inserted i'
      '          where i.servico = s.codigo) > 0'
      '      begin'
      
        '        raiserror('#39'Quantidade m'#225'xima de servi'#231'o por or'#231'amento ul' +
        'trapassada, d'#250'vida verifique o cadastro do servi'#231'o !'#39',16,1)'
      '        rollback'
      '      end     '
      'end  '
      ''
      
        'if exists(select * from ServIncompativeisOdonto sio, inserted i ' +
        'where (i.servico = sio.cd_servico1 or i.servico = sio.cd_servico' +
        '2))'
      'begin'
      '        '
      
        '    select identity(int,1,1) seq, i.orcamento, sio.* into #temp ' +
        'from ServIncompativeisOdonto sio, inserted i where (i.servico = ' +
        'sio.cd_servico1 or i.servico = sio.cd_servico2)'
      ''
      #9'declare @ini int'
      #9'declare @fim int'
      #9'set @ini = 1'
      #9'set @fim = (select max(seq) from #temp)'
      
        #9'while @ini <= @fim -- faz o loop pq pode ter mais de uma regra ' +
        'para um determinado servi'#231'o'
      #9'begin'
      
        '        declare @QtServicoNoOrc int -- para pegar a qtde de serv' +
        'i'#231'os do servi'#231'o(cd_servico1)'
      
        '   '#9'    declare @QtmaximaServ1 int -- para pegar a qtde maxima d' +
        'o servico(cd_servico1), se tiver atingido a qtde maxima e contiv' +
        'er o servi'#231'o(cd_servico1) n'#227'o deixa gravar'
      ''
      
        '   '#9'    set @QtServicoNoOrc = (select isnull(count(*),0) from it' +
        'ens_orcamento ior, #temp t where ior.servico = t.cd_servico1 and' +
        ' ior.orcamento = t.orcamento and t.seq = @ini)'
      ''
      
        '   '#9'    set @QtmaximaServ1 = (select qt_servico1 from #temp wher' +
        'e seq = @ini)'
      ''
      '   '#9'    if @QtServicoNoOrc >= @QtmaximaServ1'
      '   '#9'    begin'
      #9#9'    declare @aux varchar(150)'
      
        '      '#9#9'if exists(select * from itens_orcamento i , #temp t wher' +
        'e t.seq = @ini and t.cd_servico2 = i.servico and t.orcamento = i' +
        '.orcamento and t.face = '#39#39')'
      #9'        begin'
      
        '         '#9'  select * from itens_orcamento i , #temp t where t.se' +
        'q = @ini and t.cd_servico2 = i.servico and t.orcamento = i.orcam' +
        'ento and t.face = '#39#39'   '
      #9#9#9'   RETURN'
      
        '         '#9'   set @aux = '#39'Opera'#231#227'o cancelada, quando existir '#39' + ' +
        'cast(@QtmaximaServ1 as varchar(8)) + '#39' lan'#231'amentos do servi'#231'o '#39' ' +
        '+ (select cast(cd_servico1 as varchar(8)) from #temp where seq =' +
        ' @ini)'
      
        '         '#9'   set @aux = @aux + '#39' n'#227'o pode conter o servi'#231'o '#39' +  ' +
        '(select cast(cd_servico2 as varchar(8)) from #temp where seq = @' +
        'ini)'
      '         '#9'   raiserror(@aux,16,1)'
      '                   rollback tran'
      #9'           return'
      '      '#9#9'end'
      #9#9#9'else'
      
        '      '#9#9'if exists(select * from itens_orcamento i , #temp t wher' +
        'e t.seq = @ini and t.cd_servico2 = i.servico and t.orcamento = i' +
        '.orcamento and t.face <> '#39#39')'
      #9'        begin'
      #9#9#9'   '
      '         '#9'   declare  @face varchar(4)'
      
        #9#9#9'   SET @face = (select  t.face  from itens_orcamento i , #tem' +
        'p t where t.seq = @ini and t.cd_servico2 = i.servico and t.orcam' +
        'ento = i.orcamento and t.face <> '#39#39')'
      #9#9#9'   declare @ini1 tinyint'
      #9#9#9'   declare @Fim1 tinyint'
      #9#9#9'   set @Fim1 = len(@face)'
      #9#9#9'   SET @ini1 = 1'
      ''
      #9#9#9'   while @ini1 <= @fim1'
      #9#9#9'   begin'
      #9#9#9'      '
      
        #9#9#9'      if exists(select * from itens_orcamento i , #temp t whe' +
        're t.seq = @ini and t.cd_servico2 = i.servico and t.orcamento = ' +
        'i.orcamento and i.DenteFace like '#39'%'#39' +  substring(@face,1,@ini1)' +
        ' + '#39'%'#39' ) '
      #9#9#9#9'  begin'
      
        '         '#9#9'     set @aux = '#39'.Opera'#231#227'o cancelada, quando existir ' +
        #39' + cast(@QtmaximaServ1 as varchar(8)) + '#39' lan'#231'amentos do servi'#231 +
        'o '#39' + (select cast(cd_servico1 as varchar(8)) from #temp where s' +
        'eq = @ini)'
      
        '         '#9#9#9' set @aux = @aux + '#39' n'#227'o pode conter o servi'#231'o '#39' +  ' +
        '(select cast(cd_servico2 as varchar(8)) from #temp where seq = @' +
        'ini) + '#39' com alguma das faces '#39' + @face'
      '         '#9#9#9' raiserror(@aux,16,1)'
      '                     rollback tran'
      #9#9#9#9'     return'
      '     '#9#9#9'  end'
      #9#9#9'   end'
      ''
      '      '#9#9'end'
      '   '#9'     end'
      '     '
      #9'   set @ini = @ini + 1'
      #9'end   '
      'end'
      ''
      ''
      
        'IF not update (updated) AND (select vl_parametro  from parametro' +
        ' where cd_parametro = '#39'GLASI'#39') = '#39'S'#39
      ''
      
        '   update itens_orcamento set updated = GETDATE() from inserted ' +
        'i '
      '   where'
      '        itens_orcamento.Orcamento = i.Orcamento'
      '        and itens_orcamento.Incremento = i.Incremento'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1200
    Top = 163
  end
  object tr_d_itens_orcamento: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create trigger tr_d_itens_orcamento on itens_orcamento'
      'for delete'
      ''
      'as'
      ''
      
        'if exists(select * from Itens_PagDentista a, deleted b where a.O' +
        'rcamento = b.Orcamento and a.Incremento = b.Incremento and a.Ser' +
        'vico = b.servico and MesAno <> '#39#39')'
      'begin'
      
        '  raiserror('#39'Servico nao pode ser excluido, ja foi efetuado paga' +
        'mento ao dentista'#39',16,1)'
      '  return'
      'end'
      'else'
      'begin'
      
        '   delete Itens_PagDentista from deleted where  Itens_PagDentist' +
        'a.Orcamento = deleted.Orcamento and Itens_PagDentista.Incremento' +
        ' = deleted.Incremento and Itens_PagDentista.servico = deleted.se' +
        'rvico'
      'end'
      ''
      
        'if exists(select * from Itens_PagProtetico a, deleted b where a.' +
        'Orcamento = b.Orcamento and a.Incremento = b.Incremento and a.se' +
        'rvico = b.Servico and MesAno <> '#39#39')'
      'begin'
      
        '  raiserror('#39'Servico nao pode ser excluido, ja foi efetuado paga' +
        'mento ao protetico'#39',16,1)'
      '  return'
      'end'
      'else'
      'begin'
      '   '
      
        '   delete Itens_PagProtetico from deleted where  Itens_PagProtet' +
        'ico.Orcamento = deleted.Orcamento and Itens_PagProtetico.Increme' +
        'nto = deleted.Incremento and Itens_PagProtetico.Servico = delete' +
        'd.Servico'
      'end'
      '')
    Left = 1232
    Top = 499
  end
  object sp_relComissaoUsuario_: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter procedure sp_relComissaoUsuario --sp_relComissaoUsuario '#39'0' +
        '1/02/2014'#39','#39'31/03/2014'#39',2,2,0'
      '-- versao 2.0'
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
      '  u.data_inclusao,'
      '  m.valor valor_mensalidade, '
      '  v.codigo as codigo_vendedor,'
      '  v.nome as nome_vendedor,'
      '  vr.codigo as codigo_representante,'
      '  vr.nome as nome_representante,'
      '  r.numero_titulo,'
      '  r.data_pagamento,'
      '  r.data_vencimento,'
      
        '  case empresa when 0 then datediff(month,u.data_inclusao,r.Data' +
        '_Vencimento) + 1 -- se for pf sempre considera a parcela referen' +
        'te ao vencimento o mes subsequente'
      
        '  else -- se for pj e o dia de inclusao for <= 21 prevalece a re' +
        'gra de pf, caso contr'#225'rio considera a parecela referente ao venc' +
        'imento 2 meses subsequente'
      
        '  case when datepart(day,u.data_inclusao) <= 21 then  datediff(m' +
        'onth,u.data_inclusao,r.Data_Vencimento) + 1 else datediff(month,' +
        'u.data_inclusao,r.Data_Vencimento) end'
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
      '--  u.data_inclusao between '#39'01/01/2014'#39' and '#39'31/01/2014'#39' and'
      '  u.vendedor = v.codigo'
      '  and v.representante = vr.codigo'
      '  and m.cd_usuario =u.codigo'
      '  and dg_usuario = u.digito'
      '  and c.codigo = u.contratante_titular'
      '  AND R.DESDOBRAMENTO = '#39'M'#39
      '  and  u.contratante_titular = r.codigo_contratante'
      '  and tipo_documento = 1'
      '  and getdate() between m.dtinicio and m.dtfim'
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
        'ParcIni - 1,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepa' +
        'rt(year,dateadd(month,@nrParcIni - 1,u.Data_Inclusao)) as varcha' +
        'r(4)),103)'
      '  and'
      
        '  -- pega o ultimo dia do m'#234's corresopndente '#224' parcela final. Ex' +
        'emplo se a parcela final for 3 e a data de inclus'#227'o do benef fo ' +
        '10/02/2015 , pega 30/04/2015 pois '#233' nesse mes que vence a tercei' +
        'ra parcela'
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepart(yea' +
        'r,dateadd(month,@nrParcFim,u.Data_Inclusao)) as varchar(4)))'
      ''
      '  ) -- b'
      '  or'
      '  (-- c'
      '  empresa = 1 and'
      ' ( -- d'
      ' (datepart(day,u.data_inclusao) <= 21 '
      ''
      ''
      'and r.data_vencimento between'
      
        '  -- PJ : quando a data de inclusao foi menor ou igual a 21 prev' +
        'alece a regra de pessoa f'#237'sica'
      
        '  convert(datetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nr' +
        'ParcIni - 1,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepa' +
        'rt(year,dateadd(month,@nrParcIni - 1,u.Data_Inclusao)) as varcha' +
        'r(4)),103)'
      '  and'
      '  '
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepart(yea' +
        'r,dateadd(month,@nrParcFim,u.Data_Inclusao)) as varchar(4))))  '
      ''
      '  OR'
      ' (-- e'
      ' datepart(day,u.data_inclusao) > 21 '
      ''
      ''
      'and r.data_vencimento between'
      
        '  -- PJ : se a data for superior a 21 a mensalidade referente '#224' ' +
        'segunda parcela por exemplo '#233' a de dois meses seguinte, exemplo ' +
        'se o beneficiario entrou dia 22/01/2015 a segunda parcela ter'#225' v' +
        'encimento entre 01/03/2015 e 31/03/2015'
      
        '  convert(datetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nr' +
        'ParcIni ,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepart(' +
        'year,dateadd(month,@nrParcIni ,u.Data_Inclusao)) as varchar(4)),' +
        '103)'
      '  and'
      '  '
      
        '  dateadd(day,-1,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrPa' +
        'rcFim + 1,u.Data_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepart' +
        '(year,dateadd(month,@nrParcFim + 1,u.Data_Inclusao)) as varchar(' +
        '4)))'
      '  )-- e'
      '  '
      '  )--d'
      ''
      '  ) -- c'
      
        '   )-- a                                                   -- pr' +
        'imeiro dia correspondente '#224' parcela inicial . Idem acima.'
      
        '  and (u.data_exclusao is null or u.data_exclusao >=  convert(da' +
        'tetime,'#39'01/'#39' + cast(datepart(month,dateadd(month,@nrParcIni ,u.D' +
        'ata_Inclusao)) as varchar(2)) + '#39'/'#39' + cast(datepart(year,dateadd' +
        '(month,@nrParcIni - 1,u.Data_Inclusao)) as varchar(4)),103))'
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
      '')
    Left = 1216
    Top = 116
  end
  object sp_relComissaoUsuario: TQuery
    SQL.Strings = (
      
        'alter procedure sp_relComissaoUsuario --sp_relComissaoUsuario '#39'0' +
        '1/01/2015'#39','#39'31/01/2015'#39',2,11,0,'#39'A'#39
      '-- versao 3.0'
      '@dtPagIni char (10),'
      '@dtPagFim char (10),'
      '@nrParcIni int,'
      '@nrParcFim int,'
      '@cdRepresentante int,'
      '@tpPessoa char(1),'
      '@dtVendaIni char (10),'
      '@dtVendaFim char (10)'
      ''
      ''
      'as'
      ''
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
      '  u.dt_venda data_inclusao,'
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
      '   end parcela,'
      '   c.desc_boleto'
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
      ''
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
      '  and u.dt_venda between @dtVendaIni and @dtVendaFim'
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
      'declare @descBoleto as decimal(7,2)'
      'set @lgAchou = '#39'N'#39
      'set @dtAtual = convert(char(10),getdate(),103)'
      
        'declare cs cursor for select indice,codigo,digito,desc_boleto fr' +
        'om #temp'
      ''
      'open cs'
      'FETCH NEXT FROM cs INTO @indice,@codigo,@digito,@descBoleto'
      'WHILE @@FETCH_STATUS = 0'
      'begin'
      
        '   set @cdCompleto =  cast(@codigo as varchar(10)) + cast(@digit' +
        'o as varchar(2)) '
      '   '
      
        '   exec SpCalculaDesconto @codigo,@cdCompleto,@dtAtual, @vrDesc ' +
        'output, @vrDescUnit output,@vrDescUsu output '
      '   if @descBoleto is null'
      '      set @descBoleto = 0'
      '   if @vrDescUsu is not null'
      '   begin'
      
        '     update #temp set valor_mensalidade = (valor_mensalidade - @' +
        'vrDescUsu) - (valor_mensalidade - @vrDescUsu) * (@descBoleto / 1' +
        '00)   where indice = @indice'
      #9'  '
      #9'  set @lgAchou = '#39'S'#39
      #9'end'
      '   FETCH NEXT FROM cs INTO @indice,@codigo,@digito,@descBoleto'
      'end'
      'print @lgachou'
      'close cs'
      'deallocate cs'
      ''
      ''
      'select * from #temp'
      ''
      '')
    Left = 1192
    Top = 48
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
  object ADOQueryIncluiMOtivosCNAB: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'INSERT INTO MotivoRetornoCNAB values (02,rtrim(ltrim('#39'Entrada Co' +
        'nfirmada '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (03,rtrim(ltrim('#39'Entrada Re' +
        'jeitada '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (04,rtrim(ltrim('#39'Transfer'#234'n' +
        'cia de Carteira/Entrada '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (05,rtrim(ltrim('#39'Transfer'#234'n' +
        'cia de Carteira/Baixa '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (06,rtrim(ltrim('#39'Liquida'#231#227'o' +
        ' '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (07,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Recebimento da Instru'#231#227'o de Desconto '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (08,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Recebimento do Cancelamento do Desconto '#39')))'
      'INSERT INTO MotivoRetornoCNAB values (09,rtrim(ltrim('#39'Baixa '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (11,rtrim(ltrim('#39'T'#237'tulos em' +
        ' Carteira (Em Ser) '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (12,rtrim(ltrim('#39'Confirma'#231#227 +
        'o Recebimento Instru'#231#227'o de Abatimento '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (13,rtrim(ltrim('#39'Confirma'#231#227 +
        'o Recebimento Instru'#231#227'o de Cancelamento Abatimento '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (14,rtrim(ltrim('#39'Confirma'#231#227 +
        'o Recebimento Instru'#231#227'o Altera'#231#227'o de Vencimento '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (15,rtrim(ltrim('#39'Franco de ' +
        'Pagamento '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (17,rtrim(ltrim('#39'Liquida'#231#227'o' +
        ' Ap'#243's Baixa ou Liquida'#231#227'o T'#237'tulo N'#227'o Registrado '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (19,rtrim(ltrim('#39'Confirma'#231#227 +
        'o Recebimento Instru'#231#227'o de Protesto '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (20,rtrim(ltrim('#39'Confirma'#231#227 +
        'o Recebimento Instru'#231#227'o de Susta'#231#227'o/Cancelamento de Protesto '#39'))' +
        ')'
      
        'INSERT INTO MotivoRetornoCNAB values (23,rtrim(ltrim('#39'Remessa a ' +
        'Cart'#243'rio (Aponte em Cart'#243'rio) '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (24,rtrim(ltrim('#39'Retirada d' +
        'e Cart'#243'rio e Manuten'#231#227'o em Carteira '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (25,rtrim(ltrim('#39'Protestado' +
        ' e Baixado (Baixa por Ter Sido Protestado) '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (26,rtrim(ltrim('#39'Instru'#231#227'o ' +
        'Rejeitada '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (27,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Altera'#231#227'o de Outros Dados '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (28,rtrim(ltrim('#39'D'#233'bito de ' +
        'Tarifas/Custas '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (29,rtrim(ltrim('#39'Ocorr'#234'ncia' +
        's do Sacado '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (30,rtrim(ltrim('#39'Altera'#231#227'o ' +
        'de Dados Rejeitada '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (33,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da Altera'#231#227'o dos Dados do Rateio de Cr'#233'dito '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (34,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Cancelamento dos Dados do Rateio de Cr'#233'dito '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (35,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Desagendamento do D'#233'bito Autom'#225'tico '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (36,rtrim(ltrim('#39'Confirma'#231#227 +
        'o de envio de e-mail/SMS '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (37,rtrim(ltrim('#39'Envio de e' +
        '-mail/SMS rejeitado '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (38,rtrim(ltrim('#39'Confirma'#231#227 +
        'o de altera'#231#227'o do Prazo Limite de Recebimento (a data deve ser i' +
        'nformada no campo 28.3.p) '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (39,rtrim(ltrim('#39'Confirma'#231#227 +
        'o de Dispensa de Prazo Limite de Recebimento '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (40,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da altera'#231#227'o do n'#250'mero do t'#237'tulo dado pelo cedente '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (41,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da altera'#231#227'o do n'#250'mero controle do Participante '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (42,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da altera'#231#227'o dos dados do Sacado '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (43,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da altera'#231#227'o dos dados do Sacador/Avalista '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (44,rtrim(ltrim('#39'T'#237'tulo pag' +
        'o com cheque devolvido '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (45,rtrim(ltrim('#39'T'#237'tulo pag' +
        'o com cheque compensado   '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (46,rtrim(ltrim('#39'Instru'#231#227'o ' +
        'para cancelar protesto confirmada              '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (47,rtrim(ltrim('#39'Instru'#231#227'o ' +
        'para protesto para fins falimentares confirmada   '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (48,rtrim(ltrim('#39'Confirma'#231#227 +
        'o de instru'#231#227'o de transfer'#234'ncia de carteira/modalidade de cobran' +
        #231'a   '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (49,rtrim(ltrim('#39'Altera'#231#227'o ' +
        'de contrato de cobran'#231'a   '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (50,rtrim(ltrim('#39'T'#237'tulo pag' +
        'o com cheque pendente de liquida'#231#227'o                     '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (51,rtrim(ltrim('#39'T'#237'tulo DDA' +
        ' reconhecido pelo sacado                       '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (52,rtrim(ltrim('#39'T'#237'tulo DDA' +
        ' n'#227'o reconhecido pelo sacado                       '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (53,rtrim(ltrim('#39'T'#237'tulo DDA' +
        ' recusado pela CIP                       '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (54,rtrim(ltrim('#39'Confirma'#231#227 +
        'o da Instru'#231#227'o de Baixa de T'#237'tulo Negativado sem Protesto       ' +
        '           '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (55,rtrim(ltrim('#39'Confirma'#231#227 +
        'o de Pedido de Dispensa de Multa                       '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (56,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Cobran'#231'a de Multa                       '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (57,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Altera'#231#227'o de Cobran'#231'a de Juros              '#39'))) ' +
        '        '
      
        'INSERT INTO MotivoRetornoCNAB values (58,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Altera'#231#227'o do Valor/Data de Desconto              ' +
        '         '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (59,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Altera'#231#227'o do Cedente do T'#237'tulo                   ' +
        '     '#39')))'
      
        'INSERT INTO MotivoRetornoCNAB values (60,rtrim(ltrim('#39'Confirma'#231#227 +
        'o do Pedido de Dispensa de Juros de Mora '#39')))')
    Left = 640
    Top = 456
  end
  object tr_i_faturamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter trigger tr_i_faturamento on faturamento '
      'for insert '
      ''
      'as '
      ''
      ''
      'declare @soma as int'
      'declare @nnBoleto as varchar(9)'
      'declare @nnBoletoInt as int'
      ''
      'set @soma = 0'
      
        '--set @nnBoletoInt = (select isnull(max(nnBoleto),1) + 1 from fa' +
        'turamento)'
      
        'set @nnBoletoInt = (select vl_parametro from parametro where cd_' +
        'parametro = '#39'CSNNB'#39')'
      'SET @nnBoletoInt = @nnBoletoInt + 1'
      ''
      
        'update parametro set vl_parametro = @nnBoletoInt where cd_parame' +
        'tro = '#39'CSNNB'#39
      ''
      
        'set @nnBoleto = replicate('#39'0'#39', 7 - len(@nnBoletoInt)) + cast(@nn' +
        'BoletoInt as varchar(7))'
      ''
      'set @soma = 189 +'
      '       substring(@nnBoleto,1,1) * 9 +'
      '       substring(@nnBoleto,2,1) * 7 +'
      #9'   substring(@nnBoleto,3,1) * 3 +'
      #9'   substring(@nnBoleto,4,1) * 1 +'
      #9'   substring(@nnBoleto,5,1) * 9 +'
      #9'   substring(@nnBoleto,6,1) * 7 +'
      #9'   substring(@nnBoleto,7,1) * 3 '
      ''
      'if @soma % 11 > 1'
      
        '  set @nnBoleto = @nnBoleto + cast(11 - (@soma % 11) as varchar(' +
        '2))'
      'else'
      '  set @nnBoleto = @nnBoleto + '#39'0'#39
      ''
      '  '
      
        'update faturamento set empresa = c.empresa ,  nnboleto = @nnBole' +
        'to, nnBoleto_original = @nnBoleto'
      '   from  contratante c, '#9'inserted i '
      '   where i.codigo_contratante = c.codigo '#9
      '     and faturamento.numero_titulo = i.numero_titulo     '
      #9' and faturamento.desdobramento = i.desdobramento     '
      #9' and faturamento.data_vencimento = i.data_vencimento '
      ''
      ''
      '')
    Left = 624
    Top = 345
  end
  object ck_estado: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter table contratante WITH NOCHECK add  constraint ck_estado c' +
        'heck (estado_comercial in('#39'AC'#39','#39'AL'#39','#39'AP'#39','#39'AM'#39','#39'BA'#39','#39'CE'#39','#39'DF'#39','#39'ES' +
        #39','#39'GO'#39','#39'MA'#39','#39'MT'#39','#39'MS'#39','#39'MG'#39','#39'PA'#39','#39'PB'#39','#39'PR'#39','#39'PE'#39','#39'PI'#39','#39'RJ'#39','#39'RN'#39','#39'R' +
        'S'#39','#39'RO'#39','#39'RR'#39','#39'SC'#39','#39'SP'#39','#39'SE'#39','#39'TO'#39') and estado_residencial in('#39'AC'#39 +
        ','#39'AL'#39','#39'AP'#39','#39'AM'#39','#39'BA'#39','#39'CE'#39','#39'DF'#39','#39'ES'#39','#39'GO'#39','#39'MA'#39','#39'MT'#39','#39'MS'#39','#39'MG'#39','#39'PA' +
        #39','#39'PB'#39','#39'PR'#39','#39'PE'#39','#39'PI'#39','#39'RJ'#39','#39'RN'#39','#39'RS'#39','#39'RO'#39','#39'RR'#39','#39'SC'#39','#39'SP'#39','#39'SE'#39','#39'T' +
        'O'#39'))')
    Left = 704
    Top = 281
  end
  object sp_monitoramentoANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        '--begin tran exec sp_monitoramentoANS '#39'12/2016'#39',1,'#39'G'#39',0,1 rollba' +
        'ck'
      
        'alter procedure sp_monitoramentoANS -- begin tran exec sp_monito' +
        'ramentoANS '#39'12/2016'#39',1,'#39'G'#39',0,1 rollback'
      ''
      '@mesAno as varchar(7),'
      '@nrLote as int,'
      '@tpGeracao as char(1), --- G gera'#231#227'o , R regera'#231#227'o'
      '@vlFs as money,'
      '@simula as bit = 0'
      ''
      'as'
      ''
      'IF OBJECT_ID('#39'tempdb..##monitoramento'#39') IS NOT NULL '
      '  DROP TABLE ##monitoramento'
      '  '
      'set dateformat dmy'
      '/*if(@tpGeracao <> '#39'G'#39')'
      'begin'
      '   raiserror('#39'rever rotina de regera'#231#227'o'#39',16,1)'
      '   return;'
      'end*/'
      'declare @diaProtocolo as varchar(2)'
      'declare @diaPagamento as varchar(2)'
      'declare @dtiniManut as datetime '
      'declare @dtfimManut as datetime'
      'declare @cdEmpresa as int'
      
        '/*manutencao eh sempre o mes anterior, abaixo esta pegando o pri' +
        'meiro e ultimo dia do mes anterior*/'
      ''
      'set @dtiniManut = '#39'01/'#39' + @mesAno'
      'set @dtfimManut =  dateadd(SECOND,-1,@dtiniManut)'
      
        'set @dtiniManut  = '#39'01/'#39' + substring(convert(char(10),@dtfimManu' +
        't,103),4,7)'
      'set @cdEmpresa = (select codigo from empresa)'
      'if (@cdEmpresa) = 1 -- mt'
      'begin'
      '  set @diaProtocolo = '#39'01'#39
      '  set @diaPagamento = '#39'28'#39
      'end'
      '  else'
      '  begin'
      '     set @diaProtocolo = '#39'18'#39
      #9' set @diaPagamento = '#39'25'#39
      '  end'
      ''
      'set dateformat dmy'
      ''
      '--select * from envioMonitGuias where mesano = '#39'08/2016'#39
      '--select * from Itens_PagProtetico where orcamento =  209558'
      '--select * from Itens_PagDentista where orcamento =  209558'
      ''
      'declare @dtRealizacao as date'
      ''
      
        'select  DISTINCT 1 tipo, i.mesano, --- distinct por causa do end' +
        'ere'#231'o, tem dentista que tem dois residencial'
      
        '              cast(replace(replace(d.CIC,'#39'.'#39','#39#39'),'#39'-'#39','#39#39') as varc' +
        'har(20)) cpf,'
      '              d.Nome Nmdentista,'
      #9#9#9'  cli.descricao as nmClinica,'
      #9#9#9'  case @cdEmpresa when 1 then'
      
        #9#9#9'     case d.codigo_clinica when 1 then '#39'PF'#39' else '#39'PJ'#39' end  --' +
        ' seato clinica 1 eh pf e as outras '#233' pj'
      
        #9#9'       else '#39'PJ'#39' end tipoPessoa, -- seato '#233' tudo pj conforme g' +
        'abi'
      #9#9#9'  d.codigo_clinica,'
      
        #9#9#9'  case when  d.cnes <> '#39#39' then d.cnes else '#39'9999999'#39' end cnes' +
        ','
      
        '              replace(replace(replace(cli.cgc,'#39'/'#39','#39#39'),'#39'-'#39','#39#39'),'#39'.' +
        #39','#39#39') as cnpj,'
      
        '              --'#39'F'#39' tpPessoa, -- manda fixo pq nao tem essa opca' +
        'o no  cadastro de dentista'
      #9#9#9'  isnull(cid.cd_ibge,3543402) cdIbgeDentista,'
      '              o.Dentista,'#9#9#9'  '
      
        #9#9#9'  substring(i.mesano,1,2) + substring(i.mesano,4,4) + cast(o.' +
        'Numero as varchar(10)) as nrGuiaPrestador,'
      #9#9#9'  o.numero as nrGuiaOperadora,'
      '              u.Nome,'
      '              u.CPF cpfBenef,'
      #9#9#9'  ltrim(rtrim(u.cd_sus)) cd_sus,'
      #9#9#9'  convert(char(10),u.Data_Nascimento,121) nasc,'
      #9#9#9'  case u.Sexo when '#39'M'#39' then '#39'1'#39' else '#39'3'#39' end sexo,'
      #9#9#9'  cid1.cd_ibge as Cidade_Residencial,'
      #9#9#9'  p.Codigo_Susep cdPlano,'
      '              i.orcamento,'
      #9#9#9'  i.incremento,'
      #9#9#9'  o.Data,'
      #9#9#9'  convert(char(10),o.Data,121) dtSolicitacao,'
      #9#9#9'  convert(char(10),o.Data_Conferencia,121) dtAutorizacao,'
      
        #9#9#9'  --cast(substring(cast(o.numero as varchar(7)),3,1) as int) ' +
        ','
      #9#9#9'  --convert(date,'#39'20/'#39' + i.mesAno,103),'
      
        #9#9#9'  convert(char(10),dateadd(day,5,o.data_conferencia),121) dtR' +
        'ealizacao,'
      ''
      #9#9#9'   '
      
        #9#9#9'   convert(char(10), convert(date, @diaProtocolo + '#39'/'#39' + i.me' +
        'sAno,103),121) dtProtocolo,'
      
        #9#9#9'   convert(char(10), convert(date, @diaPagamento + '#39'/'#39' + i.me' +
        'sAno,103),121) dtPagamento,'
      #9#9#9'  '
      
        #9#9#9'  convert(char(10), convert(date, '#39'10/'#39' + i.mesAno,103),121) ' +
        'dtProcGuia,'
      #9#9#9'   '
      #9#9#9'  case o.Status_Pagamento when 1 then 4'
      #9#9#9'                          else 1 end TipoFaturamento,'
      
        '             case when s.cd_tuss > 1 then '#39'22'#39' else '#39'00'#39' end cd_' +
        'tabela,'
      
        #9#9'      case when s.cd_tuss > 1 then s.cd_tuss else s.Codigo end' +
        ' cd_servico,'
      #9#9#9'  substring(i.DenteFace,1,2) dente,'
      #9#9#9'  substring(i.denteFAce,3,3) face,'
      #9#9#9'  cast('#39#39' as varchar(4)) as regiao,'
      '              i.servico,'
      #9#9#9'  i.quantidade,'
      #9#9#9'  i.Quantidade_Paga * s.qtVezesTISS as Quantidade_Paga,'
      #9#9#9'  i.valor,'
      #9#9#9'  i.DenteFace,'
      #9#9#9'  c.cd_cidade_res,'
      #9#9#9'  cast(0 as money) valorTot,'
      #9#9#9'  '
      
        #9#9#9'  case when o.total_desconto > 0 then (i.valor * ((100 - isnu' +
        'll(o.desconto,0)) / 100)) / 2 else 0 end vrCooparticipacao, /*co' +
        'participa'#231#227'o envia 50% do valor que paga conf gabi*/'
      
        #9#9#9'  --case when io.valor > 0 then io.Valor_Bruto / 2 else 0 end' +
        ' vrCooparticipacao, /*coparticipa'#231#227'o envia 50% do valor bruto co' +
        'nf gabi*/'
      
        #9#9#9'  --isnull(io.valor,0) * ((100 - isnull(o.desconto,0)) / 100)' +
        ' vrCooparticipacao,'
      #9#9#9'  cast(0 as decimal(10,2)) valorTotalCoParticipacao'
      #9#9#9'  --o.total_desconto'
      #9#9#9'  ,d.Codigo as cdDentista'
      ''
      #9#9#9'  into #t'
      #9#9#9'  from '
      #9#9' itens_pagdentista i'
      
        #9#9' --inner join itens_orcamento io on io.Orcamento = i.Orcamento' +
        ' and io.Incremento = i.Incremento'
      #9#9'inner join orcamento o on i.Orcamento = o.Numero'
      #9#9'inner join usuario u on u.Codigo_Completo = o.Usuario'
      #9#9'inner join dentista d on o.Dentista = d.Codigo'
      #9#9'inner join contratante c on c.codigo = u.Codigo'
      #9#9'inner join Plano p on  c.Plano = p.Codigo'
      #9#9'inner join servicos s on s.Codigo = i.Servico'
      
        #9#9'left join endereco_x_dentista ed on ed.cd_dentista = d.Codigo ' +
        'and ed.tp_endereco = '#39'R'#39
      #9#9'left join cidade cid on cid.cd_cidade = ed.cd_cidade'
      #9#9'left join cidade cid1 on cid1.cd_cidade = c.cd_cidade_res'
      #9#9'left join clinicas cli on cli.codigo = d.codigo_clinica'
      #9#9'where i.mesano = @mesAno'
      ''
      #9#9'    and i.Valor > 0'
      #9#9'    and i.Quantidade_Paga > 0'
      #9#9#9'and i.servico not in(1372,1373,1374,1375,1376,1377)'
      #9#9
      ''
      ''
      #9#9'  --and o.numero = 140844'
      #9#9'  and i.valor is not null'
      
        #9#9'and ((@tpGeracao = '#39'G'#39' and not exists(select * from  envioMoni' +
        'tGuias e where e.orcamento = i.Orcamento and e.incremento = i.in' +
        'cremento and i.MesAno = e.mesAno and e.aceitoANS = '#39'S'#39')) or'
      
        #9#9'     (@tpGeracao = '#39'R'#39' and     exists(select * from  envioMoni' +
        'tGuias e where e.orcamento = i.Orcamento and e.incremento = i.in' +
        'cremento and i.MesAno = e.mesAno and e.nr_lote = @nrLote)))'
      ''
      'order by o.numero'
      ''
      ''
      'insert into #t '
      ''
      
        'select  DISTINCT 2 tipo, i.mesano, --- distinct por causa do end' +
        'ere'#231'o, tem dentista que tem dois residencial'
      
        '              cast(replace(replace(prot.CIC,'#39'.'#39','#39#39'),'#39'-'#39','#39#39') as v' +
        'archar(20)) cpf,'
      '              prot.Nome Nmdentista,'
      #9#9#9'  cli.descricao as nmClinica,'
      #9#9#9'  case @cdEmpresa when 1 then'
      
        #9#9#9'     case prot.codigo_clinica when 1 then '#39'PF'#39' else '#39'PJ'#39' end ' +
        ' -- seato clinica 1 eh pf e as outras '#233' pj'
      
        #9#9'       else '#39'PJ'#39' end tipoPessoa, -- seato '#233' tudo pj conforme g' +
        'abi'
      #9#9#9'  prot.codigo_clinica,'
      
        #9#9#9'  case when  prot.cnes <> '#39#39' then prot.cnes else '#39'9999999'#39' en' +
        'd cnes,'
      
        '              replace(replace(replace(cli.cgc,'#39'/'#39','#39#39'),'#39'-'#39','#39#39'),'#39'.' +
        #39','#39#39') as cnpj,'
      
        '              --'#39'F'#39' tpPessoa, -- manda fixo pq nao tem essa opca' +
        'o no  cadastro de dentista'
      #9#9#9'  --isnull(cid.cd_ibge,3543402) cdIbgeDentista,'
      #9#9#9'  3543402 cdIbgeDentista,'
      '              o.Dentista,'#9#9#9'  '
      
        #9#9#9'  '#39'P'#39' + substring(i.mesano,1,2) + substring(i.mesano,4,4) + c' +
        'ast(o.Numero as varchar(10)) as nrGuiaPrestador, -- P de proteti' +
        'co'
      #9#9#9'  o.numero as nrGuiaOperadora,'
      '              u.Nome,'
      '              u.CPF cpfBenef,'
      #9#9#9'  ltrim(rtrim(u.cd_sus)) cd_sus,'
      #9#9#9'  convert(char(10),u.Data_Nascimento,121) nasc,'
      #9#9#9'  case u.Sexo when '#39'M'#39' then '#39'1'#39' else '#39'3'#39' end sexo,'
      #9#9#9'  cid1.cd_ibge as Cidade_Residencial,'
      #9#9#9'  p.Codigo_Susep cdPlano,'
      '              i.orcamento,'
      #9#9#9'  i.incremento,'
      #9#9#9'  o.Data,'
      #9#9#9'  convert(char(10),o.Data,121) dtSolicitacao,'
      #9#9#9'  convert(char(10),o.Data_Conferencia,121) dtAutorizacao,'
      
        #9#9#9'  --cast(substring(cast(o.numero as varchar(7)),3,1) as int) ' +
        ','
      #9#9#9'  --convert(date,'#39'20/'#39' + i.mesAno,103),'
      
        #9#9#9'  convert(char(10),dateadd(day,5,o.data_conferencia),121) dtR' +
        'ealizacao,'
      ''
      #9#9#9'   '
      
        #9#9#9'   convert(char(10), convert(date, @diaProtocolo + '#39'/'#39' + i.me' +
        'sAno,103),121) dtProtocolo,'
      
        #9#9#9'   convert(char(10), convert(date, @diaPagamento + '#39'/'#39' + i.me' +
        'sAno,103),121) dtPagamento,'
      #9#9#9'  '
      
        #9#9#9'  convert(char(10), convert(date, '#39'10/'#39' + i.mesAno,103),121) ' +
        'dtProcGuia,'
      #9#9#9'   '
      #9#9#9'  case o.Status_Pagamento when 1 then 4'
      #9#9#9'                          else 1 end TipoFaturamento,'
      
        '             case when s.cd_tuss > 1 then '#39'22'#39' else '#39'00'#39' end cd_' +
        'tabela,'
      
        #9#9'      case when s.cd_tuss > 1 then s.cd_tuss else s.Codigo end' +
        ' cd_servico,'
      #9#9#9'  '#39#39' dente,'
      #9#9#9'  '#39#39' face,'
      #9#9#9'  cast('#39#39' as varchar(4)) as regiao,'
      '              i.servico,'
      #9#9#9'  i.quantidade,'
      #9#9#9'  i.Quantidade_Paga * s.qtVezesTISS as Quantidade_Paga,'
      #9#9#9'  i.valor,'
      #9#9#9'  '#39#39' DenteFace,'
      #9#9#9'  c.cd_cidade_res,'
      #9#9#9'  cast(0 as money) valorTot,'
      
        #9#9#9'  case when o.total_desconto > 0 then (i.valor * ((100 - isnu' +
        'll(o.desconto,0)) / 100)) / 2 else 0 end vrCooparticipacao, /*co' +
        'participa'#231#227'o envia 50% do valor que paga conf gabi*/'
      
        #9#9#9'  --isnull(io.valor,0) * ((100 - isnull(o.desconto,0)) / 100)' +
        ' vrCooparticipacao,'
      #9#9#9'  cast(0 as decimal(10,2)) valorTotalCoParticipacao'
      #9#9#9'  ,prot.Codigo as cdDentista'
      #9#9#9'  '
      
        #9#9#9'  --select * from Itens_PagProtetico order by orcamento desc ' +
        'and'
      #9#9#9'  --select * from protetico where codigo = 125'
      #9#9#9'  --into #t'
      #9#9#9'  from  itens_pagprotetico i'
      
        #9#9'--inner join itens_orcamento io on io.Orcamento = i.Orcamento ' +
        'and io.Incremento = i.Incremento'
      #9#9'inner join orcamento o on i.Orcamento = o.Numero'
      #9#9'inner join usuario u on u.Codigo_Completo = o.Usuario'
      #9#9'inner join protetico prot on i.protetico = prot.Codigo'
      #9#9'inner join contratante c on c.codigo = u.Codigo'
      #9#9'inner join Plano p on  c.Plano = p.Codigo'
      #9#9'inner join servicos s on s.Codigo = i.Servico'
      
        #9#9'--left join endereco_x_dentista ed on ed.cd_dentista = d.Codig' +
        'o and ed.tp_endereco = '#39'R'#39
      #9#9'--left join cidade cid on cid.cd_cidade = ed.cd_cidade'
      #9#9'left join cidade cid1 on cid1.cd_cidade = c.cd_cidade_res'
      #9#9'left join clinicas cli on cli.codigo = prot.codigo_clinica'
      #9#9'where i.mesano = @mesAno'
      #9#9#9#9'    and i.Valor > 0'
      #9#9'    and i.Quantidade_Paga > 0'
      #9#9#9'and i.servico not in(1372,1373,1374,1375,1376,1377)'
      ''
      #9#9
      #9#9'  --and o.numero = 140844'
      #9#9'  and i.valor is not null'
      
        #9#9'and ((@tpGeracao = '#39'G'#39' and not exists(select * from  envioMoni' +
        'tGuias e where e.orcamento = i.Orcamento and e.incremento = i.in' +
        'cremento and i.MesAno = e.mesAno and e.aceitoANS = '#39'S'#39')) or'
      
        #9#9' (@tpGeracao = '#39'R'#39' and     exists(select * from  envioMonitGui' +
        'as e where e.orcamento = i.Orcamento and e.incremento = i.increm' +
        'ento and i.MesAno = e.mesAno and e.nr_lote = @nrLote)))'
      ''
      'order by o.numero'
      ''
      'insert into #t'
      ''
      
        'select  DISTINCT 3 tipoMonit,  @mesano mesAno, --- distinct por ' +
        'causa do endere'#231'o, tem dentista que tem dois residencial'
      
        '              cast(replace(replace(d.CIC,'#39'.'#39','#39#39'),'#39'-'#39','#39#39') as varc' +
        'har(20)) cpf,'
      '              d.Nome Nmdentista,'
      #9#9#9'  cli.descricao as nmClinica,'
      #9#9#9'  case @cdEmpresa when 1 then'
      
        #9#9#9'     case d.codigo_clinica when 1 then '#39'PF'#39' else '#39'PJ'#39' end  --' +
        ' seato clinica 1 eh pf e as outras '#233' pj'
      
        #9#9'       else '#39'PJ'#39' end tipoPessoa, -- seato '#233' tudo pj conforme g' +
        'abi'
      #9#9#9'  d.codigo_clinica,'
      
        #9#9#9'  case when  d.cnes <> '#39#39' then d.cnes else '#39'9999999'#39' end cnes' +
        ','
      
        '              replace(replace(replace(cli.cgc,'#39'/'#39','#39#39'),'#39'-'#39','#39#39'),'#39'.' +
        #39','#39#39') as cnpj,'
      
        '              --'#39'F'#39' tpPessoa, -- manda fixo pq nao tem essa opca' +
        'o no  cadastro de dentista'
      #9#9#9'  isnull(cid.cd_ibge,3543402) cdIbgeDentista,'
      '              o.Dentista,'#9#9#9'  '
      
        #9#9#9'  substring(@mesano,1,2) + substring(@mesano,4,4) + cast(o.Nu' +
        'mero as varchar(10)) as nrGuiaPrestador,'
      #9#9#9'  o.numero as nrGuiaOperadora,'
      '              u.Nome,'
      '              u.CPF cpfBenef,'
      #9#9#9'  ltrim(rtrim(u.cd_sus)) cd_sus,'
      #9#9#9'  convert(char(10),u.Data_Nascimento,121) nasc,'
      #9#9#9'  case u.Sexo when '#39'M'#39' then '#39'1'#39' else '#39'3'#39' end sexo,'
      #9#9#9'  cid1.cd_ibge as Cidade_Residencial,'
      #9#9#9'  p.Codigo_Susep cdPlano,'
      '              i.orcamento,'
      #9#9#9'  I.incremento,'
      #9#9#9'  o.Data,'
      #9#9#9'  convert(char(10),o.Data,121) dtSolicitacao,'
      #9#9#9'  convert(char(10),o.Data_Conferencia,121) dtAutorizacao,'
      
        #9#9#9'  --cast(substring(cast(o.numero as varchar(7)),3,1) as int) ' +
        ','
      #9#9#9'  --convert(date,'#39'20/'#39' + i.mesAno,103),'
      
        #9#9#9'  convert(char(10),dateadd(day,5,o.data_conferencia),121) dtR' +
        'ealizacao,'
      ''
      #9#9#9'   '
      
        #9#9#9'   convert(char(10), convert(date, @diaProtocolo + '#39'/'#39' + @mes' +
        'Ano,103),121) dtProtocolo,'
      
        #9#9#9'   convert(char(10), convert(date, @diaPagamento + '#39'/'#39' + @mes' +
        'Ano,103),121) dtPagamento,'
      #9#9#9'  '
      
        #9#9#9'  convert(char(10), convert(date, '#39'10/'#39' + @mesAno,103),121) d' +
        'tProcGuia,'
      #9#9#9'   '
      #9#9#9'  case o.Status_Pagamento when 1 then 4'
      #9#9#9'                          else 1 end TipoFaturamento,'
      
        '             case when s.cd_tuss > 1 then '#39'22'#39' else '#39'00'#39' end cd_' +
        'tabela,'
      
        #9#9'      case when s.cd_tuss > 1 then s.cd_tuss else s.Codigo end' +
        ' cd_servico,'
      #9#9#9'  substring(i.DenteFace,1,2) dente,'
      #9#9#9'  substring(i.denteFAce,3,3) face,'
      #9#9#9'  cast('#39#39' as varchar(4)) as regiao,'
      '              i.servico,'
      #9#9#9'  i.quantidade, '
      #9#9#9'  i.quantidade * s.qtVezesTISS Quantidade_Paga ,'
      #9#9#9'  o.Total_Dentista valor, '
      #9#9#9'  i.DenteFace,'
      #9#9#9'  c.cd_cidade_res,'
      #9#9#9'  cast(0 as money) valorTot,'
      #9#9#9'  '
      
        #9#9#9'  --isnull(i.valor,0) * ((100 - isnull(o.desconto,0)) / 100) ' +
        'vrCooparticipacao,'
      
        #9#9#9'  case when i.Valor_Dentista > 0 then (i.Valor_Dentista * ((1' +
        '00 - isnull(o.desconto,0)) / 100)) / 2 else 0 end vrCooparticipa' +
        'cao, /*coparticipa'#231#227'o envia 50% do valor que paga conf gabi*/'
      #9#9#9'  cast(0 as decimal(10,2)) valorTotalCoParticipacao'
      #9#9#9'  ,d.Codigo as cdDentista'
      #9#9#9'  --select * from Itens_Orcamento where orcamento = 222527'
      'from Receber r'
      
        '--select * from orcamento where tipo = 5 and autorizado = 1 orde' +
        'r by numero desc'
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join itens_orcamento i on i.orcamento = o.numero'
      'left join Usuario   u on u.Codigo_Completo  = r.Codigo_Usuario'
      'left join dentista  d on o.Dentista         = d.codigo'
      'LEFT join contratante c on c.codigo = u.Codigo'
      'inner join Plano p on  c.Plano = p.Codigo'
      'inner join servicos s on s.Codigo = i.Servico'
      
        'left join endereco_x_dentista ed on ed.cd_dentista = d.Codigo an' +
        'd ed.tp_endereco = '#39'R'#39
      'left join cidade cid on cid.cd_cidade = ed.cd_cidade'
      'left join cidade cid1 on cid1.cd_cidade = c.cd_cidade_res'
      'left join clinicas cli on cli.codigo = d.codigo_clinica'
      ''
      'Where '
      '      o.Tipo           = 5'
      '      and r.dt_pagDentista between @dtiniManut and @dtfimManut'
      '      and r.Tipo_Documento = 5'
      '      and i.servico not in(1372,1373,1374,1375,1376,1377)'#9#9
      #9#9'  --and o.numero = 140844'
      #9#9'  and i.valor is not null'
      
        #9#9'and ((@tpGeracao = '#39'G'#39' and not exists(select * from  envioMoni' +
        'tGuias e where e.orcamento = i.Orcamento and e.incremento = i.in' +
        'cremento and @MesAno = e.mesAno and e.aceitoANS = '#39'S'#39')) or'
      
        #9#9'     (@tpGeracao = '#39'R'#39' and     exists(select * from  envioMoni' +
        'tGuias e where e.orcamento = i.Orcamento and e.incremento = i.in' +
        'cremento and @MesAno = e.mesAno and e.nr_lote = @nrLote)))'
      ''
      'order by o.numero'
      ''
      ''
      'if @tpGeracao = '#39'G'#39' and @cdEmpresa = 1'
      'begin'
      
        '   select identity(int,1,1) indice, round(datediff(day,data_nasc' +
        'imento,getdate()) /365.25,2) idade, codigo_completo, nome,'#39'N'#39' se' +
        'lecionado into #temp'
      
        '    from usuario where Data_Exclusao is null and round(datediff(' +
        'day,data_nascimento,getdate()) /365.25,2)  between 15 and 35'
      '    order by nome'
      ''
      '   set nocount on'
      '   declare @valor money'
      '   set @valor = (select count(*) from #temp) * 45'
      '   if @valor  >=  @vlFs'
      '       begin'
      '       set @valor = 0'
      '       declare @indice int'
      '       '
      '       while (@valor < @vlFs)'
      '       begin'
      
        '         set @indice = (select floor(RAND(CHECKSUM(NEWID())) * 1' +
        '000000))'
      '       '
      
        '         if exists(select * from #temp where indice = @indice an' +
        'd selecionado = '#39'N'#39')'
      '         begin'
      '            /*if (@valor % 1000) = 0'
      '       '#9'   select @valor, convert(char(8),getdate(),108) hora*/'
      
        '            update #temp set selecionado = '#39'S'#39' where indice = @i' +
        'ndice'
      '            set @valor = @valor + 45'
      '       '
      '       '
      '         end'
      '       end'
      '       '
      '   end'
      '   else'
      '   begin'
      
        '      raiserror('#39'O valor informado eh maior do que a quantidade ' +
        'de beneficiarios possiveis'#39',16,1)'
      #9'  return'
      '   end'
      '   if @simula = 0'
      '      insert into  manutencaoFs '
      
        '      (mesAno,nrLote,nrGuiaPrestador,cd_usuario,cd_dentista,cd_c' +
        'linica,cd_servico,vl_servico,dtGeracao) '
      
        '      select @mesAno,@nrLote, cast(indice * 1000 as varchar(10))' +
        ', codigo_completo ,427,32,1361,45,getdate() '
      ''
      'from #temp '
      'where selecionado = '#39'S'#39
      '   /* tb manutencaoFS -- drop table manutencaoFS'
      '   create table manutencaoFS'
      '   (indice int identity(1000,1) primary key,    '
      '    mesAno varchar(7) not null,'
      #9'nrLote int not null,'
      #9'nrGuiaPrestador varchar(10) not null,'
      '    cd_usuario int not null,'
      #9'cd_dentista int not null,'
      #9'cd_clinica int not null,'
      #9'cd_servico int not null,'
      #9'vl_servico int not null,'
      #9'dtGeracao datetime not null'
      #9')'
      #9'*/'
      #9'--select * from dentista where nome like '#39'elias%'#39
      '   set nocount off'
      ''
      ''
      ''
      ''
      '   --DELETE #T'
      '   '
      '   insert into #t '
      '   '
      
        '   select  DISTINCT 4 tipo, mfs.mesano, --- distinct por causa d' +
        'o endere'#231'o, tem dentista que tem dois residencial'
      
        '                 cast(replace(replace(dent.CIC,'#39'.'#39','#39#39'),'#39'-'#39','#39#39') a' +
        's varchar(20)) cpf,'
      '                 dent.Nome Nmdentista,'
      '   '#9#9#9'  cli.descricao as nmClinica,'
      '   '#9#9#9'  '#39'PJ'#39' tipoPessoa,'
      '   '#9#9#9'  mfs.cd_clinica,'
      
        '   '#9#9#9'  case when  dent.cnes <> '#39#39' then dent.cnes else '#39'9999999'#39 +
        ' end cnes,'
      
        '                 replace(replace(replace(cli.cgc,'#39'/'#39','#39#39'),'#39'-'#39','#39#39')' +
        ','#39'.'#39','#39#39') as cnpj,'
      '                 '
      '   '#9#9#9'  isnull(cid.cd_ibge,3543402) cdIbgeDentista,'
      '          mfs.cd_dentista,'
      
        '   '#9#9#9'  substring(mfs.mesano,1,2) + substring(mfs.mesano,4,4) + ' +
        'cast(mfs.indice as varchar(10)) as nrGuiaPrestador,'
      '   '#9#9#9'  mfs.indice as nrGuiaOperadora,'
      '                 u.Nome,'
      '                 u.CPF cpfBenef,'
      '   '#9#9#9'  ltrim(rtrim(u.cd_sus)) cd_sus,'
      '   '#9#9#9'  convert(char(10),u.Data_Nascimento,121) nasc,'
      '   '#9#9#9'  case u.Sexo when '#39'M'#39' then '#39'1'#39' else '#39'3'#39' end sexo,'
      '   '#9#9#9'  cid1.cd_ibge as Cidade_Residencial,'
      '   '#9#9#9'  p.Codigo_Susep cdPlano,'
      '                 mfs.indice orcamento,'
      '   '#9#9#9'  0,'
      '   '#9#9#9'  convert(date,'#39'01/'#39' + @mesAno,103) Data, -- o.data'
      
        '   '#9#9#9'  convert(char(10),convert(date,'#39'01/'#39' + @mesAno,103),121) ' +
        'dtSolicitacao,'
      
        '   '#9#9#9'  convert(char(10),convert(date,'#39'02/'#39' + @mesAno,103),121) ' +
        'dtAutorizacao,'
      
        '   '#9#9#9'  --cast(substring(cast(o.numero as varchar(7)),3,1) as in' +
        't) ,'
      '   '#9#9#9'  --convert(date,'#39'20/'#39' + i.mesAno,103),'
      
        '   '#9#9#9'  convert(char(10),convert(date,'#39'08/'#39' + @mesAno,103),121) ' +
        'dtRealizacao,'
      
        '   '#9#9#9'  convert(char(10), convert(date,  '#39'10/'#39' + mfs.mesAno,103)' +
        ',121) dtProtocolo,'
      
        '   '#9#9#9'  convert(char(10), convert(date, '#39'15/'#39' + mfs.mesAno,103),' +
        '121) dtPagamento,'#9#9#9'  '
      
        '   '#9#9#9'  convert(char(10), convert(date, '#39'15/'#39' + mfs.mesAno,103),' +
        '121) dtProcGuia,'
      '   '#9#9#9'   '
      '   '#9#9#9'  4 TipoFaturamento,'
      
        '                 case when s.cd_tuss > 1 then '#39'22'#39' else '#39'00'#39' end' +
        ' cd_tabela,'
      
        '   '#9#9'      case when s.cd_tuss > 1 then s.cd_tuss else s.Codigo ' +
        'end cd_servico,'
      '   '#9#9#9'  '#39#39' dente,'
      '   '#9#9#9'  '#39#39'  face,'
      '   '#9#9#9'  '#39#39'  regiao,'
      '                 mfs.cd_servico,'
      '   '#9#9#9'  1 quantidade,'
      '   '#9#9#9'  1 Quantidade_Paga,'
      '   '#9#9#9'  mfs.vl_servico,'
      '   '#9#9#9'  '#39#39' DenteFace,'
      '   '#9#9#9'  c.cd_cidade_res,'
      '   '#9#9#9'  cast(0 as money) valorTot,'
      #9#9#9'  mfs.vl_servico / 2.0 ,0 '
      #9#9#9'  ,dent.Codigo as cdDentista'
      '   '#9#9#9'  '
      '   '#9#9#9'  from  manutencaoFS mfs'
      '   '#9#9
      '   '#9#9'inner join usuario u on u.Codigo_Completo = mfs.cd_usuario'
      '   '#9#9'inner join dentista dent on mfs.cd_dentista = dent.Codigo'
      '   '#9#9'inner join contratante c on c.codigo = u.Codigo'
      '   '#9#9'inner join Plano p on  c.Plano = p.Codigo'
      '   '#9#9'inner join servicos s on s.Codigo = mfs.cd_servico'
      '   '
      
        '   '#9#9'left join endereco_x_dentista ed on ed.cd_dentista = dent.C' +
        'odigo and ed.tp_endereco = '#39'R'#39
      '   '#9#9'left join cidade cid on cid.cd_cidade = ed.cd_cidade'
      '   '#9#9'left join cidade cid1 on cid1.cd_cidade = c.cd_cidade_res'
      '   '#9#9'left join clinicas cli on cli.codigo = mfs.cd_clinica'
      '   '
      '   '#9#9'where mfs.mesano = @mesAno'
      #9#9'  and mfs.nrLote = @nrLote'
      '   '#9#9'and mfs.cd_servico not in(1372,1373,1374,1375,1376,1377)'
      '   '#9#9'  --and o.numero = 140844'
      '   '#9#9'  '
      
        '   '#9#9'and ((@tpGeracao = '#39'G'#39' and not exists(select * from  envioM' +
        'onitGuias e where e.orcamento = mfs.indice and e.incremento = 0 ' +
        'and mfs.MesAno = e.mesAno and e.aceitoANS = '#39'S'#39')) or'
      
        '   '#9#9'     (@tpGeracao = '#39'R'#39' and     exists(select * from  envioM' +
        'onitGuias e where e.orcamento = mfs.indice and e.incremento = 0 ' +
        'and mfs.MesAno = e.mesAno and e.nr_lote = @nrLote)))'
      '   '
      '   order by mfs.indice'
      '   '
      'end --if @tpGeracao = '#39'G'#39' and @cdEmpresa = 1'
      ''
      ''
      ''
      '/*'
      'if @tpGeracao = '#39'G'#39' and (select  count(*) from #t) > 10000'
      'begin'
      '   select top 10000 orcamento into #temp from #t   '
      '   declare @nrorcAux as int'
      '   set @nrorcAux = (select max(orcamento) from #temp)'
      '   '
      '   --select @nrorcAux'
      '   delete #t where orcamento > @nrorcAux'
      'end'
      '*/'
      '--select * from #t where orcamento = 169860 and incremento =  2'
      'alter table #t alter column valor decimal(10,2)'
      'alter table #t alter column vrCooparticipacao decimal(10,2)'
      ''
      
        'update #t set regiao = '#39'HA'#39' + i.hemiarco from Itens_Orcamento i ' +
        'where #t.orcamento = i.orcamento and #t.servico = i.servico and ' +
        'i.hemiarco <> '#39#39' AND #T.data < '#39'01/02/2015'#39
      
        'update #t set regiao = '#39'S'#39' + cast(i.SEXANTE as varchar(1)) from ' +
        'Itens_Orcamento i where #t.orcamento = i.orcamento and #t.servic' +
        'o = i.servico and i.SEXANTE > 0 AND #T.data < '#39'01/02/2015'#39
      
        'update #t set regiao = i.ARCADA from Itens_Orcamento i where #t.' +
        'orcamento = i.orcamento and #t.servico = i.servico and i.ARCADA ' +
        '<> '#39#39' AND #T.data < '#39'01/02/2015'#39
      
        '-- a partir de 01/02/2015 o incremento da itens pag dentista '#233' i' +
        'gual a itens orcamento'
      
        'update #t set regiao = '#39'HA'#39' + i.hemiarco from Itens_Orcamento i ' +
        'where #t.orcamento = i.orcamento and #t.incremento = i.increment' +
        'o and i.hemiarco <> '#39#39' AND #T.data >= '#39'01/02/2015'#39
      
        'update #t set regiao = '#39'S'#39' + cast(i.SEXANTE as varchar(1)) from ' +
        'Itens_Orcamento  i where #t.orcamento = i.orcamento and #t.incre' +
        'mento = i.incremento and i.SEXANTE > 0 AND #T.data >= '#39'01/02/201' +
        '5'#39
      
        'update #t set regiao =  i.ARCADA from Itens_Orcamento   i where ' +
        '#t.orcamento = i.orcamento and #t.incremento = i.incremento and ' +
        'i.ARCADA <> '#39#39' AND #T.data >= '#39'01/02/2015'#39
      ''
      ''
      ''
      '--SELECT DISTINCT VALORTOT,nrGuiaOperadora INTO #VR FROM #T'
      '--SELECT SUM(VALORTOT) VALOR FROM #VR'
      '--SELECT * FROM #VR'
      ''
      'if @cdEmpresa = 1'
      'begin'
      
        '   --segundo gabi as clinicas 46 e 106 da multiodonto devem ir c' +
        'omo clinica 32'
      
        '   update #t set nmClinica = c.descricao , cnpj = replace(replac' +
        'e(replace(c.cgc,'#39'/'#39','#39#39'),'#39'-'#39','#39#39'),'#39'.'#39','#39#39'), cnes = '#39'6266789'#39', codig' +
        'o_clinica = c.Codigo from clinicas c where c.codigo = 32 and #t.' +
        'Codigo_Clinica in(46,106)'
      '   update #t set  cnes = '#39'6266789'#39' where #t.Codigo_Clinica = 32'
      '   update #t set  cnes = '#39'6155375'#39' where #t.Codigo_Clinica = 83'
      '   '
      ''
      'end'
      ''
      '--select * from delete enviomonitguias where mesAno = '#39'01/2015'#39
      
        '--select * from delete erroMonitoramento where mesano = '#39'01/2015' +
        #39
      ''
      'if @tpGeracao = '#39'G'#39' '
      'begin'
      '   BEGIN TRY  '
      '      begin tran'
      
        '         --set @nr_lote = (select isnull(max(nr_lote),0) + 1 fro' +
        'm envioMonitGuias where mesAno = @mesAno)'
      
        '         --insert into envioMonitoramento (mesAno, nr_lote,  dt_' +
        'envio, dt_retorno)  values (@mesAno,@nr_lote,getdate(),null)'
      '         if @simula = 0'
      
        '            insert into envioMonitGuias (tipo,mesAno , nr_lote ,' +
        ' orcamento , incremento, aceitoANS) select tipo, @mesAno,@nrLote' +
        ',orcamento,incremento,'#39'S'#39' from #t'
      '   '#9'  commit'
      '   END TRY'
      '   BEGIN CATCH '
      '         declare @mstErro as varchar(340)'
      
        '   '#9'      set @mstErro = '#39'ocorreu um erro ao tentar gerar o lote' +
        ' '#39' + substring(ERROR_MESSAGE(),1,300)'
      '         raiserror(@mstErro,16,1)'
      '   '#9'  rollback'
      '   '#9'  return'
      '   END CATCH; '
      'end'
      ''
      ''
      
        '--update #t set valorTot = (select sum(valor) from #t a where a.' +
        'nrGuiaPrestador = #t.nrGuiaPrestador)'
      
        'update #t set #t.valorTot = (select sum(valor) from #t t where t' +
        '.nrGuiaOperadora = #t.nrGuiaOperadora and t.cnpj = #t.cnpj and T' +
        '.nrGuiaPrestador = #t.nrGuiaPrestador) where #t.tipoPessoa = '#39'PJ' +
        #39
      
        'update #t set #t.valorTot = (select sum(valor) from #t t where t' +
        '.nrGuiaOperadora = #t.nrGuiaOperadora and t.cpf = #t.cpf AND T.n' +
        'rGuiaPrestador = #t.nrGuiaPrestador ) where #t.tipoPessoa = '#39'PF'#39
      ''
      
        'update #t set #t.valorTotalCoParticipacao = (select sum(vrCoopar' +
        'ticipacao) from #t t where t.nrGuiaOperadora = #t.nrGuiaOperador' +
        'a and t.cnpj = #t.cnpj and T.nrGuiaPrestador = #t.nrGuiaPrestado' +
        'r) where #t.tipoPessoa = '#39'PJ'#39
      ''
      
        'update #t set #t.valorTotalCoParticipacao = (select sum(vrCoopar' +
        'ticipacao) from #t t where t.nrGuiaOperadora = #t.nrGuiaOperador' +
        'a and t.cpf = #t.cpf AND T.nrGuiaPrestador = #t.nrGuiaPrestador ' +
        ') where #t.tipoPessoa = '#39'PF'#39
      ''
      ''
      
        '--update #t set #t.valorTotalCoParticipacao = (select sum(vrCoop' +
        'articipacao) from #t t where t.nrGuiaOperadora = #t.nrGuiaOperad' +
        'ora and t.NmDentista  = #t.NmDentista and #t.valorTotalCoPartici' +
        'pacao is null and #t.cpf is null ) '
      ''
      
        'update #t set valorTotalCoParticipacao = 0 where valorTotalCoPar' +
        'ticipacao is null'
      ''
      ''
      
        'if @mesAno = '#39'10/2016'#39' and exists( select codigo from empresa wh' +
        'ere codigo = 2)'
      'begin'
      '   '
      
        '   delete #t where nrguiaoperadora  in (86208,86485,83476,86034)' +
        ' or nmdentista  in('#39'CAMILA GOMES BORGES'#39','#39'PAULO EGIDIO DUARTE DO' +
        'S SANTOS'#39')'
      'end'
      
        'if @mesAno = '#39'11/2016'#39' and exists( select codigo from empresa wh' +
        'ere codigo = 2)'
      'begin'
      '   '
      '   delete #t where cdDentista in(96,92,42,76)'
      'end'
      ''
      'update #t set dente = '#39#39' where dente is null'
      'update #t set face = '#39#39' where face is null'
      'update #t set regiao = '#39#39' where regiao is null'
      'update #t set DenteFace = '#39#39' where denteFace is null'
      'update #t set face = replace(face,'#39'C'#39','#39'V'#39') where face like '#39'%C%'#39
      
        'update #t set DenteFace = replace(DenteFace,'#39'C'#39','#39'V'#39') where Dente' +
        'Face like '#39'%C%'#39
      ''
      ''
      ''
      
        'select convert(char(10),dtRealizacao,121) dtReali,* into ##monit' +
        'oramento from #t ORDER BY nrGuiaPrestador'
      ''
      
        '--select convert(char(10),dtRealizacao,121) dtReali,* from #t OR' +
        'DER BY nrGuiaPrestador'
      'if @simula = 0 '
      'begin'
      
        'select convert(char(10),dtRealizacao,121) dtReali,mesano,cpf,Nmd' +
        'entista,nmClinica,tipoPessoa,codigo_clinica,'
      
        'cnes,cnpj,cdIbgeDentista,dentista,nrGuiaPrestador,nrGuiaOperador' +
        'a,Nome,cpfBenef,cd_sus,nasc,sexo,Cidade_Residencial,cdPlano,'
      
        'orcamento,data,dtSolicitacao,dtAutorizacao,dtProtocolo,dtPagamen' +
        'to,dtProcGuia,TipoFaturamento,cd_tabela,'
      
        'cd_servico,dente,face,regiao,DenteFace,cd_cidade_res,valorTot,va' +
        'lorTotalCoParticipacao,SUM(vrCooparticipacao) vrCooparticipacao,' +
        ' SUM(quantidade)quantidade,SUM(quantidade_paga)quantidade_paga,'
      'SUM(valor) valor from #t '
      
        'group by convert(char(10),dtRealizacao,121) ,mesano,cpf,Nmdentis' +
        'ta,nmClinica,tipoPessoa,codigo_clinica,'
      
        'cnes,cnpj,cdIbgeDentista,dentista,nrGuiaPrestador,nrGuiaOperador' +
        'a,Nome,cpfBenef,cd_sus,nasc,sexo,Cidade_Residencial,cdPlano,'
      
        'orcamento,data,dtSolicitacao,dtAutorizacao,dtProtocolo,dtPagamen' +
        'to,dtProcGuia,TipoFaturamento,cd_tabela,'
      
        'cd_servico,dente,face,regiao,DenteFace,cd_cidade_res,valorTot,va' +
        'lorTotalCoParticipacao'
      ''
      ''
      ''
      'ORDER BY nrGuiaPrestador'
      'end'
      'else'
      'begin'
      ''
      
        'select case tipo when 1 then '#39'Dentista'#39' when 2 then '#39'Protetico'#39' ' +
        'when 3 then '#39'Manutencao'#39' else '#39'indefinido'#39' end dsTipo, '
      'tipo, SUM(Valor) valor, '
      'SUM(vrcooparticipacao) copart from ##monitoramento'
      'group by '
      
        'case tipo when 1 then '#39'Dentista'#39' when 2 then '#39'Protetico'#39' when 3 ' +
        'then '#39'Manutencao'#39' else '#39'indefinido'#39' end'
      ',tipo'
      ''
      
        'union -- na simula'#231'ao n'#227'o computa manutencaoFs(nem R nem no G , ' +
        'por isso necessidade de union aki,'
      'select '#39'avulso'#39' dsTipo,'#39#39' tipo,'
      '   '#9#9#9'  sum(vl_servico) valor,'
      #9#9#9'  sum(vl_servico / 2.0) copart'
      '   '#9#9#9'  '
      ' from manutencaoFs where mesano = @mesano'
      'order by tipo '
      ''
      'end'
      ''
      ''
      ''
      ''
      '')
    Left = 1155
    Top = 426
  end
  object sp_relBenefExcluidos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'CREATE procedure sp_relBenefExcluidos'
      ''
      '@tipoPessoa  char(1),'
      '@dtIni  char(10),'
      '@dtFim  char(10),'
      '@ordenacao tinyint,'
      '@cdcidade int'
      ''
      ''
      'as'
      ''
      'declare @cpf varchar(15)'
      'declare @nome varchar(60)'
      'declare @Dtexclusao date'
      'declare @qtContratos int'
      'declare @codigo int'
      'declare @tempoContrato as varchar(20)'
      'declare @telefones as varchar(70)'
      'declare @telefonesSemFormat as varchar(70)'
      'declare @FoneAux as varchar(18) '
      'declare @FoneAuxSemFormat as varchar(18) '
      'declare @empresa as bit'
      ''
      'create table #rs'
      '(codigo int,'
      ' cpf varchar(15),'
      ' nome varchar(70),'
      ' dtInclusao date,'
      ' dtExclusao date,'
      ' qtdeContrato int,'
      ' nrvidas int,'
      ' tempoContrato varchar(20),'
      ' NrParcelasAberto int,'
      ' vrParcelasAberto money,'
      ' motivoCancelamento varchar(20),'
      ' endereco varchar(50),'
      ' bairro varchar(50),'
      ' cidade varchar(50),'
      ' cep varchar(15),'
      ' telefones varchar(70),'
      ' email varchar(100)'
      ' )'
      ''
      'create table #periodos'
      '(inclusao date,'
      ' dtExclusao date)'
      ' '
      ' --tb usuario'
      'set dateformat dmy'
      ''
      'if (@tipoPessoa = '#39'J'#39')'
      '  set @empresa = 1'
      'else'
      '  set @empresa = 0'
      ' '
      
        'select  codigo,cgc_cpf CPF,Nome, MAX(Exclusao) dtExclusao, COUNT' +
        '(*) qtde into #t from  contratante u where exclusao is not null'
      ''
      'and cgc_cpf is not null and cgc_cpf <> '#39#39' '
      ''
      
        'and not exists(select * from  contratante u1 where u1.cgc_cpf = ' +
        'u.cgc_cpf and u1.exclusao is null)'
      'and (u.Empresa = @empresa or @tipoPessoa = '#39'A'#39')'
      'and u.Exclusao between @dtINi and @dtFim'
      'and (u.cd_cidade_res = @cdcidade or @cdcidade = 0)'
      'group by codigo, cgc_cpf,Nome'
      ''
      'DECLARE cUsu CURSOR FOR select * from #t'
      'open cUsu'
      
        'FETCH NEXT FROM cUsu INTO @codigo, @cpf,@nome,@Dtexclusao,@qtCon' +
        'tratos'
      'while @@FETCH_STATUS = 0'
      'begin'
      '  '
      
        '    insert into #rs (codigo,cpf,nome, dtInclusao, dtExclusao,end' +
        'ereco,bairro,cidade,cep,email,motivoCancelamento) '
      '    '
      
        '    select c.codigo,c.cgc_cpf,c.nome,c.inclusao,c.exclusao ,c.En' +
        'dereco_Residencial,'
      
        '                           c.Bairro_Residencial, c.Cidade_Reside' +
        'ncial,substring(c.CEP_Residencial,1,15),c.email,substring(ca.Des' +
        'cricao,1,20)'
      '    from contratante c, cancelamento ca'
      '    where c.codigo = @codigo'
      '      and ca.CODIGO = c.Motivo_Cancelamento'
      '      '
      
        '      update #rs set qtdeContrato = (select COUNT(distinct codig' +
        'o) from contratante u where u.cgc_cpf = @cpf) where #rs.codigo =' +
        ' @codigo'
      '      '
      
        '      update #rs set nrvidas = (select COUNT(*) from Usuario u w' +
        'here u.Contratante_Titular = @codigo) where #rs.codigo = @codigo'
      
        '      update #rs set NrParcelasAberto = (select COUNT(*) from re' +
        'ceber r where r.Codigo_Contratante = #rs.codigo and r.Data_Pagam' +
        'ento is null) where #rs.codigo = @codigo'
      
        '      update #rs set vrParcelasAberto = (select isnull(SUM(valor' +
        '),0) from receber r where r.Codigo_Contratante =#rs.codigo and r' +
        '.Data_Pagamento is null) where #rs.codigo = @codigo'
      
        '      select @telefones = ISNULL(fone1,'#39#39') from contratante wher' +
        'e codigo = @codigo'
      
        '      set @telefonesSemFormat = replace(replace(replace(replace(' +
        'REPLACE(@telefones,'#39'('#39','#39#39'),'#39')'#39','#39#39'),'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39' '#39','#39#39')'
      '      '
      
        '      select @FoneAux   = ISNULL(fone2,'#39#39') from contratante wher' +
        'e codigo = @codigo'
      
        '      set @FoneAuxSemFormat = replace(replace(replace(replace(RE' +
        'PLACE(@FoneAux,'#39'('#39','#39#39'),'#39')'#39','#39#39'),'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39' '#39','#39#39')'
      '      --if @codigo = 30835'
      
        '        -- select '#39'log 1'#39' , @codigo, @FoneAux foneaux, @FoneAuxS' +
        'emFormat foneAuxSemFormat, @telefonesSemFormat telefonesSEmforma' +
        't, @telefones telefones'
      
        '      if len(@foneAux) > 9 and CHARINDEX(@FoneAuxSemFormat,@tele' +
        'fonesSemFormat,0) = 0 '
      '      begin'
      '         set @telefones = @telefones + '#39'/'#39' + @FoneAux'
      
        '         set @telefonesSemFormat = @telefonesSemFormat + '#39'/'#39' + @' +
        'FoneAuxSemFormat'
      '      end'
      '      '
      
        '      declare cCelulares cursor for select cast(ddd as varchar(3' +
        ')) + '#39'-'#39' + cast(celular as varchar(10)) tel from celulares ce, c' +
        'ontratante c where ce.codigo = c.codigo and c.cgc_cpf = @cpf ord' +
        'er by id desc'
      '      open cCelulares'
      '      FETCH NEXT FROM cCelulares INTO @foneAux'
      #9'  while @@FETCH_STATUS = 0'
      #9'  begin'
      #9'     set @FoneAuxSemFormat = replace(@foneAux,'#39'-'#39','#39#39')'
      '      --if @codigo = 30835'
      
        '        -- select '#39'log 2'#39' , @codigo, @FoneAux foneaux, @FoneAuxS' +
        'emFormat foneAuxSemFormat, @telefonesSemFormat telefonesSEmforma' +
        't, @telefones telefones'
      #9'     '
      
        '         if len(@foneAux) > 9 and CHARINDEX(@FoneAuxSemFormat,@t' +
        'elefonesSemFormat,0) = 0 and LEN(@foneAux) + LEN(@telefones) <= ' +
        '70 '
      '         begin'
      '            set @telefones = @telefones + '#39'/'#39' + @FoneAux'
      
        '            set @telefonesSemFormat = @telefonesSemFormat + '#39'/'#39' ' +
        '+ @FoneAuxSemFormat'
      '         end'
      '         FETCH NEXT FROM cCelulares INTO @foneAux'
      #9'  end'
      #9'  close cCelulares'
      #9'  deallocate cCelulares'
      
        #9'  update #rs set  telefones= @telefones  where #rs.codigo = @co' +
        'digo'
      #9'  '
      '      '
      '      delete #periodos'
      '      '
      
        '      insert into #periodos select  inclusao, MAX(exclusao) dtEx' +
        'clusao  from Contratante where CGC_CPF = @cpf group by inclusao'
      '      '
      '      '
      
        '      --sum(DATEDIFf(day,Inclusao,dtexclusao)) dias , -- diferen' +
        #231'a em dias'
      
        '      --round(sum(DATEDIFf(day,Inclusao,dtexclusao)) / 365.4,0,1' +
        ') -- anos inteiros'
      
        '      --round((sum(DATEDIFf(day,Inclusao,dtexclusao)) - round(su' +
        'm(DATEDIFf(day,Inclusao,dtexclusao)) / 365.4,0,1) * 365) / 30,0,' +
        '1), -- meses inteiros'
      ''
      
        '      select @tempoContrato = (cast(cast(round(sum(DATEDIFf(day,' +
        'Inclusao,p.dtexclusao)) / 365.4,0,1) as int) as varchar(5))  +'#39' ' +
        'ano(s) e '#39' +'
      #9'  cast(CAST('
      #9'  round((sum(DATEDIFf(day,Inclusao,p.dtexclusao)) -'
      
        #9'  round(sum(DATEDIFf(day,Inclusao,p.dtexclusao)) / 365.4,0,1) *' +
        ' 365) / 30,0,1) as int) as varchar(5)) + '#39' mes(es)'#39')'
      #9'  from #periodos p'
      
        '      update #rs set tempoContrato = @tempoContrato where codigo' +
        ' = @codigo'
      '      '
      '      '
      
        '      FETCH NEXT FROM cUsu INTO @codigo, @cpf,@nome,@Dtexclusao,' +
        '@qtContratos     '
      '      '
      'end'
      'close cUsu'
      'deallocate cUsu'
      'if @ordenacao = 1'
      
        '  select CONVERT(CHAR(10),dtinclusao,103) inclusao, CONVERT(char' +
        '(10),dtExclusao,103) exclusao, * from #rs order by nome'
      'else'
      '  if @ordenacao = 2'
      
        '     select CONVERT(CHAR(10),dtinclusao,103) inclusao, CONVERT(c' +
        'har(10),dtExclusao,103) exclusao, * from #rs order by dtExclusao'
      'else'
      '  if @ordenacao = 3'
      
        '     select CONVERT(CHAR(10),dtinclusao,103) inclusao, CONVERT(c' +
        'har(10),dtExclusao,103) exclusao, * from #rs order by dtInclusao'
      ''
      '    '
      '   '
      '--select * from Cancelamento'
      ''
      '-- sp_relBenefExcluidos'
      '--select * from receber where Codigo_Contratante = 22740'
      ''
      '')
    Left = 819
    Top = 488
  end
  object Altera_Usuario: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'alter TRIGGER Altera_Usuario ON dbo.Usuario '
      ''
      'FOR INSERT, UPDATE'
      ''
      'AS'
      ''
      'declare @plano int, @grau_parentesco int'
      ''
      ''
      'select @plano = c.plano from contratante c, inserted i'
      'where i.contratante_titular = c.codigo'
      ''
      ''
      'Update Usuario '
      
        'set Codigo_Completo = cast(cast(Inserted.codigo as varchar(15)) ' +
        '+ cast(Inserted.digito as varchar(3)) as int)'
      'from Inserted'
      'where Usuario.Codigo = Inserted.Codigo'
      'and Usuario.Digito = Inserted.Digito'
      
        'and usuario.Codigo_Completo <> cast(cast(Inserted.codigo as varc' +
        'har(15)) + cast(Inserted.digito as varchar(3)) as int)'
      ''
      'if update(Grau_Parentesco)'
      'begin'
      '  select @Grau_Parentesco = Grau_Parentesco from inserted'
      ''
      '  if not exists(select * from preco_plano where'
      '                codigo_plano = @plano and '
      '                codigo_grau_parentesco = @grau_parentesco)'
      '  begin'
      
        '      raiserror('#39'N'#227'o foi poss'#237'vel gravar o registro, n'#227'o existe ' +
        'pre'#231'o para o plano X grau de parentesco informado, verifique no ' +
        'cadastro de pre'#231'o por plano'#39',16,1)'
      '      rollback tran'
      '  end'
      ''
      'end')
    Left = 1144
    Top = 211
  end
  object V_CONTRATANTE: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter view v_contratante '
      ''
      'as '
      ''
      
        'select ci.cd_regiao as cd_regiao_res, r.ds_regiao,r.cd_regiao ,c' +
        '.* '
      ''
      
        'from contratante c  left join cidade ci on ci.cd_cidade = c.cd_c' +
        'idade_res left join regiao r on r.cd_regiao = ci.cd_regiao'
      ''
      ''
      ''
      '')
    Left = 1195
    Top = 336
  end
  object sp_AtualizaEvento: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter procedure [dbo].[sp_AtualizaEvento] @tp_evento smallint,@o' +
        'perador smallint, @TipoCobranca int'
      '--set @tp_evento = 2'
      
        '-- se n'#227'o houver nenhum registro no faturamento sem emiss'#227'o de d' +
        'ocumento atualiza o evento'
      
        '-- toda vez que roda pega todos os eventos com status pendente e' +
        ' tenta atualizar, independente do per'#237'odo'
      ''
      'as'
      'if  @tp_evento = 1 -- processamento do faturamento'
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   exists'
      '   (select seq_periodo_fat from  faturamento f'
      '   where f.seq_periodo_fat = evento_fat.seq_periodo_fat)'
      'end'
      'else'
      
        'if  @tp_evento in(2,3,4,21,22,23) --Envio de boleto, D'#233'bito brad' +
        'esco - benespa,CEF,hsbc, itau'
      'begin'
      '   print '#39'ok passou'#39
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '   where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and Emitido_Documento = 0'
      '   and tipo_cobranca = @TipoCobranca)'
      'end'
      'else'
      
        'if  @tp_evento in(5,9,13,17) --vencimento do dia 10(bancos 001,1' +
        '51,275,409)'#9
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '    where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and day(data_vencimento) <= 10'
      '   and Emitido_Documento = 0'
      '   and tipo_cobranca = @TipoCobranca)'
      'end'
      'else'
      
        'if  @tp_evento in(6,10,14,18) --vencimento do dia 20(bancos 001,' +
        '151,275,409'
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '    where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and day(data_vencimento) between 11 and 20'
      '   and Emitido_Documento = 0'
      '   and tipo_cobranca = @TipoCobranca)'
      'end'
      'else'
      
        'if  @tp_evento in(7,11,15,19) --vencimento do dia 25(bancos 001,' +
        '151,275,409)'
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '    where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and day(data_vencimento) between 21 and 25'
      '   and Emitido_Documento = 0'
      '   and tipo_cobranca = @TipoCobranca)'
      'end'
      'else'
      
        'if  @tp_evento in(8,12,16,20) --vencimento do dia 30 (bancos 001' +
        ',151,275,409'
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '    where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and day(data_vencimento) between 26 and 30'
      '   and Emitido_Documento = 0'
      '   and tipo_cobranca = @TipoCobranca)'
      'end'
      'else'
      'if  @tp_evento = 99 --Enviado contas a receber'
      'begin'
      
        '   update evento_fat  set cd_status = 1,data = getdate(),cd_oper' +
        'ador = @operador'
      '   where cd_status = 2'
      '   and tp_evento = @tp_evento'
      '   and'
      '   not exists'
      '   (select seq_periodo_fat from  faturamento f'
      '   where f.seq_periodo_fat = evento_fat.seq_periodo_fat'
      '   and Exportado_Receber = 0)'
      'end'
      ''
      'update periodo_fat set cd_status = 1, dt_finalizacao = getdate()'
      ''
      'where cd_status = 2'
      ''
      'and not exists'
      ''
      '(select * from evento_fat e'
      ' where e.seq_periodo_fat = periodo_fat.seq_periodo_fat'
      ' and cd_status = 2 )'
      ''
      '--select * from faturamento where year(data_vencimento) = 2008'
      '--sp_AtualizaEvento 1,22'
      '-- select * from tipo_evento'
      '-- select * from  evento_fat'
      '--select top 10 * from faturamentos'
      '--select * from tipocobranca order by 1'
      '-- select * from status_fat'
      ''
      ''
      ''
      ''
      '')
    Left = 1144
    Top = 511
  end
  object Sp_incluiEnventoFat: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'alter procedure [dbo].[Sp_incluiEnventoFat] @SeqPeriodo int, @cd' +
        'Operador int'
      ''
      'as'
      ''
      'declare @Qtaux int'
      ''
      'update periodo_fat '
      ''
      
        'set qt_tit = (select count(*) from faturamento where seq_periodo' +
        '_fat = @SeqPeriodo),'
      
        '    dt_fim_proc = getdate() -- indica que finalizou o processame' +
        'nto'
      ''
      ''
      'where  seq_periodo_fat = @SeqPeriodo'
      ''
      '-- inseri processado e enviado contas a receber'
      
        'insert into evento_fat select @SeqPeriodo, tp_evento,getdate(),2' +
        ',@cdOperador,0 from tipo_evento where tp_evento in(1,99)'
      ''
      ''
      '-- Boleto'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 10)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,2,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      ''
      '--itau'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 341)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,23,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- bradesco'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 237)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,3,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      '-- Banespa'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 33)'
      ''
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,4,getdate(),2,@cdOp' +
        'erador ,@qtaux'
      ''
      ''
      '-- Brasil vencto 10'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 1'
      '       and day(data_Vencimento) between 1 and 10)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,5,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      ''
      '-- Brasil vencto 20'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 1'
      '       and day(data_Vencimento) between 11 and 20)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,6,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      '-- Brasil vencto 25'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 1'
      '       and day(data_Vencimento) between 21 and 25)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,7,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      ''
      '-- Brasil vencto 30'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 1'
      '       and day(data_Vencimento) between 26 and 30)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,8,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      ''
      '--'
      ''
      '-- Nossa caixa vencto 10'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 151'
      '       and day(data_Vencimento) between 1 and 10)'
      ''
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,9,getdate(),2,@cdOp' +
        'erador,@qtaux'
      ''
      ''
      '-- Nossa Caixa vencto 20'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 151'
      '       and day(data_Vencimento) between 11 and 20)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,10,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- Nossa Caixa vencto 25'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 151'
      '       and day(data_Vencimento) between 21 and 25)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,11,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      ''
      '-- Nossa Caixa vencto 30'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 151'
      '       and day(data_Vencimento) between 26 and 30)'
      ''
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,12,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- Real vencto 10'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 275'
      '       and day(data_Vencimento) between 1 and 10)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,13,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      ''
      '-- Real vencto 20'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 275'
      '       and day(data_Vencimento) between 11 and 20)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,14,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- Real vencto 25'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 275'
      '       and day(data_Vencimento) between 21 and 25)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,15,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      '-- Real vencto 30'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 275'
      '       and day(data_Vencimento) between 26 and 30)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,16,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      '-- Unibanco vencto 10'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 409'
      '       and day(data_Vencimento) between 1 and 10)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,17,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      '-- Unibanco vencto 20'
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 409'
      '       and day(data_Vencimento) between 11 and 20)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,18,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- Unibanco vencto 25'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 409'
      '       and day(data_Vencimento) between 21 and 25)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,19,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      ''
      '-- Unibanco vencto 30'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 409'
      '       and day(data_Vencimento) between 26 and 30)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,20,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      '-- CEF'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 104)'
      ''
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,21,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      '-- HSBC'
      ''
      'set @Qtaux = (select count(*) from faturamento '
      ' where seq_periodo_fat = @SeqPeriodo'
      '       and tipo_cobranca = 399)'
      ''
      'if @qtAux > 0'
      
        '   insert into evento_fat select @SeqPeriodo,22,getdate(),2,@cdO' +
        'perador,@qtaux'
      ''
      ''
      ''
      ''
      '')
    Left = 1144
    Top = 567
  end
  object tr_u_verifStatusPagProtetico: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'create trigger tr_u_verifStatusPagProtetico on Itens_Pagprotetic' +
        'o'
      ''
      'for update '
      ''
      'as  '
      'if update (MesAno)     '
      
        '   if exists(select * from inserted i where i.status = '#39'C'#39' and i' +
        '.MesAno <> '#39#39')     '
      '   begin          '
      
        '      raiserror('#39'ATEN'#199#195'O! N'#227'o '#233' poss'#237'vel efetuar o pagamento des' +
        'se servi'#231'o, o mesmo encontra-se cancelado '#39',16,1)          '
      '      Rollback tran     '
      '   end  '
      '')
    Left = 768
    Top = 528
  end
  object tr_u_bloqueio_Grupocontratante: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'CREATE trigger tr_u_bloqueio_Grupocontratante on bloqueio_grupoC' +
        'ontrat'
      'for update'
      ''
      'as'
      ''
      'if update(dt_ini_bloqueio)'
      'begin'
      '   raiserror('#39'Data inicio n'#227'o pode ser alterada'#39',16,1)'
      '   rollback tran'
      'end'
      'else if update(dt_fim_gloqueio)'
      'begin'
      
        '   if exists(select * from inserted where dt_fim_gloqueio < dt_i' +
        'ni_bloqueio)'
      '   begin'
      
        '      raiserror('#39'Data fim n'#227'o pode ser menor que a data in'#237'cio'#39',' +
        '16,1)'
      '      rollback tran'
      '   '
      '   end'
      '   else'
      
        '   if exists(select * from deleted d where  dt_fim_gloqueio is n' +
        'ot null)'
      '   begin'
      '      raiserror('#39'Data fim n'#227'o pode ser alterada'#39',16,1)'
      '      rollback tran'
      '   end'
      'end'
      'else if not update(cd_usuario_desbloqueio)'
      'begin'
      '   raiserror('#39'N'#227'o pode haver modifica'#231#227'o nesse registro'#39',16,1)'
      '   rollback tran'
      'end')
    Left = 1112
    Top = 144
  end
  object sp_graficoGastosProtDentManutParteManutPJ: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter  Procedure sp_graficoGastosProtDentManutParteManutPJ -- de' +
        'clare @periodo char(7) declare @valor money exec sp_graficoGasto' +
        'sProtDentManutParteManutPJ 0,0,'#39'01/01/2019'#39','#39'31/01/2019'#39',@period' +
        'o out, @valor out select @periodo, @valor'
      ''
      '@DtIni '#9'    char(10)'#9','
      '@DtFim '#9'    char(10),'
      '@Periodo char(7)  out ,'
      '@valorLiq money out ,'
      
        '@Rol bit --Variavel que determina se vai puxar todos os procedim' +
        'entos, ou apenas do Rol --0 para todos e 1 para apenas rol'
      ''
      'as'
      ''
      ''
      '--set @CdClinica   = null'
      '--set @cdDentista  = null'
      '--set @DtIni       = '#39'01/12/2003'#39
      '--set @DtFim       = '#39'31/12/2003'#39
      ''
      ''
      'declare @PercentIR       decimal(5,2) ,'
      '        @PercentTributos decimal(5,2) ,'
      #9'@VrBaseTributos  decimal(10,2),'
      #9'@VrBaseIR        decimal(10,2),'
      #9'@dtAux date'
      '    '
      ''
      'set dateformat dmy'
      ''
      'select '
      #9'c.descricao as NmClinica'#9'     ,'
      #9'c.codigo    as CodClinica'#9'     ,'
      #9'd.codigo    as CodDentista'#9'     ,'
      #9'd.nome'#9'    as NmDentista'#9'     ,'
      
        #9'case d.lg_recebimento_deposito when 1 then '#39'D'#39' else '#39#39' end lg_r' +
        'ecebimento_deposito,'
      #9'Sum(o.Total_Dentista) as totDentista ,'
      
        #9'Sum(round(o.Total_Dentista - (o.total_dentista * isnull(d.desco' +
        'nto,0) / 100.0),2)) as totDentistaDesc,'
      
        '        Sum(round((o.total_dentista * isnull(d.desconto,0) / 100' +
        '.0),2)) as Desconto,'
      #9'cast(0 as numeric(10,2)) as TotClinica,'
      #9'cast(0 as numeric(10,2)) as VrIr      ,'
      #9'cast(0 as numeric(10,2)) as VrTributos'
      ''
      'into #temp '
      ''
      'from Receber r'
      ''
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join itens_orcamento i on i.orcamento  = o.numero'
      'left join servicos s on s.codigo            = i.servico'
      'left join Usuario   u on u.Codigo_Completo  = r.Codigo_Usuario'
      'left join dentista  d on o.Dentista         = d.codigo'
      'left join clinicas  c on c.codigo           = d.codigo_clinica'
      ''
      'Where '
      '          o.Tipo           = 5'
      '      and r.dt_pagDentista between @DtIni and @DtFim'
      '      and r.Tipo_Documento = 5'
      '      and c.TipoPessoa     = '#39'PJ'#39
      '      and s.rol >= @rol     '
      ''
      'group by'
      #9'c.descricao ,'
      #9'c.codigo    ,'
      #9'd.codigo    ,'
      #9'd.nome'#9'    ,'
      #9'd.lg_recebimento_deposito'
      ''
      'order by'
      #9'c.descricao ,'
      #9'd.nome'#9'    '
      ''
      
        'update #temp set TotClinica = (select sum(totDentistaDesc) from ' +
        '#temp t1 where #temp.CodClinica = t1.CodClinica)'
      ''
      ''
      'select'
      #9'@PercentIR       = Percent_IR'#9#9','
      '        @PercentTributos = Percent_Tributos'#9','
      #9'@VrBaseTributos  = VrBaseCobr_Tributos'#9','
      #9'@VrBaseIR        = VrBaseCobr_Ir'
      ''
      'from preferencia'
      ''
      ''
      ''
      
        'update #temp set VrIr = Round(totDentistaDesc * (@PercentIR / 10' +
        '0),2)'
      'where TotClinica >= @VrBaseIR'
      ''
      
        'update #temp set VrTributos = Round(totDentistaDesc * (@PercentT' +
        'ributos / 100),2)'
      'where TotClinica >= @VrBaseTributos'
      ''
      ''
      
        'select CodClinica, TotClinica , sum( VrIr + VrTributos ) tributo' +
        's'
      ''
      ' into #cliTemp from #temp group by CodClinica,TotClinica'
      ''
      ''
      
        ' -- o periodo '#233' sempre o mes da frente das manuten'#231#245'e(periodo de' +
        ' pagamento)'
      ' set @dtAux = @DtIni'
      ' set @dtAux = DATEADD(month,1,@dtAux)'
      
        ' select @Periodo =  substring(convert(char(10),@dtAux,103),4,7) ' +
        ', @valorLiq = sum(TotClinica - tributos )  from #cliTemp'
      ''
      ''
      ''
      '')
    Left = 970
    Top = 65534
  end
  object sp_graficoGastosProtDentManutParteManutAU: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'alter procedure sp_graficoGastosProtDentManutParteManutAU --decl' +
        'are @periodo char(7), @valor money exec sp_graficoGastosProtDent' +
        'ManutParteManutAU '#39'01/01/2019'#39','#39'31/01/2019'#39',@periodo out, @valor' +
        ' out'
      ''
      '-- Autonomo'
      ''
      '@DtIni '#9'    char(10)'#9','
      '@DtFim '#9'    char(10),'
      '@Periodo char(7)  out ,'
      '@valorLiq money out ,'
      
        '@Rol bit --Variavel que determina se vai puxar todos os procedim' +
        'entos, ou apenas do Rol --0 para todos e 1 para apenas rol'
      ''
      'as'
      ''
      'declare @dtAux as date'
      ''
      'set dateformat dmy'
      ''
      ''
      'declare @PercentInss     decimal(5,2) '
      ''
      'select'#9'@PercentInss = isnull(Percent_Inss,0) from preferencia'
      ''
      'select '
      #9'c.descricao as NmClinica'#9'     ,'
      #9'c.codigo    as CodClinica'#9'     ,'
      #9'd.codigo    as CodDentista'#9'     ,'
      #9'd.nome'#9'    as NmDentista'#9'     ,'
      #9'Sum(o.Total_Dentista) as totDentista ,'
      
        #9'Sum(round(o.Total_Dentista - (o.total_dentista * isnull(d.desco' +
        'nto,0) / 100.0),2)) as totDentistaDesc,'
      
        '        Sum(round((o.total_dentista * isnull(d.desconto,0) / 100' +
        '.0),2)) as Desconto,'
      
        '        round(Sum(round(o.Total_Dentista - (o.total_dentista * i' +
        'snull(d.desconto,0) / 100.0),2)) * @PercentInss /100,2) as VrIns' +
        's ,'
      
        '        Sum(round(o.Total_Dentista - (o.total_dentista * isnull(' +
        'd.desconto,0) / 100.0),2)) -'
      
        '        round(Sum(round(o.Total_Dentista - (o.total_dentista * i' +
        'snull(d.desconto,0) / 100.0),2)) * @PercentInss /100,2) as VrLiq' +
        'uido,'
      '        @PercentInss as PercentInss,'
      #9#9'cast(0 as numeric(10,2)) as TotClinica'
      ''
      'into #temp '
      ''
      'from Receber r'
      ''
      'left join Orcamento o on o.Numero           = r.Orcamento'
      'left join itens_orcamento i on i.orcamento  = o.numero'
      'left join servicos s on s.codigo            = i.servico'
      'left join Usuario   u on u.Codigo_Completo  = r.Codigo_Usuario'
      'left join dentista  d on o.Dentista         = d.codigo'
      'left join clinicas  c on c.codigo           = d.codigo_clinica'
      ''
      'Where '
      '          o.Tipo           = 5'
      '      and r.dt_pagDentista between @DtIni and @DtFim'
      '      and r.Tipo_Documento = 5'
      '      and c.TipoPessoa     = '#39'AU'#39
      '  and s.rol >= @rol     '
      ''
      'group by'
      #9'c.descricao ,'
      #9'c.codigo    ,'
      #9'd.codigo    ,'
      #9'd.nome'#9'    '
      ''
      'order by'
      #9'c.descricao ,'
      #9'd.nome'#9'    '
      ''
      
        '-- o periodo '#233' sempre o mes da frente das manuten'#231#245'e(periodo de ' +
        'pagamento)'
      ' set @dtAux = @DtIni'
      ' set @dtAux = DATEADD(month,1,@dtAux)'
      ' '
      
        'select  @Periodo = substring(convert(char(10),@dtAux,103),4,7)  ' +
        ', @valorLiq = sum(vrLiquido) from #temp')
    Left = 978
    Top = 46
  end
  object sp_graficoGastosProtDentManut: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'alter procedure sp_graficoGastosProtDentManut '
      ''
      '@DtIni char(10),'
      '@DtFim char(10),'
      
        '@Rol bit --Variavel que determina se vai puxar todos os procedim' +
        'entos, ou apenas do Rol --0 para todos e 1 para apenas rol'
      ''
      'as'
      ''
      'set dateformat dmy'
      ''
      'declare @dtIniManutChar char(10)'
      'declare @dtFimManutChar char(10)'
      'declare @dataIni date'
      'declare @dataFim date'
      
        'declare @dataIniManut date -- tem essas variaveis pq o manutenca' +
        'o sempre olha o mes anterior'
      'declare @dataFimManut date'
      ''
      'declare @mesAno char(7)'
      'declare @Periodo char(7)'
      'declare @valorLiq money '
      ''
      ''
      'create table #rs'
      '(mesAno varchar(7),'
      ' vrDentista money,'
      ' vrProtetico money,'
      ' vrManutencao money)'
      ''
      'create table #t'
      '(tipo varchar(20),'
      ' codigo int,'
      ' nome varchar(60),'
      ' tipoPessoa varchar(2),'
      ' mesAno varchar(7),'
      ' vrComDesconto money,'
      ' vrLiquido money,'
      ' optante_simples  bit)'
      ' '
      'set @dataIni =  @DtIni'
      'set @dataFim =  @DtFim'
      ''
      ''
      ''
      'while @dataIni <= @dataFim'
      'begin'
      '   '
      '   set @dataIniManut = DATEADD(MONTH,-1,@dataIni)'
      '   set @dataFimManut = DATEADD(day,-1,@dataIni)'
      ''
      '   set @mesAno = substring(convert(char(10),@dataIni,103),4,7)'
      '   insert into #t'
      '   '
      '   select'
      '   '#39'protetico'#39' tipo,'
      '   clinicas.codigo,'
      '   clinicas.descricao nome,'
      '   clinicas.TipoPessoa,'
      '   Itens_PagProtetico.MesAno,'
      
        '   sum((valor * (100 - isnull(protetico.desconto,0)) / 100)) as ' +
        'vrComDesconto,'
      
        '   sum((valor * (100 - isnull(protetico.desconto,0)) / 100)) as ' +
        'vrLiquido,'
      '   clinicas.optante_simples'
      '   '
      '   from Itens_PagProtetico'
      
        '   left join Protetico on (Itens_PagProtetico.Protetico = Protet' +
        'ico.Codigo)'
      
        '   left join Clinicas on (Protetico.Codigo_Clinica = Clinicas.Co' +
        'digo)'
      
        '   left join Servicos on (Servicos.codigo = Itens_PagProtetico.s' +
        'ervico)'
      '   '
      '   where Itens_PagProtetico.MesAno = @mesAno'
      #9'and Servicos.Rol>=@rol'
      '   '
      
        '   group by Clinicas.descricao,Clinicas.codigo, clinicas.TipoPes' +
        'soa,Itens_PagProtetico.MesAno,clinicas.optante_simples'
      ''
      
        '   update #t  set vrLiquido = vrLiquido - (vrComDesconto * Perce' +
        'nt_tributos /100)  from Preferencia pref where TipoPessoa = '#39'PJ'#39 +
        ' and optante_simples = 0  and vrComDesconto >= vrBaseCobr_tribut' +
        'os and mesAno = @mesAno and tipo = '#39'protetico'#39
      
        '   update #t  set vrLiquido = vrLiquido - (vrComDesconto * Perce' +
        'nt_ir /100)  from Preferencia pref where TipoPessoa = '#39'PJ'#39' and o' +
        'ptante_simples = 0  and  vrComDesconto >= VrBaseCobr_ir and mesA' +
        'no = @mesAno and tipo = '#39'protetico'#39
      
        '   update #t  set vrLiquido = vrLiquido - (vrComDesconto * Perce' +
        'nt_inss /100)  from Preferencia pref where TipoPessoa = '#39'AU'#39'  an' +
        'd mesAno = @mesAno and tipo = '#39'protetico'#39
      '   '
      '   insert into #t'
      '   '
      '   select '
      '   '#39'Dentista'#39' Tipo,'
      '   clinicas.codigo,'
      '   clinicas.descricao nome,'
      '   clinicas.TipoPessoa,'
      '   Itens_PagDentista.MesAno,'
      '   sum((valor * (100 - dentista.desconto) / 100)) vrComDesconto,'
      '   sum((valor * (100 - dentista.desconto) / 100)) vrLiquido,'
      '   clinicas.optante_simples'
      '   '
      '   from Itens_PagDentista'
      
        '   left join Orcamento on (Itens_PagDentista.Orcamento = Orcamen' +
        'to.Numero)'
      '   left join Dentista on (Orcamento.Dentista = Dentista.Codigo)'
      
        '   left join Clinicas on (Dentista.Codigo_Clinica = ClinicaS.Cod' +
        'igo)'
      
        '   left join Servicos on (Servicos.codigo = Itens_PagDentista.se' +
        'rvico)   '
      '   '
      '   where Itens_PagDentista.MesAno = @mesAno'
      '     and Servicos.Rol>=@rol'
      '   '
      '   group by Itens_PagDentista.MesAno,'
      '   clinicas.codigo,'
      '   clinicas.descricao,'
      '   clinicas.TipoPessoa,'
      '   clinicas.optante_simples'
      '   '
      
        '   update #t set vrLiquido = vrLiquido - (vrComDesconto * Percen' +
        't_tributos /100)  from Preferencia pref where TipoPessoa = '#39'PJ'#39' ' +
        'and optante_simples = 0  and vrComDesconto >= vrBaseCobr_tributo' +
        's and tipo = '#39'dentista'#39'  and mesAno = @mesAno'
      
        '   update #t set vrLiquido = vrLiquido - (vrComDesconto * Percen' +
        't_ir /100)  from Preferencia pref where TipoPessoa = '#39'PJ'#39' and vr' +
        'ComDesconto >= VrBaseCobr_ir and tipo = '#39'dentista'#39'  and mesAno =' +
        ' @mesAno'
      
        '   update #t set vrLiquido = vrLiquido - (vrComDesconto * Percen' +
        't_inss /100)  from Preferencia pref where TipoPessoa = '#39'AU'#39'  and' +
        ' tipo = '#39'dentista'#39'  and mesAno = @mesAno'
      ''
      '   set @valorLiq = 0'
      '   set @dtIniManutChar = convert(char(10),@dataIniManut,103)'
      '   set @dtFimManutChar = convert(char(10),@dataFimManut,103)'
      
        '   exec sp_graficoGastosProtDentManutParteManutPJ @dtIniManutCha' +
        'r, @dtFimManutChar, @Periodo out,@valorLiq out, @rol '
      '  -- print '#39'log 1'#39
      '   --select @Periodo, @valorLiq'
      ''
      
        '   insert into #rs select distinct @Periodo,0,0,0  where not exi' +
        'sts(select * from #rs rs where rs.mesAno = @Periodo)'
      '   --print '#39'log 2'#39
      '   --select @Periodo, @valorLiq'
      
        '   update #rs set vrManutencao = @valorLiq where mesAno = @Perio' +
        'do'
      '   set @periodo = '#39#39
      '   set @valorLiq = 0'
      ''
      
        '   exec sp_graficoGastosProtDentManutParteManutAU @dtIniManutCha' +
        'r, @dtFimManutChar, @Periodo out,@valorLiq out, @rol '
      
        '   insert into #rs select distinct @Periodo,0,0,0  where not exi' +
        'sts(select * from #rs rs where rs.mesAno = @Periodo)'
      
        '   update #rs set vrManutencao = vrManutencao + isnull(@valorLiq' +
        ',0) where mesAno = @Periodo'
      ''
      '   --print '#39'log 3'#39
      
        '   set @dataIniManut = DATEADD(MONTH,1,@dataIniManut) -- tem ess' +
        'as variaveis pq o manutencao sempre olha o mes anterior'
      '   set @dataFimManut = DATEADD(MONTH,1,@dataFimManut)'
      ''
      '   set @dataIni = DATEADD(MONTH,1,@dataIni)'
      ''
      'end'
      ''
      
        'insert into #rs select distinct mesAno,0,0,0 from #t t where not' +
        ' exists(select * from #rs rs where rs.mesAno = t.mesAno)'
      ''
      
        'update #rs set vrDentista = (select sum(vrLiquido) from #t where' +
        ' #t.mesAno = #rs.mesAno and tipo = '#39'Dentista'#39')'
      
        'update #rs set vrProtetico = (select sum(vrLiquido) from #t wher' +
        'e #t.mesAno = #rs.mesAno and tipo = '#39'Protetico'#39')'
      
        '--update #rs set vrManutencao = (select sum(vrLiquido) from #t w' +
        'here #t.mesAno = #rs.mesAno and tipo = '#39'Manutencao'#39')'
      ''
      
        'select * , isnull(vrDentista,0) +  isnull(vrProtetico,0) + isnul' +
        'l(vrManutencao,0) as total from #rs'
      ''
      '')
    Left = 978
    Top = 110
  end
  object tr_i_u_descontoXIdade: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create trigger tr_i_u_descontoXIdade on descontoXIdade'
      ''
      'for insert,update  '
      ''
      'as'
      ''
      
        'if exists(select * from descontoXIdade d , inserted i where (i.c' +
        'd_plano = d.cd_plano '
      
        '                                                        and (i.i' +
        'dade_min between d.idade_min and d.idade_max or i.idade_max betw' +
        'een d.idade_min and d.idade_max) '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'and d.dt_fim is null'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'and i.indice <> d.indice))'
      'begin'
      
        '   raiserror('#39'idade minima ou idade maxima em conflito com outro' +
        ' registro ativo para esse plano , operacao cancelada'#39',16,1)'
      '   rollback tran'
      'end'
      ''
      
        'if exists(select * from inserted i where i.idade_min > i.idade_m' +
        'ax)'
      'begin'
      
        '   raiserror('#39'idade minima deve ser menor que idade maxima'#39',16,1' +
        ')'
      '   rollback tran'
      'end')
    Left = 1232
    Top = 241
  end
  object sp_relContratInadimplente: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure sp_relContratInadimplente'
      'as'
      ''
      'create table #t'
      '(cd_contratante int,'
      ' nm_contratante varchar(50),'
      ' dt_inclusao datetime,'
      ' qtMensalid  int,'
      ' qtManut  int)'
      ''
      ' insert into #t '
      'select c.codigo, c.nome, c.Inclusao, 0,0 '
      ''
      'from contratante c'
      #9#9#9
      'where c.lg_inadimplente = 1'
      '  and c.Exclusao is null'
      ''
      ''
      
        'update #t set qtMensalid = (select count(*) from receber r where' +
        ' r.Codigo_Contratante = #t.cd_contratante '
      
        '                                                             and' +
        ' r.Data_Pagamento  is null '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9' and r.Tipo_Documento = 1)'
      ''
      
        'update #t set qtManut = (select count(*) from receber r where r.' +
        'Codigo_Contratante = #t.cd_contratante '
      
        '                                                             and' +
        ' r.Data_Pagamento  is null '
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9' and r.Tipo_Documento = 5)'
      ''
      'select * from #t  order by dt_inclusao')
    Left = 1274
    Top = 458
  end
  object tr_i_servicos: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create trigger tr_i_servicos on servicos'
      'for insert'
      ''
      'as'
      'declare @id as int'
      ''
      'set @id = (select max(indice) from ServIncompativeisOdonto) + 1'
      ''
      
        'insert into ServIncompativeisOdonto select @id , 110 , 1 , codig' +
        'o  from inserted  ')
    Left = 1280
    Top = 351
  end
  object SpArqSusep: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'ALTER Procedure SpArqSusep ---'#39'21/06/2011'#39','#39'S'#39
      ''
      '@DtLimite char(10),'
      
        '@oficializa char(1) -- indica se oficializar(commit ou d'#225' rollba' +
        'ck) '
      ''
      'as'
      ''
      'Declare @data datetime'
      ''
      'set dateformat dmy'
      ''
      'set @data = getdate()'
      ''
      'begin tran'
      ''
      'update usuario -- usuarios de inclus'#227'o na susep'
      ''
      'set reinclusao_sib = @data,'
      
        '    alterado = 0 -- caso esteja marcado pra ser enviado como alt' +
        'era'#231#227'o desmarca'
      ''
      
        'where dtreinclusao is not null and reinclusao_sib is null -- qua' +
        'ndo tem data de reinclus'#227'o e reinclusao_sib esta vazia'
      
        '-- significa que esse usuario foi reincluido no plano ent'#227'o mand' +
        'a para ans no sib como registro tipo 8'
      
        'and Inclusao_Susep is not null and cco is not null and Data_Excl' +
        'usao is null -- nao pode estar excluido'
      '       and dtreinclusao <= @DtLimite + '#39' 23:59'#39
      #9'   and usuario.lg_naoEnviarSib = 0'
      ''
      ''
      'update usuario -- usuarios de inclus'#227'o na susep'
      'set Inclusao_Susep = @data,'
      
        '    alterado = 0 -- caso esteja marcado pra ser enviado como alt' +
        'era'#231#227'o desmarca'
      'where  Inclusao_Susep is null'
      '       and data_inclusao <= @DtLimite + '#39' 23:59'#39
      #9'   and usuario.lg_naoEnviarSib = 0'
      ''
      
        '-- se o registro j'#225' estiver sendo enviado como inclusao, nao env' +
        'ia como alteracao'
      '-- ele vai no proximo envio'
      ''
      'update usuario -- usuario com alteracao'
      'set alteracao_Susep = @data, alterado = 0'
      'where alterado = 1'
      '  and Inclusao_Susep <> @data'
      '  and cco is not null'
      '  and Data_Exclusao is null'
      
        '  and (data_alteracao <= @DtLimite + '#39' 23:59'#39' or data_alteracao ' +
        'is null)'
      '  and usuario.lg_naoEnviarSib = 0'
      ''
      
        '-- se o registro j'#225' estiver sendo enviado como inclusao ou alter' +
        'acao, nao envia como'
      '-- exclusao ele vai no proximo envio'
      ''
      'update usuario -- usuarios de exclus'#227'o na susep'
      
        'set exclusao_Susep = @data,alterado = 0 -- caso esteja marcado p' +
        'ara envio n'#227'o envia...'
      'where'
      '      exclusao_Susep is null'
      '  and Data_Exclusao  is not null'
      '  and Inclusao_Susep is not null'
      '  and cco is not null'
      '  and Inclusao_Susep <> @data'
      '  and (alteracao_susep <> @data or alteracao_susep is null)'
      '  and data_exclusao <= @DtLimite + '#39' 23:59'#39
      '  and usuario.lg_naoEnviarSib = 0'
      ''
      'select '
      '    2 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo,'
      #9'p.codigo_susep,'
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        '#39'0000000000'#39' as data_exclusao, -- qdo for inclusao nao p' +
        'ode enviar data de exclusao'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39')   as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome,'
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo,'
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial,'
      #9'c.Cidade_Residencial,'
      #9'c.Estado_Residencial,'
      #9'c.CEP_Residencial as CEP,'
      '        '#39'1'#39' as FlagIncl_Excl,'
      #9'u.CPF,'
      #9'u.Nm_mae,'
      #9'u.PIS_PASEP,'
      #9'p.flag_envio_ans,'
      #9'c.Numero_Res,'
      '        c.Complemento_Res,'
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      #9'cd_ans_anterior,'
      #9'p.Fis_Jur,'
      '        u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' as dt_exclusao_orig,'
      '        isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,'
      '       ci.cd_ibge,'
      '       '#39#39' novo_cod_usu_plano'
      ''
      '    into #temp'
      ''
      'from'
      #9'usuario u, '
      #9'contratante c, '
      #9'plano p,        '
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci '
      '        '
      ''
      '  where '
      #9'u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '    and ci.cd_cidade = c.cd_cidade_res'
      '    and Inclusao_Susep = @data'
      '    '
      '    --and 2 = 1'
      '    '
      ''
      'union all'
      ''
      'select --top 162'
      '    3 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo, '
      #9'p.codigo_susep, '
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        isnull(convert(char(10),u.Data_Exclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Exclusao,'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39') as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome, '
      '    case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo, '
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial, '
      #9'c.Cidade_Residencial, '
      #9'c.Estado_Residencial, '
      #9'c.CEP_Residencial as CEP,'
      '        '#39'2'#39' as FlagIncl_Excl, '
      #9'u.CPF, '
      #9'u.Nm_mae, '
      #9'u.PIS_PASEP, '
      #9'p.flag_envio_ans, '
      #9'c.Numero_Res, '
      '        c.Complemento_Res, '
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      '        cd_ans_anterior,'
      #9'p.Fis_Jur,'
      #9'u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      'u.cd_motivo_inclusao,'
      'u.cei,'
      
        '        isnull(convert(char(10),u.dt_exclusao_orig,103)  ,'#39'00000' +
        '00000'#39')   as dt_exclusao_orig,'
      
        '    isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,ci.cd_ibg' +
        'e, '#39#39' novo_cod_usu_plano'
      'from '
      #9'usuario u , '
      #9'contratante c, '
      #9'plano p,'
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      '  where u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '   and ci.cd_cidade = c.cd_cidade_res'
      '    and Alteracao_Susep = @data'
      '    --and 2  = 1'
      ''
      ''
      'union all'
      ''
      'select '
      '    1 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo, '
      #9'p.codigo_susep, '
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        isnull(convert(char(10),u.Data_Exclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Exclusao,'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39') as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome, '
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo, '
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial, '
      #9'c.Cidade_Residencial, '
      #9'c.Estado_Residencial, '
      #9'c.CEP_Residencial as CEP,'
      '        '#39'3'#39' as FlagIncl_Excl, '
      #9'u.CPF, '
      #9'u.Nm_mae, '
      #9'u.PIS_PASEP, '
      #9'p.flag_envio_ans, '
      #9'c.Numero_Res, '
      '        c.Complemento_Res, '
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '        c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      '        cd_ans_anterior,'
      #9'p.Fis_Jur,'
      #9'u.codigo_ans,'
      
        '        '#39'0000000000'#39' as dt_migracao, -- n'#227'o se aplica na exclus'#227 +
        'o'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' dt_exclusao_orig,'
      
        '    isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,ci.cd_ibg' +
        'e,novo_cod_usu_plano'
      'from '
      #9'usuario u , '
      #9'contratante c, '
      #9'plano p,'
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      'where     u.Codigo = c.codigo'
      '      and c.plano  = p.codigo'
      '      and g.codigo = u.grau_parentesco'
      '      and c1.codigo = u.contratante_titular'
      '      and ci.cd_cidade = c.cd_cidade_res'
      '      and exclusao_Susep = @data'
      '      --and 2 = 1'
      ''
      ''
      'union'
      ''
      'select -- reinclus'#227'o'
      '    4 ordem,'
      '    u.codigo,'
      '    u.cco + u.dg_cco cco,'
      '    u.dg_cco,'
      #9'u.codigo_completo,'
      #9'p.codigo_susep,'
      
        '        isnull(convert(char(10),u.Data_Inclusao,103)  ,'#39'00000000' +
        '00'#39')   as Data_Inclusao,'
      
        '        --'#39'0000000000'#39' as data_exclusao, -- qdo for inclusao nao' +
        ' pode enviar data de exclusao'
      
        '        isnull(convert(char(10),u.dt_exclusao_orig,103),'#39'0000000' +
        '000'#39')   as data_exclusao, -- para reinclusao reenvia a data de e' +
        'xclusao original'
      
        '        isnull(convert(char(10),u.Data_Nascimento,103),'#39'00000000' +
        '00'#39')   as Data_Nascimento,'
      
        '        isnull(convert(char(10),u.dtReinclusao   ,103),'#39'00000000' +
        '00'#39')   as dtReinclusao,'
      '        u.nome,'
      #9'case u.sexo when '#39'F'#39' then '#39'3'#39' else '#39'1'#39' end as sexo,'
      #9'c.Endereco_Residencial,'
      '        c.Bairro_Residencial,'
      #9'c.Cidade_Residencial,'
      #9'c.Estado_Residencial,'
      #9'c.CEP_Residencial as CEP,'
      '        '#39'8'#39' as FlagIncl_Excl, -- 8 eh reinclus'#227'o'
      #9'u.CPF,'
      #9'u.Nm_mae,'
      #9'u.PIS_PASEP,'
      #9'p.flag_envio_ans,'
      #9'c.Numero_Res,'
      '        c.Complemento_Res,'
      #9'g.cd_ans as grau_parentesco,'
      '        u.motivo_cancelamento,'
      '  c1.cgc_cpf as Campo33CNPJ,'
      '        cast(c.codigo as varchar(15)) + '#39'0'#39' as Campo34Cdtitular,'
      #9'cd_ans_anterior,'
      #9'p.Fis_Jur,'
      '      u.codigo_ans,'
      
        '        isnull(convert(char(10),u.dt_migracao,103)  ,'#39'0000000000' +
        #39')   as dt_migracao,'
      '        u.cd_motivo_inclusao,'
      '        u.cei,'
      '        '#39'0000000000'#39' as dt_exclusao_orig,'
      '        isnull(u.NrPlanoOUtOp,'#39'000000000'#39') as NrPlanoOUtOp,'
      '       ci.cd_ibge,'
      '       '#39#39' novo_cod_usu_plano'
      '    '
      'from'
      #9'usuario u, '
      #9'contratante c, '
      #9'plano p,        '
      #9'grau_parentesco g,'
      '        contratante c1,'
      '        cidade ci'
      ''
      '  where '
      #9'u.Codigo = c.codigo'
      '    and c.plano  = p.codigo'
      '    and g.codigo = u.grau_parentesco'
      '    and c1.codigo = u.contratante_titular'
      '    and ci.cd_cidade = c.cd_cidade_res'
      '    and reinclusao_sib = @data'
      '    --and 2 = 1'
      ''
      ''
      'order by ordem, u.codigo, g.cd_ans'
      ''
      
        '-- Corrigido em 28/09/2011, estava mandando erroneamente o codig' +
        'o do titular pela regra inicial do sistema que era sempre o usua' +
        'rio com digito zero.'
      
        'update #temp set Campo34Cdtitular = (select top 1 cast(u.codigo_' +
        'completo as varchar(15)) from usuario u where u.codigo = #temp.c' +
        'odigo and u.grau_parentesco = 1 and Data_Exclusao is null and #t' +
        'emp.FlagIncl_Excl <> '#39'3'#39' and #temp.grau_parentesco <> '#39'01'#39' '
      'order by data_inclusao desc)'
      ''
      
        'update #temp set motivo_cancelamento =  cd_sib from cancelamento' +
        ' c where c.codigo = motivo_cancelamento'
      'select * from #temp'
      ''
      'if @@rowcount > 0'
      '   update paramANS set UltArqSusep =  UltArqSusep + 1'
      ''
      ''
      'if @oficializa = '#39'S'#39
      '   commit'
      'else'
      '  rollback   '
      '--select * from grau_parentesco'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1278
    Top = 86
  end
  object Query2: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      '/*'
      '  declare'
      '  @VrDesconto    smallmoney ,'
      '  @VrDescUnit    smallmoney ,'
      '  @VrDescUsu     smallmoney '
      ''
      
        '  exec SpCalculaDesconto 38307,383071,'#39'29/08/2020'#39',@VrDesconto o' +
        'utput,@VrDescUnit output,@vrDescUsu output'
      
        '  select @VrDesconto vrDesconto ,@VrDescUnit vrDescontoUnit ,@vr' +
        'DescUsu vrDescontoUsu'
      ''
      '*/'
      'ALTER Procedure SpCalculaDesconto --11553'
      ''
      '@CdContratante int,'
      
        '@cdUsuario     int = null, -- caso queira pesquisar um usu'#225'rio e' +
        'spec'#237'fico'
      '@DtBase        char(10) ,'
      '@VrDesconto    smallmoney output ,'
      '@VrDescUnit    smallmoney output,'
      
        '@VrDescUsu     smallmoney output  -- se informado o usuario indi' +
        'ca se este tem desconto'
      ''
      ''
      'as'
      ''
      ''
      'set dateformat dmy'
      ''
      'Declare @Plano '#9#9' int'#9','
      #9'@QtdeUsuario '#9' smallint,'
      #9'@IdadeMaxCrianca tinyint,'
      #9'@VrDesc          smallmoney,'
      #9'@ConsideraCrianca bit ,'
      #9'@descIdadeAux smallmoney,'
      '     @descIdadeAuxPeloCodigoUnitario smallmoney,'
      '     @descTemp smallmoney'
      ''
      'set @VrDesconto = 0'
      'set @VrDescUnit = 0'
      'set @VrDescUsu  = 0'
      'set @descIdadeAuxPeloCodigoUnitario = 0'
      ''
      ''
      
        'select @plano = plano from contratante where codigo = @CdContrat' +
        'ante'
      ''
      ''
      
        '-- Pega a idade maxima considerada crian'#231'a, pq crian'#231'a n'#227'o conta' +
        '(qtde de dependentes)para dar desconto'
      '--  conforme tabela DescontoxNroUsuarios'
      ''
      'select @IdadeMaxCrianca = IdadeMaxCrianca from preferencia'
      
        'if(select MAX(idade_max) from descontoXIdade where cd_plano = @P' +
        'lano and idade_max > @IdadeMaxCrianca)  > 0'
      
        '  select @IdadeMaxCrianca = MAX(idade_max) from descontoXIdade w' +
        'here cd_plano = @Plano'
      ''
      '--select IdadeMaxCrianca from preferencia'
      '-- Pega a qtde de usuarios do contratante para dar o desconto'
      ''
      'select @QtdeUsuario = count(*) '
      ''
      'from'
      ''
      #9'usuario '#9'u,'
      #9'contratante '#9'c,'
      #9'plano'#9#9'p'
      ''
      ''
      'where'
      ''
      
        '         -- alterado em 06/12/07 para considerar desconto antes ' +
        'olha a qtde de usuarios do contratante titular'
      
        '         -- agora olha qtde de usuarios do contratante, para ate' +
        'nder pessoas juridicas... versao do programa 2.1.7.5'
      '--'#9'    c.codigo         = u.contratante_titular'
      #9'    c.codigo         = u.codigo'
      #9'and (u.data_exclusao is null or u.data_exclusao >= @DtBase)'
      #9'and (c.exclusao      is null or c.exclusao      >= @DtBase)'
      #9'and c.plano          = @plano'
      #9'and c.codigo '#9'     = @CdContratante'
      #9'and p.codigo         = c.plano        '
      
        #9'and ((p.ConsideraCrianca = 0 and ceiling(datediff(day,Data_Nasc' +
        'imento,@DtBase)/365.25) - 1   >  @IdadeMaxCrianca) -- Crian'#231'as n' +
        #227'o contam pq j'#225' possuem desconto'
      '             or p.consideraCrianca = 1)'
      
        '        -- o comando ceiling arredonda sempre para o inteiro mai' +
        's pr'#243'ximo'
      #9'-- est'#225' dividindo por 365.25 por causa do ano bixesto'
      
        '        -- verifica se o plano consedera criana ou n'#227'o para dar ' +
        'o desconto'
      ''
      
        'select @VrDesc = @QtdeUsuario * Valor_Desconto, @VrDescUnit = is' +
        'null(Valor_Desconto,0)'
      ''
      ''
      ''
      'from DescontoxNroUsuarios d'
      ''
      'where'
      #9'    d.codigo_plano = @plano'
      #9'and @QtdeUsuario between d.Qtde_Usuarios1 and d.Qtde_Usuarios2'
      ''
      
        '--select '#39'log 1'#39' log1, @VrDesc vrDesc, @QtdeUsuario QtdeUsuario,' +
        ' @VrDescUnit VrDescUnit'
      ''
      'if @VrDesc is null'
      '   set @VrDesc = 0'
      ''
      'if @VrDescUnit is null '
      '  set @VrDescUnit = 0'
      ''
      ''
      ''
      
        '-- verifica se ha parametriza'#231'ao nesse plano de desconto por ida' +
        'de'
      
        'if exists(select * from descontoXIdade d where d.cd_plano = @Pla' +
        'no)'
      'begin'
      ''
      
        '   select identity(int,1,1) as id, * into #descIdade from descon' +
        'toXIdade d where d.cd_plano  = @Plano   -- armazena todas as fai' +
        'xas de descontos progressivos  na temp'
      '   --SELECT * FROM #descIdade'
      '   declare @ini as int'
      '   declare @fim as int'
      '   select @ini = min(id) from #descIdade'
      '   select @fim = max(id) from #descIdade'
      '   set @descIdadeAux = 0'
      
        '   while @ini <= @fim  -- percorre a temp procurando qtos benefi' +
        'ciarios est'#227'o na faixa de idade_min e idade_max'
      '   begin'
      '      '
      
        '      -- nessa variavel acumula todos os descontos de eventuais ' +
        'beneficiarios nas faixas de idade de desconto'
      '      set @descTemp = 0'
      
        '      select @descTemp =  isnull(count(*) * max(valor_desconto),' +
        '0) from #descIdade d, '
      #9'                                        usuario u '
      #9#9#9#9#9#9#9#9#9'   where u.codigo = @CdContratante '
      
        #9#9#9#9#9#9#9#9#9'     and cast(round(datediff(day,Data_Nascimento,getdat' +
        'e())/365.25,1,1) as int) between d.idade_min and d.idade_max'
      #9#9#9#9#9#9#9#9#9#9' and d.id = @ini'
      #9' if @descTemp is not null'
      #9'   set @descIdadeAux = @descIdadeAux + @descTemp'#9#9#9#9#9#9#9#9#9' '
      #9' '
      
        '      --print '#39'log 3.2 '#39' + cast(@descIdadeAux as varchar(15))'#9#9#9 +
        #9#9#9#9#9#9#9' '
      #9#9#9#9#9#9#9#9#9#9' '
      
        #9'  -- nessa variavel @descIdadeAuxPeloCodigoUnitario so armazena' +
        ' quando passar o codigo '#9#9#9#9#9#9#9#9#9' '
      
        '      if @cdUsuario is not null and @descIdadeAuxPeloCodigoUnita' +
        'rio = 0 '
      '      begin'
      
        '         select @descIdadeAuxPeloCodigoUnitario = isnull(count(*' +
        ') * max(valor_desconto),0) from #descIdade d, '
      #9'                                        usuario u '
      #9#9#9#9#9#9#9#9#9'   where u.codigo = @CdContratante '
      
        #9#9#9#9#9#9#9#9#9'     and cast(round(datediff(day,Data_Nascimento,getdat' +
        'e())/365.25,1,1) as int) between d.idade_min and d.idade_max'
      #9#9#9#9#9#9#9#9#9#9' and d.id = @ini'
      #9#9#9#9#9#9#9#9#9#9' and u.Codigo_Completo = @cdUsuario'#9#9#9#9#9#9#9#9#9#9' '
      #9'  end'#9#9#9#9#9#9#9#9#9' '
      '      set @ini = @ini + 1'
      '--      print '#39'log3 '#39' + CAST( @descIdadeAux AS VARCHAR(20))'
      '   end'
      ''
      ''
      'end'
      ''
      '-- Verifica se este usu'#225'rio em espec'#237'fico possui desconto'
      ''
      'if @cdUsuario is not null'
      'begin'
      '--   PRINT '#39'LOG 4'#39
      '   select @ConsideraCrianca = ConsideraCrianca'
      '   from  plano where codigo = @plano'
      ''
      '   if @ConsideraCrianca = 0 -- considera'
      '   begin'
      '--       PRINT '#39'LOG 5'#39
      ''
      
        '        -- se o usuario for crianca e o plano nao considera cria' +
        'nca para desconto entao nao tem'
      
        '        -- desconto para esta crianca, pois assume-se que no cad' +
        'astro de pre'#231'o do plano por grau de parentesco'
      '        -- o valor desse usuario '#233' diferenciado(menor)'
      '        '
      #9'if not exists (select * from usuario u'
      '           where'
      #9'          u.codigo_completo = @cdUsuario'
      
        '  '#9'      and ceiling(datediff(day,Data_Nascimento,@DtBase)/365.2' +
        '5) - 1   >  @IdadeMaxCrianca)'
      '        begin'
      '--           '#9'PRINT '#39'LOG 6'#39
      '           set @VrDescUsu = 0'
      
        '           set @VrDescUnit = isnull(@descIdadeAuxPeloCodigoUnita' +
        'rio,0) -- qdo chegar aqui so computa o desconto por iddade'
      '--           PRINT '#39'LOG 6 '#39' + cast(@VrDescUnit as varchar(20))'
      '        end'
      #9#9'else'
      
        #9#9'   set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdade' +
        'AuxPeloCodigoUnitario,0) '
      #9#9#9
      '      '
      '   end'
      '   else'
      '   begin'
      '--      PRINT '#39'LOG 7'#39
      
        '     -- se tiver desconto por idade e desconto por qtde de benef' +
        'iciarios no plano soma as duas.'
      
        '     set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdade' +
        'AuxPeloCodigoUnitario,0) '
      #9' '#9
      ''
      '   end'
      'end'
      'else'
      'begin'
      
        '   -- nao esta solicitando de um benefici'#225'rio especifico, por'#233'm ' +
        'alimenta a var...pq no fonte tem rotina que usa os parametros de' +
        ' saida, independente da entrada'
      
        '   --se tiver desconto por idade e desconto por qtde de benefici' +
        'arios no plano soma as duas.'
      
        '   set @VrDescUnit = isnull(@VrDescUnit,0) + isnull(@descIdadeAu' +
        'xPeloCodigoUnitario,0) '
      '   '#9
      'end'
      '     '
      ''
      ''
      
        '-- soma o desconto por quantidade de usuarios no plano + descont' +
        'o por idade'
      ''
      
        'set @VrDesconto = isnull(@VrDesc,0)     + isnull(@descIdadeAux,0' +
        ')'
      ''
      ''
      ''
      'set @VrDescUsu = isnull(@VrDescUnit,0)'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1290
    Top = 223
  end
  object tr_u_atualizaValidade: TADOQuery
    Parameters = <>
    SQL.Strings = (
      
        'CREATE trigger [dbo].[tr_u_atualizaValidade] on [dbo].[Orcamento' +
        ']'
      'for update'
      'as'
      'if update(data_conferencia)'
      'begin'
      
        '  if (select DiasVenctoOrc  from inserted o, dentista d where o.' +
        'dentista = d.codigo)<>'#39#39
      '    begin'
      
        #9'  update orcamento set data_validade = DATEADD (dd, CAST((selec' +
        't DiasVenctoOrc  from inserted o, dentista d where o.dentista = ' +
        'd.codigo) as int), data_conferencia ) where numero in(select num' +
        'ero from inserted);'
      '    end'
      '  else'
      '    begin'
      
        '      update orcamento set data_validade = DATEADD (dd, CAST((se' +
        'lect vl_parametro from parametro where cd_parametro like '#39'QTVCTO' +
        #39') as int), data_conferencia ) where numero in(select numero fro' +
        'm inserted);'
      '    end'
      'end'
      ''
      ''
      ''
      ''
      '')
    Left = 496
    Top = 712
  end
  object v_celulares: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'create view v_celulares as'
      ''
      'select c2.codigo,  '
      
        'celular =  cast( stuff ( (select '#39', '#39' + cast(ddd as varchar(2)) ' +
        '+ CAST(celular as varchar(9)) '
      'FROM celulares c1 '
      'where c1.codigo = c2.codigo '
      
        'group by '#39', '#39' + cast(ddd as varchar(2)) + CAST(celular as varcha' +
        'r(9))  FOR XML PATH ('#39#39') ), 1, 1, '#39#39' ) '
      'as varchar(355)) '
      ''
      'from celulares  c2   group by c2.codigo')
    Left = 744
    Top = 136
  end
end
