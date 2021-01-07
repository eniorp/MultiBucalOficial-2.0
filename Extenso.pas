unit Extenso;

interface

uses
     Sysutils;

type
    TVetor9 = array[1..9] of String[15];

const
     vBilhao: TVetor9 = ('UM BILHAO ','DOIS BILHOES ','TRES BILHOES ','QUATRO BILHOES ','CINCO BILHOES ','SEIS BILHOES ',
                           'SETE BILHOES ','OITO BILHOES ','NOVE BILHOES ');
     vCentena: TVetor9 = ('CENTO ','DUZENTOS ','TREZENTOS ','QUATROCENTOS ','QUINHENTOS ','SEISCENTOS ','SETECENTOS ',
                            'OITOCENTOS ','NOVECENTOS ');
     vDezena: TVetor9 = ('DEZ ','VINTE ','TRINTA ','QUARENTA ','CINQUENTA ','SESSENTA ','SETENTA ','OITENTA ','NOVENTA ');
     vUnidade: TVetor9 = ('UM ','DOIS ','TRES ','QUATRO ','CINCO ','SEIS ','SETE ','OITO ','NOVE ');
     v11a19: TVetor9 = ('ONZE ','DOZE ','TREZE ','QUATORZE ','QUINZE ','DEZESSEIS ','DEZESSETE ','DEZOITO ','DEZENOVE ');

     cBilhao:        String[7] = 'BILHAO ';
     cBilhoes:       String[8] = 'BILHOES ';
     cCem:           String[4] = 'CEM ';
     cMilhao:        String[7] = 'MILHAO ';
     cMilhoes:       String[8] = 'MILHOES ';
     cMil:           String[4] = 'MIL ';
     cReal:          String[5] = 'REAL ';
     cReais:         String[6] = 'REAIS ';
     cCentavo:       String[8] = 'CENTAVO ';
     cCentavos:      String[9] = 'CENTAVOS ';
     cDeReais:       String[9] = 'DE REAIS ';

Function ValorExtenso(const Valor: Double): String;
Function ValorExtensoNumero(const Valor: Double): String;

implementation

{Parametro Double no máximo 9.999.999.999,99}
Function ValorExtenso(const Valor: Double): String;
var
   ValorAlfa: String[13];
   ValorInt: Array[1..13] of Shortint;
   i: Word;
   ValorAux: Integer;
   ValorReal: Double;
begin
     ValorAlfa := FormatFloat('0000000000.00', Valor);
     For i := 1 to 10 do ValorInt[i] := StrToInt(ValorAlfa[i]);
     For i := 12 to 13 do ValorInt[i] := StrToInt(ValorAlfa[i]);
     Result := '';
{ Converte unidade de bilhoes }
     If ValorInt[1] <> 0 then
        begin
             Result := Result + vUnidade[ValorInt[1]];
             If ValorInt[1] = 1 then Result := Result + cBilhao else Result := Result + cBilhoes;
        end;
     ValorAux := StrToInt(Copy(ValorAlfa, 2, 3));
     If (ValorInt[1] <> 0) and (ValorAux <> 0) then Result := Result + 'E ';

{ Converte Milhoes }
     If ValorInt[2] <> 0 then
        begin
             If (ValorInt[3] <> 0) or (ValorInt[4] <> 0) then Result := Result + vCentena[ValorInt[2]] + 'E '
             else
                 If ValorInt[2] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[2]]
        end;

     If ValorInt[3] = 1 then
             If ValorInt[4] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[4]]
        else
            If ValorInt[3] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[3]];
                    If ValorInt[4] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[4] <> 0) and (ValorInt[3] <> 1) then
        Result := Result + vUnidade[ValorInt[4]];
     ValorAux := StrToInt(Copy(ValorAlfa, 2, 3));
     If ValorAux = 1 then Result := Result + cMilhao else
        If ValorAux <> 0 then Result := Result + cMilhoes;
     ValorReal := StrToFloat(Copy(ValorAlfa, 1, 4));
     ValorAux := StrToInt(Copy(ValorAlfa, 5, 3));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{ Converte Milhares }
     If ValorInt[5] <> 0 then
        begin
             If (ValorInt[6] <> 0) or (ValorInt[7] <> 0) then Result := Result + vCentena[ValorInt[5]] + 'E '
             else
                 If ValorInt[5] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[5]]
        end;

     If ValorInt[6] = 1 then
             If ValorInt[7] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[7]]
        else
            If ValorInt[6] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[6]];
                    If ValorInt[7] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[7] <> 0) and (ValorInt[6] <> 1) then
        Result := Result + vUnidade[ValorInt[7]];
     ValorAux := StrToInt(Copy(ValorAlfa, 5, 3));
     If ValorAux <> 0 then Result := Result + cMil;
     ValorReal := StrToFloat(Copy(ValorAlfa, 1, 7));
     ValorAux := StrToInt(Copy(ValorAlfa, 8, 3));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{ Converte Uni/Dez/Centena }
     If ValorInt[8] <> 0 then
        begin
             If (ValorInt[9] <> 0) or (ValorInt[10] <> 0) then Result := Result + vCentena[ValorInt[8]] + 'E '
             else
                 If ValorInt[8] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[8]]
        end;

     If ValorInt[9] = 1 then
             If ValorInt[10] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[10]]
        else
            If ValorInt[9] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[9]];
                    If ValorInt[10] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[10] <> 0) and (ValorInt[9] <> 1) then
        Result := Result + vUnidade[ValorInt[10]];

     ValorReal := Int(Valor);
     If ValorReal = 1 then Result := Result + cReal else
        If (ValorReal = 1000000000) or (ValorReal = 1000000) then Result := Result + cDeReais else
           If ValorReal <> 0 then Result := Result + cReais;
     ValorAux := StrToInt(Copy(ValorAlfa, 12, 2));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{Converte centavos}
     If ValorInt[12] = 1 then
             If ValorInt[13] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[13]]
        else
            If ValorInt[12] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[12]];
                    If ValorInt[13] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[13] <> 0) and (ValorInt[12] <> 1) then
        Result := Result + vUnidade[ValorInt[13]];

     If ValorAux = 1 then Result := Result + cCentavo else
        If ValorAux <> 0 then Result := Result + cCentavos;
