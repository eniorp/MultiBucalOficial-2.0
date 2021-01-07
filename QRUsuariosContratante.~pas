{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Manutenção                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRUsuariosContratante;

interface

uses Dialogs,Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaUsuarioContratante = class(TQuickRep)
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelContratante: TQRLabel;
    QueryGrupo: TQuery;
    QueryUsuarios: TQuery;
    QRLabel1: TQRLabel;
    DataSourceContratante: TDataSource;
    QRGroup2: TQRGroup;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QueryGrupoCodigo: TIntegerField;
    QueryGrupoDescricao: TStringField;
    QueryGrupoFlag_Envio_Ans: TStringField;
    QRExpr7: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
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
    QueryDesconto: TQuery;
    QueryDescontoCodigo_Plano: TSmallintField;
    QueryDescontoData: TDateTimeField;
    QueryDescontoQtde_Usuarios1: TSmallintField;
    QueryDescontoQtde_Usuarios2: TSmallintField;
    QueryDescontoPercentual_desconto: TFloatField;
    QueryDescontoValor_Desconto: TFloatField;
    QueryPrecoGrupo: TQuery;
    QueryPrecoGrupoCodigo_Grupo: TSmallintField;
    QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoGrupoData: TDateTimeField;
    QueryPrecoGrupoValor: TFloatField;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoCodigo_Plano: TSmallintField;
    QueryPrecoPlanoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoPlanoData: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    QueryPrecoContratante: TQuery;
    QueryPrecoContratanteCodigo_Contratante: TIntegerField;
    QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoContratanteData: TDateTimeField;
    QueryPrecoContratanteValor: TFloatField;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QueryAcrescimo: TQuery;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QueryAcrescimoData_Aumento: TDateTimeField;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabelqtContrat: TQRLabel;
    QRLabelTxAde: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabelVrTot_: TQRLabel;
    sp_relMensalidadeContrat: TStoredProc;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
     Contcontrat : Word;
     VrTot,VrTxAd,Vrtotazao : real;

    //procedure AchaValor;
    //procedure Verifica_PrecoGrupo;
//    procedure Verifica_PrecoPlano;
//    procedure Verifica_Desconto;
//    procedure Verifica_Acrescimo;

  public

  end;

var
  QRListaUsuarioContratante: TQRListaUsuarioContratante;
  Codigo_Contratante, Numero_Usuarios : Integer;
  //Valor_Geral, Valor_Grupo, Valor_Titulo, Valor_Desconto, Valor_Usuario,
//  Valor_Acrescimo : currency ;
//  Tem_Acrescimo : Boolean;
//  Valor : String;
  DataPesq : TDateTime;

implementation
{$R *.DFM}

uses RelManutencao, Senha, udm;

procedure TQRListaUsuarioContratante.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     Vrtotazao := 0;
     Contcontrat := 0;
     QRLabelEmpresa.Caption := Senha.Empresa;
     sp_relMensalidadeContrat.Close;
     sp_relMensalidadeContrat.ParamByName('@Contratante').asInteger := Codigo_Contratante;
     sp_relMensalidadeContrat.ParambyName('@DataPesq').asString   := DateToStr(DataPesq);
     sp_relMensalidadeContrat.Open;
     //ShowMessage(IntToStr(sp_relMensalidadeContrat.recordcount));
//     beep;
end;
{
procedure TQRListaUsuarioContratante.AchaValor;
begin

   SpVrMensalidade.Close;
   SpVrMensalidade.ParamByName('@cdContratante').AsString := QueryContratosCodigo.AsString;
   SpVrMensalidade.ParamByName('@DtBase'       ).AsString := DateToStr(DataPesq);
   SpVrMensalidade.Open;

//   SpVrMensalidade.FieldByName('VrMensalidade').AsCurrency
   Valor_Desconto  := SpVrMensalidade.FieldByName('VrDesconto').AsCurrency; // desconto por qtde de usuários
   Valor_Titulo    := SpVrMensalidade.FieldByName('VrMensalidadeLiq').AsCurrency;
   Numero_Usuarios := SpVrMensalidade.FieldByName('qtdeUsu').AsInteger;

   SpVrMensalidade.Close;
end;
}

{procedure TQRListaUsuarioContratante.AchaValor;
begin
     Valor_Titulo := 0;

     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratosCodigo.asInteger;
         Open;
         Numero_Usuarios := 0;
         // Pega o Número de Usuários do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;
         Verifica_Desconto;

         First;
         while not eof do
           begin
             Valor_Usuario := 0;
             with QueryPrecoContratante do
               begin
                 Close;
                 ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;
                 ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
                 Open;
                 Last;
                 if RecordCount = 0 then
                    Verifica_PrecoGrupo
                 else
                    begin
                      Valor_Titulo := Valor_Titulo + QueryPrecoContratanteValor.asCurrency;
                      Valor_Usuario := QueryPrecoContratanteValor.asCurrency;
                      if Valor_Desconto <> 0 then
                         begin
                           Valor_Titulo := Valor_Titulo - Valor_Desconto;
                           Valor_Usuario := QueryPrecoContratanteValor.asCurrency - Valor_Desconto;
                         end;
                    end;
               end;
             Verifica_Acrescimo; // Verifica se o Plano possui Acréscimo
             if Tem_Acrescimo then
                begin
                  Valor_Acrescimo := (Valor_Usuario * QueryAcrescimoPercentual.asFloat) / 100;
                  Valor_Usuario := Valor_Usuario + (int(Valor_Acrescimo * 100) /100);
                  Valor_Titulo := Valor_Titulo + (int(Valor_Acrescimo * 100) /100);
                end;
             Next;
           end;
       end;
end;
 }

procedure TQRListaUsuarioContratante.QRGroup2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   Inc(Contcontrat);
   VrTot := 0;
end;

procedure TQRListaUsuarioContratante.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelqtContrat.Caption := IntToStr(Contcontrat) + ' Contratantes titulares';
   QRLabelVrTot_.caption := FormatFloat('###,###,##0.00',Vrtotazao);

end;

procedure TQRListaUsuarioContratante.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   VrTot := VrTot + sp_relMensalidadeContrat.fieldByName('valor').Ascurrency;
end;

procedure TQRListaUsuarioContratante.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelTxAde.caption := ' + ' + FormatFloat('###,##0.00',VrTxAd) + ' = ' +  FormatFloat('###,###,###,##0.00',VrTxAd + VrTot);
   Vrtotazao := Vrtotazao + VrTxAd + VrTot;
end;

procedure TQRListaUsuarioContratante.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   VrTxAd := StrToFloat(dm.GetParam('TX_ADE'));
end;

end.
