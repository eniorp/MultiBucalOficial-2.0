inherited FmLogAltReceber: TFmLogAltReceber
  Width = 992
  Height = 506
  Caption = 'Consulta log de altera'#231#227'o do contas a Receber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 479
  end
  inherited PanelRigth: TPanel
    Left = 974
    Height = 479
  end
  inherited PanelCenter: TPanel
    Width = 964
    Height = 479
    inherited PanelBotton: TPanel
      Top = 438
      Width = 964
      inherited Panel1: TPanel
        Left = 872
      end
    end
    inherited PanelTop: TPanel
      Width = 964
      Height = 25
      inherited Bevel1: TBevel
        Top = 15
        Width = 964
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 25
      Width = 964
      Height = 413
      Columns = <
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Usu Alt'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataHora'
          Title.Caption = 'Dt Altera'#231#227'o'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DOCUMENTO'
          Title.Caption = 'TP Doc'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Caption = 'Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Caption = 'Vencto'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Caption = 'Saldo'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_COBRANCA'
          Title.Caption = 'TP Cob'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Caption = 'Vr Pago'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desc'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Title.Caption = 'Juros'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PAGAMENTO'
          Title.Caption = 'TP Pag'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador'
          Title.Caption = 'Operador Baixa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usu_alteracao'
          Title.Caption = 'CD Usu Alt'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Titulo'
          Title.Caption = 'Titulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desdobramento'
          Title.Caption = 'Desd'
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
      'select '
      
        'o.apelido, DataHora, Numero_Titulo, Desdobramento, TIPO_DOCUMENT' +
        'O, DATA_EMISSAO, DATA_VENCIMENTO,VALOR,SALDO,TIPO_COBRANCA,DATA_' +
        'PAGAMENTO'
      
        'VALOR_PAGO,DESCONTO,JUROS,TIPO_PAGAMENTO,Operador,cd_usu_alterac' +
        'ao'
      'from  receber_log l'
      'left join operador o on o.codigo = l.cd_usu_alteracao'
      'where numero_titulo = '
      '115530313'
      'and desdobramento ='
      #39'M'#39
      '')
    Left = 250
    Top = 176
  end
end
