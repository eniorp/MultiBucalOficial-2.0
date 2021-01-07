unit ExportaDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons,FileCtrl, ComCtrls,enio, ExtCtrls, Grids,
  DBGrids,biblio;

type
  TFmExportarDados = class(TForm)
    DatabaseMt: TDatabase;
    QueryUsuarios: TQuery;
    QueryCobranca: TQuery;
    QueryContatos: TQuery;
    QueryContrat: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    ButtonContrat: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    QueryHistorico: TQuery;
    DsHistorico: TDataSource;
    Timer1: TTimer;
    BitBtn4: TBitBtn;
    QueryOrcEmTratMensAbert: TQuery;
    EditCaminho: TEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    CheckBoxContrat: TCheckBox;
    CheckBoxUsu: TCheckBox;
    CheckBoxCobr: TCheckBox;
    CheckBoxCont: TCheckBox;
    CheckBoxOrcAbertMenAtra: TCheckBox;
    CheckBoxAbertVenctoCompl: TCheckBox;
    CheckBoxBaixadosPorStatus: TCheckBox;
    CheckBoxAbertVenctoComplOrc: TCheckBox;
    QueryAbertoVenctoCompl: TQuery;
    QueryBaixadosPStatusOrc: TQuery;
    CheckBoxMensAbSemUtlConv: TCheckBox;
    QueryMensAbSUtl: TQuery;
    CheckBoxOrcamentos: TCheckBox;
    QueryOrcamentos: TQuery;
    CheckBoxDentista: TCheckBox;
    QueryDentista: TQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonContratClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
     procedure PExportaDentista;
     procedure PGerarBats;
     procedure PExportaOrcamentos;
     procedure PExportaContrat;
     procedure PExportaUsuario;
     procedure PExportaCobranca;
     procedure PExportaContatos;
     procedure PExportaOrcAbertMenAtraso;
     procedure PExportaAbertVenctoCompl(Linha14:String);
     procedure PExportaBaixadosPorStatus;
     procedure PExportaMensAbSemUtlConvenio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmExportarDados: TFmExportarDados;

implementation

uses udm;

{$R *.DFM}

