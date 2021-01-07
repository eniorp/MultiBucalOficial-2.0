unit QRAniversariantes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaAniversariantes = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    PageFooterBand1: TQRBand;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosFone1: TStringField;
    QueryUsuariosCodigo_1: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosSituacao: TStringField;
    QueryUsuariosOperador_Inclusao: TIntegerField;
    QueryUsuariosOperador_Alteracao: TIntegerField;
    QueryUsuariosOperador_Exclusao: TIntegerField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QueryUsuariosidade: TIntegerField;
    QRBand2: TQRBand;
    QRSysData5: TQRSysData;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaAniversariantes: TQRListaAniversariantes;

implementation
  uses Senha;
{$R *.DFM}

procedure TQRListaAniversariantes.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
