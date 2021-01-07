unit EtiquetaContratante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Gutenberg, Biblio,IniFiles, Mask, DBCtrls,
  Db, DBTables;

type
  TFormEtiquetaContratante = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label16: TLabel;
    BitBtnPesquisaCobertura: TBitBtn;
    EditCodigo: TEdit;
    QueryContratantes: TQuery;
    QueryContratantesCodigo: TIntegerField;
    QueryContratantesNome: TStringField;
    QueryContratantesExclusao: TDateTimeField;
    QueryContratantesEndereco_Comercial: TStringField;
    QueryContratantesBairro_Comercial: TStringField;
    QueryContratantesCidade_Comercial: TStringField;
    QueryContratantesEstado_Comercial: TStringField;
    QueryContratantesCep_Comercial: TStringField;
    Label1: TLabel;
    EditNumero: TEdit;
    procedure MemoEtiquetaExit(Sender: TObject);
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumeroExit(Sender: TObject);
    procedure EditNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure BitBtnPesquisaCoberturaClick(Sender: TObject);
  private
    { Private declarations }
    procedure Imprime_Carteirinha;
    procedure Imprime_Lado1;
    procedure Imprime_Lado2;

  public
    { Public declarations }
  end;

var
  FormEtiquetaContratante: TFormEtiquetaContratante;
  Impressora: TGutenberg;
  CaminhoImpressora : String[30];
  Linha, Pagina, Carteirinha, i : Integer;
  Ini: TIniFile;

implementation

{$R *.DFM}

uses EmImpres, PesquisaContratante;

procedure TFormEtiquetaContratante.MemoEtiquetaExit(Sender: TObject);
begin
     EditNumero.SetFocus;
end;

procedure TFormEtiquetaContratante.EditNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormEtiquetaContratante.EditNumeroExit(Sender: TObject);
begin
     Carteirinha := StrToInt(EditNumero.Text);
     if (Carteirinha > 10) or (Carteirinha = 0) then
        begin
          ShowMessage('O N˙mero Digitado Inv·lido !!!');
          EditNumero.Text := '1';
          EditNumero.SetFocus;
        end
     else
       BitBtnImprimir.SetFocus;
end;

procedure TFormEtiquetaContratante.EditNumeroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormEtiquetaContratante.BitBtnImprimirClick(Sender: TObject);
begin
     with Querycontratantes do
       begin
          close;
          Parambyname('Codigo').asString := Editcodigo.text;
          open;
       end;
     Carteirinha := StrToInt(EditNumero.Text);
     FormEtiquetaContratante.Enabled := False;
     Application.CreateForm(TFormEmImpressao, FormEmImpressao);
     FormEmImpressao.Caption := 'Impress„o da Etiqueta Contratante';
     FormEmImpressao.Show;
     FormEmImpressao.Update;

     Imprime_Carteirinha;

     FormEtiquetaContratante.Enabled := True;
     FormEmImpressao.Hide;
     FormEmImpressao.Free;
end;

procedure TFormEtiquetaContratante.Imprime_Carteirinha;
var
   CaminhoImpressora : String[30];
begin
     Ini := TInifile.Create('C:\MultiOdonto\Impressora.Ini');

     try
       CaminhoImpressora := Ini.ReadString('IMPRESSORA', 'ImpressoraCarteirinha', '');
     finally
       Ini.Free;
     end;

     try
        Impressora := TGutenberg.Create(CaminhoImpressora,'Carteirinha');
        try
           With Impressora do
                begin
                  Filter:=gfConvert;
                  SetFilterMasks ('·ÈÌÛ˙„ı‚Ù√¬¡… Õ”‘’⁄Á«≤≥™∫∞','aeiouaoaoAAAEEIOOOUcC23aoo');

                  SendControls(#27#50); // Coloca a impressora em modo 1/6

                  Pagina := 0;

                  case Carteirinha of
                    1 : Imprime_Lado1;
                    3 : Imprime_Lado1;
                    5 : Imprime_Lado1;
                    7 : Imprime_Lado1;
                    9 : Imprime_Lado1;
                    2 : Imprime_Lado2;
                    4 : Imprime_Lado2;
                    6 : Imprime_Lado2;
                    8 : Imprime_Lado2;
                    10 : Imprime_Lado2;
                  end;

                  Impressora.SendControls(#27#48);
                  Impressora.SendControls(#18);
                  Eject;
                end;
        except
              ShowMessage('Erro durante a impress„o !');
        end;
        try
           Impressora.Free;
        except
              ShowMessage('Erro fechando a impressora !');
        end;
     except
           ShowMessage ('Impressora Inv·lida ou erro de Spool');
     end;
end;

procedure TFormEtiquetaContratante.Imprime_Lado1;
begin
     case Carteirinha of
       1 : Linha := 5;
       3 : Linha := 16;
       5 : Linha := 27;
       7 : Linha := 38;
       9 : Linha := 49;
     end;

     Impressora.GWritePos(Linha, 09, Copy(QueryContratantesNome.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 09, Copy(QueryContratantesEndereco_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 09, Copy(QueryContratantesBairro_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 09, Copy(QueryContratantesCidade_Comercial.AsString, 1, 26) + '  ' +
                                     Copy(QueryContratantesEstado_Comercial.AsString, 1, 2));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 09, Copy(QueryContratantesCEP_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
end;

procedure TFormEtiquetaContratante.Imprime_Lado2;
begin
     case Carteirinha of
       2 : Linha := 5;
       4 : Linha := 16;
       6 : Linha := 27;
       8 : Linha := 38;
       10 : Linha := 49;
     end;

     Impressora.GWritePos(Linha, 42, Copy(QueryContratantesNome.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 42, Copy(QueryContratantesEndereco_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 42, Copy(QueryContratantesBairro_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 42, Copy(QueryContratantesCidade_Comercial.AsString, 1, 26) + '  ' +
                                     Copy(QueryContratantesEstado_Comercial.AsString, 1, 2));
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 42, Copy(QueryContratantesCEP_Comercial.AsString, 1, 30));
     Linha := Linha + 1;
end;

procedure TFormEtiquetaContratante.BitBtnPesquisaCoberturaClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;
     EditCodigo.Text := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asString;
     FormPesquisaContratante.QueryContratante.close;
     FormPesquisaContratante.Free;
end;

end.
