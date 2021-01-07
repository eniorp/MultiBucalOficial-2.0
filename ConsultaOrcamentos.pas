unit ConsultaOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFormConsultaOrcamentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    DBNavigatorContratante: TDBNavigator;
    Panel7: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    LabelProcura: TLabel;
    LabelNumero: TLabel;
    DBEditNome: TDBEdit;
    Panel4: TPanel;
    DBGridOrcamentos: TDBGrid;
    DataSourceTitulo: TDataSource;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal: TFloatField;
    QueryOrcamentosTotal_Bruto: TFloatField;
    QueryOrcamentosTotal_Desconto: TFloatField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryOrcamentosNome_Dentista: TStringField;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosPrimeiro_Faturamento: TDateTimeField;
    QueryUsuariosUltimo_Faturamento: TDateTimeField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosUsuario_Anterior: TBooleanField;
    QueryUsuariosBonifica_Carencia: TBooleanField;
    QueryUsuariosSituacao: TStringField;
    QueryUsuariosOperador_Inclusao: TIntegerField;
    QueryUsuariosOperador_Alteracao: TIntegerField;
    QueryUsuariosOperador_Exclusao: TIntegerField;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorNome: TStringField;
    QueryOperadorApelido: TStringField;
    QueryOrcamentosNome_Cadastro: TStringField;
    QueryOrcamentosNome_Aprovacao: TStringField;
    QueryTipoOrcamento: TQuery;
    QueryTipoOrcamentoTipo: TSmallintField;
    QueryTipoOrcamentoDescricao: TStringField;
    QueryTipoOrcamentoTipo_Documento: TSmallintField;
    QueryTipoOrcamentoTipo_Cobranca: TSmallintField;
    QueryOrcamentosDescricao_Tipo: TStringField;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    QueryOrcamentosDescricao_Status: TStringField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryOrcamentosContratante: TIntegerField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryOrcamentosnro_urgencia: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryOrcamentosPericiaFinal: TBooleanField;
    QueryOrcamentosDsStatusPagto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridOrcamentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaOrcamentos: TFormConsultaOrcamentos;

implementation

{$R *.DFM}

uses Orcamentos;

procedure TFormConsultaOrcamentos.FormCreate(Sender: TObject);
begin
     if Orcamentos.FormOrcamentos.QueryOrcamentosUsuario.asString = '' then exit;

     Top := 65;
     Left := 20;
     LabelNumero.Caption := '';
     QueryDentista.Open;
     QueryOperador.Open;
     QueryStatus.Open;

     with QueryOrcamentos do
        begin
          Close;
          ParamByName('Codigo_Usuario').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosUsuario.asInteger;
          Open;
          if RecordCount <> 0 then
             LabelNumero.Caption := IntToStr(RecordCount) + ' Orçamentos Encontrados'
          else
             LabelNumero.Caption := '';
        end;
end;

procedure TFormConsultaOrcamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryDentista.Close;
     QueryOperador.Close;
     QueryOrcamentos.Close;
     QueryStatus.Close;
     QueryUsuarios.Close;
     QueryTipoOrcamento.Close;
end;

procedure TFormConsultaOrcamentos.DBGridOrcamentosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_ESCAPE : Close;
     end;
end;

procedure TFormConsultaOrcamentos.FormActivate(Sender: TObject);
begin
     DBGridOrcamentos.SetFocus;
end;

end.
