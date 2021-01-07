inherited FmTabPagtoProtetico: TFmTabPagtoProtetico
  Left = 126
  Top = 162
  Width = 391
  Caption = 'Tabelas de Pagamento Prot'#233'tico'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 373
  end
  inherited PanelCenter: TPanel
    Width = 363
    inherited PanelBotton: TPanel
      Width = 363
      inherited Panel1: TPanel
        Left = 271
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 8
        Width = 279
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 363
      Height = 79
      inherited Bevel1: TBevel
        Top = 69
        Width = 363
      end
      object Label1: TLabel
        Left = 20
        Top = 16
        Width = 55
        Height = 13
        Caption = 'C'#243'd Tabela'
      end
      object Label2: TLabel
        Left = 100
        Top = 15
        Width = 96
        Height = 13
        Caption = 'Data In'#237'cio vig'#234'ncia'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 73
        Height = 21
        DataField = 'cd_tabela'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 32
        Width = 110
        Height = 21
        DataField = 'dtIni'
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 79
      Width = 363
      Height = 221
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_protetico'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_tabela'
          Title.Caption = 'Tabela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtIni'
          Title.Caption = 'In'#237'cio Vig'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtFim'
          Title.Caption = 'Fim Vig'#234'ncia'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    OnNewRecord = ADOQuery1NewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from TabPagXProtetico where cd_protetico ='
      '0'
      'order by dtini')
    Left = 266
    Top = 144
    object ADOQuery1cd_protetico: TIntegerField
      FieldName = 'cd_protetico'
    end
    object ADOQuery1cd_tabela: TSmallintField
      FieldName = 'cd_tabela'
    end
    object ADOQuery1dtIni: TDateTimeField
      FieldName = 'dtIni'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOQuery1dtFim: TDateTimeField
      FieldName = 'dtFim'
    end
  end
end
