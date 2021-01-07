unit RelContratanteRepresentante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelContratanteRepresentante = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxRepresentante: TComboBox;
    QueryRepresentante: TQuery;
    QueryRepresentanteCodigo: TSmallintField;
    QueryRepresentanteNome: TStringField;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelContratanteRepresentante: TFormRelContratanteRepresentante;
  Codigo : Integer;

implementation

uses

QRUsuariosContratanteRepresentante;

{$R *.DFM}

procedure TFormRelContratanteRepresentante.BitBtnImprimirClick(Sender: TObject);
begin
    QRUsuariosContratanteRepresentante.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
    Application.CreateForm(TQRListaUsuarioContratanteRepresentante, QRListaUsuarioContratanteRepresentante);
    QRListaUsuarioContratanteRepresentante.Preview;
    QRListaUsuarioContratanteRepresentante.Free;
end;

procedure TFormRelContratanteRepresentante.FormCreate(Sender: TObject);
begin
   ComboBoxRepresentante.Items.Add('00' + ' - ' + 'Todos');
   with QueryRepresentante do
     begin
       Open;
       First;
       while not Eof do
          begin
             Codigo := StrToInt(QueryRepresentanteCodigo.asString);
             if Codigo < 10 then
                ComboBoxRepresentante.Items.Add('0' + QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString)
             else
                ComboBoxRepresentante.Items.Add(QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString);
            Next;
          end;
    end;
end;

procedure TFormRelContratanteRepresentante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryRepresentante.Close;
end;

procedure TFormRelContratanteRepresentante.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
