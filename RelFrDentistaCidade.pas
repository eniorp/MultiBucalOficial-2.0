unit RelFrDentistaCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelDentistaCidade = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    ADOQueryH: TADOQuery;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    ADOQuery1: TADOQuery;
    RLLabel7: TRLLabel;
    procedure RLBandDetailHBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelDentistaCidade: TFmFrRelDentistaCidade;

implementation

{$R *.dfm}

procedure TFmFrRelDentistaCidade.RLBandDetailHBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var especialidadeAux : string;
begin
  inherited;
   ADOQuery1.close;
   ADOQuery1.sql[1] := ADOQueryH.FieldByName('cd_dentista').AsString;
   especialidadeAux := '';
   ADOQuery1.open;
   while not ADOQuery1.eof do
   begin
      especialidadeAux := especialidadeAux + ADOQuery1.FieldByName('ds_especialidade').AsString;
      if ADOQuery1.FieldByName('principal').AsString = 'S' then
         especialidadeAux := especialidadeAux + '*';

      especialidadeAux := especialidadeAux + ', ';   

      ADOQuery1.next;
   end;
   delete(especialidadeAux,length(especialidadeAux) - 1,2);
   RLLabel7.caption := especialidadeAux;
end;

end.