procedure TFmExportarDados.BitBtn1Click(Sender: TObject);
Var Vindice : String[10];
begin
   BitBtn1.enabled := False;
   dm.ExecutaComando('insert into historico_exporDados (dt_inicio,computador)values (getdate(),''' + GetIp + ''')');
   Vindice := dm.ExecutaComando('select max(indice) m from historico_exporDados','m');
   FmExportarDados.Caption := ' Versão ' + GetBuildInfo + '- Exportação de Dados - Início: ' + TimeToStr(time);

   if CheckBoxContrat.checked then
     PExportaContrat;
   if CheckBoxUsu.checked then
     PExportaUsuario;
   if CheckBoxCobr.checked then
      PExportaCobranca;
   if CheckBoxCont.checked then
      PExportaContatos;
   if CheckBoxOrcAbertMenAtra.checked then
      PExportaOrcAbertMenAtraso;
   if CheckBoxAbertVenctoCompl.checked then
      PExportaAbertVenctoCompl(' ');
   if CheckBoxMensAbSemUtlConv.checked then
      PExportaMensAbSemUtlConvenio;
   if CheckBoxBaixadosPorStatus.checked then
      PExportaBaixadosPorStatus;
   if CheckBoxAbertVenctoComplOrc.checked then
      PExportaAbertVenctoCompl(' and Tipo_Documento = 2 '); // orcamentos..

   if CheckBoxOrcamentos.checked then
      PExportaOrcamentos;
   if CheckBoxDentista.checked then
      PExportaDentista;

   FmExportarDados.Caption := FmExportarDados.Caption + ' Fim: ' + TimeToStr(time);
   Label1.Caption := 'Exportação efetuada com sucesso';
   ProgressBar1.Position := 0;
   dm.ExecutaComando('update historico_exporDados set dt_fim = getdate() where indice = ' + Vindice);
   QueryHistorico.Close;
   QueryHistorico.Open;
   BitBtn4.enabled := true;
   BitBtn1.enabled := true;
end;
procedure TFmExportarDados.PGerarBats;
Var Arq : TextFile;
    Path : String;
begin
   Path := ExtractFilePath(EditCaminho.text);
   Assignfile(Arq,Path + 'envia.bat');
   ReWrite(Arq);
   Writeln(Arq,'date/t >> '  + Path + 'logEnvia.txt');
   Writeln(Arq,'time/t >> ' + Path + 'logEnvia.txt');
   Writeln(Arq,'ping ftp.dsoft.com.br >> ' + Path + 'logEnvia.txt');
   Writeln(Arq,ExtractFileDrive(Path));
   Writeln(Arq,'cd' + copy(Path,3,length(Path) - 3));

   Writeln(Arq,'del /F lista1.zip'  );
   Writeln(Arq,'del /F lista2.zip'  );
   Writeln(Arq,'del /F lista3.zip'  );
   Writeln(Arq,'del /F lista4.zip'  );
   Writeln(Arq,'del /F desbloq.zip' );
   Writeln(Arq,'del /F contrat.zip' );
   Writeln(Arq,'del /F usuario.zip' );
   Writeln(Arq,'del /F cobranca.zip');
   Writeln(Arq,'del /F contatos.zip');
   Writeln(Arq,'del /F orcam.zip'   );
   Writeln(Arq,'del /F dentis.zip'  );

   Writeln(Arq,'pkzip lista1.zip lista1.txt'    );
   Writeln(Arq,'pkzip lista2.zip lista2.txt'    );
   Writeln(Arq,'pkzip lista3.zip lista3.txt'    );
   Writeln(Arq,'pkzip lista4.zip lista4.txt'    );
   Writeln(Arq,'pkzip desbloq.zip desbloq.txt'  );
   Writeln(Arq,'pkzip contrat.zip contrat.txt'  );
   Writeln(Arq,'pkzip usuario.zip usuario.txt'  );
   Writeln(Arq,'pkzip cobranca.zip cobranca.txt');
   Writeln(Arq,'pkzip contatos.zip contatos.txt');
   Writeln(Arq,'pkzip orcam.zip orcam.txt'      );
   Writeln(Arq,'pkzip dentis.zip dentis.txt'    );

   Writeln(Arq,'ftp -i -s:envia.ftp');
   Writeln(Arq,'date/t >> ' + Path + 'logEnvia.txt');
   Writeln(Arq,'time/t >> ' + Path + 'logEnvia.txt');
   Writeln(Arq,'ping ftp.dsoft.com.br >> ' + Path + 'logEnvia.txt');   
   if uppercase(paramStr(1)) <> 'AUTO' then
      Write(Arq,'pause'); // se for automatico não dá pause..
   CloseFile(Arq);

   Assignfile(Arq,Path + 'envia.ftp');
   ReWrite(Arq);
   Writeln(Arq,'open ftp.dsoft.com.br');

   Writeln(Arq,dm.GetParam('USUFTP')); // usuario ftp 'anonymous');
   Writeln(Arq,dm.GetParam('PWDFTP')); // senha ftp 'anonymous');
   Writeln(Arq,'bin');
   Writeln(Arq,'cd ' + dm.GetParam('DIRFTP')); //diretorio ftp
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'lista1.zip'  ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'lista2.zip'  ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'lista3.zip'  ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'lista4.zip'  ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'desbloq.zip' ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'contrat.zip' ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'usuario.zip' ));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'cobranca.zip'));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'contatos.zip'));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'orcam.zip'));
   Writeln(Arq,'put ' + ExtractFileName(EditCaminho.text + 'dentis.zip'));

   Write(Arq,'by');
   CloseFile(Arq);

end;

procedure TFmExportarDados.PExportaUsuario;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando usuários...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from usuario ','q'));
   QueryUsuarios.Close;
   QueryUsuarios.Open;

   AssignFile(VArquivo,EditCaminho.text + 'Usuario.txt');
   ReWrite(VArquivo);
   Vlinha := 'codigo_completo;nome;data_nascimento;cpf;data_inclusao;sexo;endereco_residencial;bairro_residencial;' +
             'cidade_residencial;estado_residencial;cep_residencial;endereco_comercial;bairro_comercial;cidade_comercial;' +
             'estado_comercial;cep_comercial;banco;agencia;conta;digito;data_exclusao;fone_residencial;celular;fone_comercial;email;contratante_titular;cd_contratante;numero_residencial;numero_comercial';

   Writeln(VArquivo,Vlinha);
   while not QueryUsuarios.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryUsuarios.FieldByName('codigo_completo'     ).AsString + ';' +
      QueryUsuarios.FieldByName('nome'                ).AsString + ';' +
      QueryUsuarios.FieldByName('data_nascimento'     ).AsString + ';' +
      QueryUsuarios.FieldByName('cpf'                 ).AsString + ';' +
      QueryUsuarios.FieldByName('data_inclusao'       ).AsString + ';' +
      QueryUsuarios.FieldByName('sexo'                ).AsString + ';' +
      QueryUsuarios.FieldByName('endereco_residencial').AsString + ';' +
      QueryUsuarios.FieldByName('bairro_residencial'  ).AsString + ';' +
      QueryUsuarios.FieldByName('cidade_residencial'  ).AsString + ';' +
      QueryUsuarios.FieldByName('estado_residencial'  ).AsString + ';' +
      QueryUsuarios.FieldByName('cep_residencial'     ).AsString + ';' +
      QueryUsuarios.FieldByName('endereco_comercial'  ).AsString + ';' +
      QueryUsuarios.FieldByName('bairro_comercial'    ).AsString + ';' +
      QueryUsuarios.FieldByName('cidade_comercial'    ).AsString + ';' +
      QueryUsuarios.FieldByName('estado_comercial'    ).AsString + ';' +
      QueryUsuarios.FieldByName('cep_comercial'       ).AsString + ';' +
      QueryUsuarios.FieldByName('banco'               ).AsString + ';' +
      QueryUsuarios.FieldByName('agencia'             ).AsString + ';' +
      QueryUsuarios.FieldByName('conta'               ).AsString + ';' +
      QueryUsuarios.FieldByName('digito'              ).AsString + ';' +      
      QueryUsuarios.FieldByName('data_exclusao'       ).AsString + ';' +
      QueryUsuarios.FieldByName('fone_residencial'    ).AsString + ';' +
      QueryUsuarios.FieldByName('celular'             ).AsString + ';' +
      QueryUsuarios.FieldByName('fone_comercial'      ).AsString + ';' +
      QueryUsuarios.FieldByName('email'               ).AsString + ';' +
      QueryUsuarios.FieldByName('contratante_titular' ).AsString + ';' +
      QueryUsuarios.FieldByName('cd_contratante'      ).AsString + ';' +
      QueryUsuarios.FieldByName('numero_residencial'  ).AsString + ';' +
      QueryUsuarios.FieldByName('numero_comercial'    ).AsString;
      Writeln(VArquivo,VLinha);
      QueryUsuarios.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryUsuarios.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryUsuarios.Close;
end;


procedure TFmExportarDados.PExportaCobranca;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando Cobrança...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from receber ','q'));
   QueryCobranca.Close;
   QueryCobranca.Open;

   AssignFile(VArquivo,EditCaminho.text + 'cobranca.txt');
   ReWrite(VArquivo);
   Vlinha := 'numero_titulo;codigo_contratante;data_vencimento;valor;Status;data_pagamento;valor_pago;juros;desconto;TipoDocumento;Cd_ocorrencia;ds_ocorrencia';


   Writeln(VArquivo,Vlinha);
   while not QueryCobranca.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryCobranca.FieldByName('numero_titulo'     ).AsString + ';' +
      QueryCobranca.FieldByName('codigo_contratante').AsString + ';' +
      QueryCobranca.FieldByName('data_vencimento'   ).AsString + ';' +
      QueryCobranca.FieldByName('valor'             ).AsString + ';' +
      QueryCobranca.FieldByName('Status'            ).AsString + ';' +
      QueryCobranca.FieldByName('data_pagamento'    ).AsString + ';' +
      QueryCobranca.FieldByName('valor_pago'        ).AsString + ';' +
      QueryCobranca.FieldByName('juros'             ).AsString + ';' +
      QueryCobranca.FieldByName('desconto'          ).AsString + ';' +
      QueryCobranca.FieldByName('TipoDocumento'     ).AsString + ';' +
      QueryCobranca.FieldByName('Cd_ocorrencia'     ).AsString + ';' +
      QueryCobranca.FieldByName('ds_ocorrencia'     ).AsString;
      Writeln(VArquivo,Vlinha);
      QueryCobranca.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryCobranca.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryCobranca.Close;
end;

procedure TFmExportarDados.PExportaContatos;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando Contatos...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from contato ','q'));
   QueryContatos.Close;
   QueryContatos.Open;

   AssignFile(VArquivo,EditCaminho.text + 'contatos.txt');
   ReWrite(VArquivo);
   Vlinha := 'data_contato;Hr_contato;codigo_contratante;data_agenda;hora_agenda;operador;Tipo_contato;tipo_ligacao;texto_contato';

   Writeln(VArquivo,Vlinha);
   while not QueryContatos.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryContatos.FieldByName('data_contato').AsString + ';' +
      QueryContatos.FieldByName('Hr_contato').AsString + ';' +
      QueryContatos.FieldByName('codigo_contratante').AsString + ';' +
      QueryContatos.FieldByName('data_agenda').AsString + ';' +
      QueryContatos.FieldByName('hora_agenda').AsString + ';' +
      QueryContatos.FieldByName('operador').AsString + ';' +
      QueryContatos.FieldByName('Tipo_contato').AsString + ';' +
      QueryContatos.FieldByName('tipo_ligacao').AsString + ';' +
      QueryContatos.FieldByName('texto_contato').AsString;
      Writeln(VArquivo, VLinha);
      QueryContatos.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryContatos.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryContatos.Close;
end;

procedure TFmExportarDados.FormShow(Sender: TObject);
begin
   FmExportarDados.Caption := ' Versão ' + GetBuildInfo +' Exportação de Dados.';
   try
      //DM.ExecutaComando('insert into parametro values (''USUFTP'',''anonymous'',''Usuário de FTP da falecom'',''U'',''SISTEMA'')');
      //DM.ExecutaComando('insert into parametro values (''PWDFTP'','''',''Senha do usuário de FTP da falecom'',''U'',''SISTEMA'')');
      //DM.ExecutaComando('insert into parametro values (''DIRFTP'',''multiodonto'',''Diretório na área de FTP da falecom'',''U'',''SISTEMA'')');
      //DM.ExecutaComando('insert into parametro values (''PATHEX'',''C:\MULTIODONTO'',''Caminho padrão onde gravar arquivos exportação'',''U'',''SISTEMA'')');
   except
   end;
   try
