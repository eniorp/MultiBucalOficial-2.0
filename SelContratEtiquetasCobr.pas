unit SelContratEtiquetasCobr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, ExtCtrls, StdCtrls, Buttons,enio,biblio;

type
  TFmSelContrEtiqCobr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ListView: TListView;
    QueryContratantes: TQuery;
    CheckBox1: TCheckBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    LabelNmcontrat: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditCarcCol: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditCaracRow: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IncluidoAniversariante : Boolean;
    qtdeEt : byte;
    ListItem: TListItem;
    Procedure MontaView;
    Procedure LimpaView(flag : Boolean);
    Procedure PesquisaView(CdContrat : Integer);
    { Private declarations }
  public
     VInstrucaoSql : AnsiString;
     dataHoraStr : string;
    { Public declarations }
  end;

var
  FmSelContrEtiqCobr: TFmSelContrEtiqCobr;

implementation

uses udm, RelAniversariantes, QRAniversariantes, relEtiquetas, paramEtiq;

{$R *.DFM}

Procedure TFmSelContrEtiqCobr.MontaView;

Begin
   ListView.Items.Clear;
   While Not QueryContratantes.EOF do
   Begin
      ListItem := ListView.Items.Add;
      ListItem.Caption := QueryContratantes.FieldByName('codigo').AsString;
      ListItem.SubItems.Add(QueryContratantes.FieldByName('NmContrat').AsString);
      ListItem.SubItems.Add(QueryContratantes.FieldByName('QtdeParc').AsString);
      QueryContratantes.Next;
  end;
end;

Procedure TFmSelContrEtiqCobr.PesquisaView(CdContrat : Integer);
Var I : Integer;
    achou : Boolean;
begin
   achou := false;
   LabelNmcontrat.Caption := '';
   For I := 0 to ListView.Items.Count - 1 do
      if CdContrat = StrToInt(ListView.Items.Item[I].Caption) then
      begin
         ListView.Items.IndexOf(ListView.Items.Item[I]);
         ListView.Items.Item[I].Checked := true;
         LabelNmcontrat.Caption := ListView.Items.Item[I].SubItems.Strings[0];
         achou := true;
         break;
      end;
   Edit1.SelectAll;
   if not achou then
       ShowMessage('Contratante não encontrado com os parametros selecionados !');
end;

Procedure TFmSelContrEtiqCobr.LimpaView(flag : Boolean);
Var I : Integer;
begin

   For I := 0 to ListView.Items.Count - 1 do
      ListView.Items.Item[I].Checked := flag;
end;

procedure TFmSelContrEtiqCobr.FormShow(Sender: TObject);
begin
   IncluidoAniversariante := false;
   BitBtn1.Visible := FmSelContrEtiqCobr.Tag = 3;
   qtdeEt := 0;
   EditCarcCol.text := dm.GetParam('ETCOL');
   EditCaracRow.text := dm.GetParam('ETROW');
   if tag = 0 then
   begin
      QueryContratantes.Sql[00] := 'select  replicate(''0'',8 - len(c.codigo)) + cast(c.codigo as varchar(8)) as codigo, c.nome as NmContrat, count(*) as QtdeParc from  Receber d';
      QueryContratantes.Sql[14] := 'group by c.codigo, c.nome  order by c.nome ';
      QueryContratantes.Open;
      MontaView;
   end;
{  Edit1.text := '154490';
  Button1Click(sender);
  Edit1.text := '154480';
  Button1Click(sender);
  Edit1.text := '154470';
  Button1Click(sender);
  Edit1.text := '152200';
  Button1Click(sender);
  Edit1.text := '124440';
  Button1Click(sender);
  Edit1.text := '112550';
  Button1Click(sender);
  Edit1.text := '112300';
  Button1Click(sender);
  Edit1.text := '142250';
  Button1Click(sender);
  Edit1.text := '145220';
  Button1Click(sender);
  Edit1.text := '122110';
  Button1Click(sender);
  Edit1.text := '127880';
  Button1Click(sender);
  Edit1.text := '142660';
  Button1Click(sender);
  Edit1.text := '122000';
  Button1Click(sender);
  Edit1.text := '144080';
  Button1Click(sender);
  Edit1.text := '111400';
  Button1Click(sender);
  Edit1.text := '120090';
  Button1Click(sender);
  Edit1.text := '100220';
  Button1Click(sender);
  Edit1.text := '131050';
  Button1Click(sender);
  Edit1.text := '114000';
  Button1Click(sender);
  Edit1.text := '129220';
  Button1Click(sender);
  Edit1.text := '154100';
  Button1Click(sender);
  Edit1.text := '154110';
  Button1Click(sender);
  Edit1.text := '154120';
  Button1Click(sender);
  Edit1.text := '154130';
  Button1Click(sender);
  Edit1.text := '154140';
  Button1Click(sender);
  Edit1.text := '154150';
  Button1Click(sender);
  Edit1.text := '154160';
  Button1Click(sender);
  Edit1.text := '154170';
  Button1Click(sender);
  Edit1.text := '154180';
  Button1Click(sender);
  Edit1.text := '154190';
  Button1Click(sender);}
end;

procedure TFmSelContrEtiqCobr.CheckBox1Click(Sender: TObject);
begin
   LimpaView(CheckBox1.Checked);
end;

procedure TFmSelContrEtiqCobr.BitBtnImprimirClick(Sender: TObject);
Var I : Integer;

