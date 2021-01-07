unit UAtualizaDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons,enio, ComCtrls,biblio, ADODB;

type
  TFmAtualizaDB = class(TForm)
    QueryGenerica: TQuery;
    Button1: TButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    QueryErroAtu: TQuery;
    RichEdit1: TRichEdit;
    BitBtnSair: TBitBtn;
    BitBtn2: TBitBtn;
    RichEdit2: TRichEdit;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    VNrInstrucao : Smallint;

    procedure PIncluiErro(PNrInstrucao,PInstrucao,Perro: String);
    { Private declarations }
  public
  procedure ExecutaQuery(NrInstrucao:Integer;Instrucao : String); overload;
  procedure ExecutaQuery(NrInstrucao:Integer;Instrucao : Tstrings); overload;
  procedure ExecutaQuery(NrInstrucao:Integer;Instrucao : Tstrings;Pobj,Tipo: String); overload;
  end;

var
  FmAtualizaDB: TFmAtualizaDB;

implementation

uses Fundo, udm, UdmAt, Mensagem, ErroAtualizacao, Senha,
  relVerifMesAnterior;

//uses Fundo;

{$R *.DFM}
procedure TFmAtualizaDB.PIncluiErro(PNrInstrucao,PInstrucao,Perro: String);
begin

   QueryErroAtu.Open;
   QueryErroAtu.Insert;
   QueryErroAtu.FieldByName('NrInstrucao'  ).asString := PNrInstrucao;
   QueryErroAtu.FieldByName('Instrucao'    ).asString := PInstrucao;
   QueryErroAtu.FieldByName('msgErro'      ).asString := Perro;
   QueryErroAtu.FieldByName('NmFuncionario').asString := FormSenha.EditUsuario.Text;
   QueryErroAtu.FieldByName('NmMaquina'    ).asString := GetNmMaquina;
   QueryErroAtu.Post;
   QueryErroAtu.Close;
