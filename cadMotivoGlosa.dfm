inherited FmCadMotivoGlosa: TFmCadMotivoGlosa
  Left = 506
  Top = 186
  Caption = 'Cadastro de Motivos de Glosas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelBotton: TPanel
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 329
        Height = 41
        DataSource = DataSource1
        Align = alLeft
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Height = 33
      inherited Bevel1: TBevel
        Top = 23
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 33
      Height = 263
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_glosa'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_glosa'
          Title.Caption = 'Descri'#231#227'o'
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Title.Caption = 'Ativo(S/N)'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryGlosa
  end
  object ADOQueryGlosa: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnNewRecord = ADOQueryGlosaNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from glosa  order by ds_glosa')
    Left = 265
    Top = 89
  end
end
