unit ConfANS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables,Enio, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids,biblio,
  Mask;

type
  TFmConfANS = class(TForm)
    QueryAnsConf: TQuery;
    QueryGeral: TQuery;
    OpenDialog1: TOpenDialog;
    PanelTop: TPanel;
    Label1: TLabel;
    EditQtdeANS: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    Panel1: TPanel;
    Pb: TProgressBar;
    PageControl1: TPageControl;
    TabSheetTodos: TTabSheet;
    TabSheetDivergentes: TTabSheet;
    TabSheetRegNaANS: TTabSheet;
    TabSheetRegSoMulti: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel2: TPanel;
    DsANS_CONF: TDataSource;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button4: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Button6: TButton;
    DsRegDiverg: TDataSource;
    QueryRegDiverg: TQuery;
    QueryANS_CONF: TQuery;
    DBGrid4: TDBGrid;
    DBGrid1: TDBGrid;
    QueryNaoEncontr: TQuery;
    DsNaoEncontr: TDataSource;
    Memo1: TMemo;
    Memo2: TMemo;
    DBGrid5: TDBGrid;
    DsRegSoMulti: TDataSource;
    QueryRegSoMulti: TQuery;
    TabSheetExANSXAtivo: TTabSheet;
    Panel6: TPanel;
    Memo3: TMemo;
    Button3: TButton;
    Memo4: TMemo;
    Memo5: TMemo;
    QueryExANSXAtivo: TQuery;
    DsExANSXAtivo: TDataSource;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    EditQtdeExANSXAtivo: TEdit;
    Panel8: TPanel;
    EditQtdeDiverg: TEdit;
    Label5: TLabel;
    Panel9: TPanel;
    EditQtdeSoMulti: TEdit;
    Label6: TLabel;
    Panel10: TPanel;
    Label9: TLabel;
    EditQtdeNEncontr: TEdit;
    Panel11: TPanel;
    Label4: TLabel;
    EditTodos: TEdit;
    Panel12: TPanel;
    Button2: TButton;
    Button1: TButton;
    StoredProcUpdateNull: TStoredProc;
    QueryUpdateAlter: TQuery;
    QueryUpdSoMult: TQuery;
    QueryUpdExANSXBase: TQuery;
    TbsExBaseXNaoANS: TTabSheet;
    Memo6: TMemo;
    DBGrid6: TDBGrid;
    Panel13: TPanel;
    Button5: TButton;
    Panel14: TPanel;
    Label7: TLabel;
    EditQtdeBaseXNAns: TEdit;
    DsExBAseXNaoANS: TDataSource;
    QueryExBAseXNaoANS: TQuery;
    QueryUpdExBaseXNANS: TQuery;
    CheckBox1: TCheckBox;
    QueryDivergANSXBase: TQuery;
    sp_regAnsXBase: TStoredProc;
    LabelStatus: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    EditQtANS: TEdit;
    EditQtBase: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    EditArq: TEdit;
    Label8: TLabel;
    MaskEditDtBaseANS: TMaskEdit;
    Button7: TButton;
    Label15: TLabel;
    EditDiferenca: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure PanelTopDblClick(Sender: TObject);
    procedure Panel12DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
     Function FContLinhasArq: Integer;
     procedure AbreTabelas;
     procedure FechaTabelas;
     procedure GravaDivergencia(Campo:String);
     procedure ComparaRegistros;
  public
    { Public declarations }
  end;

var
  FmConfANS: TFmConfANS;

implementation

uses udm;


{$R *.DFM}

procedure TFmConfANS.Button1Click(Sender: TObject);
Var Arq : textFile;
    Linha : String;
