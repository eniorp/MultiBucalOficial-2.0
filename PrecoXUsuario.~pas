unit PrecoXUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,enio,
  Mask, ComCtrls, Menus, ADODB;

type
  TFmPrecoXusuario = class(TFmPadrao)

    EditContratante: TEdit;
    Label44: TLabel;
    BitBtnPesquisar: TBitBtn;
    EditNmContratante: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Query1nome: TStringField;
    Query1codigo_completo: TIntegerField;
    Query1cd_usuario: TIntegerField;
    Query1dg_usuario: TIntegerField;
    Query1id_acrescimo: TIntegerField;
    Query1dtinicio: TDateTimeField;
    Query1dtfim: TDateTimeField;
    Query1valor: TFloatField;
    Query1data_nascimento: TDateTimeField;
    Query1data_inclusao: TDateTimeField;
    Query1data_exclusao: TDateTimeField;
    Label2: TLabel;
    PanelVrTotal: TPanel;
    Query1nmConratante: TStringField;
    Label3: TLabel;
    PanelQtUsu: TPanel;
    CheckBoxUsuExclu: TCheckBox;
    SpVrMensalidade: TStoredProc;
    PanelDesconto: TPanel;
    Label4: TLabel;
    PanelVrLiq: TPanel;
    Label5: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    EditPlano: TEdit;
    Query1DescPlano: TStringField;
    Query1CodPlano: TIntegerField;
    Label6: TLabel;
    MaskEditDtBase: TMaskEdit;
    PageControl1: TPageControl;
    TbsValores: TTabSheet;
    DBGrid2: TDBGrid;
    TbsAumento: TTabSheet;
    DBGrid4: TDBGrid;
    QueryAumento: TQuery;
    DsAumento: TDataSource;
    TbsPrecoPlano: TTabSheet;
    DBGrid3: TDBGrid;
    QueryPrecoPlano: TQuery;
    DsPrecoPlano: TDataSource;
    Query1grau_parentesco: TSmallintField;
    QueryPrecoPlanocodigo_plano: TSmallintField;
    QueryPrecoPlanocodigo_grau_parentesco: TSmallintField;
    QueryPrecoPlanodescricao: TStringField;
    QueryPrecoPlanodata: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    TbsHistorico: TTabSheet;
    DBGrid5: TDBGrid;
    DsHistorico: TDataSource;
    QueryHistorico: TQuery;
    QueryHistoricoCodigo_Plano: TSmallintField;
    QueryHistoricoCodigo_Grau_Parentesco: TSmallintField;
    QueryHistoricodesc_grau: TStringField;
    QueryHistoricoData: TDateTimeField;
    QueryHistoricoValor: TFloatField;
    QueryHistoricoDtAtualizacao: TDateTimeField;
    Query1VrBruto: TFloatField;
    CheckBoxVrZero: TCheckBox;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    Mostrartelacomregistrosantigos1: TMenuItem;
    Label7: TLabel;
    EditUsu: TEdit;
    BitBtn2: TBitBtn;
    Query1InclusaoUsuario: TDateTimeField;
    procedure EditContratanteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure EditContratanteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PanelTopClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Mostrartelacomregistrosantigos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditUsuKeyPress(Sender: TObject; var Key: Char);
    procedure EditUsuEnter(Sender: TObject);
    procedure EditUsuExit(Sender: TObject);
  private
        VCdusu,
        VDgusu: Integer;

    procedure AtualizaVrTotal;
    procedure LimpaTela;
  public
    { Public declarations }
  end;

var
  FmPrecoXusuario: TFmPrecoXusuario;

implementation

uses PesquisaContratante, udm, PrecoXUsuarioDtUsu, PesquisaUsuario;

{$R *.DFM}

procedure TFmPrecoXusuario.EditContratanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := so_numero(key);
  if key = #13 then
     BitBtn1Click(Sender);

end;

