inherited FmCadDebCef: TFmCadDebCef
  Left = 167
  Top = 149
  Width = 543
  Height = 507
  Caption = 'Envio de cadastro de D'#233'bito Autom'#225'tcico FEBRABAN(150)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 480
  end
  inherited PanelRigth: TPanel
    Left = 525
    Height = 480
  end
  inherited PanelCenter: TPanel
    Width = 515
    Height = 480
    inherited PanelBotton: TPanel
      Top = 439
      Width = 515
      object LabelResumo: TLabel [0]
        Left = 15
        Top = 15
        Width = 3
        Height = 13
      end
      inherited Panel1: TPanel
        Left = 303
        Width = 212
        inherited BitBtnSair: TBitBtn
          Left = 129
        end
        object BitBtn2: TBitBtn
          Left = 27
          Top = 8
          Width = 96
          Height = 27
          Caption = '&Gerar Arquivo'
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 515
      Height = 129
      inherited Bevel1: TBevel
        Top = 119
        Width = 515
      end
      object GroupBox1: TGroupBox
        Left = 188
        Top = 15
        Width = 230
        Height = 51
        Caption = '&Intervalo de datas de Inclus'#227'o'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label2: TLabel
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
          OnChange = DBLCBancoClick
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
          OnChange = DBLCBancoClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 15
        Width = 165
        Height = 51
        TabOrder = 0
        object DBLCBanco: TDBLookupComboBox
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          KeyField = 'Banco'
          ListField = 'Nome_Banco'
          ListSource = DsBanco
          TabOrder = 0
          OnClick = DBLCBancoClick
        end
        object CheckBoxSelBanco: TCheckBox
          Left = 8
          Top = 0
          Width = 106
          Height = 17
          Caption = 'Selecionar Banco'
          TabOrder = 1
          OnClick = CheckBoxSelBancoClick
        end
      end
      object BitBtn1: TBitBtn
        Left = 423
        Top = 19
        Width = 81
        Height = 44
        Caption = '&Pesquisar'
        TabOrder = 4
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object GroupBox3: TGroupBox
        Left = 188
        Top = 69
        Width = 230
        Height = 51
        Caption = 'Verificar pagto da mensalidade '
        TabOrder = 3
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
        object MaskEditPgIni: TMaskEdit
          Left = 25
          Top = 21
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnChange = DBLCBancoClick
        end
        object MaskEditPgFim: TMaskEdit
          Left = 127
          Top = 20
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnChange = DBLCBancoClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 68
        Width = 165
        Height = 51
        Caption = 'Classifica'#231#227'o(ordena'#231#227'o)'
        TabOrder = 1
        object ComboBoxClass: TComboBox
          Left = 8
          Top = 22
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 3
          TabOrder = 0
          Text = 'Vendedor'
          Items.Strings = (
            'Banco'
            'Inclus'#227'o'
            'Contratante'
            'Vendedor')
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 129
      Width = 515
      Height = 310
      Columns = <
        item
          Expanded = False
          FieldName = 'vendedor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pg'
          Title.Alignment = taCenter
          Title.Caption = 'PG?'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'banco'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inclusao'
          Title.Caption = 'Inclus'#227'o'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'digito'
          Title.Caption = 'D'#237'gito'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'digito'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'forma_cobranca'
          Title.Caption = 'Forma Cobr'
          Visible = True
        end>
    end
  end
  object QueryBanco: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from contas_banco order by nome_banco')
    Left = 170
    Top = 152
  end
  object DsBanco: TDataSource
    DataSet = QueryBanco
    Left = 226
    Top = 176
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'C:\Debitos\Retorno'
    Left = 316
    Top = 157
  end
  object Querytmp: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'set dateformat dmy select v.nome vendedor, convert(char(10),c.in' +
        'clusao,103) as inclusao, c.codigo,c.nome,c.banco,c.agencia,c.con' +
        'ta,c.digito,'#39'N'#39' pg'
      ''
      
        'from contratante c inner join tipocobranca t on c.forma_cobranca' +
        ' = t.codigo left join vendedor v on v.codigo = c.vendedor where ' +
        't.eh_banco =1 and t.debAutomatico = 1 and t.ativo = 1 and inclus' +
        'ao between'
      #39'01/01/2007'#39
      'and'
      #39'10/01/2008'#39
      ''
      'and banco = 104'
      'order by c.nome'
      '')
    Left = 162
    Top = 280
  end
end