begin
  if MaskEditDtBaseANS.Text = '  /  /    'then
  begin
    ShowMessage('Informe a Data base do arquivo de conferência(Último dia do mês base)');
    MaskEditDtBaseANS.SetFocus;
    Exit;
  end;
  if not FileExists(EditArq.text) then
  begin
     ShowMessage('Arquivo não informado ou não existe!');
     Exit;
  end;
  dm.ExecutaComando('update parametro set vl_parametro = ''' + EditArq.Text + ''' where cd_parametro = ''ARQANS''');
  if Application.MessageBox('Confirma o processamento?','Confirmação',MB_yesNo) = MrNo then
     Exit;

  if not (QueryANS_CONF.Bof and QueryANS_CONF.Eof) then
     if application.MessageBox('Há registros na tabela temporária de beneficiários da ANS, é necessário excluí-los para realizar nova importação, deseja excluí-los?','Alerta',MB_OKCANCEL + MB_DEFBUTTON1) = MrOk then
     begin
        QueryGeral.Close;
        QueryGeral.sql.clear;
        QueryGeral.sql.add('delete ANS_CONF');
        QueryGeral.ExecSQL;
     end
     else
        exit;

   FechaTabelas;
   Edit4.text := '0';

   EditQtdeANS.text := IntToStr(FContLinhasArq);
   Pb.Max := StrToInt(EditQtdeANS.text);

   QueryAnsConf.Close;
   QueryAnsConf.Open;
   LabelStatus.caption := 'Importando arquivo de conferência...';
   
   AssignFile(Arq,EditArq.text);
   Reset(Arq);
   While not eof(Arq) do
   begin
      Pb.StepIt;
      Application.ProcessMessages;
      Readln(Arq,Linha);
      QueryAnsConf.Insert;
      if E_numerico(Copy(linha,001,07)) then
         QueryAnsConf.FieldByName('NrSeqArq').AsString  := Copy(linha,001,07);

      // existem codigos na ANS que possuem caracter nao numerico, nestes casos
      // nao compara

      QueryAnsConf.FieldByName('flag_compara').AsBoolean := E_numerico(trim(Copy(linha,009,30)));

      if E_numerico(Copy(linha,8,1)) then
         QueryAnsConf.FieldByName('IndDetalhe').AsString  := Copy(linha,8,1);

      QueryAnsConf.FieldByName('cdIdentBenef').AsString  := trim(Copy(linha,9,30));
      QueryAnsConf.FieldByName('NmBenef').AsString       := trim(Copy(linha,39,70));

      // a data é no formato AAAAMMDD
      if E_data(Copy(linha,115,02) + '/' + Copy(linha,113,02) + '/' + Copy(linha,109,04)) then
         QueryAnsConf.FieldByName('DtNasc').AsString := Copy(linha,115,02) + '/' + Copy(linha,113,02) + '/' + Copy(linha,109,04);

      if Copy(linha,117,01) = '3' then
        QueryAnsConf.FieldByName('Sexo').AsString := 'F'
      else
      if Copy(linha,117,01) = '1' then
         QueryAnsConf.FieldByName('Sexo').AsString := 'M';

      if E_numerico(Copy(linha,118,11)) then
         QueryAnsConf.FieldByName('cpf').AsString := Copy(linha,118,11);

      if E_numerico(Copy(linha,129,11)) then
         QueryAnsConf.FieldByName('Pis').AsString := Copy(linha,129,11);

      QueryAnsConf.FieldByName('NmMaeBenef').AsString := Copy(linha,140,70);

      if E_numerico(Copy(linha,210,09)) then
         QueryAnsConf.FieldByName('NrRegPlanoANS').AsString := Copy(linha,210,09);

      if E_data(Copy(linha,225,02) + '/' + Copy(linha,223,02) + '/' + Copy(linha,219,04)) then
         QueryAnsConf.FieldByName('DtAdesaoPlano').AsString := Copy(linha,225,02) + '/' + Copy(linha,223,02) + '/' + Copy(linha,219,04);

      if E_data(Copy(linha,233,02) + '/' + Copy(linha,231,02) + '/' + Copy(linha,227,04)) then
         QueryAnsConf.FieldByName('DtCancelamento').AsString := Copy(linha,233,02) + '/' + Copy(linha,231,02) + '/' + Copy(linha,227,04);

      if E_data(Copy(linha,241,02) + '/' + Copy(linha,239,02) + '/' + Copy(linha,235,04)) then
         QueryAnsConf.FieldByName('DtReinclusao').AsString := Copy(linha,241,02) + '/' + Copy(linha,239,02) + '/' + Copy(linha,235,04);

      QueryAnsConf.FieldByName('Logradouro').AsString := Copy(linha,243,50);
      QueryAnsConf.FieldByName('NrEndereco').AsString := Copy(linha,293,05);
      QueryAnsConf.FieldByName('ComplLog'  ).AsString := Copy(linha,298,15);
      QueryAnsConf.FieldByName('Bairro'    ).AsString := Copy(linha,313,30);
      QueryAnsConf.FieldByName('Cidade'    ).AsString := Copy(linha,343,30);
      QueryAnsConf.FieldByName('UF'        ).AsString := Copy(linha,373,02);
      QueryAnsConf.FieldByName('cep'       ).AsString := Copy(linha,375,08);

      if E_numerico(Copy(linha,383,02)) then
         QueryAnsConf.FieldByName('SegAssistCobPl').AsString := Copy(linha,383,02);

      if E_numerico(Copy(linha,385,01)) then
         QueryAnsConf.FieldByName('AbrangGeogCobPl').AsString := Copy(linha,385,01);

      if E_numerico(Copy(linha,386,01)) then
         QueryAnsConf.FieldByName('TpContratPlano').AsString := Copy(linha,386,01);

      if E_numerico(Copy(linha,387,02)) then
         QueryAnsConf.FieldByName('VinculoBenef').AsString := Copy(linha,387,02);

      if E_numerico(Copy(linha,389,02)) then
         QueryAnsConf.FieldByName('MotivoCancel').AsString := Copy(linha,389,02);

      if E_numerico(Copy(linha,391,01)) then
         QueryAnsConf.FieldByName('IndExistCobParcTemp').AsString := Copy(linha,391,01);

      if E_numerico(Copy(linha,392,01)) then
         QueryAnsConf.FieldByName('IndExistCoPart').AsString := Copy(linha,392,01);


      QueryAnsConf.FieldByName('NrRegPlanoOper').AsString   := Copy(linha,393,30);

      if E_numerico(Copy(linha,423,15)) then
         QueryAnsConf.FieldByName('cns').AsString := Copy(linha,423,15);

      QueryAnsConf.FieldByName('Identidade').AsString   := Copy(linha,438,30);
      QueryAnsConf.FieldByName('OrgaoEmissorCI').AsString   := Copy(linha,468,30);

      if E_numerico(Copy(linha,498,03)) then
         QueryAnsConf.FieldByName('cdPaisEmissorCI').AsString   := Copy(linha,498,03);

      if E_numerico(Copy(linha,501,14)) then
         QueryAnsConf.FieldByName('CNPJ').AsString   := Copy(linha,501,14);

      QueryAnsConf.FieldByName('cdtitular').AsString   := Copy(linha,515,30);

      if E_numerico(Copy(linha,545,01)) then
      QueryAnsConf.FieldByName('IndItensProcExc').AsString   := Copy(linha,545,01);

     if E_data(Copy(linha,552,02) + '/' + Copy(linha,550,02) + '/' + Copy(linha,546,04)) then
        QueryAnsConf.FieldByName('DtAdaptacao').AsString   := Copy(linha,552,02) + Copy(linha,550,02) + Copy(linha,546,04);

      QueryAnsConf.Post;

   end;
   PB.Position := 0;
   CloseFile(Arq);
   QueryGeral.Close;
   QueryGeral.sql.clear;
   QueryGeral.sql.add('select count(*) qtde from ANS_CONF ');
   QueryGeral.Open;
   Edit4.Text := QueryGeral.fieldByName('qtde').AsString;
   if EditQtdeANS.text <> Edit4.Text then
      ShowMessage('A quantidade de linhas do arquivo ANS não confere com o total de registros importados');
   StoredProcUpdateNull.ExecProc;
   ComparaRegistros;
   AbreTabelas;
   Button7Click(Sender);
   ShowMessage('Fim de processamento !');

