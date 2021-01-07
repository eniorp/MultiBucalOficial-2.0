program NFSeSigner;

uses
  Forms,
  U_frmMain in 'U_frmMain.pas' {frmMain},
  CAPICOM_TLB in 'CAPICOM_TLB.pas',
  MSXML2_TLB in 'MSXML2_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'NFSe Signer';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
