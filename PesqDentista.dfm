inherited FmPesqDentista: TFmPesqDentista
  Left = 10
  Top = 84
  Width = 636
  Height = 446
  Caption = 'Pesquisa de Dentistas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 407
  end
  inherited PanelRigth: TPanel
    Left = 610
    Height = 407
  end
  inherited PanelCenter: TPanel
    Width = 600
    Height = 407
    inherited PanelBotton: TPanel
      Top = 374
      Width = 600
      Height = 33
      object Label2: TLabel [0]
        Left = 346
        Top = 11
        Width = 8
        Height = 13
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 348
        Width = 252
        Height = 33
        inherited BitBtnSair: TBitBtn
          Left = 153
          Top = 4
          Width = 95
        end
        object BitBtn1: TBitBtn
          Left = 53
          Top = 4
          Width = 95
          Height = 25
          Caption = '&Endere'#231'os F2'
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 600
      Height = 177
      inherited Bevel1: TBevel
        Top = 167
        Width = 600
      end
      object BitBtnPesquisar: TBitBtn
        Left = 546
        Top = 11
        Width = 61
        Height = 89
        Caption = '&Pesquisar'
        TabOrder = 6
        OnClick = BitBtnPesquisarClick
      end
      object GroupBox1: TGroupBox
        Left = 395
        Top = 6
        Width = 140
        Height = 49
        TabOrder = 1
        object Label3: TLabel
          Left = 12
          Top = 25
          Width = 12
          Height = 13
          Caption = #192's'
          Enabled = False
        end
        object Label4: TLabel
          Left = 73
          Top = 25
          Width = 28
          Height = 13
          Caption = 'Horas'
          Enabled = False
        end
        object CheckBoxHr: TCheckBox
          Left = 9
          Top = -1
          Width = 89
          Height = 17
          Caption = '&Que atendam '
          TabOrder = 0
          OnClick = CheckBoxHrClick
        end
        object MaskEditHr: TMaskEdit
          Left = 31
          Top = 23
          Width = 37
          Height = 21
          Enabled = False
          EditMask = '!90:00;1;_'
          MaxLength = 5
          TabOrder = 1
          Text = '  :  '
          OnKeyPress = MaskEditHrKeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 303
        Top = 62
        Width = 235
        Height = 49
        TabOrder = 3
        object CheckBoxCidade: TCheckBox
          Left = 9
          Top = -1
          Width = 160
          Height = 17
          Caption = '&Que Atendam Na Cidade de'
          TabOrder = 0
          OnClick = CheckBoxCidadeClick
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 5
          Top = 21
          Width = 226
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cd_cidade'
          ListField = 'ds_cidade'
          ListSource = DsCidade
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 10
        Top = 64
        Width = 288
        Height = 46
        TabOrder = 2
        object CheckBoxTer: TCheckBox
          Left = 53
          Top = 20
          Width = 42
          Height = 17
          Caption = '&Ter'
          Enabled = False
          TabOrder = 2
        end
        object CheckBoxQua: TCheckBox
          Left = 99
          Top = 20
          Width = 42
          Height = 17
          Caption = '&Qua'
          Enabled = False
          TabOrder = 3
        end
        object CheckBoxQui: TCheckBox
          Left = 146
          Top = 20
          Width = 42
          Height = 17
          Caption = 'Q&ui'
          Enabled = False
          TabOrder = 4
        end
        object CheckBoxSex: TCheckBox
          Left = 192
          Top = 20
          Width = 42
          Height = 17
          Caption = 'S&ex'
          Enabled = False
          TabOrder = 5
        end
        object CheckBoxSab: TCheckBox
          Left = 239
          Top = 20
          Width = 42
          Height = 17
          Caption = 'Sa&b'
          Enabled = False
          TabOrder = 6
        end
        object CheckBoxSeg: TCheckBox
          Left = 6
          Top = 20
          Width = 42
          Height = 17
          Caption = '&Seg'
          Enabled = False
          TabOrder = 1
        end
        object CheckBoxdiaSem: TCheckBox
          Left = 14
          Top = -2
          Width = 179
          Height = 17
          Caption = '&Que atendam nos seguintes dias'
          TabOrder = 0
          OnClick = CheckBoxdiaSemClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 8
        Width = 377
        Height = 45
        Caption = 
          'Informe o nome do Dentista ou Utilize o S'#237'mbolo % para Pesquisa ' +
          'Refinada'
        TabOrder = 0
        object EditNmDentista: TEdit
          Left = 9
          Top = 16
          Width = 354
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 0
          OnKeyPress = EditNmDentistaKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 9
        Top = 112
        Width = 235
        Height = 49
        TabOrder = 4
        object CheckBoxBairro: TCheckBox
          Left = 9
          Top = -1
          Width = 160
          Height = 17
          Caption = '&Endere'#231'o localizado no bairro'
          TabOrder = 0
          OnClick = CheckBoxBairroClick
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 5
          Top = 19
          Width = 226
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cd_bairro'
          ListField = 'ds_bairro'
          ListSource = DsBairro
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox6: TGroupBox
        Left = 304
        Top = 112
        Width = 235
        Height = 49
        TabOrder = 5
        object CheckBoxEsp: TCheckBox
          Left = 9
          Top = -1
          Width = 150
          Height = 17
          Caption = '&Especialidade do Dentista'
          TabOrder = 0
          OnClick = CheckBoxEspClick
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 5
          Top = 19
          Width = 226
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cd_especialidade'
          ListField = 'ds_especialidade'
          ListSource = DsEsp
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 542
        Top = 103
        Width = 65
        Height = 59
        TabOrder = 7
        object Label1: TLabel
          Left = 12
          Top = 33
          Width = 46
          Height = 13
          Caption = 'exclu'#237'dos'
        end
        object CheckBoxExcl: TCheckBox
          Left = 5
          Top = 10
          Width = 57
          Height = 17
          Caption = 'Mostrar'
          TabOrder = 0
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 177
      Width = 600
      Height = 197
      Hint = 'D'#234' um duplo clique para salvar a pesquisa'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'c'#243'digo'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone1'
          Title.Caption = 'Tel 1'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone2'
          Title.Caption = 'Tel 2'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_inclusao'
          Title.Caption = 'Inclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Exclusao'
          Title.Caption = 'Exclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Clinica'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Acrescimo_NF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'e_civil'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_formacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fax'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from dentista d'
      'where nome like '#39#39
      ''
      'order by nome')
  end
  object DsCidade: TDataSource
    DataSet = QueryCidade
    Left = 382
    Top = 229
  end
  object QueryCidade: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from cidade order by ds_cidade')
    Left = 430
    Top = 258
  end
  object DsBairro: TDataSource
    DataSet = QueryBairro
    Left = 238
    Top = 221
  end
  object QueryBairro: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from bairro order by ds_bairro')
    Left = 230
    Top = 282
  end
  object DsEsp: TDataSource
    DataSet = QueryEsp
    Left = 326
    Top = 266
  end
  object QueryEsp: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from especialidade where ativa = '#39'S'#39' order by 2')
    Left = 326
    Top = 202
    object QueryEspcd_especialidade: TSmallintField
      FieldName = 'cd_especialidade'
    end
    object QueryEspds_especialidade: TStringField
      FieldName = 'ds_especialidade'
      Size = 30
    end
    object QueryEspativa: TStringField
      FieldName = 'ativa'
      FixedChar = True
      Size = 1
    end
  end
end
