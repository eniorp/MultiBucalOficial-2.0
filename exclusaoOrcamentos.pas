{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit exclusaoOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons,enio,
  ADODB;

type
  TFmExclusaoOrcamentos = class(TFmPadrao)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    LabelQtdeorc: TLabel;
    Bevel3: TBevel;
    sp_excluiOrcamento: TStoredProc;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmExclusaoOrcamentos: TFmExclusaoOrcamentos;

implementation

uses udm, Senha;

{$R *.DFM}

procedure TFmExclusaoOrcamentos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
      BitBtn1Click(Sender);
   key := so_numero(key);
end;

procedure TFmExclusaoOrcamentos.Edit1Change(Sender: TObject);
begin
  inherited;
   BitBtn2.Enabled := false;
   Query1.Close;
   LabelQtdeorc.Caption := '';
end;

procedure TFmExclusaoOrcamentos.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if Edit1.Text <> '' then
   begin
      query1.close;
      query1.ParamByName('dias').Asstring := Edit1.Text;
      query1.Open;
      LabelQtdeorc.Caption := IntToStr(query1.RecordCount) + ' Orçamentos';
   end
   else
      showmessage('Informe a quantidade de dias para efetuar a seleção ');

   BitBtn2.enabled := not (query1.Bof and query1.Eof);
end;

procedure TFmExclusaoOrcamentos.BitBtn2Click(Sender: TObject);
begin
  inherited;
   If Application.MessageBox(Pchar('Confirma a exclusão de ' + LabelQtdeorc.Caption + ' ?'),'Exclusão de Orçamentos',MB_YesNo + MB_DEFBUTTON2) = MrYes then
   begin
      Query1.First;
      while not Query1.eof do
      begin
         sp_excluiOrcamento.UnPrepare;
         sp_excluiOrcamento.Prepare;
         sp_excluiOrcamento.ParamByName('@orc').AsInteger     := Query1.FieldByName('numero').AsInteger;
         sp_excluiOrcamento.ParamByName('@cdFuncExcl').AsInteger := senha.Codigo_Operador;
         try
            sp_excluiOrcamento.ExecProc;
         except
         on E: Exception do
             ShowMessage('Oroccreram erros ao tentar excluir os orçamentos(' + E.Message + ')');
         end;
         Query1.Next;
      end;
      query1.close;
      query1.Open;
      If query1.Bof and query1.Eof then
        showMessage('Orçamentos excluídos com sucesso - Para recuperar orçamentos excluidos tabela interna orcamento_bck')

   end;
end;

end.
