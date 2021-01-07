inherited FmCritServicoXIdade: TFmCritServicoXIdade
  Left = 364
  Top = 255
  Width = 683
  Height = 433
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Crit'#233'rio de limita'#231#227'o de Servi'#231'os por Idade'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 402
  end
  inherited PanelRigth: TPanel
    Left = 665
    Height = 402
  end
  inherited PanelCenter: TPanel
    Width = 655
    Height = 402
    inherited PanelBotton: TPanel
      Top = 361
      Width = 655
      inherited Panel1: TPanel
        Left = 563
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 8
        Width = 234
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object Button1: TButton
        Left = 488
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Para Excel'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel
      Width = 655
      Height = 177
      inherited Bevel1: TBevel
        Top = 167
        Width = 655
      end
      object Label1: TLabel
        Left = 3
        Top = 4
        Width = 47
        Height = 13
        Caption = '&N'#186' Crit'#233'rio'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 78
        Top = 4
        Width = 36
        Height = 13
        Caption = 'Servi'#231'o'
        FocusControl = DBEdit2
      end
      object SpeedButtonPesqMedico: TSpeedButton
        Left = 166
        Top = 21
        Width = 23
        Height = 21
        Hint = 'Pesquisar servi'#231'o pela descri'#231#227'o'
        Flat = True
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButtonPesqMedicoClick
      end
      object Label3: TLabel
        Left = 199
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Descri'#231#227'o servi'#231'o'
        FocusControl = DBEdit2
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 3
        Top = 66
        Width = 115
        Height = 95
        Caption = 'N'#237'vel de &restri'#231#227'o'
        DataField = 'nivel_restricao'
        DataSource = DataSource1
        Items.Strings = (
          '&Bloqueia'
          '&Libera com senha'
          '&Somente avisa')
        TabOrder = 1
        TabStop = True
        Values.Strings = (
          'B'
          'S'
          'A')
      end
      object GroupBox1: TGroupBox
        Left = 496
        Top = 66
        Width = 98
        Height = 95
        Caption = 'Vig&'#234'ncia'
        TabOrder = 4
        object Label6: TLabel
          Left = 15
          Top = 17
          Width = 27
          Height = 13
          Caption = 'I&n'#237'cio'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 15
          Top = 53
          Width = 16
          Height = 13
          Caption = 'F&im'
          FocusControl = DBEdit7
        end
        object DBEdit6: TDBEdit
          Left = 15
          Top = 32
          Width = 75
          Height = 21
          DataField = 'dt_ini_criterio'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 15
          Top = 68
          Width = 75
          Height = 21
          DataField = 'dt_fim_criterio'
          DataSource = DataSource1
          TabOrder = 1
        end
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 20
        Width = 63
        Height = 21
        TabStop = False
        DataField = 'cd_criterio'
        DataSource = DataSource1
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 75
        Top = 20
        Width = 86
        Height = 21
        DataField = 'cd_servico'
        DataSource = DataSource1
        TabOrder = 0
      end
      object EditServico: TEdit
        Left = 194
        Top = 20
        Width = 456
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 7
      end
      object GroupBox2: TGroupBox
        Left = 122
        Top = 66
        Width = 88
        Height = 95
        Caption = 'Idade'
        TabOrder = 2
        object Label4: TLabel
          Left = 7
          Top = 28
          Width = 14
          Height = 13
          Caption = 'De'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 5
          Top = 60
          Width = 16
          Height = 13
          Caption = 'At'#233
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 60
          Top = 28
          Width = 24
          Height = 13
          Caption = 'Anos'
          FocusControl = DBEdit3
        end
        object Label9: TLabel
          Left = 62
          Top = 61
          Width = 24
          Height = 13
          Caption = 'Anos'
          FocusControl = DBEdit3
        end
        object DBEdit3: TDBEdit
          Left = 25
          Top = 26
          Width = 32
          Height = 21
          DataField = 'idadeIni'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 26
          Top = 57
          Width = 32
          Height = 21
          DataField = 'idadeFim'
          DataSource = DataSource1
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 214
        Top = 65
        Width = 265
        Height = 97
        Caption = 'Dente'
        TabOrder = 3
        TabStop = True
        object DBRGOclInc: TDBRadioGroup
          Left = 6
          Top = 14
          Width = 237
          Height = 36
          Columns = 3
          DataField = 'inclu_oclu'
          DataSource = DataSource1
          Items.Strings = (
            '&Oclusal'
            '&Incisal'
            '&Todos')
          TabOrder = 0
          Values.Strings = (
            'O'
            'I'
            'T')
        end
        object DBRGPermDeci: TDBRadioGroup
          Left = 5
          Top = 52
          Width = 239
          Height = 35
          Columns = 3
          DataField = 'Perm_deci'
          DataSource = DataSource1
          Items.Strings = (
            '&Permanente'
            '&Dec'#237'duo'
            '&Todos')
          TabOrder = 1
          Values.Strings = (
            'P'
            'D'
            'T')
        end
      end
      object GroupBox4: TGroupBox
        Left = 597
        Top = 66
        Width = 56
        Height = 95
        Caption = 'Qtde'
        TabOrder = 5
        object DBEdit5: TDBEdit
          Left = 7
          Top = 43
          Width = 42
          Height = 21
          Hint = 
            'Quantide de vezes que este servi'#231'o poder'#225' ser executado em um pa' +
            'ciente'
          DataField = 'qtde'
          DataSource = DataSource1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object CheckBox1: TCheckBox
        Left = 2
        Top = 42
        Width = 175
        Height = 17
        Caption = 'Mostrar Apenas regras Ativas'
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = CheckBox1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 177
      Width = 655
      Height = 184
      TabStop = False
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_criterio'
          Title.Caption = 'Crit'#233'rio'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_servico'
          Title.Caption = 'Servi'#231'o'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idadeIni'
          Title.Caption = 'Idade Inicial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idadeFim'
          Title.Caption = 'Idade Final'
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'inclu_oclu'
          Title.Caption = 'Oclu/Inclu'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'perm_deci'
          Title.Caption = 'Perm/Deci'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtde'
          Title.Caption = 'Qtde'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nivel_restricao'
          Title.Caption = 'N'#237'vel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ini_criterio'
          Title.Caption = 'In'#237'cio'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_criterio'
          Title.Caption = 'Fim'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    RequestLive = True
    SQL.Strings = (
      'select * from ServicoXIdade order by cd_servico')
    Left = 362
    Top = 256
  end
  inherited DataSource1: TDataSource
    DataSet = QueryCritServIdade
    Left = 410
    Top = 200
  end
  object QueryCritServIdade: TQuery
    BeforePost = QueryCritServIdadeBeforePost
    AfterPost = QueryCritServIdadeAfterPost
    AfterScroll = QueryCritServIdadeAfterScroll
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from ServicoXIdade  where 0=0'
      'and dt_fim_criterio is null'
      ''
      ''
      ''
      'order by cd_servico')
    Left = 146
    Top = 232
    object QueryCritServIdadecd_criterio: TSmallintField
      FieldName = 'cd_criterio'
      Origin = 'MULTI.ServicoXIdade.cd_criterio'
    end
    object QueryCritServIdadecd_servico: TIntegerField
      FieldName = 'cd_servico'
      Origin = 'MULTI.ServicoXIdade.cd_servico'
      OnValidate = QueryCritServIdadecd_servicoValidate
    end
    object QueryCritServIdadeidadeIni: TSmallintField
      FieldName = 'idadeIni'
      Origin = 'MULTI.ServicoXIdade.idadeIni'
    end
    object QueryCritServIdadeidadeFim: TSmallintField
      FieldName = 'idadeFim'
      Origin = 'MULTI.ServicoXIdade.idadeFim'
    end
    object QueryCritServIdadeinclu_oclu: TStringField
      FieldName = 'inclu_oclu'
      Origin = 'MULTI.ServicoXIdade.inclu_oclu'
      FixedChar = True
      Size = 1
    end
    object QueryCritServIdadeperm_deci: TStringField
      FieldName = 'perm_deci'
      Origin = 'MULTI.ServicoXIdade.perm_deci'
      FixedChar = True
      Size = 1
    end
    object QueryCritServIdadeqtde: TSmallintField
      FieldName = 'qtde'
      Origin = 'MULTI.ServicoXIdade.qtde'
    end
    object QueryCritServIdadenivel_restricao: TStringField
      FieldName = 'nivel_restricao'
      Origin = 'MULTI.ServicoXIdade.nivel_restricao'
      FixedChar = True
      Size = 1
    end
    object QueryCritServIdadedt_ini_criterio: TDateTimeField
      FieldName = 'dt_ini_criterio'
      Origin = 'MULTI.ServicoXIdade.dt_ini_criterio'
      EditMask = '!99/99/0000;1;_'
    end
    object QueryCritServIdadedt_fim_criterio: TDateTimeField
      FieldName = 'dt_fim_criterio'
      Origin = 'MULTI.ServicoXIdade.dt_fim_criterio'
      EditMask = '!99/99/0000;1;_'
    end
  end
end
