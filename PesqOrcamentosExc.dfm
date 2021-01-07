inherited FmPesqOrcamentosExc: TFmPesqOrcamentosExc
  Width = 736
  Height = 430
  Caption = 'Pesquisa de Or'#231'amentos Exclu'#237'dos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 396
  end
  inherited PanelRigth: TPanel
    Left = 718
    Height = 396
  end
  inherited PanelCenter: TPanel
    Width = 708
    Height = 396
    inherited PanelBotton: TPanel
      Top = 355
      Width = 708
      inherited Panel1: TPanel
        Left = 616
      end
    end
    inherited PanelTop: TPanel
      Width = 708
      Height = 81
      inherited Bevel1: TBevel
        Top = 71
        Width = 708
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 7
        Width = 216
        Height = 51
        Caption = '&Intervalo de datas(Digita'#231#227'o)'
        TabOrder = 0
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
      object GroupBox2: TGroupBox
        Left = 238
        Top = 11
        Width = 123
        Height = 47
        Caption = 'Or'#231'amento'
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 21
          Width = 12
          Height = 13
          Caption = 'N'#186
        end
        object EditOrcamento: TEdit
          Left = 27
          Top = 17
          Width = 78
          Height = 21
          Hint = 'Informe o c'#243'digo inicial do Atendente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object BitBtn2: TBitBtn
        Left = 365
        Top = 17
        Width = 95
        Height = 39
        Caption = 'Pesquisar'
        TabOrder = 2
        TabStop = False
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 81
      Width = 513
      Height = 274
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTDIGITACAO'
          Title.Caption = 'Digita'#231#227'o'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAEXCL'
          Title.Caption = 'Exclus'#227'o'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPEXCLUSAO'
          Title.Caption = 'Op Exclus'#227'o'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_USUARIO'
          Title.Caption = 'C'#243'd Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NM_USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Width = 191
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NM_DENTISTA'
          Title.Caption = 'Dentista'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_BRUTO'
          Title.Caption = 'Total Bruto'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_DESCONTO'
          Title.Caption = 'Total Desconto'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_DENTISTA'
          Title.Caption = 'Total Dentista'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PROTETICO'
          Title.Caption = 'Total Prot'#233'tico'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSSTATUSORC'
          Title.Caption = 'Status Or'#231
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSSTATUSPAGTO'
          Title.Caption = 'Status Pagamento'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAPROVACAO'
          Title.Caption = 'Dt Aprova'#231#227'o'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTORIZADO'
          Title.Caption = 'Aut'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPAPROVACAO'
          Title.Caption = 'Op Aprov'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPCADASTRO'
          Title.Caption = 'Op Cadastro'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DS_MOTIVO_EXCL'
          Title.Caption = 'Ds Motivo Excl'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CONTRATANTE_TITULAR'
          Title.Caption = 'Contrantante'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENTISTA'
          Title.Caption = 'C'#243'd Dentista'
          Width = 64
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 513
      Top = 81
      Width = 10
      Height = 274
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 523
      Top = 81
      Width = 185
      Height = 274
      Align = alRight
      DataField = 'DS_MOTIVO_EXCL'
      DataSource = DataSource1
      TabOrder = 4
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
      'SET DATEFORMAT DMY SELECT '
      #9'O.NUMERO,'
      #9'O.DATA_HORA AS DTDIGITACAO,'
      #9
      #9'O.DATAEXCL,'
      #9'OP.APELIDO AS OPEXCLUSAO,'
      #9'U.CODIGO_COMPLETO AS CD_USUARIO,'
      #9'U.NOME AS NM_USUARIO,'
      #9
      #9'O.DENTISTA, '
      #9'D.NOME AS NM_DENTISTA,'
      #9'O.TOTAL,'
      #9'O.TOTAL_BRUTO,'
      #9'O.TOTAL_DESCONTO,'
      #9'O.TOTAL_DENTISTA,'
      #9'O.TOTAL_PROTETICO,'
      #9'S.DESCRICAO AS DSSTATUSORC,'
      #9'SP.DESCRICAO AS DSSTATUSPAGTO,'
      #9
      #9'O.DATA_CONFERENCIA AS DTAPROVACAO,'
      #9'CASE O.AUTORIZADO WHEN 1 THEN '#39'S'#39' ELSE '#39'N'#39' END AS AUTORIZADO,'
      #9'OP1.APELIDO AS OPAPROVACAO,'
      #9'OP2.APELIDO AS OPCADASTRO,'
      #9'O.DS_MOTIVO_EXCL,'
      #9'O.CONTRATANTE_TITULAR'
      ''
      ' FROM ORCAMENTO_BCK O'
      'LEFT JOIN USUARIO U'
      'ON U.CODIGO_COMPLETO = O.USUARIO'
      'LEFT JOIN DENTISTA D'
      'ON D.CODIGO = O.DENTISTA'
      'LEFT JOIN STATUS_ORCAMENTO S'
      'ON S.CODIGO = O.STATUS'
      'LEFT JOIN STATUS_PAGTO SP'
      'ON SP.CODIGO = O.STATUS_PAGAMENTO'
      'LEFT JOIN OPERADOR OP'
      'ON OP.CODIGO = O.CD_FUNC_EXCL'
      'LEFT JOIN OPERADOR OP1'
      'ON OP1.CODIGO = O.OPERADOR_APROVACAO'
      'LEFT JOIN OPERADOR OP2'
      'ON OP2.CODIGO = O.OPERADOR_CADASTRO'
      ''
      'WHERE 1 = 1'
      ''
      'ORDER BY O.NUMERO'
      '')
    Left = 282
    Top = 168
    object ADOQuery1NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOQuery1DTDIGITACAO: TDateTimeField
      FieldName = 'DTDIGITACAO'
    end
    object ADOQuery1DATAEXCL: TDateTimeField
      FieldName = 'DATAEXCL'
    end
    object ADOQuery1OPEXCLUSAO: TStringField
      FieldName = 'OPEXCLUSAO'
    end
    object ADOQuery1CD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
    end
    object ADOQuery1NM_USUARIO: TStringField
      FieldName = 'NM_USUARIO'
      Size = 40
    end
    object ADOQuery1DENTISTA: TIntegerField
      FieldName = 'DENTISTA'
    end
    object ADOQuery1NM_DENTISTA: TStringField
      FieldName = 'NM_DENTISTA'
      Size = 40
    end
    object ADOQuery1TOTAL: TBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 19
    end
    object ADOQuery1TOTAL_BRUTO: TBCDField
      FieldName = 'TOTAL_BRUTO'
      currency = True
      Precision = 19
    end
    object ADOQuery1TOTAL_DESCONTO: TBCDField
      FieldName = 'TOTAL_DESCONTO'
      currency = True
      Precision = 19
    end
    object ADOQuery1TOTAL_DENTISTA: TBCDField
      FieldName = 'TOTAL_DENTISTA'
      currency = True
      Precision = 19
    end
    object ADOQuery1TOTAL_PROTETICO: TBCDField
      FieldName = 'TOTAL_PROTETICO'
      currency = True
      Precision = 19
    end
    object ADOQuery1DSSTATUSORC: TStringField
      FieldName = 'DSSTATUSORC'
      Size = 30
    end
    object ADOQuery1DSSTATUSPAGTO: TStringField
      FieldName = 'DSSTATUSPAGTO'
      Size = 30
    end
    object ADOQuery1DTAPROVACAO: TDateTimeField
      FieldName = 'DTAPROVACAO'
    end
    object ADOQuery1AUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1OPAPROVACAO: TStringField
      FieldName = 'OPAPROVACAO'
    end
    object ADOQuery1OPCADASTRO: TStringField
      FieldName = 'OPCADASTRO'
    end
    object ADOQuery1DS_MOTIVO_EXCL: TStringField
      FieldName = 'DS_MOTIVO_EXCL'
      Size = 300
    end
    object ADOQuery1CONTRATANTE_TITULAR: TIntegerField
      FieldName = 'CONTRATANTE_TITULAR'
    end
  end
end
