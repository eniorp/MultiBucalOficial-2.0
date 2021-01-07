unit ParaMOrcAPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls,biblio, Buttons, ExtCtrls,enio;

type
  TFmParamOrcAPagar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    ComboBoxStatus: TComboBox;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox3: TGroupBox;
    EditCdDentista: TEdit;
    EditnmDentista: TEdit;
    BitBtnPesquisaDentista: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEditDtFimChange(Sender: TObject);
    procedure EditCdDentistaKeyPress(Sender: TObject; var Key: Char);
    procedure EditCdDentistaExit(Sender: TObject);
    procedure EditCdDentistaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamOrcAPagar: TFmParamOrcAPagar;

implementation

uses udm, RelOrcAPagar, PesquisaDentista;

{$R *.DFM}

procedure TFmParamOrcAPagar.FormShow(Sender: TObject);
begin
   ComboBoxStatus.ItemIndex := 0;
end;

procedure TFmParamOrcAPagar.BitBtn1Click(Sender: TObject);
begin
  QrOrcApagar := TQrOrcApagar.create(self);
  QrOrcApagar.SpOrcApagar.close;

  QrOrcApagar.SpOrcApagar.ParamByName('@DtIni').asString         := MaskEditDtIni.text;
  QrOrcApagar.SpOrcApagar.ParamByName('@DtFim').asString         := MaskEditDtFim.text;
  if EditCdDentista.text <> '' then
  begin
     QrOrcApagar.SpOrcApagar.ParamByName('@CdDentistaIni').asString := EditCdDentista.text;
     QrOrcApagar.SpOrcApagar.ParamByName('@CdDentistaFim').asString := EditCdDentista.text;
  end
  else
  begin
     QrOrcApagar.SpOrcApagar.ParamByName('@CdDentistaIni').asString := '0';
     QrOrcApagar.SpOrcApagar.ParamByName('@CdDentistaFim').asString := '99999999';
  end;

  QrOrcApagar.SpOrcApagar.ParamByName('@cdStatus').asString := ComboBoxStatus.Text[1];

  QrOrcApagar.QRLabel2.caption := 'Data : ' +
  MaskEditDtIni.text + ' A ' + MaskEditDtFim.text + ' Status : ' + ComboBoxStatus.Text;
  QrOrcApagar.SpOrcApagar.Open;
  QrOrcApagar.Preview;
  QrOrcApagar.free;
end;

procedure TFmParamOrcAPagar.MaskEditDtFimChange(Sender: TObject);
begin
   BitBtn1.enabled := (MaskEditDtIni.Text <> '  /  /    ') and (MaskEditDtfim.Text <> '  /  /    ');
end;

procedure TFmParamOrcAPagar.EditCdDentistaKeyPress(Sender: TObject;
  var Key: Char);
begin
   key := so_numero(key);
end;

procedure TFmParamOrcAPagar.EditCdDentistaExit(Sender: TObject);
begin
   if EditCdDentista.Text <> '' then
   begin
      EditnmDentista.text := dm.ExecutaComando('select nome from dentista where codigo = ' + EditCdDentista.Text,'nome');
      if EditnmDentista.text = '' then
      begin
         Showmessage('Código de dentista não encontrado !');
        EditCdDentista.SetFocus;
      end;
   end
end;

procedure TFmParamOrcAPagar.EditCdDentistaChange(Sender: TObject);
begin
   EditnmDentista.clear;
end;

procedure TFmParamOrcAPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TFmParamOrcAPagar.BitBtnPesquisaDentistaClick(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCdDentista.text := FormPesquisaDentistas.QueryDentistasCodigo.asString;
   EditCdDentistaExit(Sender);
   FormPesquisaDentistas.QueryDentistas.Close;
   FormPesquisaDentistas.Query50.Close;
   FormPesquisaDentistas.Free;
   BitBtn1.SetFocus;
end;


end.