end;




Function ValorExtensoNumero(const Valor: Double): String;
var
   ValorAlfa: String[13];
   ValorInt: Array[1..13] of Shortint;
   i: Word;
   ValorAux: Integer;
   ValorReal: Double;
begin
     ValorAlfa := FormatFloat('0000000000.00', Valor);
     For i := 1 to 10 do ValorInt[i] := StrToInt(ValorAlfa[i]);
     For i := 12 to 13 do ValorInt[i] := StrToInt(ValorAlfa[i]);
     Result := '';
{ Converte unidade de bilhoes }
     If ValorInt[1] <> 0 then
        begin
             Result := Result + vUnidade[ValorInt[1]];
             If ValorInt[1] = 1 then Result := Result + cBilhao else Result := Result + cBilhoes;
        end;
     ValorAux := StrToInt(Copy(ValorAlfa, 2, 3));
     If (ValorInt[1] <> 0) and (ValorAux <> 0) then Result := Result + 'E ';

{ Converte Milhoes }
     If ValorInt[2] <> 0 then
        begin
             If (ValorInt[3] <> 0) or (ValorInt[4] <> 0) then Result := Result + vCentena[ValorInt[2]] + 'E '
             else
                 If ValorInt[2] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[2]]
        end;

     If ValorInt[3] = 1 then
             If ValorInt[4] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[4]]
        else
            If ValorInt[3] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[3]];
                    If ValorInt[4] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[4] <> 0) and (ValorInt[3] <> 1) then
        Result := Result + vUnidade[ValorInt[4]];
     ValorAux := StrToInt(Copy(ValorAlfa, 2, 3));
     If ValorAux = 1 then Result := Result + cMilhao else
        If ValorAux <> 0 then Result := Result + cMilhoes;
     ValorReal := StrToFloat(Copy(ValorAlfa, 1, 4));
     ValorAux := StrToInt(Copy(ValorAlfa, 5, 3));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{ Converte Milhares }
     If ValorInt[5] <> 0 then
        begin
             If (ValorInt[6] <> 0) or (ValorInt[7] <> 0) then Result := Result + vCentena[ValorInt[5]] + 'E '
             else
                 If ValorInt[5] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[5]]
        end;

     If ValorInt[6] = 1 then
             If ValorInt[7] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[7]]
        else
            If ValorInt[6] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[6]];
                    If ValorInt[7] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[7] <> 0) and (ValorInt[6] <> 1) then
        Result := Result + vUnidade[ValorInt[7]];
     ValorAux := StrToInt(Copy(ValorAlfa, 5, 3));
     If ValorAux <> 0 then Result := Result + cMil;
     ValorReal := StrToFloat(Copy(ValorAlfa, 1, 7));
     ValorAux := StrToInt(Copy(ValorAlfa, 8, 3));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{ Converte Uni/Dez/Centena }
     If ValorInt[8] <> 0 then
        begin
             If (ValorInt[9] <> 0) or (ValorInt[10] <> 0) then Result := Result + vCentena[ValorInt[8]] + 'E '
             else
                 If ValorInt[8] = 1 then Result := Result + cCem else Result := Result + vCentena[ValorInt[8]]
        end;

     If ValorInt[9] = 1 then
             If ValorInt[10] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[10]]
        else
            If ValorInt[9] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[9]];
                    If ValorInt[10] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[10] <> 0) and (ValorInt[9] <> 1) then
        Result := Result + vUnidade[ValorInt[10]];

{     ValorReal := Int(Valor);
     If ValorReal = 1 then Result := Result + cReal else
        If (ValorReal = 1000000000) or (ValorReal = 1000000) then Result := Result + cDeReais else
           If ValorReal <> 0 then Result := Result + cReais;}
     ValorAux := StrToInt(Copy(ValorAlfa, 12, 2));
     If (ValorAux <> 0) and (ValorReal <> 0) then Result := Result + 'E ';

{Converte centavos}
     If ValorInt[12] = 1 then
             If ValorInt[13] = 0 then Result := Result + vDezena[1] else Result := Result + v11a19[ValorInt[13]]
        else
            If ValorInt[12] <> 0 then
               begin
                    Result := Result + vDezena[ValorInt[12]];
                    If ValorInt[13] <> 0 then Result := Result + 'E ';
               end;
     If (ValorInt[13] <> 0) and (ValorInt[12] <> 1) then
        Result := Result + vUnidade[ValorInt[13]];

{     If ValorAux = 1 then Result := Result + cCentavo else
        If ValorAux <> 0 then Result := Result + cCentavos;}
end;

end.
