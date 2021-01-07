 unit Desabilita;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons, StdCtrls;

type
  TFormDesabilita = class(TForm)
    ButtonDesabilita: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    LabelRegistros: TLabel;
    ButtonRelatorio: TButton;
    QueryOrcamentos: TQuery;
    QueryOrcamentosContratante: TIntegerField;
    QueryReceber: TQuery;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberAuxiliar: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosOperador_Exclusao: TIntegerField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteOperador_Exclusao: TIntegerField;
    QueryReceberAuxiliarCodigo_Contratante: TIntegerField;
    QueryContratanteMotivo_Cancelamento: TIntegerField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryContratanteEmpresa: TBooleanField;
    QueryUsuariosMotivo_Cancelamento: TIntegerField;
    procedure ButtonDesabilitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ButtonRelatorioClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormDesabilita: TFormDesabilita;
  Data_Base : TDate;
  Registros : Short;

implementation

uses
  Senha, QRContratoExcluidos, udm;
{$R *.DFM}

procedure TFormDesabilita.ButtonDesabilitaClick(Sender: TObject);
begin
  with QueryReceber do
    begin
      Close;
      Open;
      First;
//      if QueryReceberCodigo_Contratante.asInteger = 0 then
//        QueryReceber.Next;
      while not eof do
        begin
          QueryReceberAuxiliar.Close;
          QueryReceberAuxiliar.ParamByName('Contratante').asInteger := QueryReceberCodigo_Contratante.asInteger;
          QueryReceberAuxiliar.Open;
          if ((QueryReceberAuxiliar.RecordCount > 4) or (QueryReceberAuxiliar.RecordCount = 4)) then
            begin
              QueryOrcamentos.Close;
              QueryOrcamentos.ParamByName('Contratante').asInteger := QueryReceberCodigo_Contratante.asInteger;
              QueryOrcamentos.Open;
              if QueryOrcamentos.RecordCount = 0 then
                begin
                  QueryContratante.Close;
                  QueryContratante.ParamByName('Contratante').asInteger := QueryReceberCodigo_Contratante.asInteger;
                  QueryContratante.Open;
                  QueryContratante.Edit;
                  QueryContratanteExclusao.AsDateTime := Data_Base;
                  QueryContratanteOperador_Exclusao.AsInteger := Senha.Codigo_Operador;
                  QueryContratanteMotivo_Cancelamento.asInteger := 4;
                  try
                    QueryContratante.Post;

                    Registros := Registros + 1;
                    LabelRegistros.Caption := IntToStr(Registros);
                    QueryUsuarios.Close;
                    QueryUsuarios.ParamByName('Contratante').asInteger := QueryReceberCodigo_Contratante.asInteger;
                    QueryUsuarios.Open;

                    while not QueryUsuarios.eof do
                      begin
                        QueryUsuarios.edit;
                        QueryUsuariosData_Exclusao.asDateTime := Data_Base;
                        QueryUsuariosOperador_Exclusao.asInteger := Senha.Codigo_Operador;
                        QueryUsuariosMotivo_Cancelamento.AsInteger := 4;
                        try
                          QueryUsuarios.Post;
                        except
                          QueryUsuarios.Cancel;
                        end;
                        QueryUsuarios.Next;
                      end;
                  except
                    QueryContratante.Cancel;
                  end;
                  if QueryUsuariosContratante_Titular.AsInteger <> QueryUsuariosCodigo.asInteger then begin
                     QueryContratante.Close;
                     QueryContratante.ParamByName('Contratante').asInteger := QueryReceberCodigo_Contratante.asInteger;
                     QueryContratante.Open;
                     QueryContratante.Edit;
                     QueryContratanteExclusao.AsDateTime := Data_Base;
                     QueryContratanteOperador_Exclusao.AsInteger := Senha.Codigo_Operador;
                     QueryContratanteMotivo_Cancelamento.asInteger := 4;
                     try
                       QueryContratante.Post;
                     except
                       QueryContratante.Cancel;
                     end;
                  end;
                end;
            end;
          QueryReceber.Next;
        end;
    end;
    ButtonRelatorio.Enabled := True;
end;

procedure TFormDesabilita.FormCreate(Sender: TObject);
begin
  Data_Base := dm.date;
  Registros := 0;
  QueryOrcamentos.Open;
  QueryReceber.Open;
  QueryReceberAuxiliar.Open;
  QueryContratante.Open;
  QueryUsuarios.Open;
end;

procedure TFormDesabilita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QueryOrcamentos.Close;
  QueryReceber.Close;
  QueryReceberAuxiliar.Close;
  QueryContratante.Close;
  QueryUsuarios.Close;
end;

procedure TFormDesabilita.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFormDesabilita.ButtonRelatorioClick(Sender: TObject);
begin
   QRContratoExcluidos.DIntervalo1 := Data_Base;
   QRContratoExcluidos.DIntervalo2 := Data_Base;
   QRContratoExcluidos.Motivo := 4;
   Application.CreateForm(TQRListaContratosCancelados, QRListaContratosCancelados);
   QRContratoExcluidos.QRListaContratosCancelados.QRLabelPeriodo1.Caption := DateToStr(Data_Base);
   QRContratoExcluidos.QRListaContratosCancelados.QRLabelPeriodo2.Caption := DateToStr(Data_Base);
   QRListaContratosCancelados.Preview;
   QRListaContratosCancelados.Free;
end;

end.
