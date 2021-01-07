inherited FmServCoincidentes: TFmServCoincidentes
  Height = 391
  Caption = 'Servi'#231'os coincidentes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 357
  end
  inherited PanelRigth: TPanel
    Height = 357
  end
  inherited PanelCenter: TPanel
    Height = 357
    inherited PanelBotton: TPanel
      Top = 316
    end
    inherited PanelTop: TPanel
      Height = 41
      inherited Bevel1: TBevel
        Top = 31
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 41
      Height = 275
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'DT_APROVACAO'
          Title.Caption = 'Dt Aprov'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_DIGITACAO'
          Title.Caption = 'Dt Digit'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'Or'#231'amento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'd Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENTEFACE'
          Title.Caption = 'Dente X Face'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Dentista'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_GRUPO'
          Title.Caption = 'Grupo Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXANTE'
          Title.Caption = 'Sexante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARCADA'
          Title.Caption = 'Arcada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HEMIARCO'
          Title.Caption = 'Hemiarco'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'CONVERT(CHAR(10),O.DATA_CONFERENCIA,103) DT_APROVACAO,'
      #9'CONVERT(CHAR(10),O.DATA,103) DT_DIGITACAO,'
      #9'O.NUMERO,'
      #9'D.NOME,'
      #9'S.CD_GRUPO,'
      #9'S.CODIGO,'
      #9'S.DESCRICAO,'
      #9'I.DENTEFACE,'
      #9'I.HEMIARCO,'
      #9'I.SEXANTE,'
      #9'I.ARCADA'
      'FROM '
      #9'SERVICOS S,         '
      #9'ORCAMENTO O, '
      #9'ITENS_ORCAMENTO I,'
      '        DENTISTA D'
      ''
      ''
      'WHERE '
      #9'    I.ORCAMENTO = O.NUMERO '
      #9'AND S.CODIGO = I.SERVICO'
      '        AND S.CD_GRUPO ='
      '        1'
      '        AND I.STATUS = '#39'A'#39
      '        AND O.USUARIO ='
      '        154490'
      '        AND D.CODIGO = O.DENTISTA'
      '        and O.NUMERO <>'
      '        0'
      ''
      ' '
      'ORDER BY O.NUMERO desc'
      ''
      '--SELECT * FROM DenteXorcamento')
    Left = 394
    Top = 104
  end
end
