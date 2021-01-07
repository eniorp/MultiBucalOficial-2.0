unit RelAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables;

type
  TFormRelAniversariantes = class(TForm)
    Label1: TLabel;
    ComboBoxMesInicial: TComboBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxMesFinal: TComboBox;
    CheckBoxExclusao: TCheckBox;
    EditDia1: TEdit;
    EditDia2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBoxClassif: TComboBox;
    procedure ComboBoxMesInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditDia1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxMesInicialChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelAniversariantes: TFormRelAniversariantes;

implementation

{$R *.DFM}

uses QRAniversariantes;

procedure TFormRelAniversariantes.ComboBoxMesInicialKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelAniversariantes.BitBtnImprimirClick(Sender: TObject);
begin
     if EditDia1.Text > EditDia2.Text then
        begin
          ShowMessage('Intervalo de Dias Inválido !!!');
          EditDia1.SetFocus;
          exit;
        end;

     if EditDia1.Text > '31' then
        begin
          ShowMessage('Dia Inválido !!!');
          EditDia1.SetFocus;
          exit;
        end;

     if EditDia2.Text > '31' then
        begin
          ShowMessage('Dia Inválido !!!');
          EditDia2.SetFocus;
          exit;
        end;

     if StrToInt(Copy(ComboBoxMesInicial.Text, 01 , 02)) > StrToInt(Copy(ComboBoxMesFinal.Text, 01 , 02)) then
        begin
          ShowMessage('Intervalo de Meses Inválido !!!');
          ComboBoxMesInicial.SetFocus;
          exit;
        end;
     Application.CreateForm(TQRListaAniversariantes, QRListaAniversariantes);

     QRListaAniversariantes.QueryUsuarios.Close;
     if CheckBoxExclusao.Checked then
        QRListaAniversariantes.QueryUsuarios.SQL[4] := ''
     else
        QRListaAniversariantes.QueryUsuarios.SQL[4] := 'and Usuario.Data_Exclusao is null';
     QRListaAniversariantes.QueryUsuarios.ParamByName('Dia1').asInteger := StrToInt(EditDia1.Text);
     QRListaAniversariantes.QueryUsuarios.ParamByName('Dia2').asInteger := StrToInt(EditDia2.Text);
     QRListaAniversariantes.QueryUsuarios.ParamByName('Mes1').asInteger := StrToInt(Copy(ComboBoxMesInicial.Text, 01 , 02));
     QRListaAniversariantes.QueryUsuarios.ParamByName('Mes2').asInteger := StrToInt(Copy(ComboBoxMesFinal.Text, 01 , 02));





     QRListaAniversariantes.QueryUsuarios.close;
     Case ComboBoxClassif.itemindex of
        0: QRListaAniversariantes.QueryUsuarios.sql[5] := 'order by 1, usuario.nome';
        1: QRListaAniversariantes.QueryUsuarios.sql[5] := 'order by month(data_nascimento), day(Data_Nascimento), usuario.nome';
        2: QRListaAniversariantes.QueryUsuarios.sql[5] := 'order by usuario.nome';
        3: QRListaAniversariantes.QueryUsuarios.sql[5] := 'order by usuario.codigo, usuario.digito';
     end;
     
     QRListaAniversariantes.QueryUsuarios.Open;

     if FormRelAniversariantes.tag = 1 then
        close
     else
     begin
        QRListaAniversariantes.Preview;
        QRListaAniversariantes.Free;
     end;

end;

procedure TFormRelAniversariantes.EditDia1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;
procedure TFormRelAniversariantes.ComboBoxMesInicialChange(
  Sender: TObject);
begin
   ComboBoxMesFinal.ItemIndex := ComboBoxMesInicial.ItemIndex;
end;

procedure TFormRelAniversariantes.FormShow(Sender: TObject);
begin
   ComboBoxClassif.itemindex := 1;
end;

end.
