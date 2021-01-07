unit ArqANSRPC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls,Biblio;

type
  TFmGeraArqRPCANS = class(TForm)
    Button1: TButton;
    Query1: TQuery;
    QueryPref: TQuery;
    QueryParamANS: TQuery;
    Edit1: TEdit;
    Label1: TLabel;
    QueryGenerica: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGeraArqRPCANS: TFmGeraArqRPCANS;

implementation

uses udm;

{$R *.DFM}

procedure TFmGeraArqRPCANS.Button1Click(Sender: TObject);
Var F : TextFile;
    S,Aux,NrRegPlano : String;
    VCont : Smallint;
begin
    ShortDateFormat := 'dd/MM/yyyy';
//    ShowMessage(ShortDateFormat);
//    exit;
    Assignfile(F,Edit1.text);
    ReWrite(F);
    Query1.Close;
    Query1.Open;
    QueryPref.Close;
    QueryPref.Open;
    QueryParamANS.Close;
    QueryParamANS.Open;

    Aux := QueryParamANS.FieldByName('CodOperSusep').AsString;
    aux := InputBox('Nr registro Operadora na ANS','Nr registro Operadora na ANS',aux);
    Try
      StrToInt(aux);
    except
       ShowMessage(aux + ' não é um número válido, operação cancelada');
       exit;
    end;

    Aux := StrAll(6 - length(Aux),'0') + Aux;
    S := 'C1' + Aux + QueryParamANS.FieldByName('CNPJ').AsString;

    Aux := QueryPref.FieldByName('nome_empresa').AsString;
    Aux := Aux + StrAll(60 - length(Aux),' ');
    S := S + Aux;
    aux := inputBox('Data cadadastramento','Informe a data do cadastramento do Comunicado',DateToStr(dm.date));

    Try
      StrToDate(aux);
    except
       ShowMessage(aux + ' não é uma data válida, operação cancelada');
       exit;
    end;

    S := S + Copy(Aux,1,2) + Copy(Aux,4,2) + Copy(Aux,7,4);
    Writeln(F,S);

    NrRegPlano := InputBox('Nr Reg Plano','Informe o número do registro plano na ANS',Query1.FieldByName('NrPlanoAns').AsString);
    NrRegPlano := StrAll(9 - length(NrRegPlano),'0') + NrRegPlano;
    VCont := 0;
    While not Query1.Eof do
    begin
       S := 'C2' + NrRegPlano; // Identif Tipo Reg
    //   Aux := Query1.FieldByName('NrPlanoAns').AsString;
    //   S := S +  StrAll(9 - length(Aux),'0') + Aux; //Nr reg plano na ANS

       Aux := Query1.FieldByName('NmPlano').AsString;
       S := S +  Aux + StrAll(60 - length(Aux),' '); //NmPlano

       Aux := Query1.FieldByName('Contrato').AsString;
       S := S +  Aux + StrAll(20 - length(Aux),' '); //Nr contrato ou apolice

       S := S +  Query1.FieldByName('CondicaoContrat').AsString;//Condica contratacao

       Aux := Query1.FieldByName('DtIniAplicacaoRPC').AsString;
       Aux := Copy(Aux,4,2) + Copy(Aux,7,4);
       S := S + aux + StrAll(6 - length(Aux),' ');

       Aux := Query1.FieldByName('DtFimAplicacaoRPC').AsString;
       Aux := Copy(Aux,4,2) + Copy(Aux,7,4);
       S := S + aux + StrAll(6 - length(Aux),' ');


       Aux := Query1.FieldByName('DtIniAnaliseRPC').AsString;
       Aux := Copy(Aux,4,2) + Copy(Aux,7,4);
       S := S + aux + StrAll(6 - length(Aux),' ');

       Aux := Query1.FieldByName('DtFimAnaliseRPC').AsString;
       Aux := Copy(Aux,4,2) + Copy(Aux,7,4);
       S := S + aux + StrAll(6 - length(Aux),' ');

       Aux := Query1.FieldByName('QtdeBenef').AsString;
       S := S +  StrAll(10 - length(Aux),'0') + Aux; //Qtde Benef

       S := S +  Query1.FieldByName('SinalPercent').AsString;

       Aux := Query1.FieldByName('PercentReaj').AsString;
       //tirar00 Testar
       if (Copy(Aux,length(Aux) - 3,1) = ',') or (Copy(Aux,length(Aux) - 3,1) = '.') then
         Delete(Aux,length(Aux) - 3,1);
       S := S +  StrAll(5 - length(Aux),'0') + Aux;

       Writeln(F,S);

       S := 'C3001NAO HOUVE REAJUSTE' + StrAll(82,' ');
       Writeln(F,S);
       Inc(Vcont);
       Query1.Next;
    end;

    Aux := IntToStr((Vcont * 2) + 2);  //multiplica por dois porque cada registro tem duas linhas
    Aux := StrAll(6 - length(Aux),'0') + aux; // este total é o total de linhas no arquivo
    S := 'C9' + Aux; // Total de registro no arquivo

    Aux := IntToStr(Vcont);
    Aux := StrAll(6 - length(Aux),'0') + aux;

    S := S + Aux + Aux;
    Writeln(F,S);
    CloseFile(F);
    ShowMessage('O arquivo ' + Edit1.text + ' foi gerado com sucesso !');
end;

procedure TFmGeraArqRPCANS.FormShow(Sender: TObject);
procedure ExecutaQuery(Instrucao : String);
begin
   QueryGenerica.Close;
   QueryGenerica.Sql.Clear;
   QueryGenerica.sql.Add(Instrucao);
   try
      QueryGenerica.ExecSQL;
   except
   end;
end;


begin

end;

end.

