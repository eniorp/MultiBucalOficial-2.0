{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Tela de espera para impressão                             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit EmImpres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormEmImpressao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmImpressao: TFormEmImpressao;

implementation

{$R *.DFM}


end.
