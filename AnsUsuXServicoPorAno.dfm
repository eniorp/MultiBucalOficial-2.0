inherited FmANSUsuXServPorAno: TFmANSUsuXServPorAno
  Left = 131
  Top = 130
  Width = 547
  Height = 504
  Caption = 
    'ANS - Lista Usu'#225'rios que realizaram determ. Servi'#231'o 1'#170' Vez no An' +
    'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 465
  end
  inherited PanelRigth: TPanel
    Left = 521
    Height = 465
  end
  inherited PanelCenter: TPanel
    Width = 511
    Height = 465
    inherited PageControl1: TPageControl
      Top = 141
      Width = 511
      Height = 283
      inherited TbsGrid: TTabSheet
        inherited DBGrid2: TDBGrid
          Width = 503
          Height = 252
          Columns = <
            item
              Expanded = False
              FieldName = 'orcamento'
              Title.Caption = 'Orcamento'
              Width = 59
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
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Usu'#225'rio'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtnasc'
              Title.Caption = 'Dt Nasc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Idade'
              Width = 31
              Visible = True
            end>
        end
      end
      inherited Texto: TTabSheet
        inherited RichEdit1: TRichEdit
          Width = 503
          Height = 252
        end
      end
    end
    inherited PanelBotton: TPanel
      Top = 424
      Width = 511
      object Label7: TLabel [1]
        Left = 109
        Top = 12
        Width = 85
        Height = 13
        Caption = 'Qtde Registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 255
      end
    end
    inherited PanelTop: TPanel
      Width = 511
      Height = 141
      inherited Bevel1: TBevel
        Top = 131
        Width = 511
      end
      object Label1: TLabel
        Left = 7
        Top = 6
        Width = 253
        Height = 13
        Caption = 'Servi'#231'os(para informar mais de um separe por v'#237'rgula)'
      end
      object Label8: TLabel
        Left = 8
        Top = 107
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
        OnKeyPress = EditServicosKeyPress
      end
      object GroupBox1: TGroupBox
        Left = 229
        Top = 46
        Width = 179
        Height = 56
        Caption = 'Delimitar Idade'
        TabOrder = 2
        object Label2: TLabel
          Left = 150
          Top = 26
          Width = 23
          Height = 13
          Caption = 'anos'
        end
        object ComboBox2: TComboBox
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
          OnKeyPress = EditServicosKeyPress
        end
      end
      object BitBtn1: TBitBtn
        Left = 419
        Top = 21
        Width = 91
        Height = 78
        Caption = 'Pesquisar'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 47
        Width = 216
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
      object ComboBox3: TComboBox
        Left = 70
        Top = 105
        Width = 168
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        OnChange = ComboBox3Change
        Items.Strings = (
          'Nome'
          'Per'#237'odo Pagamento')
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      'select '
      #9'min(o.numero) as orcamento, '
      #9'min(MesAno) as MesAno, '
      #9'u.codigo_completo, '
      #9'u.nome,'
      #9'convert(char(10),data_nascimento,103) as dtnasc,'
      
        '        floor(datediff(day,data_nascimento,convert (datetime,'#39'01' +
        '/'#39' + MesAno,103)) / 365.23) Idade'
      'from '
      #9'usuario u, '
      #9'orcamento o ,'
      #9'Itens_PagDentista i'
      ''
      'where '
      #9'  u.codigo_completo = o.usuario'
      '      and i.orcamento = o.numero and i.mesano <> '#39#39
      '      and i.servico in ('
      '      5110,2110'
      '      ) and convert (datetime,'#39'01/'#39' + MesAno,103) between'
      '      '#39'01/01/2007'#39' and '#39'31/07/2007'#39
      '      and Quantidade_Paga > 0 and substring(MesAno,3,1) = '#39'/'#39
      
        '      and data_nascimento <= dateadd(year,-15,convert (datetime,' +
        #39'01/'#39' + MesAno,103))'
      ''
      ' and not exists'
      
        ' ( select i1.MesAno, i1.orcamento,o1.numero,i1.servico,i1.quanti' +
        'dade_paga,o1.usuario from'
      ' '#9'orcamento o1 ,'
      ' '#9'Itens_PagDentista i1'
      '  where'
      ''
      '           i1.orcamento = o1.numero'
      '       and i1.servico in ('
      '       5110,2110'
      
        '       ) and i1.Quantidade_Paga > 0 and substring(i1.MesAno,3,1)' +
        ' = '#39'/'#39
      '       and o1.usuario = u.codigo_completo'
      '       and convert (datetime,'#39'01/'#39' + i1.MesAno,103) between'
      '       '#39'01/01/2007'#39' and'
      '       dateadd(day,-1,'
      '       '#39'30/06/2007'#39
      '       ))'
      ''
      ''
      'group by '
      #9'u.codigo_completo, '
      #9'u.nome,convert(char(10),data_nascimento,103),'
      
        '        floor(datediff(day,data_nascimento,convert (datetime,'#39'01' +
        '/'#39' + MesAno,103)) / 365.23)'
      ''
      'order by u.nome, u.codigo_completo, MesAno'
      '')
  end
end
