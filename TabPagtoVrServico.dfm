inherited FmTabPagtoVrServico: TFmTabPagtoVrServico
  Left = 256
  Top = 97
  Height = 549
  Caption = 'Itens da tabela'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 515
  end
  inherited PanelRigth: TPanel
    Height = 515
  end
  inherited PanelCenter: TPanel
    Height = 515
    inherited PanelBotton: TPanel
      Top = 474
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 8
        Width = 320
        Height = 25
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Tabela'
      end
      object Edit1: TEdit
        Left = 48
        Top = 21
        Width = 56
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 111
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Mostrar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 193
        Top = 20
        Width = 233
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
    end
    inherited DBGrid1: TDBGrid
      Height = 412
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_servico'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_servico'
          Title.Caption = 'Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_tabela'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_Dentista'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_Protetico'
          Title.Caption = 'Vr Prot'#233'tico'
          Visible = False
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryTabPagto
  end
  object ADOQueryTabPagto: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnNewRecord = ADOQueryTabPagtoNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select s.descricao ds_servico,t.* from TabPagto_vrServico t, ser' +
        'vicos s where s.codigo = t.cd_servico and t.cd_tabela ='
      '1'
      'order by ds_servico')
    Left = 242
    Top = 168
    object ADOQueryTabPagtods_servico: TStringField
      FieldName = 'ds_servico'
      FixedChar = True
      Size = 40
    end
    object ADOQueryTabPagtocd_tabela: TSmallintField
      FieldName = 'cd_tabela'
    end
    object ADOQueryTabPagtocd_servico: TIntegerField
      FieldName = 'cd_servico'
    end
    object ADOQueryTabPagtovr_Dentista: TBCDField
      FieldName = 'vr_Dentista'
      currency = True
      Precision = 10
    end
  end
end
