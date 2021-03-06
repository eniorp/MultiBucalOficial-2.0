unit selOrcImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ComCtrls,enio;

type
  TFmSelOrcImpressao = class(TFmPadrao)
    ListView: TListView;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    BitBtnImprimir: TBitBtn;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
     ListItem: TListItem;
     function PesquisaView(nrOrcamento : string): boolean;
     procedure ImpGViaConv(nrOrcamento, dtConferencia,cdOperador,cdPLano,cdDentista : string; tpOrcamento : integer);
  public
    { Public declarations }
  end;

var
  FmSelOrcImpressao: TFmSelOrcImpressao;

implementation

uses RelOrcViaConv, udm;

{$R *.dfm}


procedure TFmSelOrcImpressao.Button1Click(Sender: TObject);
begin
  inherited;

   if Edit1.text <> '' then
   begin
     if PesquisaView(Edit1.text) then
     begin
        ShowMessage('Orcamento j� incluso');
        exit;
     end;
     ADOQueryH.Close;
     ADOQueryH.SQL[1] := Edit1.Text;
     ADOQueryH.Open;
     if ADOQueryH.RecordCount = 0 then
     begin
        ShowMessage('Orcamento n�o localizado, ou n�o autorizado, verifique! ');
        Edit1.setFocus;
        Edit1.SelectAll;
        exit;
     end;
     ListItem := ListView.Items.Add;
     ListItem.Caption := ADOQueryH.FieldByName('numero').AsString;
     ListItem.SubItems.Add(ADOQueryH.FieldByName('usuario').AsString); //0
     ListItem.SubItems.Add(ADOQueryH.FieldByName('dentista').AsString);   //1
     ListItem.SubItems.Add(ADOQueryH.FieldByName('data_conferencia').AsString); //2
     ListItem.SubItems.Add(ADOQueryH.FieldByName('cdDentista').AsString);          //3
     ListItem.SubItems.Add(ADOQueryH.FieldByName('tipo').AsString);                //4
     ListItem.SubItems.Add(ADOQueryH.FieldByName('plano').AsString);               //5
     ListItem.SubItems.Add(ADOQueryH.FieldByName('Operador_Aprovacao').AsString);               //6
     ListView.Items.Item[ListView.Items.Count - 1].Checked := true;
     Edit1.SelectAll;
     Edit1.setFocus;
     Edit1.setFocus;
     Label1.Caption := intToStr(ListView.Items.Count);
   end;

end;
function TFmSelOrcImpressao.PesquisaView(nrOrcamento : string): Boolean;
Var I : Integer;
    achou : Boolean;
begin
   achou := false;

   For I := 0 to ListView.Items.Count - 1 do
      if nrOrcamento = ListView.Items.Item[I].Caption then
      begin
         achou := true;
         break;
      end;
   result := achou;
end;


procedure TFmSelOrcImpressao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 13 then
     Button1Click(Sender);

end;

procedure TFmSelOrcImpressao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   key := So_numero(key);
end;

