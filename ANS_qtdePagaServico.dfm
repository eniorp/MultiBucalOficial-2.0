inherited FmAnsListaQtPaga: TFmAnsListaQtPaga
  Left = 297
  Top = 82
  Width = 546
  Height = 494
  Caption = 'ANS - Lista qtde paga de um determinado servi'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 455
  end
  inherited PanelRigth: TPanel
    Left = 520
    Height = 455
  end
  inherited PanelCenter: TPanel
    Width = 510
    Height = 455
    inherited PageControl1: TPageControl
      Top = 169
      Width = 510
      Height = 245
      inherited TbsGrid: TTabSheet
        inherited DBGrid2: TDBGrid
          Width = 502
          Height = 214
          DataSource = nil
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 502
          Height = 214
          Align = alClient
          DataSource = DataSource1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'numero'
              Title.Caption = 'Or'#231'amento'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MesAno'
              Title.Caption = 'Per'#237'odo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo_completo'
              Title.Caption = 'C'#243'digo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Usu'#225'rio'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'servico'
              Title.Caption = 'Servi'#231'o'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantidade'
              Title.Caption = 'Qt Paga'
              Width = 51
              Visible = True
            end>
        end
        object Memo1: TMemo
          Left = 336
          Top = 72
          Width = 185
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 2
        end
      end
      inherited Texto: TTabSheet
        inherited RichEdit1: TRichEdit
          Width = 502
          Height = 214
        end
      end
    end
    inherited PanelBotton: TPanel
      Top = 414
      Width = 510
      object Label7: TLabel [1]
        Left = 13
        Top = 12
        Width = 61
        Height = 13
        Caption = 'Qtde Paga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 254
      end
    end
    inherited PanelTop: TPanel
      Width = 510
      Height = 169
      inherited Bevel1: TBevel
        Top = 159
        Width = 510
      end
      object Label1: TLabel
        Left = 7
        Top = 6
        Width = 253
        Height = 13
        Caption = 'Servi'#231'os(para informar mais de um separe por v'#237'rgula)'
      end
      object Label2: TLabel
        Left = 241
        Top = 52
        Width = 56
        Height = 13
        Caption = 'Ordenar por'
      end
      object EditServicos: TEdit
        Left = 7
        Top = 22
        Width = 399
        Height = 21
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 46
        Width = 225
        Height = 51
        Caption = '&Intervalo de datas'
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label4: TLabel
          Left = 114
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 25
          Top = 21
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 127
          Top = 20
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object ComboBox2: TComboBox
        Left = 237
        Top = 68
        Width = 168
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboBox2Change
        Items.Strings = (
          'Nome'
          'Per'#237'odo Pagamento'
          'Servi'#231'o')
      end
      object BitBtn1: TBitBtn
        Left = 413
        Top = 11
        Width = 91
        Height = 78
        Caption = 'Pesquisar'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 100
        Width = 179
        Height = 56
        Caption = 'Delimitar Idade'
        TabOrder = 4
        object Label8: TLabel
          Left = 150
          Top = 26
          Width = 23
          Height = 13
          Caption = 'anos'
        end
        object ComboBoxIdade: TComboBox
          Left = 8
          Top = 24
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            ''
            'Maior ou igual a'
            'Menor que')
        end
        object EditIdade: TEdit
          Left = 113
          Top = 23
          Width = 31
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      ''
      'select'
      #9'o.numero,'
      #9'MesAno,'
      #9'u.codigo_completo,'
      #9'u.nome,'
      '        i.servico,'
      '        i.quantidade'
      ''
      'from'
      #9'usuario u,'
      #9'orcamento o ,'
      #9'Itens_PagDentista i'
      ''
      'where'
      #9'  u.codigo_completo = o.usuario'
      '      and i.orcamento = o.numero'
      '      and i.servico in ('
      '      4110,4120,4130,4210'
      '      )'
      '      and convert (datetime,'#39'01/'#39' + MesAno,103) between'
      '      '#39'01/01/2007'#39' and '#39'31/07/2007'#39
      '      and Quantidade_Paga > 0 and substring(MesAno,3,1) = '#39'/'#39
      ''
      ''
      'order by  MesAno,u.nome, u.codigo_completo'
      ''
      ''
      ' '
      ' '
      '')
  end
  object QueryQt: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy'
      ''
      'select '
      '        sum(i.quantidade) as qtde'
      ''
      'from '
      #9'usuario u, '
      #9'orcamento o ,'
      #9'Itens_PagDentista i'
      ''
      'where '
      #9'  u.codigo_completo = o.usuario'
      '      and i.orcamento = o.numero'
      '      and i.servico in ('
      '      4110,4120,4130,4210'
      '      )'
      '      and convert (datetime,'#39'01/'#39' + MesAno,103) between'
      '      '#39'01/01/2007'#39' and '#39'31/07/2007'#39
      '      and Quantidade_Paga > 0 and substring(MesAno,3,1) = '#39'/'#39
      '')
    Left = 162
    Top = 264
  end
end
