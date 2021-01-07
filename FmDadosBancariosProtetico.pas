unit FmDadosBancariosProtetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TFmDadosBancProt = class(TForm)
    DBCheckBox7: TDBCheckBox;
    GroupBox7: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBNavigator3: TDBNavigator;
    BitBtnSair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDadosBancProt: TFmDadosBancProt;

implementation

uses Proteticos;

{$R *.dfm}

end.
