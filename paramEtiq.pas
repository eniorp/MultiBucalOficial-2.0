unit paramEtiq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFmParamEtiq = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamEtiq: TFmParamEtiq;

implementation

uses udm;

{$R *.dfm}

procedure TFmParamEtiq.Button1Click(Sender: TObject);
begin

  try
     StrtoInt(Edit1.Text);
     StrtoInt(Edit2.Text);
     StrTofloat(Edit3.Text);
     dm.execmd('update parametro set vl_parametro = ''' + Edit1.Text + ''' where cd_parametro = ''ALETQ''');
     dm.execmd('update parametro set vl_parametro = ''' + Edit2.Text + ''' where cd_parametro = ''MSETQ''');    // margem superior
     dm.execmd('update parametro set vl_parametro = ''' + Edit3.Text + ''' where cd_parametro = ''APETQ''');   
     close;
  except
     on E: Exception do
        ShowMessage('Nao foi possivel converter em numero o valor informado, informe apenas numero inteiro, operação cancelada!');
  end;

end;

procedure TFmParamEtiq.FormShow(Sender: TObject);
begin
   Edit1.text := dm.GetParam('ALETQ');
   Edit2.text := dm.GetParam('MSETQ');
   Edit3.text := dm.GetParam('APETQ');

end;

end.
