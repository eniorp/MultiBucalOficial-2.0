inherited FmPadrao2: TFmPadrao2
  Left = 119
  Top = 8
  Width = 942
  Height = 686
  Caption = 'FmPadrao2'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 648
  end
  inherited PanelRigth: TPanel
    Left = 916
    Height = 648
  end
  inherited PanelCenter: TPanel
    Width = 906
    Height = 648
    inherited PanelBotton: TPanel
      Top = 607
      Width = 906
      inherited Panel1: TPanel
        Left = 814
      end
    end
    inherited PanelTop: TPanel
      Width = 906
      Height = 105
      inherited Bevel1: TBevel
        Top = 95
        Width = 906
      end
      object GroupBox1: TGroupBox
        Left = 9
        Top = 16
        Width = 317
        Height = 66
        Caption = '&Intervalo de datas'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 25
          Width = 53
          Height = 13
          Caption = 'Data In'#237'cio'
        end
        object Label2: TLabel
          Left = 162
          Top = 25
          Width = 42
          Height = 13
          Caption = 'Data Fim'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 66
          Top = 21
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 209
          Top = 24
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object BitBtnOk: TBitBtn
        Left = 333
        Top = 24
        Width = 78
        Height = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnOkClick
        Kind = bkOK
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 105
      Width = 906
      Height = 502
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'LG_IR'
          Title.Caption = 'IR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_TITULO'
          Title.Caption = 'N'#186' T'#205'T.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CONTRATANTE'
          Title.Caption = 'C'#211'D'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NM_CONTRATANTE'
          Title.Caption = 'CONTRATANTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Caption = 'VR PAGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCAMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PAGAMENTO'
          Title.Caption = 'DT PAGTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_USUARIO'
          Title.Caption = 'C'#211'D USU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTINCLUSAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESDOBRAMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DOCUMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSTPDOCUMENTO'
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
      'SET DATEFORMAT DMY'
      ''
      'SELECT  '
      '    R.NUMERO_TITULO,'
      '    R.DESDOBRAMENTO,'
      '    C.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      '    str(R.VALOR,15,2) VALOR, '
      #9'str(R.VALOR_PAGO,15,2) VALOR_PAGO, '
      #9'R.DATA_PAGAMENTO ,'
      #9'R.CODIGO_CONTRATANTE,'
      #9'R.CODIGO_USUARIO, '
      #9'ISNULL(R.DTINCLUSAO,DATA_EMISSAO) DTINCLUSAO,'
      '    R.ORCAMENTO,'
      '    O.LG_IR'
      ''
      ''
      'FROM '
      #9'RECEBER R, '
      #9'TIPODOCUMENTO T,'
      '    CONTRATANTE C,'
      '    PLANO P,'
      '    ORCAMENTO O'
      ''
      'WHERE '
      #9'     T.CODIGO = R.TIPO_DOCUMENTO '
      '        AND C.CODIGO  = R.CODIGO_CONTRATANTE'
      '        AND P.CODIGO  = C.PLANO'
      #9'AND DATA_PAGAMENTO BETWEEN '
      '      '#39'01/01/2009'#39' AND '#39'31/01/2009'#39
      
        #9'AND VALOR_PAGO > 0 -- SEGUNDO GABI SOMENTE LISTA QUEM PAGOU NO ' +
        'MES..'
      
        '    AND FIS_JUR = '#39'F'#237'sica'#39' -- SEGUNDO GABI SOMENTE PESSOA F'#205'SICA' +
        '..'
      '    AND TIPO_DOCUMENTO = 2'
      '    AND O.NUMERO = R.ORCAMENTO')
    Left = 338
    Top = 104
  end
end
