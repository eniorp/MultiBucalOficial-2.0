unit CadTabPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls;

type
  TFmCadTabPagto = class(TFmPadrao)
    ADOQueryTabPagto: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ADOQueryTabPagtoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    TipoTabela : char;
  end;

var
  FmCadTabPagto: TFmCadTabPagto;

implementation

uses udm, TabPagtoVrServico, CopiarTab;

{$R *.dfm}

procedure TFmCadTabPagto.Button1Click(Sender: TObject);
begin
  inherited;
   FmTabPagtoVrServico := TFmTabPagtoVrServico.create(self);
   FmTabPagtoVrServico.Edit1.text := ADOQueryTabPagto.FieldByName('cd_tabela').AsString;

   FmTabPagtoVrServico.Button1Click(sender);
   FmTabPagtoVrServico.ShowModal;
   FmTabPagtoVrServico.Free;
end;

procedure TFmCadTabPagto.Button2Click(Sender: TObject);
// var CdTabela : string;
begin
  inherited;
     if ADOQueryTabPagto.State <> dsBrowse then
     begin
       ShowMessage('Salve o registro da tabela antes de prosseguir');
       exit;
     end;
     if dm.execmd('select count(*) q  from TabPagto_vrServico where cd_tabela = ' + ADOQueryTabPagto.FieldByName('cd_tabela').AsString,'q') <> '0' then
     begin
       ShowMessage('Para copiar itens de uma tabela para outra, a tabela de destino deverá estár vazia');
       exit;
     end;
     FmCopiarTab := TFmCopiarTab.create(self);
     FmCopiarTab.ShowModal;
     if FmCopiarTab.tag = 1 then
     begin
        if application.MessageBox(Pchar('Este procedimento irá copiar os valores da tabela ' + FmCopiarTab.Edit1.Text + ' para a nova tabela ' + ADOQueryTabPagto.FieldByName('cd_tabela').AsString + ', confirma?'),'Alerta',
           MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then
        begin
           try
//              memo1.lines.add('insert into TabPagto_vrServico select ' + ADOQueryTabPagto.FieldByName('cd_tabela').AsString +
//              ', cd_servico, vr_dentista + (vr_dentista * (' + FmCopiarTab.EditAcresDent.text + '/100)), vr_protetico + (vr_protetico * (' +
//              FmCopiarTab.EditAcresProt.Text + '/100)) from TabPagto_vrServico where cd_tabela = ' + FmCopiarTab.Edit1.Text);
              dm.execmd('insert into TabPagto_vrServico select ' + ADOQueryTabPagto.FieldByName('cd_tabela').AsString +
              ', cd_servico, vr_dentista + (vr_dentista * (' + FmCopiarTab.EditAcresDent.text + '/100.)) ' +
              ' from TabPagto_vrServico where cd_tabela = ' + FmCopiarTab.Edit1.Text);
           except on ex: exception do
              ShowMessage('Ocorreu um erro ao tentar copiar os dados da tabela, utilize (.) ao invés de (,) nos percentuais de acréscimo. Erro : ' + ex.Message);
           end;
        end;
     end;
     FmCopiarTab.free;

end;

procedure TFmCadTabPagto.FormShow(Sender: TObject);
begin
  inherited;
   ADOQueryTabPagto.Open;
end;

procedure TFmCadTabPagto.ADOQueryTabPagtoNewRecord(DataSet: TDataSet);
begin
  inherited;
  ADOQueryTabPagto.FieldByName('tipo').AsString := TipoTabela;
end;

end.
