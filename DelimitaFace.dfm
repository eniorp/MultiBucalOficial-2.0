inherited FmDelimitaFace: TFmDelimitaFace
  Left = 289
  Top = 131
  HorzScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Delimita Face Para um serviço'
  ClientWidth = 280
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 270
  end
  inherited PanelCenter: TPanel
    Width = 260
    inherited PanelBotton: TPanel
      Width = 260
      inherited Panel1: TPanel
        Left = 168
      end
      object DBNavigator1: TDBNavigator
        Left = 10
        Top = 8
        Width = 135
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 260
      Height = 57
      inherited Bevel1: TBevel
        Top = 47
        Width = 260
      end
      object Label1: TLabel
        Left = 17
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Código'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 2
        Top = 26
        Width = 46
        Height = 13
        Caption = 'Descriçao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 56
        Top = 26
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Descricao'
        DataSource = FormServicos.DataSourceServicos
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 55
        Top = 8
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Codigo'
        DataSource = FormServicos.DataSourceServicos
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 57
      Width = 260
      Height = 243
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'cd_face'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Face'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_face'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Descrição'
          Width = 127
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    RequestLive = True
    SQL.Strings = (
      'select * from ServicoxFace where cd_servico ='
      '1'
      'order by cd_face')
    Left = 178
    Top = 168
    object Query1cd_servico: TIntegerField
      FieldName = 'cd_servico'
    end
    object Query1cd_face: TStringField
      FieldName = 'cd_face'
      FixedChar = True
      Size = 1
    end
    object Query1ds_face: TStringField
      FieldKind = fkLookup
      FieldName = 'ds_face'
      LookupDataSet = QueryFace
      LookupKeyFields = 'cd_face'
      LookupResultField = 'ds_face'
      KeyFields = 'cd_face'
      Size = 10
      Lookup = True
    end
  end
  inherited DataSource1: TDataSource
    Top = 184
  end
  object QueryFace: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from face order by 1')
    Left = 178
    Top = 96
  end
  object DsFace: TDataSource
    DataSet = QueryFace
    Left = 82
    Top = 112
  end
end
