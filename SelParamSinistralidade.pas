unit SelParamSinistralidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, DBCtrls, Buttons, Mask,Biblio,
  ADODB;

type
  TFormParamSinistralidade = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    PanelPlano: TPanel;
    PanelGrpContrat: TPanel;
    PanelContrat: TPanel;
    Panel5: TPanel;
    QueryGrpContratante: TQuery;
    DsGrpContratante: TDataSource;
    DsPlano: TDataSource;
    QueryPlano: TQuery;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox2: TGroupBox;
    DBLookupComboBoxPlano: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    EditContratante: TEdit;
    BitBtnPesquisar: TBitBtn;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    DBLookupComboBoxGrpContrat: TDBLookupComboBox;
    QueryContratante: TQuery;
    DsContratante: TDataSource;
    DBEditNome: TDBEdit;
    MaskEditDataInicio: TMaskEdit;
    MaskEditDataFim: TMaskEdit;
    LabIntervalo: TLabel;
    Label6: TLabel;
    ComboBoxTpSinistralidade: TComboBox;
    Label1: TLabel;
    QueryContratantecodigo: TIntegerField;
    QueryContratantenome: TStringField;
    QueryGrpContratanteCodigo: TIntegerField;
    QueryGrpContratanteDescricao: TStringField;
    QueryGrpContratanteFlag_Envio_Ans: TStringField;
    QueryPlanocodigo: TIntegerField;
    QueryPlanodescricao: TStringField;
    cbTodosPlanos: TCheckBox;
    cbTodosGrupos: TCheckBox;
    CbTodosContrat: TCheckBox;
    ADOQueryCidade: TADOQuery;
    DsCidade: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    procedure EditContratanteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxTpSinistralidadeChange(Sender: TObject);
    procedure DBLookupComboBoxPlanoClick(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditContratanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEditDataInicioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDataFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBoxTpSinistralidadeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure cbTodosPlanosClick(Sender: TObject);
    procedure cbTodosGruposClick(Sender: TObject);
    procedure CbTodosContratClick(Sender: TObject);
  private
    //function InvertData(Data :TDate) : String;
  public
    { Public declarations }
  end;

var
  FormParamSinistralidade: TFormParamSinistralidade;

implementation

uses RelSinistralidade, PesquisaContratante, udm;

{$R *.DFM}

procedure TFormParamSinistralidade.EditContratanteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormParamSinistralidade.FormShow(Sender: TObject);
begin
   MaskEditDataInicio.Text := DateToStr(dm.Date);
   MaskEditDataFim.Text    := DateToStr(dm.Date);
   ComboBoxTpSinistralidade.ItemIndex := 0;
   AdoQueryCidade.Open;
   QueryPlano.open;
   Application.CreateForm(TQrSinistralidade, QrSinistralidade);
end;

procedure TFormParamSinistralidade.ComboBoxTpSinistralidadeChange(
  Sender: TObject);
begin
   PanelPlano.Visible      := ComboBoxTpSinistralidade.ItemIndex = 0;
   PanelGrpContrat.Visible := ComboBoxTpSinistralidade.ItemIndex = 1;
   PanelContrat.Visible    := ComboBoxTpSinistralidade.ItemIndex = 2;
   EditContratante.Clear;
   DBEditNome.Clear;
   QueryContratante.Close;
//   BitBtnImprimir.Enabled :=
//   (PanelPlano.Visible      and (DBLookupComboBoxPlano.Text <> ''))      or
//   (PanelGrpContrat.Visible and (DBLookupComboBoxGrpContrat.Text <> '')) or
//   (PanelContrat.Visible    and (DBEditNome.Text <> ''));
   QueryPlano.Open;
   QueryGrpContratante.Open;
//   QueryPlano.Open;
end;

procedure TFormParamSinistralidade.DBLookupComboBoxPlanoClick(
  Sender: TObject);
begin
   BitBtnImprimir.enabled :=  (sender as TDBLookupComboBox).Text <> '';
end;

procedure TFormParamSinistralidade.BitBtnImprimirClick(Sender: TObject);
begin
   QrSinistralidade.SpSinistralidade_Ind.Close;
   case ComboBoxTpSinistralidade.ItemIndex of
      0 :
      begin
        QrSinistralidade.SpSinistralidade_Ind.Parameters[1].Value := 0; //Tipo
        if CbTodosPlanos.Checked then
        begin
           QrSinistralidade.SpSinistralidade_Ind.Parameters[4].Value := 0; // plano
           QrSinistralidade.qrlabel7.Caption := 'PLANO : ';
           QrSinistralidade.qrlabel8.Caption := 'TODOS OS PLANOS';
        end
        else
        begin
           QrSinistralidade.SpSinistralidade_Ind.Parameters[4].Value :=
           QueryPlano.FieldByName('codigo').AsInteger;
           QrSinistralidade.qrlabel7.Caption := 'PLANO : ';
           QrSinistralidade.qrlabel8.Caption := QueryPlano.FieldByName('codigo').AsString + ' - ' +
           QueryPlano.FieldByName('descricao').AsString;
        end;

        QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR PLANO';
      end;
      1 :
      begin
        QrSinistralidade.SpSinistralidade_Ind.Parameters[1].Value := 1;
        if CbTodosGrupos.Checked then
        begin
           QrSinistralidade.SpSinistralidade_Ind.Parameters[3].Value := 0;
           QrSinistralidade.qrlabel7.Caption := 'GRUPO DE CONTRATANTE : ';
           QrSinistralidade.qrlabel8.Caption := 'TODOS OS GRUPOS';
        end
        else
        begin
           QrSinistralidade.SpSinistralidade_Ind.Parameters[3].Value  :=
           QueryGrpContratante.fieldByName('codigo').Asinteger;
           QrSinistralidade.qrlabel7.Caption := 'GRUPO DE CONTRATANTE : ';
           QrSinistralidade.qrlabel8.Caption := QueryGrpContratante.FieldByName('codigo').AsString + ' - ' +
           QueryGrpContratante.FieldByName('descricao').AsString;
        end;
        QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR GRUPO DE CONTRATANTE';

      end;
      2 :
      begin
         QrSinistralidade.SpSinistralidade_Ind.Parameters[1].Value  := 2;
         if CbTodosContrat.Checked then
         begin
            QrSinistralidade.SpSinistralidade_Ind.Parameters[2].Value  := 0;
            QrSinistralidade.qrlabel7.Caption := 'CONTRATANTE : ';
            QrSinistralidade.qrlabel8.Caption := 'TODOS OS CONTRATANTES';
         end
         else
         begin
            QrSinistralidade.SpSinistralidade_Ind.Parameters[2].Value  :=
            QueryContratante.FieldByName('codigo').AsInteger;
            QrSinistralidade.qrlabel7.Caption := 'CONTRATANTE : ';
            QrSinistralidade.qrlabel8.Caption := QueryContratante.FieldByName('codigo').AsString + ' - ' +
            QueryContratante.FieldByName('nome').AsString;
         end;
         QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR CONTRATANTE';
      end;
   end;

   if (DBLookupComboBox1.Text <> '') and (DBLookupComboBox1.Text <> 'TODOS') then
   begin

      QrSinistralidade.SpSinistralidade_Ind.Parameters[7].Value := ADOQueryCidade.FieldbyName('Cd_cidade').AsInteger;
      QrSinistralidade.QRLabelCidade.Caption := DBLookupComboBox1.Text;
   end

   else
   begin
      QrSinistralidade.SpSinistralidade_Ind.Parameters[7].Value := 0; // zero sig não selecionado cidade. Na procedure ta tratantdo.
      QrSinistralidade.QRLabelCidade.Caption := 'TODAS';
   end;

   QrSinistralidade.QRLabelPeriodo.Caption := ' De ' + MaskEditDataInicio.Text + ' a ' + MaskEditDataFim.Text;
   QrSinistralidade.SpSinistralidade_Ind.Parameters[5].Value  := MaskEditDataInicio.Text;
   QrSinistralidade.SpSinistralidade_Ind.Parameters[6].Value  := MaskEditDataFim.Text + ' 23:59';
   QrSinistralidade.SpSinistralidade_Ind.open;
   QrSinistralidade.Preview;


{   QrSinistralidade.SpSinistralidade.Close;
   QrSinistralidade.SpSinistralidade.ParamByName('@contrIni').AsInteger := 0;
   QrSinistralidade.SpSinistralidade.ParamByName('@ContrFim').AsInteger := 99999999;
   QrSinistralidade.SpSinistralidade.ParamByName('@Grp_contrIni').AsInteger := 0;
   QrSinistralidade.SpSinistralidade.ParamByName('@Grp_ContrFim').AsInteger := 99999999;
   QrSinistralidade.SpSinistralidade.ParamByName('@planoIni').AsInteger := 0;
   QrSinistralidade.SpSinistralidade.ParamByName('@planoFim').AsInteger := 99999999;

   case ComboBoxTpSinistralidade.ItemIndex of

      0 :
      begin
        QrSinistralidade.SpSinistralidade.ParamByName('@planoIni').AsInteger :=
        QueryPlano.FieldByName('codigo').AsInteger;
        QrSinistralidade.SpSinistralidade.ParamByName('@planoFim').AsInteger :=
        QueryPlano.FieldByName('codigo').AsInteger;
        QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR PLANO';
        QrSinistralidade.qrlabel7.Caption := 'PLANO : ';
        QrSinistralidade.qrlabel8.Caption := QueryPlano.FieldByName('codigo').AsString + ' - ' +
        QueryPlano.FieldByName('descricao').AsString;
      end;
      1 :
      begin
        QrSinistralidade.SpSinistralidade.ParamByName('@Grp_contrIni').AsInteger :=
        QueryGrpContratante.fieldByName('codigo').Asinteger;
        QrSinistralidade.SpSinistralidade.ParamByName('@Grp_ContrFim').AsInteger :=
        QueryGrpContratante.fieldByName('codigo').Asinteger;
        QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR GRUPO DE CONTRATANTE';
        QrSinistralidade.qrlabel7.Caption := 'GRUPO DE CONTRATANTE : ';
        QrSinistralidade.qrlabel8.Caption := QueryGrpContratante.FieldByName('codigo').AsString + ' - ' +
        QueryGrpContratante.FieldByName('descricao').AsString;

      end;
      2 :
      begin
         QrSinistralidade.SpSinistralidade.ParamByName('@contrIni').AsInteger :=
         QueryContratante.FieldByName('codigo').AsInteger;
         QrSinistralidade.SpSinistralidade.ParamByName('@ContrFim').AsInteger :=
         QueryContratante.FieldByName('codigo').AsInteger;
         QrSinistralidade.ReportTitle := 'RELATÓRIO DE SINISTRALIDADE POR CONTRATANTE';
         QrSinistralidade.qrlabel7.Caption := 'CONTRATANTE : ';
         QrSinistralidade.qrlabel8.Caption := QueryContratante.FieldByName('codigo').AsString + ' - ' +
         QueryContratante.FieldByName('nome').AsString;
      end;
   end;

   QrSinistralidade.QRLabelPeriodo.Caption := ' De ' + MaskEditDataInicio.Text + ' a ' + MaskEditDataFim.Text;
   QrSinistralidade.SpSinistralidade.ParamByName('@DtIni').AsString := MaskEditDataInicio.Text;
   QrSinistralidade.SpSinistralidade.ParamByName('@DtFim').AsString := MaskEditDataFim.Text;
   QrSinistralidade.SpSinistralidade.open;
   QrSinistralidade.Preview;}
end;

procedure TFormParamSinistralidade.EditContratanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = 13 then
   begin
      QueryContratante.Close;
      QueryContratante.sql[1] := EditContratante.Text;
      QueryContratante.open;
      If QueryContratante.Bof and QueryContratante.Eof then
      begin
         ShowMessage('Código de contratante não encontrado !');
         EditContratante.SetFocus;
         BitBtnImprimir.Enabled := False;
      end
      else
         BitBtnImprimir.Enabled := True;
   end
end;

procedure TFormParamSinistralidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QrSinistralidade.Free;
   QueryGrpContratante.Close;
   QueryContratante.close;
   QueryPlano.Close;
end;

{function TFormParamSinistralidade.InvertData(Data: TDate): String;
Var d,m, a : word;
    dStr,mStr : String[2];
    AStr : String[4];
begin
    // Inverte o dia com o mes  ex : 31/01/2002 para 01/31/2002
    DecodeDate(Data,a,m,d);
    dStr := IntToStr(d);
    mStr := IntToStr(m);
    aStr := IntToStr(a);
    Result :=  StrAll(2 - length(MStr) ,'0') + MStr + '/' +
               StrAll(2 - length(DStr) ,'0') + DStr + '/' +
               AStr;
end;}

procedure TFormParamSinistralidade.MaskEditDataInicioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormParamSinistralidade.MaskEditDataFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormParamSinistralidade.ComboBoxTpSinistralidadeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormParamSinistralidade.BitBtnPesquisarClick(Sender: TObject);
var Key: Word;
    Shift: TShiftState;
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;
     EditContratante.Text   := IntToStr(PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger);
     DBEditNome.Text        := PesquisaContratante.FormPesquisaContratante.QueryContratanteNome.asString;
     bitBtnImprimir.Enabled := True;
     BitBtnImprimir.SetFocus;
     key := vk_return;
     EditContratanteKeyDown(Sender,Key,Shift);
     FormPesquisaContratante.QueryContratante.Close;
     FormPesquisaContratante.Free;
end;

procedure TFormParamSinistralidade.cbTodosPlanosClick(Sender: TObject);
begin
   DBLookupComboBoxPlano.Visible := not CbTodosPlanos.Checked;
end;

procedure TFormParamSinistralidade.cbTodosGruposClick(Sender: TObject);
begin
   DBLookupComboBoxGrpContrat.visible := not cbTodosGrupos.Checked;
   
end;

procedure TFormParamSinistralidade.CbTodosContratClick(Sender: TObject);
begin
   DBEditNome.Visible      := not CbTodosContrat.Checked;
   Label5.Visible          := not CbTodosContrat.Checked;
   Label4.Visible          := not CbTodosContrat.Checked;
   EditContratante.Visible := not CbTodosContrat.Checked;
   BitBtnPesquisar.Visible := not CbTodosContrat.Checked;
end;

end.
