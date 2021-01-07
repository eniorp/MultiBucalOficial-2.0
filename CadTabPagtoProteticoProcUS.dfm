inherited FmCadtabPagProteticoProcUS: TFmCadtabPagProteticoProcUS
  Width = 784
  Height = 520
  Caption = 'Cadastro de tabela de pagamento de Prot'#233'tico X US'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 481
  end
  inherited PanelRigth: TPanel
    Left = 758
    Height = 481
  end
  inherited PanelCenter: TPanel
    Width = 748
    Height = 481
    inherited PanelBotton: TPanel
      Top = 440
      Width = 748
      inherited Panel1: TPanel
        Left = 656
      end
    end
    inherited PanelTop: TPanel
      Width = 748
      inherited Bevel1: TBevel
        Width = 748
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 748
      Height = 378
    end
  end
  object Panel2: TPanel [3]
    Left = 10
    Top = 0
    Width = 748
    Height = 481
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Panel3: TPanel
      Left = 0
      Top = 440
      Width = 748
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 656
        Top = 0
        Width = 92
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 9
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Kind = bkClose
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 748
      Height = 142
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel2: TBevel
        Left = 0
        Top = 132
        Width = 748
        Height = 10
        Align = alBottom
        Shape = bsTopLine
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
        DataSource = DataSource2
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 168
        Top = 20
        Width = 104
        Height = 21
        DataField = 'dtIni'
        DataSource = DataSource2
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 280
        Top = 20
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'dtFim'
        DataSource = DataSource2
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 17
        Top = 100
        Width = 121
        Height = 21
        DataField = 'vrUS'
        DataSource = DataSource2
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 151
        Top = 94
        Width = 240
        Height = 25
        DataSource = DataSource2
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 17
        Top = 60
        Width = 130
        Height = 21
        DataField = 'cd_procedimento'
        DataSource = DataSource2
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
    object DBGrid2: TDBGrid
      Left = 0
      Top = 142
      Width = 748
      Height = 298
      Align = alClient
      DataSource = DataSource2
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'indice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_protetico'
          Title.Caption = 'Protetico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_procedimento'
          Title.Caption = 'Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vrUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtIni'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtFim'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Visible = True
        end>
    end
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
      
        ' select t.*, s.Descricao from TabPagProteticoXProcedimento t, se' +
        'rvicos s where s.Codigo = t.cd_procedimento and cd_protetico ='
      '0')
    Left = 242
    Top = 128
    object ADOQuery1indice: TIntegerField
      FieldName = 'indice'
    end
    object ADOQuery1cd_protetico: TIntegerField
      FieldName = 'cd_protetico'
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
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 82
    Top = 208
  end
end
