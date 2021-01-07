unit Informacoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBCtrls;

type
  TFormInformacoes = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtnProcessar: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtnImprimir: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    BitBtnExportar: TBitBtn;
    Label26: TLabel;
    QueryPreferencias: TQuery;
    DataSourcePreferencias: TDataSource;
    QueryPreferenciasRegistro_Unico: TSmallintField;
    QueryPreferenciasMostrar_Informacoes: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInformacoes: TFormInformacoes;

implementation

{$R *.DFM}

procedure TFormInformacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if QueryPreferencias.State in [dsbrowse] then exit;

     try
       QueryPreferencias.Post;
     except
       begin
         ShowMessage('Erro na Gravação da Tabela Preferências');
         QueryPreferencias.Cancel;
       end;
     end;

    QueryPreferencias.Open; 
end;

procedure TFormInformacoes.FormCreate(Sender: TObject);
begin
     QueryPreferencias.Open;
end;

end.
