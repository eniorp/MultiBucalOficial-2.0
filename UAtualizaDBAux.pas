unit UAtualizaDBAux;

interface



implementation

{   ExecutaQuery(01,'update preferencia set versao = ''2.0.4.1''');
   ExecutaQuery(02,'select getdate()'); // pra manter a sequencia
   ExecutaQuery(03,'alter table servicos add cd_nivel_servico char(1)');
//   ExecutaQuery('update servicos set cd_nivel_servico = ''F'' where descricao like ''%FACE%''');
//   ExecutaQuery('update servicos set cd_nivel_servico = ''D'' where cd_nivel_servico is null');
   ExecutaQuery(04,'alter table servicos alter column cd_nivel_servico char(1) not null');

   ExecutaQuery(05,'insert into parametro values (''VALDEN'', ''N'',''Indica se valida Servico X Dente X Face'')');

   ExecutaQuery(06,'alter table servicos alter column sip int not null');
   ExecutaQuery(07,'update contratante set cidade_residencial = ds_cidade from cidade where cd_cidade = cd_cidade_res and cidade_residencial is null and year(Inclusao) = 2005');
   ExecutaQuery(08,'update contratante set cidade_comercial   = ds_cidade from cidade where cd_cidade = cd_cidade_com and cidade_comercial is null and year(Inclusao) = 2005');

   ExecutaQuery(09,'alter table orcamento with nocheck add constraint  fk_orcamento_contratante foreign key  (contratante) references contratante (codigo)');
   ExecutaQuery(10,'update orcamento  set contratante = 6114 where contratante = 61141');

   ExecutaQuery(11,'alter table operador add LiberaOdonto char(1)');
   ExecutaQuery(12,'update operador set LiberaOdonto = ''N''');
   ExecutaQuery(13,'alter table operador alter column LiberaOdonto char(1) not null');
   ExecutaQuery(14,'insert into parametro values (''LASTUS'','''',''Último usuário liberação Odontograma'')');

   ExecutaQuery(15,'update itens_orcamento set valor_protetico = 0 where valor_protetico is null');
   ExecutaQuery(16,'update itens_orcamento set valor_dentista = 0 where valor_dentista  is null');
   ExecutaQuery(17,'alter table itens_orcamento alter column valor_protetico money not null');
   ExecutaQuery(18,'alter table itens_orcamento alter column valor_dentista money not null');
   ExecutaQuery(19,'update preferencia set versao = ''2.0.4.1''');
   ExecutaQuery(20,DmAt.Queryhistorico_parametro.sql);
   ExecutaQuery(21,DmAt.Querytr_hist_param.sql);
   ExecutaQuery(22,DmAt.Query3.sql);
   //30/08/2005

   ExecutaQuery(23,'drop table ans_conf');
   ExecutaQuery(24,DmAt.Query1.sql);
   ExecutaQuery(25,'select getdate()'); // pra manter a sequencia..
   ExecutaQuery(26,'update preferencia set versao = ''2.0.4.3''');
   ExecutaQuery(27,DmAt.QueryTRAltera_Usuario.sql);
   ExecutaQuery(28,'drop procedure SpAtualizaNullANS');
   ExecutaQuery(29,DmAt.SpAtualizaNullANS.sql);
   ExecutaQuery(30,'alter table ANS_CONF alter column cpf varchar(11) null');
   ExecutaQuery(31,'alter table ANS_CONF alter column pis varchar(11) null');
   ExecutaQuery(32,DmAt.QueryDivergANSXBase.sql);
   ExecutaQuery(33,DmAt.Querysp_regAnsXBase.sql);
   ExecutaQuery(34,'update preferencia set versao = ''2.0.4.4''');
   ExecutaQuery(35,DmAt.Querytr_u_i_VerifPlanoValido.sql);
   //DmAt.Querytr_u_i_VerifPlanoValido.sql[0] := ' alter trigger tr_u_i_VerifPlanoValido on contratante ';
   ExecutaQuery(36,DmAt.Querytr_u_i_VerifPlanoValido.sql);

   // Versão 2.0.4.5

   ExecutaQuery(37,DmAt.QueryUsuPerdidoANS.sql);
   ExecutaQuery(38,DmAt.QuerySpGeraArqANSRegPerdidos.sql);
   ExecutaQuery(39,DmAt.QueryInseriPerdidos.sql);
   ExecutaQuery(40,'update preferencia set versao = ''2.0.4.5''');
   // Versão 2.0.4.6
   ExecutaQuery(41,DmAt.Querytr_u_i_consiste_dados.sql);
   ExecutaQuery(42,'update preferencia set versao = ''2.0.4.6''');
   //Versão 2.0.4.7
   ExecutaQuery(43,'insert into parametro values(''ARQANS'','''',''Último arquivo de conferência ANS'')');
   ExecutaQuery(44,'ALTER TABLE PARAMETRO ALTER COLUMN VL_PARAMETRO VARCHAR(100)');
   ExecutaQuery(45,'ALTER TABLE historico_parametro ALTER COLUMN VL_PARAMOLD VARCHAR(100)');
   ExecutaQuery(46,'ALTER TABLE historico_parametro ALTER COLUMN VL_PARAMNEW VARCHAR(100)');
   ExecutaQuery(47,'update preferencia set versao = ''2.0.4.7''');
   ExecutaQuery(48,'update usuario set alterado = 0,data_alteracao = null where alterado = 1');
   ExecutaQuery(49,'update usuario set alterado = 1,data_alteracao = getdate() from DivergANSXBase D where divergente = 1  and usuario.codigo_completo = d.codigo_completo');
   ExecutaQuery(50,DmAt.QuerySpArqSusep.sql);
   //Versão 2.0.4.8
   ExecutaQuery(51,'update preferencia set versao = ''2.0.4.8''');
   ExecutaQuery(52,'alter table contratante add profissao varchar(50)');
   ExecutaQuery(53,'insert into parametro values (''EXIPRO'',''S'',''Exige profissão no cadastro contratante?'')');
   ExecutaQuery(54,'update preferencia set versao = ''2.0.4.9''');
   //versão 2.0.5.0
   ExecutaQuery(55,'update preferencia set versao = ''2.0.5.0''');
   ExecutaQuery(56,'insert into parametro values (''ARQPRO'',''c:\procedimentos.csv'',''Arquivo gerado na tela de procedimentos'')');

   //versão 2.0.5.1

   ExecutaQuery(57,'update preferencia set versao = ''2.0.5.1''');
   ExecutaQuery(58,'alter table parametro add tipo char(1)');
   ExecutaQuery(59,'update parametro set tipo = ''U''');
   ExecutaQuery(60,'alter table parametro alter column  tipo char(1) not null');
   ExecutaQuery(61,'update UsuPerdidoANS set data_exclusao = ''10/01/2005''');
   ExecutaQuery(62,'insert into disponiveis values (6,4,40,''Utilitários'',''Atualização de banco de dados'',null)');
   ExecutaQuery(63,'insert into disponiveis values (6,5,50,''Utilitários'',''Executar comando select'',null)');
   ExecutaQuery(64,'update preferencia set versao = ''2.0.5.2''');

   ExecutaQuery(65,'update preferencia set versao = ''2.0.5.3''');
   ExecutaQuery(66,DmAt.Qr_SpSinistralidade_Ind.sql);

   ExecutaQuery(67,'update preferencia set versao = ''2.0.5.4''');
   ExecutaQuery(68,'alter table UsuPerdidoANS add cd_usuario int');
   ExecutaQuery(69,DmAt.QueryUpd_dtExcl_Perdidos.sql);

   ExecutaQuery(70,'update preferencia set versao = ''2.0.5.5''');
   ExecutaQuery(71,DmAt.QueryUpd_dtExcl_Perdidos.sql);

   ExecutaQuery(72,'update preferencia set versao = ''2.0.5.6''');

   ExecutaQuery(73,'create table script (cd_script int primary key,ds_script varchar(60) not null, ' +
                   'script nvarchar(4000) not null,dtCriacao smalldatetime not null)');

   ExecutaQuery(74,'update preferencia set versao = ''2.0.5.7''');
   ExecutaQuery(75,'alter table script add dtalteracao smalldatetime');
   ExecutaQuery(76,
   'create trigger tr_u_alter_script on script ' +
   'for update ' +
   'as ' +
   'if update(script) ' +
   '   update script set dtalteracao = getdate() ' +
   '   from inserted i ' +
   '   where i.cd_script = script.cd_script ');

   ExecutaQuery(77,'update preferencia set versao = ''2.0.5.8''');
   ExecutaQuery(78,'alter table script alter column script varchar(3000) not null');

   ExecutaQuery(79,'update preferencia set versao = ''2.0.5.9''');

   ExecutaQuery(80,'alter table DivergANSXBase add endereco_ans varchar(50)');
   ExecutaQuery(81,'alter table DivergANSXBase add endereco varchar(50)');
   ExecutaQuery(82,'alter table DivergANSXBase add num_ans varchar(5)');
   ExecutaQuery(83,'alter table DivergANSXBase add num varchar(5)');

   ExecutaQuery(84,'update DivergANSXBase set endereco_ans = [endereço ans]');
   ExecutaQuery(85,'update DivergANSXBase set endereco = [endereço]');
   ExecutaQuery(86,'update DivergANSXBase set num_ans = [Nº ANS]');
   ExecutaQuery(87,'update DivergANSXBase set num = [Nº]');

   ExecutaQuery(88,'alter table DivergANSXBase drop column [endereço ans]');
   ExecutaQuery(89,'alter table DivergANSXBase drop column [endereço]');
   ExecutaQuery(90,'alter table DivergANSXBase drop column [Nº ANS]');
   ExecutaQuery(91,'alter table DivergANSXBase drop column [Nº]');

   ExecutaQuery(92,Dmat.Querysp_regAnsXBase.sql);
   ExecutaQuery(93,'alter table usuario add codigo_ans char(30)');
   ExecutaQuery(94,DmAt.QuerySpArqSusep.sql);
   ExecutaQuery(95,'select getdate()');
   ExecutaQuery(96,'insert into parametro values (''ENVCAN'',''S'',''Envia excl de usu perdidos não cancel?'',''U'')');
   // nao deu certo na 79
   ExecutaQuery(97,'update preferencia set versao = ''2.0.5.9''');

   ExecutaQuery(98,'update usuario set alterado = alterado , codigo_ans = null where codigo_ans is not null');
   ExecutaQuery(99,'update usuario set alterado = alterado, codigo_ans =  a.cdIdentBenef ' +
                   'from ans_conf a ' +
                   'where flag_compara = 1 ' +
                   '      and usuario.codigo_completo = a.cdIdentBenef ' +
                   '      and substring(usuario.nome,1,3) = substring(a.NmBenef,1,3)');
   // tive que desmenbrar em dois update pq o de cima sobrepoe este de baixo
   // por causa do mesmo codigo que tem zero a esquerda e do que nao tem zero a esquerda
   ExecutaQuery(100,'update usuario set codigo_ans = a.cdIdentBenef ' +
                    'from   ans_conf a ' +
                    'where flag_compara = 1 and a.cdIdentBenef = usuario.codigo_completo and a.cdIdentBenef not like ''0%''');


   ExecutaQuery(101,'update preferencia set versao = ''2.0.6.0''');
   ExecutaQuery(102,Dmat.QuerySpProcessaAumentoMensDt_ini_usuario.SQL);
   ExecutaQuery(103,Dmat.QuerySpProcessaAumentoMens.sql);
   ExecutaQuery(104,'insert into parametro values (''REPMEN'',''S'',''Usado na proc. SpProcessaAumentoMens'',''S'')');

   ExecutaQuery(105,'update preferencia set versao = ''2.0.6.1''');
   ExecutaQuery(106,Dmat.QuerySpVrMensalidade_dt_usu.sql);
   ExecutaQuery(107,'update preferencia set versao = ''2.0.6.2''');
   ExecutaQuery(108,Dmat.QuerySpProcessaAumentoMens.sql);

   ExecutaQuery(109,'update preferencia set versao = ''2.0.6.3''');
   ExecutaQuery(110,'create table Mensagem ' +
   '(cd_tipo char(2) not null, ' +
    'cd_codigo int not null, ' +
    'ds_mensagem varchar(300) not null, ' +
    'dtcriacao smalldatetime not null default(getdate()), ' +
    'cd_operador int not null ' +
    'constraint pk_aviso primary key clustered (cd_tipo,cd_codigo), ' +
    'constraint fk_mensagem_operador foreign key (cd_operador) references operador(codigo), ' +
    'constraint ck_tipo_mensagem check (cd_tipo in (''US'',''CO'',''CT'',''GC'')))');

   ExecutaQuery(111,Dmat.QueryTr_i_incluiMensalidade.sql);
   ExecutaQuery(112,Dmat.Querytr_u_i_consiste_dados.sql);
   ExecutaQuery(113,'update preferencia set versao = ''2.0.6.4''');
   ExecutaQuery(114,'alter table mensagem drop constraint ck_tipo_mensagem');
   ExecutaQuery(115,'alter table mensagem add constraint ck_tipo_mensagem check (cd_tipo in (''US'',''CO'',''CT'',''GC''))');
   ExecutaQuery(116,'update preferencia set versao = ''2.0.6.5''');
   ExecutaQuery(117,'update preferencia set versao = ''2.0.6.6''');

   ExecutaQuery(118,'update preferencia set versao = ''2.0.6.7''');
   ExecutaQuery(119,'alter table parametro alter column ds_parametro varchar(150)');
   ExecutaQuery(120,'insert into parametro values (''QTLMEN'',''0'',''Qt linhas impressas no orc. via convênio,criar a mesma qt parametros MENS1..MENS2..ETC, zero(0) intica que não tem mensagem'',''U'')');
   ExecutaQuery(121,'alter table usuario add cd_motivo_inclusao tinyint');
   ExecutaQuery(122,'alter table usuario add dt_migracao smalldatetime');
   ExecutaQuery(123,'alter table usuario add cei varchar(14)');
   ExecutaQuery(124,' create table Motivo_inclusao ' +
                    ' (cd_motivo_inclusao tinyint primary key, ' +
                    ' ds_motivo_inclusao varchar(75) not null)');
   ExecutaQuery(125,'alter table usuario add constraint fk_usuario_motivo_inclusao foreign key (cd_motivo_inclusao) references motivo_inclusao (cd_motivo_inclusao)');
   ExecutaQuery(126,'insert into motivo_inclusao values (15,''Inclusão de Novos Beneficiários'')');
   ExecutaQuery(127,'insert into motivo_inclusao values (16,''Inclusão de Beneficiário Motivada or transferência voluntária de carteira.'')');
   ExecutaQuery(128,'insert into motivo_inclusao values (17,''Inclusão de Beneficiário motivada por transferência compulsória de carteira'')');
   ExecutaQuery(129,'update preferencia set versao = ''2.0.6.8''');
   ExecutaQuery(130,'update usuario set cd_motivo_inclusao = 15 where inclusao_susep is null');
   ExecutaQuery(131,DmAt.QuerySpArqSusep.SQL);
   ExecutaQuery(132,'update preferencia set versao = ''2.0.6.9''');

   ExecutaQuery(133,'update preferencia set versao = ''2.0.7.0''');
   ExecutaQuery(134,'alter table servicos add qt_face tinyint');
   ExecutaQuery(135,'update servicos set qt_face = 0');
   ExecutaQuery(136,'alter table servicos alter column qt_face tinyint not null');
   ExecutaQuery(137,'alter table servicos add constraint df_qt_face default(0) for qt_face');
   ExecutaQuery(138,'alter table servicos add tipo_dente char(1)');
   ExecutaQuery(139,'alter table dente add tipo_dente char(1)');
   ExecutaQuery(140,'update dente set tipo_dente = ''O''');
   ExecutaQuery(141,'alter table dente alter column tipo_dente char(1) not null');
   ExecutaQuery(142,'create table pacote ' +
                    '(cd_pacote int primary key, ' +
                    'ds_pacote varchar(40) not null) ');

   ExecutaQuery(143,'create table item_pacote ' +
                    '(cd_pacote int not null, ' +
                    'cd_servico int not null, ' +
                    'qt_servico  smallint not null, ' +
                    'constraint pk_item_pacote primary key (cd_pacote,cd_servico), ' +
                    'constraint fk_pacote_item_pacote foreign key (cd_pacote) references pacote (cd_pacote), ' +
                    'constraint fk_servico_item_pacote foreign key (cd_servico) references servicos (codigo))');

   ExecutaQuery(144,'insert into parametro values (''VERPKG'',''N'',''Utiliza Rotina de pacotes no orçamento'',''U'')');
    // inclui um pacote para exemplo
   ExecutaQuery(145,'insert into pacote values (4110,''TRATAMENTO ENDONTICO (1COND)'')');
   ExecutaQuery(146,'INSERT INTO ITEM_PACOTE VALUES (4110,4270,1)');
   ExecutaQuery(147,'INSERT INTO ITEM_PACOTE VALUES (4110,0140,3)');

   ExecutaQuery(148,'update preferencia set versao = ''2.0.7.1''');

   ExecutaQuery(149,'alter table dente add Perm_deci char(1)');
   ExecutaQuery(150,'alter table dente add Hemiarco char(2)');
   ExecutaQuery(151,'update dente set perm_deci = ''P'' where cd_dente in (11,12,13,21,22,23,43,42,41,31,32,33,18,17,16,15,14,24,25,26,27,28,48,47,46,45,44,34,35,36,37,38)');
   ExecutaQuery(152,'update dente set perm_deci = ''D'' where cd_dente in (53,52,51,61,62,63,83,82,81,71,72,73,55,54,64,65,85,84,74,75)');
   ExecutaQuery(153,'update dente set Hemiarco  = ''SD'' where cd_dente in (13,12,11,53,52,51,18,17,16,15,14,55,54)');
   ExecutaQuery(154,'update dente set Hemiarco  = ''SE'' where cd_dente in (21,22,23,61,62,63,24,25,26,27,28,64,65)');
   ExecutaQuery(155,'update dente set Hemiarco  = ''IE'' where cd_dente in (31,32,33,71,72,73,34,35,36,37,38,74,75)');
   ExecutaQuery(156,'update dente set Hemiarco  = ''ID'' where cd_dente in (43,42,41,83,82,81,48,47,46,45,44,85,84)');
   ExecutaQuery(157,'alter table dente alter column  Perm_deci char(1) not null');
   ExecutaQuery(158,'alter table dente alter column  Hemiarco char(2) not null');

   ExecutaQuery(159,'update dente set tipo_dente = ''I'' where cd_dente in (13,12,11,21,22,23,43,42,41,31,32,33,53,52,51,61,62,63,83,82,81,71,72,73)');
   ExecutaQuery(160,'alter table servicos add Perm_deci char(1)');
   ExecutaQuery(161,'alter table servicos add Hemiarco bit');
   ExecutaQuery(162,'alter table dente add Molar_PreMolar char(1)');
   ExecutaQuery(163,'update servicos set hemiarco = 0');
   ExecutaQuery(164,'update servicos set  tipo_dente = ''A'',Perm_deci = ''A'' where cd_nivel_servico in(''D'',''F'')');
   ExecutaQuery(165,DmAt.QueryPVerifCarenciaCrit.sql);
   ExecutaQuery(166,'update preferencia set versao = ''2.0.7.2''');
   ExecutaQuery(167,'alter table EventOdontograma add constraint fk_EventOdontograma_ItensOrcamento foreign key (orcamento,incremento) references itens_Orcamento (orcamento,incremento)');
   ExecutaQuery(168,'drop table DenteXorcamento');
   ExecutaQuery(169,
   'create table DenteXorcamento ' +
   '( ' +
   ' orcamento int   not null, ' +
   ' incremento int  not null, ' +
   ' cd_dente   tinyint not null, ' +
   ' constraint pk_DenteXorcamento primary key clustered(orcamento,incremento), ' +
   ' constraint fk_DenteXorcamento_itens_orcamento foreign key (orcamento,incremento) references itens_orcamento (orcamento,incremento), ' +
   ' constraint fk_Dent4XOrcamento_dente foreign key (cd_dente) references dente (cd_dente) ' +
   ') ');

   ExecutaQuery(170,
   'create table FaceXOrcamento ' +
   '( ' +
   ' orcamento int not null, ' +
   ' incremento int not null, ' +
   ' cd_dente   tinyint not null, ' +
   ' cd_face    char(1) not null, ' +
   ' constraint pk_FaceXOrcamento primary key clustered (orcamento,incremento,cd_dente,cd_face), ' +
   ' constraint fk_FaceXOrcamento_DenteXorcamento foreign key (orcamento,incremento) references DenteXOrcamento(orcamento,incremento), ' +
   ' constraint fk_FaceXOrcamento_denteXface foreign key (cd_dente,cd_face) references DenteXFace (cd_dente,cd_face) ' +
   ') ');

   ExecutaQuery(171,DmAt.QueryTr_i_inseriDenteFace.SQL);
   ExecutaQuery(172,DmAt.QueryPVerifCarenciaCrit.sql);
   ExecutaQuery(173,'alter table EventOdontograma add constraint fk_EventOdontograma_Operador foreign key (cd_operador) references operador (codigo)');
   ExecutaQuery(174,'alter table EventOdontograma add cd_criterio smallint');
   ExecutaQuery(175,'alter table EventOdontograma  add constraint fk_EventOdontograma_Criterio foreign key (cd_criterio) references criterio_odontograma (cd_criterio)');
   ExecutaQuery(176,DmAt.Querysp_Upd_EventOdonto.sql);
   ExecutaQuery(177,DmAt.Querysp_manutAtraso.sql);

   ExecutaQuery(178,'update preferencia set versao = ''2.0.7.3''');
   ExecutaQuery(179,'alter table servicos add IdadeMax tinyint default(0)');
   ExecutaQuery(180,'update servicos set IdadeMax = 0');
   ExecutaQuery(181,'update servicos set IdadeMax = 14 where codigo = 2140');
   ExecutaQuery(182,'update servicos set IdadeMax = 6 where codigo = 2170');
   ExecutaQuery(183,'alter table servicos alter column IdadeMax tinyint not null');
   ExecutaQuery(184,
   'create table ServicoXIdade ' +
   '(cd_criterio smallint identity(1,1) not null , ' +
   ' cd_servico int not null, ' +
   ' idadeIni tinyint not null, ' +
   ' idadeFim tinyint not null, ' +
   ' inclu_oclu  char(1) not null, ' +
   ' perm_deci   char(1) not null, ' +
   ' qtde        tinyint not null, ' +
   ' nivel_restricao char(1) not null, ' +
   ' dt_ini_criterio smalldatetime not null, ' +
   ' dt_fim_criterio smalldatetime , ' +
   ' constraint pk_ServicoXIdade primary key (cd_criterio), ' +
   ' constraint fk_ServicoXIdadeXServicos foreign key (cd_servico) references servicos (codigo), ' +
   ' constraint ck_idade_IncluOclu check (idadeIni <= IdadeFim and idadeIni >= 0 and inclu_oclu in (''I'',''O'',''T'') and perm_deci in (''P'',''D'',''T''))) ');
   ExecutaQuery(185,'delete EventOdontograma');
   ExecutaQuery(186,'alter table EventOdontograma add tp_criterio varchar(11)');
   ExecutaQuery(187,Dmat.Querysp_Upd_EventOdonto.sql);
   ExecutaQuery(188,'update Motivo_inclusao set ds_motivo_inclusao = ''Inclusão Novos Beneficiários'' where cd_motivo_inclusao = 15');
   ExecutaQuery(189,'update Motivo_inclusao set ds_motivo_inclusao = ''Incl Benef voluntária de carteira.'' where cd_motivo_inclusao = 16');
   ExecutaQuery(190,'update Motivo_inclusao set ds_motivo_inclusao = ''Incl Benef compulsória de carteira'' where cd_motivo_inclusao = 17');
   ExecutaQuery(191,'alter table EventOdontograma alter column tp_criterio varchar(11) not null');
   ExecutaQuery(192,'drop trigger Tr_i_inseriDenteFace');
   ExecutaQuery(193,Dmat.QueryTr_i_inseriDenteFace.sql);

   ExecutaQuery(194,'delete disponiveis where codigo_grupo = 8');
   ExecutaQuery(195,'insert into disponiveis values (8,1,10,''Odontograma'',''Parâmetros'',NULL)');
   ExecutaQuery(196,'insert into disponiveis values (8,2,20,''Odontograma'',''Critério'',NULL)');
   ExecutaQuery(197,'insert into disponiveis values (8,3,30,''Odontograma'',''Pacote'',NULL)');
   ExecutaQuery(198,'insert into disponiveis values (8,4,40,''Odontograma'',''Critério Serviço Por Idade'',NULL)');
   ExecutaQuery(199,'insert into disponiveis values (8,5,50,''Odontograma'',''Consultas'',NULL)');
   ExecutaQuery(200,'delete permissoes where  codigo_operador in(14,6) and codigo_grupo = 8');
   ExecutaQuery(201,'insert into  permissoes select 14,codigo_grupo,codigo_procedimento,codigo_subprocedimento,0 from disponiveis where codigo_grupo = 8');
   ExecutaQuery(202,'insert into  permissoes select 6,codigo_grupo,codigo_procedimento,codigo_subprocedimento,0 from disponiveis where codigo_grupo = 8');
   ExecutaQuery(203,DmAt.QueryTr_u_crit_idade.sql);
   ExecutaQuery(204,DmAt.QueryTr_i_crit_Idade1.sql);
   ExecutaQuery(205,
   'create trigger tr_d_manutencao on manutencao ' +
   'for delete ' +
   'as ' +
   'if exists (select top 1 * from faturamento f, deleted d where desdobramento = ''T'' and d.usuario = f.codigo_usuario) ' +
   'begin ' +
   '   raiserror(''Não é possível excluir este cadastro de Manutenção, existe faturamento para este usuário'',16,1) ' +
   '   rollback tran ' +
   'end ');;
   ExecutaQuery(206,'alter table parametro add modulo varchar(20)');
   ExecutaQuery(207,'update parametro set modulo = ''SISTEMA''');
   ExecutaQuery(208,'alter table parametro alter column modulo varchar(20) not null');
   ExecutaQuery(209,'update parametro set modulo = ''ODONTOGRAMA'' where cd_parametro in(''CRIODO'',''LASTUS'',''VALDEN'',''VERDEN'',''VERPKG'')');
   ExecutaQuery(210,'insert into disponiveis values (1,18,180,''Opções'',''Cadastro'',''Parâmetros'')');

   if dm.ExecutaComando('select codigo c from empresa','c') = '2' then // estes scripts abaixo já foram
   begin
      ExecutaQuery(211,'insert into parametro values (''PATHEX'',''C:\MULTIODONTO'',''Caminho padrão onde gravar arquivos exportação'',''U'',''SISTEMA'')');
      ExecutaQuery(212,'select * into contato_bck from contato');
      ExecutaQuery(213,'alter table contato add texto_contato1 varchar(5000)');
      ExecutaQuery(214,'update contato set texto_contato1 = substring(texto_contato,1,2000)');
      ExecutaQuery(215,'alter table contato drop column texto_contato');
      ExecutaQuery(216,'alter table contato add texto_contato varchar(5000)');
      ExecutaQuery(217,'update contato set texto_contato = texto_contato1');
      ExecutaQuery(218,'alter table contato drop column texto_contato1');
   end
   else
   begin
     // pra manter a sequencia
      ExecutaQuery(211,'select getdate()');
      ExecutaQuery(212,'select getdate()');
      ExecutaQuery(213,'select getdate()');
      ExecutaQuery(214,'select getdate()');
      ExecutaQuery(215,'select getdate()');
      ExecutaQuery(216,'select getdate()');
      ExecutaQuery(217,'select getdate()');
      ExecutaQuery(218,'select getdate()');

   end;
   ExecutaQuery(219,'update preferencia set versao = ''2.0.7.4''');
   ExecutaQuery(220,'alter table  manutencao with nocheck add  constraint  fk_manutencao_usuario  foreign key  (usuario)  references usuario (codigo_completo)');
   ExecutaQuery(221,'insert into parametro values (''HABFIL'',''S'',''Indica se Inibe Parametros não utilizado nos Relatórios'',''U'',''SISTEMA'')');
   ExecutaQuery(222,'update preferencia set versao = ''2.0.7.5''');
   ExecutaQuery(223,'alter table TipoCobranca add DebAutomatico bit');
   ExecutaQuery(224,'update TipoCobranca set DebAutomatico = 0');
   ExecutaQuery(225,'alter table TipoCobranca alter column DebAutomatico bit not null');
   ExecutaQuery(226,'update preferencia set versao = ''2.0.7.6''');
   ExecutaQuery(227,'update contratante set forma_cobranca = 50 where forma_cobranca is null');
   ExecutaQuery(228,'alter table contratante alter column forma_cobranca int not null');
   ExecutaQuery(229,'update preferencia set versao = ''2.0.7.7''');
   ExecutaQuery(230,'insert into parametro values (''DFALE'',''30'',''FALECOM - Qtde dias retroativos p/ enviar rel Baixados Status Orcamento'',''U'',''FALECOM'')');
   ExecutaQuery(231,'update preferencia set versao = ''2.0.7.8''');
   ExecutaQuery(232,'update preferencia set versao = ''2.0.7.9''');
   ExecutaQuery(233,'update preferencia set versao = ''2.0.8.0''');
   // coloquei aqui por causa da seato.
   ExecutaQuery(234,'CREATE TABLE Erro_atualizacao ( ' +
	'indice int IDENTITY (1, 1) NOT NULL , ' +
	'NrInstrucao int , ' +
	'DtAtualizacao smalldatetime CONSTRAINT DF_DtAtualizacao DEFAULT (getdate()), ' +
	'Instrucao varchar (2000)   , ' +
	'msgErro varchar (2000)  , ' +
	'NmFuncionario varchar (30) , ' +
	'NmMaquina varchar (50) , ' +
	'Revisada bit CONSTRAINT DF_revisada DEFAULT (0), ' +
	'PRIMARY KEY  CLUSTERED (indice)) ');

   //ExecutaQuery(234,'update preferencia set versao = ''2.0.8.1''');
   ExecutaQuery(235,'drop procedure sp_delete_Faturamento_1');
   ExecutaQuery(236,'drop procedure sp_delete_Preco_Plano_1');
   ExecutaQuery(237,'update preferencia set versao = ''2.0.8.2''');
   ExecutaQuery(238,'insert into disponiveis values(4,3,37,''Vendas'',''Relatórios'',''Vendas Analítico(Usuário)'')');
   ExecutaQuery(239,'alter table dente add sexante tinyint');
   ExecutaQuery(240,'update dente set sexante = 1');
   ExecutaQuery(241,'alter table dente alter column sexante tinyint not null');
   ExecutaQuery(242,'alter table servicos alter column hemiarco varchar(2)');
   ExecutaQuery(243,'alter table itens_orcamento add Hemiarco varchar(2)');
   ExecutaQuery(244,'alter table itens_orcamento add sexante tinyint');
   ExecutaQuery(245,'alter table itens_orcamento add constraint ck_hemiarco_sexante check(hemiarco in(''SI'',''DE'') and sexante between 1 and 6)');
   ExecutaQuery(246,'update preferencia set versao = ''2.0.8.3''');

   ExecutaQuery(247,'update preferencia set versao = ''2.0.8.4''');
   ExecutaQuery(248,'alter table servicos add qt_orcamento tinyint');
   ExecutaQuery(249,'update servicos set qt_orcamento = 0');
   ExecutaQuery(250,'alter table servicos alter column qt_orcamento tinyint not null');
   ExecutaQuery(251,DmAt.QueryTr_i_u_validacoesOdonto.sql,'Tr_i_u_validacoesOdonto','TR');
   ExecutaQuery(252,'update servicos set hemiarco = null');
   //ExecutaQuery(253,DmAt.QueryPVerifCarenciaCrit.sql); // coloquei pra executar no    final
   ExecutaQuery(253,'select getdate()');
   ExecutaQuery(254,DmAt.Querytr_u_inibeAlterarUsu.sql);
   ExecutaQuery(255,'update preferencia set versao = ''2.0.8.5''');
   ExecutaQuery(256,DmAt.QueryServicoXFace.sql);

   ExecutaQuery(257,'update preferencia set versao = ''2.0.8.6''');
   ExecutaQuery(258,'update servicos set hemiarco = null where hemiarco = ''''');
   ExecutaQuery(259,'update servicos set perm_deci = null where perm_deci = ''''');
   ExecutaQuery(260,'update servicos set tipo_dente = null where tipo_dente = ''''');
   ExecutaQuery(261,'alter table servicos add molar_preMolar char(1)');
   ExecutaQuery(262,'update dente set molar_premolar = ''M'' where cd_dente in(26,27,28,36,37,38,16,17,18,46,47,48)');
   ExecutaQuery(263,'update dente set molar_premolar = ''P'' where cd_dente in(24,25,34,35,44,45,14,15)');
   ExecutaQuery(264,'insert into parametro values (''EXIVER'',''S'',''Se S não permite entrar no programa se a versão estiver desatualizada'',''U'',''SISTEMA '')');
   ExecutaQuery(265,DmAt.QueryTr_i_u_validacoesOdonto.sql,'Tr_i_u_validacoesOdonto','TR');
   //ExecutaQuery(266,DmAt.QueryPVerifCarenciaCrit.sql);
   ExecutaQuery(266,'select getdate()'); // ta sendo executado na instrucao  486
   ExecutaQuery(267,DmAt.Query3.sql);
   ExecutaQuery(268,DmAt.QueryTr_i_u_inseriDenteFace.sql);
   ExecutaQuery(269,DmAt.QueryTr_i_crit_Idade1.sql);
   ExecutaQuery(270,'alter table EventOdontograma drop constraint fk_eventodontograma_criterio');
   ExecutaQuery(271,'select getdate()');

   ExecutaQuery(272,'select getdate() ');
   ExecutaQuery(273,'update preferencia set versao = ''2.0.8.7''');
   ExecutaQuery(274,DmAt.QuerySpOrcApagar.sql);
   ExecutaQuery(275,'insert into disponiveis values (3,1,16,''Financeiro'',''Contas à Receber'',''Manut. Tit. Baixados'')');
   ExecutaQuery(276,'update preferencia set versao = ''2.0.8.8''');
   ExecutaQuery(277,'alter table dente add arcada char(2)');
   ExecutaQuery(278,'update dente set arcada = ''AI''');
   ExecutaQuery(279,'update dente set arcada = ''AS'' where cd_dente in(11,12,13,14,15,16,17,18,21,22,23,24,25,26,27,28,51,52,53,54,55,61,62,63,64,65)');
   ExecutaQuery(280,'alter table dente alter column arcada char(2) not null');
   ExecutaQuery(281,'alter table servicos add arcada char(2)');
   ExecutaQuery(282,'alter table itens_orcamento add arcada varchar(2)');
   ExecutaQuery(283,'alter table itens_orcamento drop constraint ck_hemiarco_sexante');
   ExecutaQuery(284,'update itens_orcamento  set hemiarco = null where hemiarco is not null');
   ExecutaQuery(285,'alter table itens_orcamento add constraint ck_hemiarco_sexante_arcada check(hemiarco in(''SD'',''SE'',''ID'',''IE'') and sexante between 1 and 6 and arcada in (''AS'',''AI''))');
   //ExecutaQuery(286,DmAt.QueryPVerifCarenciaCrit.sql);
   ExecutaQuery(286,'select getdate()');   
   ExecutaQuery(287,'update preferencia set versao = ''2.0.8.9''');
   ExecutaQuery(288,'delete itens_orcamento where orcamento = 0');
   ExecutaQuery(289,DmAt.QuerySpCalculaDesconto.sql);
   ExecutaQuery(290,'update preferencia set versao = ''2.0.9.0''');
   ExecutaQuery(291,'update servicos set cd_nivel_servico = ''C'', Hemiarco = null,arcada = null where cd_nivel_servico in(''A'',''H'')');
   ExecutaQuery(292,'update parametro set vl_parametro = ''S'' where cd_parametro = ''EXIVER''');
   ExecutaQuery(293,'create clustered index id_contratante on contato(codigo_contratante)');
   ExecutaQuery(294,'update preferencia set versao = ''2.0.9.1''');
   ExecutaQuery(295,'update preferencia set versao = ''2.0.9.2''');

   ExecutaQuery(296,'update preferencia set versao = ''2.0.9.3''');
   ExecutaQuery(297,'alter table Contas_Banco add layout varchar(30)');
   ExecutaQuery(298,'update contas_banco set layout = ''BANESPA'' where banco = ''033''');
   ExecutaQuery(299,'update contas_banco set layout = ''ITAU'' where banco = ''341''');

   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multiodonto
      ExecutaQuery(300,'update contas_banco set layout = ''CNAB240'',boleto = 1 where banco = ''104''')
    else
      ExecutaQuery(300,'select getdate()');

   ExecutaQuery(301,DmAt.QuerySpProcessaAumentoMens.sql);
   ExecutaQuery(302,'update mensalidade_usuario set vrbruto = valor where vrbruto < valor');
   ExecutaQuery(303,'update mensalidade_usuario set dtinicio  = ''08/10/2006'' where  cd_usuario = 15573 and dg_usuario = 1');

   // Atualiza o registro mensalidade id zero cuja data seja diferente da data de inclusao do usuario
   ExecutaQuery(304,DmAt.QueryUpdIdzero.SQL);
   ExecutaQuery(305,'update preferencia set versao = ''2.0.9.3''');
   ExecutaQuery(306,'update Contas_Banco set convenio = ''036813'' where Banco = 104');
   ExecutaQuery(307,'update Contas_Banco set agencia = ''28819'',numero_conta = ''03000003540'' where Banco = 104');
   ExecutaQuery(308,'drop trigger tr_u_i_VerifPlanoValido');
   ExecutaQuery(309,'drop trigger tr_u_AtualizacaoANS');
   ExecutaQuery(310,'update contratante set cidade_residencial = ds_cidade from cidade c where c.cd_cidade = contratante.cd_cidade_res and c.ds_cidade <> cidade_residencial');
   ExecutaQuery(311,'update contratante set cidade_comercial = ds_cidade from cidade c where c.cd_cidade = contratante.cd_cidade_com and c.ds_cidade <> cidade_comercial');
   ExecutaQuery(312,DmAt.Querytr_u_i_VerifPlanoValido.sql);
   ExecutaQuery(313,DmAt.Querytr_u_AtualizacaoANS.sql);
   ExecutaQuery(314,'alter table contas_banco add JurosDiario decimal(4,2)');
   ExecutaQuery(315,'update contas_banco set JurosDiario = 0.17 where banco = 104');
   ExecutaQuery(316,'alter table contas_banco add msg1 varchar(40)');
   ExecutaQuery(317,'alter table contas_banco add msg2 varchar(40)');
   ExecutaQuery(318,'update contas_banco set msg1 = ''APOS VENCTO MULTA DE 2% + 0,17% AO DIA'' where banco = 104');
   ExecutaQuery(319,'update contas_banco set msg2 = ''ACRESCIDO R$1,50, REF A DESPESAS ADM'' where banco = 104');
   ExecutaQuery(320,'update contas_banco set Boleto_Sequencial = 0 where banco = 104');
   ExecutaQuery(321,'update contas_banco set cgc = ''01306081000115'' where banco = ''104''');
   ExecutaQuery(322,'update contas_banco set nome_banco = ''C ECON FEDERAL'' where banco = ''104''');

   ExecutaQuery(323,'update preferencia set versao = ''2.0.9.4''');
   ExecutaQuery(324,'update contas_banco set JurosDiario = null where banco = 104');
   ExecutaQuery(325,'update preferencia set versao = ''2.0.9.5''');
   ExecutaQuery(326,'update preferencia set versao = ''2.0.9.5''');
   ExecutaQuery(327,'update parametro set vl_parametro = ''S'' where cd_parametro = ''EXIVER''');
   ExecutaQuery(328,'alter table contas_banco add Pasta varchar(30)');
   ExecutaQuery(329,'update contas_banco set pasta = ''CAIXA'' where banco = 104');
   ExecutaQuery(330,'create table RetornoCNAB (numero_titulo int , vr_acrescimo smallmoney not null, ' +
                    ' vr_desconto smallmoney not null, vr_abatimento smallmoney not null, vr_pago  smallmoney not null,' +
                    '  vr_liquido smallmoney not null, dt_pagto smalldatetime not null, constraint pk_RetornoCNAB primary key (numero_titulo))');
   ExecutaQuery(331,'create procedure volta as begin update parametro set vl_parametro = vl_parametro - 1 where cd_parametro = ''ULTSCR''' +
                    '  select vl_parametro from  parametro where cd_parametro = ''ULTSCR'' end');
   ExecutaQuery(332,'alter table RetornoCnab add indice tinyint');
   ExecutaQuery(333,'alter table RetornoCnab add flag bit');
   ExecutaQuery(334,'alter table RetornoCnab add obs varchar(200)');
   // sem chave primaria..
   ExecutaQuery(335,'alter table retornoCnab drop constraint pk_RetornoCNAB');
   ExecutaQuery(336,'alter table RetornoCnab add Data smalldatetime');
   ExecutaQuery(337,'select getdate()');
   ExecutaQuery(338,'update preferencia set versao = ''2.0.9.6''');
   ExecutaQuery(339,'select getdate()');

   //dmat.spBaixaCnab.sql[0] := 'alter procedure spBaixaCnab @indice tinyint, @operador int';
   //ExecutaQuery(340,dmat.spBaixaCnab.sql);
   ExecutaQuery(340,'select getdate()');
   ExecutaQuery(341,'insert into especiais values (42,1)');
   ExecutaQuery(342,'update preferencia set versao = ''2.0.9.7''');
   ExecutaQuery(343,DmAt.tr_u_inibeAlterPlano_TabPrecoXPlano.sql);
   ExecutaQuery(344,DmAt.tr_u_d_inibeAlterPlano_TabPrecoXPlano.sql);
   ExecutaQuery(345,'alter table contratante alter column conta varchar(15)');
   ExecutaQuery(346,DmAt.QueryTempLogValorOrcamento.sql);
   ExecutaQuery(347,'insert into parametro values (''LOGORC'',''S'',''Indica se grava log orcamento na tab TempLogValorOrcamento'',''U'',''SISTEMA'')');
   ExecutaQuery(348,'update preferencia set versao = ''2.0.9.8''');
   ExecutaQuery(349,'update preferencia set versao = ''2.0.9.9''');
   ExecutaQuery(350,'insert into parametro values (''VALIDV'',''S'',''Indica se valida o valor via trigger na tabela itens_orcamento(tr_i_u_valida_valores)'',''U'',''SISTEMA'')');
   ExecutaQuery(351,'select getdate()');
   //ExecutaQuery(351,DmAt.pr_acha_valores_orc.sql,'pr_acha_valores_orc','P');
   ExecutaQuery(352,DmAt.tr_i_u_valida_valores.sql);
   ExecutaQuery(353,'update ValorxProcedimento set valor_protetico = 0 where valor_protetico is null');
   ExecutaQuery(354,'alter table ValorxProcedimento alter column valor_protetico money not null');
   ExecutaQuery(355,'update preferencia set versao = ''2.1.0.0''');

   if dm.ExecutaComando('select codigo c from empresa','c') <> '1' then // somente para seato(multi eu ja fiz
   begin
      ExecutaQuery(356,'alter table cancelamento add ativo bit');
      ExecutaQuery(357,'update cancelamento set ativo = 1');
      ExecutaQuery(358,'alter table cancelamento alter column ativo bit not null');
   end
   else
   begin
      ExecutaQuery(356,'select getdate()');
      ExecutaQuery(357,'select getdate()');
      ExecutaQuery(358,'select getdate()');
   end;

   ExecutaQuery(359,DmAt.Querytr_u_i_consiste_dados.sql);
   ExecutaQuery(360,'update contas_banco set mensagem_header = ''DEB AUTOMAT'', numero_conta = ''003000003540'' where banco = ''104''');
   ExecutaQuery(361,DmAt.QueryGrupo_servico.sql);
   ExecutaQuery(362,'alter table servicos add cd_grupo smallint , constraint fk_servico_grupo_servico foreign key (cd_grupo) references grupo_servico (cd_grupo)');

   ExecutaQuery(363,'alter table criterio_odontograma add qtde smallint');
   ExecutaQuery(364,'drop trigger Tr_u_crit_Odonto');
   ExecutaQuery(365,'update criterio_odontograma set qtde = 1');
   ExecutaQuery(366,'alter table criterio_odontograma alter column qtde smallint not null');
   ExecutaQuery(367,'alter table criterio_odontograma add constraint ck_qtde check (qtde > 0)');
   ExecutaQuery(368,DmAt.Tr_u_crit_Odonto.sql);
   ExecutaQuery(369,DmAt.Tr_u_InibeEdicaoItensOrc.sql);
   ExecutaQuery(370,'update preferencia set versao = ''2.1.0.1''');
   //ExecutaQuery(371,DmAt.QueryPVerifCarenciaCrit.sql);
   ExecutaQuery(371,'select getdate()');
   ExecutaQuery(372,'update preferencia set versao = ''2.1.0.2''');
   ExecutaQuery(373,'update preferencia set versao = ''2.1.0.3''');
   ExecutaQuery(374,'update preferencia set versao = ''2.1.0.4''');
   ExecutaQuery(375,'update preferencia set versao = ''2.1.0.5''');
   ExecutaQuery(376,'update preferencia set versao = ''2.1.0.6''');
   ExecutaQuery(377,'update preferencia set versao = ''2.1.0.7''');
   //ExecutaQuery(377,DmAt.pr_acha_valores_orc.sql);
   ExecutaQuery(378,'update preferencia set versao = ''2.1.0.7''');

   ExecutaQuery(379,'create table FormaLiqCNAB240 ' +
                    '(cd_liquidacao tinyint primary key, ' +
                    'ds_liquidacao varchar(40) not null)');

   ExecutaQuery(380,'insert into FormaLiqCNAB240 values (02,''Lotéricos'')');
   ExecutaQuery(381,'insert into FormaLiqCNAB240 values (03,''Caixa Econômica Federal'')');
   ExecutaQuery(382,'insert into FormaLiqCNAB240 values (04,''Compe Eletrônica'')');
   ExecutaQuery(383,'insert into FormaLiqCNAB240 values (05,''compe Convencional'')');
   ExecutaQuery(384,'insert into FormaLiqCNAB240 values (06,''Outros Canais'')');
   ExecutaQuery(385,'insert into FormaLiqCNAB240 values (07,''Correspondente Bancário'')');
   ExecutaQuery(386,'insert into FormaLiqCNAB240 values (08,''Em Cartório'')');
   ExecutaQuery(387,'alter table RetornoCNAB  add cd_liquidacao tinyint');

   ExecutaQuery(388,'create table receber_formaLiqCNAB ' +
                    '(numero_titulo int, ' +
                    'desdobramento varchar(2) not null, ' +
                    'cd_liquidacao tinyint not null, ' +
                    'constraint pk_receber_formaLiqCNAB primary key (numero_titulo,desdobramento), ' +
                    'constraint fk_receber_formaliqCNAB_LiqCNAB foreign key (cd_liquidacao) references FormaLiqCNAB240 (cd_liquidacao))');

   ExecutaQuery(389,'alter table RetornoCNAB add desdobramento char(1)');

   ExecutaQuery(390,'select getdate()');
   ExecutaQuery(391,'update faturamento set valor = 21 where numero_titulo = 154490806');
   ExecutaQuery(392,'update faturamento set valor = 21 where numero_titulo = 154490906');
   ExecutaQuery(393,'update faturamento set valor = 21 where numero_titulo = 154491006');
   ExecutaQuery(394,'update faturamento set valor = 21 where numero_titulo = 154491106');

   ExecutaQuery(395,'update receber set valor = 21 where numero_titulo = 154490806');
   ExecutaQuery(396,'update receber set valor = 21 where numero_titulo = 154490906');
   ExecutaQuery(397,'update receber set valor = 21 where numero_titulo = 154491006');
   ExecutaQuery(398,'update receber set valor = 21 where numero_titulo = 154491106');

   ExecutaQuery(399,'update receber set saldo = 21 where numero_titulo = 154490806 and  saldo > 0');
   ExecutaQuery(400,'update receber set saldo = 21 where numero_titulo = 154490906 and  saldo > 0');
   ExecutaQuery(401,'update receber set saldo = 21 where numero_titulo = 154491006 and  saldo > 0');
   ExecutaQuery(402,'update receber set saldo = 21 where numero_titulo = 154491106 and  saldo > 0');
   ExecutaQuery(403,'update preferencia set versao = ''2.1.0.8''');

   ExecutaQuery(404,'update preferencia set versao = ''2.1.0.9''');
   ExecutaQuery(405,'create table registro_baixa ' +
                    '(Numero_Titulo int not null, ' +
                    'desdobramento varchar(2) not null, ' +
                    'dtBaixa datetime not null, ' +
                    'constraint pk_registro_baixa primary key (numero_titulo,desdobramento)) ');

   ExecutaQuery(406,dmat.tr_u_registraBaixa.sql);
   ExecutaQuery(407,'alter table faturamento add dtinclusao datetime default(getdate())');
   ExecutaQuery(408,'alter table receber add dtinclusao datetime default(getdate())');
   ExecutaQuery(409,'update preferencia set versao = ''2.1.1.0''');
   ExecutaQuery(410,dmat.sp_lastDayMonth.sql);
   ExecutaQuery(411,'update preferencia set versao = ''2.1.1.1''');
   ExecutaQuery(412,'insert into disponiveis  values (3,07,61,''Financeiro'',''Conferência Faturamento'',null)');
   ExecutaQuery(413,'insert into disponiveis  values (3,08,62,''Financeiro'',''Forma Pagto CNAB'',null)');
   ExecutaQuery(414,'insert into disponiveis  values (3,09,63,''Financeiro'',''Rel Baixas Por Atendente'',null)');
   ExecutaQuery(415,'insert into disponiveis  values (3,10,64,''Financeiro'',''Rel Estatística Faturamento'',null)');

   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
   begin

      ExecutaQuery(416,'insert into permissoes values (14,3,07,61,0)');
      ExecutaQuery(417,'insert into permissoes values (14,3,08,62,0)');
      ExecutaQuery(418,'insert into permissoes values (14,3,09,63,0)');
      ExecutaQuery(419,'insert into permissoes values (14,3,10,64,0)');

      ExecutaQuery(420,'insert into permissoes values (42,3,07,61,0)');
      ExecutaQuery(421,'insert into permissoes values (42,3,08,62,0)');
      ExecutaQuery(422,'insert into permissoes values (42,3,09,63,0)');
      ExecutaQuery(423,'insert into permissoes values (42,3,10,64,0)');

      ExecutaQuery(424,'insert into permissoes values (51,3,07,61,0)');
      ExecutaQuery(425,'insert into permissoes values (51,3,08,62,0)');
      ExecutaQuery(426,'insert into permissoes values (51,3,09,63,0)');
      ExecutaQuery(427,'insert into permissoes values (51,3,10,64,0)');
   end
   else
   begin
      ExecutaQuery(416,'select getdate()');
      ExecutaQuery(417,'select getdate()');
      ExecutaQuery(418,'select getdate()');
      ExecutaQuery(419,'select getdate()');

      ExecutaQuery(420,'select getdate()');
      ExecutaQuery(421,'select getdate()');
      ExecutaQuery(422,'select getdate()');
      ExecutaQuery(423,'select getdate()');

      ExecutaQuery(424,'select getdate()');
      ExecutaQuery(425,'select getdate()');
      ExecutaQuery(426,'select getdate()');
      ExecutaQuery(427,'select getdate()');
   end;

   ExecutaQuery(428,'insert into disponiveis  values (1,19,190,''Opções'',''Consulta Pagto Dentista'',null)');
   ExecutaQuery(429,'update disponiveis set descricao_subProcedimento = ''Manut/Extorno Tit. Baixados'' where codigo_grupo = 3 and codigo_procedimento = 1 and codigo_subprocedimento = 16');
   ExecutaQuery(430, DmAt.Sp_alterarVrMen_GrauParent.sql);
   ExecutaQuery(431, DmAt.Altera_Receber.SQL);
   ExecutaQuery(432, DmAt.tr_i_u_d_verifAprovacao.sql);
   ExecutaQuery(433, DmAt.Altera_Receber.SQL);
   ExecutaQuery(434,'insert into parametro values (''ALTORC'',''S'',''Permite alterar orçamento após aprovado?'',''U'',''SISTEMA'')');
   ExecutaQuery(435,'update preferencia set versao = ''2.1.1.2''');
   ExecutaQuery(436,'alter table cancelamento add tipo varchar(8)');
   ExecutaQuery(437,'update cancelamento set tipo = ''USUARIO''');
   ExecutaQuery(438,'alter table cancelamento alter column tipo varchar(8) not null');
   ExecutaQuery(439,'create table especialidade (cd_especialidade smallint primary key,ds_especialidade varchar(30) not null, ativa char(1) not null)');
   ExecutaQuery(440,dmAt.esp_x_dentista.sql);

   ExecutaQuery(441,'update preferencia set versao = ''2.1.1.3''');
   ExecutaQuery(442,'alter table dentista add cd_especialidade smallint');
   ExecutaQuery(443,'alter table esp_x_dentista add constraint fk_dentista_espXDent foreign key (cd_especialidade) references especialidade (cd_especialidade)');
   ExecutaQuery(444,'alter table dentista add cd_motivo_exclusao int');
   //ExecutaQuery(445,'alter table dentista add constraint fk_dentista_cancelamento foreign key (cd_motivo_exclusao) references cancelamento(codigo)');
   ExecutaQuery(445,'select getdate()');
   ExecutaQuery(446,'alter table dentista add cro varchar(15)');
   ExecutaQuery(447,'alter table dentista add e_civil varchar(13)');
   ExecutaQuery(448,'alter table dentista add dt_formacao smalldatetime');
   ExecutaQuery(449,'alter table esp_x_dentista add principal char(1)');
   ExecutaQuery(450,'alter table esp_x_dentista alter column principal char(1) not null');
   ExecutaQuery(451,'alter table dentista drop column especialidade');
   ExecutaQuery(452,'alter table dentista add rg varchar(15)');
   ExecutaQuery(453,'alter table dentista add dt_inclusao smalldatetime');
   ExecutaQuery(454,dmat.endereco_x_dentista.sql);
   ExecutaQuery(455,'insert into endereco_x_dentista ' +
   ' select codigo,''ENDEREÇO RESIDENCIAL'', endereco_residencial,bairro_residencial,cep_residencial,1,null,null,null from DENTISTA ' +
   ' where endereco_residencial is not null');

   ExecutaQuery(456,'insert into endereco_x_dentista ' +
   ' select codigo,''ENDEREÇO COMERCIAL 1'', endereco_comercial,bairro_comercial,cep_comercial,1,null,null,null from DENTISTA' +
   ' where endereco_comercial is not null ');
   ExecutaQuery(457,'select getdate()');
  //ExecutaQuery(457,DmAt.pr_acha_valores_orc.sql); // tava pulando seuqencia de instruçaõ

   ExecutaQuery(458,'alter table endereco_x_dentista add seg bit');
   ExecutaQuery(459,'alter table endereco_x_dentista add ter bit');
   ExecutaQuery(460,'alter table endereco_x_dentista add qua bit');
   ExecutaQuery(461,'alter table endereco_x_dentista add qui bit');
   ExecutaQuery(462,'alter table endereco_x_dentista add sex bit');
   ExecutaQuery(463,'alter table endereco_x_dentista add sab bit');

   ExecutaQuery(464,'update endereco_x_dentista set seg = 0,ter = 0, qua = 0, qui = 0, sex = 0, sab = 0');

   ExecutaQuery(465,'alter table endereco_x_dentista alter column seg bit not null');
   ExecutaQuery(466,'alter table endereco_x_dentista alter column ter bit not null');
   ExecutaQuery(467,'alter table endereco_x_dentista alter column qua bit not null');
   ExecutaQuery(468,'alter table endereco_x_dentista alter column qui bit not null');
   ExecutaQuery(469,'alter table endereco_x_dentista alter column sex bit not null');
   ExecutaQuery(470,'alter table endereco_x_dentista alter column sab bit not null');
   ExecutaQuery(471,'alter table dentista add obs varchar(2000)');
   ExecutaQuery(472,'alter table  TipoCobranca add ativo bit');
   ExecutaQuery(473,'alter table  TipoDocumento add ativo bit');
   ExecutaQuery(474,'alter table  Tipos_Pagamentos add ativo bit');
   ExecutaQuery(475,'update preferencia set versao = ''2.1.1.4''');
   ExecutaQuery(476,'update TipoCobranca set ativo  = 1');
   ExecutaQuery(477,'update TipoDocumento set ativo  = 1');
   ExecutaQuery(478,'update Tipos_Pagamentos set ativo  = 1');
   ExecutaQuery(479,'insert into parametro values(''VERCAN'',''N'',''Visualiza Tipo Pagto/Documento/Cobrança nos Relatórios'',''U'',''SISTEMA'')');
   ExecutaQuery(480,'alter table  TipoCobranca ALTER COLUMN ativo bit NOT NULL');
   ExecutaQuery(481,'alter table  TipoDocumento ALTER COLUMN ativo bit NOT NULL');
   ExecutaQuery(482,'alter table  Tipos_Pagamentos ALTER COLUMN ativo bit NOT NULL');

   ExecutaQuery(483,'alter table parametro add dt_criacao smalldatetime default(getdate())');
   ExecutaQuery(484,'update parametro set dt_criacao = getdate()');
   ExecutaQuery(485,'alter table parametro alter  column dt_criacao smalldatetime not null');
   ExecutaQuery(486,DmAt.QueryPVerifCarenciaCrit.sql,'PVerifCarenciaCrit','P'); // era a  instrucao 2553
   ExecutaQuery(487,dmat.spBaixaCnab.sql,'spBaixaCnab','P');  //era a instrucao  337
   ExecutaQuery(488,Dmat.Querytr_u_i_consiste_dados.sql,'tr_u_i_consiste_dados','TR'); //339
   if dm.ExecutaComando('select codigo c from empresa','c') = '2' then
   begin
      ExecutaQuery(489,'SELECT * INTO RECEBER140207 FROM RECEBER');
      ExecutaQuery(490,'DELETE  FROM RECEBER WHERE EXISTS ' +
                       ' (select numero_titulo,desdobramento, count(*) q from receber R group by numero_titulo,desdobramento  having count(*) > 1 ' +
                       ' AND RECEBER.NUMERO_TITULO =  R.NUMERO_TITULO AND RECEBER.DESDOBRAMENTO  = R.DESDOBRAMENTO)');
      ExecutaQuery(491,'alter table receber drop constraint PK_Receber');
      ExecutaQuery(492,'alter table receber add constraint pk_receber primary key (numero_titulo,desdobramento)');
      ExecutaQuery(493,'alter table cancelamento drop constraint PK_Cancelamento');
      ExecutaQuery(494,'alter table cancelamento alter column codigo int not null');
      ExecutaQuery(495,'alter table cancelamento add constraint PK_Cancelamento primary key(codigo)');
      ExecutaQuery(496,'alter table dentista add constraint fk_dentista_cancelamento foreign key (cd_motivo_exclusao) references cancelamento(codigo)');
      ExecutaQuery(497,'alter table receber_formaLiqCNAB  add constraint fk_receber_formaLiqCNAB_receber foreign key (numero_titulo,desdobramento) references receber (numero_titulo,desdobramento)');
      ExecutaQuery(498,'alter table registro_baixa add constraint fk_registro_baixa_receber foreign key (numero_titulo,desdobramento) references receber (numero_titulo,desdobramento)');

   end
   else
   begin
      ExecutaQuery(489,'select getdate()');
      ExecutaQuery(490,'select getdate()');
      ExecutaQuery(491,'select getdate()');
      ExecutaQuery(492,'select getdate()');
      ExecutaQuery(493,'select getdate()');
      ExecutaQuery(494,'select getdate()');
      ExecutaQuery(495,'select getdate()');
      ExecutaQuery(496,'select getdate()');
      ExecutaQuery(497,'select getdate()');
      ExecutaQuery(498,'select getdate()');
   end;
   ExecutaQuery(499,DmAt.pr_acha_valores_orc.sql,'pr_acha_valores_orc','P');
   ExecutaQuery(500,'update preferencia set versao = ''2.1.1.5''');
   ExecutaQuery(501,'select getdate()');
   ExecutaQuery(502,'update preferencia set versao = ''2.1.1.6''');
   ExecutaQuery(503,DmAt.sp_relOrc_sip.sql,'sp_relOrc_sip','P');

   ExecutaQuery(504,'update preferencia set versao = ''2.1.1.7''');
   ExecutaQuery(505,'alter table usuario add dt_exclusao_orig datetime');
   ExecutaQuery(506,DmAt.Tr_retornoUsuario.SQL);
   ExecutaQuery(507,DmAt.sp_relOrc_sip.sql,'sp_relOrc_sip','P');
   ExecutaQuery(508,DmAt.QuerySpArqSusep.sql);

   ExecutaQuery(509,'create table Menu_dinamico ( ' +
                    'cd_script smallint not null, ' +
                    'cd_usuario  int not null, ' +
                    'sequencia smallint identity (1,1) not null, ' +
                    'nm_menu   varchar(50) not null, ' +
                    'constraint pk_menu_dinamico primary key (cd_script,cd_usuario), ' +
                    'constraint fk_menu_Operador foreign key (cd_usuario) references operador(codigo)) ');


   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multiodonto
   begin
      ExecutaQuery(510,DmAt.QueryScriptExcel.sql);
      ExecutaQuery(511,'delete script where cd_script = 5');
   end
   else
   begin
      ExecutaQuery(510,'select getdate()');
      ExecutaQuery(511,'select getdate()');
   end;
   ExecutaQuery(512,DmAt.QueryScriptRPC.sql);
   ExecutaQuery(513,'update preferencia set versao = ''2.1.1.8''');
   ExecutaQuery(514,'update preferencia set versao = ''2.1.1.9''');
   ExecutaQuery(515,'insert into parametro values(''EMTREC'',''N'',''Indica se Emito recibo automático pelo sistema nas Baixas'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(516,'alter table empresa add bairro varchar(25)');
   ExecutaQuery(517,'alter table empresa add fone varchar(15)');
   ExecutaQuery(518,'alter table empresa add mail varchar(70)');
   ExecutaQuery(519,'select getdate()');
   ExecutaQuery(520,'select getdate()');
   ExecutaQuery(521,'select getdate()');
   //showMessage('Após dar ok nesta mensagem o program irá solicitar o telefone bairro e e-mail da empresa Seato ou Multiodonto conforme o caso, inform estes dados para sair no recibo de baixa');
   //ExecutaQuery(519,'update empresa set bairro = ''' + inputbox('Informe o bairro','Informe o bairro','') + '''');
   //ExecutaQuery(520,'update empresa set fone = ''' + inputbox('Informe o telefone','Informe o telefone','') + '''');
   //ExecutaQuery(521,'update empresa set mail = ''' + inputbox('Informe o e-mail','Informe o e-mail','') + '''');
   ExecutaQuery(522,'create table recibo (nr_recibo int primary key not null, dt_recibo smalldatetime not null, vr_recibo smallmoney not null,operador varchar(20) not null)');

   ExecutaQuery(523,'create table i_recibo (nr_recibo int not null, numero_titulo int not null,desdobramento varchar(2) not null, ' +
   ' constraint pk_i_recibo primary key (nr_recibo,numero_titulo,desdobramento), ' +
   ' constraint fk_i_recibo_recibo foreign key(nr_recibo) references recibo(nr_recibo), ' +
   ' constraint fk_i_recibo_receber foreign key (numero_titulo,desdobramento) references receber (numero_titulo,desdobramento))');
   ExecutaQuery(524,'update preferencia set versao = ''2.1.2.0''');
   ExecutaQuery(525,'insert into parametro values(''QTDREC'',''6'',''Qtde máxima de registros que podem ser impresso no recibo de baixa'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(526,'insert into parametro values(''MULTA'',''2'',''Percentual da multa após o vencimento(use ponto(.) p/ casas decimais)'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(527,'insert into parametro values(''MORADI'',''0.166'',''Percentual da mora diária após vencimento(Use ponto(.) p/ casas decimais)'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(528,'insert into parametro values(''CALCJU'',''N'',''Se "S" calcula o juros automaticamente, se "N" não calcula o juros na baixa'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(529,DmAt.Querysp_calcJuros.sql,'sp_calcJuros','P'); // era a  instrucao 2553
   ExecutaQuery(530,'update preferencia set versao = ''2.1.2.1''');
   ExecutaQuery(531,'update preferencia set versao = ''2.1.2.2''');
   ExecutaQuery(532,'alter table operador add estacaoTrab varchar(50)');
   ExecutaQuery(533,'insert into parametro values(''TEMPLG'',''5'',''Tempo em minutos que o sistema irá solicitar a senha, quando a computador não for o padrão'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(534,'update preferencia set versao = ''2.1.2.3''');
   ExecutaQuery(535,'update preferencia set versao = ''2.1.2.4''');

   ExecutaQuery(536,'update preferencia set versao = ''2.1.2.5''');
   ExecutaQuery(537,'ALTER TABLE VENDEDOR DROP CONSTRAINT FK_Vendedor_Representante');
   ExecutaQuery(538,'ALTER TABLE REPRESENTANTE DROP CONSTRAINT PK_Representante');
   ExecutaQuery(539,'ALTER TABLE REPRESENTANTE ADD COD_TMP SMALLINT');
   ExecutaQuery(540,'UPDATE REPRESENTANTE SET COD_TMP = CODIGO');
   ExecutaQuery(541,'ALTER TABLE REPRESENTANTE DROP COLUMN CODIGO');
   ExecutaQuery(542,'ALTER TABLE REPRESENTANTE ADD CODIGO SMALLINT');
   ExecutaQuery(543,'UPDATE REPRESENTANTE SET CODIGO = COD_TMP');
   ExecutaQuery(544,'ALTER TABLE REPRESENTANTE ALTER COLUMN CODIGO SMALLINT NOT NULL');
   ExecutaQuery(545,'ALTER TABLE REPRESENTANTE ADD CONSTRAINT PK_Representante PRIMARY KEY (CODIGO)');
   ExecutaQuery(546,'ALTER TABLE VENDEDOR ADD CONSTRAINT FK_Vendedor_Representante FOREIGN KEY (Representante) REFERENCES REPRESENTANTE (CODIGO)');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multiodonto
   begin
      ExecutaQuery(547,'update usuario set vendedor = 7151 where vendedor = 10051');
      ExecutaQuery(548,'update usuario set vendedor = 7150 where vendedor = 10050');
      ExecutaQuery(549,'update contratante set vendedor = 7151 where vendedor = 10051');
      ExecutaQuery(550,'update contratante set vendedor = 7150 where vendedor = 10050');
   end
   else
   begin
      ExecutaQuery(547,'select getdate()');
      ExecutaQuery(548,'select getdate()');
      ExecutaQuery(549,'select getdate()');
      ExecutaQuery(550,'select getdate()');

   end;
   ExecutaQuery(551,'alter table usuario with nocheck add  constraint  fk_usuario_vendedor  foreign key (vendedor) references vendedor(codigo)');
   ExecutaQuery(552,'alter table contratante with nocheck add  constraint  fk_contratante_vendedor  foreign key (vendedor) references vendedor(codigo)');

   ExecutaQuery(553,'update preferencia set versao = ''2.1.2.6''');
   ExecutaQuery(554,'update preferencia set versao = ''2.1.2.7''');
   ExecutaQuery(555,DmAt.Querysp_calcJuros.sql,'sp_calcJuros','P');
   ExecutaQuery(556,'insert into disponiveis  values (3,11,10,''Financeiro'',''Consulta Baixas Sem Recibo'',null)');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
   begin
      ExecutaQuery(557,'insert into permissoes values (14,3,11,10,0)');
      ExecutaQuery(558,'insert into permissoes values (42,3,11,10,0)');
      ExecutaQuery(559,'insert into permissoes values (51,3,11,10,0)');
      ExecutaQuery(560,'insert into permissoes values (22,3,11,10,0)');
   end
   else
   begin
      ExecutaQuery(557,'select getdate()');
      ExecutaQuery(558,'select getdate()');
      ExecutaQuery(559,'select getdate()');
      ExecutaQuery(560,'select getdate()');
   end;

   ExecutaQuery(561,DmAt.tr_i_verifiSeq.sql,'tr_i_verifiSeq','TR');
   ExecutaQuery(562,'create table log_erro (id_erro int identity primary key, data datetime not null,' +
   ' form varchar(40) not null, etapa varchar(30) not null, msgErro varchar(2000))');
   ExecutaQuery(563,'insert into parametro values(''GRALOG'',''S'',''Indica se Grava log de erro na tabela log_erro'',''U'',''SISTEMA'',getdate())');

   ExecutaQuery(564,dmat.tr_u_registraBaixa.sql,'tr_u_registraBaixa','TR');
   ExecutaQuery(565,'select numero, status_pagamento into orcamento030507 from orcamento');

   ExecutaQuery(566,'update orcamento set status_pagamento = 1 from receber r where data_pagamento is not null and saldo < valor and r.orcamento = orcamento.numero ' +
              ' and  r.desdobramento = ''T'' and  r.tipo_documento = 5 and  status_pagamento <> 1');

   ExecutaQuery(567,'alter table recibo add status char(1)');
   ExecutaQuery(568,'update recibo set status = ''A''');
   ExecutaQuery(569,'alter table recibo alter column status char(1) not null');
   ExecutaQuery(570,'alter table i_recibo drop constraint fk_i_recibo_receber');
   ExecutaQuery(571,'alter table recibo add operador_canc varchar(20)');
   ExecutaQuery(572,'create trigger tr_d_VerifReciboAtivo on receber ' +
   ' for delete ' +
   ' as  ' +
   ' if exists(select * from i_recibo r, recibo re,deleted i  ' +
   '       where    r.numero_titulo = i.numero_titulo ' +
   '            and r.desdobramento = i.desdobramento ' +
   '            and r.nr_recibo     = re.nr_recibo ' +
   '            and re.status        = ''A'') ' +
   ' begin ' +
   '   raiserror(''Existe Recibo para este título, cancele o recibo antes de excluir o título'',16,1) ' +
   '   rollback tran ' +
   ' end ');
   ExecutaQuery(573,'update preferencia set versao = ''2.1.2.8''');
   ExecutaQuery(574,'insert into disponiveis  values (3,12,10,''Financeiro'',''Cancela Recibo'',null)');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
   begin
      ExecutaQuery(575,'insert into permissoes values (14,3,12,10,0)');
      ExecutaQuery(576,'insert into permissoes values (42,3,12,10,0)');
      ExecutaQuery(577,'insert into permissoes values (51,3,12,10,0)');
      ExecutaQuery(578,'insert into permissoes values (22,3,12,10,0)');
   end
   else
   begin
      ExecutaQuery(575,'select getdate()');
      ExecutaQuery(576,'select getdate()');
      ExecutaQuery(577,'select getdate()');
      ExecutaQuery(578,'select getdate()');
   end;
   ExecutaQuery(579,'update preferencia set versao = ''2.1.2.9''');
   ExecutaQuery(580,'update preferencia set versao = ''2.1.3.0''');
   ExecutaQuery(581,'insert into parametro values(''VENDCL'',''500'',''Código de vendedor Interno(usado na clonagem de usuário'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(582,'update preferencia set versao = ''2.1.3.1''');
   ExecutaQuery(583,'create table EfetivaPagto ' +
   ' (id_pagto int identity primary key, ' +
   ' tp_pagto char(1) not null, ' +
   ' periodo  char(7) not null, ' +
   ' dt_pagto smalldatetime not null, ' +
   ' operador varchar(20) not null, ' +
   ' vr_pagto money not null) ');

   ExecutaQuery(584,'alter table Itens_PagDentista add id_pagto int');
   ExecutaQuery(585,'alter table Itens_PagProtetico add id_pagto int');
   ExecutaQuery(586,'alter table itens_pagDentista add constraint fk_itens_pagDentista_EfetivaPagto foreign key (id_pagto) references EfetivaPagto(id_pagto)');
   ExecutaQuery(587,'alter table itens_pagProtetico add constraint fk_itens_pagProtetico_EfetivaPagto foreign key (id_pagto) references EfetivaPagto(id_pagto)');

   ExecutaQuery(588,'insert into disponiveis  values (1,20,10,''Opções'',''Dentista'',''Efetivação Pagto Dentista/Protético'')');
   ExecutaQuery(589,'insert into disponiveis  values (3,13,10,''Financeiro'',''Envia Aut Débito Autom FEBRABAN 150'',null)');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
   begin
      ExecutaQuery(590,'insert into permissoes values (14,1,20,10,0)');
      ExecutaQuery(591,'insert into permissoes values (42,1,20,10,0)');
      ExecutaQuery(592,'insert into permissoes values (51,1,20,10,0)');
      ExecutaQuery(593,'insert into permissoes values (14,3,13,10,0)');
      ExecutaQuery(594,'insert into permissoes values (42,3,13,10,0)');
      ExecutaQuery(595,'insert into permissoes values (51,3,13,10,0)');

   end
   else
   begin
      ExecutaQuery(590,'select getdate()');
      ExecutaQuery(591,'select getdate()');
      ExecutaQuery(592,'select getdate()');
      ExecutaQuery(593,'select getdate()');
      ExecutaQuery(594,'select getdate()');
      ExecutaQuery(595,'select getdate()');

   end;
   ExecutaQuery(596,'update preferencia set versao = ''2.1.3.2'''); // iniciou odontograma
   ExecutaQuery(597,'create table historico_versao (indice int identity primary key, versao varchar(10) not null, dtAtualizacao smalldatetime not null)');
   ExecutaQuery(598,dmAt.tr_u_validaversao.sql);
   ExecutaQuery(599,'update preferencia set versao = ''2.1.3.3'''); // iniciou odontograma
   ExecutaQuery(600,'insert into parametro values(''VALORC'',''15'',''Qtde Dias de validade de um orçamento'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(601,'create unique index ix_numero on orcamento (numero)');
   ExecutaQuery(602,'create table Msg_odonto ' +
                    '(indice int identity(1,1) primary key, ' +
                    'orcamento int not null, ' +
                    'cd_servico int not null, ' +
                    'tp_evento char(1) not null, ' +
                    'tx_evento varchar(300) not null, ' +
                    'cd_criterio smallint not null, ' +
                    'tp_criterio varchar(11) not null, ' +
                    'constraint fk_msg_odonto_orcamento foreign key (orcamento) references orcamento (numero) ) ');
   ExecutaQuery(603,Dmat.tr_i_delMsgOdonto.sql);
   ExecutaQuery(604,'insert into parametro values(''IMPGRA'',''N'',''Se "S" Imprime Orçamento em modo Gráfico'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(605,Dmat.delete_orcamento.sql);
   ExecutaQuery(606,'alter table servicos add extracao bit');
   ExecutaQuery(607,'update servicos set extracao = 0');
   ExecutaQuery(608,'alter table servicos alter column extracao bit not null');
   ExecutaQuery(609,'delete itens_orcamento where orcamento = 0');
   
   ExecutaQuery(610,'update preferencia set versao = ''2.1.3.4''');
   // problema com desconto na via do cliente
   ExecutaQuery(611,'update preferencia set versao = ''2.1.3.5''');
   ExecutaQuery(612,'update preferencia set versao = ''2.1.3.6''');
   ExecutaQuery(613,'alter table log_erro alter column msgErro varchar(4000)');
   ExecutaQuery(614,'update preferencia set versao = ''2.1.3.7''');
   ExecutaQuery(615,'alter table Itens_PagDentista add status char(1) default(''N'')');
   ExecutaQuery(616,'update Itens_PagDentista set status = ''N''');
   ExecutaQuery(617,'alter table Itens_PagDentista alter column status char(1) not null');
   ExecutaQuery(618,'create trigger tr_u_verifStatusPagDentista on Itens_PagDentista ' +
   'for update as ' +
   'if update (MesAno) ' +
      'if exists(select * from inserted i where i.status = ''C'' and i.MesAno <> '''') ' +
      'begin ' +
        'raiserror(''ATENÇÃO! Não é possível efetuar o pagamento desse serviço, o mesmo encotnra-se cancelado '',16,1) ' +
        'Rollback tran ' +
      'end ');

   ExecutaQuery(619,'create table menus_Desativados (NmOpcao varchar(150) not null primary key, dtDesativacao smalldatetime default(getdate()))');
   ExecutaQuery(620,'insert into  menus_Desativados (NmOpcao) values(''Relatório Contratos Cancelados'')');
   ExecutaQuery(621,'insert into  menus_Desativados (NmOpcao) values(''Relatório Contratos Cancelados/Representante'')');
   ExecutaQuery(622,'insert into  menus_Desativados (NmOpcao) values(''Vendas Analítico(Contratante)'')');
   ExecutaQuery(623,'insert into  menus_Desativados (NmOpcao) values(''Vendas Sintético'')');
   ExecutaQuery(624,'alter table operador add dtExclusao datetime');
   ExecutaQuery(625,'insert into parametro values(''OCUEXL'',''S'',''Se S não mostra usuários do sistema excluídos no cadastro de operadoes, se N mostra'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(626,'update preferencia set versao = ''2.1.3.8''');
   ExecutaQuery(627,'alter table faturamento add empresa bit');
   ExecutaQuery(628,'update faturamento set empresa = contratante.empresa from contratante where codigo_contratante = codigo');

   ExecutaQuery(629,'create trigger tr_i_faturamento on faturamento ' +
   'for insert ' +
   'as ' +
   'update faturamento set empresa = c.empresa ' +
   'from ' +
   '	contratante c, ' +
   '	inserted i ' +
   'where ' +
   '	    i.codigo_contratante = c.codigo ' +
   '	and faturamento.numero_titulo = i.numero_titulo ' +
   '    and faturamento.desdobramento = i.desdobramento ' +
   '    and faturamento.data_vencimento = i.data_vencimento ');


   //STATUS PAG DENTISTA(CANCELADO ATIVO), INIBIR USUARIOS SISTEMA EXCLUIDO, INIBIR MENUS INITUILZADOS,CADASTRO DE TIPO LIGAÇÃO
//    CADASTRO DE EMPRESA(FORM) SABADO DIA 16(4 HRS ANALISE PRBLEAMS COM MORENINHA,BACKUP VALIDAÇÃO, ATUALIZAÇÃO VERSÃO
//    ALTERAÇÃO ORÇAMENTO PARA GRAVAR LOG ERROS NO BANCO(13/06 TAMBÉM), INCLUSOA DE TELA PESQUISA LOG ERRO(14/06), ALTERAÇÃO ROTINA TIRACHAR,
//    eliminado cpf usuario 16314(adalberto), auxilio nos erros sib


   ExecutaQuery(630,'update preferencia set versao = ''2.1.3.9''');

   //ExecutaQuery(579,'update preferencia set versao = ''2.1.2.8''');
   // para esta versão falar da volta do titulo para reimpressão qdo o recibo é cancelado


//   colocar campo status nos grids de recibo
//   deixar imprimir recibo novamente de um titulo que estiver em um recibo cancelado
//   não deixar imprimir recibo cancelado
//   colocar usuario que cancelou o recibo
//   colocar opção de cancelamento de recibo
//   colocar restrição para cancelamento de recibo


   // na versão 2126 foi implementado
   // 1) ateração layout cef, numero_titulo agora esta preenchendo com zeros a esquerda
   // 2) Validação dos dados de banco/agencia/conta/digito quando o debito for CEF, banco = 104, agencia com 4 digtos, conta com 11 digitos, e digito com 1 digito

   ExecutaQuery(631,'update preferencia set versao = ''2.1.4.0''');
   // valor procedimento(digitar valor em real)
   // analise diverg rel baixados por dt vencto
   ExecutaQuery(632,'update preferencia set versao = ''2.1.4.1''');
   //42
   //somente recompilei para ver se resolvia o problema dos relatorios
   ExecutaQuery(633,'update preferencia set versao = ''2.1.4.2''');
   //43
   //CONCLUSÃO VIA CLIENTE
   //ANALISE DA IMPRESSÃO NAO IMPRIMI
  ExecutaQuery(634,'update preferencia set versao = ''2.1.4.3''');
  //44 estava imprimindo via grafico e caracter da via  convenio
  // acertado rel de aniversariantes, idade, qtde total, ordenacao por mes/dia
  // configuracao etiq.

  ExecutaQuery(635,'update preferencia set versao = ''2.1.4.4''');
  ExecutaQuery(636,'insert into parametro values(''ETCOL'',''52'',''Qtde Caracter p/ inicio da impressão da 2º coluna de Etiqueta'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(637,'insert into parametro values(''ETROW'',''7'',''Qtde Linhas p/ início da impressão da 2º linha de etiqueta'',''U'',''SISTEMA'',getdate())');
  //alterada a trigger para nao deixar gravar autorizacao sem a data

  ExecutaQuery(638,DmAt.Querytr_u_inibeAlterarUsu.sql);
  //45 - verificado erro nos orcamentos que nao autorizavam mas iam para o contas a receber
  ExecutaQuery(639,'update preferencia set versao = ''2.1.4.5''');
  // 46 debito bradesco
  ExecutaQuery(640,'update preferencia set versao = ''2.1.4.6''');
  //46 erro ao excluir receber no orçamento
  ExecutaQuery(641,'update preferencia set versao = ''2.1.4.7''');
  //etiq. por usuario
  //confg etiq.
  //formatacao telefone
  //inclusao de dados cpf/parantesco/vendedor qdo titular
  ExecutaQuery(642,'update preferencia set versao = ''2.1.4.8''');
  ExecutaQuery(643,'alter table grau_parentesco add ativo bit');
  ExecutaQuery(644,'update grau_parentesco set ativo = 1');
  ExecutaQuery(645,'alter table grau_parentesco alter column ativo bit not null');

  // 48
  // etiq. gambi.
  // grau_parentesco
  ExecutaQuery(646,'update preferencia set versao = ''2.1.4.9''');
  ExecutaQuery(647,DmAt.Querytr_u_i_consiste_dados.sql);
  ExecutaQuery(648,'update preferencia set versao = ''2.1.5.0''');
  // 51 07/08/07 analise sib tipo de cotnratação
  // auxilio gabi sib
  // auxilio gabi impressora
  // dados nota promissoria, abre tela para alterar quando necessário.
  ExecutaQuery(649,'update preferencia set versao = ''2.1.5.1''');
  // formatação telefone(somente na inclusao formatar)
  // restauração e validação do backup
  ExecutaQuery(650,'update preferencia set versao = ''2.1.5.2''');
  // Kelly alegou que baixas estavam sem forma pagto,testei programa e nao deixou baixar sem forma pagto
  // verifiquei na base se havia alguma baise sem, mas nao encontrei, kelly vai verificar e me mostrar
  // acerto relatorio do gerenciador do fat. para obedecer aos parametros PJ PF ou todos
  ExecutaQuery(651,'update preferencia set versao = ''2.1.5.3''');
  // 54 relatorio de vendas , sair valor com desconto.
  ExecutaQuery(652,'update preferencia set versao = ''2.1.5.4''');
  //55
  // alteraçãos ANS, lista usuarios que exec determ serviço pela 1ª vez no ano
  // lista usuarios que exec determ serviço pela 1ª vez no ano ate determinada idade
  // lista serviços pago no periodo
  // elaborei os scripts nessa versao o form FmANSUsuXServPorAno eh para a versao 56
  ExecutaQuery(653,'update preferencia set versao = ''2.1.5.5''');
  //56
  // criação das telas para atender ANS menus ANS/Servico X Usuario 1ª Vez Ano e ANS/Qtde paga serviço no periodo
  // 5:30 em casa e sábado 01/09/2007 3:50
  ExecutaQuery(654,'update preferencia set versao = ''2.1.5.6''');
  ExecutaQuery(655,'insert into disponiveis  values (7,7,70,''ANS'',''Usuários X Serviços 1º Vez no ano'',null)');
  ExecutaQuery(656,'insert into disponiveis  values (7,8,80,''ANS'',''Qtde Serviço Pago no Período'',null)');
  //57
  // Atualização versão seato, correção de eerros atualização de versão 2 hora
  // relatório nao imprimi recompilado programa no delphi 6 1 hora
  // encrypt decrytp (na multi)
  ExecutaQuery(657,'update preferencia set versao = ''2.1.5.7''');

  if dm.execmd('select count(*) q from parametro where cd_parametro = ''ENCRY''','q') = '0' then
  begin
     ExecutaQuery(658,'insert into parametro values(''ENCRY'',''S'',''Indica se está usando cryptografia ou não(temporário pode ser tirado)'',''U'',''SISTEMA'',getdate())');
     dm.QueryGenerica.close;
     dm.QueryGenerica.SQL.Clear;
     dm.QueryGenerica.SQL.add('select * from operador');
     dm.QueryGenerica.RequestLive := true;
     dm.QueryGenerica.open;

     while not dm.QueryGenerica.Eof do
     begin
        dm.QueryGenerica.Edit;
        dm.QueryGenerica.FieldByName('senha').AsString := dm.Encrypt(dm.QueryGenerica.FieldByName('senha').AsString);
        dm.QueryGenerica.Post;
        dm.QueryGenerica.Next;
     end;
  end
  else
     ExecutaQuery(658,'select getdate()');

  // 58 correção seato problema na NP,saindo com emitente errado
  ExecutaQuery(659,'update preferencia set versao = ''2.1.5.8''');

  // 59 presencial mt recibo impresso seato
  // // orcamento erro ao excluir orcamento inicio de procura erro
  ExecutaQuery(660,'update preferencia set versao = ''2.1.5.9''');
  ExecutaQuery(661,Dmat.delete_orcamento.sql);
  // ferias
  ExecutaQuery(662, DmAt.Altera_Receber.SQL);
  // 60
  // erro ao excluir o orcamento
  // filtro gerar receber
  ExecutaQuery(663,'update preferencia set versao = ''2.1.6.0''');
  ExecutaQuery(664,Dmat.delete_orcamento.sql);
  //61 26/09/2007
  // ordenacao rel pagto dentist. protetico por ordem de nome de clinica
  // verificacao do caminho cobranca Cef(boleto) gerou em local errado devido a mudanca c:\cobranca\cobranca antes era c:\cobranca
  
  ExecutaQuery(665,'update preferencia set versao = ''2.1.6.1''');
  // 62 férias
  // alterado parametro orcamento, para nao deixar alterar se o mesmo estiver autorizado
  // somente usuarios com permissões especiais podem alterar orcamentos autorizados
  // habilitado cadastro de permissoes especiais
  ExecutaQuery(666,'update preferencia set versao = ''2.1.6.2''');
  ExecutaQuery(667,'update parametro set vl_parametro = ''N'' where cd_parametro = ''ALTORC''');
  //63 férias   inibir o envio de mensalidade para inadimplentes
  // criado registro de log de alteração do campo lg_geraFat
  ExecutaQuery(668,'alter table contratante add lg_geraFat bit');
  ExecutaQuery(669,'update contratante set lg_geraFat = 1');
  ExecutaQuery(670,'alter table contratante alter column lg_geraFat bit not null');
  ExecutaQuery(671,'create table log_geraFaturamento ' +
                   '(data datetime primary key, ' +
                   'cd_contratante int not null, ' +
                   'vr_anterior bit not null, ' +
                   'vr_atual    bit not null, ' +
                   'computador  varchar(30), ' +
                   'usuario     varchar(30))');

  ExecutaQuery(672,'create trigger tr_u_verifContrate on contratante ' +
  'for update ' +
  'as ' +
  'if update (lg_geraFat) ' +
  'insert into log_geraFaturamento select getdate(), i.codigo,d.lg_geraFat,i.lg_geraFat,host_name(),null ' +
  'from inserted i, deleted d where i.codigo = d.codigo');
  ExecutaQuery(673,'update preferencia set versao = ''2.1.6.3''');
  // 64 férias
  // relatorio de inadimplencia
  ExecutaQuery(674,'update preferencia set versao = ''2.1.6.4''');
  ExecutaQuery(675,'insert into disponiveis  values (1,10,109,''Opções'',''Contratos'',''Re. Contrat. Inadimplentes'')');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
   begin
      ExecutaQuery(676,'insert into permissoes values (14,1,10,109,0)');
      ExecutaQuery(677,'insert into permissoes values (42,1,10,109,0)');
   end
   else
   begin
      ExecutaQuery(676,'select getdate()');
      ExecutaQuery(677,'select getdate()');
   end;
  ExecutaQuery(678,'update preferencia set versao = ''2.1.6.5''');
  // 66
  // incluido opção nos disponiveis para alterar orcamento ja autorizado
  // alterado pagto de protetico para nao mudar status do orcamento
  // verificação erro seato atualizacao de versao
  // aumento campo obs receber
  // correção erro maquina Kelly sem permissão para alterar arquivo c:\errosEnvioReceber.txt
  ExecutaQuery(679,'update preferencia set versao = ''2.1.6.6''');
  ExecutaQuery(680,'insert into disponiveis  values (2,4,50,''Orçamentos'',''Alteração Orc. Autorizado'',null)');
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para multi
  begin
      ExecutaQuery(681,'insert into permissoes values (14,2,4,50,0)');
      ExecutaQuery(682,'insert into permissoes values (42,2,4,50,0)');
   end
   else
   begin
      ExecutaQuery(681,'select getdate()');
      ExecutaQuery(682,'select getdate()');
   end;
  ExecutaQuery(683,'alter table receber alter column Observacoes varchar(100)');
  ExecutaQuery(684,'update preferencia set versao = ''2.1.6.7''');
  ExecutaQuery(685,'update preferencia set versao = ''2.1.6.8''');
  ExecutaQuery(686,'update preferencia set versao = ''2.1.6.9''');
  //alteração 69
  // relatorio de vendas com valor errado, erro na procedure SpCalculaDesconto
  // estava quardando desconto do usuario anterior, devido ao problema is null
  // nas variaveis de output
  // 1:30 multiodonto
  // 2 horas em casa
  ExecutaQuery(687,dmat.SpCalculaDesconto.sql);
  // 70
  //06 e 07/11 exclusao de parcelas do orçamento quando houver
  //
  ExecutaQuery(688,'update preferencia set versao = ''2.1.7.0''');
  ExecutaQuery(689,dmat.delete_orcamento.sql);
  // 71 inicio 07/11/07
  // 07/11 - inclusão parametro contratante ativos/excluidos/todos no relatorio Aberto Vencimento FormRelatoriosReceber
  // 08 e 09/11 Home - analise do relatorio Títulos Gerados (FormRelatoriosReceber) g´raficos incoerentes

  // 10/11 - multi inclusão parametro contratante ativos/excluidos/todos no relatorio Aberto por forma cobrança FormRelatoriosReceber
  // 10/11 - mult o relatorio estava filtrando fixo apenas desdobramento M e T, o grafico final(geral) mostrava de todos os titulos
  // 10/11/ - modifquei o relatorio foi criado FmSelTpDoc para selecionar por Tipo de Documento e nao desdobramento
  // 10/11 Desinstalação sql 2005

  ExecutaQuery(690,'update preferencia set versao = ''2.1.7.1''');
  ExecutaQuery(691,'update preferencia set versao = ''2.1.7.2''');
  // 72 inicio 15/11
  // 15 e 17/11 home - alteraçaõ rel QrVendasPorUsu, qtde vidas ativas qtde contratos, qtde debitos auto. vr liqu vendedor
  // 18 home - acerto rel QRListaVendasVencimento e QRListaVendasPeriodoVencimento campo Tratamento estava saindo errado
  // inclusão gráfico por valores no relatorio de titulos gerados
  ExecutaQuery(692,'insert into parametro values(''VRCONT'',''7'',''Valor de comissão p/ vendedor por cada contrato'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(693,'insert into parametro values(''VRDEBI'',''0'',''Valor de comissão p/ vendedor por cada contrato com débito automático'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(694,'update preferencia set versao = ''2.1.7.3''');
  // 73 inicio 22/11 multi
     // levantamento problemas com a Kelly
     // Verifc. pq alguns orçamentos nao saem no relatorio de orç em aberto, devido o tipo de orçamento so sai tipo 1 confo orientacao bia
  // 24/11 Verif mensalidade contrat 14757 estava R$18... acertei a mensalidade para 15.87
     // correção cadastro de operadores qdo alterado algum dado usuario a senha era alterada
     // verif. pq percentual do grafico dos titulos gerados naao batia com total apresentado no relatorio
     // corrigido a procedure titulos_pagos onde era considerado como pago valor > 0 qdo o correto seria
     // data_pagto is not null, tb havia comparação = nulll inválida..
     // incluido totais contratos/debitos autom/qtde ativos/qtde cancelado no rel vendas/relatorio/vendas analitico(usuario)
     // incluido quebra por vendedor nos rels vendas/relatorio/vendas analitico(usuario) e vendas/relatorio/vendas analitico por vencimento
     //restaurdo copia backup para recuperar senha dr. elias

  ExecutaQuery(695,dmat.titulos_pagos.SQL);
  ExecutaQuery(696,'update preferencia set versao = ''2.1.7.4''');
   // 74
  //27 home
  // incluido percentual e qtde de contratos em Crédito e Debito no relatorio vendas/relatorio/vendas
  // correção do erro de data invertida devido ao comando set dateformat dmy

  ExecutaQuery(697,'update preferencia set versao = ''2.1.7.5''');
  ExecutaQuery(698,dmat.titulos_pagos.SQL);
  // 29/11 e 06/12 - Multi
  // Foi negociado com empresa H M desconto progressivo de acorod com qtde de usuarios no plano
  // sistema foi adaptado para conceder desconto apenas para PF, realizei análise do que deveria ser alterado
  // para atender PF e PJ, quais forms deveriam ser alterados e quais objetos do banco de dados(procedures)

  // 08/12 - multi
  // Implementado filtro de titulos PJ , PF, todos no formFaturamento
  // Kelly alega que foi gerado titulos CEF em duplicidade, analisei todas as possibilidades e nada encontrado de
  // erro no sistema, ou o arquivo foi enviado 2 vezes para a CEF ou houve problema na CEF
  // Análise de divergência relatorios 11 e 17,  no rel 17 soma os valores pagos , porem existem titulos
  // sem data de pagamento com valor(extorno de pagamento) ja haviamos identificado e esta na lista de pendencias
  // alterei a PROCEDURE Titulos_Pagos para zerar valor qdo data pagto is not null
  // no rel 17 nao considerava titulo cujo valor eh zero, porem existe titulos cujo valor eh zero e valor pago > zero
  // e data pagamento is not null exemplo titulo 11671 contratante 11671

  ExecutaQuery(699,'update preferencia set versao = ''2.1.7.6''');
  ExecutaQuery(700,'insert into disponiveis  values (5,6,10,''Relatórios'',''Endereço de Dentistas'',null)');
  // 76
  // 12/12 - na multi geração de dados de dentistas para etiquetas
  // 77 15/12 multi e 16 e 17 home

  // finalizado processo para sistema reconhecer desconto para contratantes pj, foi alterado rotina
  // de faturamento, rel. faturamento, relatorio de contratntes, modulo de ajuste mensalidades.
  ExecutaQuery(701,'update preferencia set versao = ''2.1.7.7''');
  ExecutaQuery(702,dmat.SpCalculaDesconto.sql);
  ExecutaQuery(703,dmat.sp_relMensalidadeContrat.sql);
  ExecutaQuery(704,dmat.spCalcDescContrat.sql);
  ExecutaQuery(705,dmat.SpVrMensalidade.sql);
  ExecutaQuery(706,dmat.sp_verifFatAnterior.sql);
  //78
  // 18 e 19/12 inclusao drive dbexpress
  // 20/12/07 inibição do serviço 5110 para dentistas superiores a 1000
  ExecutaQuery(707,'update preferencia set versao = ''2.1.7.8''');
  ExecutaQuery(708,'insert into parametro values(''DBEXP'','''',''Chave para verificar se a conexão DBexpress esta na mesma base do BDE'',''I'',''INTERNO'',getdate())');
  ExecutaQuery(709,'insert into parametro values(''IN5110'',''N'',''Inibe o serviço 5110 para dentistas com código superior a 1000'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(710,dmat.tr_i_inibeServico.SQL);
  ExecutaQuery(711,dmat.Querytr_u_inibeAlterarUsu.SQL);
  ExecutaQuery(712,'update preferencia set versao = ''2.1.7.9''');
  //79
  // 27/12 - Multi - Criação tela de pesquisa de proteticos, inclusão de pesquisa de protetico cadastro de protetico
  // pagametno de protetico, filtro de contratantes excluídos na telae contratanta(cadastro de contratatne
  // 27/12 - home a noite - correção de erro dbexpress.


  ExecutaQuery(713,'update preferencia set versao = ''2.1.8.0''');
  //80 03/01 - multi - Desconto X Nr usuarios, estava faltando parametrização, treinamento de Gabi de como proceder.
  //   03/01 - multi - Restreamento de erro de titulos com valor pago preenchido e data pagto vazia, achei que era
 //    03/01          na baixa do titulo, realizei testes de baixa e nao consegui reproduzir o problema, encontrei caso
       //03/01        contratante 12312 realizado por kelly, porem a Kelly nao veio trabalhar
 //    03/01           no extorno da baixa voltei a forma de pagamneto para a padraõ 01 e inclui o ulitmo usuario que realizou a alteracao
      //03/01          Inibição de botoes de navegação no cadastro  de protetico
    // 03/01 - multi - permissão individual para relatorios contas a receber.       
  ExecutaQuery(714,'INSERT INTO DISPONIVEIS VALUES(3,5,01,''Financeiro'',''Relatórios'',''01 - Aberto p/ Contratante'')');
  ExecutaQuery(715,'INSERT INTO DISPONIVEIS VALUES(3,5,02,''Financeiro'',''Relatórios'',''02 - Aberto p/ Vencimento'')');
  ExecutaQuery(716,'INSERT INTO DISPONIVEIS VALUES(3,5,03,''Financeiro'',''Relatórios'',''03 - Aberto p/ Forma Cobrança'')');
  ExecutaQuery(717,'INSERT INTO DISPONIVEIS VALUES(3,5,04,''Financeiro'',''Relatórios'',''04 - Aberto Vencimento Completo'')');
  ExecutaQuery(718,'INSERT INTO DISPONIVEIS VALUES(3,5,05,''Financeiro'',''Relatórios'',''05 - Aberto p/ Grupo Contratante'')');
  ExecutaQuery(719,'INSERT INTO DISPONIVEIS VALUES(3,5,06,''Financeiro'',''Relatórios'',''06 - Aberto c/ Orçamento Trat.'')');
  ExecutaQuery(720,'INSERT INTO DISPONIVEIS VALUES(3,5,07,''Financeiro'',''Relatórios'',''07 - Baixados p/ Contratante'')');
  ExecutaQuery(721,'INSERT INTO DISPONIVEIS VALUES(3,5,08,''Financeiro'',''Relatórios'',''08 - Baixados p/ Data Baixa'')');
  ExecutaQuery(722,'INSERT INTO DISPONIVEIS VALUES(3,5,09,''Financeiro'',''Relatórios'',''09 - Baixados p/ Forma Cobrança'')');
  ExecutaQuery(723,'INSERT INTO DISPONIVEIS VALUES(3,5,10,''Financeiro'',''Relatórios'',''10 - Baixados p/ Status/Orçamento'')');
  ExecutaQuery(724,'INSERT INTO DISPONIVEIS VALUES(3,5,11,''Financeiro'',''Relatórios'',''11 - Baixados p/ Data Sintético'')');
  ExecutaQuery(725,'INSERT INTO DISPONIVEIS VALUES(3,5,12,''Financeiro'',''Relatórios'',''12 - Baixados p/ Tipo Pgto'')');
  ExecutaQuery(726,'INSERT INTO DISPONIVEIS VALUES(3,5,13,''Financeiro'',''Relatórios'',''13 - Cancelados p/ Contratante'')');
  ExecutaQuery(727,'INSERT INTO DISPONIVEIS VALUES(3,5,14,''Financeiro'',''Relatórios'',''14 - Cancelados p/ Cancelamento'')');
  ExecutaQuery(728,'INSERT INTO DISPONIVEIS VALUES(3,5,15,''Financeiro'',''Relatórios'',''15 - Contratos p/ Forma Cobrança'')');
  ExecutaQuery(729,'INSERT INTO DISPONIVEIS VALUES(3,5,16,''Financeiro'',''Relatórios'',''16 - Etiqueta Cobranca'')');
  ExecutaQuery(730,'INSERT INTO DISPONIVEIS VALUES(3,5,17,''Financeiro'',''Relatórios'',''17 - Títulos Gerados'')');
  ExecutaQuery(731,'INSERT INTO DISPONIVEIS VALUES(3,5,18,''Financeiro'',''Relatórios'',''18 - Resumo de baixas em bancos'')');
  ExecutaQuery(732,'update preferencia set versao = ''2.1.8.1''');  
  //81
  // 05/01/08 - multi - incluido opção de pesquisar contratante na baixa do titulo e tela de titulos baixados
  //                    Alterado rel 02,03,06 incluindo espaço para observações de contatos..
  //                    no estorno do tit esta voltando forma de cobrança original
  //                    nao deixa salvar titulo na baixa se nao for informado forma pagto, problema de aparecer valor pago sem ter sido pago
  //                     script pra dar 10% valor cobranca dos procedimentos
  //
  ExecutaQuery(733,'update preferencia set versao = ''2.1.8.2''');
  //82
  // 07 e 08/01/2008
  // implementação tela simulação para pagamento FmSimulPgTit

  ExecutaQuery(734,'create table bairro(cd_bairro smallint primary key ,ds_bairro varchar(35) not null)');
  ExecutaQuery(735,'alter table endereco_x_dentista add cd_bairro smallint');
  ExecutaQuery(736,'alter table endereco_x_dentista add constraint fk_enderxdentistaXBairro foreign key (cd_bairro) references bairro (cd_bairro)');
  ExecutaQuery(737,'update preferencia set versao = ''2.1.8.3''');
  // 83
  // 10/1/08 multi - habilitado alterar tipo pago baixa de titulo sem precisar cancelar recibo
  // criado cadastro bairro
  // alterado cadastro de endereco dentista para buscar cairro
  ExecutaQuery(738,'update preferencia set versao = ''2.1.8.4''');
  // 84 home
  // 14/01 home - incluido na tela de consulta de dentista pesquisa
  // por bairro e tb por especialidade.
  ExecutaQuery(739,'update preferencia set versao = ''2.1.8.5''');
  // 85 17/01/08 mult - instalação delphi 7,sql server client
  // inicio ajuste endereço de cobrança(truncar 40) sem perder nr e complemento
  //  19/01/08 restore prototipo(erro log), finalizado ajuste endereço, geração arquivo banco para verificar endereço
  // correção recibo, no union tava trazendo apenas um registro(eram 2) eram identicos. inclusão campo cobrança no recibo
  // inclusão campo operador de alteração no cadastro de dentista.
  ExecutaQuery(740,'alter table dentista add cd_op_alter int');
  ExecutaQuery(741,'alter table dentista add constraint fk_dentistaXoperador foreign key (cd_op_alter) references operador (codigo)');
  ExecutaQuery(742,'update preferencia set versao = ''2.1.8.6''');
  // 86 24/01/08 multi
  // confecção relatório de conferencia de cart~~oes/debito creéidto financeiro/relatórios/Conferencia de baixa de cart~eos

  ExecutaQuery(743,'update preferencia set versao = ''2.1.8.7''');
  //87 07/02/08 alteração na via do cliente no orçamento, incluso parcelas, alteração na via convenio incluso desconto

  ExecutaQuery(744,'update preferencia set versao = ''2.1.8.8''');
  ExecutaQuery(745,'insert into parametro values(''DESCOR'',''0'',''Desconto padrão para orçamentos em (%)'',''U'',''SISTEMA'',getdate())');
  // 09/02/08 correção de erros no orcamento na hora de imprimir
  // inclusao da opção de desconto automatico parametro descor
  // correção no programa para alterar valor e ou nr de parcelas de acordo com a alteração no orçamento de nr de parcelas e descontos..
  ExecutaQuery(746,'update preferencia set versao = ''2.1.8.9''');
  // home 11 e 12/02/08 finalização do processo do desconto automatico
  // correção da via do cliente onde estava saindo valores de dentista e protetico e saldo
  ExecutaQuery(747,'update preferencia set versao = ''2.1.9.0''');
  ExecutaQuery(748,dmAt.tr_u_verifContrate.sql,'tr_u_verifContrate','TR');
  // 9.0 14/02/08 multi acerto pesq dentias estava aparecendo excluidos
  // correção mensalidade usuario 14667
  // inibir alterar plano contratante
  ExecutaQuery(749,'update preferencia set versao = ''2.1.9.1''');
  // 9.1 23/02 multi melhoria inclusao de orc. abre autom tele de pesquisa usu e dentista
  // melhoria na tel de pesq usu e dent
  // validação backup
  ExecutaQuery(750,'insert into parametro values (''TX_ADE'',''7'',''Valor da Taxa de adesão?'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(751,'update preferencia set versao = ''2.1.9.2''');
  // 9.2 home inclusão taxa de adesão relatorio de contratantes.
  //     ajuste via cliente para sair dente e face(local)
         // rel contratante em modo texto para enviar por e-mail
  ExecutaQuery(752,'update preferencia set versao = ''2.1.9.3''');
  ExecutaQuery(753,'update preferencia set versao = ''2.1.9.4''');
  // multi 130308 94 ajuste do backup de log de hora em hora
  // backup de sabado e backup diario
  // inclusao do vendedor no cadDebCef e opção de ordenar por vendedor.
  // exportado excel manutencao
  // incluido total no relatorio de contratante
//  ExecutaQuery(754,'update preferencia set versao = ''2.1.9.4''');
  ExecutaQuery(754,'drop trigger tr_u_verifContrate');
  ExecutaQuery(755,'update contratante set lg_geraFat = 1 where lg_geraFat is null and exclusao is null');
  ExecutaQuery(756,dmAt.tr_u_verifContrate.sql,'tr_u_verifContrate','TR');
  ExecutaQuery(757,'alter PROCEDURE sp_delete_Erros AS DELETE Erros_Faturamento');
  ExecutaQuery(758,'update preferencia set versao = ''2.1.9.5''');
  ExecutaQuery(759,dmAt.Tableseq_faturamento.sql);
  ExecutaQuery(760,dmAt.ix_faturamento.sql);
  ExecutaQuery(761,dmAt.pGeraSeqFaturamento.sql);
  ExecutaQuery(762,'update preferencia set versao = ''2.1.9.6''');
  ExecutaQuery(763,dmAt.delete_orcamento.SQL);
  ExecutaQuery(764,'alter table  itens_orcamento  with nocheck add  constraint  fk_orcamento_itens_orcamento foreign key   (orcamento) references orcamento (numero) ');
  ExecutaQuery(765,'INSERT INTO DISPONIVEIS VALUES(3,14,10,''Financeiro'',''Permite retroagir data baixa'',''null'')');
  ExecutaQuery(766,'insert into parametro values (''CEPWEB'',''S'',''Permite buscar o endereço via webservice através do CEP'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(767,'update preferencia set versao = ''2.1.9.7'''); //260408
  ExecutaQuery(768,'alter table itens_orcamento add status char(1)');
  ExecutaQuery(769,'drop trigger Tr_i_u_validacoesOdonto');
  ExecutaQuery(770,'update itens_orcamento set status = ''A''');
  ExecutaQuery(771,'alter table itens_orcamento alter column status char(1) not null');
  ExecutaQuery(772,DmAt.QueryTr_i_u_validacoesOdonto.sql,'Tr_i_u_validacoesOdonto','TR');
  ExecutaQuery(773,DmAt.QueryPVerifCarenciaCrit.sql,'PVerifCarenciaCrit','P'); // era a  instrucao 2553
  ExecutaQuery(774,'INSERT INTO DISPONIVEIS VALUES(2,5,10,''Orçamento'',''Permite alterar Status item do orçamento'',''null'')');
  ExecutaQuery(775,'update preferencia set versao = ''2.1.9.8'''); //170508
  ExecutaQuery(776,'drop trigger tr_i_inibeServico'); //acerto no fonte agora,(tratametno docodigo serviço 5110)
  // verif. problema maquina nova, programa nao entra(reinstalação)
  // o bloqueio de alterar data retroativa na baixa, bloqueou tb o estorno(corrigido)
  //valid backup
  //acerto mens 14312(tava saindo 19,38) correto 15,87

  //97 incluido status orcamento, altrado rotinas do odontograma para desconsiderar
//   itens do orcamento cujo status estejam cancelados
//   rastreamento do erro que esta acontecendo ao fechar, suspeita versao delphi(7) X Quickreport
//   validação do backup,
//   incluido rotina automatica para zerar o log de transações
  ExecutaQuery(777,'update preferencia set versao = ''2.1.9.9'''); //170508
  // corrigido orcamento codigo 5100 somente paa dentistas novos
  // alterado campo digito da conta, bradesco eh alfanumerico
  // instalação e configuração delphi maquina nova, instalação de isqlw
  // restauração do backup
  ExecutaQuery(778,'update preferencia set versao = ''2.2.0.0'''); //260508 multi
  ExecutaQuery(779,'select getdate()');

  // correção do erro que dava ao fechar o programa, depois de ter visualizado o  relatorio qrbaicliven

  ExecutaQuery(780,'update preferencia set versao = ''2.2.0.1'''); //310508 multi
  ExecutaQuery(781,'alter table clinicas add ExigeANS bit');
  ExecutaQuery(782,'update clinicas set ExigeANS = 0');
  ExecutaQuery(783,'alter table clinicas alter column ExigeANS bit not null');
  ExecutaQuery(784,DmAt.sp_relOrc_sip.sql,'sp_relOrc_sip','P');  
  // criado parametros ini login default
  // criado parametro ini PadraoChkContratExl para personalizar pesquia de excluidos no contratante
  // tirado mensagem de visualizar agenda no login
  // alterado cadastro dentista2/protetico para exigir campos obrigatorios ans(tabela clinicas campo ExigeANS)

  ExecutaQuery(785,'update preferencia set versao = ''2.2.0.2'''); //020608 multi
  // core~ção relatorio sip
  ExecutaQuery(786,'update preferencia set versao = ''2.2.0.3'''); //090608 multi
  // Ajuste pesquisa de dentista(antes quem nao tinha endereço nao aparecia
  // Ajuste Gerenciador de faturamento, quando For gerar os boletos considerar os parametros pj , pf ou todos
  ExecutaQuery(787,'update preferencia set versao = ''2.2.0.4'''); //10608 multi
  // pesquisa dentista ainda com problema(não tava filtrando excluídos)
  // Gerenciador de faturamento estava com problema ainda não considerando pj e pf, corrigido
  // aprimoramento nas rotinas de inibição de exclusão de orçamentos(orçamentos autorizados ou não)
  //
  ExecutaQuery(788,'update preferencia set versao = ''2.2.0.5'''); //160608 multi
  // implementando tela para mostrar quem autorizou com senha - odontograma..
  ExecutaQuery(789,dmAt.pGeraSeqFaturamento.sql);
  ExecutaQuery(790,'update preferencia set versao = ''2.2.0.6'''); //230608 multi
  // continuando na rotina   "implementando tela para mostrar quem autorizou com senha - odontograma.."
  ExecutaQuery(791,'update preferencia set versao = ''2.2.0.7'''); //300608 multi
  //alteraçao vr mensalidade contrat 17736(foi cadastrado errado)
  //configuração orientação ao tacio de como mudar diretorio de geração de arquivo boletos
  // criação novo compartilhamento

  ExecutaQuery(792,'alter table tipo_contato add ativo bit');
  ExecutaQuery(793,'update tipo_contato set ativo = 1');
  ExecutaQuery(794,'alter table tipo_contato alter column ativo bit not null');
  ExecutaQuery(795,'update preferencia set versao = ''2.2.0.8'''); //050708 multi
  //sib - alterado trigger para inibir cadastro de usuario sem titular
  // alterado programa
  ExecutaQuery(796,'alter table EventOdontograma drop constraint fk_EventOdontograma_itens_orcamento');
  ExecutaQuery(797,'alter table EventOdontograma drop constraint fk_EventOdontograma_itensorcamento');
  ExecutaQuery(798,DmAt.Querytr_u_i_consiste_dados.sql);
  ExecutaQuery(799,'update preferencia set versao = ''2.2.0.9'''); //070708 multi
  ExecutaQuery(800,'alter table parametro alter column ds_parametro varchar(180)');
  ExecutaQuery(801,'insert into parametro values (''DTVEN'',''NN'',''Data venda no cadastro de usuário, valores possíveis SS = Obrigatório e preenche automático igual data inclusão, SN  = Obrigatório mas não preenche automático NN = não obrigatório'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(802,'alter table usuario add dt_venda smalldatetime');
  // sextante continuação para não ter que digitar uma a um.

  ExecutaQuery(803,'update preferencia set versao = ''2.2.1.0'''); //140708 //seato
  if dm.ExecutaComando('select codigo c from empresa','c') = '2' then // somente seato
  begin
     ExecutaQuery(804,'insert into parametro values (''GRAEV'',''N'',''Indica se Grava Evento do odontograma'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(805,'UPDATE PARAMETRO SET VL_PARAMETRO = ''N'' WHERE CD_PARAMETRO = ''CRIODO''');
  end
  else
  begin
     ExecutaQuery(804,'insert into parametro values (''GRAEV'',''S'',''Indica se Grava Evento do odontograma'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(805,'select getdate()');
  end;

  ExecutaQuery(806,'update preferencia set versao = ''2.2.1.1'''); //140708 //mulri
  // tentativa de localizar erro de conexão ocupada...sem êxito
  // correção do erro no orçamento quando o atraso era da empresa dava erro de foreign key pois não tava associando o codigo do funcionario na variavel VUsuAutAtraso
  // criado procedure EnvMsgAtraso

  ExecutaQuery(807,'update preferencia set versao = ''2.2.1.2'''); //190708 //muulti
  ExecutaQuery(808,'insert into disponiveis  values (3,15,10,''Financeiro'',''Gerenciador Faturamento Individual'',null)');
  ExecutaQuery(809,'insert into parametro values (''FTPAR'',''S'',''Se S preenche parâmetros automaticamente na tela fe faturamento se N não preence'',''U'',''SISTEMA'',getdate())');
  
  // opção de faturamento individual
  // parametro para preencher ou não parametros faturamento
  // análise de altrações no orçamento solicitadas pela Kelly
  // rastreamento erro na tela de orcamento.
  // correção erro
  ExecutaQuery(810,'update preferencia set versao = ''2.2.1.3'''); //210708 //muulti
  // erro orcamento..
  ExecutaQuery(811,'update preferencia set versao = ''2.2.1.4'''); //280708 //Erro Orçamento novamente
  ExecutaQuery(812,'alter table dentista add cnes varchar(7)');
  ExecutaQuery(813,'alter table protetico add cnes varchar(7)');
  ExecutaQuery(814,'update preferencia set versao = ''2.2.1.5'''); //020808 //Incluído parametro nos relatorios pj pf ou todos relatório 08
  ExecutaQuery(815,'update preferencia set versao = ''2.2.1.6''');
  ExecutaQuery(816,'update preferencia set versao = ''2.2.1.7''');
  ExecutaQuery(817,'update preferencia set versao = ''2.2.1.8''');
  ExecutaQuery(818,'update parametro set vl_parametro = ''SS'' where cd_parametro = ''DTVEN''');
  ExecutaQuery(819,'update usuario set dt_venda  = data_inclusao where dt_venda is null and data_exclusao is null and ((cpf is not null and cpf not like ''% %'' and  cpf <> ''''))');
  ExecutaQuery(820,'update preferencia set versao = ''2.2.1.8''');
  ExecutaQuery(821,'update preferencia set versao = ''2.2.1.9''');



  //110808 //perseguindo erro oracamento ufa..
           // continuando alterações faturamento
           // alterado cadastro protetico
  Button1.Enabled := False;
  ExecutaQuery(822,'update preferencia set versao = ''2.2.2.0''');
  ExecutaQuery(823,'update preferencia set versao = ''2.2.2.1''');
  //22/09/08
  //erro na simulacao de pagto valor maior que mil dava erro
  // ordenacao por inclusao no de rel vendas por usuario
  // rel. vendas por usuario, sair nome don contratante titular e nao titular do plano
  //inicio alteracoes para separar totais por pj e pf no rel vendas por usuario

  ExecutaQuery(824,'update preferencia set versao = ''2.2.2.2''');
  // HOME 06 E 07/10 relatorio FrVendPeridTitular

  ExecutaQuery(825,dmat.sp_rel_vendas_contrat_titular.sql,'sp_rel_vendas_contrat_titular','P');
//  showmESSAGE('aTUALIZAR SCRIPT obj_faturamento.sql EM SERRANA');
  // 15/09/08 -- atuelizei em produção as alterações do faturamento

  ExecutaQuery(826,'update preferencia set versao = ''2.2.2.3''');
  ExecutaQuery(827,'alter table evento_fat add constraint fk_eventoFat_periodoFat foreign key (seq_periodo_fat) references periodo_fat (seq_periodo_fat)');
  ExecutaQuery(828,dmat.sp_controleVendasEmpresariais.SQL,'sp_controleVendasEmpresariais','P');
  ExecutaQuery(829,dmat.sp_controleVendasEmpresariais.SQL,'sp_controleVendasEmpresariais','P');

  ExecutaQuery(830,'update preferencia set versao = ''2.2.2.4''');

  ExecutaQuery(831,'update preferencia set versao = ''2.2.2.5''');
  ExecutaQuery(832,'CREATE CLUSTERED INDEX ix_nome ON Contratante ([Nome] ASC )');
  ExecutaQuery(833,'CREATE INDEX ix_nome ON Usuario ([Nome] ASC )');

  ExecutaQuery(834,'update preferencia set versao = ''2.2.2.6''');
  // 27/10/2008 corrigido problemas seq. bancos


  ExecutaQuery(835,'update preferencia set versao = ''2.2.2.7''');
  //03/11/08
  // Somente imprime via protetico se houver valor de protetico
  // tecla F2 para pesquisar contartante
  ExecutaQuery(836,'update preferencia set versao = ''2.2.2.8''');
  //Grafico inclusao exclusao usuario
  // falha na unite faturamento onde incluia registro de farura na alteração, é pra incluir somente na inclusoa de reigistro
  ExecutaQuery(837,'update preferencia set versao = ''2.2.2.9''');
  // ajuste unit faturamento, para processar eventos quando marcado opção enviado doc.
  // criado procedure delphi PAtualizaEventFatFull
  ExecutaQuery(838,'update preferencia set versao = ''2.2.3.0'''); // 29/11/08 multi
  // alteração relatorios diops tx suplementar para considerar data da venda e nao mais data da inclusao
  // validacao da data de exclusao e data da venda para alertar operador quando data superior ou inferior ao parametro TOLEDI
  ExecutaQuery(839,'insert into parametro values (''TOLEDI'',''10'',''Qtde de dias que o sistema irá alertar, quando data da venda ou data de exclusão for inferior a essa quantidade'',''U'',''SISTEMA'',getdate())');

 ExecutaQuery(840,'update preferencia set versao = ''2.2.3.1'''); // 16/12/08 modif. rel orcamentos(nao aprovados)
 ExecutaQuery(841,'update preferencia set versao = ''2.2.3.2'''); // 20/12/08 Etiquetas..inclusao qtde vidas rel faturamento..inclusao total rel cancelusuarios
 ExecutaQuery(842,DmAt.sp_listaEtiq.sql);

 ExecutaQuery(843,'update preferencia set versao = ''2.2.3.3'''); // 27/12/08
 ExecutaQuery(844,Dmat.delete_orcamento.sql);


 // o script da procedure sp_excluiOrcamento esta abaixo do end.
 // exclui porque tinha 2 rotindas  de exclusão
 ExecutaQuery(845,'drop procedure sp_excluiOrcamento'); // 27/12/08

  ExecutaQuery(846,'update preferencia set versao = ''2.2.3.4'''); // ferias 01/2009 alteração menu
  ExecutaQuery(847,'alter table disponiveis add nm_menu varchar(100)');

  ExecutaQuery(848,'update preferencia set versao = ''2.2.3.5'''); // alteracao relatorio de orcamento incluido data na via dentista

  ExecutaQuery(849,'create table grupo_funcionario (cd_grupo smallint not null primary key,  ds_grupo varchar(25) not null) ');

  ExecutaQuery(850,'alter table operador add cd_grupo smallint');

  ExecutaQuery(851,'alter table operador add constraint fk_operador_grupo foreign key (cd_grupo) references grupo_funcionario(cd_grupo)');

  ExecutaQuery(852,'update preferencia set versao = ''2.2.3.6'''); // alteracao relatorio de orcamento incluido data na via dentista

  ExecutaQuery(853,'CREATE TABLE menu_disponivel (cd_menu smallint NOT NULL ,menu varchar (50) ,ds_menu varchar (50),nm_menu varchar (100),	seq_menu smallint NULL ,Subseq_menu smallint NULL , CONSTRAINT PK_MENU_DISPONIVEL PRIMARY KEY   CLUSTERED (cd_menu))');

  ExecutaQuery(854,'create table permissao_grupo (cd_grupo smallint not null,  cd_menu smallint not null, ' +
  ' constraint pk_permissao_grupo primary key  (cd_grupo,cd_menu), constraint fk_permissao_grupo_grupo foreign key (cd_grupo) references grupo_funcionario(cd_grupo), ' +
  ' constraint fk_permissao_grupo_menu foreign key (cd_menu)   references menu_disponivel(cd_menu) )');

  ExecutaQuery(855,'create table permissao_funcionario (cd_funcionario int not null, cd_menu smallint not null,' +
  'constraint pk_permissao_funcionario primary key(cd_funcionario,cd_menu), ' +
  'constraint fk_permissao_funcionario_operador foreign key (cd_funcionario) references operador(codigo), ' +
  'constraint fk_permissao_func_menu foreign key (cd_menu)   references menu_disponivel(cd_menu) )');
  ExecutaQuery(856,'insert into grupo_funcionario values (1,''Recepção'')');
  ExecutaQuery(857,'update operador set cd_grupo = 1');
  ExecutaQuery(858,'alter table operador alter column cd_grupo smallint not null');

  ExecutaQuery(859,'update preferencia set versao = ''2.2.3.7'''); // alteracao relatorio de orcamento incluido data na via dentista
  ExecutaQuery(860,dmat.SpOrcApagar.sql); // correção desse reol..para pegar data aprovação

 //31/01 rel. custo de orçamentos aprovados por dentista(detalhado e detalhado por serviço)
  // veerifi. cobertura orçamento(faltava cobertura para procedimento

  //
  ExecutaQuery(861,'update preferencia set versao = ''2.2.3.8'''); // 04/02/09 menu novo(continuacao)

  ExecutaQuery(862,'update preferencia set versao = ''2.2.3.9'''); // 09/02/09 div. grafico X Rel inclusao(um dt venda outro dt inclusao
  //alterado grafico para dt venda
  ExecutaQuery(863,DmAt.QueryTr_i_u_validacoesOdonto.sql,'Tr_i_u_validacoesOdonto','TR');

  ExecutaQuery(864,'update preferencia set versao = ''2.2.4.0'''); // 14/02/09 menus
  ExecutaQuery(865,'--alter table menu_disponivel add seq_menu smallint'); // JA TA CRIADO NA TABLE INSTRUÇÃO 853
  ExecutaQuery(866,'--alter table menu_disponivel add Subseq_menu smallint'); // IDEM
  ExecutaQuery(867, dmAt.SP_REL_FINANC_CLIENTE.sql,'SP_REL_FINANC_CLIENTE','P');
  ExecutaQuery(868,'update preferencia set versao = ''2.2.4.1'''); // 14/02/09 menus
  ExecutaQuery(869,'-- dmAt.SP_REL_FINANC_CLIENTE.sql');
  ExecutaQuery(870, dmAt.OpcoesMenu.sql);
  ExecutaQuery(871,'update preferencia set versao = ''2.2.4.2'''); // 14/02/09 menus
  ExecutaQuery(872,'update preferencia set versao = ''2.2.4.3'''); // 14/02/09 menus

  ExecutaQuery(873,'update preferencia set versao = ''2.2.4.4'''); // 16/03/09
  ExecutaQuery(874, dmAt.tr_u_VerifDesativaPlano.sql);
  ExecutaQuery(875,'update preferencia set versao = ''2.2.4.5'''); // 23/03/09 rel 10  
  ExecutaQuery(876,'update preferencia set versao = ''2.2.4.6'''); // 27/03/09 tabela de pagamento dentista
  ExecutaQuery(877,'create table TabelaPagto (cd_tabela smallint not null primary key,  ds_tabela varchar(40) not null,  dt_tabela smalldatetime not null)');
  ExecutaQuery(878,'create table TabPagto_vrServico (cd_tabela smallint not null,  cd_servico int not null,  vr_Dentista smallmoney not null, ' +
                   ' vr_Protetico smallmoney not null, constraint pk_tabpagtoVrServico primary key (cd_tabela,cd_servico),' +
                   ' constraint fk_TabPagtoVrServico_TabelaPagto foreign key (cd_tabela) references TabelaPagto (cd_tabela), ' +
                   ' constraint fk_TabPagtoVrServico_Servico foreign key (cd_servico) references Servicos (codigo))');

  ExecutaQuery(879,'insert into TabelaPagto values (1,''Tabela Padrão'',getdate())');
  // distinct abaixo por causa da seato
  ExecutaQuery(880,'insert into tabPagto_vrServico select distinct 1, codigo_Servico,valor_dentista,valor_protetico from ValorxProcedimento');
  ExecutaQuery(881,'alter table dentista add cd_tabela smallint');
  ExecutaQuery(882,'update dentista set cd_tabela = 1');
  ExecutaQuery(883,'alter table dentista alter column cd_tabela smallint not null');
  ExecutaQuery(884,'alter table dentista add constraint fk_Dentista_TabelaPagto foreign key (cd_tabela) references TabelaPagto (cd_tabela)');
  ExecutaQuery(885,'update preferencia set versao = ''2.2.4.7'''); //05/04/09
  ExecutaQuery(886,'update parametro set vl_parametro = ''N'' where cd_parametro = ''VALIDV''');
  ExecutaQuery(887,'update preferencia set versao = ''2.2.4.8'''); //29/04/09
  // correção das parcelas do orçamento(prestações) quando sofria alteração as parcelas não eram recalculadas
  ExecutaQuery(888,'update preferencia set versao = ''2.2.4.9'''); //29/04/09
  ExecutaQuery(889,dmat.sp_controleVendasEmpresariais.SQL); // correção data da venda
  Label1.caption := 'Nº da Última atualização -> ' + dm.GetParam('ULTSCR');

  ExecutaQuery(890,'update preferencia set versao = ''2.2.5.0'''); // 07/05/09 - ans sib
  ExecutaQuery(891,'alter table usuario add NrPlanoOUtOp varchar(9)'); // 07/05/09 - ans sib
  ExecutaQuery(892,DmAt.QuerySpArqSusep.sql);
  ExecutaQuery(893,'update preferencia set versao = ''2.2.5.1'''); // novo menu
  ExecutaQuery(894,'update preferencia set versao = ''2.2.5.2'''); // novo menu

  ExecutaQuery(895, dmAt.SP_REL_FINANC_CLIENTE.sql,'SP_REL_FINANC_CLIENTE','P');
  ExecutaQuery(896,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) values (136,32,36,''Contratos/Relatórios'',''FichaFinanceiraEmpresa1'',''Ficha Financeira - Empresa'')');
  ExecutaQuery(897,'update preferencia set versao = ''2.2.5.3'''); // 09/05/09 ficha financeira empresa
  if dm.execmd('select count(*) q from menu_disponivel where cd_menu = 119','q') = '0' then
     showMessage('Enio está faltando a sequencia insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) values (119,156,01,''Financeiro/Contas Receber'','','' Manut/Extorno Tit. Baixados'')''');

  ExecutaQuery(898,'update preferencia set versao = ''2.2.5.4'''); // 11/05/09 muda status orcamento muda status pagto dentista protetico
  ExecutaQuery(899, dmAt.tr_u_alt_statusPagto.SQL);

  ExecutaQuery(900,'update preferencia set versao = ''2.2.5.5'''); // 23/05/09 - lancar todos serviços no pagot dentista com o status do orçamento
                                                                   // quando alterar status ir para proximo registro
  ExecutaQuery(901,'alter table protetico add cd_tabela smallint');
  ExecutaQuery(902,'insert into TabelaPagto values (4,''Tabela Protetico'',getdate())');
  ExecutaQuery(903,'update protetico set cd_tabela = 4');
  ExecutaQuery(904,'alter table protetico alter column cd_tabela smallint not null');
  ExecutaQuery(905,'alter table protetico add constraint fk_protetico_TabelaPagto foreign key (cd_tabela) references TabelaPagto (cd_tabela)');
  ExecutaQuery(906,'alter table TabelaPagto add tipo char(1)');
  ExecutaQuery(907,'update TabelaPagto set tipo = ''D'''); // D dentista P protetico
  ExecutaQuery(908,'alter table TabelaPagto alter column tipo char(1) not null');
  ExecutaQuery(909,'alter table TabPagto_vrServico drop column vr_Protetico');

  // distinct abaixo por causa da seato
  ExecutaQuery(910,'insert into tabPagto_vrServico select distinct 4, codigo_Servico,valor_protetico from ValorxProcedimento');
  ExecutaQuery(911,'insert into parametro values (''TBPADP'',''6'',''Codigo da tabela de protetico padrão, para incluir valor no orçamento'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(912,'update TabelaPagto set tipo = ''P'' where cd_tabela = 4'); // D dentista P protetico
  ExecutaQuery(913,Dmat.QueryTr_i_incluiMensalidade.sql);// nao deixar incluir usuario em plano inativo 23/05/09
  //030609 continuação desenv. tab protetico

  ExecutaQuery(914,'create table TabPagXDentista ' +
  ' (cd_dentista int not null, ' +
  ' cd_tabela   smallint not null, ' +
  ' dtIni smalldatetime not null, ' +
  ' dtFim smalldatetime not null, ' +
  ' constraint pk_tabPagXDentista primary key (cd_dentista,cd_tabela), ' +
  ' constraint fk_tabPagXDentistaXDentista foreign key (cd_dentista) references dentista (codigo), ' +
  ' constraint fk_tabPagXDentistaXTabela foreign key (cd_tabela) references tabelaPagto (cd_tabela) ' +
  ' ) ');


  ExecutaQuery(915,' create table TabPagXProtetico ' +
  ' (cd_protetico int not null, ' +
  ' cd_tabela   smallint not null, ' +
  ' dtIni smalldatetime not null, ' +
  ' dtFim smalldatetime not null, ' +
  ' constraint pk_tabPagXProtetico primary key (cd_protetico,cd_tabela), ' +
  ' constraint fk_tabPagXProteXProte foreign key (cd_protetico) references protetico (codigo), ' +
  ' constraint fk_tabPagXProteXTabela foreign key (cd_tabela) references tabelaPagto (cd_tabela) ' +
  ' ) ');

  ExecutaQuery(916,'alter table protetico drop constraint fk_protetico_TabelaPagto');
  ExecutaQuery(917,'alter table protetico drop column cd_tabela');
  ExecutaQuery(918,'insert into TabPagXProtetico select codigo,4,''01/01/2000'',''01/01/2079'' from protetico where data_exclusao is null');
  ExecutaQuery(919,'create trigger tr_i_TabPagXProtetico on TabPagXProtetico for insert ' + #13 +

  ' as ' + #13 +
  ' declare @Dtini datetime ' + #13 +
  ' set @Dtini = (select max(a.dtIni) from TabPagXProtetico a, inserted b where a.cd_protetico = b.cd_protetico and a.dtini <> b.dtini) ' + #13 +
  ' update TabPagXProtetico set dtFim = i.dtIni - 1 ' + #13 +
  ' from inserted i where TabPagXProtetico.cd_protetico = i.cd_protetico and TabPagXProtetico.dtIni = @Dtini ');

  ExecutaQuery(920,'alter table itens_pagprotetico add cd_tabela smallint');
  ExecutaQuery(921,'alter table itens_pagprotetico add constraint fk_IPagProteticoXTabelaPagto foreign key (cd_tabela) references TabelaPagto (cd_tabela)');
  ExecutaQuery(922,'update itens_pagprotetico set cd_tabela = 4');
  ExecutaQuery(923,'alter table itens_pagprotetico alter column cd_tabela smallint not null');
  ExecutaQuery(924,'update preferencia set versao = ''2.2.5.6'''); // 23/05/09 - lancar todos serviços no pagot dentista com o status do orçamento
  ExecutaQuery(925,'update preferencia set versao = ''2.2.5.7'''); // 15/06/09 tirei memo1 relatorios
  //08/06/09
  //diferenca 5 reaus rel. 08 e 11 sintetico analitico orcamentoe 13/05/09 titulo sem classificacao
  // inclusao no novo menu o rel de contratos cancelados de usuarios X Representantes.

  ExecutaQuery(926,'select * into dentista080609 from dentista');
  ExecutaQuery(927,'set dateformat dmy insert into TabPagXDentista select codigo,1,''01/01/2000'',''31/03/2009'' from dentista d where cd_tabela <> 1');
  ExecutaQuery(928,'set dateformat dmy insert into TabPagXDentista select codigo,1,''01/01/2000'',''01/01/2079'' from dentista d where cd_tabela = 1');
  ExecutaQuery(929,'set dateformat dmy insert into TabPagXDentista select codigo,cd_tabela,''01/04/2009'',''01/01/2079'' from dentista d where cd_tabela <> 1');
  ExecutaQuery(930,'alter table dentista drop constraint fk_Dentista_TabelaPagto');
  ExecutaQuery(931,'alter table orcamento add cd_tabela smallint');
  ExecutaQuery(932,'set dateformat dmy update orcamento set cd_tabela = d.cd_tabela from dentista d where  d.codigo = orcamento.dentista and (data_conferencia is null or data_conferencia >= ''01/04/2009'')');
  ExecutaQuery(933,'alter table dentista drop column cd_tabela');
  ExecutaQuery(934,'set dateformat dmy update orcamento set cd_tabela = 1 where data_conferencia < ''01/04/2009''');
  // tem que fica aqui.. pq ta com dentista nulo ou invalido
  ExecutaQuery(935,'set dateformat dmy update orcamento set cd_tabela = 1 where cd_tabela is null');
  ExecutaQuery(936,'alter table orcamento alter column cd_tabela smallint not null');
  ExecutaQuery(937,'alter table orcamento add constraint fkOrcamentoXCdTabela foreign key (cd_tabela) references TabelaPagto (cd_tabela) ');
  ExecutaQuery(938,'create trigger tr_i_TabPagXDentista on TabPagXdentista for insert ' + #13 +
  ' as  ' + #13 +  ' declare @Dtini datetime  ' + #13 +  ' set @Dtini = (select max(a.dtIni) from TabPagXDentista a, inserted b where a.cd_dentista = b.cd_dentista and a.dtini <> b.dtini)  ' + #13 +  ' update TabPagXDentista set dtFim = i.dtIni - 1  ' + #13 +  ' from inserted i where TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini  ');

  ExecutaQuery(939,'update preferencia set versao = ''2.2.5.8'''); // 29/06/09 faturamento multiplos...
  // nao deixa importar faturamento para contas a receber se tiver marcado enviado contas a receber
  // nao deixa gerar titulo duplicado numero_titulo e desdobramento
  // lista da gabi..varias resoluções..

  ExecutaQuery(940,'alter table contratante add lg_restricao bit');
  ExecutaQuery(941,'drop trigger tr_u_i_VerifPlanoValido');
  ExecutaQuery(942,'update contratante set  lg_restricao = 0');
  ExecutaQuery(943,'alter table contratante alter column lg_restricao bit not null');
  ExecutaQuery(944,DmAt.Querytr_u_i_VerifPlanoValido.sql,'tr_u_i_VerifPlanoValido','TR');

  ExecutaQuery(945,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,45,''Dentista'',''AniversariantesportempodeEmpresa'',''Dentistas Aniversariantes por tempo de empresa'' from menu_disponivel');
  ExecutaQuery(946,'update preferencia set versao = ''2.2.6.0'''); // 15/06/09 tirei memo1 relatorios

  ExecutaQuery(947,'update preferencia set versao = ''2.2.6.1'''); // 11/07/09 
  ExecutaQuery(948,'alter table tipocobranca add qt_dg_agencia tinyint');
  ExecutaQuery(949,'alter table tipocobranca add qt_dg_conta tinyint');
  ExecutaQuery(950,'alter table tipocobranca add qt_dg_dg_conta tinyint');
  ExecutaQuery(951,'alter table tipocobranca add obs varchar(200)');
  ExecutaQuery(952,'update preferencia set versao = ''2.2.6.2'''); // 15/07/09
  // revalorização orcamento qdo muda dentista
  // enva para contas a receber  quando selecona meses diferentes
  // informa data do orcamento quando esta em carencia
  ExecutaQuery(953,'update preferencia set versao = ''2.2.6.3'''); // 20/07/09 unmed
  //sincronizei fontes da uni com da multi gerenciador de faturametno para orçametnos(tabela dentista)
  ExecutaQuery(954,'update preferencia set versao = ''2.2.6.4'''); // 20/07/09
  //tela consulta servcos coincdentes..acerto criancas178342 178343 176992 176993 179294 179292 179782 173881 178641 178011
  ExecutaQuery(955,'alter table orcamento_bck add ds_motivo_excl varchar(300)');
  ExecutaQuery(956,Dmat.delete_orcamento.sql);
  ExecutaQuery(957,'INSERT INTO PARAMETRO VALUES (''DNPA'',''S'',''Preenche dados da NP automaticamente?'',''U'',''SISTEMA'',getdate())');
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // somente para seato(multi eu ja fiz
  begin // rodei na mão os comandos abaixo la na seato
     ExecutaQuery(958,'alter table cidade add cd_ibge int');
     ExecutaQuery(959,DmAt.QuerySpArqSusep.sql);
     ExecutaQuery(960,'alter table usuario add cco varchar(10)');
     ExecutaQuery(961,'alter table usuario add dg_cco varchar(2)');
     ExecutaQuery(962,DmAt.QueryTRAltera_Usuario.sql);
     ExecutaQuery(963,DmAt.QuerySpArqSusep.sql);
     // ans unificou pai e mãe e os abaixos..
     ExecutaQuery(964,'update vinculo_ans set ds_vinculo = ''Pai/Mãe'' where cd_ans = ''08''');
     ExecutaQuery(965,'update Grau_Parentesco set cd_ans = ''08'' where cd_ans = ''09''');
     ExecutaQuery(966,'delete vinculo_ans where cd_ans = ''09''');

     ExecutaQuery(967,'update vinculo_ans set ds_vinculo = ''Filho/Filha'' where cd_ans = ''04''');
     ExecutaQuery(968,'update Grau_Parentesco set cd_ans = ''04'' where cd_ans = ''05''');
     ExecutaQuery(969,'delete vinculo_ans where cd_ans = ''05''');

     ExecutaQuery(970,'update vinculo_ans set ds_vinculo = ''Enteado/Enteada'' where cd_ans = ''06''');
     ExecutaQuery(971,'update Grau_Parentesco set cd_ans = ''06'' where cd_ans = ''07''');
     ExecutaQuery(972,'delete vinculo_ans where cd_ans = ''07''');
     ExecutaQuery(973,'update vinculo_ans set ds_vinculo = ''Agregado/Outros'' where cd_ans = ''10''');
     ExecutaQuery(974,'update Grau_Parentesco set cd_ans = ''10'' where cd_ans = ''11''');
     ExecutaQuery(975,'delete vinculo_ans where cd_ans = ''11''');
     ExecutaQuery(976,dmat.Inseri_script.sql);
     ExecutaQuery(977,'update preferencia set versao = ''2.2.6.5''');
     ExecutaQuery(978,'insert into motivo_inclusao values (''31'',''Inc Benef. c/ tempo de dt ades. sup a 5 anos'')');
     ExecutaQuery(979,'insert into motivo_inclusao values (''41'',''Inclusão por portabilidade'')');
     ExecutaQuery(980,'alter table cancelamento alter column descricao varchar(50)');
     ExecutaQuery(981,'INSERT INTO cancelamento  VALUES (''Fraude (arq. 13 da lei 9565'',''14'',1,''USUARIO'')');
     ExecutaQuery(982,'INSERT INTO cancelamento  VALUES (''Exclusão benef tempo dt cancel superior a 5 anos'',''32'',1,''USUARIO'')');
     ExecutaQuery(983,'INSERT INTO cancelamento  VALUES (''Exclusão benef por portabilidade'',''42'',1,''USUARIO'')');
  end
  else
  begin
     ExecutaQuery(958,'select getdate()');     ExecutaQuery(959,'select getdate()');     ExecutaQuery(960,'select getdate()');     ExecutaQuery(961,'select getdate()');     ExecutaQuery(962,'select getdate()');
     ExecutaQuery(963,'select getdate()');     ExecutaQuery(964,'select getdate()');     ExecutaQuery(965,'select getdate()');     ExecutaQuery(966,'select getdate()');     ExecutaQuery(967,'select getdate()');
     ExecutaQuery(968,'select getdate()');     ExecutaQuery(969,'select getdate()');     ExecutaQuery(970,'select getdate()');     ExecutaQuery(971,'select getdate()');     ExecutaQuery(972,'select getdate()');
     ExecutaQuery(973,'select getdate()');     ExecutaQuery(974,'select getdate()');     ExecutaQuery(975,'select getdate()');     ExecutaQuery(976,'select getdate()');     ExecutaQuery(977,'select getdate()');
     ExecutaQuery(978,'select getdate()');     ExecutaQuery(979,'select getdate()');     ExecutaQuery(980,'select getdate()');     ExecutaQuery(981,'select getdate()');     ExecutaQuery(982,'select getdate()');
     ExecutaQuery(983,'select getdate()');
  end;

  ExecutaQuery(984,'update preferencia set versao = ''2.2.6.6'''); // 22/08/2009 elaborei script para listar
  // orcamentos de manutenções que foram incluidos com valor errado pela rotina do faturamento devido
  // a manuteçao sofrida pela inclusao de tabelas de dentista
  // fiz script para corrigir orcamentos ainda nao pagos, os ja pagos gerei excel e passei para kelly
  ExecutaQuery(985,'insert into parametro values (''VALICC'',''S'',''Se S valida conta corrente no contratante'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(986,'update preferencia set versao = ''2.2.6.7'''); // 03/09 carteirinha
  ExecutaQuery(987,'insert into parametro values (''TPPPOR'',''3'',''Tipo de pagamento padrão parcelas orçamentos,se 0 deixa em branco'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(988,'insert into parametro values (''OBRDNP'',''S'',''Obriga dados na Nota Promissória?'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(989,'update preferencia set versao = ''2.2.6.8'''); // 03/09 cada de versões
  ExecutaQuery(990,'alter table usuario add novo_cod_usu_plano varchar(30)'); // 09/09
  ExecutaQuery(991,DmAt.QuerySpArqSusep.sql); // registro 708 exclusao usuario novo codigo do benef.
  ExecutaQuery(992,'update preferencia set versao = ''2.2.6.9''');

  ExecutaQuery(993,'update preferencia set versao = ''2.2.7.0 '''); //12/09/2009 rotina cco
  ExecutaQuery(994,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,45,''ANS'',''AssociaodeCCO'',''associa CCO - SIB'' from menu_disponivel');
  ExecutaQuery(995,'alter table usuario add reinclusao_sib datetime');
  ExecutaQuery(996,DmAt.QuerySpArqSusep.sql);
  ExecutaQuery(997,DmAt.SpCancArqSusep.sql);
  ExecutaQuery(998,DmAt.QueryTRAltera_Usuario.sql); // alterado para tratar novo campo reinclusao_sib
  ExecutaQuery(999,'update preferencia set versao = ''2.2.7.1 '''); //12/09/2009 mudei de novo q ja havia mandao para gabi a 7.0

  // script abaixo realizado para nao mandar registros de reinclusao inferior a 01/09/09
  ExecutaQuery(1000,'set dateformat dmy update usuario set reinclusao_sib = dtreinclusao where dtreinclusao < ''01/09/2009''');
  ExecutaQuery(1001,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,46,''ANS'',''CargaArquivodeErroSIB'',''Carga Arq. Erro SIB'' from menu_disponivel');
  ExecutaQuery(1002,'update preferencia set versao = ''2.2.7.2 '''); //18/09/2009
  ExecutaQuery(1003,'alter table endereco_x_dentista  add tp_endereco char(1)');//20/09/2009 EM HOME
  ExecutaQuery(1004,'update endereco_x_dentista   set tp_endereco = ''C'' where  ds_endereco like ''%COMERCIAL%''  and tp_endereco is null');
  ExecutaQuery(1005,'update endereco_x_dentista   set tp_endereco = ''C'' where  ds_endereco like ''%CONSULTÓRIO%'' and tp_endereco is null');
  ExecutaQuery(1006,'update endereco_x_dentista   set tp_endereco = ''C'' where  ds_endereco like ''%CONSULTORIO%''  and tp_endereco is null');
  ExecutaQuery(1007,'update endereco_x_dentista   set tp_endereco = ''C'' where  ds_endereco like ''%CO%RIO%''  and tp_endereco is null');
  ExecutaQuery(1008,'update endereco_x_dentista   set tp_endereco = ''R'' where  ds_endereco like ''%RESIDENCIAL%''  and tp_endereco is null');
  ExecutaQuery(1009,'update endereco_x_dentista   set tp_endereco = ''R'' where  ds_endereco like ''%RES%D%CI%''  and tp_endereco is null');
  ExecutaQuery(1010,'update endereco_x_dentista   set tp_endereco = ''R'' where  ds_endereco like ''%RE%D%CIA%''  and tp_endereco is null');
  ExecutaQuery(1011,'update endereco_x_dentista   set tp_endereco = ''C'' where  tp_endereco  IS NULL');
  ExecutaQuery(1012,'alter table endereco_x_dentista  alter column tp_endereco char(1) not null');
  ExecutaQuery(1013,'update preferencia set versao = ''2.2.7.3 '''); //23/09/2009 correcao sib, ordenacao medi rel custo com orcamentos
//  showMessage('criar esse procedure para seato sp_RelCustoComOrcamento');
  ExecutaQuery(1014,'update preferencia set versao = ''2.2.7.4 '''); //28/09/2009 boleto sicoob
  ExecutaQuery(1015,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,150,10,''Financeiro'',''ReimpressodeBoletoSicoob'',''Reimpressão Boleto Sicoob'' from menu_disponivel');

  ExecutaQuery(1016,'update preferencia set versao = ''2.2.7.5 '''); //30/09/2009 alteração conta banco nossa caixa , incluido 01 no inicio, alterada rotina de geração do arquivo para não enviar fixo 01 no inicio da conta
  ExecutaQuery(1017,'alter table dentista add alterado char(1) default(''S'')');
  ExecutaQuery(1018,'update dentista set alterado = ''N''');
  ExecutaQuery(1019,'alter table dentista add dt_envio_grafica smalldatetime');
  ExecutaQuery(1020,DmAt.TR_U_ESP_X_DENTISTA.sql);
  ExecutaQuery(1021,DmAt.TR_U_DENTISTAXENDERECO.sql);
  ExecutaQuery(1022,DmAt.TR_U_DENTISTA.sql);
  ExecutaQuery(1023,DmAt.sp_RelCustoComOrcamento.sql);

  ExecutaQuery(1024,'update preferencia set versao = ''2.2.7.6 '''); //03/10/2009 rel alteraç~eos para grafica
  ExecutaQuery(1025,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,50,''Dentista'',''EnviodealteraesParagrfica1'',''Envio de alterações de dentista p/ Gráfica'' from menu_disponivel');
  ExecutaQuery(1026,' create table contato_dentista ' +
  '(cd_dentista int not null, ' +
  ' indice int not null identity(1,1), ' +
  ' data datetime not null, ' +
  ' cd_operador int not null, ' +
  ' ds_contato varchar(1000) not null, ' +
  ' dt_sistema datetime not null default(getdate()), ' +
  ' constraint pk_contato_dentista primary key (cd_dentista,indice), ' +
  ' constraint fk_contato_Dent_dentista foreign key (cd_dentista) references dentista(codigo), ' +
  ' constraint fk_contato_Dent_operador foreign key (cd_operador) references operador(codigo)) ');

  ExecutaQuery(1027,'update preferencia set versao = ''2.2.7.7 '''); //07/10/2009 grid nos contatos dentista
  ExecutaQuery(1028,'insert into parametro values (''DIFTOL'',''10'',''Valor em centavos de tolefância na diferença entre vr das parcelas do or. e do vr do orçamento'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1029,'update preferencia set versao = ''2.2.7.8 '''); //16/10/2009 rodei script e gerei excel de orçamentos de manutenção com valores divergentes
  ExecutaQuery(1030,'alter table protetico add dt_inclusao datetime');
  ExecutaQuery(1031,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,92,30,''Dentista/Protético'',''ProtticosAniversariantesportempodeempresa1'',' +
  '''Relatório de Protético aniver/tempo de empresa'' from menu_disponivel');
  ExecutaQuery(1032,'alter table contratante add dt_termino_desconto datetime');
  ExecutaQuery(1033,'update preferencia set versao = ''2.2.7.9 '''); //vide e-mail  
  //alterei forma de aviso de versão desatualizada..
  //corrigi mensagem orçamento
  // verifiquei esquema de verão
  ExecutaQuery(1034,'update preferencia set versao = ''2.2.8.0 '''); //rotina dm.ZeraDescontoVencidoBoleto
  ExecutaQuery(1035,'insert into parametro values (''UATT'',''kelly|Gabi|Enio'',''Usuários a serem Avisados sobre Troca Tabela dentsita/protetico(colocar Nomes separados por |)'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1036,'insert into parametro values (''DATT'',''01/09/2009'',''Data próximo Aviso troca Tabela Dentista/protetico'',''U'',''SISTEMA'',getdate())');

  //relatorio de custo dentista detalhado foi retirado procedimentos cancelados.

  ExecutaQuery(1037,'update preferencia set versao = ''2.2.8.1 '''); //acerto erro do sib inclusao dep com cd titular invalidos 28/10/09

  ExecutaQuery(1038,'update preferencia set versao = ''2.2.8.2 '''); //31/10/09 - aviso de troca de tabela de protéticos
  ExecutaQuery(1039,'insert into parametro values (''UATTP'',''Gabi|enio'',''Usuários a serem Avisados sobre Troca Tabela protetico(colocar Nomes separados por |)'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1040,'insert into parametro values (''DATTP'',''10/10/2009'',''Data próximo Aviso troca Tabela protetico'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1041,'update parametro set ds_parametro = ''Usuários a serem Avisados sobre Troca Tabela dentsita(colocar Nomes separados por |)''  where cd_parametro = ''UATT''');
  ExecutaQuery(1042,dmat.sp_rel_custo_orc_detail.sql);
  ExecutaQuery(1043,'update preferencia set versao = ''2.2.8.3 '''); //03/11/09 - Tamanho da tela
  ExecutaQuery(1044,'insert into parametro values (''HEIG'',''675'',''Altura em pixel da tela de fundo do sistema'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1045,'insert into parametro values (''WIDT'',''900'',''Largura em pixel da tela de fundo do sistema'',''U'',''SISTEMA'',getdate())');
  if Uppercase(copy(GetNmMaquina,1,5)) = 'WINXP' then
     showMessage('VERIFICAR A VERSÃO DO BOLETO BANCOOB');
  ExecutaQuery(1046,'update preferencia set versao = ''2.2.8.4 '''); //04/11/09 - sib - consulta cco --
  ExecutaQuery(1047,'update preferencia set versao = ''2.2.8.5 '''); //04/11/09 - sib - consulta cco --
  ExecutaQuery(1048,'update preferencia set versao = ''2.2.8.6 '''); //14/11/09 - pagamento dentista, etiqueta etc..
//
//  3)correção na rotina de geração do Sib onde não estava totalizando os registros de Reinclusão
//
//4)Correção no cadastro de usuários para limpar a data de reinclusão quando a data de exclusão não estiver vazia, para que registro excluidos não sejam enviados no sib como reinclusão.


   ExecutaQuery(1049,'update preferencia set versao = ''2.2.8.7 '''); //18/11/09
   ExecutaQuery(1050,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,60,11,''Orçamentos'',''BitBtnPagDentistas'',''Verificar Saldo do Orçamento(Botão Dentista)'' from menu_disponivel');
   ExecutaQuery(1051,dmat.SpOrcApagar.sql); // desconsiderado itens com status cancelado

   ExecutaQuery(1052,'update preferencia set versao = ''2.2.8.8 '''); //25/11/09 CPF DE ACORDO COM REGRAS ANS
   ExecutaQuery(1053,dmat.QueryTRAltera_Usuario.SQL);

   ExecutaQuery(1054,'update preferencia set versao = ''2.2.8.9 '''); //28/11/09 ainda cpf de acordo com..
   //correção dos valores do orçamento ao excluir o mesmo
   ExecutaQuery(1055,'update preferencia set versao = ''2.2.9.0 '''); //02/12/09 relcomissao
   ExecutaQuery(1056,DmAt.QuerySpArqSusep.sql);
   ExecutaQuery(1057,'update preferencia set versao = ''2.2.9.1'''); //02/12/09 relcomissao
   ExecutaQuery(1058,'update preferencia set versao = ''2.2.9.2'''); //02/12/09 relcomissao
   ExecutaQuery(1059,'update preferencia set versao = ''2.2.9.3'''); //02/12/09 relcomissao
   ExecutaQuery(1060,DmAt.QuerySpOrcApagar.sql); // DATA AP NAO TAVA DATA CONFERENCIA

   ExecutaQuery(1061,'update preferencia set versao = ''2.2.9.4''');
   ExecutaQuery(1062,'update menu_disponivel set ds_menu = ''Excluir Orçamentos em massa'' where cd_menu = 28');

   ExecutaQuery(1063,'update preferencia set versao = ''2.2.9.5'''); //17/12 erro ao exluir usuaro de cpf ja cadastrado
   ExecutaQuery(1064,'update preferencia set versao = ''2.2.9.6'''); // 17/12/09 etiqueta contratante travando

   ExecutaQuery(1065,DmAt.sp_listaEtiqContrat.sql);
   ExecutaQuery(1066,'update preferencia set versao = ''2.2.9.7'''); // 17/12/09 etiqueta contratante modo grafico noite em casa.
   ExecutaQuery(1067,'update preferencia set versao = ''2.2.9.8'''); // erro na inclusao
   ExecutaQuery(1068,DmAt.sp_RelCustoComOrcamento.sql);
   ExecutaQuery(1069,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,50,''Orçamentos'',''PesquisarOramentosexcludos1'',''Pesquisa de Orçamentos excluídos'' from menu_disponivel');
   ExecutaQuery(1070,'update preferencia set versao = ''2.2.9.9''');


   ExecutaQuery(1071,'select * into contatoSemContrantate from contato where not exists(select * from contratante where codigo = codigo_contratante)');
   ExecutaQuery(1072,'delete contato where not exists(select * from contratante where codigo = codigo_contratante)');
   ExecutaQuery(1073,'alter table contato add constraint fk_contatoContratante foreign key (codigo_contratante) references contratante (codigo)');
   ExecutaQuery(1074,'update preferencia set versao = ''2.3.0.0'''); //seato 27/02/2002 criada a tabela contato

   ExecutaQuery(1075,'update preferencia set versao = ''2.3.0.1''');
   ExecutaQuery(1076,'alter table mensagem add dtValidade datetime');
   ExecutaQuery(1077,'update mensagem set dtValidade = ''01/01/2079''');
   ExecutaQuery(1078,'alter table mensagem alter column dtValidade datetime not null');

   ExecutaQuery(1079,'update preferencia set versao = ''2.3.0.2''');
   ExecutaQuery(1080,'create table ReciboIR_contratante ' +
                      '(ano int not null, ' +
                      'cd_contratante int not null, ' +
                      'dtSolicitacao smalldatetime not null, ' +
                      'cd_funcionario int not null, ' +
                      'vr_pago smallmoney not null, ' +
                      'constraint pk_reciboIR primary key (ano,cd_contratante), ' +
                      'constraint fk_reciboIRContratante foreign key (cd_contratante) references contratante (codigo), ' +
                      'constraint fk_reciboIROperador foreign key (cd_funcionario) references operador (codigo) ' +
                      ')');

  ExecutaQuery(1081,'update preferencia set versao = ''2.3.0.3''');

  ExecutaQuery(1082,DmAt.SP_GERA_DMED.sql,'SP_GERA_DMED','P');
  ExecutaQuery(1083,'update preferencia set versao = ''2.3.0.4'''); //serrana quando ja cadastrado somente alerta sobre plano sem titular e cpf duplicado
  ExecutaQuery(1084,DmAt.SP_GERA_DMED.sql,'SP_GERA_DMED','P');

  ExecutaQuery(1085,'update preferencia set versao = ''2.3.0.5''');
  ExecutaQuery(1086,DmAt.TR_U_DENTISTA.SQL);
  ExecutaQuery(1087,DmAt.SP_ENVIO_DENTISTA_GRAFICA.sql);
  ExecutaQuery(1088,DmAt.UsuarioLog.sql);
  ExecutaQuery(1089,DmAt.ContratanteLog.sql);
  ExecutaQuery(1090,'alter table orcamento add lg_ir bit default(1)');

  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // multiodonto
  begin
     ExecutaQuery(1091,'insert into parametro values (''ORCIR'',''S'',''Valor padrão para Informes IR no orçamento(DMED)'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1092,'insert into parametro values (''MSGIR'',''N'',''Se S exibe pergunta sobre informes de rendimento no orçamento se N não exibe(DMED)'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1093,'insert into parametro values (''VERIRO'',''N'',''Se S verifica no orçamento(campo lg_ir) se deve listar o título no relatório DMED'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1094,'update orcamento set lg_ir = 1');
     ExecutaQuery(1095,'alter table manutencao add lg_ir bit default(1)');
     ExecutaQuery(1096,'update manutencao set lg_ir = 1');
     ExecutaQuery(1097,'alter table manutencao alter column lg_ir bit not null');
  end
  else
  begin //seato
     ExecutaQuery(1091,'insert into parametro values (''ORCIR'',''N'',''Valor padrão para Informes IR no orçamento(DMED)'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1092,'insert into parametro values (''MSGIR'',''S'',''Se S exibe pergunta sobre informes de rendimento no orçamento se N não exibe(DMED)'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1093,'insert into parametro values (''VERIRO'',''S'',''Se S verifica no orçamento(campo lg_ir) se deve listar o título(Manutenção,orçamento) no relatório DMED'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1094,'update orcamento set lg_ir = 0');
     ExecutaQuery(1095,'alter table manutencao add lg_ir bit default(1)');
     ExecutaQuery(1096,'update manutencao set lg_ir = 0');
     ExecutaQuery(1097,'alter table manutencao alter column lg_ir bit not null');
  end;
  ExecutaQuery(1098,'alter table orcamento alter column lg_ir bit not null');
  ExecutaQuery(1099, DmAt.SP_GERA_DMED.sql,'SP_GERA_DMED','P');
  ExecutaQuery(1100,'update preferencia set versao = ''2.3.0.6''');
  ExecutaQuery(1101,DmAt.tr_i_Iitens_orcamento.sql);
  ExecutaQuery(1102,'update preferencia set versao = ''2.3.0.8'''); // seato
  ExecutaQuery(1103,DmAt.tr_i_Iitens_orcamento.sql);
  ExecutaQuery(1104,'update preferencia set versao = ''2.3.0.9'''); // multiodonto
  ExecutaQuery(1105,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,150,2,''Faturamento'',''ButtonDesmarcarEmitidoDoc'',''Cancelar emitido documento do faturamento'' from menu_disponivel');

  ExecutaQuery(1106,'update preferencia set versao = ''2.3.1.0'''); // multiodonto via ortodontia orçamento

  ExecutaQuery(1107,'update preferencia set versao = ''2.3.1.1'''); // SEATO, DMED OPÇÃO TIPO DOC, DIVERGENCIA REL 8 QDO SEL. PF OU PJ E TODOS(MOTIVO:CAMPO EMPRESA NAO PREENCHIDO NO CONTRATANTE)
  // ORCMAENTO NAO SAI DMED(NAO SAI PQ É PJ)
  ExecutaQuery(1108, DmAt.SP_GERA_DMED.sql,'SP_GERA_DMED','P');
  ExecutaQuery(1109, 'drop trigger tr_u_i_VerifPlanoValido');
  ExecutaQuery(1110, 'update contratante set empresa = 0 where empresa is null');
  ExecutaQuery(1111, 'alter table contratante alter column empresa bit not null');
  ExecutaQuery(1112,DmAt.Querytr_u_i_VerifPlanoValido.sql);
  ExecutaQuery(1113,'update preferencia set versao = ''2.3.1.2''');
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // multiodonto
  begin
     ExecutaQuery(1114,'insert into parametro values (''LGCONT'',''S'',''Se S grava log de toda alteração realizada no contratante(TR_U_LOG_CONTRATANTE))'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1115,'insert into parametro values (''LGUSU'',''S'',''Se S grava log de toda alteração realizada no cadastro de usuário(TR_U_LOG_USUARIO))'',''U'',''SISTEMA'',getdate())');
  end
  else
  begin
     ExecutaQuery(1114,'insert into parametro values (''LGCONT'',''N'',''Se S grava log de toda alteração realizada no contratante(TR_U_LOG_CONTRATANTE))'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1115,'insert into parametro values (''LGUSU'',''N'',''Se S grava log de toda alteração realizada no cadastro de usuário(TR_U_LOG_USUARIO))'',''U'',''SISTEMA'',getdate())');
  end;
  ExecutaQuery(1116,dmat.TR_U_LOG_CONTRATANTE.sql);
  ExecutaQuery(1117,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,21,''Contratos/contratante'','''',''Visualizar log de alterações'' from menu_disponivel');
  ExecutaQuery(1118,dmat.TR_U_LOG_USUARIO.sql);

  ExecutaQuery(1119,'update preferencia set versao = ''2.3.1.3''');  
  ExecutaQuery(1120,'insert into parametro values (''PATIMG'',''\\srv01\Multiodonto\Fotos\'',''Caminho onde estão sendo armazenado as fotos dos usuarios'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(1121,'update preferencia set versao = ''2.3.1.4''');

  ExecutaQuery(1122 ,'create table ServIncompativeisOdonto ' +
    ' ( ' +
    '  indice smallint not null, ' +
    '  cd_servico1 int not null, ' +
    '  qt_servico1 tinyint not null, ' +
    '  cd_Servico2 int not null, ' +
    '  constraint pk_ServIncompativeisOdonto primary key (indice), ' +
    '  constraint fk_ServIncompativeisOdontoServico1 foreign key (cd_servico1) references servicos (codigo), ' +
    '  constraint fk_ServIncompativeisOdontoServico2 foreign key (cd_servico2) references servicos (codigo), ' +
    ' )');

  ExecutaQuery(1123,'update preferencia set versao = ''2.3.1.5''');
  ExecutaQuery(1124,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,180,20,''Odontograma'',''ServiosIncompativeis1'',''Cadastro de Serviços incompatíveis'' from menu_disponivel');
  ExecutaQuery(1125,dmat.QueryTr_i_u_validacoesOdonto.Text);
  ExecutaQuery(1126,'update preferencia set versao = ''2.3.1.6''');
  ExecutaQuery(1127,'insert into parametro values (''LENIMG'',''350'',''Tamanho máximo da foto do usuário em kbytes'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1128,dmat.TR_U_LOG_USUARIO.sql,'TR_U_LOG_USUARIO','TR');
  ExecutaQuery(1129,'update preferencia set versao = ''2.3.1.7''');
  ExecutaQuery(1130,'alter table mensagem drop constraint pk_aviso');
  ExecutaQuery(1131,'alter table mensagem add constraint pk_aviso primary key (cd_tipo,cd_codigo,dtcriacao)');
  ExecutaQuery(1132,'alter table mensagem add permite_desabilitar bit');
  ExecutaQuery(1133,'update mensagem set permite_desabilitar = 0');
  ExecutaQuery(1134,'alter table mensagem alter column permite_desabilitar bit not null');
  ExecutaQuery(1135,'alter table retornoCNAB alter column indice int');
  ExecutaQuery(1136,dmat.spBaixaCnab.sql);
  ExecutaQuery(1137,'update preferencia set versao = ''2.3.1.8''');
  ExecutaQuery(1138,'update preferencia set versao = ''2.3.1.9''');
  ExecutaQuery(1139,'select getdate() alter table mensagem add tipo_aviso char(1)');
  ExecutaQuery(1140,'update mensagem set tipo_aviso = ''O''');
  ExecutaQuery(1141,'alter table mensagem alter column tipo_aviso char(1) not null');

  ExecutaQuery(1142,'update preferencia set versao = ''2.3.2.0''');
  ExecutaQuery(1143,DmAt.sp_RelCustoComOrcamento.sql);
  //falta testar cadastrar mais de um registro  na tabela ServIncompativeisOdonto

  ExecutaQuery(1144,'update preferencia set versao = ''2.3.2.1'''); // correção dos erros nas mensagens

  ExecutaQuery(1145,'update preferencia set versao = ''2.3.2.2'''); // correção dos erros nas mensagens novamente primary key, correção do dia 31 nas parcelas do orçamento, correção do erro baixa de títulos sintaxe incorrect..


  ExecutaQuery(1146,'update preferencia set versao = ''2.3.2.3'''); // correção dos erros nas mensagens novamente primary key, correção do dia 31 nas parcelas do orçamento, correção do erro baixa de títulos sintaxe incorrect..
  ExecutaQuery(1147,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,152,35,''Financeiro/Contas a Receber'',''BitBtnCancela'',''Cancelar Título em aberto'' from menu_disponivel');

  ExecutaQuery(1148,'update preferencia set versao = ''2.3.2.4''');

  ExecutaQuery(1149,DmAt.SpOrcApagar.Sql);

  ExecutaQuery(1150,'update preferencia set versao = ''2.3.2.5''');
  ExecutaQuery(1151,'alter table tipos_pagamentos add permite_data_futura char(1)');
  ExecutaQuery(1152,'update Tipos_Pagamentos set permite_data_futura = ''N''');
  ExecutaQuery(1153,'update Tipos_Pagamentos set permite_data_futura = ''S'' where id_tipoPgto in(9,8,4,12,13)');
  ExecutaQuery(1154,'alter table Tipos_Pagamentos alter column permite_data_futura char(1) not null');
  ExecutaQuery(1155,'alter table servicos add dt_exclusao smalldatetime');
  ExecutaQuery(1156,dmat.QueryTr_i_u_validacoesOdonto.Text);

  ExecutaQuery(1157,'update preferencia set versao = ''2.3.2.6''');
  ExecutaQuery(1158,'alter table orcamento add tp_cobranca int');
  ExecutaQuery(1159,'alter table orcamento add constraint fk_OrcamentoTipoCobranca foreign key (tp_cobranca) references tipoCobranca (codigo)');
  ExecutaQuery(1160,'update preferencia set versao = ''2.3.2.7''');
  ExecutaQuery(1161,dmat.Querytr_u_inibeAlterarUsu.text);


  ExecutaQuery(1162,'create table DetalheFaturamento ( ' +
  ' indice int identity(1,1) primary key, ' +
  ' numero_titulo int not null, ' +
  ' desdobramento varchar(1) not null, ' +
  ' data_vencimento datetime not null, ' +
  ' codigo varchar(10) not null, ' +
  ' ds_detalhe varchar(50) not null, ' +
  ' valor smallmoney not null, ' +
  ' constraint fk_DetalheMensalidadeFaturamento foreign key (numero_titulo,desdobramento,data_vencimento) references faturamento (numero_titulo,desdobramento,data_vencimento) ' +
  ' )');


  ExecutaQuery(1163,'CREATE NONCLUSTERED INDEX ix_NrTituloDesData ON dbo.DetalheFaturamento ( ' +
	' numero_titulo ASC, ' +
	' desdobramento ASC, ' +
	' data_vencimento ASC ' +
  ' ) ') ;


  ExecutaQuery(1164,'INSERT INTO PARAMETRO VALUES (''CDDEF'',''676'',''Código de cobrança correspondente ao Desconto em Folha'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1165,dmat.SpRegistraDetalheMensalidade.SQL.Text);

  ExecutaQuery(1166,'update preferencia set versao = ''2.3.2.7''');

  ExecutaQuery(1167,'update preferencia set versao = ''2.3.2.8''');

  ExecutaQuery(1168,'INSERT INTO PARAMETRO VALUES (''TPBOL'',''6'',''Código do tipo de pagamento quando o título baixado for boleto'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1169,'INSERT INTO PARAMETRO VALUES (''TPDEB'',''5'',''Código do tipo de pagamento quando o título baixado for Débito automático'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1170,dmat.spBaixaCnab.sql);

  ExecutaQuery(1171,'update preferencia set versao = ''2.3.2.9''');
  ExecutaQuery(1172,'alter table operador  add tp_baixa_visualiza varchar(30)');
  ExecutaQuery(1173,'update operador  set tp_baixa_visualiza = ''TODOS''');
  ExecutaQuery(1174,'alter table operador  ALTER COLUMN tp_baixa_visualiza varchar(30) NOT NULL');
  ExecutaQuery(1175,'update preferencia set versao = ''2.3.3.0''');
  ExecutaQuery(1176,'alter table usuario add dt_retirada_carteira smalldatetime');

  ExecutaQuery(1177,'update preferencia set versao = ''2.3.3.1''');

  ExecutaQuery(1178,'update preferencia set versao = ''2.3.3.2''');

  ExecutaQuery(1179,'update preferencia set versao = ''2.3.3.3''');
  ExecutaQuery(1180,dmat.sp_rel_vendas_contrat_titular.sql);

  ExecutaQuery(1181,'update preferencia set versao = ''2.3.3.4''');
  ExecutaQuery(1182,'INSERT INTO PARAMETRO VALUES (''CPDEF'',''23'',''Código do tipo de pagamento quando o qdo desconto em folha'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(1183,' create table ParcOrcamentoDescFolha ' +
                    '  (numero_titulo int not null, ' +
                    '  desdobramento varchar(2) not null, ' +
                    '  orcamento int not null, ' +
                    '  parcela smallint not null, ' +
                    '  constraint pk_parcOrcDescFolha primary key (numero_titulo,desdobramento,orcamento,parcela), ' +
                    '  constraint fk_parOrcDescFolha_receber foreign key (numero_titulo,desdobramento) references receber (numero_titulo,desdobramento), ' +
                    '  constraint fk_parOrcDescFolha_ParcOrcamento foreign key (orcamento,parcela) references prestacoes (orcamento,parcela) )');

  ExecutaQuery(1184,' create index ix_orcamento on ParcOrcamentoDescFolha  (orcamento,parcela)');
  ExecutaQuery(1185,'INSERT INTO PARAMETRO VALUES (''DIACF'',''20'',''Dia Corte de Faturamento'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1186,'drop table ParcOrcamentoDescFolha'); // desisti de usar essa tabela
  ExecutaQuery(1187,'alter table prestacoes add per_ref_des_folha varchar(7)');

  ExecutaQuery(1188,dmat.sp_geraMensalidadeDebFolha.sql);
  ExecutaQuery(1189,'update preferencia set versao = ''2.3.3.5''');

  ExecutaQuery(1190,'update preferencia set versao = ''2.3.3.6''');
  ExecutaQuery(1191,dmat.sp_geraMensalidadeDebFolha.sql,'sp_geraMensalidadeDebFolha','P');
  ExecutaQuery(1192,'update prestacoes set per_ref_des_folha = ''99/9999''');
  ExecutaQuery(1193,dmat.sp_geraMensalidadeDebFolha.sql,'sp_geraMensalidadeDebFolha','P');
  ExecutaQuery(1194,'insert into TipoDocumento (Descricao, Classificacao, ativo) values (''DESCONTO EM FOLHA'',''Mensalidade'',1)');
  ExecutaQuery(1195,'update preferencia set versao = ''2.3.3.7''');
  //incluido delimite de idade..
  ExecutaQuery(1196,'update preferencia set versao = ''2.3.3.8''');

  ExecutaQuery(1197,'update preferencia set versao = ''2.3.3.9''');

  ExecutaQuery(1198,'INSERT INTO PARAMETRO VALUES (''CDRANS'',''35135'',''Código de registro na ANS'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(1199,'update preferencia set versao = ''2.3.4.0''');

  ExecutaQuery(1200,'update preferencia set versao = ''2.3.4.1''');
  ExecutaQuery(1201,'update preferencia set versao = ''2.3.4.2''');

  ExecutaQuery(1202,'update preferencia set versao = ''2.3.4.3''');

  ExecutaQuery(1203,Dmat.QueryPVerifCarenciaCrit.sql);
  ExecutaQuery(1204,'insert into tipoorcamento values(''Renovação Orçamento'',2,51)');
  ExecutaQuery(1205,'update preferencia set versao = ''2.3.4.4''');
  ExecutaQuery(1206,'update preferencia set versao = ''2.3.4.5''');

  ExecutaQuery(1207,'update preferencia set versao = ''2.3.4.6''');
  ExecutaQuery(1208,'create view v_contratante_paralizado ' +

                     ' as ' +

                     ' select codigo,nome from contratante c where ' +
                     ' exists( ' +
                     ' select numero from orcamento o, usuario u ' +
                     ' where     o.status = 4 ' +
                     '       and o.usuario = u.codigo_completo ' +
                     '       and u.contratante_titular = c.codigo ' +
                     ' ) ');

  ExecutaQuery(1209,'update preferencia set versao = ''2.3.4.7''');
  ExecutaQuery(1210,'update preferencia set versao = ''2.3.4.8''');
  ExecutaQuery(1211,'update preferencia set versao = ''2.3.4.9''');
  ExecutaQuery(1212,'update preferencia set versao = ''2.3.5.0''');
  ExecutaQuery(1213,'update preferencia set versao = ''2.3.5.1''');

  ExecutaQuery(1214,'update preferencia set versao = ''2.3.5.2''');
  ExecutaQuery(1215,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,32,45,''Contratos/Relatórios'',''RetiradadeCarteirinhapordata1'',''Relatório Retirada Carteirinha / Data'' from menu_disponivel');
  ExecutaQuery(1216,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,93,1,''Tabela Pagto Dent/Protético'',''abelasPagto1'',''Tabela de Pagamento Dentista/Protético'' from menu_disponivel');
  ExecutaQuery(1217,'update preferencia set versao = ''2.3.5.3''');
  ExecutaQuery(1218,'update preferencia set versao = ''2.3.5.4''');
  ExecutaQuery(1219,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,1,35,''Cadastro/Diversos'',''Cobertura3'',''Descrição das Coberturas'' from menu_disponivel');

  ExecutaQuery(1220,'alter table usuario add lg_excl_renovacao bit');
  ExecutaQuery(1221,'update usuario set lg_excl_renovacao = 0');
  ExecutaQuery(1222,'alter table usuario alter column lg_excl_renovacao bit not null');
  ExecutaQuery(1223,'ALTER TABLE dbo.Usuario ADD CONSTRAINT DF_Usuario_lg_excl_renovacao DEFAULT 0 FOR lg_excl_renovacao');
  ExecutaQuery(1224,'update preferencia set versao = ''2.3.5.5'''); // boleto

  ExecutaQuery(1225,'update preferencia set versao = ''2.3.5.6''');
  ExecutaQuery(1226,'alter table dentista add lanca_pkg_orcamento char(1)');
  ExecutaQuery(1227,'update dentista set lanca_pkg_orcamento = ''S''');
  ExecutaQuery(1228,'alter table dentista alter column lanca_pkg_orcamento char(1)  not null');
  ExecutaQuery(1229,'update preferencia set versao = ''2.3.5.7''');


  ExecutaQuery(1230,'update preferencia set versao = ''2.3.5.8''');

  ExecutaQuery(1231,DmAt.sp_recebimento_mes.sql);
  ExecutaQuery(1232,'update preferencia set versao = ''2.3.5.9''');

  ExecutaQuery(1233,'update preferencia set versao = ''2.3.6.0''');
  ExecutaQuery(1234,DmAt.SP_GERA_DMED_REG_TOP.sql);

  ExecutaQuery(1235,'update preferencia set versao = ''2.3.6.0''');

  ExecutaQuery(1236,'update preferencia set versao = ''2.3.6.1''');

  ExecutaQuery(1237,'INSERT INTO PARAMETRO VALUES (''DMED02'',''06659577858'',''CPF do responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1238,'INSERT INTO PARAMETRO VALUES (''DMED03'',''ELIAS PACHECO ISSA'',''Nome do Responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1239,'INSERT INTO PARAMETRO VALUES (''DMED04'',''16'',''DDD tel do responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1240,'INSERT INTO PARAMETRO VALUES (''DMED05'',''39163523'',''Telefone do responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1241,'INSERT INTO PARAMETRO VALUES (''DMED07'','''',''FAX do responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1242,'INSERT INTO PARAMETRO VALUES (''DMED08'',''elias@multiodonto.com.br'',''e-mail do responsável preench DMED'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1243,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,121,25,''Vendas/Relatórios'',''VendasAnalticoVencimento'',''Vendas Analítico/Vencimento'' from menu_disponivel');

  ExecutaQuery(1244,'update preferencia set versao = ''2.3.6.2''');
  ExecutaQuery(1245,'update preferencia set versao = ''2.3.6.3''');
  ExecutaQuery(1246,'update preferencia set versao = ''2.3.6.4''');
  ExecutaQuery(1247,DmAt.sp_gera_nr_titulo.sql);
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // multiodonto
     ExecutaQuery(1248,'insert into parametro values (''FGNTF'',''S'',''Forma de Geração do Nr Tit do Fat. Se S sequencial , se P padrão'',''U'',''SISTEMA'',GETDATE())')
  else
     ExecutaQuery(1248,'insert into parametro values (''FGNTF'',''P'',''Forma de Geração do Nr Tit do Fat. Se S sequencial , se P padrão'',''U'',''SISTEMA'',GETDATE())');

  ExecutaQuery(1249,'update preferencia set versao = ''2.3.6.5''');
  ExecutaQuery(1250,'update preferencia set versao = ''2.3.6.6''');
  ExecutaQuery(1251,DmAt.SP_GERA_DMED_REG_TOP_ALTER.sql);
  ExecutaQuery(1252,'update preferencia set versao = ''2.3.6.7''');
  ExecutaQuery(1253,DmAt.SP_GERA_DMED_REG_TOP_ALTER.sql);
  ExecutaQuery(1254,DmAt.SP_GERA_DMED_REG_TOP_ALTER.sql);
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then // multiodonto
  begin
       ExecutaQuery(1255,'select getdate()');
       ExecutaQuery(1256,'select getdate()');
       ExecutaQuery(1257,'select getdate()');
       ExecutaQuery(1258,'select getdate()');
       ExecutaQuery(1259,'select getdate()');
       ExecutaQuery(1260,'select getdate()');
       ExecutaQuery(1261,'insert into tabelaValor values(3,''Tabela Preço Fixo'')');
       ExecutaQuery(1262,'insert into valorXProcedimento select 3, Codigo_Servico, Valor_Cobranca,        Valor_Dentista,        Valor_Protetico from ValorxProcedimento where codigo_tabela = 1');

  end
  else
  begin
       ExecutaQuery(1255,'UPDATE PARAMETRO SET VL_PARAMETRO = ''39644189604'' WHERE CD_PARAMETRO =''DMED02''');
       ExecutaQuery(1256,'UPDATE PARAMETRO SET VL_PARAMETRO = ''CARLOS CESAR DE MATTOS'' WHERE CD_PARAMETRO =''DMED03''');
       ExecutaQuery(1257,'UPDATE PARAMETRO SET VL_PARAMETRO = ''39872739''  WHERE CD_PARAMETRO =''DMED05''');
       ExecutaQuery(1258,'UPDATE PARAMETRO SET VL_PARAMETRO = ''39872739''  WHERE CD_PARAMETRO =''DMED07''');
       ExecutaQuery(1259,'UPDATE PARAMETRO SET VL_PARAMETRO = ''seato@ig.com.br''  WHERE CD_PARAMETRO =''DMED08''');
       ExecutaQuery(1260,'UPDATE PARAMETRO SET VL_PARAMETRO = ''329967''  WHERE CD_PARAMETRO =''CDRANS''');
       ExecutaQuery(1261,'select getdate()');
       ExecutaQuery(1262,'select getdate()');
  end;

  ExecutaQuery(1263,'update preferencia set versao = ''2.3.6.8''');
  ExecutaQuery(1264,'alter table usuario add cd_matricula varchar(30)');
  ExecutaQuery(1265,'update menu_disponivel set nm_menu = ''DescrioCobertura1'' where nm_menu = ''Cobertura3''');

  ExecutaQuery(1266,'alter table contratante add lg_cobrarTaxaBoleto bit');
  ExecutaQuery(1267,'drop trigger tr_u_i_VerifPlanoValido');
  ExecutaQuery(1268,'update contratante set lg_cobrarTaxaBoleto = 1');
  ExecutaQuery(1269,'alter table contratante alter column lg_cobrarTaxaBoleto bit not null');
  ExecutaQuery(1270,dmat.Querytr_u_i_VerifPlanoValido.sql);
  ExecutaQuery(1271,dmat.Querytr_u_i_VerifPlanoValido.sql);

  ExecutaQuery(1272,'update preferencia set versao = ''2.3.6.9''');

  ExecutaQuery(1273,'alter table usuario add fone1 varchar(18)');
  ExecutaQuery(1274,'alter table usuario add fone2 varchar(18)');

  ExecutaQuery(1275,'update preferencia set versao = ''2.3.7.0''');

  ExecutaQuery(1276,'select getdate()');
  ExecutaQuery(1277, 'select getdate()');
  ExecutaQuery(1278,'select getdate()');
  ExecutaQuery(1279,'select getdate()');
  ExecutaQuery(1280,'select getdate()');

  ExecutaQuery(1281,'update preferencia set versao = ''2.3.7.1''');
  ExecutaQuery(1282,'create table bloqueio_contratante ( ' +
                      'cd_contratante int not null, ' +
                      'dt_ini_bloqueio datetime not null, ' +
                      'dt_fim_bloqueio datetime, ' +
                      'cd_usuario_inclusao int not null, ' +
                      'cd_usuario_desbloqueio int, ' +
                      'constraint pk_bloqueio_contratante primary key(cd_contratante,dt_ini_bloqueio), ' +
                      'constraint fk_bloqueio_contrat foreign key (cd_contratante) references contratante (codigo), ' +
                      'constraint fk_bloqueio_usuario foreign key (cd_usuario_inclusao) references operador (codigo), ' +
                      'constraint fk_bloqueio_usuario1 foreign key (cd_usuario_desbloqueio) references operador (codigo)) ');

 ExecutaQuery(1283,'update preferencia set versao = ''2.3.7.2''');
 ExecutaQuery(1284,dmat.sp_relMensalidadeContrat.sql);
 ExecutaQuery(1285,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,25,''Contratos/contratante'',''BtnBloqueioContratante'',''Bloqueio de contratantes'' from menu_disponivel');
 ExecutaQuery(1286,dmat.tr_u_bloqueio_contratante.sql);
 ExecutaQuery(1287,dmat.Querysp_manutAtraso.sql);
 ExecutaQuery(1288,'update preferencia set versao = ''2.3.7.3''');
 ExecutaQuery(1289,'update preferencia set versao = ''2.3.7.4''');
 ExecutaQuery(1290,'update preferencia set versao = ''2.3.7.5''');
 ExecutaQuery(1291,'update preferencia set versao = ''2.3.7.6''');

 ExecutaQuery(1292,'update preferencia set versao = ''2.3.7.7''');
 ExecutaQuery(1293,'INSERT INTO PARAMETRO VALUES (''VCVSRO'',''S'',''Visualiza campo Vr Serv Rel Orçamento(Via Cliente) Quando Tabela = 3(Novo plano preço fixo)'',''U'',''SISTEMA'',getdate())');
 ExecutaQuery(1294,'INSERT INTO PARAMETRO VALUES (''LNKSIB'',''http://srv01:8081/sib/Default.aspx'',''Link para acesso ao Sib Xml'',''U'',''SISTEMA'',getdate())');

 ExecutaQuery(1295,'update preferencia set versao = ''2.3.7.8''');
 ExecutaQuery(1296,'alter trigger tr_i_TabPagXDentista on TabPagXdentista for insert ' +
 ' as ' + ' declare @Dtini datetime ' + ' /*set @Dtini = (select max(a.dtIni) from TabPagXDentista a, inserted b where a.cd_dentista = b.cd_dentista and a.dtini <> b.dtini) ' + ' update TabPagXDentista ' +
 ' set dtFim = i.dtIni - 1 ' + ' from inserted i where TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini ' +

 ' */');

 ExecutaQuery(1297,'alter table TabPagXDentista add cd_plano int');
 ExecutaQuery(1298,'alter table TabPagXDentista add constraint fk_TabPagXDentista_plano foreign key (cd_plano) references plano (codigo)');

 ExecutaQuery(1299,'create trigger tr_u_TabPagXDentista on TabPagXdentista ' +

  ' for update ' +

  ' as  declare @Dtini datetime ' +

  ' if update(cd_plano) ' +
  ' begin ' +
  ' raiserror(''Plano não pode ser alterado !'',16,1)  ' +
  ' rollback tran  ' +
  ' end  ');




  ExecutaQuery(1300,'alter table TabPagXdentista drop constraint pk_tabPagXDentista');
  ExecutaQuery(1301,'alter table TabPagXdentista add indice int');
  ExecutaQuery(1302,'select identity(int,1,1) indiceAux, * into ##t from TabPagXdentista update TabPagXdentista set indice = ##t.indiceAux from ##t where ##t.cd_dentista = TabPagXdentista.cd_dentista and ##t.cd_tabela = TabPagXdentista.cd_tabela');

  ExecutaQuery(1303,'alter table TabPagXdentista alter column indice int not null');
  ExecutaQuery(1304,'alter table TabPagXdentista add constraint pk_tabPagXDentista primary key (indice)');

 ExecutaQuery(1305,'alter trigger tr_i_TabPagXDentista on TabPagXdentista ' +

 ' for insert ' +

 ' as  declare @Dtini datetime ' +

 ' if exists(select * from inserted where cd_plano is not null) ' +
 ' begin ' +
 '    set @Dtini = (select max(a.dtIni) from  TabPagXDentista a, inserted b where a.indice <> b.indice and a.cd_plano = b.cd_plano and a.cd_dentista = b.cd_dentista) ' +
 '    print @dtini ' +
 '    if exists(select * from TabPagXDentista  , inserted i where TabPagXDentista.indice <> i.indice and i.cd_plano = TabPagXDentista.cd_plano and  TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini) ' +
 '    begin ' +
 '       update TabPagXDentista  set dtFim = i.dtIni - 1  from inserted i where TabPagXDentista.indice <> i.indice and i.cd_plano = TabPagXDentista.cd_plano and  TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini ' +
 '    end ' +
 ' end ' +
 ' else ' +
 ' if exists(select * from TabPagXDentista  , inserted i where TabPagXDentista.indice <> i.indice and i.cd_plano is null and TabPagXDentista.cd_plano is null and  TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini) ' +
 ' begin ' +
 '    set @Dtini = (select max(a.dtIni) from TabPagXDentista a, inserted b where a.indice <> b.indice and a.cd_plano is null and b.cd_plano is null and a.cd_dentista = b.cd_dentista) ' +
 '    update TabPagXDentista  set dtFim = i.dtIni - 1  from inserted i where TabPagXDentista.indice <> i.indice and i.cd_plano is null and TabPagXDentista.cd_plano is null and  TabPagXDentista.cd_dentista = i.cd_dentista and TabPagXdentista.dtIni = @Dtini ' +
 ' end ');
   ExecutaQuery(1306,'update preferencia set versao = ''2.3.7.9''');
   ExecutaQuery(1307,'alter table TabPagXdentista add constraint fk_TabPagXdentistaPlano foreign key(cd_plano) references plano(codigo)');
   ExecutaQuery(1308,'update preferencia set versao = ''2.3.8.0''');
   ExecutaQuery(1309,'update preferencia set versao = ''2.3.8.1''');
   ExecutaQuery(1310,'update preferencia set versao = ''2.3.8.2''');
   ExecutaQuery(1311,'update preferencia set versao = ''2.3.8.3''');
   ExecutaQuery(1312,'update preferencia set versao = ''2.3.8.4''');
   ExecutaQuery(1313,'update preferencia set versao = ''2.3.8.5''');
   ExecutaQuery(1314,'INSERT INTO PARAMETRO VALUES (''LNKSIP'',''http://srv01:8081/cadTrimestre.aspx'',''Link para acesso ao Sib Xml'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(1315,'update preferencia set versao = ''2.3.8.6''');
   ExecutaQuery(1316,'create table registroPlanoANS ' +
                     '(registroPlano int not null primary key, ' +
                     'ds_registro varchar(30) not null, ' +
                     'dt_registro datetime not null, ' +
                     'ativo char(1) not null)');

   ExecutaQuery(1317,'set dateformat dmy insert into registroPlanoANS select distinct codigo_susep,codigo_susep,convert(char(10),getdate(),103),''S'' from plano');
   ExecutaQuery(1318,'alter table plano add constraint fk_plano_registroANS foreign key (codigo_susep) references registroPlanoANS (registroPlano)');
   ExecutaQuery(1319,'alter table  TabPagXdentista drop constraint fk_TabPagXDentista_plano');
   ExecutaQuery(1320,'alter table  TabPagXdentista drop constraint fk_TabPagXdentistaPlano');
   ExecutaQuery(1321,'alter table TabPagXDentista drop column cd_plano');
   ExecutaQuery(1322,'alter table TabPagXDentista add registroPlano int');
   ExecutaQuery(1323,'alter table registroPlanoANS add constraint fk_registroPlanoANS_registroPlanoANS foreign key (registroPlano) references registroPlanoANS(registroPlano)');
   ExecutaQuery(1324,dmat.tr_u_TabPagXDentista.sql);
   ExecutaQuery(1325,dmat.tr_i_TabPagXDentista.sql);
   ExecutaQuery(1326,'update preferencia set versao = ''2.3.8.7''');
   ExecutaQuery(1327,'update preferencia set versao = ''2.3.8.8''');
   ExecutaQuery(1328,dmat.Qr_SpSinistralidade_Ind.sql);
   ExecutaQuery(1329,'alter table usuario add cd_sus varchar(15)');

   ExecutaQuery(1330,'alter table contratante add lg_exige_matricula_func bit');
   ExecutaQuery(1331,'drop trigger tr_u_i_VerifPlanoValido');
   ExecutaQuery(1332,'update contratante set lg_exige_matricula_func = 0');
   ExecutaQuery(1333,'alter table contratante alter column lg_exige_matricula_func bit not null');
   ExecutaQuery(1334,dmat.Querytr_u_i_VerifPlanoValido.sql);
   ExecutaQuery(1335,dmat.v_contratante_paralizado.sql);

   ExecutaQuery(1336,'update preferencia set versao = ''2.3.8.9''');
   ExecutaQuery(1337,'update preferencia set versao = ''2.3.9.0''');
   ExecutaQuery(1338,DmAt.QuerySpArqSusep.sql);

   ExecutaQuery(1339,'update preferencia set versao = ''2.3.9.1''');
   ExecutaQuery(1340,'INSERT INTO PARAMETRO VALUES (''VCVSR1'',''S'',''Visualiza campo Vr Serv Rel Orçamento(Via Convênio) Quando Tabela = 3(Novo plano preço fixo)'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(1341,'update preferencia set versao = ''2.3.9.2''');

   ExecutaQuery(1342,'update preferencia set versao = ''2.3.9.3''');
   ExecutaQuery(1343,'INSERT INTO PARAMETRO VALUES (''LICBL'',''S'',''Se S mostra contratantes bloqueados no relatório de mensalidade(dentro cadastro contratante)'',''U'',''SISTEMA'',getdate())');

   ExecutaQuery(1344,'update preferencia set versao = ''2.3.9.4''');
   ExecutaQuery(1345,'INSERT INTO PARAMETRO VALUES (''BCPFRE'',''S'',''Se S não permite cadastrar CPF repetido no usuário)'',''U'',''SISTEMA'',getdate())');
   if dm.ExecutaComando('select codigo c from empresa','c') = '1' then
      ExecutaQuery(1346,'INSERT INTO PARAMETRO VALUES (''CBPEBS'',''104'',''Código do Banco padrão Para Emissão Boleto na Simulação de Pagamento de Títulos)'',''U'',''SISTEMA'',getdate())')
   else
      ExecutaQuery(1346,'INSERT INTO PARAMETRO VALUES (''CBPEBS'',''756'',''Código do Banco padrão Para Emissão Boleto na Simulação de Pagamento de Títulos)'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(1347,dmat.sp_relMensalidadeContrat.sql);
  ExecutaQuery(1348,'update preferencia set versao = ''2.3.9.5''');
  ExecutaQuery(1349,'update preferencia set versao = ''2.3.9.6''');
  ExecutaQuery(1350,'update preferencia set versao = ''2.3.9.7''');
  ExecutaQuery(1351,'update preferencia set versao = ''2.3.9.8''');
  ExecutaQuery(1352,'update preferencia set versao = ''2.3.9.9''');
  ExecutaQuery(1353,'update preferencia set versao = ''2.4.0.0''');

  ExecutaQuery(1354,'update preferencia set versao = ''2.4.0.1''');
  ExecutaQuery(1355,dmat.QuerySpArqSusep.sql);
  ExecutaQuery(1356,'update preferencia set versao = ''2.4.0.1''');

  ExecutaQuery(1357,'update preferencia set versao = ''2.4.0.2''');

  ExecutaQuery(1358,'update preferencia set versao = ''2.4.0.3''');

  ExecutaQuery(1359,'update preferencia set versao = ''2.4.0.4''');

  ExecutaQuery(1360,'update preferencia set versao = ''2.4.0.5''');


  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then
     ExecutaQuery(1361,'INSERT INTO PARAMETRO VALUES (''IMGOVL'',''IMG1'',''Imagem válida no orçamento img1 = mt, img2 = st'',''U'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1361,'INSERT INTO PARAMETRO VALUES (''IMGOVL'',''IMG2'',''Imagem válida no orçamento img1 = mt, img2 = st'',''U'',''SISTEMA'',getdate())');

  ExecutaQuery(1362,'update preferencia set versao = ''2.4.0.6''');

  ExecutaQuery(1363,DmAt.ADOQueryCriaTabelaAvisos.sql);
  ExecutaQuery(1364,' insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,154,15,''Financeiro / Relatórios'',''tiulosPagosdeContratantescomRestricao'',''Títulos Pagos de Contratantes com Restrição'' from menu_disponivel');
  ExecutaQuery(1365,'INSERT INTO PARAMETRO VALUES (''MOAVCO'',''S'',''Se S mostra a tela de aviso ao contratante (avisoContratante.pas) Sobre falta de cartão SUS'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1366,'INSERT INTO PARAMETRO VALUES (''QTAVCS'',''3'',''Qtde de vezes que avisará sobre a falta do Cartão SUS de algum benef. antes de bloquear a emissão de orçamentos'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1367,'insert into tipo_aviso values (1,''Exige Cartão SUS'',3,null)');
  ExecutaQuery(1368,'update preferencia set versao = ''2.4.0.7''');
  ExecutaQuery(1369,'alter table aviso_contratante alter column pessoa_avisada varchar(50) null');
  ExecutaQuery(1370,'update preferencia set versao = ''2.4.0.8''');
  ExecutaQuery(1371,'update preferencia set versao = ''2.4.0.9''');
  ExecutaQuery(1372,'update preferencia set versao = ''2.4.1.0''');
  ExecutaQuery(1373,'update preferencia set versao = ''2.4.1.1''');
  ExecutaQuery(1374, DMAT.SP_VR_SERVICO_POR_PLANO.sql);
  ExecutaQuery(1375, dmat.SP_VR_SERVICO_POR_PLANO.SQL);
  ExecutaQuery(1376, dmat.pr_acha_valores_orc.SQL);
  ExecutaQuery(1377,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,32,40,''Contratos/Relatórios'',''SimulaodePreoPorplano1'',''Simulação de Preço de Serviço Por Plano'' from menu_disponivel');
  ExecutaQuery(1378,'update preferencia set versao = ''2.4.1.2''');
  ExecutaQuery(1379,'update preferencia set versao = ''2.4.1.3''');
  ExecutaQuery(1380,'update preferencia set versao = ''2.4.1.4''');
  ExecutaQuery(1381,'INSERT INTO PARAMETRO VALUES (''DSRE'',''c:\temp\'',''Diretorio onde serão salvo os arquivos pdf do relatorio de empresas'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1382,'update preferencia set versao = ''2.4.1.5''');
  ExecutaQuery(1383,'update preferencia set versao = ''2.4.1.6''');
  ExecutaQuery(1384,'update preferencia set versao = ''2.4.1.7''');
  ExecutaQuery(1385,dmat.SP_GERA_DMED.sql);
  ExecutaQuery(1386,'update preferencia set versao = ''2.4.1.8''');
  
  ExecutaQuery(1387,'update preferencia set versao = ''2.4.1.9''');
  ExecutaQuery(1388,dmat.SP_GERA_DMED.sql);
  ExecutaQuery(1389,'INSERT INTO PARAMETRO VALUES (''DSBE'',''c:\temp\'',''Diretorio onde serão salvo os arquivos de boleto das empresas'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1390,'update preferencia set versao = ''2.4.2.0''');

  ExecutaQuery(1391,'update preferencia set versao = ''2.4.2.1''');
  ExecutaQuery(1392,dmat.QuerySpProcessaAumentoMens.SQL);
  ExecutaQuery(1393,dmat.Qr_SpSinistralidade_Ind.SQL);

  ExecutaQuery(1394,'update preferencia set versao = ''2.4.2.2''');
  ExecutaQuery(1395,'create table regiao (cd_regiao tinyint primary key,  ds_regiao varchar(30) not null)');

  ExecutaQuery(1396,'alter table cidade add cd_regiao tinyint');

  ExecutaQuery(1397,'alter table cidade add constraint fk_cidadeRegiao foreign key (cd_regiao) references regiao (cd_regiao)');
  ExecutaQuery(1398,'update preferencia set versao = ''2.4.2.2''');
  ExecutaQuery(1399,'create view v_contratante as select c.*, ci.cd_regiao as cd_regiao_res, r.ds_regiao from contratante c ' +

                    ' left join cidade ci on ci.cd_cidade = c.cd_cidade_res left join regiao r on r.cd_regiao = ci.cd_regiao');

  ExecutaQuery(1400,'update preferencia set versao = ''2.4.2.3''');
  ExecutaQuery(1401,'alter table contratante add nmFantasia varchar(50)');
  ExecutaQuery(1402,'update preferencia set versao = ''2.4.2.4''');
  ExecutaQuery(1403,'update preferencia set versao = ''2.4.2.5''');
  ExecutaQuery(1404,'update preferencia set versao = ''2.4.2.6''');
  ExecutaQuery(1405,'update preferencia set versao = ''2.4.2.7''');
  ExecutaQuery(1406,'update preferencia set versao = ''2.4.2.8''');


  ExecutaQuery(1407,'create table emissao_carteirinha ' +
                  '(cd_emissao int not null primary key, ' +
                  'cd_contratante int not null, ' +
                  'cd_operador varchar(20) not null, ' +
                  'dt_inclusao datetime not null, ' +
                  'dt_geracao datetime , ' +
                  'nm_recepcao varchar(50))');

  ExecutaQuery(1408,'create table itens_emissao_carteirinha ' +
                    '( ' +
                    'cd_emissao int not null, ' +
                    'cd_usuario int not null, ' +
                    'constraint pk_i_emissao_cart primary key (cd_emissao,cd_usuario), ' +
                    'constraint fk_i_emissao_emissao foreign key (cd_emissao) references emissao_carteirinha (cd_emissao)) ');

  ExecutaQuery(1409,'update preferencia set versao = ''2.4.2.9''');
  ExecutaQuery(1410,'update preferencia set versao = ''2.4.3.0''');
  ExecutaQuery(1411,'alter view v_contratante as select c.*, ci.cd_regiao as cd_regiao_res, r.ds_regiao,r.cd_regiao from contratante c  left join cidade ci on ci.cd_cidade = c.cd_cidade_res left join regiao r on r.cd_regiao = ci.cd_regiao');
  ExecutaQuery(1412,'update preferencia set versao = ''2.4.3.1''');
  ExecutaQuery(1413,'update preferencia set versao = ''2.4.3.2''');
  ExecutaQuery(1414,'update preferencia set versao = ''2.4.3.3''');
  ExecutaQuery(1415,'update preferencia set versao = ''2.4.3.4''');
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then
  begin
     ExecutaQuery(1416,'INSERT INTO PARAMETRO VALUES (''KNU'',''C:\TEMP\KNU.EXE'',''Local do executável knu'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1417,'INSERT INTO PARAMETRO VALUES (''HKNU'',''S'',''Se S usa KNU '',''U'',''SISTEMA'',getdate())');
  end
  else
  begin
     ExecutaQuery(1416,'INSERT INTO PARAMETRO VALUES (''KNU'',''C:\TEMP\KNU.EXE'',''Local do executável knu'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1417,'INSERT INTO PARAMETRO VALUES (''HKNU'',''S'',''Se S usa KNU '',''U'',''SISTEMA'',getdate())');
  end;

  ExecutaQuery(1418,'update preferencia set versao = ''2.4.3.5''');
  ExecutaQuery(1419,'update preferencia set versao = ''2.4.3.6''');
  ExecutaQuery(1420,'alter table receber add dt_pagDentista datetime');
  ExecutaQuery(1421,'update receber set dt_pagDentista = Data_Pagamento');
  ExecutaQuery(1422,dmat.tr_u_registraBaixa.sql);

  ExecutaQuery(1423,'alter table Tipos_Pagamentos add eh_cartao char(1)');
  ExecutaQuery(1424,'update Tipos_Pagamentos set eh_cartao = ''N''');

  ExecutaQuery(1425,'alter table Tipos_Pagamentos alter column eh_cartao char(1) not null');
  ExecutaQuery(1426,'update Tipos_Pagamentos set eh_cartao = ''S'' where Id_TipoPgto in(8,9,10,12,13,17)');

  
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then
     ExecutaQuery(1427,'INSERT INTO PARAMETRO VALUES (''HPDC'',''S'',''Habilita Controle de Data de Pagto Dentista em Manutenção para pagto em cartão de crédito '',''U'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1427,'INSERT INTO PARAMETRO VALUES (''HPDC'',''N'',''Habilita Controle de Data de Pagto Dentista em Manutenção para pagto em cartão de crédito'',''U'',''SISTEMA'',getdate())');

     
  ExecutaQuery(1428,'update preferencia set versao = ''2.4.3.7''');

  ExecutaQuery(1429,'update preferencia set versao = ''2.4.3.8''');
  ExecutaQuery(1430,'alter table plano add vr_minimo_plano money');
  ExecutaQuery(1431,'update plano set vr_minimo_plano  = 0');
  ExecutaQuery(1432,'alter table plano alter column vr_minimo_plano money not null');
  ExecutaQuery(1433,'alter table faturamento add vr_complemento money default (0)');
  ExecutaQuery(1434,'update faturamento set vr_complemento = 0');
  ExecutaQuery(1435,dmat.SpVrMensalidade.sql);
  ExecutaQuery(1436,dmat.SpRelClinicaManutencaoPJ.sql);
  ExecutaQuery(1437,dmat.SpRelClinicaManutencaoAu.sql);

  ExecutaQuery(1438,'update preferencia set versao = ''2.4.3.9''');
  ExecutaQuery(1439,'update preferencia set versao = ''2.4.4.0''');


  ExecutaQuery(1440,'alter table itens_pagdentista add updated datetime default (getdate())');
  ExecutaQuery(1441,'alter table mensalidade_usuario add updated datetime default (getdate())');
  ExecutaQuery(1442,'alter table TipoDocumento add updated datetime default (getdate())');

  ExecutaQuery(1443,'alter trigger tr_u_verifStatusPagDentista on Itens_PagDentista ' +
                    ' for update as ' +

                    ' if update (MesAno) ' +
                    '    if exists(select * from inserted i where i.status = ''C'' and i.MesAno <> '''') ' +
                    '    begin ' +
                    '         raiserror(''ATENÇÃO! Não é possível efetuar o pagamento desse serviço, o mesmo encontra-se cancelado '',16,1) ' +
                    '         Rollback tran ' +
                    '    end ' +

                    ' if not UPDATE(updated) ' +

                    ' update itens_pagDentista set updated = GETDATE() from inserted i where     i.Orcamento  = itens_pagDentista.orcamento ' +
                    ' 																	   and i.Incremento = itens_pagDentista.incremento ');


  ExecutaQuery(1444,'create trigger tr_u_mensalidade_usuario on mensalidade_usuario ' +
                    ' for update ' +
                    ' as ' +
                    ' if not UPDATE(updated) ' +
                    '  update mensalidade_usuario set updated = GETDATE() from inserted i where     i.cd_usuario = mensalidade_usuario.cd_usuario ' +
                    '                                                                           and i.dg_usuario = mensalidade_usuario.dg_usuario ' +
                    '                                                                           and i.id_acrescimo = mensalidade_usuario.id_acrescimo ');




  ExecutaQuery(1445,'create trigger tr_u_TipoDocumento on TipoDocumento ' +
                    '  for update ' +
                    ' as ' +
                    '  if not UPDATE(updated) ' +
                    '  update tipoDocumento set updated = GETDATE() from inserted i where i.codigo = tipoDocumento.codigo ');


  ExecutaQuery(1446,dmat.QueryTr_i_incluiMensalidade.sql);
  ExecutaQuery(1447,'update preferencia set versao = ''2.4.4.1''');

  ExecutaQuery(1448,'update preferencia set versao = ''2.4.4.2''');
  ExecutaQuery(1449,'alter table grupo_contratante add inclusao datetime');
  ExecutaQuery(1450,'update Grupo_Contratante set inclusao = ''03/01/2013''');
  ExecutaQuery(1451,'alter table grupo_contratante alter column inclusao datetime not null');
  ExecutaQuery(1452,'update preferencia set versao = ''2.4.4.3''');  
  if dm.ExecutaComando('select codigo c from empresa','c') <> '1' then
        repeat  until application.MessageBox(Pchar('rodar o script esp\mt\fontes\script_RPS.sql para seato'),'Alerta',  MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;

  ExecutaQuery(1453,'update preferencia set versao = ''2.4.4.4''');
  ExecutaQuery(1454,'update preferencia set versao = ''2.4.4.5''');
  ExecutaQuery(1455,'alter table receber add cd_usu_alteracao int');
  ExecutaQuery(1456,'update preferencia set versao = ''2.4.4.6''');
  ExecutaQuery(1457,'insert into parametro values (''LGRECE'',''S'',''Se S grava log de alterações da tabela receber'',''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1458,dmat.Receber_log.sql);
  ExecutaQuery(1459, dmat.TR_U_LOG_RECEBER.sql);
  ExecutaQuery(1460,'update preferencia set versao = ''2.4.4.7''');  
  ExecutaQuery(1461,'update preferencia set versao = ''2.4.4.8''');
  ExecutaQuery(1462,'update preferencia set versao = ''2.4.4.9''');
  ExecutaQuery(1463,'update preferencia set versao = ''2.4.5.0''');
  if dm.ExecutaComando('select codigo c from empresa','c') = '1' then
  begin
     ExecutaQuery(1464,'INSERT INTO PARAMETRO VALUES (''SMSU'',''multiodonto'',''Usuario para envio de SMS'',''U'',''SISTEMA'',getdate())');
     ExecutaQuery(1465,'INSERT INTO PARAMETRO VALUES (''SMSP'',''Multi13'',''Senha para envio de SMS '',''U'',''SISTEMA'',getdate())');
  end
  else
  begin
     showmessage('rodar o script na query DmAt.ADOQueryAtuEndDentista.sql para atualizar campos novos dentista trigger script de update é facinho, rodar no editor sql');
     ExecutaQuery(1464,'select getdate()');
     ExecutaQuery(1465,'select getdate()');
  end;

  ExecutaQuery(1466,'create table mensagemSMS (cd_mensagem int not null primary key,  nm_mensagem  varchar(25) not null,  ds_mensagem  varchar(165) not null, lg_ativo  char(1) not null )');
  ExecutaQuery(1467,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,30,''Contratos/contratante'','''',''Cadastro de Mensagem SMS'' from menu_disponivel');
  ExecutaQuery(1468,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,35,''Contratos/contratante'','''',''Permite customizar SMS'' from menu_disponivel');
  ExecutaQuery(1469,'update preferencia set versao = ''2.4.5.1''');
  ExecutaQuery(1470,'alter table itens_pagDentista add DenteFace varchar(7)');
  ExecutaQuery(1471,'update preferencia set versao = ''2.4.5.2''');
  ExecutaQuery(1472,'update preferencia set versao = ''2.4.5.3''');
  ExecutaQuery(1473,'update preferencia set versao = ''2.4.5.4''');
  ExecutaQuery(1474,'update preferencia set versao = ''2.4.5.5''');
  ExecutaQuery(1475,'update preferencia set versao = ''2.4.5.6''');
  ExecutaQuery(1476,'insert into parametro values(''ALETQ'',''101'',''Altura da etiqueta em milímetros somado com o espaçamento'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1477,'update parametro set vl_parametro = ''38'' where cd_parametro = ''ALETQ''');
  ExecutaQuery(1478,'update preferencia set versao = ''2.4.5.7''');
  ExecutaQuery(1479,'update preferencia set versao = ''2.4.5.8''');
  ExecutaQuery(1480,'insert into parametro values(''MSETQ'',''0'',''Margem superior da etiqueta'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1481,'insert into parametro values(''APETQ'',''312'',''Altura da pagina da etiqueta'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1482,'update preferencia set versao = ''2.4.5.9''');
  ExecutaQuery(1483, dmat.sp_relMensalidadeContrat.sql);
  ExecutaQuery(1484,'update preferencia set versao = ''2.4.6.0''');
  ExecutaQuery(1485,'update preferencia set versao = ''2.4.6.1''');
  ExecutaQuery(1486,'update preferencia set versao = ''2.4.6.2''');
  ExecutaQuery(1487, dmat.sp_relMensalidadeContrat.sql);
  ExecutaQuery(1488, dmat.sp_listaEtiq.sql);
  ExecutaQuery(1489,'update preferencia set versao = ''2.4.6.3''');
  ExecutaQuery(1490,'update preferencia set versao = ''2.4.6.4''');
  ExecutaQuery(1491,'insert into parametro values(''EXSUS'',''N'',''Se S exige o codigo SUS, se N não exige'',''U'',''SISTEMA'',getdate())');
  ExecutaQuery(1492,'update preferencia set versao = ''2.4.6.5''');
  ExecutaQuery(1493,'update preferencia set versao = ''2.4.6.6''');
  ExecutaQuery(1494,'update preferencia set versao = ''2.4.6.7''');
  ExecutaQuery(1495,'update preferencia set versao = ''2.4.6.8''');
  ExecutaQuery(1496,'ALTER TABLE dentista add banco varchar(20)');
  ExecutaQuery(1497,'ALTER TABLE dentista add agencia varchar(10)');
  ExecutaQuery(1498,'ALTER TABLE dentista add contaCorrente varchar(15)');
  ExecutaQuery(1499,'ALTER TABLE dentista add digitoCC varchar(5)');
  ExecutaQuery(1500,'alter table dentista add lg_recebimento_deposito bit default(0)');

  }

end.
