unit RelAtivosInativos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls;

type
  TFormRelAtivosInativo = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    RGFiltro: TRadioGroup;
    CheckBox1: TCheckBox;
    procedure BitBtnImprimirClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelAtivosInativo: TFormRelAtivosInativo;
  Filtro_Nome : String;

implementation

uses QRDentistas, QRProteticos, QRRepresentantes, QRVendedores,tacio,senha;

{$R *.DFM}

procedure TFormRelAtivosInativo.BitBtnImprimirClick(Sender: TObject);
begin
     case RGFiltro.ItemIndex of
       0 : Filtro_Nome := 'Ativo';
       1 : Filtro_Nome := 'Inativo';
       2 : Filtro_Nome := 'Todos';
     end;

     case FormRelAtivosInativo.Tag of
       0:
         begin
           Application.CreateForm(TQRListaDentistas, QRListaDentistas);
           QRListaDentistas.QRLabelFiltro.Caption := Filtro_Nome;
           QRListaDentistas.QRLabelEmpresa.Caption := Senha.Empresa;
            with QRListaDentistas.QueryDentistas do
               begin
                 close;
                 Case filtro of
                   0 : SQL[1] := ' and data_exclusao is null';
                   1 : SQL[1] := ' and data_exclusao is not null';
                   2 : SQL[1] := '';
                 end;
                 open;
               end;
            if CheckBox1.Checked then
              ToExcel(QRListaDentistas.QueryDentistas,'Dentistas')
            else
               QRListaDentistas.Preview;
           QRListaDentistas.Free;
         end;
       1:
         begin
           QRProteticos.Filtro := RGFiltro.ItemIndex;
           Application.CreateForm(TQRListaProteticos, QRListaProteticos);
           QRListaProteticos.QRLabelFiltro.Caption := Filtro_Nome;
           QRListaProteticos.Preview;
           QRListaProteticos.Free;
         end;
       2:
         begin
           QrRepresentantes.Filtro := RGFiltro.ItemIndex;
           Application.CreateForm(TQRListaRepresentantes, QRListaRepresentantes);
           QRListaRepresentantes.QRLabelFiltro.Caption := Filtro_Nome;
           QRListaRepresentantes.Preview;
           QRListaRepresentantes.Free;
         end;
       3:
         begin
           QRVendedores.Filtro := RGFiltro.ItemIndex;
           Application.CreateForm(TQRListaVendedores, QRListaVendedores);
           QRListaVendedores.QRLabelFiltro.Caption := Filtro_Nome;
           QRListaVendedores.Preview;
           QRListaVendedores.Free;
         end;
     end;
end;

end.