procedure TFmSelOrcImpressao.ImpGViaConv(nrOrcamento, dtConferencia,cdOperador,cdPLano,cdDentista: string; tpOrcamento : integer);
begin
   QrViaConv := TQrViaConv.create(self);

   QrViaConv.QRImage1.Enabled := (dm.GetParam('IMGOVL') = 'IMG1');
   QrViaConv.QRImage2.Enabled := (dm.GetParam('IMGOVL') = 'IMG2');
   QrViaConv.QRDBTextDenteFace.enabled := true;
   QrViaConv.QRLabelDenteFace.enabled := true;
   QrViaConv.QRLabelvIA.caption := 'CONV�NIO';
   QrViaConv.QRLabelp1.caption := '';
   QrViaConv.QRLabelv1.caption := '';
   QrViaConv.QRLabeld1.caption := '';
   QrViaConv.QRLabelt_1.caption := '';
   QrViaConv.QRLabelp2.caption := '';
   QrViaConv.QRLabelv2.caption := '';
   QrViaConv.QRLabeld2.caption := '';
   QrViaConv.QRLabelt2.caption := '';
   QrViaConv.QRLabelp3.caption := '';
   QrViaConv.QRLabelv3.caption := '';
   QrViaConv.QRLabeld3.caption := '';
   QrViaConv.QRLabelt3.caption := '';
   QrViaConv.QRLabelp4.caption := '';
   QrViaConv.QRLabelv4.caption := '';
   QrViaConv.QRLabeld4.caption := '';
   QrViaConv.QRLabelt4.caption := '';
   QrViaConv.QRLabelp5.caption := '';
   QrViaConv.QRLabelv5.caption := '';
   QrViaConv.QRLabeld5.caption := '';
   QrViaConv.QRLabelt5.caption := '';
   QrViaConv.QRLabelp6.caption := '';
   QrViaConv.QRLabelv6.caption := '';
   QrViaConv.QRLabeld6.caption := '';
   QrViaConv.QRLabelt6.caption := '';
   QrViaConv.QRLabelp7.caption := '';
   QrViaConv.QRLabelv7.caption := '';
   QrViaConv.QRLabeld7.caption := '';
   QrViaConv.QRLabelt7.caption := '';
   QrViaConv.QRLabelp8.caption := '';
   QrViaConv.QRLabelv8.caption := '';
   QrViaConv.QRLabeld8.caption := '';
   QrViaConv.QRLabelt8.caption := '';
   QrViaConv.QRLabelp9.caption := '';
   QrViaConv.QRLabelv9.caption := '';
   QrViaConv.QRLabeld9.caption := '';
   QrViaConv.QRLabelt9.caption := '';
   QrViaConv.QRLabelp10.caption := '';
   QrViaConv.QRLabelv10.caption := '';
   QrViaConv.QRLabeld10.caption := '';
   QrViaConv.QRLabelt10.caption := '';
   QrViaConv.QRLabelp11.caption := '';
   QrViaConv.QRLabelv11.caption := '';
   QrViaConv.QRLabeld11.caption := '';
   QrViaConv.QRLabelt11.caption := '';
   QrViaConv.QRLabelp12.caption := '';
   QrViaConv.QRLabelv12.caption := '';
   QrViaConv.QRLabeld12.caption := '';
   QrViaConv.QRLabelt12.caption := '';
   QrViaConv.QueryOrcamento.close;
   QrViaConv.QueryOrcamento.sql[52] := nrOrcamento;
   QrViaConv.QueryOrcamento.open;
   QrViaConv.QueryPrestacoes.Close;
   QrViaConv.QueryPrestacoes.sql[2] := nrOrcamento;
   QrViaConv.QueryPrestacoes.open;
   QrViaConv.QRLabel22.caption := 'ESTE OR�AMENTO FOI APROVADO EM : ' + dtConferencia +
   '         OPERADOR : ' +  dm.executacomando('select apelido a from operador where codigo = ''' + cdOperador + '''','a');
   QrViaConv.QRLabelPer1.Enabled := true; // aviso de pericia
   QrViaConv.QRLabelPer2.Enabled := true;
   QrViaConv.QRLabelPer3.Enabled := true;
   QrViaConv.QRLabelPer4.Enabled := true;
   QrViaConv.QRLabelPer5.Enabled := true;
   QrViaConv.QRShape8.Enabled := true;
   QrViaConv.QRShape7.Enabled := true;
   QrViaConv.QRLabelAlerta.Enabled := true;
   QrViaConv.QRLabelAlerta.Caption := ' ';


   QrViaConv.QRLabel18.Enabled := true;



   if tpOrcamento = 7 then // renova��o
      QrViaConv.QRLabelAlerta.Caption := 'RENOVA��O';

    if dm.execmd('SELECT COUNT(ORCAMENTO) q FROM EventOdontograma WHERE ORCAMENTO = ' + nrOrcamento + ' AND TP_EVENTO = ''S''','q') <> '0' then
    begin
       QrViaConv.DetailBand1.Height := 50;
       QrViaConv.QRDBRichText1.enabled := true;
       if QrViaConv.QRLabelAlerta.Caption <> '' then
          QrViaConv.QRLabelAlerta.Caption := QrViaConv.QRLabelAlerta.Caption + ' - ';

       QrViaConv.QRLabelAlerta.Caption :=  QrViaConv.QRLabelAlerta.Caption + ' AUTORIZADO COM SENHA';
    end;
   QrViaConv.SummaryBand1.Height := 400;

   if dm.GetParam('VCVSR1') = 'N' then // este parametro da via do conv�nio defini se vizualiza ou n�o o campo Valor do servi�o quando a tabela de pre�o = 3
   begin
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco = 3 and plano = ' +   cdPLano,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := false;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;

         QrViaConv.QRExpr5.enabled := false;
      end
      else // duvidas verificar e-mail do t�cio do dia 28/09/2011
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco in(1,2) and plano = ' +   cdPLano,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := true;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;
         QrViaConv.QRExpr5.enabled := true;
      end;

   end;
   QrViaConv.QRLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + cdDentista,'clinica');
   QrViaConv.Print;
   QrViaConv.free;

end;
procedure TFmSelOrcImpressao.BitBtnImprimirClick(Sender: TObject);
var I : word;
begin
  inherited;
  if Application.MessageBox('Confirma a impress�o dos or�amentos','Impress�o',MB_OKCANCEL + MB_DEFBUTTON2) <> IDOK then
     exit;
  For I := 0 to ListView.Items.Count - 1 do
  begin
         if ListView.Items.Item[I].Checked then
         begin

            ImpGViaConv(ListView.Items.Item[I].Caption,ListView.Items.Item[I].SubItems[2],ListView.Items.Item[I].SubItems[6],ListView.Items.Item[I].SubItems[5],
                        ListView.Items.Item[I].SubItems[3],StrToInt(ListView.Items.Item[I].SubItems[4]));
         end;
  end;
end;

procedure TFmSelOrcImpressao.Button2Click(Sender: TObject);
begin
  inherited;
  ListView.Items.Clear;
  Label1.Caption := '';
end;

end.
