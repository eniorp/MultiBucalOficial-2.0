inherited FmPesqPacote: TFmPesqPacote
  Width = 412
  Caption = 'Pesquisa de Pacotes'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 394
  end
  inherited PanelCenter: TPanel
    Width = 384
    inherited PanelBotton: TPanel
      Width = 384
      inherited Panel1: TPanel
        Left = 292
      end
    end
    inherited PanelTop: TPanel
      Width = 384
      Height = 27
      inherited Bevel1: TBevel
        Top = 17
        Width = 384
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 27
      Width = 384
      Height = 273
      Hint = 'Dê um duplo clique para detalhes do pacote'
      ShowHint = False
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_pacote'
          PickList.Strings = ()
          Title.Caption = 'Cód Pacote'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_pacote'
          PickList.Strings = ()
          Title.Caption = 'Pacote'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from pacote order by 1')
  end
end