end;
procedure TfmConfANS.GravaDivergencia(Campo:String);
begin
   QueryDivergANSXBase.Edit;
   QueryDivergANSXBase.FieldByName('divergente').AsBoolean := True;
   if length(QueryDivergANSXBase.FieldByName('CpDivergentes').AsString + ',' + Campo) < 100 then
      QueryDivergANSXBase.FieldByName('CpDivergentes').AsString := QueryDivergANSXBase.FieldByName('CpDivergentes').AsString + ',' + Campo;
   QueryDivergANSXBase.Post;
end;

procedure TfmConfANS.ComparaRegistros;
begin
   LabelStatus.caption := 'Comparando registros...';
   sp_regAnsXBase.ExecProc;
   QueryDivergANSXBase.Close;
   QueryDivergANSXBase.Open;
   PB.Position := 0;
   Pb.Max := QueryDivergANSXBase.Recordcount;
   While not QueryDivergANSXBase.eof do
   begin
      Pb.StepIt;
      Application.ProcessMessages;
      if trim(QueryDivergANSXBase.FieldByname('Nome ANS').AsString) <> trim(dm.so_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('nome').AsString))) then
          GravaDivergencia('Nome');
       if QueryDivergANSXBase.FieldByname('DtNasc ANS').AsDatetime <> QueryDivergANSXBase.FieldByname('data_nascimento').AsDatetime then
          GravaDivergencia('Dt Nasc.');
       if QueryDivergANSXBase.FieldByname('Sexo ANS').AsString <> QueryDivergANSXBase.FieldByname('sexo').AsString then
          GravaDivergencia('Sexo');
       if QueryDivergANSXBase.FieldByname('CPF ANS').AsString <> lpad(dm.RetiraTracoCPF(QueryDivergANSXBase.FieldByname('cpf').AsString),11,'0') then
          GravaDivergencia('CPF');
       if dm.so_numero(QueryDivergANSXBase.FieldByname('PIS/PASEP ANS').AsString) <> lpad(dm.so_numero(dm.RetiraTracoCPF(QueryDivergANSXBase.FieldByname('PIS PASEP').AsString)),11,'0') then
          GravaDivergencia('PIS/PASEP');
       if QueryDivergANSXBase.FieldByname('Nm MAE ANS').AsString <> rpad(dm.so_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('Nm_Mae').AsString)),70,' ') then
          GravaDivergencia('Nome Mãe');
       if QueryDivergANSXBase.FieldByname('Nr Reg Plan ANS').AsInteger <> QueryDivergANSXBase.FieldByname('Codigo_Susep').AsInteger then
          GravaDivergencia('Nº Reg ANS');
       if QueryDivergANSXBase.FieldByname('DT Adesao ANS').AsDatetime <> QueryDivergANSXBase.FieldByname('Data_Inclusao').AsDatetime then
          GravaDivergencia('Dt Inclusão');
       if Trim(QueryDivergANSXBase.FieldByname('endereco_ans').Asstring) <> trim(dm.So_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('Endereco').AsString))) then
          GravaDivergencia('Endereço');
       if trim(QueryDivergANSXBase.FieldByname('num_ANS').AsString) <> trim(QueryDivergANSXBase.FieldByname('num').AsString) then
          GravaDivergencia('Nº Residencia');
       if trim(QueryDivergANSXBase.FieldByname('Compl ANS').AsString) <> trim(dm.So_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('Compl').AsString))) then
          GravaDivergencia('Compl');
       if trim(QueryDivergANSXBase.FieldByname('Bairro ANS').AsString) <> trim(dm.So_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('Bairro').AsString))) then
          GravaDivergencia('Bairro');
       if QueryDivergANSXBase.FieldByname('CEP ANS').AsString <> lpad(dm.so_numero(QueryDivergANSXBase.FieldByname('CEP').AsString),08,'0') then
          GravaDivergencia('CEP');
       if trim(QueryDivergANSXBase.FieldByname('Cidade ANS').AsString) <> trim(dm.So_alfa(dm.Tira_acento(QueryDivergANSXBase.FieldByname('Cidade_Residencial').AsString))) then
          GravaDivergencia('Cidade');
       if QueryDivergANSXBase.FieldByname('UF ANS').AsString <> QueryDivergANSXBase.FieldByname('Estado_Residencial').AsString then
          GravaDivergencia('UF');
       if QueryDivergANSXBase.FieldByname('Tp Contrat Plano ANS').AsInteger <> QueryDivergANSXBase.FieldByname('TpContratPlano').AsInteger then
          GravaDivergencia('Tp Contrat Plano');
       if QueryDivergANSXBase.FieldByname('Vinc ANS').AsInteger <> QueryDivergANSXBase.FieldByname('grau_parentesco').Asinteger then
          GravaDivergencia('Grau Parent');
       if QueryDivergANSXBase.FieldByname('Motivo Cancel ANS').AsInteger <> QueryDivergANSXBase.FieldByname('motivo_cancelamento').AsInteger then
          GravaDivergencia('Motivo Cancel');
       if trim(QueryDivergANSXBase.FieldByname('CD Anterior ANS').AsString) <> trim(lpad(QueryDivergANSXBase.FieldByname('cd_ans_anterior').AsString,30,'0')) then
          GravaDivergencia('Cd ANS Anterior');
       if QueryDivergANSXBase.FieldByname('SegAssistCobPl ANS').AsInteger <> QueryDivergANSXBase.FieldByname('SegAssistCobPl').AsInteger then
          GravaDivergencia('seg Assist Cob Plano');
       if QueryDivergANSXBase.FieldByname('AbrangGeogCobPl ANS').AsInteger <> QueryDivergANSXBase.FieldByname('AbrangGeogCobPl').AsInteger then
          GravaDivergencia('Abrang. Geograf');
       if QueryDivergANSXBase.FieldByname('IndExistCobParcTemp ANS').AsInteger <> QueryDivergANSXBase.FieldByname('IndExistCobParcTemp').AsInteger then
          GravaDivergencia('Ind Exist Cob Parc');
       if QueryDivergANSXBase.FieldByname('IndExistCoPart ANS').AsInteger <> QueryDivergANSXBase.FieldByname('IndExistCoPart').AsInteger then
          GravaDivergencia('Ind Cob Part');
       QueryDivergANSXBase.next;
   end;
   // para tirar a vírgula inicial
   dm.ExecutaComando('update DivergANSXBase set  CpDivergentes = substring(CpDivergentes,2,99)');
   PB.Position := 0;
   LabelStatus.caption := '';
