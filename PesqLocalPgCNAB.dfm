inherited FmPesqLocalPgCNAB: TFmPesqLocalPgCNAB
  Caption = 'Consulta local de pagamento Boleto CNAB'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PageControl1: TPageControl
      ActivePage = TbsGrid
      inherited TbsGrid: TTabSheet
        object DBGrid3: TDBGrid [0]
          Left = 0
          Top = 0
          Width = 508
          Height = 207
          Align = alClient
          DataSource = DataSource1
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'cd_liquidacao'
              Title.Caption = 'Cód Liq'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ds_liquidacao'
              Title.Caption = 'Tipo Liquidação'
              Width = 218
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtde'
              Title.Caption = 'Qtde'
              Width = 58
              Visible = True
            end>
        end
        inherited DBGrid2: TDBGrid
          DataSource = nil
          Visible = False
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 508
          Height = 207
          Align = alClient
          DataSource = DataSource1
          ParentShowHint = False
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
              FieldName = 'ds_liquidacao'
              Title.Caption = 'Tipo Liquidação'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero_titulo'
              Title.Caption = 'Título'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'desdobramento'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_baixa'
              Title.Caption = 'Dt Baixa'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_contratante'
              Title.Caption = 'Contratante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_contratante'
              Title.Caption = 'Cód Contrat'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_liquidacao'
              Title.Caption = 'Cód Liq'
              Visible = True
            end>
        end
      end
    end
    inherited PanelTop: TPanel
      object GroupBox1: TGroupBox
        Left = 4
        Top = 1
        Width = 188
        Height = 48
        Caption = '&Intervalo de datas de Baixa'
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label2: TLabel
          Left = 97
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 25
          Top = 21
          Width = 68
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnChange = MaskEditDtIniChange
        end
        object MaskEditDtFim: TMaskEdit
          Left = 110
          Top = 21
          Width = 66
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnChange = MaskEditDtIniChange
        end
      end
      object Button1: TButton
        Left = 358
        Top = 9
        Width = 77
        Height = 38
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object RadioGroup1: TRadioGroup
        Left = 198
        Top = 3
        Width = 158
        Height = 45
        Caption = 'Tipo'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Detalhado'
          'Resumido')
        TabOrder = 2
        OnClick = RadioGroup1Click
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      'select'
      #9'd.nome as nm_contratante,'
      '        d.codigo as cd_contratante,'
      '        a.numero_titulo,'
      '        a.desdobramento,'
      '        c.data_pagamento as dt_baixa,'
      '        b.cd_liquidacao,'
      '        b.ds_liquidacao'
      '        '
      'from '
      #9'receber_formaLiqCNAB a, '
      #9'FormaLiqCNAB240 b,'
      #9'receber c, '
      #9'contratante d'
      ''
      'where '
      #9'  a.cd_liquidacao = b.cd_liquidacao'
      '      and a.numero_titulo = c.numero_titulo'
      '      and a.desdobramento = c.desdobramento'
      '      and c.codigo_contratante = d.codigo'
      
        '      and c.data_pagamento between '#39'01/01/1970'#39' and '#39'01/01/2007 ' +
        '23:59'#39
      ''
      'order by a.cd_liquidacao '
      '')
  end
  object QueryResumido: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      '        b.cd_liquidacao,'
      '        b.ds_liquidacao,'
      '        count(*) as qtde'
      '        '
      'from '
      #9'receber_formaLiqCNAB a, '
      #9'FormaLiqCNAB240 b,'
      #9'receber c'
      ''
      ''
      'where '
      #9'  a.cd_liquidacao = b.cd_liquidacao'
      '      and a.numero_titulo = c.numero_titulo'
      '      and a.desdobramento = c.desdobramento'
      '     and c.data_pagamento between '#39'01/01/1970'#39' and '#39'01/01/2007'#39
      ''
      'group by'
      '        b.cd_liquidacao,'
      '        b.ds_liquidacao'
      ''
      'order by b.cd_liquidacao ')
    Left = 418
    Top = 152
  end
end
