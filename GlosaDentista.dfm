object FmGlosaDentista: TFmGlosaDentista
  Left = 328
  Top = 104
  Width = 477
  Height = 438
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Efetuar Glosa Dentista'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 62
    Height = 13
    Caption = 'Motivo Glosa'
  end
  object Label2: TLabel
    Left = 63
    Top = 96
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label3: TLabel
    Left = 24
    Top = 139
    Width = 62
    Height = 13
    Caption = 'Respons'#225'vel'
  end
  object Label4: TLabel
    Left = 47
    Top = 63
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 160
    Top = 29
    Width = 289
    Height = 21
    DataField = 'cd_glosa'
    DataSource = dsGlosaDentista
    KeyField = 'cd_glosa'
    ListField = 'ds_glosa'
    ListSource = DsGlosa
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 94
    Width = 121
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'data'
    DataSource = dsGlosaDentista
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 136
    Width = 121
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'nmOperador'
    DataSource = dsGlosaDentista
    ReadOnly = True
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 469
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 469
      Height = 5
      Align = alTop
      Shape = bsTopLine
    end
    object Button1: TButton
      Left = 360
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object btnCancelar: TButton
      Left = 251
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Cancelar Glosa'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnGravar: TButton
      Left = 144
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Gravar Glosa'
      TabOrder = 0
      OnClick = btnGravarClick
    end
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 61
    Width = 121
    Height = 21
    Color = clWhite
    DataField = 'MesAno'
    DataSource = dsGlosaDentista
    TabOrder = 2
    OnKeyPress = DBEdit3KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 176
    Width = 441
    Height = 161
    DataSource = dsGlosaDentista
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cd_glosa'
        Title.Caption = 'C'#243'd'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ds_glosa'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MesAno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmOperador'
        Title.Caption = 'Operador'
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 29
    Width = 59
    Height = 21
    Color = clWhite
    DataField = 'cd_glosa'
    DataSource = dsGlosaDentista
    TabOrder = 0
    OnKeyPress = DBEdit3KeyPress
  end
  object DBMemo1: TDBMemo
    Left = 224
    Top = 56
    Width = 225
    Height = 105
    DataField = 'obs'
    DataSource = dsGlosaDentista
    TabOrder = 7
  end
  object ADOQueryGlosa: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from glosa where ativo = '#39'S'#39)
    Left = 73
    Top = 49
  end
  object DsGlosa: TDataSource
    DataSet = ADOQueryGlosa
    Left = 122
    Top = 54
  end
  object ADOQueryGlosaDentista: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQueryGlosaDentistaBeforePost
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, b.ds_glosa from  glosaDentista a, glosa  b where a.c' +
        'd_glosa = b.cd_glosa and cd_orcamento ='
      '0'
      'and incremento = '
      '0'
      ' ')
    Left = 121
    Top = 97
    object ADOQueryGlosaDentistacd_orcamento: TIntegerField
      FieldName = 'cd_orcamento'
    end
    object ADOQueryGlosaDentistaincremento: TIntegerField
      FieldName = 'incremento'
    end
    object ADOQueryGlosaDentistacd_glosa: TSmallintField
      FieldName = 'cd_glosa'
    end
    object ADOQueryGlosaDentistadata: TWideStringField
      FieldName = 'data'
      Size = 10
    end
    object ADOQueryGlosaDentistanmOperador: TStringField
      FieldName = 'nmOperador'
    end
    object ADOQueryGlosaDentistaMesAno: TStringField
      FieldName = 'MesAno'
      EditMask = '!99/0000;1;_'
      Size = 7
    end
    object ADOQueryGlosaDentistads_glosa: TStringField
      FieldName = 'ds_glosa'
      Size = 30
    end
    object ADOQueryGlosaDentistaobs: TStringField
      FieldName = 'obs'
      Size = 150
    end
  end
  object dsGlosaDentista: TDataSource
    DataSet = ADOQueryGlosaDentista
    Left = 130
    Top = 134
  end
end
