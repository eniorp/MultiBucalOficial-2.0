object FmRelCelXTitAbertos: TFmRelCelXTitAbertos
  Left = 671
  Top = 299
  Width = 361
  Height = 310
  BorderIcons = [biSystemMenu]
  Caption = 'Celulares X Titulos em Aberto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 28
    Width = 8
    Height = 13
    Caption = 'a'
  end
  object Label2: TLabel
    Left = 24
    Top = 8
    Width = 120
    Height = 13
    Caption = 'Data de Vencimento:'
  end
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 24
    Width = 81
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 128
    Top = 24
    Width = 81
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object BitBtnRelatorio: TBitBtn
    Left = 59
    Top = 216
    Width = 90
    Height = 33
    Caption = '&Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnRelatorioClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtnSair: TBitBtn
    Left = 208
    Top = 216
    Width = 90
    Height = 33
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 56
    Width = 313
    Height = 81
    Caption = ' Filtros '
    TabOrder = 2
    object CheckBox_SemEnvio: TCheckBox
      Left = 16
      Top = 48
      Width = 273
      Height = 17
      Caption = 'Clientes SEM envio de boleto por WhatsApp'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox_ComEnvio: TCheckBox
      Left = 16
      Top = 24
      Width = 273
      Height = 17
      Caption = 'Clientes COM envio de boleto por WhatsApp'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object CheckBox_EmExcel: TCheckBox
    Left = 67
    Top = 251
    Width = 75
    Height = 17
    Caption = 'Em Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 144
    Width = 313
    Height = 57
    TabOrder = 6
    object CheckBox_SegundasParcelas: TCheckBox
      Left = 16
      Top = 24
      Width = 273
      Height = 17
      Caption = 'Apenas 2'#170's parcelas'
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 280
    Top = 8
    Width = 57
    Height = 49
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43990.385421030100000000
    ReportOptions.LastChange = 44198.429656689810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Columns = 2
      ColumnWidth = 100.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '100')
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.504020000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Celulares')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Boleto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 68.031540000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Vencto.')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 56.692950000000000000
        Width = 377.953000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'codigo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."codigo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.504020000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'celular'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."celular"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 26.456695350000000000
          Height = 15.118120000000000000
          DataField = 'lg_enviarBoletoPorWhats'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."lg_enviarBoletoPorWhats"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 64.252010000000000000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DataField = 'data_vencimento'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."data_vencimento"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 94.488250000000000000
        Width = 377.953000000000000000
        object Memo8: TfrxMemoView
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Quantidade de registros: [COUNT(DetailData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'lg_enviarBoletoPorWhats=lg_enviarBoletoPorWhats'
      'data_vencimento=data_vencimento'
      'celular=celular')
    DataSet = ADOQuery1
    BCDToCurrency = False
    Left = 240
    Top = 160
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <
      item
        Name = 'Data1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 44166d
      end
      item
        Name = 'Data2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 44175d
      end>
    SQL.Strings = (
      
        'select c.codigo, c.lg_enviarBoletoPorWhats, r.data_vencimento, D' +
        'ATEDIFF (mm, c.inclusao,r.data_vencimento)+1 parcela,v.celular  ' +
        ' from '
      'contratante c '
      '  left join receber r on r.codigo_contratante = c.codigo'
      '  left join v_celulares v on v.codigo = c.codigo'
      'where'
      
        '  data_vencimento between :Data1 and :Data2  and data_pagamento ' +
        'is null'
      
        '  --linha a baixo muda de acordo com a escolha dos filtros na te' +
        'la'
      '  and r.tipo_documento in(1,5) and r.tipo_cobranca in(10)'
      '  ---linha 08  para filtros'
      '  ---linha 09 para segundas parcelas ou nao'
      ''
      ''
      
        'order by c.lg_enviarBoletoPorWhats desc, r.data_vencimento, c.co' +
        'digo')
    Left = 272
    Top = 160
    object ADOQuery1codigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object ADOQuery1lg_enviarBoletoPorWhats: TBooleanField
      FieldName = 'lg_enviarBoletoPorWhats'
      DisplayValues = 'Sim;Nao'
    end
    object ADOQuery1data_vencimento: TDateTimeField
      FieldName = 'data_vencimento'
    end
    object ADOQuery1parcela: TIntegerField
      FieldName = 'parcela'
      ReadOnly = True
    end
    object ADOQuery1celular: TStringField
      FieldName = 'celular'
      ReadOnly = True
      Size = 355
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 160
  end
end
