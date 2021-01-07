unit EfetivaPagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons, Mask;

type
  TFmEfetivaPagto = class(TFmPadrao)
    ComboBoxTpPagto: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Query1id_pagto: TIntegerField;
    Query1tp_pagto: TStringField;
    Query1periodo: TStringField;
    Query1dt_pagto: TDateTimeField;
    Query1vr_pagto: TFloatField;
    Query1operador: TStringField;
    EditReferencia: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
     procedure EfetivaPagtoDentista;
     procedure EfetivaPagtoProtetico;
  public
    { Public declarations }
  end;

var
  FmEfetivaPagto: TFmEfetivaPagto;

implementation

uses udm,senha;

{$R *.DFM}

procedure TFmEfetivaPagto.BitBtn1Click(Sender: TObject);
begin
  inherited;
   If application.MessageBox('Ao efetivar o pagamento os registros do período informado não poderão sofrer alteração, confirma?','Confirmação',
     MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
      Exit;
   case ComboBoxTpPagto.ItemIndex of

     0 : EfetivaPagtoDentista;
     1 : EfetivaPagtoProtetico;

   end;
   Query1.Close;
   Query1.Open;


end;
procedure TFmEfetivaPagto.EfetivaPagtoDentista;
var Vmax : String;
begin
   if dm.ExecutaComando('select count(*) qt from itens_pagDentista where id_pagto is null and MesAno = ''' + EditReferencia.text + '''','qt') = '0' then
   begin
      ShowMessage('Não existe registros em aberto para o período selecionado, operação cancelada !');
      exit;
   end;
   dm.BeginTran;
   try
      dm.ExecutaComando('insert into EfetivaPagto values (''D'',''' + EditReferencia.text + ''',getdate(),''' + senha.apelido + ''',0)');
      Vmax := dm.ExecutaComando('select max(id_pagto) m from EfetivaPagto','m');
      dm.ExecutaComando('update itens_pagDentista  set id_pagto = ' + Vmax + ' where id_pagto is null and MesAno = ''' + EditReferencia.text + '''');
      dm.ExecutaComando('update EfetivaPagto set vr_pagto = (select sum(valor) from itens_pagDentista where id_pagto = ' + Vmax + ') where id_pagto = + ' + Vmax);
   except
   on E: Exception do
   begin
      dm.Rollback;
      ShowMessage('Ocorreu um erro ao tentar efetivar o pagamento de Dentista, erro : ' + e.message);
      Exit;
   end;
   end;
   dm.commit;
   ShowMessage('Efetivação de Pagamento dentista efetuado com sucesso ');
end;
procedure TFmEfetivaPagto.EfetivaPagtoProtetico;
var Vmax : String;
begin
   if dm.ExecutaComando('select count(*) qt from itens_pagProtetico where id_pagto is null and MesAno = ''' + EditReferencia.text + '''','qt') = '0' then
   begin
      ShowMessage('Não existe registros em aberto para o período selecionado, operação cancelada !');
      exit;
   end;

   dm.BeginTran;
   try
      dm.ExecutaComando('insert into EfetivaPagto values (''P'',''' + EditReferencia.text + ''',getdate(),''' + senha.apelido + ''',0)');
      Vmax := dm.ExecutaComando('select max(id_pagto) m from EfetivaPagto','m');
      dm.ExecutaComando('update itens_pagProtetico set id_pagto = ' + Vmax + ' where id_pagto is null and MesAno = ''' + EditReferencia.text + '''');
      dm.ExecutaComando('update EfetivaPagto set vr_pagto = (select sum(valor) from itens_pagProtetico where id_pagto = ' + Vmax + ') where id_pagto = + ' + Vmax);
   except
   on E: Exception do
   begin
      dm.Rollback;
      ShowMessage('Ocorreu um erro ao tentar efetivar o pagamento de Protetico, erro : ' + e.message);
      Exit;
   end;
   end;
   dm.commit;
   ShowMessage('Efetivação de Pagamento dentista efetuado com sucesso ');
end;
procedure TFmEfetivaPagto.FormShow(Sender: TObject);
begin
  inherited;
  Query1.close;
  Query1.open;
//  criar trigger para inibir alteração em periodos fechados
//  criar opção de exclusão da efetivação
end;

procedure TFmEfetivaPagto.BitBtn2Click(Sender: TObject);
begin
  inherited;
   If application.MessageBox('Confirma o cancelamento de pagamento ?','Confirmação',
     MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
      Exit;
   try
      dm.BeginTran;
      case ComboBoxTpPagto.ItemIndex of

         0 : dm.ExecutaComando('update itens_pagDentista set id_pagto = null where id_pagto  = ' + Query1.FieldByName('id_pagto').AsString);
         1 : dm.ExecutaComando('update itens_pagProtetico set id_pagto = null where id_pagto  = ' + Query1.FieldByName('id_pagto').AsString);
      end;
      dm.ExecutaComando('delete EfetivaPagto where id_pagto = ' + Query1.FieldByName('id_pagto').AsString);
      dm.Commit;
   except
      on E: Exception do
      begin
         dm.Rollback;
         ShowMessage('Não foi possível cancelar a efetivação do pagamento de dentista. ' + E.message);
      end;
   end;

   Query1.Close;
   Query1.Open;
end;

end.