//      DM.ExecutaComando(' create table historico_exporDados (' +

//                        'indice int identity(1,1) primary key, ' +
//                        'dt_inicio datetime not null, ' +
//                        'dt_fim datetime, ' +
//                        'computador varchar(20) not null) ');
   except
   end;
   EditCaminho.text := dm.GetParam('PATHEX');
//   EditUsuario.text  := dm.GetParam('PATHEX') + 'usuario.txt';
//   EditCobranca.text := dm.GetParam('PATHEX') + 'cobranca.txt';
//   EditContatos.text := dm.GetParam('PATHEX') + 'contatos.txt';
//   Editcontrat.text  := dm.GetParam('PATHEX') + 'contratante.txt';
   QueryHistorico.Close;
   QueryHistorico.Open;
end;

procedure TFmExportarDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.executacomando('update parametro set vl_parametro = ''' + ExtractFilePath(EditCaminho.text) + ''' where cd_parametro = ''PATHEX''');
end;

procedure TFmExportarDados.ButtonContratClick(Sender: TObject);
   Var VCaminho : String;
begin
  if SelectDirectory('Selecione o diretório', '',VCaminho) then
     EditCaminho.text := VCaminho;

end;

procedure TFmExportarDados.PExportaContrat;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando contratantes...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from contratante ','q'));
   QueryContrat.Close;
   QueryContrat.Open;

   AssignFile(VArquivo,EditCaminho.text + 'contrat.txt');
   ReWrite(VArquivo);
   Vlinha := 'codigo;nome;inclusao;exclusao;endereco_residencial;bairro_residencial;cidade_residencial;estado_residencial;cep_residencial;endereco_comercial;bairro_comercial;cidade_comercial;estado_comercial;cep_comercial;';
   Vlinha := Vlinha + 'fone_residencial;celular;fone_comercial;email;DebAutomatico;numero_residencial;numero_comercial;rg;cgc_cpf;tipo_pessoa_FJ;banco;agencia;conta;digito;email;complemento_res;complemento_com';

   Writeln(VArquivo,Vlinha);
   while not QueryContrat.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryContrat.FieldByName('codigo'              ).AsString + ';' +
      QueryContrat.FieldByName('nome'                ).AsString + ';' +
      QueryContrat.FieldByName('inclusao'            ).AsString + ';' +
      QueryContrat.FieldByName('exclusao'            ).AsString + ';' +
      QueryContrat.FieldByName('endereco_residencial').AsString + ';' +
      QueryContrat.FieldByName('bairro_residencial'  ).AsString + ';' +
      QueryContrat.FieldByName('cidade_residencial'  ).AsString + ';' +
      QueryContrat.FieldByName('estado_residencial'  ).AsString + ';' +
      QueryContrat.FieldByName('cep_residencial'     ).AsString + ';' +
      QueryContrat.FieldByName('endereco_comercial'  ).AsString + ';' +
      QueryContrat.FieldByName('bairro_comercial'    ).AsString + ';' +
      QueryContrat.FieldByName('cidade_comercial'    ).AsString + ';' +
      QueryContrat.FieldByName('estado_comercial'    ).AsString + ';' +
      QueryContrat.FieldByName('cep_comercial'       ).AsString + ';' +
      QueryContrat.FieldByName('fone_residencial'    ).AsString + ';' +
      QueryContrat.FieldByName('celular'             ).AsString + ';' +
      QueryContrat.FieldByName('fone_comercial'      ).AsString + ';' +
      QueryContrat.FieldByName('email'               ).AsString + ';' +
      QueryContrat.FieldByName('DebAutomatico'       ).AsString + ';' +
      QueryContrat.FieldByName('numero_residencial'  ).AsString + ';' +
      QueryContrat.FieldByName('numero_comercial'    ).AsString + ';' +
      QueryContrat.FieldByName('rg'                  ).AsString + ';' +
      QueryContrat.FieldByName('cgc_cpf'             ).AsString + ';' +
      QueryContrat.FieldByName('tipo_pessoa_FJ'      ).AsString + ';' +
      QueryContrat.FieldByName('banco'               ).AsString + ';' +
      QueryContrat.FieldByName('agencia'             ).AsString + ';' +
      QueryContrat.FieldByName('conta'               ).AsString + ';' +
      QueryContrat.FieldByName('digito'              ).AsString + ';' +
      QueryContrat.FieldByName('email'               ).AsString + ';' +
      QueryContrat.FieldByName('complemento_res'     ).AsString + ';' +
      QueryContrat.FieldByName('complemento_com'     ).AsString;
      Writeln(VArquivo, VLinha);
      QueryContrat.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryContrat.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryContrat.Close;
