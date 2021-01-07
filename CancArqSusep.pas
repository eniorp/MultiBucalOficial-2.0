unit CancArqSusep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls,Biblio, Buttons, ExtCtrls,FileCtrl, Mask, ADODB;

type
  TFormCancArqSusep = class(TForm)
    Bevel2: TBevel;
    MaskEditData: TMaskEdit;
    Label1: TLabel;
    BitBtnCancela: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    QueryUsuarios: TQuery;
    StoredPCancelaSucep: TADOStoredProc;
    procedure BitBtnCancelaClick(Sender: TObject);
    procedure MaskEditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCancArqSusep: TFormCancArqSusep;

implementation

uses udm;

{$R *.DFM}

procedure TFormCancArqSusep.BitBtnCancelaClick(Sender: TObject);
begin
   if MessageDlg('Confirma a exclusão dos último arquivo Sucep ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
         with QueryUsuarios do
           begin
             close;
             Parambyname('Data1').asDateTime := StrToDate(MaskEditData.Text);
             Parambyname('Data2').asDateTime := StrToDate(MaskEditData.Text);
             open;
             if recordcount = 0 then begin
                showmessage('Não existe arquivo gerado nesta data !');
                exit;
             end;
           end;
         if MaskEditData.Text = '' then
            begin
              showmessage('É obrigatório o preenchimento da Data !');
              MaskEditData.SetFocus;
              exit;
            end;
            StoredPCancelaSucep.Close;
            StoredPCancelaSucep.Parameters[1].Value := StrToDate(MaskEditData.Text);
            StoredPCancelaSucep.ExecProc;
            ShowMessage('Cancelamento de último arquivo de envio efetuado com sucesso !');
      end;
end;

procedure TFormCancArqSusep.MaskEditDataKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
         VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
         VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCancArqSusep.FormShow(Sender: TObject);
begin
   MaskEditData.Text := dm.execmd('select convert(char(10),max(inclusao_susep),103) dt from usuario','dt'); 
end;

end.
