inherited FmManutencaoDMED: TFmManutencaoDMED
  Left = 119
  Top = 8
  Width = 578
  Height = 686
  Caption = 'Manuten'#231#227'o Orcamentos DMED'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 648
  end
  inherited PanelRigth: TPanel
    Left = 552
    Height = 648
  end
  inherited PanelCenter: TPanel
    Width = 542
    Height = 648
    inherited PanelBotton: TPanel
      Top = 607
      Width = 542
      inherited Panel1: TPanel
        Left = 450
      end
    end
    inherited PanelTop: TPanel
      Width = 542
      Height = 105
      inherited Bevel1: TBevel
        Top = 95
        Width = 542
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
        Caption = 'OK'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnOkClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 105
      Width = 542
      Height = 502
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          Visible = False
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
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PAGAMENTO'
          Title.Caption = 'DT PAGTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODIGO_USUARIO'
          Title.Caption = 'C'#211'D USU'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTINCLUSAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESDOBRAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DOCUMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DSTPDOCUMENTO'
          Visible = False
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
      '    C.NOME AS NM_CONTRATANTE,'
      '    C.CGC_CPF,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO AS DSTPDOCUMENTO,'
      '    str(sum(R.VALOR),15,2) VALOR, '
      #9'str(sum(R.VALOR_PAGO),15,2) VALOR_PAGO, '
      #9'R.CODIGO_CONTRATANTE,'
      '    R.ORCAMENTO,'
      '    O.LG_IR'
      ''
      'FROM '
      #9'RECEBER R, '
      #9'TIPODOCUMENTO T,'
      '    CONTRATANTE C,'
      '    PLANO P,'
      '    ORCAMENTO O'
      ''
      ''
      ''
      ''
      ''
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
      '    AND O.NUMERO = R.ORCAMENTO'
      ''
      'group by'
      '    C.NOME ,'
      '    C.CGC_CPF,'
      #9'R.TIPO_DOCUMENTO,'
      '    T.DESCRICAO ,'
      #9'R.CODIGO_CONTRATANTE,'
      '    R.ORCAMENTO,'
      '    O.LG_IR'
      '')
    Left = 314
    Top = 248
  end
end