end;

procedure TFmConfANS.AbreTabelas;
begin

   QueryANS_CONF.Close;
   QueryANS_CONF.Open;
   EditTodos.text := IntToStr(QueryANS_CONF.recordcount);

   QueryRegDiverg.Close;
   QueryRegDiverg.Open;
   EditQtdeDiverg.text := IntToStr(QueryRegDiverg.recordcount);

   QueryNaoEncontr.Close;
   QueryNaoEncontr.Open;
   EditQtdeNEncontr.text := IntToStr(QueryNaoEncontr.recordcount);
   Edit1.Text :=
   dm.ExecutaComando(
   ' select (select count(*) from ans_conf a where flag_compara = 1 ' +
   ' and not exists (select codigo_completo from usuario u where ' +
   ' u.codigo_completo = a.cdIdentBenef) and dtcancelamento is null) + ' +
   ' (select count(*) from ans_conf where flag_compara = 0 and dtcancelamento is null) qtde ','qtde');

   QueryExBAseXNaoANS.close;
   QueryExBAseXNaoANS.Open;
   EditQtdeBaseXNAns.text := IntToStr(QueryExBAseXNaoANS.recordcount);

   QueryRegSoMulti.close;
   QueryRegSoMulti.open;
   EditQtdeSoMulti.text := IntToStr(QueryRegSoMulti.recordcount);

   QueryExANSXAtivo.close;
   QueryExANSXAtivo.open;
   EditQtdeExANSXAtivo.text := inttostr(QueryExANSXAtivo.recordcount);

