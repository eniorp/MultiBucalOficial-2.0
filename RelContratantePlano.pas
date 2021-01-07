unit RelContratantePlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelContratantePlano = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxPlano: TComboBox;
    QueryPlanos: TQuery;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    GroupBoxDtBase: TGroupBox;
    MaskEditDataRel: TMaskEdit;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    procedure MontaPlano;

  public
    { Public declarations }
  end;

var
  FormRelContratantePlano: TFormRelContratantePlano;
  Codigo : Integer;
  Referencia: String[7];

implementation

uses QRContratantePlano, udm;

{$R *.DFM}

procedure TFormRelContratantePlano.BitBtnImprimirClick(Sender: TObject);
begin
    if MaskEditDataRel.Text = '  /  /    ' then
     begin
       ShowMessage('Informe a data base');
       exit;
     end;
     QRContratantePlano.Plano := StrToInt(Copy(ComboBoxPlano.Text , 1, 3));
     Application.CreateForm(TQRListaContratantePlano, QRListaContratantePlano);
     QRListaContratantePlano.QRLabel1.Caption := 'Data Base : ' + MaskEditDataRel.Text;
     QRListaContratantePlano.Preview;

     QRListaContratantePlano.Free;
end;

procedure TFormRelContratantePlano.FormCreate(Sender: TObject);
begin
     MontaPlano;
     MaskEditDataRel.Text := dm.GetDataSrv;
end;

procedure TFormRelContratantePlano.MontaPlano;
begin
     ComboBoxPlano.Items.Add('000' + ' - ' + 'Todos');
     with QueryPlanos do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := StrToInt(QueryPlanosCodigo.asString);

               if Codigo < 10 then
                  ComboBoxPlano.Items.Add('00' + QueryPlanosCodigo.asString + ' - '+ QueryPlanosDescricao.asString)
               else
               if (Codigo >= 10) and (Codigo < 100) then
                  ComboBoxPlano.Items.Add('0' + QueryPlanosCodigo.asString + ' - '+ QueryPlanosDescricao.asString)
               else
                  ComboBoxPlano.Items.Add(QueryPlanosCodigo.asString + ' - '+ QueryPlanosDescricao.asString);
              Next;
            end;
      end;
end;

procedure TFormRelContratantePlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPlanos.Close;
end;

procedure TFormRelContratantePlano.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