procedure TFmPrecoXusuario.BitBtnPesquisarClick(Sender: TObject);
begin
  inherited;
  FormPesquisaContratante := TFormPesquisaContratante.create(self);
  FormPesquisaContratante.ShowModal;
  EditContratante.text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
  EditContratante.SetFocus;
  EditContratante.SelectAll;

  FormPesquisaContratante.QueryContratante.Close;
  FormPesquisaContratante.Free;
  BitBtn1Click(Sender);
end;
procedure TFmPrecoXusuario.Query1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  QueryAumento.Close;
  QueryPrecoPlano.close;
  AtualizaVrTotal;

  EditNmContratante.Text := Query1nmConratante.AsString;
  EditPlano.Text := Query1CodPlano.AsString + '->' + Query1DescPlano.AsString;
  if not (query1.Bof and Query1.Eof) then
  begin
    QueryAumento.Sql[01] := Query1CodPlano.Asstring;
    QueryAumento.Open;
    QueryPrecoPlano.Sql[06] := Query1CodPlano.Asstring;
    QueryPrecoPlano.Open;
  end;
end;

procedure TFmPrecoXusuario.AtualizaVrTotal;
begin
  SpVrMensalidade.Close;
  SpVrMensalidade.ParamByName('@cdContratante').AsString := EditContratante.Text;
  SpVrMensalidade.ParamByName('@DtBase'       ).AsString := MaskEditDtBase.Text;
  SpVrMensalidade.Open;
  PanelVrTotal.Caption := FormatFloat('R$ ###,###,###,##0.00', SpVrMensalidade.FieldByName('VrMensalidade').AsCurrency);
  PanelDesconto.Caption := FormatFloat('R$ ###,###,###,##0.00', SpVrMensalidade.FieldByName('VrDesconto'  ).AsCurrency);
  PanelVrLiq.Caption := FormatFloat('R$ ###,###,###,##0.00', SpVrMensalidade.FieldByName('VrMensalidadeLiq').AsCurrency);
  PanelQtUsu.Caption := FormatFloat('###,###,###,##0', SpVrMensalidade.FieldByName('qtdeUsu').AsCurrency);

  SpVrMensalidade.Close;
end;