end;
procedure TFmAtualizaDB.ExecutaQuery(NrInstrucao:Integer;Instrucao : String);
begin
    if VNrInstrucao <> NrInstrucao then
    begin
       ShowMessage('Divergência no número de instrução, verifique Sequencial = ' + IntToStr(VNrInstrucao) + ', Controle = ' + IntToStr(NrInstrucao));
       Abort;
    end;
    inc(VnrInstrucao);
    // o parametro abaixo controla as instruções que já foram executadas..
   if StrToInt(dm.GetParam('ULTSCR')) < NrInstrucao then
   begin
      RichEdit1.Lines.Add('--' + IntToStr(NrInstrucao));
      RichEdit1.Lines.Add(Instrucao);
      RichEdit1.Lines.Add('--' + StrAll(30,'='));
      QueryGenerica.Close;
      QueryGenerica.Sql.Clear;
      QueryGenerica.sql.Add(Instrucao);
      try
         QueryGenerica.ExecSQL;
      except
      on E: Exception do
      begin
         FmMensagem := TFmMensagem.create(self);
         FmMensagem.Memo1.Lines.Add('Atenção a instrução número ' + IntToStr(NrInstrucao) + ' falhou. Anote esse número e passe ao desenvolvedor do sistema. ' + #13 + ' Descrição da instrução(' + Instrucao + ').');
         FmMensagem.ShowModal;
         FmMensagem.Free;
         RichEdit1.Lines.Add('ERRO:');
         RichEdit1.Lines.Add(E.Message);
         PIncluiErro(IntToStr(NrInstrucao),Instrucao,E.Message);

      end;
         //ShowMessage('Atenção a instrução número ' + IntToStr(NrInstrucao) + ' falhou. Anote esse número e passe ao desenvolvedor do sistema. ' + #13 + ' Descrição da instrução(' + Instrucao + ').');
      end;
      dm.ExecutaComando('update parametro set vl_parametro = ' + IntToStr(NrInstrucao) + ' where cd_parametro = ''ULTSCR''');
      //RichEdit1.Lines.Add('--' + StrAll(30,'='));
   end;
end;

procedure TFmAtualizaDB.FormShow(Sender: TObject);
begin
   DmAt := TDmAt.create(self);
   Label1.caption := 'Nº da Última atualização -> ' + dm.GetParam('ULTSCR');
end;

procedure TFmAtualizaDB.ExecutaQuery(NrInstrucao: Integer;
  Instrucao: Tstrings);
begin

    if VNrInstrucao <> NrInstrucao then
    begin
       ShowMessage('Divergência no número de instrução, verifique Sequencial = ' + IntToStr(VNrInstrucao) + ', Controle = ' + IntToStr(NrInstrucao));
       Abort;
    end;
    inc(VnrInstrucao);

    // o parametro abaixo controla as instruções que já foram executadas..
   if StrToInt(dm.GetParam('ULTSCR')) < NrInstrucao then
   begin
      RichEdit1.Lines.Add('--' + IntToStr(NrInstrucao));
      RichEdit1.Lines.AddStrings(Instrucao);
      RichEdit1.Lines.Add('--' + StrAll(30,'='));

      QueryGenerica.Close;
      QueryGenerica.Sql.Clear;
      QueryGenerica.sql := Instrucao;
      //memo1.Lines.Add(QueryGenerica.sql.Text);
      try
         QueryGenerica.ExecSQL;
      except
      on E: Exception do
      begin
         RichEdit1.Lines.Add('ERRO:');
         RichEdit1.Lines.Add(E.Message);
         FmMensagem := TFmMensagem.create(self);
         FmMensagem.Memo1.Lines.Add('Atenção a instrução número ' + IntToStr(NrInstrucao) + ' falhou. Anote esse número e passe ao desenvolvedor do sistema. ' + #13 + ' Descrição da instrução(' + QueryGenerica.text + ')');
         FmMensagem.ShowModal;
         FmMensagem.Free;
         PIncluiErro(IntToStr(NrInstrucao),QueryGenerica.text,E.Message);
      end
         //ShowMessage('Atenção a instrução número ' + IntToStr(NrInstrucao) + ' falhou. Anote esse número e passe ao desenvolvedor do sistema. ' + #13 + ' Descrição da instrução(' + QueryGenerica.text + ')');
      end;
      dm.ExecutaComando('update parametro set vl_parametro = ' + IntToStr(NrInstrucao) + ' where cd_parametro = ''ULTSCR''');
      //RichEdit1.Lines.Add('--' + StrAll(30,'='));
   end;
end;

procedure TFmAtualizaDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DmAt.free;
end;

procedure TFmAtualizaDB.BitBtn1Click(Sender: TObject);
begin
      FmErroAtualizacao := TFmErroAtualizacao.create(self);
      FmErroAtualizacao.ShowModal;
      FmErroAtualizacao.Free;
end;

procedure TFmAtualizaDB.ExecutaQuery(NrInstrucao: Integer;
  Instrucao: Tstrings; Pobj,Tipo: String);
begin

  if (tipo <> 'P') and (tipo <>  'TR') then
  begin
     ShowMessage('Tipo deve ser  P ou TR (ExecutaQuery)' );
     Abort;
  end;
  if dm.ExecutaComando('select count(*) q from sysobjects where name = ''' + Pobj + ''' and xtype = ''' + Tipo + '''','q') <> '0' then
  begin
     if uppercase(copy(Instrucao.Strings[0],1,6)) = 'CREATE' then
        Instrucao.Strings[0] := 'alter ' + copy(Instrucao.Strings[0],7, length(Instrucao.Strings[0]) - 6);
  end
  else
  begin
     if uppercase(copy(Instrucao.Strings[0],1,5)) = 'ALTER' then
        Instrucao.Strings[0] := 'create ' + copy(Instrucao.Strings[0],6, length(Instrucao.Strings[0]) - 5);

  end;
  ExecutaQuery(NrINstrucao,Instrucao);
end;
{
C = CHECK constraint
D = Default or DEFAULT constraint
F = FOREIGN KEY constraint
L = Log
FN = Scalar function
IF = Inlined table-function
P = Stored procedure
PK = PRIMARY KEY constraint (type is K)
RF = Replication filter stored procedure
S = System table
TF = Table function
TR = Trigger
U = User table
UQ = UNIQUE constraint (type is K)
V = View
X = Extended stored procedure
 }
procedure TFmAtualizaDB.FormDblClick(Sender: TObject);
begin

   FmRelVerifFatAnterior := TFmRelVerifFatAnterior.create(self);
   FmRelVerifFatAnterior.sp_verifFatAnterior.Open;
   FmRelVerifFatAnterior.RLReport1.SaveToFile('c:\temp\enzo.pdf');
//   FmRelVerifFatAnterior.RLReport1. PreviewOptions Preview();
   FmRelVerifFatAnterior.free;
   //FortesRepPadrao1 := TFmFortesRepPadrao1.create('Ribeirão Multiodonto','Relatório de Teste de Herança',self);

end;

procedure TFmAtualizaDB.BitBtn2Click(Sender: TObject);
begin
  showMessage('Atualiza as senhas do banco (sera pedido logo a seguir o nome do banco) colocando a letra p de prototipo no final');
  if uppercase(Apelido) = 'ENIO' then
   dm.ColocaPSenhaProto(inputbox('Nome do banco','Nome do banco prototipo','prototipo'))
  else
    showMessage('voce nao tem permissao');
end;

procedure TFmAtualizaDB.Button1Click(Sender: TObject);
Var VUltScript : String[10];
VAR SQLaUX : STRING;
begin

   VUltScript := dm.GetParam('ULTSCR');
   VNrInstrucao := 1501; // o restante tá comentado na unit UAtualizaDBAux
  ExecutaQuery(1501,'update dentista set lg_recebimento_deposito = 0');
  ExecutaQuery(1502,'update preferencia set versao = ''2.4.6.9''');
  ExecutaQuery(1503,'update preferencia set versao = ''2.4.7.0''');
  ExecutaQuery(1504,'update preferencia set versao = ''3.0.0.0''');
  ExecutaQuery(1505,'update preferencia set versao = ''3.0.0.1''');
  ExecutaQuery(1506,'update preferencia set versao = ''3.0.0.2''');
  ExecutaQuery(1507,'update preferencia set versao = ''3.0.0.3''');
  ExecutaQuery(1508,'update preferencia set versao = ''3.0.0.4''');
  ExecutaQuery(1509,'update preferencia set versao = ''3.0.0.5''');
  ExecutaQuery(1510,'update preferencia set versao = ''3.0.0.6''');
  ExecutaQuery(1511,'update preferencia set versao = ''3.0.0.7''');
  ExecutaQuery(1512,'update preferencia set versao = ''3.0.0.8''');
  ExecutaQuery(1513,'update preferencia set versao = ''3.0.0.9''');
  ExecutaQuery(1514,'update preferencia set versao = ''3.0.0.9''');
  ExecutaQuery(1515,'update preferencia set versao = ''3.0.1.0''');
  ExecutaQuery(1516,'update preferencia set versao = ''3.0.1.1''');
  ExecutaQuery(1517,'update preferencia set versao = ''3.0.1.2''');
  ExecutaQuery(1518,'create table PromocaoPlano ' +
                    '(id_promocao int primary key, ' +
                    ' cd_plano  int not null, ' +
                    ' dt_ini_vigencia datetime not null, ' +
                    ' dt_fim_vigencia datetime null, ' +
                    ' qt_meses int not null, ' +
                    ' percent_desconto decimal(5,3) not null, ' +
                    ' constraint fk_PromocaoXPlano foreign key (cd_plano) references plano(codigo) ) ');

  ExecutaQuery(1519,'create unique index ix_cdPlanoDtVig on PromocaoPlano (cd_plano,dt_ini_vigencia)');
  ExecutaQuery(1520,'insert   Acrescimo_Inclusao values (0,1,0,''01/01/1901'',''01/01/1901'')');
  ExecutaQuery(1521,'insert into parametro select ''IDAID'', id_acrescimo, ''Indice da tabela Acrescimo_inclusao referente ao Desconto de planos'',''I'',''INTERNO'',getdate() from Acrescimo_Inclusao where plano = 0 and dias = 1');
  ExecutaQuery(1522,dmat.Tr_i_incluiMensalidade.sql);
  ExecutaQuery(1523,'update preferencia set versao = ''3.0.1.3''');
  ExecutaQuery(1524,dmat.Tr_i_incluiMensalidade.sql);
  ExecutaQuery(1525,'update preferencia set versao = ''3.0.1.4''');
  ExecutaQuery(1526,'create trigger tr_i_promocaoPlano on promocaoPlano ' +

                    ' for insert ' +

                    ' as ' +

                    ' set dateformat dmy ' +

                    ' if exists(select * from PromocaoPlano a,inserted b ' +
                    '  where a.cd_plano = b.cd_plano and a.id_promocao <> b.id_promocao and ' +
                    '  (a.dt_ini_vigencia between b.dt_ini_vigencia and isnull(b.dt_fim_vigencia,''01/01/2079'') or ' +
                    '   isnull(a.dt_fim_vigencia,''01/01/2079'') between b.dt_ini_vigencia and isnull(b.dt_fim_vigencia,''01/01/2079''))) ' +


                    ' begin ' +

                    '    raiserror(''Ja existe um registro que coincide com o intervalo de datas informado'',16,1) ' +
                    '    rollback tran ' +
                    ' end ');



  ExecutaQuery(1527,'create trigger tr_u_promocaoPlano on promocaoPlano ' +
                    ' for update ' +

                    ' as ' +

                    ' if update(cd_plano) or update(dt_ini_vigencia) or update(qt_meses) or update (percent_desconto) ' +
                    ' begin ' +
                    '    raiserror(''Nao eh possivel alterar esse registro, se necessario informe data fim e crie um novo registro'',16,1) ' +
                    '    rollback tran ' +
                    ' end ');
  ExecutaQuery(1528,'create trigger tr_d_promocaoPlano on promocaoPlano  for delete as raiserror(''impossivel excluir registro'',16,1) rollback tran');
  ExecutaQuery(1529,'update preferencia set versao = ''3.0.1.5''');
  ExecutaQuery(1530,'update preferencia set versao = ''3.0.1.6''');
  ExecutaQuery(1531,'update preferencia set versao = ''3.0.1.7''');

  ExecutaQuery(1532,'update preferencia set versao = ''3.0.1.8''');
  ExecutaQuery(1533,'ALTER TABLE protetico add banco varchar(20)');
  ExecutaQuery(1534,'ALTER TABLE protetico add agencia varchar(10)');
  ExecutaQuery(1535,'ALTER TABLE protetico add contaCorrente varchar(15)');
  ExecutaQuery(1536,'ALTER TABLE protetico add digitoCC varchar(5)');
  ExecutaQuery(1537,'alter table protetico add lg_recebimento_deposito bit default(0)');
  ExecutaQuery(1538,'update protetico set lg_recebimento_deposito = 0');
  ExecutaQuery(1539,'update protetico set lg_recebimento_deposito = 0');
  ExecutaQuery(1540, dmat.SpRelClinicaManutencaoPJ.sql);
  ExecutaQuery(1541,'update preferencia set versao = ''3.0.1.9''');
  ExecutaQuery(1542,'update preferencia set versao = ''3.0.2.0''');
  ExecutaQuery(1543,'alter table contratante alter column email varchar(100)');
  ExecutaQuery(1544,'alter table CONTRATANTELOG alter column email varchar(100)');
  ExecutaQuery(1545,'update preferencia set versao = ''3.0.2.1''');
  ExecutaQuery(1546,'update preferencia set versao = ''3.0.2.2''');
  ExecutaQuery(1547,'alter table Servicos add cd_tuss int');
  ExecutaQuery(1548,'update preferencia set versao = ''3.0.2.3''');
  ExecutaQuery(1549,'alter table receber add updated datetime default(getdate())');
  ExecutaQuery(1550,'alter table dentista add updated datetime default(getdate())');
  ExecutaQuery(1551,'alter table especialidade add updated datetime default(getdate())');
  ExecutaQuery(1552,'alter table endereco_x_dentista add updated datetime default(getdate())');

  ExecutaQuery(1553, dmat.TR_U_LOG_RECEBER.sql);
  ExecutaQuery(1554,DmAt.TR_U_DENTISTAXENDERECO.sql);
  ExecutaQuery(1555,DmAt.TR_U_ESPECIALIDADE.sql);
  ExecutaQuery(1556,DmAt.TR_U_DENTISTA.sql);
  ExecutaQuery(1557,'alter table esp_x_dentista add updated datetime default(getdate())');
  ExecutaQuery(1558,DmAt.TR_U_ESP_X_DENTISTA.sql);
  ExecutaQuery(1559,'update preferencia set versao = ''3.0.2.4''');
  ExecutaQuery(1560,'update preferencia set versao = ''3.0.2.5''');

  ExecutaQuery(1561,DmAt.sp_ajustaVenctoValorPrestacoes.sql);
  ExecutaQuery(1562,'alter table contratante add nr_insc_estadual varchar(12)');
  ExecutaQuery(1563,'update preferencia set versao = ''3.0.2.6''');
  ExecutaQuery(1564,'alter table contratante add nr_insc_municipal varchar(15)');
  ExecutaQuery(1565,'alter table contratante drop column nr_insc_estadual');
  ExecutaQuery(1566,DmAt.sp_ajustaVenctoValorPrestacoes.sql);
  ExecutaQuery(1567,'update preferencia set versao = ''3.0.2.7''');
  ExecutaQuery(1568,'alter table endereco_x_dentista add numero varchar(10)');
  ExecutaQuery(1569,'alter table endereco_x_dentista add complemento varchar(20)');
  ExecutaQuery(1570,'alter table endereco_x_dentista add idEndereco int');
  ExecutaQuery(1571,'alter table prestacoes ADD tipoCobranca int');
  ExecutaQuery(1572,'alter table prestacoes add constraint fk_parc_tipoCob foreign key (tipoCobranca) references tipoCobranca (codigo)');
  ExecutaQuery(1573,'update preferencia set versao = ''3.0.2.8''');
  ExecutaQuery(1574,DmAt.sp_baixaTitulosOrcamento.sql);
  ExecutaQuery(1575,'alter table esp_x_dentista add idEspXDentista int'); // importante, rodar o script abaixo para atualzar esse campo
  ExecutaQuery(1576,DmAt.TR_U_ESP_X_DENTISTA.sql);
  ExecutaQuery(1577,'update preferencia set versao = ''3.0.2.9''');
  ExecutaQuery(1578,'alter table glosadentista add updated datetime default getdate())');
  ExecutaQuery(1579,'alter table dentista alter column email varchar(50)');
{  go
declare @dentista as int
declare @especialid as int
declare @qt as int
declare  cs cursor for select cd_Dentista,cd_especialidade from esp_x_dentista
open cs
set @qt = 0
fetch next from cs into @dentista, @especialid
while @@FETCH_STATUS = 0
begin
   --select @dentista
   set @qt = @qt + 1
   update esp_x_dentista set idEspXDentista = @qt where esp_x_dentista.cd_dentista = @dentista and cd_especialidade = @especialid
   fetch next from cs into @dentista, @especialid

end
select @qt
close cs
deallocate cs}

//  ExecutaQuery(1579,'CREATE UNIQUE NONCLUSTERED INDEX IX_IdEspXDentista ON dbo.esp_x_dentista	(idEspXDentista)');
  ExecutaQuery(1580,'update preferencia set versao = ''3.0.2.9''');
  ExecutaQuery(1581,'update preferencia set versao = ''3.0.3.0''');
  ExecutaQuery(1582,'update preferencia set versao = ''3.0.3.1''');
  ExecutaQuery(1583,DmAt.sp_baixaTitulosOrcamento.sql);
  ExecutaQuery(1584,'update preferencia set versao = ''3.0.3.2''');
  ExecutaQuery(1585,'alter table servicos add manutencaoAutomatica bit default  0');
  ExecutaQuery(1586,'alter table servicos add habilitaViaOrtodontia bit default 0');
  ExecutaQuery(1587,'update servicos set manutencaoAutomatica = 0, habilitaViaOrtodontia = 0');

  ExecutaQuery(1588,'update servicos set manutencaoAutomatica = 1, habilitaViaOrtodontia = 1 where codigo in (1304, 1306, 1350,1357)');
  ExecutaQuery(1589,'alter table servicos alter column manutencaoAutomatica bit not null');
  ExecutaQuery(1590,'alter table servicos alter column habilitaViaOrtodontia bit not null');
  ExecutaQuery(1591,'update preferencia set versao = ''3.0.3.3''');
  ExecutaQuery(1592,'update preferencia set versao = ''3.0.3.4''');
  ExecutaQuery(1593,'update preferencia set versao = ''3.0.3.5''');
  ExecutaQuery(1594,'create table glosa ' +
                     ' (cd_glosa smallint primary key, ' +
                     ' ds_glosa  varchar(30) not null, ' +
                     ' ativo    char(1) NOT NULL ) ');

  ExecutaQuery(1595,'create table glosaDentista( ' +
                     ' cd_orcamento int not null, ' +
                     ' incremento int not null, ' +
                     ' cd_glosa smallint not null, ' +
                     ' MesAno varchar(7) not null, ' +
                     ' data date not null, ' +
                     ' nmOperador varchar(20) not null, ' +
                     ' constraint pk_glosaDentista primary key (cd_orcamento,incremento,cd_glosa,MesAno), ' +
                     ' constraint fk_itenPagDentista foreign key (cd_orcamento,incremento) references itens_pagdentista (orcamento,incremento))');

  ExecutaQuery(1596,'INSERT INTO PARAMETRO VALUES (''PISOM'',''N'',''Permite Incluir Serviço Orçamento de Manutenção(alterado automaticamente na rotina de geracao faturamento)'',''S'',''SISTEMA'',getdate())');


  ExecutaQuery(1597,dmat.Tr_i_u_validacoesOdonto.sql);
  ExecutaQuery(1598,'update preferencia set versao = ''3.0.3.6''');
  ExecutaQuery(1599,'alter table glosaDentista add MesAno varchar(7)');
  ExecutaQuery(1600,'update glosaDentista set mesAno = ''99/9999''');
  ExecutaQuery(1601,'alter table glosaDentista alter column MesAno varchar(7) not null');
  ExecutaQuery(1602,'update preferencia set versao = ''3.0.3.7''');
  ExecutaQuery(1603,'drop table glosaDentista');
  ExecutaQuery(1604,'create table glosaDentista( ' +
                     ' cd_orcamento int not null, ' +
                     ' incremento int not null, ' +
                     ' cd_glosa smallint not null, ' +
                     ' MesAno varchar(7) not null, ' +
                     ' data date not null, ' +
                     ' nmOperador varchar(20) not null, ' +
                     ' constraint pk_glosaDentista primary key (cd_orcamento,incremento,cd_glosa,MesAno), ' +
                     ' constraint fk_itenPagDentista foreign key (cd_orcamento,incremento) references itens_pagdentista (orcamento,incremento))');
  ExecutaQuery(1605,DmAt.sp_ajustaVenctoValorPrestacoes.sql);
  ExecutaQuery(1606,'update preferencia set versao = ''3.0.3.8''');
  ExecutaQuery(1607,'alter table glosaDentista add constraint fk_glosa foreign key (cd_glosa) references glosa (cd_glosa)');
  ExecutaQuery(1608,'drop table contratante040807');
  ExecutaQuery(1609,'drop table contratante30Fevereiro');
  ExecutaQuery(1610,'drop table contratantebck');
  ExecutaQuery(1611,'drop table dentista080609');
  ExecutaQuery(1612,'drop table faturamento30012010');
  ExecutaQuery(1613,'drop table Faturamentobkp');
  ExecutaQuery(1614,'drop table historico_preco_planobck');
  ExecutaQuery(1615,'drop table itens_orcamento_010906_a_061106');
  ExecutaQuery(1616,'drop table itens_orcamento190509');
  ExecutaQuery(1617,'drop table itens_orcamento210509');
  ExecutaQuery(1618,'drop table itens_orcamentoBck');
  ExecutaQuery(1619,'drop table Itens_PagDentista190509');
  ExecutaQuery(1620,'drop table Itens_PagDentista210509');
  ExecutaQuery(1621,'drop table manutencaobck');
  ExecutaQuery(1622,'drop table mensalidade_usuario_dt_usu');
  ExecutaQuery(1623,'drop table mensalidade_usuario011004');
  ExecutaQuery(1624,'drop table mensalidade_usuario041106');
  ExecutaQuery(1625,'drop table mensalidade_usuario061004');
  ExecutaQuery(1626,'drop table mensalidade_usuario2100706');
  ExecutaQuery(1627,'drop table mensalidade_usuario280213');
  ExecutaQuery(1628,'drop table mensalidade_usuariobck');
  ExecutaQuery(1629,'drop table MENSALIDADE_USUARIOBCK1');
  ExecutaQuery(1630,'drop table mensalidade_usuariobck230904');
  ExecutaQuery(1631,'drop table ORC91751');
  ExecutaQuery(1632,'drop table ORC92571');
  ExecutaQuery(1633,'select getdate()');
  ExecutaQuery(1634,'drop table orcamento030507');
  ExecutaQuery(1635,'drop table ORCAMENTO220809');
  ExecutaQuery(1636,'drop table orcamentos251109');
  ExecutaQuery(1637,'drop table preco_plano120105');
  ExecutaQuery(1638,'drop table preco_plano280213');
  ExecutaQuery(1639,'drop table PrimeiraAlterVrProteTicoEnio');
  ExecutaQuery(1640,'drop table SegundaAlterVrProteTicoEnio');
  ExecutaQuery(1641,'drop table usuario_250811');
  ExecutaQuery(1642,'drop table usuario_cpf_281109');
  ExecutaQuery(1643,'drop table usuario0607DtReinclusao');
  ExecutaQuery(1644,'drop table usuarioBck');
  ExecutaQuery(1645,'drop table ValorxProcedimento130610');
  ExecutaQuery(1646,'drop table ValorxProcedimento210707');
  ExecutaQuery(1647,'update preferencia set versao = ''3.0.3.9''');
  ExecutaQuery(1648,'update preferencia set versao = ''3.0.4.0''');
  ExecutaQuery(1649,'update preferencia set versao = ''3.0.4.1''');
  ExecutaQuery(1650,'update preferencia set versao = ''3.0.4.1''');
  ExecutaQuery(1651,'update preferencia set versao = ''3.0.4.2''');
  ExecutaQuery(1652,'update preferencia set versao = ''3.0.4.3''');
  ExecutaQuery(1653,'Alter table ORCAMENTO add PericiaInicial bit default(0)');
  ExecutaQuery(1654,'update preferencia set versao = ''3.0.4.4''');


  ExecutaQuery(1655,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,60,20,''Orçamentos'',''Desaprovaroramento1'',''Permite desautorizar orçamento'' from menu_disponivel');
  ExecutaQuery(1656,'update preferencia set versao = ''3.0.4.5''');
  ExecutaQuery(1657,'update preferencia set versao = ''3.0.4.6''');
  ExecutaQuery(1658,'update preferencia set versao = ''3.0.4.7''');
  ExecutaQuery(1659,'update tipodocumento set Classificacao = ''Orçamento'' where Classificacao = ''orcamento''');
  ExecutaQuery(1660,'update preferencia set versao = ''3.0.4.8''');
  ExecutaQuery(1661,'update preferencia set versao = ''3.0.4.9''');
  ExecutaQuery(1662,'alter table itens_pagDentista add incremento_orc int');
  ExecutaQuery(1663,'update preferencia set versao = ''3.0.5.0''');
  ExecutaQuery(1664,Dmat.tr_i_Iitens_orcamento.sql);
  ExecutaQuery(1665,Dmat.tr_d_itens_orcamento.sql);
  ExecutaQuery(1666,'update preferencia set versao = ''3.0.5.3''');
  ExecutaQuery(1667,'update preferencia set versao = ''3.0.5.3''');
  ExecutaQuery(1668,'update preferencia set versao = ''3.0.5.4''');
  ExecutaQuery(1669,'update preferencia set versao = ''3.0.5.5''');
  ExecutaQuery(1670,'update preferencia set versao = ''3.0.5.6''');
  ExecutaQuery(1671,DmAt.v_contratante_paralizado.SQL);
  ExecutaQuery(1672,'update preferencia set versao = ''3.0.5.7''');
  ExecutaQuery(1673,'update preferencia set versao = ''3.0.5.8''');
  ExecutaQuery(1674,'update preferencia set versao = ''3.0.5.9''');
  ExecutaQuery(1675,'alter table dentista alter column email varchar(50)');
  ExecutaQuery(1676,'alter table glosadentista add updated datetime default getdate()');

  ExecutaQuery(1677,'create TRIGGER TR_U_glosadentista ON glosadentista ' +

  ' FOR UPDATE ' +

  ' AS ' +

  ' if not update(updated) ' +
  '     UPDATE glosadentista SET updated = getdate() FROM INSERTED I ' +
  '	 WHERE I.cd_orcamento = glosadentista.cd_orcamento ' +
  '	   and i.incremento = glosadentista.incremento ' +
  '       and i.cd_glosa = glosadentista.cd_glosa ' +
  '       and i.MesAno = glosadentista.mesAno');
  ExecutaQuery(1678,'alter table glosa alter column ds_glosa varchar(200)');
  ExecutaQuery(1679,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,16,''Dentista'','''',''Permite cancelar pagamento dentista sem glosa'' from menu_disponivel');
  ExecutaQuery(1680,'update preferencia set versao = ''3.0.6.0''');
  ExecutaQuery(1681,DmAt.sp_relOrc_sip.sql);
  ExecutaQuery(1682,'update preferencia set versao = ''3.0.6.1''');
  ExecutaQuery(1683,'update preferencia set versao = ''3.0.6.2''');
  ExecutaQuery(1684,'update preferencia set versao = ''3.0.6.3''');
  ExecutaQuery(1685,'alter table  glosadentista add obs varchar(150)');
  ExecutaQuery(1686,'update preferencia set versao = ''3.0.6.4''');
  ExecutaQuery(1687,dmat.sp_relOrc_sip.sql);
  ExecutaQuery(1688,'update preferencia set versao = ''3.0.6.5''');

  if senha.Cod_Empresa = 1 then
     ExecutaQuery(1689,'INSERT INTO PARAMETRO VALUES (''ACTUSS'',''S'',''Associa código TUSS no orçamento'',''S'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1689,'INSERT INTO PARAMETRO VALUES (''ACTUSS'',''N'',''Associa código TUSS no orçamento'',''S'',''SISTEMA'',getdate())');
  ExecutaQuery(1690,'update preferencia set versao = ''3.0.6.6''');
  ExecutaQuery(1691,'update preferencia set versao = ''3.0.6.7''');
  ExecutaQuery(1692,'update preferencia set versao = ''3.0.6.8''');
  ExecutaQuery(1693,'update preferencia set versao = ''3.0.6.9''');
  ExecutaQuery(1694,'update preferencia set versao = ''3.0.7.0''');
  ExecutaQuery(1695, DMAT.SP_GERA_DMED.SQL);
  ExecutaQuery(1696,'update preferencia set versao = ''3.0.6.9''');
  ExecutaQuery(1697,'update preferencia set versao = ''3.0.7.0''');
  if senha.Cod_Empresa = 1 then
  begin
     ExecutaQuery(1698,'SELECT GETDATE()');
     ExecutaQuery(1699,'SELECT GETDATE()');
     ExecutaQuery(1700,'SELECT GETDATE()');
     ExecutaQuery(1701,'SELECT GETDATE()');
     ExecutaQuery(1702,'SELECT GETDATE()');
     ExecutaQuery(1703,'SELECT GETDATE()');
     ExecutaQuery(1704,'SELECT GETDATE()');
  end
  else
  begin
     ExecutaQuery(1698,'INSERT INTO PARAMETRO VALUES (''UFNVPD'',''N'',''Usa novo calculo de valorizacao de dnetista?'',''S'',''SISTEMA'',getdate())');
     ExecutaQuery(1699,'alter table orcamento add updated datetime');
     ExecutaQuery(1700,'alter table Contratante add updated datetime');
     ExecutaQuery(1701,'alter table Itens_Orcamento add updated datetime');
     ExecutaQuery(1702,'alter table itens_orcamento add tuss_id int');
     ExecutaQuery(1703,'alter table itens_orcamento add indiceTabPagDentista int');
     ExecutaQuery(1704,'alter table odontograma add incremento_item_orc int');
  end;
    ExecutaQuery(1705,'update preferencia set versao = ''3.0.7.1''');
  if senha.Cod_Empresa = 1 then
     ExecutaQuery(1706,'INSERT INTO PARAMETRO VALUES (''MACORC'',''S'',''Manutenção é considerado orçamento no relatório 8'',''S'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1706,'INSERT INTO PARAMETRO VALUES (''MACORC'',''N'',''Manutenção é considerado orçamento no relatório 8'',''S'',''SISTEMA'',getdate())');

   ExecutaQuery(1707,'alter table faturamento add nnBoleto int');
   ExecutaQuery(1708,'create index ix_nnboletoFat on faturamento (nnBoleto)');
   ExecutaQuery(1709,'alter  trigger tr_i_faturamento on faturamento ' +
   ' for insert as ' +
   ' update faturamento set empresa = c.empresa ,  nnboleto = (select isnull(max(nnBoleto),1) + 1 from faturamento) ' +
   ' from  contratante c, 	inserted i ' +
   ' where i.codigo_contratante = c.codigo ' +
   ' and faturamento.numero_titulo = i.numero_titulo ' +
	 ' and faturamento.desdobramento = i.desdobramento ' +
	 ' and faturamento.data_vencimento = i.data_vencimento ');

   ExecutaQuery(1710,'update preferencia set versao = ''3.0.7.2''');
   ExecutaQuery(1711,'alter table RetornoCNAB add cd_retorno tinyint');
   ExecutaQuery(1712,dmat.spBaixaCnab.SQL);
   ExecutaQuery(1713,'update preferencia set versao = ''3.0.7.3''');
   ExecutaQuery(1714,'create table MotivoRetornoCNAB (cdMotivo tinyint primary key, dsMotivo varchar(100))');
   ExecutaQuery(1715,dmat.ADOQueryIncluiMOtivosCNAB.SQL);
   ExecutaQuery(1716,dmat.tr_i_faturamento.sql);
   ExecutaQuery(1717,'update preferencia set versao = ''3.0.7.4''');
   ExecutaQuery(1718,'ALTER TABLE [dbo].[receber_formaLiqCNAB]  drop CONSTRAINT [fk_receber_formaliqCNAB_LiqCNAB]');
   ExecutaQuery(1719,'alter table receber_formaLiqCNAB alter column cd_liquidacao varchar(10)');
   ExecutaQuery(1720,'alter table RetornoCNAB alter column cd_liquidacao varchar(10)');
   ExecutaQuery(1721,'alter table contratante alter column estado_comercial varchar(2) not null');
   ExecutaQuery(1722,'alter table contratante alter column estado_residencial varchar(2) not null');
   ExecutaQuery(1723,dmat.ck_estado.sql);
   ExecutaQuery(1724,'update preferencia set versao = ''3.0.7.5''');
   ExecutaQuery(1725,'update preferencia set versao = ''3.0.7.6''');
   ExecutaQuery(1726,'update preferencia set versao = ''3.0.7.7''');
   ExecutaQuery(1727,'update preferencia set versao = ''3.0.7.8''');
   ExecutaQuery(1728,'update preferencia set versao = ''3.0.7.9''');
   ExecutaQuery(1729,'update preferencia set versao = ''3.0.8.0''');
   ExecutaQuery(1730,'alter table  orcamento alter column cd_tabela smallint null');
   ExecutaQuery(1731,'alter table usuario alter column nome varchar(70) not null');
   ExecutaQuery(1732,'alter table USUARIOLOG alter column nome varchar(70)');
   ExecutaQuery(1733,'update preferencia set versao = ''3.0.8.1''');
   ExecutaQuery(1734,'update preferencia set versao = ''3.0.8.2''');
   ExecutaQuery(1735,'update preferencia set versao = ''3.0.8.3''');

  if senha.Cod_Empresa = 1 then
     ExecutaQuery(1736,'INSERT INTO PARAMETRO VALUES (''UGLO'',''S'',''Indica se utiliza processo de glosa pago dentista'',''S'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1736,'INSERT INTO PARAMETRO VALUES (''UGLO'',''N'',''Indica se utiliza processo de glosa pago dentista'',''S'',''SISTEMA'',getdate())');

   ExecutaQuery(1737,'update preferencia set versao = ''3.0.8.4''');
   ExecutaQuery(1738,'update preferencia set versao = ''3.0.8.5''');
   ExecutaQuery(1739,dmat.tr_i_faturamento.sql);
   ExecutaQuery(1740,'update preferencia set versao = ''3.0.8.6''');
   ExecutaQuery(1741,'update preferencia set versao = ''3.0.8.7''');
  if senha.Cod_Empresa = 1 then
     ExecutaQuery(1742,'INSERT INTO PA\RAMETRO VALUES (''CBCNAB'',''6'',''Codigo de Baixa Cnab'',''S'',''SISTEMA'',getdate())')
  else
     ExecutaQuery(1742,'INSERT INTO PARAMETRO VALUES (''CBCNAB'',''5'',''Codigo de Baixa Cnab'',''S'',''SISTEMA'',getdate())');
  ExecutaQuery(1743,dmat.spBaixaCnab.SQL);
  ExecutaQuery(1744,'update preferencia set versao = ''3.0.8.8''');
  ExecutaQuery(1745,dmat.sp_monitoramentoANS.SQL);
  ExecutaQuery(1746,'update preferencia set versao = ''3.0.8.9''');
  ExecutaQuery(1747,'ALTER TABLE dbo.celulares ADD CONSTRAINT PK_celulares PRIMARY KEY  	(id)');
  ExecutaQuery(1748,'CREATE INDEX [ix_contratante] ON [dbo].[celulares](	[Codigo] ASC )');
  ExecutaQuery(1749,'alter table celulares add obs varchar(25)');
  ExecutaQuery(1750,'alter table celulares alter column celular decimal not null');
  ExecutaQuery(1751,'insert into status_pagto values (''Guia Glosada'')');
  ExecutaQuery(1752,'alter table dentista add exibir bit');
  ExecutaQuery(1753,'update dentista set exibir = 0 where exibir is null');
  ExecutaQuery(1754,'update preferencia set versao = ''3.0.9.0''');
  ExecutaQuery(1755,'create trigger tr_u_manutencao on manutencao for update as if update(usuario) begin raiserror(''Não é possível alterar o usuario '',16,1) rollback tran  end');
  ExecutaQuery(1756,dmat.spBaixaCnab.SQL);
  ExecutaQuery(1757,'update preferencia set versao = ''3.0.9.1''');
  ExecutaQuery(1758,'update preferencia set versao = ''3.0.9.2''');
  ExecutaQuery(1759,'update preferencia set versao = ''3.0.9.3''');
  ExecutaQuery(1760,dmat.sp_relBenefExcluidos.sql);
  ExecutaQuery(1761,'update preferencia set versao = ''3.0.9.4''');
  ExecutaQuery(1762,'alter table cancelamento add cd_sib int');
  ExecutaQuery(1763,'create table motivoCancelamentoANS (cdMotivo int not null primary key,  dsMotivo varchar(60) not null)');
  ExecutaQuery(1764,'insert into motivoCancelamentoANS values (41,''Rompimento do contrato por iniciativa do beneficiário'')');
  ExecutaQuery(1765,'insert into motivoCancelamentoANS values (42,''Desligamento da empresa (para planos coletivos)'')');
  ExecutaQuery(1766,'insert into motivoCancelamentoANS values (43,''Inadimplência'')');
  ExecutaQuery(1767,'insert into motivoCancelamentoANS values (44,''Obito'')');
  ExecutaQuery(1768,'insert into motivoCancelamentoANS values (46,''Inclusão indevida de beneficiários'')');
  ExecutaQuery(1769,'insert into motivoCancelamentoANS values (47,''Fraude (art. 13 da Lei nº 9.656/98)'')');
  ExecutaQuery(1770,'insert into motivoCancelamentoANS values (48,''Por portabilidade de carência'')');
  ExecutaQuery(1771,'update cancelamento set cd_sib = 41 where codigo = 2');
  ExecutaQuery(1772,'update cancelamento set cd_sib = 42 where codigo = 3');
  ExecutaQuery(1773,'update cancelamento set cd_sib = 43 where codigo = 4');
  ExecutaQuery(1774,'update cancelamento set cd_sib = 44 where codigo = 5');
  ExecutaQuery(1775,'update cancelamento set cd_sib = 46 where codigo = 13');
  ExecutaQuery(1776,'update cancelamento set cd_sib = 47 where codigo = 14');
  ExecutaQuery(1777,dmat.QuerySpArqSusep.sql);
  ExecutaQuery(1778,'update preferencia set versao = ''3.0.9.5''');
  ExecutaQuery(1779,'update preferencia set versao = ''3.0.9.6'''); //04/11/17
  ExecutaQuery(1780,'update preferencia set versao = ''3.0.9.7'''); //04/11/17
  ExecutaQuery(1781,'update preferencia set versao = ''3.0.9.8'''); //12/11/17
  ExecutaQuery(1782,'update preferencia set versao = ''3.0.9.9'''); //19/11/17
  ExecutaQuery(1783,'update preferencia set versao = ''3.1.0.0'''); //26/11/17 grafico dr elias vendas segundo grafico
  ExecutaQuery(1784,'update preferencia set versao = ''3.1.0.1'''); //26/11/17 grafico dr elias vendas segundo grafico
  ExecutaQuery(1785,'update preferencia set versao = ''3.1.0.2'''); //21/01/2018 relatorio dentista
  ExecutaQuery(1786,DmAt.TR_U_DENTISTA.sql); // campo controle exibir den
  ExecutaQuery(1787,'insert into parametro values(''VDIU'',''S'',''Valida DT Inclusão Usuário/contratante(< 15 DIAS, < CONTRATANTE e contrat < ans)'',''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1788,DmAt.Querytr_u_i_consiste_dados.sql);  // valida data inclusao beneficiario
  ExecutaQuery(1789,DmAt.Querytr_u_i_VerifPlanoValido.sql); // valida data de inclusao contratante se eh infeiror ao plano
  ExecutaQuery(1790,DmAt.TR_U_DENTISTA.sql); // campo controle exibir den
  ExecutaQuery(1791,'update preferencia set versao = ''3.1.0.3'''); //22/03/2018 foto dentista, total vidas cancelada rel TQrVendasPorUsu
  ExecutaQuery(1792,'update preferencia set versao = ''3.1.0.4'''); //02/04/2018 impressao em lote via convenio
  ExecutaQuery(1793,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,60,15,''Orçamentos'',''ImprimirViaConvnioemlote1'',''Imprimir Orçamentos em lote'' from menu_disponivel');
  ExecutaQuery(1794,'update preferencia set versao = ''3.1.0.5'''); //27/05/18 permissaoimpressao em lote via convenio, validacao e inclusao em tela de emails
  ExecutaQuery(1795,'alter table Endereco_x_dentista add fone2 varchar(15)');
  ExecutaQuery(1796,'alter table Endereco_x_dentista add fone3 varchar(15)');
  ExecutaQuery(1797,'update preferencia set versao = ''3.1.0.6'''); //07/07/2018 GERENCIAMENTO DE LEADS
  ExecutaQuery(1798,'insert into parametro values(''HOSTEM'',''email-ssl.com.br'',''Host smtp para envio de e-mail ssl''   ,''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1799,'insert into parametro values(''PWDEMA'',''Mltbcl*967258'',''Senha e-mail padrão para envio de e-mail'',''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1800,'insert into parametro values(''PORTMA'',''465'',''Porta smtp para envio de e-mail'',''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1801,'insert into parametro values(''EMPADR'',''sistema@multibucal.com.br'',''E-mail padrão para envio de e-mails'',''U'',''SISTEMA'',GETDATE())');
  ExecutaQuery(1802,'create  table origemContatoLEADS (cdOrigemContato smallint not null primary key, descricao varchar(40) not null, ativo bit not null)');
  ExecutaQuery(1803,'create table statusLEADS (cdStatus varchar(2) not null primary key, dsStatus varchar(30) not null)');
  ExecutaQuery(1804,'create table GerenciamentoLEADS ' +
                    ' (indice int not null, ' +
                    ' nome varchar(50) not null, ' +
                    ' ddd smallint not null, ' +
                    ' fone int not null, ' +
                    ' email varchar(80), ' +
                    ' cdOrigemContato smallint not null, ' +
                    ' cdRepresentante smallint not null, ' +
                    ' dtInclusao datetime not null, ' +
                    ' cdOperador int not null, ' +
                    ' cdStatus varchar(2) not null, ' +
                    ' observacao varchar(500), ' +
                    ' enviadoEmail bit not null, ' +
                    ' dtExclusao datetime , ' +
                    ' constraint pkGerencLEADS primary key (indice), ' +
                    ' constraint fkGerencLEADSOperador foreign key (cdOPerador) references operador(codigo), ' +
                    ' constraint fkGrencLEADSRepresentante foreign key (cdRepresentante) references representante(codigo), ' +
                    ' constraint fkGrencLEADSStatus foreign key (cdStatus) references statusLEADS(cdStatus),' +
                    'constraint fkGerencLeadsOrigemContato foreign key (cdOrigemContato) references origemContatoLEADS(cdOrigemContato))');
  ExecutaQuery(1805,'alter table operador add cdRepresentante smallint');
  ExecutaQuery(1806,'alter table operador add constraint fkOperadorRepresentante foreign key (cdRepresentante) references representante(codigo)');
  ExecutaQuery(1807,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,120,10,''Vendas'',''GerenciamentodeLEADS2'',''Gerenciamento de LEADS'' from menu_disponivel');
  ExecutaQuery(1808,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,120,15,''Vendas'',''ExcluiAlteraLEAD'',''Alterar/Excluir LEADS'' from menu_disponivel');
  ExecutaQuery(1809,'insert into statusLEADS values(''PD'',''Pendente'')');
  ExecutaQuery(1810,'insert into statusLEADS values(''AR'',''Aguardando Resposta'')');
  ExecutaQuery(1811,'insert into statusLEADS values(''VF'',''Venda Fechada'')');
  ExecutaQuery(1812,'insert into statusLEADS values(''VP'',''Venda Perdida'')');
  ExecutaQuery(1813,'update preferencia set versao = ''3.1.0.7'''); //07/07/2018 GERENCIAMENTO DE LEADS
  ExecutaQuery(1814,'update preferencia set versao = ''3.1.0.8'''); //15/07/2018 ctrl c + ctrl v na tela de contratante e orçamento #22, exceção para dentista 1235 conf email do taciano dia 13/05
  ExecutaQuery(1815,'update preferencia set versao = ''3.1.0.9'''); //16/07/2018 correçãod
  ExecutaQuery(1816,'update preferencia set versao = ''3.1.1.0'''); //14/08/2018 correçãod
  ExecutaQuery(1817,'alter table RetornoCNAB add nrDocumento varchar(15)');
  ExecutaQuery(1818,'alter table RetornoCNAB add sacado varchar(40)');
  ExecutaQuery(1819,'update preferencia set versao = ''3.1.1.1'''); //16/08/2018 modal formtituloreceber
  ExecutaQuery(1820,'update preferencia set versao = ''3.1.1.2'''); //20/08/2018 erro modal no contratante
  ExecutaQuery(1821,'update preferencia set versao = ''3.1.1.3'''); //20/08/2018 erro modal no contratante
  ExecutaQuery(1822,'alter table GerenciamentoLEADS add cdCidade smallint');
  ExecutaQuery(1823,'update GerenciamentoLEADS set cdCidade = 1');
  ExecutaQuery(1824,'alter table GerenciamentoLEADS alter column  cdCidade smallint not null');
  ExecutaQuery(1825,'alter table GerenciamentoLEADS  add constraint fkLeadsCidade foreign key (cdCidade) references cidade (cd_cidade)');
  ExecutaQuery(1826,'update preferencia set versao = ''3.1.1.4'''); //26/08/2018 cidade no lead, inclusao rel ficha empresa, regra para 1010 e 1011 para dentes  18,28,38,48
  // relatorio de contatos que nao estava filtrando certo operador e tb coloquei filtro de cidade para o relatorio (primeiro dos 3) tinha o parametro mas nao filtrava nesse relatorio
  // incluido campo urgencia no serviço e adaptado orcamento para enxergar esse campo
  ExecutaQuery(1827,'alter table servicos add lgUrgencia bit');
  ExecutaQuery(1828,'update servicos set lgUrgencia = 0');
  ExecutaQuery(1829,'alter table servicos alter column lgUrgencia bit not null');
  ExecutaQuery(1830,'update preferencia set versao = ''3.1.1.5'''); //27/10/18 camo dt_ini_carencia
  ExecutaQuery(1831,dmat.Altera_Usuario.SQL);
  ExecutaQuery(1832,'alter table usuario add dt_ini_cobertura datetime');
  ExecutaQuery(1833,'update usuario set dt_ini_cobertura = data_inclusao, updated = updated, DATA_ALTERACAO = DATA_ALTERACAO');
  ExecutaQuery(1834,'alter table usuario ALTER COLUMN dt_ini_cobertura datetime NOT NULL');
  ExecutaQuery(1835,dmat.pr_acha_valores_orc.sql);
  ExecutaQuery(1836,'update preferencia set versao = ''3.1.1.6'''); //18/11/18 bug acrescimo mensalidade
  
  ExecutaQuery(1837,'ALTER TABLE [dbo].[mensalidade_usuario]  WITH NOCHECK ADD  CONSTRAINT [ck_mensalidade_dtini_maior_dtfim] CHECK  (([dtinicio] < [dtfim]))');
  ExecutaQuery(1838,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,251,20,''Utilitário/Funcionários'',''Permite excluir Benef sem CCO'',''Permite Excluir Benef Sem CCO'' from menu_disponivel');
  ExecutaQuery(1839,'update preferencia set versao = ''3.1.1.7'''); //05/01/19 controle de exclusao benef sem cco, habilitado telefone contratante fone3 que era celular, lg_cobraJuros, segment S, grafico  de cancelamentos
  ExecutaQuery(1840,'alter table faturamento add lg_cobraJuros bit default(1)');
  ExecutaQuery(1841,'update faturamento set lg_cobraJuros = 1');
  ExecutaQuery(1842,'alter table faturamento alter column lg_cobraJuros bit not null');
  ExecutaQuery(1843,'alter table faturamento add mensagem1 varchar(40)');
  ExecutaQuery(1844,'alter table faturamento add mensagem2 varchar(40)');
  ExecutaQuery(1845,'alter table faturamento add mensagem3 varchar(40)');
  ExecutaQuery(1846,'update preferencia set versao = ''3.1.1.8''');
  ExecutaQuery(1847,'update preferencia set versao = ''3.1.1.9''');
  ExecutaQuery(1848,'update preferencia set versao = ''3.1.2.0'''); // bug na autorizaão
  ExecutaQuery(1849,'update preferencia set versao = ''3.1.2.1'''); // bug na autorizaão
  ExecutaQuery(1850,'update preferencia set versao = ''3.1.2.2'''); // sp abaixo 16/02/19
  ExecutaQuery(1851,dmat.sp_monitoramentoANS.SQL);
  ExecutaQuery(1852, DMAT.SP_GERA_DMED.SQL);
  ExecutaQuery(1853,'update preferencia set versao = ''3.1.2.3'''); // 09/03/2019 cpf menor, habilitar telefone, tele contratante.
  ExecutaQuery(1854,'update preferencia set versao = ''3.1.2.4'''); // 09/03/2019 cpf menor, habilitar telefone, tele contratante.
  ExecutaQuery(1855, DMAT.V_CONTRATANTE.SQL);
  ExecutaQuery(1856,'alter table contratante add lg_empresarioIndividual bit default(0)'); // 09/03/2019 cpf menor, habilitar telefone, tele contratante.

  sqlAux := 'ALTER TABLE contratante DISABLE TRIGGER tr_u_i_VerifPlanoValido ALTER TABLE contratante DISABLE TRIGGER tr_u_verifContrate ALTER TABLE contratante DISABLE TRIGGER TR_U_LOG_CONTRATANTE ALTER TABLE contratante ';
  sqlAux := sqlAux + ' DISABLE TRIGGER tr_u_InibeAlterPLano ALTER TABLE contratante DISABLE TRIGGER tr_u_AtualizacaoANS update  contratante set lg_empresarioIndividual = 0 ALTER TABLE contratante ';
  sqlAux := sqlAux + ' ENABLE TRIGGER tr_u_i_VerifPlanoValido ALTER TABLE contratante ENABLE TRIGGER tr_u_verifContrate ALTER TABLE contratante ENABLE TRIGGER TR_U_LOG_CONTRATANTE ALTER TABLE contratante ';
  sqlAux := sqlAux + ' ENABLE TRIGGER tr_u_InibeAlterPLano ALTER TABLE contratante ENABLE TRIGGER tr_u_AtualizacaoANS';
  ExecutaQuery(1857,sqlAux);
  if senha.Cod_Empresa = 1 then
     ExecutaQuery(1858,'select getdate()')
  else
     ExecutaQuery(1858,'alter table contratante add nire varchar(11)');
  ExecutaQuery(1859,'alter table contratante add nire varchar(11)');
  ExecutaQuery(1860,'update preferencia set versao = ''3.1.2.5'''); // 17/03/19
  ExecutaQuery(1861,'update preferencia set versao = ''3.1.2.6'''); // 20/03/19
  ExecutaQuery(1862,'update preferencia set versao = ''3.1.2.7'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1863,'insert into tipo_evento values(23,''Débito Itau'',1)');
  ExecutaQuery(1864,dmat.sp_AtualizaEvento.sql);
  ExecutaQuery(1865,dmat.Sp_incluiEnventoFat.SQL);
  ExecutaQuery(1866,'update preferencia set versao = ''3.1.2.8'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1867,'update preferencia set versao = ''3.1.2.9'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1868,'update preferencia set versao = ''3.1.3.0'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1869,'update preferencia set versao = ''3.1.3.1'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1870,'alter table itens_pagProtetico add status char(1) default(''N'')'); // 05052019 controle status protetico
  ExecutaQuery(1871,'update preferencia set versao = ''3.1.3.2'''); // 31/03/2019 - DEBITO ITAU
  ExecutaQuery(1872,dmat.tr_u_alt_statusPagto.sql);
  ExecutaQuery(1873,'update itens_pagProtetico set status = ''N''');
  ExecutaQuery(1874,dmat.tr_u_verifStatusPagProtetico.sql);
  ExecutaQuery(1875,'update preferencia set versao = ''3.1.3.3'''); // 18/05/19 BUG CONTROLE STATUS PAG PROTETICO
  ExecutaQuery(1876,Dmat.tr_i_Iitens_orcamento.sql);
  ExecutaQuery(1877,'alter table contratante add lg_enviarBoletoPorEmail bit default(0)'); //19/05
  ExecutaQuery(1878,'update contratante set lg_enviarBoletoPorEmail = 0, UPDATED = UPDATED where cgc_cpf is not null');
  ExecutaQuery(1879,'update preferencia set versao = ''3.1.3.4'''); // 18/05/19 remodelage tela contratante campo data de nascimento, ds_regiao, ajsute do menu dentsita x cidade
  ExecutaQuery(1880,'alter table dentista add dt_nascimento datetime');
  ExecutaQuery(1881, DMAT.V_CONTRATANTE.SQL);
  ExecutaQuery(1882,'update preferencia set versao = ''3.1.3.5'''); // 19/08/19  maximize contratnate, campo origem contato
  ExecutaQuery(1883,'alter table contratante add cdOrigemContato smallint');
  ExecutaQuery(1884,'update preferencia set versao = ''3.1.3.6'''); // 25/08/19  correção botão simulação,duplo clique celular
  ExecutaQuery(1885, DMAT.V_CONTRATANTE.SQL);
  ExecutaQuery(1886,'alter table usuario add lg_naoEnviarSib bit default(0)');
  ExecutaQuery(1887,'update usuario  set lg_naoEnviarSib = 0');
  ExecutaQuery(1888,dmat.QuerySpArqSusep.sql);
  ExecutaQuery(1889,'alter table dentista add dtNascimento date');
  ExecutaQuery(1890,'update preferencia set versao = ''3.1.3.7'''); // 01/09/2019 colorir grid item com glosa, pagamento dentsita
  ExecutaQuery(1891,'create table bloqueio_grupoContrat ' +
                    ' (cd_grupo_contrat int not null, ' +
                    ' dt_ini_bloqueio datetime not null, ' +
                    ' dt_fim_gloqueio datetime null, ' +
                    ' cd_usuario_inclusao int not null, ' +
                    ' cd_usuario_desbloqueio int, ' +
                    ' constraint pkBloqueioGrupo primary key (cd_grupo_contrat,dt_ini_bloqueio), ' +
                    ' constraint fkGrupoXBloqueio foreign key (cd_Grupo_contrat) references grupo_contratante (codigo), ' +
                    ' constraint fkUsuarioXBloqueioGrupo foreign key (cd_usuario_inclusao) references operador (codigo), ' +
                    ' constraint fkUsuarioXBloqueioGrupo1 foreign key (cd_usuario_desbloqueio) references operador (codigo)) ');
   ExecutaQuery(1892,dmat.tr_u_bloqueio_Grupocontratante.SQL);
   ExecutaQuery(1893,'update preferencia set versao = ''3.1.3.8'''); // correção bug bloqueio contratante
   ExecutaQuery(1894,'update preferencia set versao = ''3.1.3.9'''); // correção layout itau, tela de leads conf mail tacio e outros..
   ExecutaQuery(1895,'update preferencia set versao = ''3.1.4.0'''); // grafico vendas por representante, correçaõ erro tela leads
   ExecutaQuery(1896,'update preferencia set versao = ''3.1.4.1'''); // apagar telefone contratante
   ExecutaQuery(1897,'update preferencia set versao = ''3.1.4.2'''); //
   ExecutaQuery(1898,'insert into parametro values (''CMTL'',''3'',''Indica que a mensagem de Lead ja cadastrado com numero de telefone sera mostrada apenas para registros cadastrados nos ultimos x meses'',''U'',''SISTEMA'',getdate())');
   ExecutaQuery(1899,'update preferencia set versao = ''3.1.4.3'''); //bug grafico novo,rolagem memo cntatos, rodape relatorio(somatorio)
   ExecutaQuery(1900,'update preferencia set versao = ''3.1.4.4'''); //bug grafico novo,rolagem memo cntatos, rodape relatorio(somatorio)
   ExecutaQuery(1901,'update preferencia set versao = ''3.1.4.5'''); //bug grafico novo,rolagem memo cntatos, rodape relatorio(somatorio)
   ExecutaQuery(1902,'update preferencia set versao = ''3.1.4.6'''); //correção layout cef 26/11/19
   ExecutaQuery(1903,'alter table contratante add identificacao_bancaria varchar(25)');
   ExecutaQuery(1904,'update preferencia set versao = ''3.1.4.7'''); //bug layout cef 03/1219
   ExecutaQuery(1905,'update preferencia set versao = ''3.1.4.8'''); //16/12/19 busca cep, ero região corrigido definitivamente




   ExecutaQuery(1906,'create table enderecoTemp ' +
                     ' (cep int not null primary key, ' +
                     ' endereco varchar(100) not null, ' +
                     ' bairro varchar(70) not null, ' +
                     ' uf varchar(2) not null, ' +
                     ' cidade varchar(80) not null ,' +
                     ' dsErro varchar(200) not null)');
   ExecutaQuery(1907,'insert into parametro values(''EBCEP'',''http://mbapp:81/buscacep.aspx?cep='',''Endereço busca Cep'',''U'',''SISTEMA'',GETDATE())');
   ExecutaQuery(1908,'update preferencia set versao = ''3.1.4.9'''); //123/01/20 grafico vr dentista x vr protetico x manutencao
   ExecutaQuery(1909,dmat.sp_graficoGastosProtDentManutParteManutAU.SQL);
   ExecutaQuery(1910,dmat.sp_graficoGastosProtDentManutParteManutPJ.SQL);
   ExecutaQuery(1911,dmat.sp_graficoGastosProtDentManut.SQL);
   ExecutaQuery(1912,'update preferencia set versao = ''3.1.5.0'''); //31/01/2020 correção bug grafico vr dentista x vr protetico x manutencao
   ExecutaQuery(1913,dmat.sp_graficoGastosProtDentManut.SQL);
   ExecutaQuery(1914,'update preferencia set versao = ''3.1.5.1'''); //17/02/20 campo novo contratante medicar
   ExecutaQuery(1915,'ALTER TABLE Contratante ADD lg_gerarVrMedicarTelefone  bit NOT NULL DEFAULT(0)');
   ExecutaQuery(1916,'ALTER TABLE Contratante ADD lg_comunicadoMedicarEnviado  bit NOT NULL DEFAULT(0)');
   ExecutaQuery(1917,'insert into parametro values(''VRMCAR'',''10'',''Valor Medicar'',''U'',''SISTEMA'',GETDATE())'); // tacio criou o campo, e coloquei 10 reais mas vai dar erro na hora que atualizar a versao e mantera o valor dele

   ExecutaQuery(1918,'alter table contratante add lg_enviarBoletoPorWhats bit not null default(0)'); // 19/02/20
   ExecutaQuery(1919,'alter table contratante add lg_enviarBoletoPorCorreios bit not null default(1)');// 19/02/20
   ExecutaQuery(1920,'ALTER TABLE FATURAMENTO ADD nnBoleto_original INT');
   ExecutaQuery(1921,dmat.tr_i_faturamento.sql);
   ExecutaQuery(1922,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,2,''Contratos/contratante'',''AbaOutrasInfo'',''Aba Outras Informações'' from menu_disponivel');
   ExecutaQuery(1923,'update preferencia set versao = ''3.1.5.1'''); //17/02/20 campo novo contratante medicar
   ExecutaQuery(1924,'update contratante set lg_enviarBoletoPorCorreios = 1 where cgc_cpf is not null');// 19/02/20
   ExecutaQuery(1925,'update preferencia set versao = ''3.1.5.2'''); //26/02/20 correçaõ bug
   ExecutaQuery(1926,'update preferencia set versao = ''3.1.5.3'''); //26/02/20 correçaõ bug
   ExecutaQuery(1927,'update preferencia set versao = ''3.1.5.4'''); //08/03/20 correçaõ bug baixa titulos e inclusao medicar relatorio
   ExecutaQuery(1928,dmat.sp_relMensalidadeContrat.sql);
   ExecutaQuery(1929,'update preferencia set versao = ''3.1.5.5'''); //08/03/20 correçaõ bug
   ExecutaQuery(1930,'update preferencia set versao = ''3.1.5.6'''); //20/05/20 correçaõ bug tela de serviço primeira vez
   ExecutaQuery(1931,'update preferencia set versao = ''3.1.5.7'''); //02/06/20 melhorias controle envio de boleto por
   ExecutaQuery(1932,'update parametro set vl_parametro = replace(vl_parametro,'':81'','''') where vl_parametro like ''%:81%''');
   ExecutaQuery(1933,'update preferencia set versao = ''3.1.5.8'''); //02/06/20 melhorias controle envio de boleto por
   ExecutaQuery(1934,'update preferencia set versao = ''3.1.5.9'''); //28/06/2020 correção bug inss, nao estava respeitanod parametro tabela preferrencia
   ExecutaQuery(1935,'update preferencia set versao = ''3.1.6.0'''); //11/07/2020 desconto progressivo por idade
   ExecutaQuery(1936,'create table descontoXIdade( ' +
                     ' indice   int not null, ' +
                     ' cd_plano int not null, ' +
                     ' idade_min  int not null, ' +
                     ' idade_max int not null, ' +
                     ' dt_inicio date not null, ' +
                     ' valor_desconto smallmoney not null, ' +
                     ' dt_fim    date  null, ' +
                     ' dt_cadastro    datetime  not null, ' +
                     ' nmLogin         varchar(20)  not null, ' +                                          
                     ' constraint pk_descontoXIdade primary key  (indice), ' +
                     ' constraint fk_descontoXIdade_plano foreign key (cd_plano) references plano (codigo)) ');


   ExecutaQuery(1937,dmat.tr_i_u_descontoXIdade.sql);
   ExecutaQuery(1938,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1939,'update preferencia set versao = ''3.1.6.1'''); //15/07/2020 desconto progressivo por idade -correção
   ExecutaQuery(1940,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1941,'update preferencia set versao = ''3.1.6.2'''); //credenciador 19/07
   ExecutaQuery(1942,'create table credenciador (cd_credenciador int not null primary key, nm_credenciador varchar(50) not null)');
   ExecutaQuery(1943,'alter table dentista add cd_credenciador int');
   ExecutaQuery(1944,'alter table dentista add constraint fkDentistaCredenciador foreign key (cd_credenciador) references credenciador (cd_credenciador)');
   ExecutaQuery(1945,'update preferencia set versao = ''3.1.6.3'''); //imposto 11% errado na soma 22/07
   ExecutaQuery(1946,'update preferencia set versao = ''3.1.6.4'''); //correcao bug tela desconto progressivo
   ExecutaQuery(1947,'update preferencia set versao = ''3.1.6.5'''); //tiss inibir serviços.

   ExecutaQuery(1948,dmat.sp_monitoramentoANS.SQL);
   ExecutaQuery(1949,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1950,'update preferencia set versao = ''3.1.6.6'''); //10/08/2020 CORREÇÃO BUG DESCONTO
   ExecutaQuery(1951,'update preferencia set versao = ''3.1.6.7'''); // 22/08 cartao recorrencia inicio 17/08
   ExecutaQuery(1952,'alter table tipocobranca add cartaoRecorrencia bit');
   ExecutaQuery(1953,'update tipoCobranca set cartaoRecorrencia = 0');
   ExecutaQuery(1954,'insert into parametro values(''VRCR'',''0'',''Valor de comissão p/ vendedor por cada contrato com Cartão Recorrente'',''U'',''SISTEMA'',GETDATE())');
   ExecutaQuery(1955,'alter table contratante add PagtoContratoAVista bit');
   ExecutaQuery(1956,'update Contratante set PagtoContratoAVista = 0 where cgc_cpf is not null');
   ExecutaQuery(1957,dmat.Tr_i_incluiMensalidade.sql);
   ExecutaQuery(1958,'update preferencia set versao = ''3.1.6.8'''); // 30/08 
   ExecutaQuery(1959,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1960,'update preferencia set versao = ''3.1.6.9'''); // 31/08 correção bug.
   ExecutaQuery(1961,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1962,dmat.Tr_i_incluiMensalidade.sql);
   ExecutaQuery(1963,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1964,'update preferencia set versao = ''3.1.7.0'''); // 01/09 correção bug.
   ExecutaQuery(1965,dmat.Tr_i_incluiMensalidade.sql);
   ExecutaQuery(1966,'update preferencia set versao = ''3.1.7.1'''); // 14/09 campo novo contratante
   ExecutaQuery(1967,'alter table contratante add lg_inadimplente bit');
   ExecutaQuery(1968,'update contratante set lg_inadimplente = 0 where cgc_cpf is not null');
   ExecutaQuery(1969,dmat.V_CONTRATANTE.sql);
   ExecutaQuery(1970,dmat.sp_relContratInadimplente.sql);
   ExecutaQuery(1971,dmat.Tr_i_incluiMensalidade.sql);
   ExecutaQuery(1972,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,154,20,''Financeiro / Relatórios'',''Contratantescommaisde4Ttulosemaberto1'',''Contratante com mais de 4 Títulos em aberto''  from menu_disponivel');
   ExecutaQuery(1973,'update preferencia set versao = ''3.1.7.2'''); // 19/09 permissao menu
   ExecutaQuery(1974,dmat.SpCalculaDesconto.SQL);
   ExecutaQuery(1975,'update preferencia set versao = ''3.1.7.3'''); // 27/09 ajuste na idade maxima na procedure de calculo de desconto
   ExecutaQuery(1976,'update preferencia set versao = ''3.1.7.4'''); // 28/09 versao do tacio, alterado forms contratante,grafVendas,QRManutencaoNovo,RelManutencao
   ExecutaQuery(1977,'update preferencia set versao = ''3.1.7.5''');//tacio
   ExecutaQuery(1978,'update preferencia set versao = ''3.1.7.6''');// tacio
   ExecutaQuery(1979,'update preferencia set versao = ''3.1.7.7''');//restricação codigo 110
//   ExecutaQuery(1979,'select IDENTITY(int,45,1) as id, 110 cd1, 1 qt, codigo into ##temp from Servicos  insert into ServIncompativeisOdonto select * from #temp');
 //  ExecutaQuery(1980,'update preferencia set versao = ''3.1.7.7''');//restricação codigo 110
   ExecutaQuery(1980,'select IDENTITY(int,45,1) as id, 110 cd1, 1 qt, codigo into ##temp from Servicos  insert into ServIncompativeisOdonto select * from #temp');
   ExecutaQuery(1981,'update preferencia set versao = ''3.1.7.8''');//
   ExecutaQuery(1982,dmat.tr_i_servicos.SQL); // restricao servico 110
   ExecutaQuery(1983,'alter table plano add lg_orc_incorporado_mens bit');
   ExecutaQuery(1984,'update plano set lg_orc_incorporado_mens = 0');
   ExecutaQuery(1985,'update plano set lg_orc_incorporado_mens = 1 where codigo in(965,964,963)');
   ExecutaQuery(1986,dmat.sp_graficoGastosProtDentManut.SQL);
   ExecutaQuery(1987,dmat.SpArqSusep.SQL);
   ExecutaQuery(1988,'alter table Itens_PagDentista add recurso bit null default 0');
   ExecutaQuery(1989,dmat.tr_i_Iitens_orcamento.SQL);
   ExecutaQuery(1990,'update preferencia set versao = ''3.1.8.0''');//
   ExecutaQuery(1991,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,210,51,''ANS'',''EnviodeDadosANS1'',''Envio de dados ANS(Monitoramento)''  from menu_disponivel');
	ExecutaQuery(1992,'update preferencia set versao = ''3.1.8.1''');//
   ExecutaQuery(1993,'insert into parametro values(''LNKMNT'',''http://mbapp/Monitoramento/MonitoramentoANS.aspx'',''Envio de dados ANS(Monitoramento)'',''U'',''SISTEMA'',GETDATE())');
   ExecutaQuery(1994,'insert into parametro values(''QTVCTO'',''180'',''Qtde. de Dias padrão que o sistema considera uma guia de tratamento vencida'',''U'',''SISTEMA'',getdate())');//tacio
   ExecutaQuery(1995,'alter table dentista add DiasVenctoOrc int null');//tacio
   ExecutaQuery(1996,'alter table orcamento add data_validade datetime');//tacio
   ExecutaQuery(1997,'alter table contratante add obs_desc_boleto varchar(60)');//TACIO
   ExecutaQuery(1998,'alter table contratante add Nome_respEmpresa varchar(45)');//tacio
   ExecutaQuery(1999,'alter table contratante add CPF_respEmpresa varchar(11)');//tacio
   ExecutaQuery(2000,'update preferencia set versao = ''3.1.8.2''');// tacio
   ExecutaQuery(2001,'update preferencia set versao = ''3.1.8.3''');// tacio
   ExecutaQuery(2002,'alter table servicos add qtVezesTISS smallint');
   ExecutaQuery(2003,'update servicos set qtVezesTISS = 1');
   ExecutaQuery(2004,dmat.sp_relOrc_sip.SQL);
   ExecutaQuery(2005,dmat.sp_monitoramentoANS.SQL);
   ExecutaQuery(2006,'update preferencia set versao = ''3.1.8.4''');

  ExecutaQuery(2007,'CREATE TABLE [dbo].[TabPagProteticoXProcedimento]( ' +
	' [indice] [int] NOT NULL, ' +
	' [cd_protetico] [int] NOT NULL, ' +
	' [cd_procedimento] [int] NOT NULL, ' +
	' [vrUS] [decimal](8, 6) NOT NULL, ' +
	' [dtIni] [datetime] NOT NULL, ' +
	' [dtFim] [datetime] NULL, ' +
	' [obs] [varchar](100) NULL, ' +
	' CONSTRAINT [PK_TabPagProteticoXProcedimento] PRIMARY KEY CLUSTERED ' +
	' ( ' +
	' [indice] ASC ' +
	' ) ' +
	' ) ');

  ExecutaQuery(2008,'ALTER TABLE [dbo].[TabPagProteticoXProcedimento]  WITH CHECK ADD  CONSTRAINT [FK_TabPagProteticoXProc_Protetico] FOREIGN KEY([cd_protetico]) REFERENCES [dbo].[protetico] ([Codigo])');
  ExecutaQuery(2009,'ALTER TABLE [dbo].[TabPagProteticoXProcedimento]  WITH CHECK ADD  CONSTRAINT [FK_TabPagProteticoXProc_Proc] FOREIGN KEY([cd_procedimento]) REFERENCES [dbo].[Servicos] ([Codigo])');
  ExecutaQuery(2010,'alter table TabelaQtUS add tipoTabela char(1) default(''D'')');
  ExecutaQuery(2011,'update TabelaQtUS set tipoTabela = ''D''');
  ExecutaQuery(2012,'insert into parametro values (''UFNVPP'',''S'',''Utiliza Formula Nova Valorização Pagto protético?'',''I'',''INTERNO'',GETDATE())');
  ExecutaQuery(2013,'alter table protetico add cd_tabelaQTUS int');
  ExecutaQuery(2014,'alter table protetico add constraint fkProteticoTabUS foreign key (cd_tabelaQTUS) references TabelaQtUS (cd_tabela)');
  ExecutaQuery(2015,'select getdate()');
  ExecutaQuery(2016,'select getdate()');
  ExecutaQuery(2017,'update preferencia set versao = ''3.1.8.5''');
  ExecutaQuery(2018,'select getdate()');
  ExecutaQuery(2019,'select getdate()');
  ExecutaQuery(2020,'select getdate()');
  ExecutaQuery(2021,'select getdate()');
  ExecutaQuery(2022,'select getdate()');
  ExecutaQuery(2023,'alter table Itens_PagProtetico add indiceTabPagProtetico  int');
  ExecutaQuery(2024,DmAt.tr_i_Iitens_orcamento.sql);
  ExecutaQuery(2025,'alter table Itens_pagprotetico add constraint fkItensPagProt_tabProtetic foreign key (indiceTabPagProtetico) references TabPagProteticoXProcedimento (indice)');
  ExecutaQuery(2026,'update preferencia set versao = ''3.1.8.6''');

  ExecutaQuery(2027,'CREATE TABLE RelatorioDinamico ('+
                    'Id int identity(1,1) PRIMARY KEY,'+
                    'Nome varchar(40) not null,'+
                    'Obs varchar(120) null,'+
                    'Comando text not null);'); //tacio
  ExecutaQuery(2028,'CREATE TABLE RelatorioDinamicoPermissao('+
                    'Id_operador int not null,'+
                    'Id_relatorio int not null);'); //tacio
  ExecutaQuery(2029,'alter table boletosSicoob add updated datetime default getdate();'); //tacio
  ExecutaQuery(2030,'alter table boletosSicoob add Id int identity(1,1);');//tacio
  ExecutaQuery(2031,'CREATE TRIGGER TR_U_BOLETOSSICOOB ON BOLETOSSICOOB FOR UPDATE AS   if not update(updated)      UPDATE boletosSicoob SET updated = getdate() FROM INSERTED I WHERE I.id = boletossicoob.id;');//tacio
  ExecutaQuery(2032,'alter table contratante drop column IdRecorrencia ');//tacio
  ExecutaQuery(2033,'alter table contratante drop column NumPedidoCielo ');//tacio
  ExecutaQuery(2034,dmat.sp_recebimento_mes.sql);//tacio
  ExecutaQuery(2035,'insert into parametro( cd_parametro , vl_parametro , ds_parametro , tipo , modulo  ) values(''TCSORC'',''0.026'',''Tarifa de Cartao de Credito para calcular saldo em orcamento'',''U'',''SISTEMA'')');
  ExecutaQuery(2036,'update preferencia set versao = ''3.1.8.7''');//tacio
  ExecutaQuery(2037,'update preferencia set versao = ''3.1.8.8''');//correção bug autorização de orçamento(rotina de extração, correção de tratativa de permiss~eos de alteraçã ode status do orçamento

  ExecutaQuery(2038,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,252,2,''Utilitário'',''RelatrioRpido1'',''Relatório Rápido''  from menu_disponivel');//tacio
  ExecutaQuery(2039,dmat.tr_u_atualizaValidade.sql);//tacio: atualiza data de validade do orçamento diretamente pelo banco e não mais pela aplicacao
  ExecutaQuery(2040,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,121,30,''Vendas/Relatórios'',''VidasConfirmadas1'',''Vidas Confirmadas''  from menu_disponivel');//tacio
  ExecutaQuery(2041,'insert into parametro (cd_parametro,  vl_parametro , ds_parametro , tipo , modulo) values(''PGORVD'',''N'',''Permite ao sistema pagar guias vencidas'',''U'',''SISTEMA'');');
  ExecutaQuery(2042,'update preferencia set versao = ''3.1.8.9''');//tacio
  ExecutaQuery(2043,'alter table ServIncompativeisOdonto add face varchar(4)');
  ExecutaQuery(2044,'update preferencia set versao = ''3.1.9.0''');
  ExecutaQuery(2045,dmat.Tr_i_u_validacoesOdonto.SQL);
  ExecutaQuery(2046,dmat.SpRelClinicaManutencaoPJ.SQL);
  ExecutaQuery(2047,dmat.sp_graficoGastosProtDentManut.SQL);
  ExecutaQuery(2048,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,90,11,''Dentista'','''',''Permite pagar orçamento após vencido''  from menu_disponivel');
  ExecutaQuery(2049,'create table eventosPagDentista(cd_evento int identity(1,1) primary key, nr_orcamento int , ds_evento varchar(300) not null, cd_operador int not null, dt_evento datetime, ' +
                    ' constraint fk_eventPagXOrcamento foreign key (nr_orcamento) references orcamento (numero))');
  ExecutaQuery(2050,'ALTER TABLE protetico ADD CONSTRAINT df_desconto  DEFAULT 0 for desconto;');//tacio
  ExecutaQuery(2051,'alter table dentista add autorizado_panoramica bit default(0) not null;');//tacio
  ExecutaQuery(2052,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,30,3,''Contratos/contratante'',''AbaRecorrencia'',''Aba Recorrencia''  from menu_disponivel');
  ExecutaQuery(2053,'update preferencia set versao = ''3.1.9.1''');//tacio
  ExecutaQuery(2054,dmat.sp_relComissaoUsuario.SQL);
  ExecutaQuery(2055,'update preferencia set versao = ''3.1.9.2''');
  ExecutaQuery(2056,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,154,30,''Financeiro / Relatórios'',''RelatriodeTtulosaVencer1'',''Relatório de Titulos a vencer''  from menu_disponivel');
  ExecutaQuery(2057,dmat.sp_graficoGastosProtDentManut.sql);
  ExecutaQuery(2058,dmat.sp_graficoGastosProtDentManut.SQL);  //tacio
  ExecutaQuery(2059,dmat.sp_graficoGastosProtDentManutParteManutAU.SQL);  //tacio
  ExecutaQuery(2060,dmat.sp_graficoGastosProtDentManutParteManutPJ.SQL);  //tacio
  ExecutaQuery(2061,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,62,3,''Orçamentos'','''',''Permite desfazer cancelamento em orçamentos''  from menu_disponivel');  //tacio
  ExecutaQuery(2062,'update recorrencia set bandeiraCartao = ''0'' where bandeiracartao is null');
  ExecutaQuery(2063,'alter table recorrencia alter column bandeiraCartao varchar(25) not null');
  ExecutaQuery(2064,dmat.sp_relOrc_sip.sql);//enio
  ExecutaQuery(2065,'update preferencia set versao = ''3.1.9.3''');
  ExecutaQuery(2066,dmat.sp_relOrc_sip.sql);
  ExecutaQuery(2067,'update preferencia set versao = ''3.1.9.4''');
  ExecutaQuery(2068, DmAt.v_celulares.SQL);  //tacio
  ExecutaQuery(2069,'insert into menu_disponivel (cd_menu,seq_menu,SubSeq_menu,menu,nm_menu,ds_menu) select max(cd_menu) + 1 ,154,35,''Financeiro / Relatórios'',''ListagemdeCelularesxTitulosemAberto1'',''Listagem de Celulares x Tit a Receber''  from menu_disponivel');  //tacio
  ExecutaQuery(2070,'insert into parametro( cd_parametro , vl_parametro , ds_parametro , tipo , modulo ) values(''TCBOL'',''10'',''Identifica o tipo de cobranca para baixas em boleto'',''U'',''SISTEMA'')');  //tacio
  ExecutaQuery(2071, DmAt.spBaixaCnab.SQL);  //tacio   alterado baixa de boletos: antes o sistema só mudava o tipo de pagamento para boleto, agora ele muda o tipo de cobrança baseado no parametro TCBOL
  ExecutaQuery(2072,'update preferencia set versao = ''3.1.9.5''');//tacio
  ExecutaQuery(2073,'update preferencia set versao = ''3.1.9.6''');//tacio
  ExecutaQuery(2074,'update preferencia set versao = ''3.1.9.7''');
  
   if VUltScript <> dm.GetParam('ULTSCR') then
     ShowMessage('Atualização do banco de dados efetuada com sucesso !')
  else
     ShowMessage('Nenhuma instrução foi executada !');
end; //menu_disponivel




end.





