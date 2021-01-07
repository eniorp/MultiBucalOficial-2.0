inherited FmCadGrupoFunc: TFmCadGrupoFunc
  Left = 243
  Top = 114
  Width = 345
  Height = 303
  Caption = 'Cadastro de Grupo de Funcion'#225'rios'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 269
  end
  inherited PanelRigth: TPanel
    Left = 327
    Height = 269
  end
  inherited PanelCenter: TPanel
    Width = 317
    Height = 269
    inherited PanelBotton: TPanel
      Top = 228
      Width = 317
      inherited Panel1: TPanel
        Left = 225
      end
      object Button1: TButton
        Left = 112
        Top = 8
        Width = 111
        Height = 25
        Caption = 'Permiss'#245'es Do Grupo'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 3
        Top = 8
        Width = 103
        Height = 25
        Caption = 'Usu'#225'rios do Grupo'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    inherited PanelTop: TPanel
      Width = 317
      Height = 34
      inherited Bevel1: TBevel
        Top = 24
        Width = 317
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 317
        Height = 24
        DataSource = DataSource1
        Align = alClient
        Flat = True
        TabOrder = 0
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 34
      Width = 317
      Height = 194
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_grupo'
          ReadOnly = True
          Title.Caption = 'C'#243'digo Grupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_grupo'
          Title.Caption = 'Descri'#231#227'o do Grupo'
          Width = 175
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    Left = 178
    Top = 168
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryGrupo
    Left = 98
    Top = 192
  end
  object ADOQueryGrupo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQueryGrupoBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from grupo_funcionario order by 2')
    Left = 90
    Top = 88
  end
end
