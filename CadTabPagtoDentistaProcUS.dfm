inherited FmCadTabPagDentProcUS: TFmCadTabPagDentProcUS
  Left = 562
  Top = 125
  Width = 619
  Height = 464
  Caption = 'Cadastro Tabela Pagto Dentista X Proc (US)'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 425
  end
  inherited PanelRigth: TPanel
    Left = 593
    Height = 425
  end
  inherited PanelCenter: TPanel
    Width = 583
    Height = 425
    inherited PanelBotton: TPanel
      Top = 384
      Width = 583
      inherited Panel1: TPanel
        Left = 491
      end
    end
    inherited PanelTop: TPanel
      Width = 583
      Height = 142
      inherited Bevel1: TBevel
        Top = 132
        Width = 583
      end
      object Label1: TLabel
        Left = 16
        Top = 4
        Width = 28
        Height = 13
        Caption = 'indice'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 168
        Top = 4
        Width = 20
        Height = 13
        Caption = 'dtIni'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 280
        Top = 4
        Width = 25
        Height = 13
        Caption = 'dtFim'
        FocusControl = DBEdit6
      end
      object Label4: TLabel
        Left = 17
        Top = 84
        Width = 24
        Height = 13
        Caption = 'vrUS'
        FocusControl = DBEdit4
      end
      object Label2: TLabel
        Left = 17
        Top = 44
        Width = 37
        Height = 13
        Caption = 'cd Proc'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 169
        Top = 44
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 20
        Width = 134
        Height = 21
        TabStop = False
        DataField = 'indice'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 168
        Top = 20
        Width = 104
        Height = 21
        DataField = 'dtIni'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 280
        Top = 20
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'dtFim'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 17
        Top = 100
        Width = 121
        Height = 21
        DataField = 'vrUS'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 151
        Top = 94
        Width = 240
        Height = 25
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 17
        Top = 60
        Width = 130
        Height = 21
        DataField = 'cd_procedimento'
        DataSource = DataSource1
        TabOrder = 5
      end
      object Edit1: TEdit
        Left = 168
        Top = 58
        Width = 321
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 142
      Width = 583
      Height = 242
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'indice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_dentista'
          Title.Caption = 'Dentista'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_procedimento'
          Title.Caption = 'C'#243'd Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vrUS'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtIni'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtFim'
          Width = 64
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    BeforeDelete = ADOQuery1BeforeDelete
    AfterScroll = ADOQuery1AfterScroll
    OnNewRecord = ADOQuery1NewRecord
    Parameters = <>
    SQL.Strings = (
      
        ' select t.*, s.Descricao from TabPagDentistaXProcedimento t, ser' +
        'vicos s where s.Codigo = t.cd_procedimento and cd_dentista ='
      '0')
    Left = 242
    Top = 128
    object ADOQuery1indice: TIntegerField
      FieldName = 'indice'
    end
    object ADOQuery1cd_dentista: TIntegerField
      FieldName = 'cd_dentista'
    end
    object ADOQuery1cd_procedimento: TIntegerField
      FieldName = 'cd_procedimento'
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
    object ADOQuery1obs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object ADOQuery1Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 40
    end
  end
end
