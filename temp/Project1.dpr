program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Dm: TDataModule},
  RelFortesPadrao in 'U:\FormsPadrao\RelFortesPadrao.pas' {FmFortesRepPadrao},
  relIR in 'relIR.pas' {FmFortesRepPadrao3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFmFortesRepPadrao, FmFortesRepPadrao);
  Application.CreateForm(TFmFortesRepPadrao3, FmFortesRepPadrao3);
  Application.Run;
end.
