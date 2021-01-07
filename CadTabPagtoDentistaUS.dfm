inherited FmCadTabPagtoDentistaUS: TFmCadTabPagtoDentistaUS
  Left = 25
  Top = 122
  Height = 433
  Caption = 'Cadastro Tabela Pagto Dentista(US)'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 394
  end
  inherited PanelRigth: TPanel
    Height = 394
  end
  inherited PanelCenter: TPanel
    Height = 394
    inherited PanelBotton: TPanel
      Top = 353
    end
    inherited PanelTop: TPanel
      Height = 137
      inherited Bevel1: TBevel
        Top = 127
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 28
        Height = 13
        Caption = 'indice'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 11
        Top = 49
        Width = 62
        Height = 13
        Caption = 'cd_categoria'
      end
      object Label4: TLabel
        Left = 270
        Top = 48
        Width = 24
        Height = 13
        Caption = 'vrUS'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 160
        Top = 8
        Width = 20
        Height = 13
        Caption = 'dtIni'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 272
        Top = 8
        Width = 25
        Height = 13
        Caption = 'dtFim'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        TabStop = False
        DataField = 'indice'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 270
        Top = 64
        Width = 121
        Height = 21
        DataField = 'vrUS'
        DataSource = DataSource1
        TabOrder = 4
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 160
        Top = 24
        Width = 104
        Height = 21
        DataField = 'dtIni'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 272
        Top = 24
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'dtFim'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 10
        Top = 65
        Width = 254
        Height = 21
        DataField = 'cd_categoria'
        DataSource = DataSource1
        KeyField = 'Codigo_Categoria'
        ListField = 'Descricao_Categoria'
        ListSource = DataSource2
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 96
        Width = 240
        Height = 25
        DataSource = DataSource1
        TabOrder = 5
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 137
      Height = 216
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 322
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    BeforeDelete = ADOQuery1BeforeDelete
    OnNewRecord = ADOQuery1NewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select t.*, c.Descricao_Categoria from tabpagDentistaXcategoria ' +
        't, Categoria c where c.Codigo_Categoria = t.cd_categoria and cd_' +
        'dentista ='
      '0')
    Left = 242
    Top = 128
    object ADOQuery1indice: TIntegerField
      FieldName = 'indice'
    end
    object ADOQuery1cd_dentista: TIntegerField
      FieldName = 'cd_dentista'
    end
    object ADOQuery1cd_categoria: TIntegerField
      FieldName = 'cd_categoria'
    end
    object ADOQuery1vrUS: TBCDField
      FieldName = 'vrUS'
      Precision = 8
      Size = 6
    end
    object ADOQuery1dtIni: TDateTimeField
      FieldName = 'dtIni'
    end
    object ADOQuery1dtFim: TDateTimeField
      FieldName = 'dtFim'
    end
    object ADOQuery1Descricao_Categoria: TStringField
      FieldName = 'Descricao_Categoria'
      Size = 30
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 322
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from categoria order by descricao_categoria')
    Left = 242
    Top = 192
  end
end
