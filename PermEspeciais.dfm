inherited FmPermEspeciais: TFmPermEspeciais
  Width = 277
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Permissões Especiais'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 259
  end
  inherited PanelCenter: TPanel
    Width = 249
    inherited PanelBotton: TPanel
      Width = 249
      inherited Panel1: TPanel
        Left = 157
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 5
        Width = 152
        Height = 29
        DataSource = DataSource1
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        Flat = True
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 249
      Height = 49
      inherited Bevel1: TBevel
        Top = 39
        Width = 249
      end
      object Label1: TLabel
        Left = 0
        Top = 16
        Width = 3
        Height = 13
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 49
      Width = 249
      Height = 251
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Operador'
          PickList.Strings = ()
          Title.Caption = 'Cód Operador'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Operacao'
          PickList.Strings = ()
          Title.Caption = 'Cód Operação'
          Width = 74
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    AfterScroll = Query1AfterScroll
    RequestLive = True
    SQL.Strings = (
      'select * from especiais')
  end
end
