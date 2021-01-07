inherited FmCadCriterioOdonto: TFmCadCriterioOdonto
  Left = 216
  Top = 129
  Width = 619
  Height = 463
  Caption = 'Cadastro de crit'#233'rios Odontograma'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 432
  end
  inherited PanelRigth: TPanel
    Left = 601
    Height = 432
  end
  inherited PanelCenter: TPanel
    Width = 591
    Height = 432
    inherited PanelBotton: TPanel
      Top = 400
      Width = 591
      Height = 32
      object Label5: TLabel [0]
        Left = 302
        Top = 11
        Width = 36
        Height = 13
        Caption = 'Servi'#231'o'
        FocusControl = DBEdit2
        Visible = False
      end
      object SpeedButton1: TSpeedButton [1]
        Left = 272
        Top = 6
        Width = 23
        Height = 22
        Hint = 'Clique aqui para efeturar um filtro pelo c'#243'digo do servi'#231'o'
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      inherited Panel1: TPanel
        Left = 499
        Height = 32
        inherited BitBtnSair: TBitBtn
          Left = 13
          Top = 5
          Caption = 'Sair'
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 240
        Height = 32
        DataSource = DsCritOdonto
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alLeft
        Flat = True
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 343
        Top = 5
        Width = 68
        Height = 21
        TabOrder = 2
        Visible = False
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 432
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Para Excel'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel
      Width = 591
      Height = 182
      inherited Bevel1: TBevel
        Top = 172
        Width = 591
      end
      object Label1: TLabel
        Left = 3
        Top = 4
        Width = 47
        Height = 13
        Caption = '&N'#186' Crit'#233'rio'
        FocusControl = DBEdit1
      end
      object SpeedButtonPesqMedico: TSpeedButton
        Left = 167
        Top = 20
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
        Left = 204
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Descri'#231#227'o servi'#231'o'
        FocusControl = DBEdit2
      end
      object Label2: TLabel
        Left = 78
        Top = 4
        Width = 36
        Height = 13
        Caption = 'Servi'#231'o'
        FocusControl = DBEdit2
      end
      object Label8: TLabel
        Left = 8
        Top = 148
        Width = 234
        Height = 13
        Caption = 'Neste per'#237'odo este servi'#231'o poder'#225' ser executado'
      end
      object Label9: TLabel
        Left = 280
        Top = 148
        Width = 34
        Height = 13
        Caption = 'vez(es)'
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 20
        Width = 63
        Height = 21
        TabStop = False
        DataField = 'cd_criterio'
        DataSource = DsCritOdonto
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 75
        Top = 20
        Width = 86
        Height = 21
        DataField = 'cd_servico'
        DataSource = DsCritOdonto
        TabOrder = 1
      end
      object EditServico: TEdit
        Left = 201
        Top = 20
        Width = 385
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 2
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 3
        Top = 50
        Width = 132
        Height = 90
        Caption = 'N'#237'vel de &restri'#231#227'o'
        DataField = 'nivel_restricao'
        DataSource = DsCritOdonto
        Items.Strings = (
          '&Bloqueia'
          '&Libera com senha'
          '&Somente avisa')
        TabOrder = 3
        TabStop = True
        Values.Strings = (
          'B'
          'S'
          'A')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 142
        Top = 50
        Width = 145
        Height = 90
        Caption = '&V'#225'lidar para'
        Columns = 2
        DataField = 'nivel_crit'
        DataSource = DsCritOdonto
        Enabled = False
        Items.Strings = (
          '&Cliente'
          '&Dente'
          '&Face'
          '&Hemi-Arco'
          '&Sexante'
          '&Arcada')
        TabOrder = 4
        TabStop = True
        Values.Strings = (
          'C'
          'D'
          'F'
          'H'
          'S'
          'A')
      end
      object GroupBox1: TGroupBox
        Left = 298
        Top = 50
        Width = 152
        Height = 90
        Caption = 'Vig&'#234'ncia'
        TabOrder = 5
        object Label6: TLabel
          Left = 7
          Top = 28
          Width = 27
          Height = 13
          Caption = 'I&n'#237'cio'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 18
          Top = 60
          Width = 16
          Height = 13
          Caption = 'F&im'
          FocusControl = DBEdit7
        end
        object DBEdit6: TDBEdit
          Left = 39
          Top = 27
          Width = 83
          Height = 21
          DataField = 'dt_ini_criterio'
          DataSource = DsCritOdonto
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 39
          Top = 57
          Width = 83
          Height = 21
          DataField = 'dt_fim_criterio'
          DataSource = DsCritOdonto
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 454
        Top = 51
        Width = 133
        Height = 87
        Caption = 'C&ar'#234'ncia'
        TabOrder = 6
        object Label4: TLabel
          Left = 78
          Top = 32
          Width = 21
          Height = 13
          Caption = 'Dias'
        end
        object DBEdit4: TDBEdit
          Left = 18
          Top = 29
          Width = 55
          Height = 21
          DataField = 'qt_dias'
          DataSource = DsCritOdonto
          TabOrder = 0
        end
      end
      object DBEdit3: TDBEdit
        Left = 246
        Top = 144
        Width = 29
        Height = 21
        DataField = 'qtde'
        DataSource = DsCritOdonto
        TabOrder = 7
        OnKeyPress = DBEdit3KeyPress
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 182
      Width = 591
      Height = 195
      TabStop = False
      Align = alCustom
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_criterio'
          Title.Caption = 'C'#243'digo'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_servico'
          Title.Caption = 'Servi'#231'o'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nivel_restricao'
          Title.Caption = 'N'#237'vel'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nivel_crit'
          Title.Caption = 'V'#225'lidar para'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_dias'
          Title.Caption = 'Qtde Dias'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ini_criterio'
          Title.Caption = 'In'#237'cio'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_criterio'
          Title.Caption = 'Fim'
          Visible = True
        end>
    end
    object CheckBox1: TCheckBox
      Left = 1
      Top = 380
      Width = 175
      Height = 17
      Caption = 'Mostrar Apenas regras Ativas'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
  inherited Query1: TQuery
    AfterScroll = Query1AfterScroll
    SQL.Strings = (
      'select'
      '        case nivel_restricao '
      '            when '#39'B'#39' then '#39'Bloqueia'#39
      '            when '#39'S'#39' then '#39'Libera com senha'#39
      '            when '#39'A'#39' then '#39'Avisa'#39
      '        end as nivel_restricao,'
      ''
      '        case nivel_crit '
      '            when '#39'C'#39' then '#39'Cliente'#39
      '            when '#39'D'#39' then '#39'Dente'#39
      '            when '#39'F'#39' then '#39'Face'#39
      '        end as nivel_crit,'
      #9'c.*,'
      #9's.descricao'
      ''
      'from '
      #9'criterio_odontograma c, '
      #9'servicos s'
      ''
      'where'
      #9's.codigo = c.cd_servico'
      '                and dt_fim_criterio is null'
      '              '
      ''
      'order by '
      #9's.descricao'
      ' '
      ' ')
    Left = 338
    Top = 32
  end
  inherited DataSource1: TDataSource
    Left = 210
    Top = 264
  end
  object QueryCritOdonto: TQuery
    AfterInsert = QueryCritOdontoAfterInsert
    BeforePost = QueryCritOdontoBeforePost
    AfterPost = QueryCritOdontoAfterPost
    BeforeDelete = QueryCritOdontoBeforeDelete
    AfterScroll = QueryCritOdontoAfterScroll
    OnNewRecord = QueryCritOdontoNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from criterio_odontograma where 0=0'
      ''
      ''
      'order by cd_servico')
    Left = 424
    Top = 240
    object QueryCritOdontocd_criterio: TSmallintField
      FieldName = 'cd_criterio'
      Origin = 'MULTI.criterio_odontograma.cd_criterio'
    end
    object QueryCritOdontocd_servico: TIntegerField
      FieldName = 'cd_servico'
      Origin = 'MULTI.criterio_odontograma.cd_servico'
      OnValidate = QueryCritOdontocd_servicoValidate
    end
    object QueryCritOdontonivel_crit: TStringField
      FieldName = 'nivel_crit'
      Origin = 'MULTI.criterio_odontograma.nivel_crit'
      FixedChar = True
      Size = 1
    end
    object QueryCritOdontoqt_dias: TSmallintField
      FieldName = 'qt_dias'
      Origin = 'MULTI.criterio_odontograma.qt_dias'
    end
    object QueryCritOdontonivel_restricao: TStringField
      FieldName = 'nivel_restricao'
      Origin = 'MULTI.criterio_odontograma.nivel_restricao'
      FixedChar = True
      Size = 1
    end
    object QueryCritOdontodt_ini_criterio: TDateTimeField
      FieldName = 'dt_ini_criterio'
      Origin = 'MULTI.criterio_odontograma.dt_ini_criterio'
      EditMask = '!99/99/0000;1;_'
    end
    object QueryCritOdontodt_fim_criterio: TDateTimeField
      FieldName = 'dt_fim_criterio'
      Origin = 'MULTI.criterio_odontograma.dt_fim_criterio'
      EditMask = '!99/99/0000;1;_'
    end
    object QueryCritOdontoqtde: TSmallintField
      FieldName = 'qtde'
      Origin = 'MULTI.criterio_odontograma.qtde'
    end
  end
  object DsCritOdonto: TDataSource
    DataSet = QueryCritOdonto
    Left = 424
    Top = 184
  end
end
