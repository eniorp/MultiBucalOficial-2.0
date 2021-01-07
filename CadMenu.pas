unit CadMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmCadMenu = class(TFmPadrao)
    ADOQueryMenu: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadMenu: TFmCadMenu;

implementation

uses udm;
//criar tabela de grupo de funcionarios
//criar rotina de dar permissão para o grupo
//habilitar menus do grupo que o usuario pertence
//habilitar menus que o usuario tem permissao
//ideia criar novas tabelas do novo menu tipo para a tabela disponiveis criar a tabela Menu_disponiveis e para a tabela permiss criar permissoes_usuario
{menu_disponiveis
(indice
Menu
 SubMenu
 Descricam_menu
 nm_menu
 )
 permissoes_usuario
 (indice
  id_permissao
  cd_funcionario
  )
 }
{$R *.dfm}

end.
