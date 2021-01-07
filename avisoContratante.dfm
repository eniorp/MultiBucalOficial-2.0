inherited FmAvisoContratante: TFmAvisoContratante
  Left = 275
  Top = 94
  Width = 708
  Height = 324
  Caption = 'Aviso sobre falta de Cart'#227'o SUS'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 286
  end
  inherited PanelRigth: TPanel
    Left = 682
    Height = 286
  end
  inherited PanelCenter: TPanel
    Width = 672
    Height = 286
    inherited PanelBotton: TPanel
      Top = 245
      Width = 672
      inherited Panel1: TPanel
        Left = 580
      end
    end
    inherited PanelTop: TPanel
      Width = 672
      Height = 128
      inherited Bevel1: TBevel
        Top = 112
        Width = 672
        Height = 16
      end
      object Label1: TLabel
        Left = 360
        Top = 24
        Width = 104
        Height = 13
        Caption = 'Pessoa Avisada Hoje:'
      end
      object Bevel2: TBevel
        Left = 320
        Top = 20
        Width = 6
        Height = 92
        Align = alLeft
        Shape = bsRightLine
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 672
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 0
        Top = 20
        Width = 320
        Height = 92
        Align = alLeft
        Alignment = taCenter
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Aten'#231#227'o'
          ''
          'Os Benefici'#225'rios abaixo n'#227'o possuem cart'#227'o '
          'SUS. Este '#233' o segundo aviso.Ap'#243's o 3 aviso '
          'n'#227'o ser'#225' permitido autorizar outro or'#231'amento.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 400
        Top = 80
        Width = 161
        Height = 25
        Caption = 'Gravar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object DBEdit1: TDBEdit
        Left = 360
        Top = 40
        Width = 273
        Height = 21
        DataField = 'pessoa_avisada'
        DataSource = dsAvisoContratante
        TabOrder = 3
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 128
      Width = 299
      Height = 117
      TabStop = False
      Align = alLeft
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_completo'
          Title.Caption = 'C'#243'digo'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Usu'#225'rio'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataInclusao'
          Title.Caption = 'Inclus'#227'o'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 348
      Top = 128
      Width = 324
      Height = 117
      TabStop = False
      Align = alRight
      DataSource = dsAvisoContratante1
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_aviso'
          Title.Caption = 'Data Aviso'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pessoa_avisada'
          Title.Caption = 'Pessoa Avisada'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Funcion'#225'rio'
          Width = 75
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryUsuario
  end
  object ADOQueryUsuario: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select codigo_completo, nome,convert(char(10),data_inclusao,103)' +
        ' dataInclusao  from usuario where codigo ='
      '100'
      'and (cd_sus is null or rtrim(ltrim(cd_sus)) = '#39#39')')
    Left = 90
    Top = 144
  end
  object ADOQueryAvisoContratante: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, o.apelido from aviso_contratante a,  operador o wher' +
        'e o.codigo  = a.cd_operador and  cd_contratante ='
      '0'
      'order by dt_aviso desc')
    Left = 418
    Top = 192
    object ADOQueryAvisoContratantecd_contratante: TIntegerField
      FieldName = 'cd_contratante'
    end
    object ADOQueryAvisoContratantecd_tp_aviso: TWordField
      FieldName = 'cd_tp_aviso'
    end
    object ADOQueryAvisoContratantedt_aviso: TDateTimeField
      FieldName = 'dt_aviso'
    end
    object ADOQueryAvisoContratantepessoa_avisada: TStringField
      FieldName = 'pessoa_avisada'
      Size = 50
    end
    object ADOQueryAvisoContratantecd_operador: TIntegerField
      FieldName = 'cd_operador'
    end
    object ADOQueryAvisoContratanteapelido: TStringField
      FieldName = 'apelido'
    end
  end
  object dsAvisoContratante: TDataSource
    DataSet = ADOQueryAvisoContratante
    Left = 314
    Top = 208
  end
  object ADOQueryAvisoContratante1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, o.apelido from aviso_contratante a,  operador o wher' +
        'e o.codigo  = a.cd_operador and  cd_contratante ='
      '0'
      'order by dt_aviso desc')
    Left = 418
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'cd_contratante'
    end
    object WordField1: TWordField
      FieldName = 'cd_tp_aviso'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dt_aviso'
    end
    object StringField1: TStringField
      FieldName = 'pessoa_avisada'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'cd_operador'
    end
    object StringField2: TStringField
      FieldName = 'apelido'
    end
  end
  object dsAvisoContratante1: TDataSource
    DataSet = ADOQueryAvisoContratante1
    Left = 314
    Top = 144
  end
end
