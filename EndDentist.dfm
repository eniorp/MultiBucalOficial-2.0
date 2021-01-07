inherited FmEndDentist: TFmEndDentist
  Left = 163
  Top = 117
  Width = 735
  Height = 286
  Caption = 'Endere'#231'os Dentista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 252
  end
  inherited PanelRigth: TPanel
    Left = 717
    Height = 252
  end
  inherited PanelCenter: TPanel
    Width = 707
    Height = 252
    inherited PanelBotton: TPanel
      Top = 215
      Width = 707
      Height = 37
      inherited Panel1: TPanel
        Left = 615
        Height = 37
      end
    end
    inherited PanelTop: TPanel
      Width = 707
      Height = 25
      inherited Bevel1: TBevel
        Top = 15
        Width = 707
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 25
      Width = 707
      Height = 190
      Font.Color = clNavy
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      Columns = <
        item
          Expanded = False
          FieldName = 'ds_endereco'
          Title.Caption = 'Descri'#231#227'o Endere'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hr_ini_atend'
          Title.Caption = 'In'#237'cio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hr_fim_atend'
          Title.Caption = 'Fim'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seg'
          Title.Caption = 'Seg'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ter'
          Title.Caption = 'Ter'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qua'
          Title.Caption = 'Qua'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qui'
          Title.Caption = 'Qui'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sex'
          Title.Caption = 'Sex'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sab'
          Title.Caption = 'S'#225'b'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fone1'
          Title.Caption = 'Fone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_cidade'
          Title.Caption = 'Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_bairro'
          Title.Caption = 'Bairro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'logradouro'
          Title.Caption = 'Logradouro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select '
      '   case e.seg when 1 then '#39'X'#39' end seg,'
      '   case e.ter when 1 then '#39'X'#39' end ter,'
      '   case e.qua when 1 then '#39'X'#39' end qua,'
      '   case e.qui when 1 then '#39'X'#39' end qui,'
      '   case e.sex when 1 then '#39'X'#39' end sex,'
      '   case e.sab when 1 then '#39'X'#39' end sab,'
      '   e.*, '
      '   c.ds_cidade , b.ds_bairro'
      'from '
      'endereco_x_dentista e'
      'left join cidade c'
      'on c.cd_cidade = e.cd_cidade '
      'left join bairro b on b.cd_bairro = e.cd_bairro'
      'where cd_dentista  ='
      '613'
      ''
      'order by ds_endereco')
    Left = 218
    Top = 120
  end
  inherited DataSource1: TDataSource
    Left = 154
    Top = 104
  end
end