end;

procedure TFmExportarDados.Timer1Timer(Sender: TObject);
begin
   Timer1.enabled := false;
   if uppercase(ParamStr(1)) = 'AUTO' then // significa que se executado com parâmetro auto ao ser executado gera automaticamente
   begin
      BitBtn1Click(Sender);
      PGerarBats;
      WinExec(PCHAR(ExtractFilePath(EditCaminho.text) + 'envia.bat'),SW_HIDE);
      close;
   end;
end;

procedure TFmExportarDados.BitBtn4Click(Sender: TObject);
begin
   BitBtn4.enabled := false;
   PGerarBats;
   WinExec(PCHAR(ExtractFilePath(EditCaminho.text) + 'envia.bat'),SW_NORMAL);
   BitBtn4.enabled := true;
end;

procedure TFmExportarDados.PExportaOrcAbertMenAtraso;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando orçamentos em atraso contratantes...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := 100;// não compensa dar o select count
   QueryOrcEmTratMensAbert.close;
   QueryOrcEmTratMensAbert.Open;

   AssignFile(VArquivo,EditCaminho.text + 'lista1.txt');
   ReWrite(VArquivo);
   Vlinha := 'cd_contratante;nome';

   Writeln(VArquivo,Vlinha);
   while not QueryOrcEmTratMensAbert.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryOrcEmTratMensAbert.FieldByName('cd_contratante').AsString + ';' +
      QueryOrcEmTratMensAbert.FieldByName('nome'                ).AsString;
      Writeln(VArquivo, VLinha);
      QueryOrcEmTratMensAbert.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryOrcEmTratMensAbert.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryOrcEmTratMensAbert.Close;
