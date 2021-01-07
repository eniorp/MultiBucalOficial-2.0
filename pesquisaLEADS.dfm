inherited FmPesqGerenciamentoLEADS: TFmPesqGerenciamentoLEADS
  Left = 182
  Top = 104
  Width = 724
  Height = 512
  Caption = 'Pesquisa de LEADS'
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 473
  end
  inherited PanelRigth: TPanel
    Left = 698
    Height = 473
  end
  inherited PanelCenter: TPanel
    Width = 688
    Height = 473
    inherited PanelBotton: TPanel
      Top = 432
      Width = 688
      inherited Panel1: TPanel
        Left = 596
      end
    end
    inherited PanelTop: TPanel
      Width = 688
      Height = 121
      inherited Bevel1: TBevel
        Top = 111
        Width = 688
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 8
        Width = 168
        Height = 89
        Caption = '&Intervalo de datas'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 25
          Width = 53
          Height = 13
          Caption = 'Data In'#237'cio'
        end
        object Label2: TLabel
          Left = 18
          Top = 57
          Width = 42
          Height = 13
          Caption = 'Data Fim'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 66
          Top = 21
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 65
          Top = 56
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object GroupBox2: TGroupBox
        Left = 174
        Top = 9
        Width = 227
        Height = 50
        Caption = 'Status'
        TabOrder = 1
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 9
          Top = 21
          Width = 211
          Height = 21
          KeyField = 'cdStatus'
          ListField = 'dsStatus'
          ListSource = DataSourceStatus
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object Button1: TButton
        Left = 408
        Top = 16
        Width = 78
        Height = 81
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object GroupBox3: TGroupBox
        Left = 174
        Top = 60
        Width = 227
        Height = 46
        Caption = 'Representante'
        TabOrder = 3
        Visible = False
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 6
          Top = 15
          Width = 215
          Height = 21
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = DataSourceRepresentante
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 121
      Width = 688
      Height = 311
      ReadOnly = True
      OnDblClick = SalvarPesquisa1Click
      Columns = <
        item
          Expanded = False
          FieldName = 'indice'
          Title.Caption = #205'ndice'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ddd'
          Title.Caption = 'DDD'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fone'
          Title.Caption = 'Telefone'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtInclusao'
          Title.Caption = 'Inclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdStatus'
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OrigemContato'
          Title.Caption = 'Origem'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'representante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Respons'#225'vel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Caption = 'e-mail'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryH
  end
  inherited ADOQueryH: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'select indice,l.nome, l.ddd, l.fone, email, l.dtInclusao,cdStatu' +
        's, o.descricao OrigemContato, op.apelido, r.nome representante f' +
        'rom Representante r, GerenciamentoLEADS l, origemContatoLEADS o,' +
        ' operador op where l.cdOrigemContato = o.cdOrigemContato'
      ''
      
        'and r.codigo = l.cdRepresentante and op.codigo = l.cdOperador an' +
        'd l.dtexclusao is null and l.cdOperador ='
      '0'
      '')
  end
  object PopupMenu1: TPopupMenu
    Left = 290
    Top = 232
    object SalvarPesquisa1: TMenuItem
      Caption = 'Salvar Pesquisa'
      ShortCut = 113
      OnClick = SalvarPesquisa1Click
    end
  end
  object DataSourceRepresentante: TDataSource
    DataSet = ADOQueryRepresentante
    Left = 448
    Top = 184
  end
  object ADOQueryRepresentante: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select 0 codigo , '#39' Todos'#39' nome union select codigo,nome from re' +
        'presentante where data_exclusao is null order by nome')
    Left = 336
    Top = 179
  end
  object ADOQueryStatus: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select '#39#39' cdStatus, '#39'Todos'#39' dsStatus union select * from statusL' +
        'EADS')
    Left = 424
    Top = 287
  end
  object DataSourceStatus: TDataSource
    DataSet = ADOQueryStatus
    Left = 528
    Top = 284
  end
end
