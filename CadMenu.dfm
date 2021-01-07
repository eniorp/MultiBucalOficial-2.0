inherited FmCadMenu: TFmCadMenu
  Width = 799
  Height = 536
  Caption = 'FmCadMenu'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 502
  end
  inherited PanelRigth: TPanel
    Left = 781
    Height = 502
  end
  inherited PanelCenter: TPanel
    Width = 771
    Height = 502
    inherited PanelBotton: TPanel
      Top = 461
      Width = 771
      inherited Panel1: TPanel
        Left = 679
      end
    end
    inherited PanelTop: TPanel
      Width = 771
      Height = 59
      inherited Bevel1: TBevel
        Top = 49
        Width = 771
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 59
      Width = 771
      Height = 402
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Grupo'
          Title.Caption = 'Grupo'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Procedimento'
          Title.Caption = 'Proc'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_SubProcedimento'
          Title.Caption = 'SubProc'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Grupo'
          Title.Caption = 'Descri'#231#227'o Grupo'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Procedimento'
          Title.Caption = 'Descri'#231#227'o Menu'
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_SubProcedimento'
          Title.Caption = 'Descri'#231#227'o Sub Menu'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_menu'
          Title.Caption = 'Nome Interno'
          Width = 122
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryMenu
    Left = 194
    Top = 256
  end
  object ADOQueryMenu: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from disponiveis order by 1,2,3')
    Left = 274
    Top = 144
  end
end