end;

procedure TFmExportarDados.PExportaAbertVenctoCompl(Linha14:String);
Var Vlinha : String;
    VArquivo : Textfile;

begin

   ProgressBar1.Position := 0;
   ProgressBar1.Max := 100;// não compensa dar o select count

   // A linha 14 indica se vai filtrar somente orçamentos, ver explicação no final dessa unit..email da fale com
   // com instruçãos bia/Daniela...

   QueryAbertoVenctoCompl.close;
   QueryAbertoVenctoCompl.sql[14] := Linha14;
   QueryAbertoVenctoCompl.Open;
   if linha14 = ' ' then
   begin
      AssignFile(VArquivo,EditCaminho.text + 'lista2.txt');
      Label1.Caption := 'Exportando aberto vencimento completo...aguarde';
   end
   else
   begin
      AssignFile(VArquivo,EditCaminho.text + 'lista4.txt');
      Label1.Caption := 'Exportando aberto vencimento completo(Orçamento)...aguarde';
   end;
   ReWrite(VArquivo);
   Vlinha := 'cd_contratante;Nome;Numero_Titulo;Descricao_Documento';
   Writeln(VArquivo,Vlinha);
   while not QueryAbertoVenctoCompl.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryAbertoVenctoCompl.FieldByName('cd_contratante'     ).AsString + ';' +
      QueryAbertoVenctoCompl.FieldByName('Nome'               ).AsString + ';' +
      QueryAbertoVenctoCompl.FieldByName('Numero_Titulo'      ).AsString + ';' +
      QueryAbertoVenctoCompl.FieldByName('Descricao_Documento').AsString;
      Writeln(VArquivo, VLinha);
      QueryAbertoVenctoCompl.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryAbertoVenctoCompl.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryAbertoVenctoCompl.Close;

