unit RelOrcamentosFinalizados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ADODB, DBCtrls;

type
  TFormRelOrcamentosFinalizados = class(TForm)
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
    DsRegiao: TDataSource;
    ADOQueryRegiao: TADOQuery;
    GroupBox1: TGroupBox;
    DBLookupComboBoxRegiao: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    EditCodigo: TEdit;
    BitBtnPesquisar: TBitBtn;
    EditNomeDentista: TEdit;
    CheckBox_apenasAtivos: TCheckBox;
    CheckBox_Excel: TCheckBox;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMesIniExit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelOrcamentosFinalizados: TFormRelOrcamentosFinalizados;
  MesAnoIni, MesAnoFim : String;

implementation

uses QROrcamentosFinalizados, QROrcamentosFinalizadosAtraso,
  PesquisaDentista, udm,tacio,senha; //, RelOrcamentos;


{$R *.DFM}

procedure TFormRelOrcamentosFinalizados.BitBtnImprimirClick(Sender: TObject);
begin
     if (EditCodigo.Text = '') or (EditCodigo.Text = '0') then
      begin
         EditCodigo.Text := '0';
         EditNomeDentista.Text := 'Todos';

     end
     else
     begin
       dm.QueryDentista.close;
       dm.QueryDentista.ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
       dm.QueryDentista.Open;
       EditNomeDentista.Text := dm.QueryDentistaNome.Text;
       if EditNomeDentista.Text = '' then
       begin
          ShowMessage('Dentista nao localizado ');
          exit;
        end;
     end;

   MesAnoIni := Trim(EditMesIni.text) + '/' + Trim(EditAnoIni.Text);
   MesAnoFim := Trim(EditMesFim.text) + '/' + Trim(EditAnoFim.Text);

   if MesAnoFim < MesAnoIni then
     begin
       ShowMessage('A última Data não pode ser Menor que a primeira !!!');
       EditMesIni.SetFocus;
       Exit;
     end;

   case FormRelOrcamentosFinalizados.Tag of
     1: begin
          Application.CreateForm(TQRListaOrcamentosFinalizados, QRListaOrcamentosFinalizados);
          QRListaOrcamentosFinalizados.QueryItensPagDentista.Parameters.ParamByName('MesAno1').Value := MesAnoIni;
          QRListaOrcamentosFinalizados.QueryItensPagDentista.Parameters.ParamByName('MesAno2').Value := MesAnoFim;
          if CheckBox_apenasAtivos.Checked then
            QRListaOrcamentosFinalizados.QueryItensPagDentista.SQL[16]:='     and u.data_exclusao is null '
          else
            QRListaOrcamentosFinalizados.QueryItensPagDentista.SQL[16]:=' ';

           QRListaOrcamentosFinalizados.QRLabelEmpresa.Caption := Senha.Empresa;

          QROrcamentosFinalizados.QRListaOrcamentosFinalizados.QRLabelPeriodo1.Caption := MesAnoIni;
          QROrcamentosFinalizados.QRListaOrcamentosFinalizados.QRLabelPeriodo2.Caption := MesAnoFim;

          if ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
             QRListaOrcamentosFinalizados.QueryItensPagDentista.SQL[32] := ' and c.cd_regiao = ' + ADOQueryRegiao.FieldByName('cd_regiao').AsString;
          QROrcamentosFinalizados.QRListaOrcamentosFinalizados.QRLabelRegiao.Caption := 'Região : ' +  DBLookupComboBoxRegiao.Text;
          QRListaOrcamentosFinalizados.QRLabelDentista.Caption := 'DENTISTA : ' +  EditNomeDentista.Text;
          if EditCodigo.Text <> '0' then
               QRListaOrcamentosFinalizados.QueryItensPagDentista.SQL[32] := QRListaOrcamentosFinalizados.QueryItensPagDentista.SQL[32] + ' and o.dentista = ' + EditCodigo.Text;

          QRListaOrcamentosFinalizados.QueryItensPagDentista.open;
          if CheckBox_Excel.Checked then
            ToExcel(QRListaOrcamentosFinalizados.QueryItensPagDentista,'Finalizados')
          else
            QRListaOrcamentosFinalizados.Preview;
          QRListaOrcamentosFinalizados.Free;
        end;
     2: begin
          QROrcamentosFinalizadosAtraso.MesAnoIni := MesAnoIni;
          QROrcamentosFinalizadosAtraso.MesAnoFim := MesAnoFim;
          Application.CreateForm(TQRListaOrcamentosFinalizadosAtraso, QRListaOrcamentosFinalizadosAtraso);
          QROrcamentosFinalizadosAtraso.QRListaOrcamentosFinalizadosAtraso.QRLabelPeriodo1.Caption := MesAnoIni;
          QROrcamentosFinalizadosAtraso.QRListaOrcamentosFinalizadosAtraso.QRLabelPeriodo2.Caption := MesAnoFim;
          QRListaOrcamentosFinalizadosAtraso.Preview;
          QRListaOrcamentosFinalizadosAtraso.Free;
        end;
     end;
end;

procedure TFormRelOrcamentosFinalizados.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelOrcamentosFinalizados.EditMesIniExit(Sender: TObject);
begin
  if not StrToInt(editMesIni.Text) in [0..9] then 
    begin
      showmessage('Valor inválido para campo Mês');
      editMesIni.SetFocus;
    end;
end;

procedure TFormRelOrcamentosFinalizados.BitBtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelOrcamentosFinalizados.FormShow(Sender: TObject);
begin
   ADOQueryRegiao.Open;
   if FormRelOrcamentosFinalizados.Tag=1 then
    CheckBox_apenasAtivos.Visible:=true
   else
     CheckBox_apenasAtivos.Visible:=false;
end;

procedure TFormRelOrcamentosFinalizados.BitBtnPesquisarClick(
  Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   if FormPesquisaDentistas.QueryDentistas.RecordCount > 0 then
   begin
      EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
      EditCodigo.SetFocus();
   end;
   FormPesquisaDentistas.free;

end;

procedure TFormRelOrcamentosFinalizados.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
   begin
     if (EditCodigo.Text = '') or (EditCodigo.Text = '0') then
      begin
         EditCodigo.Text := '0';
         EditNomeDentista.Text := 'Todos';
         exit;
     end;
     dm.QueryDentista.close;
     dm.QueryDentista.ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
     dm.QueryDentista.Open;
     EditNomeDentista.Text := dm.QueryDentistaNome.Text;
     if EditNomeDentista.Text = '' then
        ShowMessage('Dentista nao localizado ');
  end;
end;

end.
