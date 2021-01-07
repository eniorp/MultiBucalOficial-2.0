inherited FmCadDescPlano: TFmCadDescPlano
  Left = 248
  Height = 553
  Caption = 'Cadastro de Desconto '
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 526
  end
  inherited PanelRigth: TPanel
    Height = 526
  end
  inherited PanelCenter: TPanel
    Height = 526
    inherited PanelBotton: TPanel
      Top = 485
    end
    inherited PanelTop: TPanel
      Height = 177
      inherited Bevel1: TBevel
        Top = 167
      end
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Plano'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 96
        Height = 13
        Caption = 'Data In'#237'cio vig'#234'ncia'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 135
        Top = 64
        Width = 85
        Height = 13
        Caption = 'Data Fim vig'#234'ncia'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 264
        Top = 64
        Width = 57
        Height = 13
        Caption = 'Qtde Meses'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 382
        Top = 64
        Width = 115
        Height = 13
        Caption = 'Percentual de Desconto'
        FocusControl = DBEdit7
      end
      object Label2: TLabel
        Left = 448
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit2
      end
      object Label1: TLabel
        Left = 103
        Top = 15
        Width = 27
        Height = 13
        Caption = 'Plano'
        FocusControl = DBEdit3
      end
      object Bevel2: TBevel
        Left = 0
        Top = 128
        Width = 516
        Height = 39
        Align = alBottom
        Shape = bsTopLine
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        DataField = 'cd_plano'
        DataSource = DataSource2
        TabOrder = 0
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 80
        Width = 100
        Height = 21
        DataField = 'dt_ini_vigencia'
        DataSource = DataSource2
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 135
        Top = 80
        Width = 100
        Height = 21
        DataField = 'dt_fim_vigencia'
        DataSource = DataSource2
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 263
        Top = 80
        Width = 65
        Height = 21
        DataField = 'qt_meses'
        DataSource = DataSource2
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 382
        Top = 80
        Width = 121
        Height = 21
        DataField = 'percent_desconto'
        DataSource = DataSource2
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 444
        Top = 32
        Width = 59
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'id_promocao'
        DataSource = DataSource2
        ReadOnly = True
        TabOrder = 5
      end
      object EditNmPlano: TEdit
        Left = 103
        Top = 31
        Width = 330
        Height = 21
        TabStop = False
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 6
      end
      object BitBtnPesquisaClinica: TBitBtn
        Left = 77
        Top = 32
        Width = 23
        Height = 21
        Hint = 'Pesquisa de Plano'
        TabOrder = 7
        OnClick = BitBtnPesquisaClinicaClick
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
      object DBNavigator1: TDBNavigator
        Left = 5
        Top = 135
        Width = 272
        Height = 29
        DataSource = DataSource2
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
        TabOrder = 8
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 177
      Height = 308
      DataSource = DataSource2
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_plano'
          Title.Caption = 'Plano'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_ini_vigencia'
          Title.Caption = 'In'#237'cio'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_vigencia'
          Title.Caption = 'Fim'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_meses'
          Title.Caption = 'Qt Meses'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'percent_desconto'
          Title.Caption = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_promocao'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    Left = 434
    Top = 232
  end
  inherited DataSource1: TDataSource
    Left = 522
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select b.Descricao, a.* from PromocaoPlano a, plano b where a.cd' +
        '_plano = b.Codigo order by b.Descricao')
    Left = 434
    Top = 112
    object ADOQuery1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object ADOQuery1id_promocao: TIntegerField
      FieldName = 'id_promocao'
    end
    object ADOQuery1cd_plano: TIntegerField
      FieldName = 'cd_plano'
    end
    object ADOQuery1dt_ini_vigencia: TDateTimeField
      FieldName = 'dt_ini_vigencia'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOQuery1dt_fim_vigencia: TDateTimeField
      FieldName = 'dt_fim_vigencia'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOQuery1qt_meses: TIntegerField
      FieldName = 'qt_meses'
    end
    object ADOQuery1percent_desconto: TBCDField
      FieldName = 'percent_desconto'
      Precision = 5
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 392
    Top = 232
  end
end