procedure TFmPrecoXusuario.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if EditContratante.Text <> '' then
  begin
     if not (Query1.bof and Query1.Eof) then
     begin
        VCdusu   := Query1.FieldByName('cd_usuario').AsInteger;
        VDgusu   := Query1.FieldByName('dg_usuario').AsInteger;
     end
     else
        VCdusu   := -1;


     Query1.Close;
     Query1.ParamByName('CdContratante').AsString := EditContratante.Text;
     if CheckBox1.checked then
        //Query1.Sql[28] := ' and convert(char(10),getdate(),103) between m.dtInicio and m.DtFim '
          Query1.Sql[28] := ' and ''' + MaskEditDtBase.text + ''' between m.dtInicio and m.DtFim '

     else
        Query1.Sql[28] := ' ';

     if CheckBoxUsuExclu.checked then
        Query1.sql[19] := ''
     else
        Query1.sql[19] := ' and u.data_exclusao is null  ';


     if CheckBoxVrZero.checked then
        Query1.sql[27] := ' and m.valor > 0'
     else
        Query1.sql[27] := '  ';
     //memo1.lines.add(query1.text);
     Query1.Open;
  end;
  PageControl1.ActivePage := TbsValores;
  EditContratante.SelectAll;
  if VCdusu <> -1 then
     Query1.Locate('cd_usuario;dg_usuario',VarArrayOf([VCdusu,VDgusu]),[]);

end;


procedure TFmPrecoXusuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFmPrecoXusuario.CheckBox1Click(Sender: TObject);
begin
  inherited;
   BitBtn1Click(Sender);
end;

procedure TFmPrecoXusuario.EditContratanteChange(Sender: TObject);
begin
  inherited;
  LimpaTela;
end;
procedure TFmPrecoXusuario.LimpaTela;
begin
   Query1.Close;
   QueryAumento.close;
   QueryPrecoPlano.Close;
   EditNmContratante.Clear;
   EditPlano.clear;
   PanelVrTotal.Caption  := 'R$ 0,00';
   PanelDesconto.Caption := 'R$ 0,00';
   PanelVrLiq.Caption    := 'R$ 0,00';
   PanelQtUsu.Caption    := '0';

end;
procedure TFmPrecoXusuario.FormShow(Sender: TObject);
begin
  inherited;
  top := 70;
  left := 20;
  ShortDateFormat := 'dd/MM/yyyy';
  MaskEditDtBase.Text := DM.GetDataSrv;
  PageControl1.ActivePage := TbsValores;
end;

procedure TFmPrecoXusuario.PanelTopClick(Sender: TObject);
begin
  inherited;

//  FmPrecoXusuario.top := StrToInt(Edit1.text);
//  FmPrecoXusuario.left := StrToInt(Edit2.text);
end;

procedure TFmPrecoXusuario.PageControl1Change(Sender: TObject);
begin
  inherited;
   if (PageControl1.ActivePage = TbsPrecoPlano) or
      (PageControl1.ActivePage = TbsHistorico) then
   begin
      QueryPrecoPlano.Locate('codigo_grau_parentesco',Query1grau_parentesco.AsInteger,[]);
      QueryHistorico.close;
      QueryHistorico.ParamByName('plano').AsInteger := QueryPrecoPlanoCodigo_Plano.value;
      QueryHistorico.ParamByName('grau').AsInteger  := QueryPrecoPlanoCodigo_Grau_Parentesco.value;
      QueryHistorico.Open;
   end;

end;

procedure TFmPrecoXusuario.Mostrartelacomregistrosantigos1Click(
  Sender: TObject);
begin
  inherited;
   FmPrecoXusuarioDtUsu := TFmPrecoXusuarioDtUsu.create(self);
   FmPrecoXusuarioDtUsu.CheckBox1.checked        := FmPrecoXusuario.CheckBox1.checked;
   FmPrecoXusuarioDtUsu.CheckBoxUsuExclu.checked := FmPrecoXusuario.CheckBoxUsuExclu.checked;
   FmPrecoXusuarioDtUsu.CheckBoxVrZero.checked   := FmPrecoXusuario.CheckBoxVrZero.checked;
   FmPrecoXusuarioDtUsu.EditContratante.text     := FmPrecoXusuario.EditContratante.text;
   FmPrecoXusuarioDtUsu.MaskEditDtBase.text      := FmPrecoXusuario.MaskEditDtBase.text;
   if FmPrecoXusuarioDtUsu.EditContratante.text <> '' then
      FmPrecoXusuarioDtUsu.BitBtn1Click(Sender);
end;

procedure TFmPrecoXusuario.BitBtn2Click(Sender: TObject);
var key : char;
begin
  inherited;
  Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
  FormPesquisaUsuarios.ShowModal;
  EditUsu.text := FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsString;
  FormPesquisaUsuarios.Free;
  key := #13;
  EditUsuKeyPress(Sender,Key);
end;

procedure TFmPrecoXusuario.EditUsuKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if (key = #13) and (EditUsu.Text <> '') then
   begin
      EditContratante.Text := dm.ExecutaComando('select contratante_titular a, codigo,digito from usuario where codigo_completo = ' + EditUsu.Text,'a');
      BitBtn1Click(Sender);
      Query1.Locate('cd_usuario;dg_usuario',VarArrayOf([dm.QueryGlobal.FieldByName('codigo').AsInteger,dm.QueryGlobal.FieldByName('digito').AsInteger]),[]);
   end;

end;

procedure TFmPrecoXusuario.EditUsuEnter(Sender: TObject);
begin
  inherited;
   BitBtn1.enabled := false;
end;

procedure TFmPrecoXusuario.EditUsuExit(Sender: TObject);
begin
  inherited;
   BitBtn1.enabled := true; 
end;

end.