begin
     dataHoraStr := FormatDateTime('ddmmyyyyhhnnss',dm.now);
     try
       dm.execmd('create table ##CodigoEtiquetas(id_sessao varchar(20), cd_usuario int)');
     except
     end;

     VInstrucaoSql := '';
      For I := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[I].Checked then
         begin
            dm.execmd('insert into ##CodigoEtiquetas values(''' + dataHoraStr + ''',''' + ListView.Items.Item[I].Caption + ''')');
            VInstrucaoSql := VInstrucaoSql + lpad(ListView.Items.Item[I].Caption,10,'0');
         end;
      FmSelContrEtiqCobr.tag := 1;
      Close;

{   if FmSelContrEtiqCobr.tag = 3 then
   begin
     VInstrucaoSql := '';
      For I := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[I].Checked then
            VInstrucaoSql := VInstrucaoSql + lpad(ListView.Items.Item[I].Caption,10,'0');
      FmSelContrEtiqCobr.tag := 1;
      Close;
   end
   else
   if FmSelContrEtiqCobr.tag = 2 then
   begin

      VInstrucaoSql := '';
      For I := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[I].Checked then
           VInstrucaoSql := VInstrucaoSql + ListView.Items.Item[I].Caption + ',';
      VInstrucaoSql := Copy(VInstrucaoSql,1,length(VInstrucaoSql) -1);
      FmSelContrEtiqCobr.tag := 1;
      Close;
   end;}
end;

procedure TFmSelContrEtiqCobr.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   key := So_numero(key);
end;

procedure TFmSelContrEtiqCobr.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
     Button1Click(Sender);
end;

procedure TFmSelContrEtiqCobr.Button1Click(Sender: TObject);
begin

   if (ListView.Items.Count > 200) and not IncluidoAniversariante  then
   begin
      ShowMessage('Número máximo de etiquetas atingido !');
      exit;
   end;

   if Edit1.text <> '' then
   begin
     if FmSelContrEtiqCobr.tag = 0 then
        PesquisaView(StrToInt(Edit1.text))
     else
     begin
        if FmSelContrEtiqCobr.tag = 2 then
        begin
           QueryContratantes.Close;
           QueryContratantes.sql[01] := Edit1.text;
           QueryContratantes.Open;
           if QueryContratantes.Eof and QueryContratantes.Bof then
           begin
              ShowMessage('Código de contratante não localizado !');
              Edit1.setFocus;
              Edit1.SelectAll;
              exit;
           end;
           inc(qtdeEt);
           ListItem := ListView.Items.Add;
           ListItem.Caption := QueryContratantes.FieldByName('codigo').AsString;
           ListItem.SubItems.Add(QueryContratantes.FieldByName('nome').AsString);
           ListItem.SubItems.Add('0');
           ListView.Items.Item[ListView.Items.Count - 1].Checked := true;
           Edit1.SelectAll;
        end
        else
        if FmSelContrEtiqCobr.tag = 3 then
        begin
           if dm.execmd('select codigo_completo,nome from usuario where codigo_completo = ' + Edit1.text,'nome') = '' then
           begin
              ShowMessage('Código de usuário não localizado !');
              Edit1.setFocus;
              Edit1.SelectAll;
              exit;
           end;
           inc(qtdeEt);
           ListItem := ListView.Items.Add;
           ListItem.Caption := dm.QueryGlobal.FieldByName('codigo_completo').AsString;
           ListItem.SubItems.Add(dm.QueryGlobal.FieldByName('nome').AsString);
           ListItem.SubItems.Add('0');
           ListView.Items.Item[ListView.Items.Count - 1].Checked := true;
           Edit1.SelectAll;
        end;
     end;
   end
end;

procedure TFmSelContrEtiqCobr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.execmd('update parametro set vl_parametro = ' + EditCarcCol.text + ' where cd_parametro = ''ETCOL''');
  dm.execmd('update parametro set vl_parametro = ' + EditCaracRow.text + ' where cd_parametro = ''ETROW''');
end;

procedure TFmSelContrEtiqCobr.BitBtn1Click(Sender: TObject);
begin
     IncluidoAniversariante := true;
     Application.CreateForm(TFormRelAniversariantes, FormRelAniversariantes);
     FormRelAniversariantes.tag := 1;
     FormRelAniversariantes.ShowModal;
     while not QRListaAniversariantes.QueryUsuarios.Eof do
     begin
        Edit1.Text := QRListaAniversariantes.QueryUsuariosCodigo_Completo.AsString;
        Button1Click(sender);
        QRListaAniversariantes.QueryUsuarios.next;
     end;
     ShowMessage('Foram incluídos ' + IntTostr(QRListaAniversariantes.QueryUsuarios.RecordCount) + ' usuários');

     QRListaAniversariantes.free;
     FormRelAniversariantes.Free;
     IncluidoAniversariante := false;

end;

procedure TFmSelContrEtiqCobr.Button2Click(Sender: TObject);
var aux : string;
begin
   FmParamEtiq := TFmParamEtiq.create(self);
   FmParamEtiq.showModal;
   FmParamEtiq.free;
   exit;
   aux := dm.GetParam('ALETQ');
   aux := inputbox('informe a altura da etiqueta(somado com o espaçamento vertical entre as etiquetas) em milímetros','informe a altura da etiqueta(somado com o espaçamento vertical entre as etiquetas) em milímetros',aux);
  try
     StrToInt(aux);
     dm.execmd('update parametro set vl_parametro = ''' + aux + ''' where cd_parametro = ''ALETQ''');
  except
     on E: Exception do
        ShowMessage('Nao foi possivel converter em numero o valor informado, informe apenas numero inteiro, operação cancelada!');
  end;

end;

end.
