unit RelCarteirinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode, DB, ADODB, frxClass, frxDBSet,
  frxExportImage, RLPrintDialog;
  

type
  TfmFrRelCarteirinha = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    ADOQuery1: TADOQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    DataSource1: TDataSource;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    frxReport1: TfrxReport;
    frxJPEGExport1: TfrxJPEGExport;
    frxDBDataset1: TfrxDBDataset;
    ADOQuery1CODIGO_COMPLETO: TIntegerField;
    ADOQuery1NOME: TStringField;
    ADOQuery1CONTRATANTE: TStringField;
    ADOQuery1NASCIMENTO: TStringField;
    ADOQuery1INCLUSAO: TStringField;
    ADOQuery1DESCRICAO: TStringField;
    ADOQuery1EMPRESA: TBooleanField;
    ADOQuery1DEBAUTOMATICO: TBooleanField;
    ADOQuery1FORMA_COBRANCA: TIntegerField;
    ADOQuery1DS_REGIAO: TStringField;
    ADOQuery1CD_PLANO: TIntegerField;
    ADOQuery1CD_REGIAO: TWordField;
    ADOQuery1CONTRAT1: TIntegerField;
    ADOQuery1COBERTURA: TStringField;
    ADOQuery1EMERGENCIA: TStringField;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure ExportarCarteirinhaDigital(Caminho:String);
  end;

var
  fmFrRelCarteirinha: TfmFrRelCarteirinha;

implementation

uses udm;

{$R *.dfm}

procedure TfmFrRelCarteirinha.ExportarCarteirinhaDigital(Caminho:String);
var  arquivo: string;
begin
  arquivo:=ExtractFilePath(Caminho)+ExtractFileName(
  StringReplace(Caminho,ExtractFileExt(Caminho),'',[rfReplaceAll,rfIgnoreCase]))+
  ADOQuery1CODIGO_COMPLETO.AsString+ExtractFileExt(Caminho);


  fmFrRelCarteirinha.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +  'Carteirinha.fr3');
  frxReport1.PrepareReport();
      frxJPEGExport1.JPEGQuality := 350;
      frxJPEGExport1.ShowDialog := false;
      frxJPEGExport1.ShowProgress := true;
      frxJPEGExport1.FileName := arquivo;
      frxJPEGExport1.Resolution := 800;
      frxJPEGExport1.PageNumbers := '1';
      frxJPEGExport1.OverwritePrompt := false;
      if not frxReport1.Export(frxJPEGExport1) then
      ShowMessage('Erro ao Salvar o arquivo: '+arquivo);

end;

procedure TfmFrRelCarteirinha.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  ADOQuery1COBERTURA.asstring:=dm.execmd('select   tc.Descricao Cobertura  from TabelaCoberturaXPlano t, Plano p,  TabelaCobertura tc where t.Plano = p.Codigo and t.Tabela_Cobertura = tc.CodigoTabela and Codigo = ''' + ADOQuery1.FieldbyName('CD_PLANO').AsString  + '''','Cobertura');
  if ADOQuery1.FieldbyName('cd_regiao').AsInteger = 2 then //MAT�O
    ADOQuery1EMERGENCIA.AsString := '(16) 99992-3356'
  else
    ADOQuery1EMERGENCIA.AsString := '(16) 99964-0554'; //ribeirao

end;

end.
