unit QROrcamentosFinalizadosAtraso;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaOrcamentosFinalizadosAtraso = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    QueryItensPagDentista: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QueryContratante: TQuery;
    QueryItensPagDentistaMesAno: TStringField;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QueryItensPagDentistaUsuario: TIntegerField;
    QueryContratanteCodigo_Completo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteFone1: TStringField;
    QueryItensPagDentistaTelefone: TStringField;
    QueryItensPagDentistaNome_Usuario: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaOrcamentosFinalizadosAtraso: TQRListaOrcamentosFinalizadosAtraso;
  MesAnoIni, MesAnoFim : string;


implementation
  uses Senha;
{$R *.DFM}

procedure TQRListaOrcamentosFinalizadosAtraso.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('MesAno1').asString := MesAnoIni;
         ParamByName('MesAno2').asString := MesAnoFim;
         Open;
       end;
end;

end.
