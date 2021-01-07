inherited FmCadBloqueioGrupo: TFmCadBloqueioGrupo
  Left = 256
  Top = 97
  Width = 587
  Height = 511
  Caption = 'Cadastro de Bloqueio de Grupo de Contratante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 472
  end
  inherited PanelRigth: TPanel
    Left = 561
    Height = 472
  end
  inherited PanelCenter: TPanel
    Width = 551
    Height = 472
    inherited PanelBotton: TPanel
      Top = 431
      Width = 551
      inherited Panel1: TPanel
        Left = 459
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 8
        Width = 432
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 551
      Height = 162
      inherited Bevel1: TBevel
        Top = 152
        Width = 551
      end
      object Label2: TLabel
        Left = 0
        Top = 16
        Width = 65
        Height = 13
        Caption = 'C'#243'digo Grupo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 0
        Top = 56
        Width = 97
        Height = 13
        Caption = 'Data In'#237'cio Bloqueio'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 144
        Top = 56
        Width = 86
        Height = 13
        Caption = 'Data Fim Bloqueio'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 0
        Top = 104
        Width = 79
        Height = 13
        Caption = 'Usu'#225'rio Inclus'#227'o'
      end
      object Label6: TLabel
        Left = 144
        Top = 104
        Width = 98
        Height = 13
        Caption = 'Usu'#225'rio Desbloqueio'
      end
      object Label1: TLabel
        Left = 146
        Top = 16
        Width = 60
        Height = 13
        Caption = 'Nome Grupo'
        FocusControl = DBEdit2
      end
      object DBEdit2: TDBEdit
        Left = 0
        Top = 32
        Width = 134
        Height = 21
        DataField = 'cd_grupo_contrat'
        DataSource = DataSource1
        TabOrder = 0
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 0
        Top = 72
        Width = 132
        Height = 21
        DataField = 'dt_ini_bloqueio'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 144
        Top = 72
        Width = 113
        Height = 21
        DataField = 'dt_fim_gloqueio'
        DataSource = DataSource1
        TabOrder = 2
      end
      object EditNmGrupo: TEdit
        Left = 144
        Top = 32
        Width = 353
        Height = 21
        Color = cl3DLight
        TabOrder = 3
      end
      object EditNmInc: TEdit
        Left = 0
        Top = 120
        Width = 129
        Height = 21
        Color = cl3DLight
        TabOrder = 4
      end
      object EditNmDesblo: TEdit
        Left = 144
        Top = 120
        Width = 161
        Height = 21
        Color = cl3DLight
        TabOrder = 5
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 162
      Width = 551
      Height = 269
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_grupo_contrat'
          Title.Caption = 'C'#243'd Grupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_grupo'
          Title.Caption = 'Grupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ini_bloqueio'
          Title.Caption = 'Ini Bloqueio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_gloqueio'
          Title.Caption = 'Fim bloqueio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usuario_inclusao'
          Title.Caption = 'C'#243'd Usu Bloqueio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usuario_desbloqueio'
          Title.Caption = 'C'#243'd Usu Bloqueio'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryBloqueioGrupo
  end
  object ADOQueryBloqueioGrupo: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQueryBloqueioGrupoBeforePost
    AfterPost = ADOQueryBloqueioGrupoAfterPost
    AfterScroll = ADOQueryBloqueioGrupoAfterScroll
    OnNewRecord = ADOQueryBloqueioGrupoNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select c.descricao as nm_grupo, b.* from bloqueio_grupoContrat b' +
        ', Grupo_Contratante c where c.codigo = b.cd_grupo_contrat'
      ''
      'order by b.dt_fim_gloqueio, c.Descricao')
    Left = 322
    Top = 208
    object ADOQueryBloqueioGrupocd_grupo_contrat: TIntegerField
      FieldName = 'cd_grupo_contrat'
    end
    object ADOQueryBloqueioGrupodt_ini_bloqueio: TDateTimeField
      FieldName = 'dt_ini_bloqueio'
    end
    object ADOQueryBloqueioGrupodt_fim_gloqueio: TDateTimeField
      FieldName = 'dt_fim_gloqueio'
    end
    object ADOQueryBloqueioGrupocd_usuario_inclusao: TIntegerField
      FieldName = 'cd_usuario_inclusao'
    end
    object ADOQueryBloqueioGrupocd_usuario_desbloqueio: TIntegerField
      FieldName = 'cd_usuario_desbloqueio'
    end
    object ADOQueryBloqueioGruponm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 40
    end
  end
end