end;

procedure TFmConfANS.FechaTabelas;
begin
   Edit1.text := '0';
   Edit4.text := '0';
   EditQtdeANS.text := '0';
   EditQtANS.text := '0';
   EditQtBase.text := '0';

   QueryANS_CONF.Close;
   EditTodos.text := '0';

   QueryRegDiverg.Close;
   EditQtdeDiverg.text := '0';

   QueryNaoEncontr.Close;
   EditQtdeNEncontr.text := '0';

   QueryExBAseXNaoANS.close;
   EditQtdeBaseXNAns.text := '0';

   QueryRegSoMulti.close;
   EditQtdeSoMulti.text := '0';

   QueryExANSXAtivo.close;
   EditQtdeExANSXAtivo.text := '0';

end;
procedure TFmConfANS.FormShow(Sender: TObject);
begin
   EditArq.text := dm.GetParam('ARQANS');
   
   if FileExists(EditArq.text) then
      EditQtdeANS.text := IntToStr(FContLinhasArq);
      
   Edit4.Text := dm.ExecutaComando('select count(*) qtde from ANS_CONF','qtde');

   PageControl1.ActivePage := TabSheetDivergentes;
   AbreTabelas;
end;

procedure TFmConfANS.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TFmConfANS.SpeedButton1Click(Sender: TObject);
begin
   if OpenDialog1.execute then
      EditArq.Text := OpenDialog1.FileName;

