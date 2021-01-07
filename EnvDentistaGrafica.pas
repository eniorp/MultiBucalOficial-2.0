unit EnvDentistaGrafica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFmEnvDentistaGrafica = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
     procedure ProcessaEnvio(Processa:boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEnvDentistaGrafica: TFmEnvDentistaGrafica;

implementation

uses RelEnvDentistaGrafica,senha, udm;

{$R *.dfm}
procedure TFmEnvDentistaGrafica.ProcessaEnvio(Processa:boolean);
begin
   FmFrEnvDentistaGrafica := tFmFrEnvDentistaGrafica.create(senha.Empresa,'ENVIO DE ALTERAÇÕES DE PRESTADORES P/ GRÁFICA',self);
//   FmFrEnvDentistaGrafica.ADOQuery1.Close();
//   FmFrEnvDentistaGrafica.ADOQuery1.Open;
  FmFrEnvDentistaGrafica.SP_ENVIO_DENTISTA_GRAFICA.close;
  FmFrEnvDentistaGrafica.SP_ENVIO_DENTISTA_GRAFICA.open;
   // se processa então flega os registroscom data de envio e alterado para nao

   if (FmFrEnvDentistaGrafica.SP_ENVIO_DENTISTA_GRAFICA.Bof and FmFrEnvDentistaGrafica.SP_ENVIO_DENTISTA_GRAFICA.Eof) then
      ShowMessage('Nâo há alterações em dentista para envio à gráfica')
   else
   begin
      if Processa then
         dm.execmd('declare @data datetime set @data = getdate() update dentista set alterado = ''N'', dt_envio_grafica = @data where alterado = ''S''');

      FmFrEnvDentistaGrafica.RLReportH.PreviewModal;
   end;

   FmFrEnvDentistaGrafica.RLReportH.free
end;
procedure TFmEnvDentistaGrafica.Button2Click(Sender: TObject);
begin
   if application.MessageBox('Confirma o processamento do envio dos dentistas que sofreram alteração para a gráfica?','Aviso',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then

      ProcessaEnvio(true);
end;

procedure TFmEnvDentistaGrafica.Button1Click(Sender: TObject);
begin
      ProcessaEnvio(false);
end;

procedure TFmEnvDentistaGrafica.Button3Click(Sender: TObject);
begin
   if application.MessageBox('Cancela  o processamento do último envio dos dentistas que sofreram alteração para a gráfica?','Aviso',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then
      dm.execmd('declare @data datetime set @data = (select max(dt_envio_grafica) from dentista) update dentista set alterado = ''S'',dt_envio_grafica = null where dt_envio_grafica = @data');

end;

end.
