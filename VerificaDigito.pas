{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Verificação do Digito da Conta Corrente                   }
{ Cliente .........: Multiodonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit VerificaDigito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Biblio;

type
  TFormVerificaDigito = class(TForm)
    RadioGroupBancos: TRadioGroup;
    BitBtnVerifica: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtnVerificaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
       procedure VerificaBradesco;
       procedure VerificaBanespa;
       procedure VerificaCaixa;
       procedure VerificaItau;
       procedure VerificaUnibanco;
       procedure VerificaHSBC;
       procedure VerificaBrasil;
       procedure VerificaReal;
       procedure VerificaSantander;

  public
    { Public declarations }
  end;

var
  FormVerificaDigito: TFormVerificaDigito;
  UltimaPosicao, Soma, Diferenca, Digito, Resto, Botao : Integer;
  Conta : String[8];
  Conta2, Aux : String[5];
  Agencia : String[4];
  Parcial : String[2];
  Campo1, Campo2, Campo3, Campo4, Campo5, Campo6, Campo7, Campo8 : Integer;
  Campo9, Campo10, Campo11 : Integer;
  Resultado1, Resultado2, Resultado3, Resultado4, Resultado5, Resultado6, Resultado7, Resultado8 : Integer;
  Resultado9, Resultado10, Resultado11 : Integer;
  Verificado : Boolean;
  Res_Str1, Res_Str2, Res_Str3, Res_Str4, Res_Str5 : String[1];
  Res_Str6, Res_Str7, Res_Str8, Res_Str9, Res_Str10 : String[1];


implementation

{$R *.DFM}

uses Contratante;

procedure TFormVerificaDigito.BitBtnVerificaClick(Sender: TObject);
begin
     if Contratante.FormContratante.QueryContratanteDigito.asString = 'X' then
        exit;
        
     case RadioGroupBancos.ItemIndex of
      -1 : begin
             MessageDlg('Favor Escolher um Banco !!!', mtError, [mbOk], 0);
             exit;
           end;
       0 : VerificaBradesco;
       1 : VerificaBanespa;
       2 : VerificaCaixa;
       3 : VerificaItau;
       4 : VerificaUnibanco;
       5 : VerificaHSBC;
       6 : VerificaBrasil;
       7 : VerificaReal;
       8 : VerificaSantander;
     end;
     Botao := RadioGroupBancos.ItemIndex;
end;

procedure TFormVerificaDigito.VerificaBradesco;
begin
     Verificado := True;
     Conta := StrAll(08 - Length(Contratante.FormContratante.QueryContratanteConta.asString), '0') + Contratante.FormContratante.QueryContratanteConta.asString; // Conta do Sacado
     Campo1 := StrToInt(Copy(Conta, 8, 1));
     Campo2 := StrToInt(Copy(Conta, 7, 1));
     Campo3 := StrToInt(Copy(Conta, 6, 1));
     Campo4 := StrToInt(Copy(Conta, 5, 1));
     Campo5 := StrToInt(Copy(Conta, 4, 1));
     Campo6 := StrToInt(Copy(Conta, 3, 1));
     Campo7 := StrToInt(Copy(Conta, 2, 1));
     Campo8 := StrToInt(Copy(Conta, 1, 1));

     Resultado1 := Campo1 * 2;
     Resultado2 := Campo2 * 3;
     Resultado3 := Campo3 * 4;
     Resultado4 := Campo4 * 5;
     Resultado5 := Campo5 * 6;
     Resultado6 := Campo6 * 7;
     Resultado7 := Campo7 * 2;
     Resultado8 := Campo8 * 3;

     Soma := Resultado1 + Resultado2 + Resultado3 + Resultado4 + Resultado5 + Resultado6 + Resultado7 + Resultado8;
     Diferenca := Soma div 11;
     Resto := Soma - (11 * Diferenca);
     Digito := 11 - Resto;
     if Resto = 0 then
        Digito := Resto;

     if Resto = 1 then MessageDlg('O Dígito Correto desta Conta é P.', mtInformation, [mbOk], 0)
     else
     if Resto = 0 then MessageDlg('O Dígito Correto desta Conta é 0.', mtInformation, [mbOk], 0)
     else
        MessageDlg('O Dígito Correto desta Conta é ' + IntToStr(Digito) + '.', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaBanespa;
begin
     Verificado := True;
     Agencia := StrAll(04 - Length(Contratante.FormContratante.QueryContratanteAgencia.asString), '0') + Contratante.FormContratante.QueryContratanteAgencia.asString; // Agência do Sacado
     // Para efeito de Verificação do Dígito despreza-se o primeiro zero a esquerda
     Conta := StrAll(08 - Length(Contratante.FormContratante.QueryContratanteConta.asString), '0') + Contratante.FormContratante.QueryContratanteConta.asString; // Conta do Sacado
     Campo1  := StrToInt(Copy(Conta, 8, 1));
     Campo2  := StrToInt(Copy(Conta, 7, 1));
     Campo3  := StrToInt(Copy(Conta, 6, 1));
     Campo4  := StrToInt(Copy(Conta, 5, 1));
     Campo5  := StrToInt(Copy(Conta, 4, 1));
     Campo6  := StrToInt(Copy(Conta, 3, 1));
     Campo7  := StrToInt(Copy(Conta, 2, 1));
     Campo8  := StrToInt(Copy(Conta, 1, 1));
     Campo9  := StrToInt(Copy(Agencia, 4, 1));
     Campo10 := StrToInt(Copy(Agencia, 3, 1));
     Campo11 := StrToInt(Copy(Agencia, 2, 1));

     Resultado1  := Campo1  * 3;
     Resultado2  := Campo2  * 7;
     Resultado3  := Campo3  * 9;
     Resultado4  := Campo4  * 1;
     Resultado5  := Campo5  * 3;
     Resultado6  := Campo6  * 1;
     Resultado7  := Campo7  * 7;
     Resultado8  := Campo8  * 9;
     Resultado9  := Campo9  * 1;
     Resultado10 := Campo10 * 3;
     Resultado11 := Campo11 * 7;

     Soma := Resultado1 + Resultado2 + Resultado3 + Resultado4 + Resultado5
             + Resultado6 + Resultado7 + Resultado8 + Resultado9 + Resultado10 + Resultado11;

     Aux := IntToStr(Soma);
     Aux := StrAll(05 - Length(Aux), '0') + Aux;
     Soma:= StrToInt(Copy(Aux, 5, 1)); // Pegando o ultimo digito do campo
     Digito := 10 - Soma;

     if Soma = 0 then MessageDlg('O Dígito Correto desta Conta é 0.', mtInformation, [mbOk], 0)
     else
        MessageDlg('O Dígito Correto desta Conta é ' + IntToStr(Digito) + '.', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaCaixa;
begin
     MessageDlg('A Verificação do Dígito para Este Banco esta Indisponível !!!', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaItau;
begin
     MessageDlg('A Verificação do Dígito para Este Banco esta Indisponível !!!', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaUnibanco;
begin
     MessageDlg('A Verificação do Dígito para Este Banco esta Indisponível !!!', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaHSBC;
begin
     Verificado := True;
     Conta2 := StrAll(05 - Length(Contratante.FormContratante.QueryContratanteConta.asString), '0') + Contratante.FormContratante.QueryContratanteConta.asString; // Conta do Sacado
     Campo1 := StrToInt(Copy(Conta2, 5, 1));
     Campo2 := StrToInt(Copy(Conta2, 4, 1));
     Campo3 := StrToInt(Copy(Conta2, 3, 1));
     Campo4 := StrToInt(Copy(Conta2, 2, 1));
     Campo5 := StrToInt(Copy(Conta2, 1, 1));

     Res_Str1  := '0';
     Res_Str2  := '0';
     Res_Str3  := '0';
     Res_Str4  := '0';
     Res_Str5  := '0';
     Res_Str6  := '0';
     Res_Str7  := '0';
     Res_Str8  := '0';
     Res_Str9  := '0';
     Res_Str10 := '0';

     Resultado1 := Campo1 * 2;
     Parcial := IntToStr(Resultado1);
     if Resultado1 > 10 then
        begin
          Res_Str1 := Copy(Parcial, 1, 1);
          Res_Str2 := Copy(Parcial, 2, 1);
        end
     else
        Res_Str1 := Copy(Parcial, 1, 1);

     Resultado2 := Campo2 * 1;

     Resultado3 := Campo3 * 2;
     Parcial := IntToStr(Resultado3);
     if Resultado3 > 10 then
        begin
          Res_Str5 := Copy(Parcial, 1, 1);
          Res_Str6 := Copy(Parcial, 2, 1);
        end
     else
        Res_Str5 := Copy(Parcial, 1, 1);

     Resultado4 := Campo4 * 1;

     Resultado5 := Campo5 * 2;
     Parcial := IntToStr(Resultado5);
     if Resultado5 > 10 then
        begin
          Res_Str9 := Copy(Parcial, 1, 1);
          Res_Str10 := Copy(Parcial, 2, 1);
        end
     else
        Res_Str9 := Copy(Parcial, 1, 1);

     Resultado1  := StrToInt(Res_Str1);
     Resultado6  := StrToInt(Res_Str2);
     Resultado3  := StrToInt(Res_Str5);
     Resultado7  := StrToInt(Res_Str6);
     Resultado5  := StrToInt(Res_Str9);
     Resultado8  := StrToInt(Res_Str10);

     Soma := Resultado1 + Resultado2 + Resultado3 + Resultado4 + Resultado5 +
             Resultado6 + Resultado7 + Resultado8;

     Diferenca := Soma div 10;
     Resto := Soma - (10 * Diferenca);
     Digito := 10 - Resto;

     if Resto = 0 then MessageDlg('O Dígito Correto do Módulo 10 desta Conta é 0.', mtInformation, [mbOk], 0)
     else
        MessageDlg('O Dígito Correto do Módulo 10 desta Conta é ' + IntToStr(Digito) + '.', mtInformation, [mbOk], 0);

     Agencia := StrAll(04 - Length(Contratante.FormContratante.QueryContratanteAgencia.asString), '0') + Contratante.FormContratante.QueryContratanteAgencia.asString; // Agência do Sacado
     // Para efeito de Verificação do Dígito despreza-se o primeiro zero a esquerda
     Conta := StrAll(05 - Length(Contratante.FormContratante.QueryContratanteConta.asString), '0') + Contratante.FormContratante.QueryContratanteConta.asString; // Conta do Sacado
     Campo1   := Digito;
     Campo2   := StrToInt(Copy(Conta, 5, 1));
     Campo3   := StrToInt(Copy(Conta, 4, 1));
     Campo4   := StrToInt(Copy(Conta, 3, 1));
     Campo5   := StrToInt(Copy(Conta, 2, 1));
     Campo6   := StrToInt(Copy(Conta, 1, 1));
     Campo7   := StrToInt(Copy(Agencia, 4, 1));
     Campo8   := StrToInt(Copy(Agencia, 3, 1));
     Campo9   := StrToInt(Copy(Agencia, 2, 1));
     Campo10  := StrToInt(Copy(Agencia, 1, 1));

     Resultado1  := Campo1  * 9;
     Resultado2  := Campo2  * 8;
     Resultado3  := Campo3  * 7;
     Resultado4  := Campo4  * 6;
     Resultado5  := Campo5  * 5;
     Resultado6  := Campo6  * 4;
     Resultado7  := Campo7  * 3;
     Resultado8  := Campo8  * 2;
     Resultado9  := Campo9  * 9;
     Resultado10 := Campo10 * 8;

     Soma := Resultado1 + Resultado2 + Resultado3 + Resultado4 + Resultado5 + Resultado6 + Resultado7 + Resultado8
             + Resultado9 + Resultado10;
     Diferenca := Soma div 11;
     Resto := Soma - (11 * Diferenca);

     if (Resto = 0) or (Resto = 10) then MessageDlg('O Dígito Correto do Módulo 11 desta Conta é 0.', mtInformation, [mbOk], 0)
     else
        MessageDlg('O Dígito Correto do Módulo 11 desta Conta é ' + IntToStr(Resto) + '.', mtInformation, [mbOk], 0);

     MessageDlg('O Dígito Correto desta Conta é ' + IntToStr(Digito) + IntToStr(Resto) + '.', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaBrasil;
begin
     MessageDlg('A Verificação do Dígito para Este Banco esta Indisponível !!!', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaReal;
begin
     MessageDlg('O Banco Real Não Disponibiliza a Rotina de Verificação !!!', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.VerificaSantander;
begin
     Verificado := True;
     Conta := StrAll(08 - Length(Contratante.FormContratante.QueryContratanteConta.asString), '0') + Contratante.FormContratante.QueryContratanteConta.asString; // Conta do Sacado
     Campo1 := StrToInt(Copy(Conta, 8, 1));
     Campo2 := StrToInt(Copy(Conta, 7, 1));
     Campo3 := StrToInt(Copy(Conta, 6, 1));
     Campo4 := StrToInt(Copy(Conta, 5, 1));
     Campo5 := StrToInt(Copy(Conta, 4, 1));
     Campo6 := StrToInt(Copy(Conta, 3, 1));
     Campo7 := StrToInt(Copy(Conta, 2, 1));
     Campo8 := StrToInt(Copy(Conta, 1, 1));

     Resultado1 := Campo1 * 2;
     Resultado2 := Campo2 * 3;
     Resultado3 := Campo3 * 4;
     Resultado4 := Campo4 * 5;
     Resultado5 := Campo5 * 6;
     Resultado6 := Campo6 * 7;
     Resultado7 := Campo7 * 8;
     Resultado8 := Campo8 * 9;

     Soma := Resultado1 +  Resultado2 + Resultado3 + Resultado4 + Resultado5 + Resultado6 + Resultado7 + Resultado8;
     Soma := Soma * 10;
     Diferenca := Soma div 11;
     Resto := Soma - (11 * Diferenca);
     Digito := Resto;

     MessageDlg('O Dígito Correto desta Conta é ' + IntToStr(Digito) + '.', mtInformation, [mbOk], 0);
end;

procedure TFormVerificaDigito.FormCreate(Sender: TObject);
begin
     Verificado := False;
end;

end.
