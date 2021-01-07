unit EtiquetasDentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Gutenberg, Biblio,IniFiles, Db, DBTables;

type
  TFormEtiquetasDentistas = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    QueryDentistas: TQuery;
    EditDentista1: TEdit;
    Label2: TLabel;
    EditDentista2: TEdit;
    Label3: TLabel;
    QueryDentistasCodigo: TIntegerField;
    QueryDentistasNome: TStringField;
    QueryDentistasEndereco_Comercial: TStringField;
    QueryDentistasBairro_Comercial: TStringField;
    QueryDentistasCep_Comercial: TStringField;
    QueryDentistasCidade_Comercial: TStringField;
    QueryDentistasEstado_Comercial: TStringField;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditDentista1KeyPress(Sender: TObject; var Key: Char);
    procedure EditDentista1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Imprime_Etiqueta;
    procedure Imprime_Linha;
    procedure Monta_Lado1;
    procedure Monta_Lado2;

  public
    { Public declarations }
  end;

var
  FormEtiquetasDentistas: TFormEtiquetasDentistas;
  Impressora: TGutenberg;
  CaminhoImpressora : String[30];
  Linha : Integer;
  Ini: TIniFile;
  Codigo_Str1, Codigo_Str2 : String[6];
  Nome_Str1, Nome_Str2 : String[30];
  Endereco_Str1, Endereco_Str2 : String[30];
  Bairro_Str1, Bairro_Str2 : String[15];
  Cep_Str1, Cep_Str2 : String[9];
  Cidade_Str1, Cidade_Str2 : String[20];
  Estado_Str1, Estado_Str2 : String[2];

implementation

{$R *.DFM}

uses EmImpres;

procedure TFormEtiquetasDentistas.BitBtnImprimirClick(Sender: TObject);
begin
     FormEtiquetasDentistas.Enabled := False;
     Application.CreateForm(TFormEmImpressao, FormEmImpressao);
     FormEmImpressao.Caption := 'Impress„o das Etiquetas Dentistas';
     FormEmImpressao.Show;
     FormEmImpressao.Update;

     Imprime_Etiqueta;

     FormEtiquetasDentistas.Enabled := True;
     FormEmImpressao.Hide;
     FormEmImpressao.Free;
end;

procedure TFormEtiquetasDentistas.Imprime_Etiqueta;
var
   CaminhoImpressora : String[30];
begin
     Linha := 1;

     Ini := TInifile.Create('C:\MultiOdonto\Impressora.Ini');

     try
       CaminhoImpressora := Ini.ReadString('IMPRESSORA', 'ImpressoraCarteirinha', '');
     finally
       Ini.Free;
     end;

     try
        Impressora := TGutenberg.Create(CaminhoImpressora,'Etiquetas');
        try
           with Impressora do
                begin
                  Filter:=gfConvert;
                  SetFilterMasks ('·ÈÌÛ˙„ı‚Ù√¬¡… Õ”‘’⁄Á«≤≥™∫∞','aeiouaoaoAAAEEIOOOUcC23aoo');

                  SendControls(#27#50); // Coloca a impressora em modo 1/6

                  with QueryDentistas do
                    begin
                      Close;
                      ParambyName('Codigo1').asInteger := StrToInt(EditDentista1.Text);
                      ParambyName('Codigo2').asInteger := StrToInt(EditDentista2.Text);
                      Open;
                      while not eof do
                        begin
                          Monta_Lado1;

                          Next;

                          Monta_Lado2;

                          Imprime_Linha;
                          Linha := Linha + 2;

                          Next;
                       end;
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

procedure TFormEtiquetasDentistas.Imprime_Linha;
begin
     Impressora.GWritePos(Linha, 03, 'Dentista    - ');
     Impressora.GWritePos(Linha, 18, Codigo_Str1);
     Impressora.GWritePos(Linha, 40, 'Dentista    - ');
     Impressora.GWritePos(Linha, 54, Codigo_Str2);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 03, Nome_Str1);
     Impressora.GWritePos(Linha, 40, Nome_Str2);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 03, Endereco_Str1);
     Impressora.GWritePos(Linha, 40, Endereco_Str2);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 03, Bairro_Str1);
     Impressora.GWritePos(Linha, 20, 'Cep:');
     Impressora.GWritePos(Linha, 25, Cep_Str1);
     Impressora.GWritePos(Linha, 40, Bairro_Str2);
     Impressora.GWritePos(Linha, 57, 'Cep:');
     Impressora.GWritePos(Linha, 62, Cep_Str2);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 03, Cidade_Str1);
     Impressora.GWritePos(Linha, 25, Estado_Str1);
     Impressora.GWritePos(Linha, 40, Cidade_Str2);
     Impressora.GWritePos(Linha, 64, Estado_Str2);
end;

procedure TFormEtiquetasDentistas.EditDentista1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormEtiquetasDentistas.EditDentista1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormEtiquetasDentistas.Monta_Lado1;
begin
     Codigo_Str1 := QueryDentistasCodigo.asString;
     Nome_Str1 := QueryDentistasNome.asString;
     Endereco_Str1 := QueryDentistasEndereco_Comercial.asString;
     Bairro_Str1 := QueryDentistasBairro_Comercial.asString;
     Cep_Str1 := QueryDentistasCep_Comercial.asString;
     Cidade_Str1 := QueryDentistasCidade_Comercial.asString;
     Estado_Str1 := QueryDentistasEstado_Comercial.asString;
end;

procedure TFormEtiquetasDentistas.Monta_Lado2;
begin
     Codigo_Str2 := QueryDentistasCodigo.asString;
     Nome_Str2 := QueryDentistasNome.asString;
     Endereco_Str2 := QueryDentistasEndereco_Comercial.asString;
     Bairro_Str2 := QueryDentistasBairro_Comercial.asString;
     Cep_Str2 := QueryDentistasCep_Comercial.asString;
     Cidade_Str2 := QueryDentistasCidade_Comercial.asString;
     Estado_Str2 := QueryDentistasEstado_Comercial.asString;
end;

procedure TFormEtiquetasDentistas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryDentistas.close;
end;

end.
