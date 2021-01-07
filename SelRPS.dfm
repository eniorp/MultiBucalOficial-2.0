inherited FmSelRPS: TFmSelRPS
  Left = 398
  Top = 170
  Width = 625
  Height = 552
  Caption = 'FmSelRPS'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 514
  end
  inherited PanelRigth: TPanel
    Left = 599
    Height = 514
  end
  inherited PanelCenter: TPanel
    Width = 589
    Height = 514
    object Label3: TLabel [0]
      Left = 296
      Top = 136
      Width = 33
      Height = 13
      Caption = 'sessao'
    end
    inherited PanelBotton: TPanel
      Top = 473
      Width = 589
      object Label4: TLabel [0]
        Left = 241
        Top = 12
        Width = 113
        Height = 13
        Caption = 'Valor Total Selecionado'
      end
      inherited Panel1: TPanel
        Left = 497
      end
      object Edit1: TEdit
        Left = 360
        Top = 8
        Width = 129
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 589
      Height = 73
      inherited Bevel1: TBevel
        Top = 63
        Width = 589
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 8
        Width = 305
        Height = 54
        Caption = 'Informe a Data in'#237'cio e Fim para selecionar o faturamento'
        TabOrder = 0
        TabStop = True
        object Label2: TLabel
          Left = 5
          Top = 28
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data In'#237'cio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 149
          Top = 27
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Fim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object MaskEditDtIni: TMaskEdit
          Left = 64
          Top = 24
          Width = 68
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEdit1: TMaskEdit
          Left = 199
          Top = 24
          Width = 85
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object Button1: TButton
        Left = 322
        Top = 14
        Width = 85
        Height = 46
        Caption = 'Selecionar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 411
        Top = 14
        Width = 85
        Height = 46
        Caption = 'Gerar Lote RPS'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 503
        Top = 14
        Width = 85
        Height = 46
        Caption = 'Enviar Lote RPS'
        TabOrder = 3
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 73
      Width = 589
      Height = 400
      Hint = 
        'Pressione barra de espa'#231'o ou d'#234' um duplo clique para  marcar/des' +
        'marcar'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'flag'
          Title.Caption = 'Marcado'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_contratante'
          Title.Caption = 'C'#243'd Contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_contratante'
          Title.Caption = 'Contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_contratante'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nm_contratante'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sessao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_contratante'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = False
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryFaturamento
  end
  object ADOQueryFaturamento: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from temp_rps where sessao = '
      '0'
      'order by valor desc')
    Left = 218
    Top = 96
    object ADOQueryFaturamentocd_contratante: TAutoIncField
      FieldName = 'cd_contratante'
      ReadOnly = True
    end
    object ADOQueryFaturamentonm_contratante: TStringField
      FieldName = 'nm_contratante'
      Size = 50
    end
    object ADOQueryFaturamentovalor: TBCDField
      FieldName = 'valor'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object ADOQueryFaturamentosessao: TIntegerField
      FieldName = 'sessao'
    end
    object ADOQueryFaturamentoflag: TBooleanField
      FieldName = 'flag'
    end
  end
  object ADOStoredProcsp_geraLoteRPS: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'sp_geraLoteRPS'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@sessao'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@mesAno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
      end
      item
        Name = '@nmLogin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end>
    Left = 298
    Top = 176
  end
end
