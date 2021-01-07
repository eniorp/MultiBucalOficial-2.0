inherited FmEventosFat: TFmEventosFat
  Left = 298
  Top = 136
  Width = 360
  Caption = 'Eventos Faturamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 342
  end
  inherited PanelCenter: TPanel
    Width = 332
    inherited PanelBotton: TPanel
      Width = 332
      inherited Panel1: TPanel
        Left = 240
      end
    end
    inherited PanelTop: TPanel
      Width = 332
      Height = 49
      inherited Bevel1: TBevel
        Top = 39
        Width = 332
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 49
      Width = 332
      Height = 251
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'ds_evento'
          Title.Caption = 'Evento'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Title.Caption = 'Data'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_registro'
          Title.Caption = 'Qtde'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_status'
          Title.Caption = 'Status'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Funcion'#225'rio'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_status'
          Title.Caption = 'C'#243'd Status'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tp_evento'
          Title.Caption = 'C'#243'd Evento'
          Width = 32
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    Left = 106
    Top = 184
  end
  inherited DataSource1: TDataSource
    DataSet = AdoQueryevento_fat
  end
  object AdoQueryevento_fat: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      't.tp_evento,'
      't.ds_evento,'
      'o.apelido,'
      's.cd_status,'
      's.ds_status, e.data, e.qt_registro'
      ' from '
      'evento_fat e,'
      'tipo_evento t, '
      'operador o, '
      'status_fat s'
      'where '
      '         e.tp_evento = t.tp_evento'
      '     and o.codigo = e.cd_operador'
      '     and s.cd_status = e.cd_status'
      '    and seq_periodo_fat ='
      '1'
      'order by t.tp_evento'
      '')
    Left = 96
    Top = 112
  end
end
