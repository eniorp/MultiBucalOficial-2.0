inherited FmCadPacotes: TFmCadPacotes
  Left = 102
  Top = 124
  Caption = 'Cadastro de Pacotes de Servi;o do Odontograma'
  KeyPreview = False
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelBotton: TPanel
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 249
        Height = 41
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alLeft
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Height = 97
      OnExit = PanelTopExit
      inherited Bevel1: TBevel
        Top = 53
        Height = 24
      end
      object Label1: TLabel
        Left = 3
        Top = 7
        Width = 56
        Height = 13
        Caption = 'C'#243'd Pacote'
      end
      object Label2: TLabel
        Left = 99
        Top = 7
        Width = 185
        Height = 13
        Caption = 'Descri'#231#227'o do Pacote(Nome do pacote)'
      end
      object Label3: TLabel
        Left = 4
        Top = 63
        Width = 4
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 23
        Width = 81
        Height = 21
        Hint = 'O C'#243'digo do pacote deve ser um c'#243'digo de servi;o v'#225'lido!'
        DataField = 'cd_pacote'
        DataSource = DsPacote
        TabOrder = 0
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 23
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ds_pacote'
        DataSource = DsPacote
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object BitBtnPesquisar: TBitBtn
        Left = 430
        Top = 21
        Width = 24
        Height = 21
        Hint = 'Pesquisar pocotes ja cadastrados'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = BitBtnPesquisarClick
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
      object Panel2: TPanel
        Left = 0
        Top = 77
        Width = 508
        Height = 20
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object DBNavigator2: TDBNavigator
          Left = 0
          Top = 0
          Width = 508
          Height = 20
          DataSource = DsPacote
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alClient
          Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 97
      Height = 198
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_servico'
          Title.Caption = 'C'#243'digo do Servi'#231'o'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_servico'
          Title.Caption = 'Qtde De Servi'#231'o'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    AfterPost = Query1AfterPost
    AfterScroll = Query1AfterScroll
    OnNewRecord = Query1NewRecord
    RequestLive = True
    SQL.Strings = (
      'select * from item_pacote where cd_pacote ='
      '1')
    object Query1cd_pacote: TIntegerField
      FieldName = 'cd_pacote'
      Origin = 'MULTI.item_pacote.cd_pacote'
    end
    object Query1cd_servico: TIntegerField
      FieldName = 'cd_servico'
      Origin = 'MULTI.item_pacote.cd_servico'
      OnValidate = Query1cd_servicoValidate
    end
    object Query1qt_servico: TSmallintField
      FieldName = 'qt_servico'
      Origin = 'MULTI.item_pacote.qt_servico'
    end
  end
  object DsPacote: TDataSource
    DataSet = QueryPacote
    Left = 82
    Top = 120
  end
  object QueryPacote: TQuery
    BeforePost = QueryPacoteBeforePost
    AfterPost = QueryPacoteAfterPost
    AfterScroll = QueryPacoteAfterScroll
    OnNewRecord = QueryPacoteNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from pacote where cd_pacote ='
      '1')
    Left = 162
    Top = 120
  end
end
