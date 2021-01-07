{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Cadastro Odontograma                                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Odontograma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls, StdCtrls, Buttons, IniFiles,
  Gutenberg, Biblio;

type
  TFormOdontograma = class(TForm)
    Panel1: TPanel;
    QueryOdontograma: TQuery;
    DataSourceOdontograma: TDataSource;
    DBGridOdontograma: TDBGrid;
    QueryOdontogramaOrcamento: TIntegerField;
    QueryOdontogramaServico: TSmallintField;
    QueryOdontogramaDente: TSmallintField;
    QueryOdontogramaIncremento: TIntegerField;
    QueryOdontogramaQuantidade: TSmallintField;
    QueryOdontogramaUsuario: TIntegerField;
    QueryOdontogramaData: TDateTimeField;
    QueryDenteXFaces: TQuery;
    QueryOdontogramaDescricao_Servico: TStringField;
    Panel2: TPanel;
    DBNavigatorOdontograma: TDBNavigator;
    QueryOdontogramaFace: TStringField;
    BitBtnSair: TBitBtn;
    QueryDenteXFacesCodigo_Dente: TSmallintField;
    QueryDenteXFacesCodigo_Face: TStringField;
    QueryDenteXFacesDescricao: TStringField;
    QueryOdontogramaAux: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    BitBtnOk: TBitBtn;
    BitBtnImprimir: TBitBtn;
    PanelMensagem: TPanel;
    QueryPgDentista: TQuery;
    QueryOdontogramaAuxOrcamento: TIntegerField;
    QueryOdontogramaAuxIncremento: TIntegerField;
    QueryOdontogramaAuxServico: TSmallintField;
    QueryOdontogramaAuxDente: TSmallintField;
    QueryOdontogramaAuxFace: TStringField;
    QueryOdontogramaAuxQuantidade: TSmallintField;
    QueryOdontogramaAuxUsuario: TIntegerField;
    QueryOdontogramaAuxData: TDateTimeField;
    QueryOdontogramaAuxDentista: TIntegerField;
    QueryOdontogramaAuxNome: TStringField;
    QueryOdontogramaAuxnome_1: TStringField;
    QueryOdontogramaAuxDescricao: TStringField;
    QueryOdontogramaDescricao_Dente: TStringField;
    LabelData: TLabel;
    QueryOdontogramaincremento_item_orc: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryOdontogramaAfterPost(DataSet: TDataSet);
    procedure DBGridOdontogramaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryOdontogramaCalcFields(DataSet: TDataSet);
    procedure BitBtnSairClick(Sender: TObject);
    procedure QueryOdontogramaBeforePost(DataSet: TDataSet);
    procedure BitBtnOkClick(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure DataSourceOdontogramaUpdateData(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

var
  FormOdontograma: TFormOdontograma;
  Ano, Mes, Dia : Word;
  Data : TDate;
  Pg_Dentista : String;

implementation

{$R *.DFM}

uses Orcamentos, udm;

procedure TFormOdontograma.FormCreate(Sender: TObject);
var I : Short;
begin
     Caption := 'Odontograma do OrÁamento N∫ ' + Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asString;
     with QueryOdontograma do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount > 0 then exit;
       end;

     with Orcamentos.FormOrcamentos.QueryItensOrcamento do
       begin
         First;
         while not eof do
           begin
             with QueryOdontograma do
               begin
                 for I := 1 to Orcamentos.FormOrcamentos.QueryItensOrcamentoQuantidade.asInteger do
                    begin
                      Insert;
                      QueryOdontogramaOrcamento.asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
                      QueryOdontogramaServico.asInteger   := Orcamentos.FormOrcamentos.QueryItensOrcamentoServico.asInteger;
                      QueryOdontogramaUsuario.asInteger   := Orcamentos.FormOrcamentos.QueryOrcamentosUsuario.AsInteger;
                      QueryOdontogramaData.asDateTime     := Orcamentos.FormOrcamentos.QueryOrcamentosData.asDateTime;
                      QueryOdontogramaincremento_item_orc.AsInteger := Orcamentos.FormOrcamentos.QueryItensOrcamentoIncremento.AsInteger;

                      try
                        Post;
                      except
                        begin
                          ShowMessage('Erro de GravaÁ„o da Tabela de Odontograma !!!');
                          Cancel;
                        end;
                      end;
                    end;
               end;
             Next;
           end;
       end;
end;

procedure TFormOdontograma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryOdontograma.Close;
     QueryDenteXFaces.Close;
     QueryOdontogramaAux.Close;
     QueryPgDentista.Close;
end;

procedure TFormOdontograma.QueryOdontogramaAfterPost(DataSet: TDataSet);
var SalvaPonteiro : Integer;
begin
     with QueryOdontograma do
       begin
         DisableControls;
         SalvaPonteiro := QueryOdontogramaIncremento.asInteger;
         Close;
         Open;
         Locate('Incremento', SalvaPonteiro, []);
         EnableControls;
       end;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormOdontograma.DBGridOdontogramaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
        vk_escape :
          begin
            if QueryOdontogramaServico.asString = '' then
               QueryOdontograma.Cancel;
            if QueryOdontograma.State in [dsEdit, dsInsert] then
               begin
                 with QueryOdontograma do
                    begin
                      try
                        Post;
                      except
                        begin
                          ShowMessage('Este Registro J· Existe na Tabela de Odontograma !!!');
                          Cancel;
                          exit;
                        end;
                      end;
                      Close;
                      Open;
                      Last;
                    end;
               end;
             Close;
          end;
     end;
end;

procedure TFormOdontograma.QueryOdontogramaCalcFields(DataSet: TDataSet);
begin
  if (QueryOdontogramaDente.AsInteger <> 0) and (QueryOdontogramaFace.AsString <> '') then
    with QueryDenteXFaces do
     begin
       close;
       Parambyname('Dente').AsInteger := QueryOdontogramaDente.AsInteger;
       Parambyname('Face').AsString   := QueryOdontogramaFace.AsString;
       open;
       QueryOdontogramaDescricao_Dente.AsString := QueryDenteXFacesDescricao.AsString;
     end;
end;

procedure TFormOdontograma.BitBtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFormOdontograma.QueryOdontogramaBeforePost(DataSet: TDataSet);
begin
  with QueryOdontogramaAux do
    begin
      close;
      Parambyname('Usuario').asInteger := QueryOdontogramaUsuario.AsInteger;
      Parambyname('Servico').asInteger := QueryOdontogramaServico.asInteger;
      Parambyname('Dente').asInteger   := QueryOdontogramaDente.AsInteger;
      Parambyname('Face').AsString     := QueryOdontogramaFace.AsString;
      open;
      if recordcount <> 0 then
        begin
          PanelMensagem.Left    := 160;
          PanelMensagem.Height  := 153;
          PanelMensagem.Width   := 433;
          PanelMensagem.Visible := True;
          LabelData.Caption     := 'Data: ' + QueryOdontogramaAuxData.AsString;
          BitBtnImprimir.SetFocus;

{         if MessageDlg('Deseja confirmar o procedimento ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            QueryOdontograma.Cancel
          else
            QueryOdontograma.Post;}
        end;
    end;
end;

procedure TFormOdontograma.BitBtnOkClick(Sender: TObject);
begin
  PanelMensagem.Visible := False;
  DBGridOdontograma.SetFocus;
end;

procedure TFormOdontograma.BitBtnImprimirClick(Sender: TObject);
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
     Impressora := TGutenberg.Create(CaminhoImpressora,'OrÁamento');
     try
       With Impressora do
         begin
           Filter:=gfConvert;
           SetFilterMasks ('·ÈÌÛ˙„ı‚Ù√¬¡… Õ”‘’⁄Á«≤≥™∫∞','aeiouaoaoAAAEEIOOOUcC23aoo');
           SendControls(#27#48); // Coloca a impressora em modo 1/8
           SendControls(#15); // Coloca a impressora em modo condensado

// impress„o do cabeÁalho inicio

           Impressora.SendControls(#13);
           Campo1 := '+----------------------------------------------------------------------------+';
           Impressora.GWritePos(01, 01, Campo1);
           Impressora.SendControls(#13);
           Impressora.GWritePos(03, 01, '|');
           Impressora.GWritePos(03, 02, 'ORCAMENTO..: ');
           Impressora.GWritePos(03, 11, QueryOdontogramaAuxOrcamento.asString);
           Impressora.GWritePos(03, 49, 'Data...: ');
           Impressora.GWritePos(03, 58, DateToStr(dm.Date));
           Impressora.GWritePos(03, 78, '|');
           Impressora.SendControls(#13);
           Campo1 := '+----------------------------------------------------------------------------+';
           Impressora.GWritePos(04, 01, Campo1);
           Impressora.SendControls(#13);

           Impressora.GWritePos(05, 01, '|');
           Impressora.GWritePos(05, 02, 'BENEFIC....: ');
           Impressora.GWritePos(05, 15, copy(QueryOdontogramaAuxNome.asString, 01, 35));
           Impressora.GWritePos(05, 49, 'CODIGO DO BENEF.....: ');
           Impressora.GWritePos(05, 71, QueryOdontogramaAuxUsuario.Asstring);
           Impressora.GWritePos(05, 78, '|');
           Impressora.SendControls(#13);

           Impressora.GWritePos(07, 01, '|');
           Impressora.GWritePos(07, 02, 'DENTISTA...: ');
           Impressora.GWritePos(07, 15, Copy(QueryOdontogramaAuxNome_1.AsString, 01, 35));
           Impressora.GWritePos(07, 49, 'CODIGO DO DENTISTA..: ');
           Impressora.GWritePos(07, 71, Copy(QueryOdontogramaAuxDentista.AsString, 01, 05));
           Impressora.GWritePos(07, 78, '|');
           Impressora.SendControls(#13);

           Campo1 := '+----------------------------------------------------------------------------+';
           Impressora.GWritePos(09, 01, Campo1);

// impress„o do corpo inicio
           Linha := 6;
           Impressora.SendControls(#13);
           Impressora.GWritePos(Linha, 01, '| Servico');
           Impressora.GWritePos(Linha, 78, '|');
           Linha := Linha + 1;
           Impressora.SendControls(#13);
           Campo1 := '+---------+--------------------------------------+------+---------+----------+';
           Impressora.GWritePos(Linha, 01, Campo1);
           Linha := Linha + 1;
           Impressora.SendControls(#13);
           Campo1 := '| Codigo  | Descricao                            | Qtde |  Dente  | Face     |';
           Impressora.GWritePos(Linha, 01, Campo1);
           Linha := Linha + 1;
           Impressora.SendControls(#13);
           Campo1 := '+---------+--------------------------------------+------+---------+----------+';
           Impressora.GWritePos(Linha, 01, Campo1);
           Linha := Linha + 1;
           Impressora.SendControls(#13);

           GWritePos(Linha, 01, '|');
           Numero_Str := IntToStr(QueryOdontogramaAuxServico.asInteger);
           Numero_Str := StrAll(06 - Length(Numero_Str), ' ') + Numero_Str;
           GWritePos(Linha, 03, Numero_Str);
           GWritePos(Linha, 11, '|');
           GWritePos(Linha, 13, Copy(QueryOdontogramaAuxDescricao.asString, 1, 35));
           GWritePos(Linha, 39, '|');
           Quantidade_Str := StrAll(03 - Length(QueryOdontogramaAuxQuantidade.asString), ' ') + QueryOdontogramaAuxQuantidade.asString;
           GWritePos(Linha, 50, Quantidade_Str);
           GWritePos(Linha, 55, '|');
           GWritePos(Linha, 60, IntToStr(QueryOdontogramaAuxDente.AsInteger));
           GWritePos(Linha, 70, '|');
           GWritePos(Linha, 73, QueryOdontogramaAuxFace.AsString);
           GWritePos(Linha, 78, '|');
           Impressora.SendControls(#13);
           Campo1 := '+---------+--------------------------------------+------+---------+----------+';
           GWritePos(Linha, 01, Campo1);
           Impressora.SendControls(#13);
           Impressora.GWritePos(03, 01, '|');
           Impressora.GWritePos(03, 06, 'PAGAMENTO DENTISTA..: ');
           With QueryPgDentista do
             begin
               close;
               ParamByName('Orcamento').AsInteger := QueryOdontogramaAuxOrcamento.AsInteger;
               ParamByName('Servico').AsInteger   := QueryOdontogramaAuxServico.AsInteger;
               open;
               if recordcount = 0 then
                 Pg_dentista := 'NAO'
               else
                 Pg_dentista := 'SIM';
             end;

           Impressora.GWritePos(03, 23, Pg_dentista);
           Impressora.GWritePos(03, 78, '|');
           Campo1 := '+----------------------------------------------------------------------------+';
           Impressora.GWritePos(01, 01, Campo1);
           Impressora.SendControls(#13);
           Impressora.SendControls(#13);
           Impressora.SendControls(#13);
// fim
           Impressora.SendControls(#27#48);
           Impressora.SendControls(#18);
//           Eject;
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
   BitBtnOk.SetFocus;
end;

procedure TFormOdontograma.DataSourceOdontogramaUpdateData(
  Sender: TObject);
begin
  if (QueryOdontogramaDente.AsInteger <> 0) and (QueryOdontogramaFace.AsString <> '')
     and (QueryOdontogramaDescricao_Dente.AsString = '') then
    begin
      showmessage('CÛdigo do Dente ou da Face inv·lidos ! Digite novamente.');
      QueryOdontograma.Cancel;
    end;
end;

end.