end;

procedure TFmExportarDados.PExportaBaixadosPorStatus;
Var Vlinha : String;
    VArquivo : Textfile;

begin
   Label1.Caption := 'Exportando baixados por status orçamento...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := 100;// não compensa dar o select count
   QueryBaixadosPStatusOrc.close;
   QueryBaixadosPStatusOrc.sql[11] := dm.GetParam('DFALE');
   QueryBaixadosPStatusOrc.Open;

   AssignFile(VArquivo,EditCaminho.text + 'desbloq.txt');
   ReWrite(VArquivo);
   Vlinha := 'Numero_Titulo;cd_contratante;Nome';


   Writeln(VArquivo,Vlinha);
   while not QueryBaixadosPStatusOrc.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=

      QueryBaixadosPStatusOrc.FieldByName('Numero_Titulo' ).AsString + ';' +
      QueryBaixadosPStatusOrc.FieldByName('cd_contratante').AsString + ';' +
      QueryBaixadosPStatusOrc.FieldByName('nome'          ).AsString;

      Writeln(VArquivo, VLinha);
      QueryBaixadosPStatusOrc.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryBaixadosPStatusOrc.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryBaixadosPStatusOrc.Close;
end;


procedure TFmExportarDados.PExportaMensAbSemUtlConvenio;
Var Vlinha : String;
    VArquivo : Textfile;

