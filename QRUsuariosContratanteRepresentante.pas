{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impress�o do Relat�rio do Manuten��o                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Fl�via Pontoglio                                          }
{ Data ............: 24/04/2002                                                }

unit QRUsuariosContratanteRepresentante;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaUsuarioContratanteRepresentante = class(TQuickRep)
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
    QRLabel11: TQRLabel;
    QRLabelContratante: TQRLabel;
    QueryGrupo: TQuery;
    QueryUsuarios: TQuery;
    DataSourceContratante: TDataSource;
    QRGroup2: TQRGroup;
    QueryContratos: TQuery;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QueryGrupoCodigo: TIntegerField;
    QueryGrupoDescricao: TStringField;
    QueryGrupoFlag_Envio_Ans: TStringField;
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
    QRLabelValor: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelGrupo: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabelGeral: TQRLabel;
    QRLabelValorVidas: TQRLabel;
    QRLabel10: TQRLabel;
    QRGroup3: TQRGroup;
    QRExpr3: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QueryContratosCodigo: TSmallintField;
    QueryContratosnome: TStringField;
    QueryContratosCodigo_1: TIntegerField;
    QueryContratosNome_1: TStringField;
    QueryContratosPlano: TIntegerField;
    QueryContratosGrupo_Contratante: TIntegerField;
    QueryContratosCodigo_2: TIntegerField;
    QueryContratosNome_2: TStringField;
    QueryContratosCodigo_3: TIntegerField;
    QueryContratosDigito: TIntegerField;
    QueryContratosCodigo_Completo: TIntegerField;
    QueryContratosNome_3: TStringField;
    QueryContratosGrau_Parentesco: TSmallintField;
    QueryContratosData_Nascimento: TDateTimeField;
    QueryContratosData_Inclusao: TDateTimeField;
    QueryContratosData_Exclusao: TDateTimeField;
    QueryContratosContratante_Titular: TIntegerField;
    QueryContratosVendedor: TIntegerField;
    QueryContratosE_Civil: TStringField;
    QueryContratosSexo: TStringField;
    QueryContratosPrimeiro_Faturamento: TDateTimeField;
    QueryContratosUltimo_Faturamento: TDateTimeField;
    QueryContratosInclusao_Susep: TDateTimeField;
    QueryContratosExclusao_Susep: TDateTimeField;
    QueryContratosUsuario_Anterior: TBooleanField;
    QueryContratosBonifica_Carencia: TBooleanField;
    QueryContratosSituacao: TStringField;
    QueryContratosOperador_Inclusao: TIntegerField;
    QueryContratosOperador_Alteracao: TIntegerField;
    QueryContratosOperador_Exclusao: TIntegerField;
    QueryContratosNomeGrupo: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    procedure AchaValor;
    procedure Verifica_PrecoGrupo;
    procedure Verifica_PrecoPlano;
    procedure Verifica_Desconto;

  public

  end;

var
  QRListaUsuarioContratanteRepresentante: TQRListaUsuarioContratanteRepresentante;
  Codigo_Contratante, Numero_Usuarios, Representante : Integer;
  Valor_Geral, Valor_Grupo, Valor_Titulo, Valor_Desconto : Currency;

implementation

{$R *.DFM}

uses RelManutencao, Senha;

procedure TQRListaUsuarioContratanteRepresentante.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     Valor_Geral := 0;
     Valor_Grupo := 0;
     with QueryContratos do
       begin
         Close;
         ParamByName('Representante').asInteger := Representante;
         Open;
       end;
end;

procedure TQRListaUsuarioContratanteRepresentante.AchaValor;
begin
     Valor_Titulo := 0;

     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratosCodigo_1.asInteger;
         Open;
         Numero_Usuarios := 0;
         // Pega o N�mero de Usu�rios do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;

         First;
         while not eof do
           begin
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
                      Verifica_Desconto;
                      if Valor_Desconto <> 0 then
                         Valor_Titulo := Valor_Titulo - Valor_Desconto;
                    end;
               end;
             Next;
           end;
       end;
end;

procedure TQRListaUsuarioContratanteRepresentante.Verifica_PrecoGrupo;
begin
     with QueryPrecoGrupo do
       begin
         Close;
         ParamByName('Grupo').asInteger := QueryContratosGrupo_Contratante.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoGrupoValor.asCurrency;
             Verifica_Desconto;
             if Valor_Desconto <> 0 then
                Valor_Titulo := Valor_Titulo - Valor_Desconto;
           end;
       end;
end;

procedure TQRListaUsuarioContratanteRepresentante.Verifica_PrecoPlano;
begin
     with QueryPrecoPlano do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratosPlano.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            exit
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoPlanoValor.asCurrency;
             Verifica_Desconto;
             if Valor_Desconto <> 0 then
                Valor_Titulo := Valor_Titulo - Valor_Desconto;
           end;
       end;
end;

procedure TQRListaUsuarioContratanteRepresentante.Verifica_Desconto;
begin
     Valor_Desconto := 0;
     with QueryDesconto do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratosPlano.asInteger;
         Open;
         if RecordCount <> 0 then
            while not eof do
              begin
                if (Numero_Usuarios >= QueryDescontoQtde_Usuarios1.asInteger)
                  and (Numero_Usuarios <= QueryDescontoQtde_Usuarios2.asInteger) then
                     Valor_Desconto := QueryDescontoValor_Desconto.asCurrency;
                Next;
              end;
      end;
end;

procedure TQRListaUsuarioContratanteRepresentante.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     AchaValor;
     QRLabelValor.Caption := FormatFloat('R$ ' + '###0.00', Valor_Titulo);
     Valor_Grupo := Valor_Grupo + Valor_Titulo;
     Valor_Geral := Valor_Geral + Valor_Titulo;
end;

procedure TQRListaUsuarioContratanteRepresentante.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelGrupo.Caption := FormatFloat('R$ ' + '###0.00', Valor_Grupo);
end;

procedure TQRListaUsuarioContratanteRepresentante.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelGeral.Caption := FormatFloat('R$ ' + '###0.00', Valor_Geral);
     QRLabelValorVidas.Caption := FormatFloat('R$ ' + '###0.00', (Valor_Geral / QueryContratos.RecordCount));
end;

procedure TQRListaUsuarioContratanteRepresentante.QRBand4AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     Valor_Grupo := 0;
end;

end.
