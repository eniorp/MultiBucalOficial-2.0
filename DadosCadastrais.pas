unit DadosCadastrais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls;

type
  TFormDadosCadastrais = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    GroupBoxEnderecoCobranca: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    DBEditEndComercial: TDBEdit;
    DBEditBairroCobranca: TDBEdit;
    DBEditCidadeComercial: TDBEdit;
    DBEditEstadoComercial: TDBEdit;
    DBEditCepComercial: TDBEdit;
    DBEditEmail: TDBEdit;
    GroupBoxResidencial: TGroupBox;
    Label10: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    DBEditFax: TDBEdit;
    DBEditFone: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditCep: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditCelular: TDBEdit;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    BitBtnSair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDadosCadastrais: TFormDadosCadastrais;

implementation

uses ConsultaTitulos;

{$R *.DFM}

end.