begin
   Label1.Caption := 'Exportando baixados por status orçamento...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := 100;// não compensa dar o select count
   QueryMensAbSUtl.close;
   QueryMensAbSUtl.Open;

   AssignFile(VArquivo,EditCaminho.text + 'lista3.txt');
   ReWrite(VArquivo);
   Vlinha := 'cd_contratante;Nome';

   Writeln(VArquivo,Vlinha);
   while not QueryMensAbSUtl.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=

      QueryMensAbSUtl.FieldByName('cd_contratante').AsString + ';' +
      QueryMensAbSUtl.FieldByName('nome'          ).AsString;

      Writeln(VArquivo, VLinha);
      QueryMensAbSUtl.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryMensAbSUtl.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryMensAbSUtl.Close;
end;

procedure TFmExportarDados.PExportaOrcamentos;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando orçamentos...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from orcamento ','q'));
   QueryOrcamentos.Close;
   QueryOrcamentos.Open;

   AssignFile(VArquivo,EditCaminho.text + 'orcam.txt');
   ReWrite(VArquivo);
   Vlinha := 'usuario;nr_orcamento;dt_aprovacao;total_sinistro;cooparticipacao;cd_credenciado;tipoOrcamento;Numero_Parcelas;status_orcamento';


   Writeln(VArquivo,Vlinha);
   while not QueryOrcamentos.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryOrcamentos.FieldByName('usuario'        ).AsString + ';' +
      QueryOrcamentos.FieldByName('nr_orcamento'   ).AsString + ';' +
      QueryOrcamentos.FieldByName('dt_aprovacao'   ).AsString + ';' +
      QueryOrcamentos.FieldByName('total_sinistro' ).AsString + ';' +
      QueryOrcamentos.FieldByName('cooparticipacao').AsString + ';' +
      QueryOrcamentos.FieldByName('cd_credenciado' ).AsString + ';' +
      QueryOrcamentos.FieldByName('tipoOrcamento'  ).AsString + ';' +
      QueryOrcamentos.FieldByName('Numero_Parcelas').AsString + ';' +
      QueryOrcamentos.FieldByName('status_orcamento').AsString;
      Writeln(VArquivo, VLinha);
      QueryOrcamentos.next;
   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryOrcamentos.FieldCount - 2,';') );
   CloseFile(VArquivo);
   QueryOrcamentos.Close;
end;
procedure TFmExportarDados.PExportaDentista;
Var Vlinha : String;
    VArquivo : Textfile;
begin
   Label1.Caption := 'Exportando Dentistas...aguarde';
   ProgressBar1.Position := 0;
   ProgressBar1.Max := StrToInt(dm.ExecutaComando('select count(*) q from orcamento ','q'));
   QueryDentista.Close;
   QueryDentista.Open;

   AssignFile(VArquivo,EditCaminho.text + 'Dentis.txt');
   ReWrite(VArquivo);
   Vlinha := 'codigo;nome;fone1;fone1;celular;data_exclusao';

   Writeln(VArquivo,Vlinha);
   while not QueryDentista.eof do
   begin
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      VLinha :=
      QueryDentista.FieldByName('codigo'       ).AsString + ';' +
      QueryDentista.FieldByName('nome'         ).AsString + ';' +
      QueryDentista.FieldByName('fone1'        ).AsString + ';' +
      QueryDentista.FieldByName('fone1'        ).AsString + ';' +
      QueryDentista.FieldByName('celular'      ).AsString + ';' +
      QueryDentista.FieldByName('data_exclusao').AsString;

      Writeln(VArquivo, VLinha);
      QueryDentista.next;

   end;
   Write(VArquivo,'FIM;' + GetBuildInfo + StrAll(QueryDentista.FieldCount - 2,';') );
   CloseFile(VArquivo);

   QueryDentista.Close;

//colocar Numero_Parcelas no arq. de orçamentos, o valor falar pra pegar no arquivo de titulos ondo o código do
//titulo seria o número do orçamento 1324 + 01 + 02 + 03
//colocar o.codigo e o.descricao no arquivo de titulos da falecom, fazer left join

//Select top 10 o.codigo,o.descricao, Status_Ocorrencia,* from receber r, Ocorrencias_Retorno o where year(data_emissao) = 2005 and month(data_emissao) = 7 and Status_Ocorrencia is not null
//and o.id_ocorrencia = r.status_ocorrencia and o.codigo <> '00'

end;

end.

