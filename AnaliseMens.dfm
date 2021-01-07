object FmAnalisaMensalidade: TFmAnalisaMensalidade
  Left = 141
  Top = 79
  BorderStyle = bsDialog
  Caption = 'Análise de mensalidade'
  ClientHeight = 117
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 512
    Top = 15
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object Button1: TButton
    Left = 16
    Top = 7
    Width = 473
    Height = 31
    Caption = 'Análise de Mensalidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 101
    Width = 538
    Height = 16
    Align = alBottom
    Min = 0
    Max = 100
    Step = 1
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 72
    Width = 145
    Height = 17
    Caption = 'Gravar em arquivo'
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 2
  end
  object CheckBox2: TCheckBox
    Left = 175
    Top = 73
    Width = 97
    Height = 17
    Caption = 'Efetua alteração'
    Enabled = False
    TabOrder = 3
  end
  object QueryUsu: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select u.nome,u.grau_parentesco,u.data_inclusao, u.contratante_t' +
        'itular,cd_usuario,dg_usuario, c.inclusao, c.plano, m.* from mens' +
        'alidade_usuario m , usuario u, contratante c'
      'where '
      '--dtinicio >'#39'01/01/1980'#39
      ' m.cd_usuario = u.codigo'
      'and m.dg_usuario = u.digito'
      'and c.codigo = u.contratante_titular '
      'order by cd_usuario, dg_usuario,dtinicio')
    Left = 184
    Top = 32
    object QueryUsucd_usuario: TIntegerField
      FieldName = 'cd_usuario'
    end
    object QueryUsudg_usuario: TIntegerField
      FieldName = 'dg_usuario'
    end
    object QueryUsuinclusao: TDateTimeField
      FieldName = 'inclusao'
    end
    object QueryUsuplano: TIntegerField
      FieldName = 'plano'
    end
    object QueryUsuid_acrescimo: TIntegerField
      FieldName = 'id_acrescimo'
    end
    object QueryUsudtinicio: TDateTimeField
      FieldName = 'dtinicio'
    end
    object QueryUsudtfim: TDateTimeField
      FieldName = 'dtfim'
    end
    object QueryUsuvalor: TFloatField
      FieldName = 'valor'
    end
    object QueryUsudata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object QueryUsucontratante_titular: TIntegerField
      FieldName = 'contratante_titular'
    end
    object QueryUsugrau_parentesco: TSmallintField
      FieldName = 'grau_parentesco'
    end
    object QueryUsunome: TStringField
      FieldName = 'nome'
      Size = 40
    end
  end
  object QueryAcrescimo: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select a.* from acrescimo_inclusao a where plano = '
      '2'
      'order by data_aumento')
    Left = 296
    Top = 24
    object QueryAcrescimoPlano: TIntegerField
      FieldName = 'Plano'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.Plano'
    end
    object QueryAcrescimoDias: TSmallintField
      FieldName = 'Dias'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.Dias'
    end
    object QueryAcrescimoPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.Percentual'
    end
    object QueryAcrescimoData_Aumento: TDateTimeField
      FieldName = 'Data_Aumento'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.Data_Aumento'
    end
    object QueryAcrescimoDtinclusao: TDateTimeField
      FieldName = 'Dtinclusao'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.Dtinclusao'
    end
    object QueryAcrescimoid_acrescimo: TIntegerField
      FieldName = 'id_acrescimo'
      Origin = 'MULTIATUALIZADB.acrescimo_inclusao.id_acrescimo'
    end
  end
  object QueryAux: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy select dateadd(dd,730,'#39'02/08/1996'#39')')
    Left = 240
    Top = 40
  end
  object QueryAux1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy select dateadd(dd,730,'#39'02/08/1996'#39')')
    Left = 360
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'set dateformat dmy select '#39'SIM'#39' result where '
      #39'01/01/2079'#39' '
      '= '
      #39'01/01/2078'#39)
    Left = 432
    Top = 8
  end
end
