unit RelAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls, DBCtrls, ADODB;

type
  TFormRelAgenda = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    LabelMotivo: TLabel;
    ComboBoxTipoContato: TComboBox;
    QueryTipoContato: TQuery;
    QueryTipoContatoCodigo: TIntegerField;
    QueryTipoContatoDescricao: TStringField;
    RadioGroupAgenda: TRadioGroup;
    Label2: TLabel;
    ComboBoxOperador: TComboBox;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorApelido: TStringField;
    Label5: TLabel;
    EditCdContr: TEdit;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Label6: TLabel;
    cboTipoData: TComboBox;
    ADOQueryRegiao: TADOQuery;
    DsRegiao: TDataSource;
    DBLookupComboBoxRegiao: TDBLookupComboBox;
    Label3: TLabel;
    Memo1: TMemo;
    ADOQueryRegiao1: TADOQuery;
    dsRegiao1: TDataSource;
    CheckBox1: TCheckBox;

    procedure BitBtnImprimirClick(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEditPrimeiroChange(Sender: TObject);
    procedure EditCdContrExit(Sender: TObject);
    procedure EditCdContrKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroupAgendaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);

  private
     procedure cargaOperador(MostraExcluidos : boolean);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelAgenda: TFormRelAgenda;
  Codigo : Integer;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRContatos, QRContLigAnalit, QRContLigSint, udm, PesquisaContratante, biblio;

{$R *.DFM}

procedure TFormRelAgenda.BitBtnImprimirClick(Sender: TObject);
begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;

     case RadioGroupAgenda.ItemIndex of
        0 : begin
              QRContatos.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
              QRContatos.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
              QRContatos.tipo := StrToInt(Copy(ComboBoxTipocontato.Text , 1, 3));
              QRContatos.cdOperador := StrToInt(Copy(ComboBoxOperador.Text , 1, 3));
              Application.CreateForm(TQRListaContatos, QRListaContatos);
              QRContatos.QRListaContatos.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
              QRContatos.QRListaContatos.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
              if cboTipoData.Text = 'Data da Agenda' then
              begin

                 QRListaContatos.QueryContatos.SQL[6] := ' where Data_Agenda between ';
                 //QRListaContatos.QueryContatos.sql[09] := 'order by Contato.Data_Agenda, Contato.Tipo, Contato.Hora_Agenda';

              end
              else
              begin

                 QRListaContatos.QueryContatos.SQL[6] := ' where Data_contato  between ';
                 //QRListaContatos.QueryContatos.sql[09] := 'order by Contato.Data_contato, Contato.Tipo, Contato.Hora_contato ';

              end;

              QRListaContatos.QueryContatos.close;
              //QRListaContatos.QueryContatos.sql[08] := 'order by Contato.Data_Agenda, Contato.Tipo, Contato.Hora_Agenda';
              if EditCdContr.text <> '' then
                 QRListaContatos.QueryContatos.sql[09] := ' and c.Codigo = ' + EditCdContr.text;
              if ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
                 QRListaContatos.QueryContatos.sql[09] :=  QRListaContatos.QueryContatos.sql[09] + ' and cid.cd_regiao = ' + ADOQueryRegiao.FieldByName('cd_regiao').AsString ;
              QRListaContatos.Preview;
              QRListaContatos.Free;
            end;
        1 : begin
              QRContLigSint.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
              QRContLigSint.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
              QRContLigSint.tipo := StrToInt(Copy(ComboBoxTipocontato.Text , 1, 3));
              QRContLigSint.oper := StrToInt(Copy(ComboBoxOperador.Text , 1, 3));
              Application.CreateForm(TQRListaContLigSint, QRListaContLigSint);

              if cboTipoData.Text = 'Data da Agenda' then
              begin
                 QRListaContLigSint.QueryContatos.SQL[2] := ' left join tipo_ligacao on (contato.ligacao = tipo_ligacao.codigo) where Data_Agenda between ';
               //  QRListaContLigSint.QueryContatos.SQL[7] := ' group by Contato.Data_Agenda, operador, operador.nome, ligacao, tipo_ligacao.descricao ';
              end
              else
              begin
                 QRListaContLigSint.QueryContatos.SQL[2] := ' left join tipo_ligacao on (contato.ligacao = tipo_ligacao.codigo) where Data_contato between ';
                 //QRListaContLigSint.QueryContatos.SQL[7] := ' group by Contato.Data_contato, operador, operador.nome, ligacao, tipo_ligacao.descricao ';
              end;


              QRContLigSint.QRListaContLigSint.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
              QRContLigSint.QRListaContLigSint.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
              QRContLigSint.QRListaContLigSint.QRLabelTpContato.Caption := Copy(ComboBoxTipoContato.Text,6,length(ComboBoxTipoContato.Text));
              QRContLigSint.QRListaContLigSint.QRLabelOperador.Caption := Copy(ComboBoxOperador.Text,6, length(ComboBoxOperador.Text));
              QRListaContLigSint.Preview;
              QRListaContLigSint.Free;
            end;
        2 : begin
              QRContLigAnalit.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
              QRContLigAnalit.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
              QRContLigAnalit.tipo := StrToInt(Copy(ComboBoxTipocontato.Text , 1, 3));
              QRContLigAnalit.oper := StrToInt(Copy(ComboBoxOperador.Text , 1, 3));
              Application.CreateForm(TQRListaContLigAnalit, QRListaContLigAnalit);
              QRContLigAnalit.QRListaContLigAnalit.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
              QRContLigAnalit.QRListaContLigAnalit.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;

              if ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
                 QRListaContLigAnalit.QueryContatos.sql[08] :=  QRListaContLigAnalit.QueryContatos.sql[08] + ' and cont.cd_regiao_res = ' + ADOQueryRegiao.FieldByName('cd_regiao').AsString ;

              if cboTipoData.Text = 'Data da Agenda' then
                 QRListaContLigAnalit.QueryContatos.SQL[4] := ' left join tipo_ligacao on (tipo_ligacao.codigo = contato.ligacao) where Data_Agenda between '

              else
                 QRListaContLigAnalit.QueryContatos.SQL[4] := ' left join tipo_ligacao on (tipo_ligacao.codigo = contato.ligacao) where Data_Contato between ';


              QRListaContLigAnalit.Preview;
              QRListaContLigAnalit.Free;
            end;
     end;
