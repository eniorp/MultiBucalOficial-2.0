inherited FmCadTabPagto: TFmCadTabPagto
  Left = 413
  Top = 175
  Width = 491
  Height = 343
  Caption = 'Cadastro de Tabela de Pagamento'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 309
  end
  inherited PanelRigth: TPanel
    Left = 473
    Height = 309
  end
  inherited PanelCenter: TPanel
    Width = 463
    Height = 309
    inherited PanelBotton: TPanel
      Top = 268
      Width = 463
      inherited Panel1: TPanel
        Left = 128
        Width = 335
        inherited BitBtnSair: TBitBtn
          Left = 270
          Width = 65
        end
        object Button1: TButton
          Left = 200
          Top = 9
          Width = 65
          Height = 25
          Caption = 'Itens'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 5
          Top = 10
          Width = 191
          Height = 25
          Caption = 'Copia Itens de uma tabela para outra'
          TabOrder = 2
          OnClick = Button2Click
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 463
      Height = 49
      inherited Bevel1: TBevel
        Top = 39
        Width = 463
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 8
        Width = 240
        Height = 25
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 49
      Width = 463
      Height = 219
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_tabela'
          Title.Caption = 'C'#243'd Tabela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_tabela'
          Title.Caption = 'Descri'#231#227'o'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtIni'
          Title.Caption = 'Dt Ini'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dtfim'
          Title.Caption = 'Dt Fim'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dt_tabela'
          Title.Caption = 'Data Cria'#231#227'o'
          Width = 66
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    Left = 266
    Top = 104
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryTabPagto
    Left = 194
    Top = 96
  end
  object ADOQueryTabPagto: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnNewRecord = ADOQueryTabPagtoNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from TabelaPagto where tipo ='
      #39'D'#39
      'order by 1')
    Left = 242
    Top = 168
  end
end
