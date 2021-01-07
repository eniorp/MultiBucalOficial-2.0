unit ConsultaTratamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,enio;

type
  TFmConsultaTrat = class(TFmPadrao)
    EditCdUsuario: TEdit;
    Label1: TLabel;
    EditNomeUsuario: TEdit;
    BitBtnPesquisaUsuario: TBitBtn;
    EditNome: TLabel;
    EditDente: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditFace: TEdit;
    EditDsDente: TEdit;
    EditDsFace: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Hemiarco: TLabel;
    ComboBoxArc: TComboBox;
    ComboBoxSex: TComboBox;
    ComboBoxHemi: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    RadioGroupClass: TRadioGroup;
    Label8: TLabel;
    Label9: TLabel;
    EditServico: TEdit;
    EditDsServico: TEdit;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Bevel2: TBevel;
    Image2: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure BitBtnPesquisaUsuarioClick(Sender: TObject);
    procedure EditCdUsuarioExit(Sender: TObject);
    procedure EditCdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EditDenteExit(Sender: TObject);
    procedure EditFaceExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroupClassClick(Sender: TObject);
    procedure EditDenteChange(Sender: TObject);
    procedure EditFaceChange(Sender: TObject);
    procedure EditCdUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditServicoExit(Sender: TObject);
    procedure EditServicoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmConsultaTrat: TFmConsultaTrat;

implementation

uses PesquisaUsuario, udm, PesquisaServicos;

{$R *.DFM}

procedure TFmConsultaTrat.BitBtnPesquisaUsuarioClick(Sender: TObject);
begin
  inherited;
     Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
     FormPesquisaUsuarios.ShowModal;
     if not FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.isnull then
     begin
        EditCdUsuario.text := FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsString;
        EditCdUsuarioExit(Sender);
        EditDente.SetFocus;
        FormPesquisaUsuarios.QueryUsuarios.close;
     end;
     FormPesquisaUsuarios.Free;
end;

procedure TFmConsultaTrat.EditCdUsuarioExit(Sender: TObject);
begin
  inherited;
   if EditCdUsuario.Text <> '' then
   begin
      EditNomeUsuario.Text :=  dm.ExecutaComando('select nome from usuario where codigo_completo = ' + EditCdUsuario.Text,'nome');
      if EditNomeUsuario.Text = '' then
      begin
         ShowMessage('Código de usuário não localizado !');
         EditCdUsuario.SetFocus;
      end;
   end;
end;

procedure TFmConsultaTrat.EditCdUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   key := so_numero(key);
end;

procedure TFmConsultaTrat.EditDenteExit(Sender: TObject);
begin
  inherited;
   if EditDente.Text <> '' then
   begin
      EditDsDente.text := dm.ExecutaComando('select ds_dente a from dente where cd_dente = ' + EditDente.Text,'a');
      if EditDsDente.text = '' then
      begin
         ShowMessage('Código de dente não encontrado !');
         EditDente.setFocus;
      end;
   end
end;

