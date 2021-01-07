inherited FmDetalheFat: TFmDetalheFat
  Width = 703
  Height = 533
  Caption = 'Detalhe Controle Faturamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 499
  end
  inherited PanelRigth: TPanel
    Left = 685
    Height = 499
  end
  inherited PanelCenter: TPanel
    Width = 675
    Height = 499
    inherited PanelBotton: TPanel
      Top = 458
      Width = 675
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      inherited Panel1: TPanel
        Left = 583
      end
    end
    inherited PanelTop: TPanel
      Width = 675
      Height = 27
      inherited Bevel1: TBevel
        Top = 17
        Width = 675
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 27
      Width = 675
      Height = 431
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'numero_titulo'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'desdobramento'
          Title.Caption = 'DESD'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_documento'
          Title.Caption = 'Tipo'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_contratante'
          Title.Caption = 'Contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_contrat'
          Title.Caption = 'Nome Contratante'
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vencto'
          Title.Caption = 'Vencto'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_cobranca'
          Title.Caption = 'Tipo Cobran'#231'a'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_tp_doc'
          Title.Caption = 'Descri'#231#227'o Tipo'
          Width = 150
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryPeriodoFat
  end
  object ADOQueryPeriodoFat: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      #9'f.numero_titulo,'
      #9'f.desdobramento, '
      '    f.tipo_documento,'
      #9't.descricao as ds_tp_doc, '
      '    f.codigo_contratante,'
      '    c.nome as nm_contrat,'
      '    convert(char(10),data_vencimento,103) vencto,'
      '    str(f.valor,10,2) valor,'
      '    f.tipo_cobranca'
      '    '
      ''
      'from '
      ''
      'Faturamento f'
      'left join contratante c'
      'on c.codigo = f.codigo_contratante '
      'left join TipoDocumento t'
      'on t.codigo = f.tipo_documento'
      ''
      'where seq_periodo_fat = '
      '24'
      'and 1 = 1')
    Left = 336
    Top = 200
  end
end