end;

procedure TFormRelAgenda.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;
procedure TFormRelAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryTipoContato.close;
end;

procedure TFormRelAgenda.FormCreate(Sender: TObject);
begin
     ComboBoxTipoContato.Items.Add('000' + ' - ' + 'Todos');
     with QueryTipoContato do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := QueryTipoContatoCodigo.asInteger;
               ComboBoxTipoContato.Items.Add(biblio.Lpad(QueryTipoContatoCodigo.asString,3,'0') + ' - '+ QueryTipoContatoDescricao.asString);
               //if Codigo < 10 then
               //   ComboBoxTipoContato.Items.Add('0' + QueryTipoContatoCodigo.asString + ' - '+ QueryTipoContatoDescricao.asString)
               //else
               //   ComboBoxTipoContato.Items.Add(QueryTipoContatoCodigo.asString + ' - '+ QueryTipoContatoDescricao.asString);
              Next;
            end;
      end;
    cargaOperador(false);
end;
procedure TFormRelAgenda.cargaOperador(MostraExcluidos : boolean);
begin
     ComboBoxOperador.Items.Clear;
     ComboBoxOperador.Items.Add('000' + ' - ' + 'Todos');
     QueryOperador.Close;
     if MostraExcluidos then
        QueryOperador.sql[1] := ''
     else
        QueryOperador.sql[1] := 'where dtexclusao is null';
     QueryOperador.Open;
     QueryOperador.First;
     while not QueryOperador.Eof do
     begin
       Codigo := QueryOperadorCodigo.asInteger;
       ComboBoxOperador.Items.Add(biblio.lpad(QueryOperadorCodigo.asString,3,'0') + ' - '+ QueryOperadorApelido.asString);
       QueryOperador.Next;
     end;

end;
procedure TFormRelAgenda.FormShow(Sender: TObject);
begin
   MaskEditPrimeiro.text := dm.GetDataSrv;
   ADOQueryRegiao1.Open;
   ADOQueryRegiao.Open;
   ADOQueryRegiao1.Open;
   ADOQueryRegiao1.insert;
   ADOQueryRegiao1.FieldByName('cd_regiao').AsInteger := 0; // para trazer default todas..
end;

procedure TFormRelAgenda.MaskEditPrimeiroChange(Sender: TObject);
begin
   MaskEditUltimo.Text := MaskEditPrimeiro.text;
end;

procedure TFormRelAgenda.EditCdContrExit(Sender: TObject);
begin
   if (EditCdContr.text <> '') then
   begin
      if (Edit2.Text = '') then
         Edit2.Text := dm.execmd('select nome n from contratante where codigo = ' + EditCdContr.text,'n');
   end
   else
      Edit2.text := '';

end;

procedure TFormRelAgenda.EditCdContrKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      Edit2.Text := dm.execmd('select nome n from contratante where codigo = ' + EditCdContr.text,'n');
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormRelAgenda.RadioGroupAgendaClick(Sender: TObject);
begin
 Label5.enabled := (RadioGroupAgenda.ItemIndex = 0);
 EditCdContr.enabled := Label5.enabled;
 BitBtn2.enabled := Label5.enabled;
 Edit2.enabled := Label5.enabled;
end;

procedure TFormRelAgenda.BitBtn2Click(Sender: TObject);
begin
   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   EditCdContr.Text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   Edit2.text := FormPesquisaContratante.QueryContratanteNome.AsString;
   EditCdContr.SetFocus;
   FormPesquisaContratante.free;
end;

procedure TFormRelAgenda.CheckBox1Click(Sender: TObject);
begin
   cargaOperador(CheckBox1.Checked);
end;

end.
