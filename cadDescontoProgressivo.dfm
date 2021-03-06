inherited FmCadDescontoProgressivo: TFmCadDescontoProgressivo
  Left = 287
  Top = 62
  Width = 861
  Height = 623
  Caption = 'Cadastro de Desconto Progressivo'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 584
  end
  inherited PanelRigth: TPanel
    Left = 835
    Height = 584
  end
  inherited PanelCenter: TPanel
    Width = 825
    Height = 584
    inherited PanelBotton: TPanel
      Top = 543
      Width = 825
      inherited Panel1: TPanel
        Left = 733
      end
    end
    inherited PanelTop: TPanel
      Width = 825
      Height = 181
      inherited Bevel1: TBevel
        Top = 171
        Width = 825
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 4
        Width = 449
        Height = 57
        Caption = 'Pesquisa Plano por c'#243'dio ou descri'#231#227'o'
        TabOrder = 0
        object txtPesquisa: TEdit
          Left = 24
          Top = 24
          Width = 233
          Height = 21
          TabOrder = 0
        end
        object btnPesquisa: TButton
          Left = 272
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisaClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 64
        Width = 452
        Height = 103
        Caption = 'Novo registo/Altera'#231#227'o'
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 44
          Height = 13
          Caption = 'cd_plano'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 80
          Top = 24
          Width = 48
          Height = 13
          Caption = 'idade_min'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 193
          Top = 24
          Width = 51
          Height = 13
          Caption = 'idade_max'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 353
          Top = 24
          Width = 73
          Height = 13
          Caption = 'valor_desconto'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 40
          Width = 65
          Height = 21
          DataField = 'cd_plano'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 40
          Width = 107
          Height = 21
          DataField = 'idade_min'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 193
          Top = 40
          Width = 134
          Height = 21
          DataField = 'idade_max'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 353
          Top = 40
          Width = 87
          Height = 21
          DataField = 'valor_desconto'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBNavigator1: TDBNavigator
          Left = 16
          Top = 74
          Width = 420
          Height = 20
          DataSource = DataSource1
          TabOrder = 4
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 181
      Width = 825
      Height = 362
      Columns = <
        item
          Expanded = False
          FieldName = 'indice'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_plano'
          Title.Caption = 'C'#243'd Plano'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dsPlano'
          Title.Caption = 'Plano'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idade_min'
          Title.Caption = 'Idade Min'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idade_max'
          Title.Caption = 'Idade Max'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Title.Caption = 'Ini Vig'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim'
          Title.Caption = 'Fim Vig'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_desconto'
          Title.Caption = 'Valor Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dsPlano'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'indice'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_plano'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idade_min'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idade_max'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'valor_desconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dt_fim'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dt_cadastro'
          Title.Caption = 'Dt Cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmLogin'
          Title.Caption = 'Login'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryH
  end
  inherited ADOQueryH: TADOQuery
    CursorType = ctStatic
    BeforePost = ADOQueryHBeforePost
    AfterPost = ADOQueryHAfterPost
    BeforeDelete = ADOQueryHBeforeDelete
    SQL.Strings = (
      
        'select  p.descricao as dsPlano, d.* from descontoXIdade d, plano' +
        ' p where p.codigo = d.cd_plano '
      ''
      'order by d.cd_plano')
    object ADOQueryHdsPlano: TStringField
      FieldName = 'dsPlano'
      Size = 50
    end
    object ADOQueryHindice: TIntegerField
      FieldName = 'indice'
    end
    object ADOQueryHcd_plano: TIntegerField
      FieldName = 'cd_plano'
    end
    object ADOQueryHidade_min: TIntegerField
      FieldName = 'idade_min'
    end
    object ADOQueryHidade_max: TIntegerField
      FieldName = 'idade_max'
    end
    object ADOQueryHdt_inicio: TWideStringField
      FieldName = 'dt_inicio'
      Size = 10
    end
    object ADOQueryHvalor_desconto: TBCDField
      FieldName = 'valor_desconto'
      Precision = 10
    end
    object ADOQueryHdt_fim: TWideStringField
      FieldName = 'dt_fim'
      Size = 10
    end
    object ADOQueryHdt_cadastro: TDateTimeField
      FieldName = 'dt_cadastro'
    end
    object ADOQueryHnmLogin: TStringField
      FieldName = 'nmLogin'
    end
  end
end