end;

procedure TFmConfANS.Button4Click(Sender: TObject);
begin
  if Application.MessageBox('Este processo irá marcar todos estes registros para envio à ANS como alteração, confirma?','Confirmação',MB_yesNo) = MrNo then
     Exit;
  try
    QueryUpdateAlter.ExecSQL;
  except
  on E: Exception do
  begin
     ShowMessage('Ocoreu um erro ao tentar processar estes registros, erro -> '+ E.Message);
     exit;
  end;
  end;
  AbreTabelas;
  ShowMessage('Fim de processamento!');
end;

procedure TFmConfANS.Button6Click(Sender: TObject);
begin
  if (EditQtdeANS.text <> '0') and (Edit4.text <> '0') then
  begin
    if StrToInt(EditQtdeANS.text) <> StrToInt(Edit4.text) then
    begin
       ShowMessage('A quantidade de registros importados não confere com a quantidade de registros encontrados no arquivo ANS');
       Exit;
    end;
  end
  else
  begin
     ShowMessage('Quantidades de Registros ANS ou de registros importados igual a zero, clique em processar primeiro antes de executar esta rotina');
     Exit;
  end;
  
  if Application.MessageBox('Este processo irá retirar a data de envio à ANS, pois os mesmos não se encontram na ANS, confirma?','Confirmação',MB_yesNo + + MB_DEFBUTTON1) = MrNo then
     Exit;

  if not CheckBox1.Checked then
     if Application.MessageBox(Pchar('A Opção "Somente registros não excluidos" não está selecionada, se você continuar o programa irá marcar todos os ' + EditQtdeSoMulti.text + ' para serem enviados à ANS, mesmo que estejam excluídos, confirma?Este processo irá retirar a data de envio à ANS, pois os mesmos não se encontram na ANS, confirma?'),'Confirmação',MB_yesNo) = MrNo then
        Exit;
  if uppercase(UserName) = 'ENIO' then
     MostraText(QueryUpdSoMult.Text);

  try
    QueryUpdSoMult.ExecSQL;
  except
  on E: Exception do
  begin
     ShowMessage('Ocoreu um erro ao tentar processar estes registros, erro -> '+ E.Message);
     exit;
  end;
  end;
  AbreTabelas;
  ShowMessage('Fim de processamento!');
