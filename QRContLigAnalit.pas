{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Cancelados               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContLigAnalit;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContLigAnalit = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBTextNome: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRBandData: TQRBand;
    QRBand3: TQRBand;
    QueryContatos: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel15: TQRLabel;
    QueryContatosIncremento: TIntegerField;
    QueryContatosData_Contato: TDateTimeField;
    QueryContatosHora_Contato: TDateTimeField;
    QueryContatosCodigo_Contratante: TIntegerField;
    QueryContatosDigito_Usuario: TSmallintField;
    QueryContatosData_Agenda: TDateTimeField;
    QueryContatosHora_Agenda: TDateTimeField;
    QueryContatosOperador: TIntegerField;
    QueryContatosTexto_Contato: TMemoField;
    QueryContatosTipo: TSmallintField;
    QueryContatosNome: TStringField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroupData: TQRGroup;
    QRExpr4: TQRExpr;
    QRGroupTipo: TQRGroup;
    QRExpr3: TQRExpr;
    QueryContatosDescricao: TStringField;
    QRBandTipo: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabelTtOp: TQRLabel;
    QRLabelTtDt: TQRLabel;
    QRDBText5: TQRDBText;
    QueryContatosOperador_Nm: TStringField;
    QueryContatosHora_Alteracao: TDateTimeField;
    QueryContatosData_Alteracao: TDateTimeField;
    QueryContatosOperador_Alteracao: TIntegerField;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabelConfOp: TQRLabel;
    QRLabelRecOp: TQRLabel;
    QRLabelNConfOp: TQRLabel;
    QRLabelConfDt: TQRLabel;
    QRLabelRecDt: TQRLabel;
    QRLabelNConfDt: TQRLabel;
    QRLabelConfTT: TQRLabel;
    QRLabelRecTT: TQRLabel;
    QRLabelNConfTT: TQRLabel;
    QRLabelTtGeral: TQRLabel;
    QueryContatosdescricao_1: TStringField;
    QueryContatosLigacao: TIntegerField;
    QRDBText7: TQRDBText;
    QueryContatosnm_contratante: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBandTipoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandDataBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContLigAnalit: TQRListaContLigAnalit;
  Tipo, oper : Short;
  DIntervalo1, DIntervalo2 : TDate;
  Conf_Op, Conf_Dt, Conf_Tt, NConf_Op, NConf_Dt, NConf_Tt, Rec_Op, Rec_Dt, Rec_Tt : integer;

implementation
  uses Senha, RelAgenda;

{$R *.DFM}

procedure TQRListaContLigAnalit.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     Conf_Op  := 0; Conf_Dt  := 0; Conf_Tt  := 0;
     NConf_Op := 0; NConf_Dt := 0; NConf_Tt := 0;
     Rec_Op   :=0;  Rec_Dt   :=0;  Rec_Tt   :=0;

     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryContatos do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Tipo <> 0 then
            ParamByName('Tipo').asInteger := Tipo
         else
           SQL[6] := '';
         if Oper <> 0 then
            ParamByName('Oper').asInteger := Oper
         else
           SQL[7] := '';
           FormRelAgenda.Memo1.Lines.Add(text);
         Open;
       end;
end;

procedure TQRListaContLigAnalit.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  case QueryContatosLigacao.AsInteger of
    1 :
    begin
      Inc(Conf_Op); Inc(Conf_Dt); Inc(Conf_Tt);
    end;
    2 :
    begin
      Inc(Rec_Op); Inc(Rec_Dt); Inc(Rec_Tt);
    end;
    3 :
    begin
      Inc(NConf_Op); Inc(NConf_Dt); Inc(NConf_Tt);
    end;
  end;
end;

procedure TQRListaContLigAnalit.QRBandTipoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabelConfOp.Caption  := IntToStr(Conf_Op);
  QRLabelRecOp.Caption   := IntToStr(Rec_Op);
  QRLabelNConfOp.Caption := IntToStr(NConf_Op);
  QRLabelTtOp.Caption    := IntToStr(NConf_Op + Rec_Op + Conf_Op);
  Conf_Op  := 0;
  Rec_Op   := 0;
  NConf_Op := 0;
end;

procedure TQRListaContLigAnalit.QRBandDataBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabelConfDt.Caption  := IntToStr(Conf_Dt);
  QRLabelRecDt.Caption   := IntToStr(Rec_Dt);
  QRLabelNConfDt.Caption := IntToStr(NConf_Dt);
  QRLabelTtDt.Caption    := IntToStr(NConf_Dt + Rec_Dt + Conf_Dt);
  Conf_Dt  := 0;
  Rec_Dt   := 0;
  NConf_Dt := 0;
end;

procedure TQRListaContLigAnalit.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabelConfTT.Caption  := IntToStr(Conf_TT);
  QRLabelRecTT.Caption   := IntToStr(Rec_TT);
  QRLabelNConfTT.Caption := IntToStr(NConf_TT);
  QRLabelTtGeral.Caption := IntToStr(NConf_TT + Rec_tt + Conf_tt);
  Conf_TT  := 0;
  Rec_TT   := 0;
  NConf_TT := 0;
end;

end.
