inherited FmQtdeOrcamentoStatus: TFmQtdeOrcamentoStatus
  Width = 547
  Height = 395
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Mostra a qtde de Orçamento por status em um determinado período'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 368
  end
  inherited PanelRigth: TPanel
    Left = 529
    Height = 368
  end
  inherited PanelCenter: TPanel
    Width = 519
    Height = 368
    inherited PageControl1: TPageControl
      Top = 88
      Width = 519
      Height = 239
      inherited TbsGrid: TTabSheet
        inherited DBGrid2: TDBGrid
          Width = 511
          Height = 208
        end
      end
      inherited Texto: TTabSheet
        inherited RichEdit1: TRichEdit
          Width = 511
          Height = 208
        end
      end
    end
    inherited PanelBotton: TPanel
      Top = 327
      Width = 519
      object Label3: TLabel [1]
        Left = 112
        Top = 16
        Width = 3
        Height = 13
      end
      inherited Panel1: TPanel
        Left = 263
      end
    end
    inherited PanelTop: TPanel
      Width = 519
      Height = 88
      inherited Bevel1: TBevel
        Top = 78
        Width = 519
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 1
        Width = 146
        Height = 76
        Caption = '&Intervalo de datas'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label2: TLabel
          Left = 15
          Top = 49
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 31
          Top = 22
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 31
          Top = 47
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object GroupBox2: TGroupBox
        Left = 153
        Top = 5
        Width = 217
        Height = 70
        Caption = 'Tipo'
        TabOrder = 1
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 26
          Width = 193
          Height = 21
          KeyField = 'Tipo'
          ListField = 'Descricao'
          ListSource = DsTpOrcamento
          TabOrder = 0
          OnClick = DBLookupComboBox1Click
        end
      end
      object Button1: TButton
        Left = 376
        Top = 12
        Width = 141
        Height = 61
        Caption = '&Pesquisar'
        Enabled = False
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      
        'set dateformat dmy select s.descricao as status, count( *) as qt' +
        'de '
      ''
      'from '
      #9'orcamento o, '
      #9'status_orcamento s '
      ''
      'where '
      '         o.status = s.codigo '
      '     and data_hora between '
      '     '#39'01/10/2005'#39' and '#39'31/12/2005 23:59'#39' '
      '     and o.tipo = '
      '     1 '
      ''
      'group by '
      '          s.descricao '
      ''
      'order by '
      '         s.descricao'
      ' ')
  end
  object DsTpOrcamento: TDataSource
    DataSet = QueryTpOrcamento
    Left = 318
    Top = 147
  end
  object QueryTpOrcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from tipoorcamento order by 2')
    Left = 422
    Top = 147
  end
end
