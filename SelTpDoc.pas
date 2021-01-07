unit SelTpDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, DBTables, ExtCtrls;

type
  TFmSelTpDoc = class(TForm)
    ListView: TListView;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    Query1: TQuery;
    RadioGroup1: TRadioGroup;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ListItem: TListItem;
    Procedure MontaView;
    procedure LimpaView(flag: Boolean;Classif : String);

  public
    { Public declarations }
  end;

var
  FmSelTpDoc: TFmSelTpDoc;

implementation

{$R *.dfm}

{ TFmSelTpDoc }

procedure TFmSelTpDoc.LimpaView(flag: Boolean;Classif : String);
Var I : Integer;

begin
   Classif := Uppercase(Classif);
   if Classif = 'TODOS' then
   begin
      For I := 0 to ListView.Items.Count - 1 do
         ListView.Items.Item[I].Checked := flag;
   end
   else
      For I := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[I].SubItems[1] = Classif then
            ListView.Items.Item[I].Checked := flag;
end;

procedure TFmSelTpDoc.MontaView;
Begin
   ListView.Items.Clear;
   Query1.close;
   Query1.open;
   While Not Query1.EOF do
   Begin
      ListItem := ListView.Items.Add;
      ListItem.Caption := Query1.FieldByName('codigo').AsString;
      ListItem.SubItems.Add(Query1.FieldByName('descricao').AsString);
      ListItem.SubItems.Add(Query1.FieldByName('classificacao').AsString);
      Query1.Next;
  end;
end;

procedure TFmSelTpDoc.FormShow(Sender: TObject);
begin
   FmSelTpDoc.tag := 0;
end;

procedure TFmSelTpDoc.BitBtn1Click(Sender: TObject);
begin
  FmSelTpDoc.tag := 1;
  close;
end;

procedure TFmSelTpDoc.RadioGroup1Click(Sender: TObject);
begin
   LimpaView(false,'TODOS');
   case RadioGroup1.ItemIndex of
     0 : LimpaView(true,'TODOS');
     1 : LimpaView(true,'MENSALIDADE');
     2 : LimpaView(true,'ORÇAMENTO');
   end;
end;

procedure TFmSelTpDoc.BitBtn2Click(Sender: TObject);
begin
   LimpaView(false,'TODOS');
end;

procedure TFmSelTpDoc.FormCreate(Sender: TObject);
begin
   MontaView;
 end;

end.






