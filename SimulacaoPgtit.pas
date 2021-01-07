unit SimulacaoPgtit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, Mask, FMTBcd, DB, SqlExpr,enio,
  ADODB, DBTables;

type
  TFmSimulPgTit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    StringGrid1: TStringGrid;
    EditProcura: TEdit;
    BitBtn2: TBitBtn;
    LabelProcura: TLabel;
    Edit1: TEdit;
    MaskEditDtIni: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    SQLQueryTitulo: TSQLQuery;
    BitBtnSair: TBitBtn;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    LabelVrTot_: TLabel;
    EditVrJuros: TEdit;
    Label3: TLabel;
    EditVrSJuros: TEdit;
    Label4: TLabel;
    EditVrTot: TEdit;
    CheckBox1: TCheckBox;
    sp_calcJuros: TADOStoredProc;
    Button2: TButton;
    procedure EditProcuraExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEditDtIniExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditProcuraChange(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    VrJuros : real;
  public
    { Public declarations }
  end;

var
  FmSimulPgTit: TFmSimulPgTit;

implementation

uses udm, PesquisaContratante,senha;

{$R *.dfm}

procedure TFmSimulPgTit.EditProcuraExit(Sender: TObject);

begin
   if EditProcura.text <> '' then
   begin
      Edit1.text := dm.ExecutaComando('select nome from contratante where codigo = ' + EditProcura.text,'nome');
      if Edit1.text = '' then
      begin
         ShowMessage('Código de contratante não encontrado !');
         EditProcura.setfocus;
         EditProcura.selectAll;
         exit;
      end;
      MaskEditDtIniExit(sender);
   end;
end;

procedure TFmSimulPgTit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFmSimulPgTit.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
   key := so_numero(key);
end;

procedure TFmSimulPgTit.FormShow(Sender: TObject);
begin
   StringGrid1.Cells[0,0] := 'Data Pagto';
   StringGrid1.Cells[1,0] := 'Título';
   StringGrid1.Cells[2,0] := 'Desdob';
   StringGrid1.Cells[3,0] := 'Vencto';
   StringGrid1.Cells[4,0] := 'Valor';
   StringGrid1.Cells[5,0] := 'Juros';
   StringGrid1.Cells[6,0] := 'Vr a Pagar';
   StringGrid1.Cells[7,0] := 'Dias Atraso';
   MaskEditDtIni.text := dm.GetDataSrv;
   EditProcura.setfocus;
end;

procedure TFmSimulPgTit.MaskEditDtIniExit(Sender: TObject);
var vCel : smallint;
    VValor : real;
begin
   if EditProcura.Text = '' then
   begin
      ShowMessage('Informe o código do contratante !');
      exit;
   end;
   VValor  := 0;
   VrJuros := 0;
   VCel    := 1;
   SQLQueryTitulo.Close;
   SQLQueryTitulo.SQL[1] := EditProcura.Text;
   if CheckBox1.Checked then
      SQLQueryTitulo.SQL[1] :=  SQLQueryTitulo.SQL[1] + ' and data_vencimento <= convert(datetime,convert(char(10),getdate(),103),103) ';

   SQLQueryTitulo.Open;
   StringGrid1.RowCount := 2;
   While not SQLQueryTitulo.Eof do
   begin
      StringGrid1.Cells[0,VCel] := MaskEditDtIni.text;
      StringGrid1.Cells[1,VCel] := SQLQueryTitulo.FieldByName('numero_titulo').AsString;
      StringGrid1.Cells[2,VCel] := SQLQueryTitulo.FieldByName('desdobramento').AsString;
      StringGrid1.Cells[3,VCel] := SQLQueryTitulo.FieldByName('vencto').AsString;
      StringGrid1.Cells[4,VCel] := FormatFloat('###,###,##0.00',SQLQueryTitulo.FieldByName('valor').AsCurrency);
      VValor := VValor + SQLQueryTitulo.FieldByName('valor').AsCurrency;
      sp_calcJuros.close;
      sp_calcJuros.Parameters[1].Value := SQLQueryTitulo.FieldByName('numero_titulo').AsInteger;
      sp_calcJuros.Parameters[2].Value := SQLQueryTitulo.FieldByName('desdobramento').AsString;
      sp_calcJuros.Parameters[3].Value := MaskEditDtIni.text;
      sp_calcJuros.Open;
      StringGrid1.Cells[5,VCel] := FormatFloat('###,###,##0.00',sp_calcJuros.FieldByName('juros').AsCurrency);
      StringGrid1.Cells[6,VCel] := FormatFloat('###,###,##0.00',sp_calcJuros.FieldByName('juros').AsCurrency + SQLQueryTitulo.FieldByName('valor').AsCurrency);
      StringGrid1.Cells[7,VCel] := SQLQueryTitulo.FieldByName('diaAtraso').AsString;
      VrJuros := VrJuros + sp_calcJuros.FieldByName('juros').AsCurrency;
      inc(VCel);
      StringGrid1.RowCount := StringGrid1.RowCount + 1;
      SQLQueryTitulo.next;
   end;
   if StringGrid1.RowCount > 2 then
      StringGrid1.RowCount := StringGrid1.RowCount - 1;

   EditVrSJuros.text := FormatFloat('###,###,##0.00',VValor);
   EditVrJuros.text  := FormatFloat('###,###,##0.00',vrJuros);
   //EditVrTot.text    := FormatFloat('###,###,##0.00',vrJuros +  StrToFloat(EditVrSJuros.text));
   EditVrTot.text    := FormatFloat('###,###,##0.00',vrJuros +  VValor);
end;

procedure TFmSimulPgTit.BitBtn2Click(Sender: TObject);
begin
   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   EditProcura.Text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   EditProcuraExit(Sender);
   FormPesquisaContratante.free;
end;

procedure TFmSimulPgTit.BitBtn1Click(Sender: TObject);
Var cont : smallint;
begin
   VrJuros := 0;
   For cont := 1 to StringGrid1.RowCount - 1 do
   begin
      sp_calcJuros.close;
      sp_calcJuros.Parameters[1].Value := StringGrid1.Cells[1,cont];
      sp_calcJuros.Parameters[2].Value := StringGrid1.Cells[2,cont];
      sp_calcJuros.Parameters[3].Value := StringGrid1.Cells[0,cont];;
      sp_calcJuros.Open;
      StringGrid1.Cells[5,cont] := FormatFloat('###,###,##0.00',sp_calcJuros.FieldByName('juros').AsCurrency);
      StringGrid1.Cells[6,cont] := FormatFloat('###,###,##0.00',sp_calcJuros.FieldByName('juros').AsCurrency + StrToFloat(StringGrid1.Cells[4,cont]));
      VrJuros := VrJuros + sp_calcJuros.FieldByName('juros').AsCurrency;
   end;

   EditVrJuros.text  := FormatFloat('###,###,##0.00',vrJuros);
   EditVrTot.text    := FormatFloat('###,###,##0.00',vrJuros + StrToFloat(EditVrSJuros.text));
end;

procedure TFmSimulPgTit.EditProcuraChange(Sender: TObject);
var cont : smallint;
begin
   EditVrSJuros.clear;
   EditVrJuros.clear;
   EditVrTot.clear;
   Edit1.clear;
   for cont := 1 to StringGrid1.RowCount - 1 do
     StringGrid1.Rows[cont].Clear;
   StringGrid1.RowCount := 2;
end;

procedure TFmSimulPgTit.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      BitBtn1Click(Sender);
end;

procedure TFmSimulPgTit.CheckBox1Click(Sender: TObject);
begin
  EditProcuraChange(sender);
  EditProcuraExit(sender);
  MaskEditDtIniExit(sender);
end;

procedure TFmSimulPgTit.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
   if ACol <> 0 then
      BitBtn1.setFocus;

end;

procedure TFmSimulPgTit.Button2Click(Sender: TObject);
var  VBanco  : string[10];
     Vagencia,Vconta,VNmCedente,Msg1,Msg2 : string;
     VrCobranca : Real;
     EnderecoAux, BairroAux, CepAux, EstadoAux, Cidadeaux : string;
begin
   if MessageDlg('Cobrar boleto bancário?', mtconfirmation, [mbyes] + [mbno], 0) = MrYes then
      VrCobranca := StrtoFloat(dm.execmd('select valor_cobranca v from preferencia','v'))
   else
      VrCobranca := 0;

   dm.FreeBoletoImagem.ListaBoletos.Clear;
   dm.QueryContasBanco.sql.Clear;
   dm.QueryContasBanco.sql.add('select * from contas_banco where banco = ' + dm.getParam('CBPEBS'));

   dm.QueryContasBanco.Open;

   VBanco := dm.QueryContasBanco.FieldByname('banco').AsString;

   VAgencia := dm.execmd('select * from Contas_Banco where Banco = ' + VBanco + ' and Boleto = 1','agencia');

   if VBanco = '104' then
      Vconta   := dm.QueryGlobal.FieldByName('convenio').AsString
   else
      Vconta   := dm.QueryGlobal.FieldByName('Numero_Conta').AsString;

   Msg1     := dm.QueryGlobal.FieldByName('msg1').AsString;
   Msg2     := dm.QueryGlobal.FieldByName('msg2').AsString;
   VNmCedente := dm.execmd('select  razao_social r from empresa','r');
    // coloquei pra puxar do contas a receber por causa das alteraç~eos de dat de vencimento.(tacio altera por fora)
   dm.QueryTitulos.Close;
   dm.QueryTitulos.sql[0] := ' set dateformat dmy select  * from receber f, contratante c ';
   dm.QueryTitulos.sql[1] := ' where c.codigo = f.codigo_contratante ';
   dm.QueryTitulos.sql[2] := ' and f.Numero_Titulo = ' +   StringGrid1.Cells [1,StringGrid1.Row] + ' and desdobramento = ''' +   StringGrid1.Cells [2,StringGrid1.Row] + ''' and data_vencimento = ''' +   StringGrid1.Cells [3,StringGrid1.Row] + '''' ;
   dm.QueryTitulos.sql[3] := ' ';
   dm.QueryTitulos.sql[4] := ' ';
   dm.QueryTitulos.sql[5] := ' ';
   dm.QueryTitulos.sql[6] := ' ';

   dm.QueryTitulos.open;
   if   senha.NomeSenha = 'ENIO' THEN
      inputbox('','',dm.QueryTitulos.text);

   if Dm.QueryTitulos.FieldByName('tipo_correspondencia').AsString = 'Residêncial' then
      begin
        EnderecoAux    := Dm.QueryTitulos.FieldByName('endereco_residencial').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Numero_Res').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Complemento_Res').AsString;

        BairroAux      := Dm.QueryTitulos.FieldByName('bairro_residencial').AsString;
        CepAux         := Dm.QueryTitulos.FieldByName('cep_residencial').AsString;
        EstadoAux      := Dm.QueryTitulos.FieldByName('estado_residencial').AsString;
        CidadeAux      := Dm.QueryTitulos.FieldByName('cidade_residencial').AsString;
      end
      else
      begin
        EnderecoAux   := Dm.QueryTitulos.FieldByName('endereco_comercial').AsString + ' ' +
                                     Dm.QueryTitulos.FieldByName('Numero_com').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Complemento_com').AsString;

        BairroAux     := Dm.QueryTitulos.FieldByName('bairro_comercial').AsString;
        CepAux        := Dm.QueryTitulos.FieldByName('cep_comercial').AsString;
        EstadoAux     := Dm.QueryTitulos.FieldByName('estado_comercial').AsString;
        CidadeAux     := Dm.QueryTitulos.FieldByName('cidade_comercial').AsString;
     end;
     if( dm.execmd('select count(*) q from faturamento where numero_titulo = ' + Dm.QueryTitulos.FieldByName('numero_titulo').AsString +
      ' and  desdobramento = ''' + Dm.QueryTitulos.FieldByName('desdobramento').AsString + ''' and  codigo_contratante = ' +
      Dm.QueryTitulos.FieldByName('codigo_contratante').AsString,'q')) = '0' then
      begin
         dm.execmd('insert into faturamento (Numero_Titulo,Desdobramento,Tipo_Documento,Codigo_Contratante,Data_Emissao,Data_Vencimento,Valor,Numero_Banco,Tipo_Cobranca,Exportado_Receber,Emitido_Documento,Alteracao_Cobranca, ' + 'Alteracao_Valor,Orcamento,Codigo_Usuario,Cidade,Parcela,Tipo_Pagamento,dtinclusao,empresa,seq_periodo_fat,vr_complemento) ' +

                                     'select Numero_Titulo,Desdobramento,Tipo_Documento,Codigo_Contratante,Data_Emissao,Data_Vencimento,Valor,Numero_Banco,Tipo_Cobranca,1                ,1                ,0                 ,0              ,' + ' Orcamento,Codigo_Usuario,null  ,null   ,Tipo_Pagamento,getdate() ,null   , 0             ,0 ' +
                                     ' from receber where numero_titulo = ' + Dm.QueryTitulos.FieldByName('numero_titulo').AsString +
                                                   ' and  desdobramento = ''' + Dm.QueryTitulos.FieldByName('desdobramento').AsString + ''' and  codigo_contratante = ' + Dm.QueryTitulos.FieldByName('codigo_contratante').AsString);

      end;

      dm.pGeraSeqFaturamento.UnPrepare;
      dm.pGeraSeqFaturamento.Prepare;
      dm.pGeraSeqFaturamento.ParamByName('@tit').AsInteger   := Dm.QueryTitulos.FieldByName('numero_titulo').AsInteger;
      dm.pGeraSeqFaturamento.ParamByName('@Desd').AsString   := Dm.QueryTitulos.FieldByName('desdobramento').AsString;


      //dm.pGeraSeqFaturamento.ParamByName('@vencto').AsString := Dm.QueryTitulos.FieldByName('data_vencimento').AsString;

      // resgata no faturamento a data de vencimento pois essa procedure tem relacionamento com o faturamento e os dados aqui estão vindo do recebimento..
      // isso ocorre pq há alteração do vencimento no faturamento e no recebimento mantem a data de vencimento original.

      dm.pGeraSeqFaturamento.ParamByName('@vencto').AsString := dm.execmd('set dateformat dmy select convert(char(10),data_vencimento,103) dt from faturamento where numero_titulo = ' + Dm.QueryTitulos.FieldByName('numero_titulo').AsString +
      ' and  desdobramento = ''' + Dm.QueryTitulos.FieldByName('desdobramento').AsString + ''' and  codigo_contratante = ' +
      Dm.QueryTitulos.FieldByName('codigo_contratante').AsString,'dt');

      dm.pGeraSeqFaturamento.ExecProc;

      dm.AlimentaDados(VBanco,Vagencia,Vconta,VNmCedente,Msg1,Msg2,
                       Dm.QueryTitulos.FieldByName('Numero_Titulo').AsString,
                       dm.pGeraSeqFaturamento.ParamByName('@seq').AsString,
                       Dm.QueryTitulos.FieldByName('nome').AsString,
                       EnderecoAux,
                       BairroAux,
                       CepAux,
                       EstadoAux,
                       Cidadeaux,
                       Dm.QueryTitulos.FieldByName('cgc_cpf').AsString,
                       Dm.QueryTitulos.FieldByName('Data_Emissao').AsDateTime,
                       StrToDate(MaskEditDtIni.text),
                       StrToFloat(replace(StringGrid1.Cells [6,StringGrid1.Row],'.','')),
                       VrCobranca);


      dm.Clonaboleto;
      dm.FreeBoletoImagem.ShowPreview;


end;

end.
