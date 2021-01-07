object FmVidasConfirmadas: TFmVidasConfirmadas
  Left = 282
  Top = 190
  Width = 876
  Height = 439
  Caption = 'Vidas Confirmadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDblClick = FormDblClick
  OnShow = FormShow
  DesignSize = (
    860
    401)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label3: TLabel
    Left = 8
    Top = 368
    Width = 492
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 
      'V.N.C = Vidas em Novos Contratos. Apenas essa quantidade '#233' anali' +
      'sada para verificar parcelas pagas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 72
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 847
    Height = 298
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource_vendas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'vendedor'
        Title.Caption = 'Representante'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde'
        Title.Caption = 'Qtde.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNC'
        Title.Caption = 'V.N.C.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '2_parcela'
        Title.Caption = '2'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '3_parcela'
        Title.Caption = '3'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '4_parcela'
        Title.Caption = '4'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '5_parcela'
        Title.Caption = '5'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '6_parcela'
        Title.Caption = '6'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '7_parcela'
        Title.Caption = '7'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '8_parcela'
        Title.Caption = '8'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '9_parcela'
        Title.Caption = '9'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '10_parcela'
        Title.Caption = '10'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '11_parcela'
        Title.Caption = '11'#170
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = '12_parcela'
        Title.Caption = '12'#170
        Width = 70
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 225
    Top = 112
    Width = 512
    Height = 201
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object MaskEdit3: TMaskEdit
    Left = 8
    Top = 24
    Width = 57
    Height = 21
    EditMask = '!99/0000;1;_'
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
    OnKeyDown = MaskEdit3KeyDown
  end
  object Button2: TButton
    Left = 750
    Top = 370
    Width = 99
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Exportar Excel'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOQuery_Vendas: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnCalcFields = ADOQuery_VendasCalcFields
    Parameters = <>
    SQL.Strings = (
      'select r.nome  '
      ' '
      ' vendedor,min(r.codigo) cod_representante, COUNT(*) qtde'
      
        'from usuario u, vendedor v, representante r where v.codigo = u.v' +
        'endedor'
      'and r.codigo = v.representante'
      'and u.dt_venda between'
      #39'01/01/2017'#39' and '#39'31/01/2017 23:59'#39
      
        'and (u.Data_Exclusao is null or substring(convert(char(10),u.Dat' +
        'a_Exclusao,103),4,7) <> substring(convert(char(10),u.Data_Inclus' +
        'ao,103),4,7)) group by r.nome '
      'order by qtde desc')
    Left = 272
    Top = 16
    object ADOQuery_Vendascod_representante: TSmallintField
      FieldName = 'cod_representante'
      ReadOnly = True
    end
    object ADOQuery_Vendasvendedor: TStringField
      FieldName = 'vendedor'
      ReadOnly = True
      Size = 49
    end
    object ADOQuery_Vendasqtde: TIntegerField
      FieldName = 'qtde'
      ReadOnly = True
    end
    object ADOQuery_VendasVNC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNC'
      Calculated = True
    end
    object ADOQuery_VendasField2_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '2_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField3_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '3_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField4_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '4_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField5_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '5_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField6_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '6_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField7_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '7_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField8_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '8_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField9_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '9_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField10_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '10_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField11_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '11_parcela'
      Calculated = True
    end
    object ADOQuery_VendasField12_parcela: TStringField
      FieldKind = fkCalculated
      FieldName = '12_parcela'
      Calculated = True
    end
  end
  object QY_AUX: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    Left = 400
    Top = 16
  end
  object DataSource_vendas: TDataSource
    DataSet = ADOQuery_Vendas
    Left = 360
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 304
    Top = 24
  end
  object Query_aux: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    Left = 456
    Top = 16
  end
end
