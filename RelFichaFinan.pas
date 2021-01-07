unit RelFichaFinan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFmRelFichaFinan = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditCdUsuario: TEdit;
    EditNmusu: TEdit;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure EditCdUsuarioExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Vcontrattitular : string[10];
    VCpf : string[15];
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelFichaFinan: TFmRelFichaFinan;

implementation

uses RelFrFinanCliente,senha, udm;

{$R *.dfm}

procedure TFmRelFichaFinan.BitBtn2Click(Sender: TObject);
begin
   FmRelFrFinanCliente := TFmRelFrFinanCliente.create(senha.Empresa,'FICHA FINANCEIRA DO CLIENTE',self);
   FmRelFrFinanCliente.SP_REL_FINANC_CLIENTE.close;
   FmRelFrFinanCliente.SP_REL_FINANC_CLIENTE.Parameters[1].Value := EditCdUsuario.Text;
   FmRelFrFinanCliente.SP_REL_FINANC_CLIENTE.Parameters[2].Value := Edit1.text;
   FmRelFrFinanCliente.SP_REL_FINANC_CLIENTE.Parameters[3].Value := Edit2.text;
   FmRelFrFinanCliente.SP_REL_FINANC_CLIENTE.Open;
   if dm.execmd('select Tipo_Correspondencia tp from contratante where codigo = ''' + Vcontrattitular + '''','tp') = 'Residêncial' then
      FmRelFrFinanCliente.RLLabelEnd.Caption := dm.execmd('select Inclusao, Fone1, Fone2, Fax, Endereco_Residencial endereco,Bairro_Residencial bairro,Cidade_Residencial cidade,Estado_Residencial uf,CEP_Residencial cep,Numero_Res numero,Complemento_Res compl ' +
                                                          ' from contratante where codigo = ' + Vcontrattitular,'endereco')
   else
      FmRelFrFinanCliente.RLLabelEnd.Caption := dm.execmd('select Inclusao, Fone1, Fone2, Fax, Endereco_Comercial endereco,Bairro_Comercial bairro,Cidade_Comercial cidade,Estado_Comercial uf,Cep_Comercial cep,Numero_Com numero,Complemento_Com compl ' +
                                                          ' from contratante where codigo = ' + Vcontrattitular,'endereco');

   FmRelFrFinanCliente.RLLabelBairro.Caption := dm.QueryGlobal.fieldBYName('bairro').AsString;
   FmRelFrFinanCliente.RLLabelCidade.Caption := dm.QueryGlobal.fieldBYName('cidade').AsString;
   FmRelFrFinanCliente.RLLabelCidade.Caption :=  FmRelFrFinanCliente.RLLabelCidade.Caption + ' - ' + dm.QueryGlobal.fieldBYName('uf').AsString;
   FmRelFrFinanCliente.RLLabelCep.Caption := dm.QueryGlobal.fieldBYName('cep').AsString;
   FmRelFrFinanCliente.RLLabelInclusao.Caption := dm.QueryGlobal.fieldBYName('inclusao').AsString;
   FmRelFrFinanCliente.RLLabelEnd.Caption := FmRelFrFinanCliente.RLLabelEnd.Caption + ' Nº ' + dm.QueryGlobal.fieldBYName('numero').AsString;
   if dm.QueryGlobal.fieldBYName('compl').AsString <> '' then
      FmRelFrFinanCliente.RLLabelEnd.Caption := FmRelFrFinanCliente.RLLabelEnd.Caption + ' COMPL: ' + dm.QueryGlobal.fieldBYName('compl').AsString;
   FmRelFrFinanCliente.RLLabelCod.Caption := EditCdUsuario.text;
   FmRelFrFinanCliente.RLLabelCpf.Caption := VCpf;

   FmRelFrFinanCliente.RLLabelFone.Caption := dm.QueryGlobal.fieldBYName('fone1').AsString;
   if dm.QueryGlobal.fieldBYName('fone2').AsString <> '' then
      FmRelFrFinanCliente.RLLabelFone.Caption := FmRelFrFinanCliente.RLLabelFone.Caption + ' / ' + dm.QueryGlobal.fieldBYName('fone2').AsString;
   if dm.QueryGlobal.fieldBYName('fax').AsString <> '' then
      FmRelFrFinanCliente.RLLabelFone.Caption := FmRelFrFinanCliente.RLLabelFone.Caption + ' / ' + dm.QueryGlobal.fieldBYName('fax').AsString;
   FmRelFrFinanCliente.RLLabelTit.caption := EditNmusu.text;
   FmRelFrFinanCliente.RLReportH.PreviewModal;
   FmRelFrFinanCliente.free;
end;

procedure TFmRelFichaFinan.EditCdUsuarioExit(Sender: TObject);
begin
   if FmRelFichaFinan.tag = 0 then
   begin
      EditNmusu.text := dm.execmd('select cpf, nome,contratante_titular c from usuario where codigo = ''' + EditCdUsuario.text + ''' and digito = 0 ','nome');
      Vcontrattitular := dm.QueryGlobal.FieldByName('c').AsString;
      VCpf := dm.QueryGlobal.FieldByName('cpf').AsString;
   end
   else
   begin
      EditNmusu.text := dm.execmd('select CGC_CPF cpf, nome from contratante where codigo = ''' + EditCdUsuario.text + ''' and digito = 0 ','nome');
      Vcontrattitular := EditCdUsuario.text;
      VCpf := dm.QueryGlobal.FieldByName('cpf').AsString;
   end
end;

procedure TFmRelFichaFinan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