end;

procedure TFmConfANS.Button3Click(Sender: TObject);
begin
  if Application.MessageBox('Confirma o processamento?','Confirmação',MB_yesNo) = MrNo then
     Exit;
  try
    QueryUpdExANSXBase.ExecSQL;
  except
  on E: Exception do
  begin
     ShowMessage('Ocoreu um erro ao tentar processar estes registros, erro -> '+ E.Message);
     exit;
  end;
  end;
  AbreTabelas;
  ShowMessage('Fim de processamento!');

end;

procedure TFmConfANS.Button5Click(Sender: TObject);
begin
  if Application.MessageBox('Este processo irá marcar todos estes registros para envio à ANS como exclusão, confirma?','Confirmação',MB_yesNo) = MrNo then
     Exit;
  try
    QueryUpdExBaseXNANS.ExecSQL;
  except
  on E: Exception do
  begin
     ShowMessage('Ocoreu um erro ao tentar processar estes registros, erro -> '+ E.Message);
     exit;
  end;
  end;
  AbreTabelas;
  ShowMessage('Fim de processamento!');

end;

procedure TFmConfANS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QueryAnsConf.Close;
   QueryGeral.Close;
   QueryANS_CONF.Close;
   QueryRegDiverg.Close;
   QueryNaoEncontr.Close;
   QueryExBAseXNaoANS.close;
   QueryRegSoMulti.close;
   QueryExANSXAtivo.close;
end;

procedure TFmConfANS.CheckBox1Click(Sender: TObject);
begin
   QueryRegSoMulti.Close;
   if CheckBox1.Checked then
   begin
      QueryRegSoMulti.sql[7] := '  and u.inclusao_susep is not null and u.data_exclusao is null';
      QueryUpdSoMult.sql[14] := '  and usuario.inclusao_susep is not null and usuario.data_exclusao is null'
   end
   else
   begin
      QueryRegSoMulti.sql[7] := '  and u.inclusao_susep is not null ';
      QueryUpdSoMult.sql[14] := '  and usuario.inclusao_susep is not null ';
   end;
   QueryRegSoMulti.Open;
   EditQtdeSoMulti.text := IntToStr(QueryRegSoMulti.recordcount);
end;

procedure TFmConfANS.PanelTopDblClick(Sender: TObject);
begin
   ComparaRegistros;
end;

Function TFmConfANS.FContLinhasArq: Integer;
Var VcontLinhas : Integer;
    Arq : textFile;
begin
   VcontLinhas := 0;
   AssignFile(Arq,EditArq.text);
   Reset(Arq);
   While not eof(arq) do
   begin
      Readln(Arq);
      inc(VcontLinhas);
   end;
   CloseFile(Arq);
   Result := VcontLinhas;
end;
procedure TFmConfANS.Panel12DblClick(Sender: TObject);
begin
   if application.MessageBox('Confirma comparar registros?','Aviso',MB_OKCANCEL + MB_DEFBUTTON2) = MrOk then
      ComparaRegistros;
end;

procedure TFmConfANS.Button7Click(Sender: TObject);
begin
  if MaskEditDtBaseANS.Text = '  /  /    'then
  begin
    ShowMessage('Informe a Data base do arquivo de conferência(Último dia do mês base)');
    MaskEditDtBaseANS.SetFocus;
    Exit;
  end;
   EditQtANS.text  := dm.ExecutaComando('select count(*) as qtde from ans_conf  where dtcancelamento is null','qtde');
   EditQtBase.text := dm.ExecutaComando('set dateformat dmy select count(*) as qtde from usuario  where '+
   '(data_exclusao is null or data_exclusao > ''' + MaskEditDtBaseANS.Text + ''') and data_inclusao < ''' +
   MaskEditDtBaseANS.Text + '''','qtde');
   EditDiferenca.text := IntToStr(StrToInt(EditQtANS.text) - StrToInt(EditQtBase.text));
end;

end.

