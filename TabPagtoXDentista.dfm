inherited FmTabPagtoDentista: TFmTabPagtoDentista
  Left = 248
  Top = 177
  Width = 596
  Height = 487
  Caption = 'Tabelas de Pagamento do Dentista'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 449
  end
  inherited PanelRigth: TPanel
    Left = 570
    Height = 449
  end
  inherited PanelCenter: TPanel
    Width = 560
    Height = 449
    inherited PanelBotton: TPanel
      Top = 408
      Width = 560
      inherited Panel1: TPanel
        Left = 468
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 8
        Width = 234
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 560
      Height = 110
      inherited Bevel1: TBevel
        Top = 100
        Width = 560
      end
      object Label1: TLabel
        Left = 30
        Top = 18
        Width = 33
        Height = 13
        Caption = 'Tabela'
      end
      object Label2: TLabel
        Left = 4
        Top = 72
        Width = 40
        Height = 13
        Caption = 'vig'#234'ncia'
      end
      object Label3: TLabel
        Left = 5
        Top = 44
        Width = 64
        Height = 13
        Caption = 'Registro ANS'
      end
      object SpeedButton1: TSpeedButton
        Left = 368
        Top = 40
        Width = 23
        Height = 22
        Hint = 'limpar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 74
        Top = 15
        Width = 49
        Height = 21
        DataField = 'cd_tabela'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 71
        Top = 72
        Width = 117
        Height = 21
        DataField = 'dtIni'
        DataSource = DataSource1
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 131
        Top = 15
        Width = 241
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 72
        Top = 40
        Width = 289
        Height = 21
        Hint = 
          'Deixe em branco, caso deseje cadastrar todos os Registros ANS(se' +
          ' o dentista usa uma '#250'nica tabela para todos os planos, deixe em ' +
          'branco)'
        DataField = 'registroPlano'
        DataSource = DataSource1
        KeyField = 'registroPlano'
        ListField = 'ds_registro'
        ListSource = DataSource2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 110
      Width = 560
      Height = 298
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_dentista'
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
          FieldName = 'registroPlano'
          Title.Caption = 'Registro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_registro'
          Title.Caption = 'Registro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtIni'
          Title.Caption = 'In'#237'cio vig'#234'ncia'
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
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from TabPagXDentista where cd_dentista ='
      '0')
    Left = 194
    Top = 176
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    AfterScroll = ADOQuery1AfterScroll
    OnNewRecord = ADOQuery1NewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, b.ds_registro from TabPagXDentista a left join regis' +
        'troPlanoANS b  on a.registroPlano = b.registroPlano where a.cd_d' +
        'entista ='
      '0'
      'order by a.registroPlano, a.dtini')
    Left = 242
    Top = 128
    object ADOQuery1cd_dentista: TIntegerField
      FieldName = 'cd_dentista'
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
    object ADOQuery1indice: TIntegerField
      FieldName = 'indice'
    end
    object ADOQuery1registroPlano: TIntegerField
      FieldName = 'registroPlano'
    end
    object ADOQuery1ds_registro: TStringField
      FieldName = 'ds_registro'
      Size = 30
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    AfterScroll = ADOQuery1AfterScroll
    OnNewRecord = ADOQuery1NewRecord
    Parameters = <>
    SQL.Strings = (
      
        'SELECT registroPlano, cast(registroPlano as varchar(10)) + '#39'-'#39' +' +
        ' ds_registro ds_registro FROM registroPlanoANS WHERE ATIVO = '#39'S'#39 +
        ' ORDER BY 1')
    Left = 242
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 82
    Top = 144
  end
end
