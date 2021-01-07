unit avisoContratante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, DBCtrls, ADODB;

type
  TFmAvisoContratante = class(TFmPadrao)
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Memo1: TMemo;
    Label1: TLabel;
    Bevel2: TBevel;
    ADOQueryUsuario: TADOQuery;
    ADOQueryAvisoContratante: TADOQuery;
    BitBtn1: TBitBtn;
    ADOQueryAvisoContratantecd_contratante: TIntegerField;
    ADOQueryAvisoContratantecd_tp_aviso: TWordField;
    ADOQueryAvisoContratantedt_aviso: TDateTimeField;
    ADOQueryAvisoContratantepessoa_avisada: TStringField;
    ADOQueryAvisoContratantecd_operador: TIntegerField;
    dsAvisoContratante: TDataSource;
    ADOQueryAvisoContratanteapelido: TStringField;
    DBEdit1: TDBEdit;
    ADOQueryAvisoContratante1: TADOQuery;
    IntegerField1: TIntegerField;
    WordField1: TWordField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dsAvisoContratante1: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAvisoContratante: TFmAvisoContratante;

implementation

uses udm;

{$R *.dfm}

procedure TFmAvisoContratante.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
   if ADOQueryAvisoContratantepessoa_avisada.IsNull or (trim(ADOQueryAvisoContratantepessoa_avisada.AsString) = '') then
   begin
      ShowMessage('Informe o nome da pessoa avisada da falta de código SUS');
      canClose := false;
   end
   else
      if ADOQueryAvisoContratante.State = dsEdit then
         ADOQueryAvisoContratante.Post;
end;

procedure TFmAvisoContratante.BitBtn1Click(Sender: TObject);
begin
  inherited;

   if ADOQueryAvisoContratantepessoa_avisada.IsNull or (trim(ADOQueryAvisoContratantepessoa_avisada.AsString) = '') then
      ShowMessage('Informe o nome da pessoa avisada da falta de código SUS')
   else
   begin
      ADOQueryAvisoContratante.Post;
      close;
   end;

end;

end.
