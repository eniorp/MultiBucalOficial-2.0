inherited FmScripts: TFmScripts
  Left = 68
  Top = 106
  Width = 629
  Height = 414
  Caption = 'Scripts de gera'#231#227'o de relat'#243'rios din'#226'micos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 380
  end
  inherited PanelRigth: TPanel
    Left = 611
    Height = 380
  end
  inherited PanelCenter: TPanel
    Width = 601
    Height = 380
    inherited PanelBotton: TPanel
      Top = 192
      Width = 601
      Height = 188
      inherited Panel1: TPanel
        Left = 0
        Top = 154
        Width = 601
        Height = 34
        Align = alTop
        inherited BitBtnSair: TBitBtn
          Left = 520
          Top = 6
        end
        object Button2: TButton
          Left = 198
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Incluir Script'
          TabOrder = 1
          OnClick = Button2Click
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 0
          Width = 189
          Height = 34
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
          Align = alLeft
          Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object Button3: TButton
          Tag = 1
          Left = 278
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Alterar Script'
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 363
          Top = 6
          Width = 75
          Height = 25
          Hint = 
            'Clique aqui para criar um atalho para este script no  Menu Din'#226'm' +
            'ico'
          Caption = '&Criar Menu'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = Button4Click
        end
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 28
        Width = 601
        Height = 126
        Align = alTop
        DataField = 'script'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 3000
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Bevel2: TBevel
          Left = 0
          Top = 22
          Width = 601
          Height = 6
          Align = alBottom
          Shape = bsTopLine
        end
        object Label1: TLabel
          Left = 4
          Top = 7
          Width = 45
          Height = 13
          Caption = '&Comando'
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 601
      Height = 57
      inherited Bevel1: TBevel
        Top = 47
        Width = 601
      end
      object Label2: TLabel
        Left = 5
        Top = 5
        Width = 278
        Height = 13
        Caption = 'Pesquisar script, informe uma palavra que deseja encontrar'
      end
      object Edit1: TEdit
        Left = 4
        Top = 21
        Width = 353
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 362
        Top = 18
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 57
      Width = 601
      Height = 135
      Hint = 
        'D'#234' um duplo clique para incluir os script na tela de "Executa co' +
        'mando/Lista tabelas"'
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_script'
          Title.Caption = 'C'#243'digo'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_script'
          Title.Caption = 'Descri'#231#227'o'
          Width = 397
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtCriacao'
          Title.Caption = 'Inclus'#227'o'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtalteracao'
          Title.Caption = 'Altera'#231#227'o'
          Width = 73
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    BeforePost = Query1BeforePost
    AfterPost = Query1AfterPost
    AfterScroll = Query1AfterScroll
    SQL.Strings = (
      'select * from script'
      'where cd_script = 0'
      'order by cd_script')
    Left = 218
    Top = 136
  end
  inherited DataSource1: TDataSource
    Top = 136
  end
end
