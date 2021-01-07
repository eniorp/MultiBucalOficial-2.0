inherited FmCadBloqueioContrat: TFmCadBloqueioContrat
  Left = 256
  Top = 97
  Width = 587
  Height = 511
  Caption = 'Cadastro de Bloqueio de Contratante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 473
  end
  inherited PanelRigth: TPanel
    Left = 561
    Height = 473
  end
  inherited PanelCenter: TPanel
    Width = 551
    Height = 473
    inherited PanelBotton: TPanel
      Top = 432
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
        Width = 91
        Height = 13
        Caption = 'C'#243'digo Contratante'
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
        Width = 86
        Height = 13
        Caption = 'Nome Contratante'
        FocusControl = DBEdit2
      end
      object DBEdit2: TDBEdit
        Left = 0
        Top = 32
        Width = 134
        Height = 21
        DataField = 'cd_contratante'
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
        DataField = 'dt_fim_bloqueio'
        DataSource = DataSource1
        TabOrder = 2
      end
      object EditNmContratante: TEdit
        Left = 144
        Top = 32
        Width = 353
        Height = 21
        Color = cl3DLight
        TabOrder = 3
      end
      object EditNmInclusao: TEdit
        Left = 0
        Top = 120
        Width = 129
        Height = 21
        Color = cl3DLight
        TabOrder = 4
      end
      object EditNmDesbloqueio: TEdit
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
      Height = 270
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_contratante'
          Title.Caption = 'C'#243'd contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_contratante'
          Title.Caption = 'Nome Contratante'
          Width = 214
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ini_bloqueio'
          Title.Caption = 'In'#237'cio Bloqueio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_bloqueio'
          Title.Caption = 'Fim Bloqueio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usuario_inclusao'
          Title.Caption = 'C'#243'd Usu Inclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usuario_desbloqueio'
          Title.Caption = 'C'#243'd Usu Desbloqueio'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryBloqueio
  end
  object ADOQueryBloqueio: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQueryBloqueioBeforePost
    AfterPost = ADOQueryBloqueioAfterPost
    AfterScroll = ADOQueryBloqueioAfterScroll
    OnNewRecord = ADOQueryBloqueioNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select c.nome as nm_contratante, b.* from bloqueio_contratante b' +
        ', contratante c where c.codigo = b.cd_contratante'
      ''
      'order by b.dt_fim_bloqueio, c.nome'
      '')
    Left = 322
    Top = 208
    object ADOQueryBloqueionm_contratante: TStringField
      FieldName = 'nm_contratante'
      Size = 50
    end
    object ADOQueryBloqueiocd_contratante: TIntegerField
      FieldName = 'cd_contratante'
    end
    object ADOQueryBloqueiodt_ini_bloqueio: TDateTimeField
      FieldName = 'dt_ini_bloqueio'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOQueryBloqueiodt_fim_bloqueio: TDateTimeField
      FieldName = 'dt_fim_bloqueio'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOQueryBloqueiocd_usuario_inclusao: TIntegerField
      FieldName = 'cd_usuario_inclusao'
    end
    object ADOQueryBloqueiocd_usuario_desbloqueio: TIntegerField
      FieldName = 'cd_usuario_desbloqueio'
    end
  end
end
