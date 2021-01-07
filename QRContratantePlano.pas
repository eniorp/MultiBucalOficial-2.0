{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContratantePlano;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratantePlano = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelReferencia: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QueryContratantes: TQuery;
    QRDBText5: TQRDBText;
    QueryPlanos: TQuery;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QueryContratantesCodigo: TIntegerField;
    QueryContratantesNome: TStringField;
    QueryContratantesExclusao: TDateTimeField;
    QueryContratantesPlano: TIntegerField;
    QueryContratantesInclusao: TDateTimeField;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    QueryContratantesNome_Plano: TStringField;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
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
    QRLabelVidas: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabelTotalVidas: TQRLabel;
    QRLabeVidasExc: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContratantePlano: TQRListaContratantePlano;
  Plano : Integer;
  Vidas_Plano : Integer;

implementation

uses udm, RelContratantePlano;

{$R *.DFM}

procedure TQRListaContratantePlano.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     Vidas_Plano := 0;

     with QueryContratantes do
       begin
         Close;
         if Plano <> 0 then
            begin
              SQL[1] := 'where Plano = :Plano';
              Params[0].DataType := ftInteger;
              Params[0].ParamType := ptInput;
              ParamByName('Plano').asInteger := Plano;
              SQL[2] := ' and (Exclusao is null or Exclusao > ''' +  FormRelContratantePlano.MaskEditDataRel.Text + ''')';
              SQL[3] := 'order by Plano, Codigo';
            end
         else
            begin
              SQL[1] := 'where (Exclusao is null or Exclusao > ''' +  FormRelContratantePlano.MaskEditDataRel.Text + ''')';
              SQL[2] := 'order by Plano, Codigo';
              SQL[3] := '';
            end;
         Open;
       end;
end;

procedure TQRListaContratantePlano.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
       QueryUsuarios.Close;
       QueryUsuarios.Parambyname('Codigo').AsInteger := QueryContratantesCodigo.asInteger;
       QueryUsuarios.sql[2] := ' and (Data_Exclusao is null or Data_Exclusao > ''' + FormRelContratantePlano.MaskEditDataRel.Text + ''')';

       QueryUsuarios.Open;
       QRLabelVidas.Caption := IntToStr(QueryUsuarios.RecordCount);
       Vidas_Plano := Vidas_Plano + QueryUsuarios.RecordCount;

end;

procedure TQRListaContratantePlano.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelTotalVidas.Caption := IntToStr(Vidas_Plano);
     QRLabeVidasExc.Caption := dm.execmd('select count(*) qt from plano p, contratante c, usuario u where p.codigo = c.plano and u.codigo = c.codigo and u.data_exclusao is not null and p.codigo = ' + QueryContratantesPlano.AsString,'qt');
end;

end.
