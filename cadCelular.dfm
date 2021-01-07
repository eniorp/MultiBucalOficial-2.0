inherited FmCadCelular: TFmCadCelular
  Left = 337
  Top = 141
  Width = 415
  Caption = 'Cadastro de Celular'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 397
  end
  inherited PanelCenter: TPanel
    Width = 387
    inherited PanelBotton: TPanel
      Width = 387
      inherited Panel1: TPanel
        Left = 295
      end
    end
    inherited PanelTop: TPanel
      Width = 387
      Height = 138
      inherited Bevel1: TBevel
        Top = 128
        Width = 387
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 18
        Height = 13
        Caption = 'ddd'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 48
        Top = 10
        Width = 31
        Height = 13
        Caption = 'celular'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 17
        Height = 13
        Caption = 'obs'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 33
        Height = 21
        DataField = 'ddd'
        DataSource = DataSource2
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 26
        Width = 137
        Height = 21
        DataField = 'celular'
        DataSource = DataSource2
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 96
        Width = 238
        Height = 25
        DataSource = DataSource2
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 64
        Width = 329
        Height = 21
        DataField = 'obs'
        DataSource = DataSource2
        TabOrder = 3
        OnKeyPress = DBEdit2KeyPress
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 138
      Width = 387
      Height = 169
      DataSource = DataSource2
      Columns = <
        item
          Expanded = False
          FieldName = 'ddd'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Width = 237
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 36
          Visible = True
        end>
    end
  end
  inherited ADOQueryH: TADOQuery
    BeforePost = ADOQueryHBeforePost
    OnNewRecord = ADOQueryHNewRecord
    DataSource = DataSource1
    SQL.Strings = (
      'select * from celulares where codigo = '
      '0')
    Left = 288
    Top = 184
    object ADOQueryHCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADOQueryHddd: TIntegerField
      FieldName = 'ddd'
    end
    object ADOQueryHcelular: TBCDField
      FieldName = 'celular'
      Precision = 18
      Size = 0
    end
    object ADOQueryHobs: TStringField
      FieldName = 'obs'
      Size = 25
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryH
    Left = 192
    Top = 176
  end
end
