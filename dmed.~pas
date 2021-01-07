unit dmed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,biblio, Mask, DB, ADODB, ExtCtrls,enio;

type
  TFmDMED = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    SP_GERA_DMED_REG_TOP: TADOStoredProc;
    EditAno: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit4: TEdit;
    Bevel1: TBevel;
    Button2: TButton;
    Label9: TLabel;
    EditAnoRef: TEdit;
    Label10: TLabel;
    EditIdentLaiaute: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure EditAnoExit(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
     procedure registroFIMDmed;
     procedure RegistroDMED(
                          AnoRef,
                          AnoCalend,
                          IndicadorRetificadora,
                          NrRecibo,
                          IdentEstruturaLaiute : string);

    procedure registroRESPO(CPF,
                   Nome,
                   DDD,
                   Telefone,
                   Ramal,
                   Fax,
                   email: string);

     procedure registroDECPJ(
                                CNPJ,
                                NomeEmpresarial,
                                TpDeclarante,
                                RegistroANS,
                                CNES,
                                CPFResp,
                                IndicSituacaoDe,
                                DtEvento: string);
    procedure registroOPPAS;

    procedure registroTOP(
                            CPFTitular,
                            Nome,
                            VrPagoTitAno: String);

   procedure registroDTOP(
                          CPFTitular,
                          Nome,
                          DtNascimento,
                          VrPagoTitAno,
                          grauDMED: String);




  public
    arquivo : TextFile;
    linha : string;    { Public declarations }
  end;

var
  FmDMED: TFmDMED;

implementation

uses udm, manutencaoDMED;

{$R *.dfm}
procedure TFmDMED.RegistroDMED(
                          AnoRef,
                          AnoCalend,
                          IndicadorRetificadora,
                          NrRecibo,
                          IdentEstruturaLaiute : string);
begin
   linha := '';
   linha := linha + 'Dmed'                + '|';   //1	Identificador de registro	C	Fixo	4	Dmed	Sim
   linha := linha + Lpad(AnoRef,4,'0')    + '|';   //2	Ano-referência	N	Fixo	4	2011	Sim
   linha := linha + Lpad(AnoCalend,4,'0') + '|';   //3	Ano-calendário	N	Fixo	4	2010 ou 2011	Sim
   linha := linha + IndicadorRetificadora + '|';   //4	Indicador de retificadora	C	Fixo	1	S - Retificadora   N - Original	Sim
   linha := linha + NrRecibo              + '|';    //5	Número do recibo	N	Fixo	12	-	Não
   linha := linha + IdentEstruturaLaiute  + '|';   //6	Identificador de estrutura do leiaute	C	Fixo	6	L1101M	Sim
   Writeln(arquivo,linha);

end;

procedure TFmDMED.registroRESPO(CPF,
                   Nome,
                   DDD,
                   Telefone,
                   Ramal,
                   Fax,
                   email: string);

begin
   linha := '';
   linha := linha + 'RESPO'  + '|';
   linha := linha + CPF      + '|'; //2	CPF	N	Fixo	11	-	Sim
   linha := linha + Nome     + '|'; //3	Nome	C	Variável	60	-	Sim
   linha := linha + DDD      + '|'; // 4	DDD	N	Fixo	2	-	Sim
   linha := linha + Telefone + '|'; // 5	Telefone	N	Fixo	8	-	Sim
   linha := linha + Ramal    + '|'; // 6	Ramal	N	Variável	6	-	Não
   linha := linha + Fax      + '|'; // 7	Fax	N	Fixo	8	-	Não
   linha := linha + email    + '|'; // 8	Correio eletrônico	C	Variável	50	-	Não
   Writeln(arquivo,linha);
end;

procedure TFmDMED.registroDECPJ(
                                CNPJ,
                                NomeEmpresarial,
                                TpDeclarante,
                                RegistroANS,
                                CNES,
                                CPFResp,
                                IndicSituacaoDe,
                                DtEvento: string);


begin
   CNPJ := Replace(Replace(Replace(CNPJ,'-',''),'.',''),'/','');
   linha := '';
   linha := linha + 'DECPJ'         + '|'; // '1	Identificador de registro	C	Fixo	5	DECPJ	Sim
   linha := linha + CNPJ            + '|'; //2	CNPJ	N	Fixo	14	-	Sim
   linha := linha + NomeEmpresarial + '|'; //3	Nome empresarial	C	Variável	150	-	Sim
   linha := linha + TpDeclarante    + '|'; //4	Tipo do declarante	1 - Prestador de serviço de saúde; 2 - Operadora de plano privado de assistência à saúde; 3 - Prestador de serviço de saúde e Operadora de plano privado de assistência a saúde.	Sim
   linha := linha + RegistroANS     + '|';//5	Registro ANS
   linha := linha + CNES            + '|';//6	CNES	N	Fixo	7	-	Não
   linha := linha + CPFResp         + '|';//7	CPF responsável perante o CNPJ	N	Fixo	11	-	Sim
   linha := linha + IndicSituacaoDe + '|';//8	Indicador de situação da declaração	C	Fixo	1	S - Declaração de situação especial; N - Não é declaração de situação especial.	Sim
   linha := linha + DtEvento        + '|';//9	Data do evento	D	Fixo	8	-	Não
   Writeln(arquivo,linha);

end;

procedure TFmDMED.registroOPPAS;
begin
    linha := 'OPPAS|';
    Writeln(Arquivo,linha);
end;

procedure TFmDMED.registroFIMDmed;
begin
    linha := 'FIMDmed|';
    Writeln(Arquivo,linha);
end;

procedure TFmDMED.registroDTOP(
                          CPFTitular,
                          Nome,
                          DtNascimento,
                          VrPagoTitAno,
                          grauDMED: String);
begin
   Nome := replace(Nome,'.',' ');
   Nome := Trim(Nome);
   delete(VrPagoTitAno,length(VrPagoTitAno) - 2,1);
   if VrPagoTitAno = '00' then
    VrPagoTitAno := '0';
   if length(CPFTitular) > 0 then
      CPFTitular := biblio.Lpad(CPFTitular,11,'0');
   linha := '';
   linha := linha + 'DTOP'       + '|';
   linha := linha + CPFTitular   + '|';
   linha := linha + DtNascimento + '|';
   linha := linha + Nome         + '|';
   linha := linha + grauDMED     + '|';
   linha := linha + VrPagoTitAno + '|';
   Writeln(Arquivo,linha);
end;


procedure TFmDMED.registroTOP(
                                CPFTitular,
                                Nome,
                                VrPagoTitAno: String);
begin
   Nome := replace(Nome,'.',' ');
   Nome := Trim(Nome);
   delete(VrPagoTitAno,length(VrPagoTitAno) - 2,1);
   if VrPagoTitAno = '00' then
      VrPagoTitAno := '0';
   if length(CPFTitular) > 0 then
      CPFTitular := biblio.Lpad(CPFTitular,11,'0');


   linha := '';
   linha := linha + 'TOP'        + '|';
   linha := linha + CPFTitular   + '|';
   linha := linha + Nome         + '|';
   linha := linha + VrPagoTitAno + '|';
   Writeln(Arquivo,linha);
end;

procedure TFmDMED.Button1Click(Sender: TObject);
var RegANS : string;
    cpfResp : string;
    qtReg   : Integer;
    VrTotal : real;
begin
   if not DirectoryExists('C:\DMED') then
      ForceDirectories('C:\DMED');

   if EditAno.Text = '' then
   begin
      ShowMessage('Informe o Ano para geração do arquivo');
      editano.SetFocus;
      exit;
   end;

   if ComboBox1.ItemIndex = -1 then
   begin
      ShowMessage('Informe o campo "Indicador de  Situação da Declaração" para geração do arquivo');
      ComboBox1.SetFocus;
      exit;
   end;

   if (ComboBox2.Text = 'Sim') and (Edit4.text = '') then
   begin
      ShowMessage('Quando a Declaração for retificadora é necessário preencher o número do recibo da última declaração entregue');
      Edit4.SetFocus;
      exit;
   end;


    qtReg   := 0;
    VrTotal := 0;

    AssignFile(arquivo,Edit1.Text);
    Rewrite(arquivo);
    registroDMED(EditAnoRef.Text,EditAno.Text,Copy(ComboBox2.Text,1,1),'',EditIdentLaiaute.text);

    registroRESPO(dm.GetParam('DMED02'),
                  dm.GetParam('DMED03'),
                  dm.GetParam('DMED04'),
                  dm.GetParam('DMED05'),
                  '',
                  dm.GetParam('DMED07'),
                  dm.GetParam('DMED08'));

    RegANS := dm.execmd('select vl_parametro from parametro where cd_parametro = ''CDRANS''','vl_parametro');
    cpfResp := dm.GetParam('DMED02');
    dm.execmd('select * from empresa','cgc');

    registroDECPJ(DM.QueryGlobal.fieldByName('cgc').AsString,
                  DM.QueryGlobal.fieldByName('razao_social').AsString,
                  '2', // segundo Gabi a multi é 2
                   RegANS,
                   '',
                   cpfResp,// CPF RESP
                   Copy(ComboBox1.Text,1,1),
                   trim(Copy(MaskEdit1.Text,1,2) + Copy(MaskEdit1.Text,4,2) + Copy(MaskEdit1.Text,7,4)));
    registroOPPAS;
    SP_GERA_DMED_REG_TOP.Close;
    SP_GERA_DMED_REG_TOP.Parameters[1].Value := '01/01/' + EditAno.Text;
    SP_GERA_DMED_REG_TOP.Parameters[2].Value := '31/12/' + EditAno.Text;
    SP_GERA_DMED_REG_TOP.Open;
    while not SP_GERA_DMED_REG_TOP.Eof do
    begin
        inc(qtReg);
        VrTotal := VrTotal + SP_GERA_DMED_REG_TOP.FieldByName('VALOR_PAGO').AsCurrency;
        if SP_GERA_DMED_REG_TOP.FieldByName('LG_TITULAR').AsString = 'A' then
        begin
               registroTOP(SP_GERA_DMED_REG_TOP.FieldByName('CGC_CPF').AsString,
                   SP_GERA_DMED_REG_TOP.FieldByName('NM_CONTRATANTE').AsString,
                   FormatFloat('########.00',SP_GERA_DMED_REG_TOP.FieldByName('VALOR_PAGO').AsCurrency));
        end
        else
        begin

               registroDTOP(SP_GERA_DMED_REG_TOP.FieldByName('CGC_CPF').AsString,
                   SP_GERA_DMED_REG_TOP.FieldByName('NM_CONTRATANTE').AsString,
                   FormatDatetime('yyyymmdd',SP_GERA_DMED_REG_TOP.FieldByName('DT_NASCIMENTO').AsDatetime),
                   FormatFloat('########.00',SP_GERA_DMED_REG_TOP.FieldByName('VALOR_PAGO').AsCurrency),
                   SP_GERA_DMED_REG_TOP.FieldByName('grau_parentescoDMED').AsString);

        end;
        SP_GERA_DMED_REG_TOP.Next;
    end;

    SP_GERA_DMED_REG_TOP.Close;
    registroFIMDmed;
    CloseFile(arquivo);

    Edit2.Text := IntToStr(qtReg);
    Edit3.Text := FormatFloat('###,###,###,###,###.00',VrTotal);
    ShowMessage('Arquivo ' + Edit1.Text + '. Gerado com sucesso!');

end;

procedure TFmDMED.ComboBox1Change(Sender: TObject);
begin
  Label2.Enabled := ComboBox1.ItemIndex = 0;
  MaskEdit1.Enabled := Label2.Enabled;
  if not MaskEdit1.Enabled then
    MaskEdit1.Clear;
end;

procedure TFmDMED.EditAnoExit(Sender: TObject);
begin
   Edit1.Text := 'C:\DMED\DMED_' + EditAno.Text + '.TXT'; 
end;

procedure TFmDMED.ComboBox2Change(Sender: TObject);
begin
  Label8.Enabled := ComboBox2.ItemIndex = 0;
  Edit4.Enabled := Label8.Enabled;
  if not Edit4.Enabled then
    Edit4.Clear;
end;

procedure TFmDMED.Button2Click(Sender: TObject);
begin
   FmManutencaoDMED := TFmManutencaoDMED.create(self);
   FmManutencaoDMED.ShowMOdal;
   FmManutencaoDMED.Free;
end;

end.
