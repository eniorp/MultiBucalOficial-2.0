object FormObservacoesProteticos: TFormObservacoesProteticos
  Left = 192
  Top = 238
  Width = 354
  Height = 179
  BorderIcons = [biSystemMenu]
  Caption = 'Observações Protéticos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemoObservacoes: TDBMemo
    Left = 0
    Top = 0
    Width = 346
    Height = 152
    Align = alClient
    DataField = 'Observacao'
    DataSource = DataSourceObservacoes
    TabOrder = 0
  end
  object QueryObservacoes: TQuery
    AfterInsert = QueryObservacoesAfterInsert
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from ObservacoesPagProtetico'
      'where Orcamento = :Numero_Orcamento'
      'and Protetico = :Protetico')
    Left = 18
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Protetico'
        ParamType = ptInput
      end>
    object QueryObservacoesOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Observacoes_Orcamento.Orcamento'
    end
    object QueryObservacoesProtetico: TIntegerField
      FieldName = 'Protetico'
      Origin = 'MULTI.ObservacoesPagProtetico.Protetico'
    end
    object QueryObservacoesObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'MULTI.ObservacoesPagProtetico.Observacao'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DataSourceObservacoes: TDataSource
    DataSet = QueryObservacoes
    Left = 44
    Top = 18
  end
end
