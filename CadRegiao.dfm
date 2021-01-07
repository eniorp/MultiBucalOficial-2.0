inherited FmCadRegiao: TFmCadRegiao
  Width = 302
  Height = 348
  Caption = 'Cadastro de Regi'#227'o'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 321
  end
  inherited PanelRigth: TPanel
    Left = 284
    Height = 321
  end
  inherited PanelCenter: TPanel
    Width = 274
    Height = 321
    inherited PanelBotton: TPanel
      Top = 280
      Width = 274
      inherited Panel1: TPanel
        Left = 182
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 8
        Width = 170
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 274
      Height = 25
      inherited Bevel1: TBevel
        Top = 15
        Width = 274
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 25
      Width = 274
      Height = 255
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_regiao'
          Title.Caption = 'C'#243'digo'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_regiao'
          Title.Caption = 'Regi'#227'o'
          Width = 194
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryRegiao
  end
  object ADOQueryRegiao: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from regiao order by 2')
    Left = 138
    Top = 128
  end
end
