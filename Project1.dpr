program Project1;

uses
  Forms,
  Padrao in 'U:\FormsPadrao\Padrao.pas' {FmPadrao},
  Unit3 in 'Unit3.pas' {FmPadrao2},
  Udm in '..\temp\Udm.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmPadrao2, FmPadrao2);
  Application.CreateForm(TFmPadrao, FmPadrao);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
