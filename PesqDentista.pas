unit PesqDentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons, Mask,
  DBCtrls, ADODB;

type
  TFmPesqDentista = class(TFmPadrao)
    BitBtnPesquisar: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    CheckBoxHr: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditHr: TMaskEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    CheckBoxCidade: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DsCidade: TDataSource;
    QueryCidade: TQuery;
    GroupBox3: TGroupBox;
    CheckBoxTer: TCheckBox;
    CheckBoxQua: TCheckBox;
    CheckBoxQui: TCheckBox;
    CheckBoxSex: TCheckBox;
    CheckBoxSab: TCheckBox;
    CheckBoxSeg: TCheckBox;
    CheckBoxdiaSem: TCheckBox;
    GroupBox4: TGroupBox;
    EditNmDentista: TEdit;
    GroupBox5: TGroupBox;
    CheckBoxBairro: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    CheckBoxEsp: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DsBairro: TDataSource;
    QueryBairro: TQuery;
    DsEsp: TDataSource;
    QueryEsp: TQuery;
    QueryEspcd_especialidade: TSmallintField;
    QueryEspds_especialidade: TStringField;
    QueryEspativa: TStringField;
    GroupBox7: TGroupBox;
    CheckBoxExcl: TCheckBox;
    Label1: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditNmDentistaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CheckBoxHrClick(Sender: TObject);
    procedure MaskEditHrKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBoxCidadeClick(Sender: TObject);
    procedure CheckBoxdiaSemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBoxBairroClick(Sender: TObject);
    procedure CheckBoxEspClick(Sender: TObject);
  private
    VPesq : string[50]; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqDentista: TFmPesqDentista;

implementation

uses EndDentist;

{$R *.DFM}

procedure TFmPesqDentista.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   FmPesqDentista.Tag := 1;
   Close;
end;