procedure TFmConsultaTrat.EditFaceExit(Sender: TObject);
begin
  inherited;
   if EditFace.Text <> '' then
   begin
      EditDsFace.text := dm.executacomando('select ds_face a from face where cd_face = ''' + EditFace.text +  '''','a');
      if EditDsFace.text = '' then
      begin
         ShowMessage('Código da face inválida !');
         EditFace.SetFocus;
      end;
   end;
end;

procedure TFmConsultaTrat.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if EditCdUsuario.Text <> '' then
   begin
      Query1.Close;
      Query1.sql[40] := '  o.usuario   = ' + EditCdUsuario.Text;
      if EditDente.Text <> '' then
         Query1.sql[40] := Query1.sql[40] + ' and d.cd_dente  = ' + EditDente.Text;

      if EditFace.text <> '' then
         Query1.sql[40] := Query1.sql[40] + ' and f.cd_face   = ''' + EditFace.Text + '''';

      if EditServico.Text <> '' then
         Query1.sql[40] := Query1.sql[40] + ' and i.servico   = ''' + EditServico.Text + '''';
         
      if ComboBoxHemi.Text <> '' then
         case ComboBoxHemi.ItemIndex of

            1: Query1.sql[40] := Query1.sql[40] + ' and i.hemiarco = ''SD''';
            2: Query1.sql[40] := Query1.sql[40] + ' and i.hemiarco = ''SE''';
            3: Query1.sql[40] := Query1.sql[40] + ' and i.hemiarco = ''ID''';
            4: Query1.sql[40] := Query1.sql[40] + ' and i.hemiarco = ''IE''';
         end;

      if ComboBoxSex.Text <> ''  then
         case ComboBoxSex.ItemIndex of

           1: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 1';
           2: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 2';
           3: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 3';
           4: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 4';
           5: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 5';
           6: Query1.sql[40] := Query1.sql[40] + ' and i.sexante = 6';

         end;
      if ComboBoxArc.Text <> '' then
         case ComboBoxArc.ItemIndex of

           1: Query1.sql[40] := Query1.sql[40] + ' and i.arcada = ''AS''';
           2: Query1.sql[40] := Query1.sql[40] + ' and i.arcada = ''AI''';

         end;
      case RadioGroupClass.ItemIndex of

         0: Query1.sql[43] := 'order by o.data_hora desc, d.cd_dente';
         1: Query1.sql[43] := 'order by o.numero desc   , d.cd_dente';
         2: Query1.sql[43] := 'order by o.dentista, o.numero';
         3: Query1.sql[43] := 'order by d.cd_dente, o.numero';
         4: Query1.sql[43] := 'order by f.cd_face, o.numero';
      end;

      Query1.open;
   end
   else
      Showmessage('é necessário informar pelo menos o código do usuário !');
end;

procedure TFmConsultaTrat.BitBtn2Click(Sender: TObject);
begin
  inherited;
   EditCdUsuario.clear;
   EditDente.clear;
   EditFace.clear;
   EditNomeUsuario.clear;
   EditDsDente.clear;
   EditDsFace.clear;
   EditServico.clear;
   EditDsServico.clear;
   ComboBoxHemi.ItemIndex := 0;
   ComboBoxSex.ItemIndex := 0;
   ComboBoxArc.ItemIndex := 0;
   Query1.Close;
   RadioGroupClass.ItemIndex := 0;
end;

procedure TFmConsultaTrat.RadioGroupClassClick(Sender: TObject);
begin
  inherited;
   if Query1.Active then
      BitBtn1Click(Sender);
end;

procedure TFmConsultaTrat.EditDenteChange(Sender: TObject);
begin
  inherited;
   EditDsDente.clear;
end;

procedure TFmConsultaTrat.EditFaceChange(Sender: TObject);
begin
  inherited;
   EditDsFace.clear;

end;

procedure TFmConsultaTrat.EditCdUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = VK_RETURN then
      BitBtn1Click(Sender);
end;

procedure TFmConsultaTrat.BitBtn3Click(Sender: TObject);
begin
  inherited;
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     if FormPesquisaServicos.ShowModal = mrOK then
     begin
        EditServico.text := FormPesquisaServicos.QueryServicosCodigo.AsString;
        EditDsServico.text := FormPesquisaServicos.QueryServicosDescricao.AsString;
        BitBtn1Click(Sender);
     end;
     FormPesquisaServicos.QueryServicos.Close;
     FormPesquisaServicos.Query50.Close;
     FormPesquisaServicos.Free;

end;

procedure TFmConsultaTrat.EditServicoExit(Sender: TObject);
begin
  inherited;
   if EditServico.Text <> '' then
   begin
      EditDsServico.Text :=  dm.ExecutaComando('select descricao from servicos where codigo = ' + EditServico.Text,'descricao');
      if EditDsServico.Text = '' then
      begin
         ShowMessage('Código de serviço não localizado !');
         EditServico.SetFocus;
      end;
   end;

end;

procedure TFmConsultaTrat.EditServicoChange(Sender: TObject);
begin
  inherited;
   EditDsServico.clear;
end;

procedure TFmConsultaTrat.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if FmConsultaTrat.Tag = 1 then
   begin
      FmConsultaTrat.Tag := 2;
      Close;
   end;

end;

end.
