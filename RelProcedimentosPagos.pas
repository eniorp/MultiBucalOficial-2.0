unit RelProcedimentosPagos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelProcedimentosPagos = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label3: TLabel;
    Label5: TLabel;
    EditMesIni: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    EditAnoIni: TEdit;
    EditMesFim: TEdit;
    EditAnoFim: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditCodDentista: TEdit;
    EditNomeDentista: TEdit;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    Label11: TLabel;
    EditCodServico: TEdit;
    EditNomeServico: TEdit;
    BitBtnPesquisaDentista: TBitBtn;
    BitBtnPesquisaServico: TBitBtn;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    QueryServicosSIP: TIntegerField;
    Label12: TLabel;
    EditValor: TEdit;
    Label13: TLabel;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMesIniExit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure EditCodDentistaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure BitBtnPesquisaServicoClick(Sender: TObject);
    procedure EditCodServicoExit(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelProcedimentosPagos: TFormRelProcedimentosPagos;
  MesAnoIni, MesAnoFim : String;

implementation

uses PesquisaDentista, PesquisaServicos, QRProcedimentosPagos; 


{$R *.DFM}

procedure TFormRelProcedimentosPagos.BitBtnImprimirClick(Sender: TObject);
var Filtro : String;
begin
   MesAnoIni := Trim(EditMesIni.text) + '/' + Trim(EditAnoIni.Text);
   MesAnoFim := Trim(EditMesFim.text) + '/' + Trim(EditAnoFim.Text);

     if MesAnoFim < MesAnoIni then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         EditMesIni.SetFocus;
         Exit;
       end;
       if EditCodDentista.Text <> '0' then
          Filtro := 'Dentista  ' + EditCodDentista.Text + ' -  ' + EditNomeDentista.Text + ' ';
       if EditCodServico.Text <> '0' then
          Filtro := Filtro + 'Serviço  ' + EditCodServico.Text + ' -  ' + EditNomeServico.Text;

       QRProcedimentosPagos.MesAnoIni := MesAnoIni;
       QRProcedimentosPagos.MesAnoFim := MesAnoFim;
       QRProcedimentosPagos.Dentista  := StrToInt(EditCodDentista.text);
       QRProcedimentosPagos.Servico   := StrToInt(EditCodServico.text);
       QRProcedimentosPagos.Valor     := EditValor.Text;
       Application.CreateForm(TQRListaProcedimentosPagos, QRListaProcedimentosPagos);
       QRProcedimentosPagos.QRListaProcedimentosPagos.LabelFiltro.Caption := Filtro;
       QRProcedimentosPagos.QRListaProcedimentosPagos.QRLabelPeriodo1.Caption := MesAnoIni;
       QRProcedimentosPagos.QRListaProcedimentosPagos.QRLabelPeriodo2.Caption := MesAnoFim;
       QRListaProcedimentosPagos.Preview;
       QRListaProcedimentosPagos.Free;
end;

procedure TFormRelProcedimentosPagos.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelProcedimentosPagos.EditMesIniExit(Sender: TObject);
begin
  if not StrToInt(editMesIni.Text) in [0..9] then 
    begin
      showmessage('Valor inválido para campo Mês');
      editMesIni.SetFocus;
    end;
end;

procedure TFormRelProcedimentosPagos.BitBtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelProcedimentosPagos.EditCodDentistaExit(Sender: TObject);
begin
  if (EditCodDentista.Text = '') or (EditCodDentista.Text = '0') then
    begin
      EditCodDentista.Text := '0';
      EditNomeDentista.Text := 'Todos';
      exit;
    end;
  with QueryDentista do
    begin
      close;
      ParamByName('Dentista').asInteger := StrToInt(EditCodDentista.Text);
      Open;
      EditNomeDentista.Text := QueryDentistaNome.Text;
    end;
end;

procedure TFormRelProcedimentosPagos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryDentista.Close;
end;

procedure TFormRelProcedimentosPagos.BitBtnPesquisaDentistaClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormPesquisaDentistas.ShowModal;
     EditCodDentista.Text  := IntToSTr(PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.asInteger);
     EditNomeDentista.Text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasNome.asString;
     FormPesquisaDentistas.QueryDentistas.Close;
     FormPesquisaDentistas.Query50.Close;
     FormPesquisaDentistas.Free;
     EditCodServico.SetFocus;
end;

procedure TFormRelProcedimentosPagos.BitBtnPesquisaServicoClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     FormPesquisaServicos.ShowModal;
     EditCodServico.Text  := PesquisaServicos.FormPesquisaServicos.QueryServicosCodigo.asString;
     EditNomeServico.Text := PesquisaServicos.FormPesquisaServicos.QueryServicosDescricao.asString;
     FormPesquisaServicos.QueryServicos.Close;
     FormPesquisaServicos.Query50.Close;
     FormPesquisaServicos.Free;
     BitBtnImprimir.SetFocus;
end;

procedure TFormRelProcedimentosPagos.EditCodServicoExit(Sender: TObject);
begin
  if (EditCodServico.Text = '') or (EditCodServico.Text = '0') then
    begin
      EditCodServico.Text := '0';
      EditNomeServico.Text := 'Todos';
      exit;
    end;
  with QueryServicos do
    begin
      close;
      ParamByName('Codigo').asInteger := StrToInt(EditCodServico.Text);
      Open;
      EditNomeServico.Text := QueryServicosDescricao.AsString;
    end;

end;

end.
