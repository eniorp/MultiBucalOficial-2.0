unit QRPagamentoRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRPagamentoDentistaRecibo, Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TQrPagManutencaoRecibo = class(TQRPagRecibo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrPagManutencaoRecibo: TQrPagManutencaoRecibo;

implementation

{$R *.DFM}

end.
