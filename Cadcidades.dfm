inherited FmCadCidade: TFmCadCidade
  Width = 668
  Height = 428
  Caption = 'Cadastro de Cidades'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 390
  end
  inherited PanelRigth: TPanel
    Left = 642
    Height = 390
  end
  inherited PanelCenter: TPanel
    Width = 632
    Height = 390
    inherited PanelBotton: TPanel
      Top = 349
      Width = 632
      TabOrder = 2
      inherited Panel1: TPanel
        Left = 540
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 265
        Height = 41
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alLeft
        Flat = True
        TabOrder = 1
      end
      object Button1: TButton
        Left = 304
        Top = 6
        Width = 74
        Height = 27
        Caption = 'Regi'#227'o'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel
      Width = 632
      Caption = 'CADASTRO DE CIDADES'
      Font.Color = clNavy
      Font.Height = -16
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      inherited Bevel1: TBevel
        Width = 632
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 632
      Height = 287
      TabOrder = 0
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_cidade'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_cidade'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Regiao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_ibge'
          Title.Caption = 'C'#211'D IBGE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_cidade'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ds_cidade'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'uf'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_regiao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_ibge'
          Visible = False
        end>
    end
  end
  inherited Query1: TQuery
    BeforePost = Query1BeforePost
    RequestLive = True
    SQL.Strings = (
      'select * from cidade order by ds_cidade')
    object Query1cd_cidade: TSmallintField
      FieldName = 'cd_cidade'
      Origin = 'MULTI.cidade.cd_cidade'
    end
    object Query1ds_cidade: TStringField
      FieldName = 'ds_cidade'
      Origin = 'MULTI.cidade.ds_cidade'
      Size = 40
    end
    object Query1uf: TStringField
      FieldName = 'uf'
      Origin = 'MULTI.cidade.uf'
      FixedChar = True
      Size = 2
    end
    object Query1cd_ibge: TIntegerField
      FieldName = 'cd_ibge'
      Origin = 'MULTI.cidade.cd_ibge'
    end
    object Query1cd_regiao: TSmallintField
      FieldName = 'cd_regiao'
      Origin = 'MULTI.cidade.cd_regiao'
    end
    object Query1Regiao: TStringField
      FieldKind = fkLookup
      FieldName = 'Regiao'
      LookupDataSet = Query2
      LookupKeyFields = 'cd_regiao'
      LookupResultField = 'ds_regiao'
      KeyFields = 'cd_regiao'
      Size = 30
      Lookup = True
    end
  end
  object DataSource2: TDataSource
    Left = 306
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from regiao order by 2')
    Left = 386
    Top = 152
  end
end