procedure TFmPesqDentista.BitBtnPesquisarClick(Sender: TObject);
begin
  inherited;
   Query1.close;
   Query1.Sql[2] := ' ';

   if EditNmDentista.text <> '' then
      Query1.Sql[1] := ' where nome like ''' + EditNmDentista.Text + '%'''
   else
      Query1.Sql[1] := ' ';

   if CheckBoxHr.checked or CheckBoxdiaSem.checked or CheckBoxCidade.checked
      or CheckBoxBairro.checked or CheckBoxEsp.checked {or not CheckBoxExcl.checked} then
   begin
      if Query1.Sql[1] = ' ' then
         Query1.Sql[2] :=  ' where '
      else
         Query1.Sql[2] := ' and ';

      Query1.Sql[2] := Query1.Sql[2] +
      ' exists(select * from endereco_x_dentista e where ' +
      '  e.cd_dentista = d.codigo ';
     if CheckBoxHr.checked then
         Query1.Sql[2] := Query1.Sql[2] + ' and ''' + MaskEditHr.Text + ''' between e.hr_ini_atend and e.hr_fim_atend ';
     if CheckBoxdiaSem.Checked then
     begin
        if CheckBoxSeg.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.seg = 1';
        if CheckBoxTer.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.ter = 1';
        if CheckBoxQua.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.qua = 1';
        if CheckBoxQui.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.qui = 1';
        if CheckBoxSex.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.sex = 1';
        if CheckBoxSab.Checked then
           Query1.Sql[2] := Query1.Sql[2] + ' and  e.sab = 1';
     end;

     if CheckBoxCidade.Checked and (DBLookupComboBox2.Text <> '') then
        Query1.Sql[2] := Query1.Sql[2] + ' and  e.cd_cidade = ' + QueryCidade.fieldByName('cd_cidade').AsString;
     if CheckBoxBairro.checked and  (DBLookupComboBox1.Text <> '') then
       Query1.Sql[2] := Query1.Sql[2] + ' and  e.cd_bairro = ' + QueryBairro.fieldByName('cd_bairro').AsString;

     Query1.Sql[2] := Query1.Sql[2] + ')';

     if CheckBoxEsp.checked and  (DBLookupComboBox3.Text <> '') then
       Query1.Sql[2] := Query1.Sql[2] + ' and  exists (select * from esp_x_dentista ed where ' +
                                        ' ed.cd_dentista = d.codigo and ed.cd_especialidade = ' +
                                        QueryEsp.fieldByname('cd_especialidade').AsString + ')';


   end;


   if not CheckBoxExcl.Checked then
      Query1.Sql[2] := Query1.Sql[2] +  ' and d.data_exclusao is null ';

   Query1.Open;
//   memo1.lines.add(query1.Text);
   if (CheckBoxHr.checked or CheckBoxdiaSem.checked or CheckBoxCidade.Checked) and Query1.Bof and Query1.Eof and (EditNmDentista.Text <> '') then
      ShowMessage('Não existe dentista com o nome "' + EditNmDentista.Text + '" Com as restrições informadas(Horário, Dia da Semana, Cidade). DICA : para pesquisa de horário, Dia da Semana não preencha o nome do dentista');

   EditNmDentista.SetFocus;
   EditNmDentista.SelectAll;
   VPesq := EditNmDentista.Text;
   Label2.Caption := 'Qtde : ' + IntToStr(Query1.RecordCount);
end;

procedure TFmPesqDentista.EditNmDentistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key = #13) then
   begin
      if vPesq <> EditNmDentista.Text then
         BitBtnPesquisarClick(Sender)
      else
         DBGrid1DblClick(Sender);
   end;

end;

procedure TFmPesqDentista.FormShow(Sender: TObject);
begin
  inherited;
   VPesq := '$#@';
   QueryCidade.Open;
   QueryBairro.Open;
   QueryEsp.Open;
end;

procedure TFmPesqDentista.CheckBoxHrClick(Sender: TObject);
begin
  inherited;
   Label3.Enabled := CheckBoxHr.Checked;
   Label4.Enabled := CheckBoxHr.Checked;
   MaskEditHr.Enabled := CheckBoxHr.Checked;
   if MaskEditHr.CanFocus then
     MaskEditHr.SetFocus
end;

procedure TFmPesqDentista.MaskEditHrKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key = #13) then
      BitBtnPesquisarClick(Sender)

end;

procedure TFmPesqDentista.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not (Query1.Bof and Query1.Eof) and not (Query1.FieldByname('codigo').IsNull) then
  begin
     FmEndDentist := TFmEndDentist.Create(self);
     FmEndDentist.Query1.Close;
     FmEndDentist.Query1.sql[15] := Query1.FieldByname('codigo').asString;
     FmEndDentist.Query1.Open;
     FmEndDentist.ShowModal;
     FmEndDentist.Free;
  end;

end;

procedure TFmPesqDentista.CheckBoxCidadeClick(Sender: TObject);
begin
  inherited;
    DBLookupComboBox2.Enabled := CheckBoxCidade.Checked;
end;

procedure TFmPesqDentista.CheckBoxdiaSemClick(Sender: TObject);
begin
  inherited;
   CheckBoxSeg.Enabled := CheckBoxdiaSem.Checked;
   CheckBoxTer.Enabled := CheckBoxdiaSem.Checked;
   CheckBoxQua.Enabled := CheckBoxdiaSem.Checked;
   CheckBoxQui.Enabled := CheckBoxdiaSem.Checked;
   CheckBoxSex.Enabled := CheckBoxdiaSem.Checked;
   CheckBoxSab.Enabled := CheckBoxdiaSem.Checked;
end;

procedure TFmPesqDentista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f2 then
      BitBtn1Click(Sender);
end;

procedure TFmPesqDentista.CheckBoxBairroClick(Sender: TObject);
begin
  inherited;
    DBLookupComboBox1.Enabled := CheckBoxBairro.Checked;
end;

procedure TFmPesqDentista.CheckBoxEspClick(Sender: TObject);
begin
  inherited;
    DBLookupComboBox3.Enabled := CheckBoxEsp.Checked;
end;

end.
