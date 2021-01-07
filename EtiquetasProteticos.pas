unit EtiquetasProteticos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Gutenberg, Biblio,IniFiles, Db, DBTables;

type
  TFormEtiquetasProteticos = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    QueryProteticos: TQuery;
    EditProtetico1: TEdit;
    Label2: TLabel;
    EditProtetico2: TEdit;
    Label3: TLabel;
    QueryProteticosCodigo: TIntegerField;
    QueryProteticosNome: TStringField;
    QueryProteticosEndereco_Comercial: TStringField;
    QueryProteticosBairro_Comercial: TStringField;
    QueryProteticosCep_Comercial: TStringField;
    QueryProteticosCidade_Comercial: TStringField;
    QueryProteticosEstado_Comercial: TStringField;
    QueryProteticosData_Exclusao: TDateTimeField;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditProtetico1KeyPress(Sender: TObject; var Key: Char);
    procedure EditProtetico1KeyDown(Sender: TObject; var Key: Word;
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
  FormEtiquetasProteticos: TFormEtiquetasProteticos;
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

procedure TFormEtiquetasProteticos.BitBtnImprimirClick(Sender: TObject);
begin
     FormEtiquetasProteticos.Enabled := False;
     Application.CreateForm(TFormEmImpressao, FormEmImpressao);
     FormEmImpressao.Caption := 'Impress„o das Etiquetas Dentistas';
     FormEmImpressao.Show;
     FormEmImpressao.Update;

     Imprime_Etiqueta;

     FormEtiquetasProteticos.Enabled := True;
     FormEmImpressao.Hide;
     FormEmImpressao.Free;
end;

procedure TFormEtiquetasProteticos.Imprime_Etiqueta;
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

                  with QueryProteticos do
                    begin
                      Close;
                      ParambyName('Codigo1').asInteger := StrToInt(EditProtetico1.Text);
                      ParambyName('Codigo2').asInteger := StrToInt(EditProtetico2.Text);
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

procedure TFormEtiquetasProteticos.Imprime_Linha;
begin
     Impressora.GWritePos(Linha, 03, 'Protetico   - ');
     Impressora.GWritePos(Linha, 18, Codigo_Str1);
     Impressora.GWritePos(Linha, 40, 'Protetico   - ');
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

procedure TFormEtiquetasProteticos.EditProtetico1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormEtiquetasProteticos.EditProtetico1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormEtiquetasProteticos.Monta_Lado1;
begin
     Codigo_Str1 := QueryProteticosCodigo.asString;
     Nome_Str1 := QueryProteticosNome.asString;
     Endereco_Str1 := QueryProteticosEndereco_Comercial.asString;
     Bairro_Str1 := QueryProteticosBairro_Comercial.asString;
     Cep_Str1 := QueryProteticosCep_Comercial.asString;
     Cidade_Str1 := QueryProteticosCidade_Comercial.asString;
     Estado_Str1 := QueryProteticosEstado_Comercial.asString;
end;

procedure TFormEtiquetasProteticos.Monta_Lado2;
begin
     Codigo_Str2 := QueryProteticosCodigo.asString;
     Nome_Str2 := QueryProteticosNome.asString;
     Endereco_Str2 := QueryProteticosEndereco_Comercial.asString;
     Bairro_Str2 := QueryProteticosBairro_Comercial.asString;
     Cep_Str2 := QueryProteticosCep_Comercial.asString;
     Cidade_Str2 := QueryProteticosCidade_Comercial.asString;
     Estado_Str2 := QueryProteticosEstado_Comercial.asString;
end;

procedure TFormEtiquetasProteticos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryProteticos.Close;
end;

end.
