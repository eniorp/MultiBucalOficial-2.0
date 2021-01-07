unit TipoOperacaoDebito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTipoOperacao = class(TForm)
    Label1: TLabel;
    ComboBoxTipo: TComboBox;
    OKBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoOperacao: TFormTipoOperacao;

implementation

{$R *.DFM}

end.
