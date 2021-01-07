{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Relaciona nº do Título ao nº do Banco                     }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Francesa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, DBTables, ExtCtrls, DBIProcs;

type
  TFormFrancesa = class(TForm)
    Label1: TLabel;
    EditNumero: TEdit;
    Label3: TLabel;
    DBEditNumero: TDBEdit;
    Label5: TLabel;
    DBEditEmissao: TDBEdit;
    Label4: TLabel;
    DBEditVencimento: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    DBEditValor: TDBEdit;
    DBEditSaldo: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEditNumeroBanco: TDBEdit;
    DBEditDesdobramento: TDBEdit;
    DataSourceTitulo: TDataSource;
    Panel1: TPanel;
    DBNavigatorFrancesa: TDBNavigator;
    GroupBoxRelatorio: TGroupBox;
    BitBtnImprimir: TBitBtn;
    Label2: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    Label8: TLabel;
    MaskEditUltimo: TMaskEdit;
    BitBtnSair: TBitBtn;
    QueryTitulos: TQuery;
    QueryTitulosNumero_Titulo: TIntegerField;
    QueryTitulosDesdobramento: TStringField;
    QueryTitulosTipo_Documento: TStringField;
    QueryTitulosCodigo_Contratante: TIntegerField;
    QueryTitulosData_Emissao: TDateTimeField;
    QueryTitulosData_Vencimento: TDateTimeField;
    QueryTitulosValor: TFloatField;
    QueryTitulosSaldo: TFloatField;
    QueryTitulosTipo_Cobranca: TStringField;
    QueryTitulosNumero_Banco: TStringField;
    QueryContratante: TQuery;
    Label9: TLabel;
    DBEditContratante: TDBEdit;
    DataSourceContratante: TDataSource;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure EditNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditNumeroExit(Sender: TObject);
    procedure DBEditNumeroBancoExit(Sender: TObject);
    procedure EditNumeroEnter(Sender: TObject);
    procedure DBEditNumeroBancoEnter(Sender: TObject);
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrancesa: TFormFrancesa;
  PrimeiraData, UltimaData : TDate;

implementation

uses QRListaTitulosBanco;

{$R *.DFM}

procedure TFormFrancesa.FormCreate(Sender: TObject);
begin
     EditNumero.Text := '';
end;

procedure TFormFrancesa.EditNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormFrancesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTitulos.Close;
     QueryContratante.Close;
end;

procedure TFormFrancesa.EditNumeroExit(Sender: TObject);
begin
     if EditNumero.Text <> '' then
        begin
          with QueryTitulos do
            begin
              Close;
              SQL[1] := 'where Numero_Titulo = ' + EditNumero.Text;
              Open;
              if RecordCount = 0 then
                 begin
                   ShowMessage('Título não Cadastrado !!');
                   EditNumero.SetFocus;
                   Exit;
                 end;
            end;

          with QueryContratante do
            begin
              Close;
              SQL[1] := 'where Codigo = ' + QueryTitulosCodigo_Contratante.asString;
              Open;
            end;
        end;    
end;

procedure TFormFrancesa.DBEditNumeroBancoExit(Sender: TObject);
begin
     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          EditNumero.SetFocus;
          exit;
        end;

     try
       QueryTitulos.Post
     except
      begin
       ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
       QueryTitulos.Cancel;
      end;
     end;

    DBEditNumero.Text := '';
    DBEditEmissao.Text := '';
    DBEditVencimento.Text := '';
    DBEditValor.Text := '';
    DBEditSaldo.Text := '';
    DBEditDesdobramento.Text := '';
    EditNumero.SetFocus;
end;

procedure TFormFrancesa.EditNumeroEnter(Sender: TObject);
begin
     EditNumero.Text := '';
end;

procedure TFormFrancesa.DBEditNumeroBancoEnter(Sender: TObject);
begin
     if QueryTitulos.State in [dsbrowse] then
        QueryTitulos.Edit;
end;

procedure TFormFrancesa.EditNumeroKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

procedure TFormFrancesa.BitBtnImprimirClick(Sender: TObject);
begin
     if (MaskEditPrimeiro.Enabled = True) and (MaskEditUltimo.Enabled = True) then
       if (MaskEditPrimeiro.Text = '  /  /    ') or (MaskEditUltimo.Text = '  /  /    ') then
          begin
            ShowMessage('Os Intervalos devem estar preenchidos !!! [ENTER]');
            MaskEditPrimeiro.SetFocus;
            exit;
          end;

     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);
     if UltimaData < PrimeiraData then
        begin
          ShowMessage('A última Data não pode ser Menor que a primeira !!!');
          MaskEditUltimo.SetFocus;
          exit;
        end;

     Application.CreateForm(TQRTitulosBanco, QRTitulosBanco);
     QRListaTitulosBanco.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
     QRListaTitulosBanco.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
     QRTitulosBanco.Preview;
     QRTitulosBanco.Free;
end;


end.
