inherited FmEfetivaPagto: TFmEfetivaPagto
  Left = 94
  Top = 170
  Width = 510
  Caption = 'Efetivação de Pagamento  Dentista/Protético'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 492
  end
  inherited PanelCenter: TPanel
    Width = 482
    inherited PanelBotton: TPanel
      Width = 482
      inherited Panel1: TPanel
        Left = 200
        Width = 282
        inherited BitBtnSair: TBitBtn
          Left = 205
          Top = 9
        end
        object BitBtn2: TBitBtn
          Left = 86
          Top = 9
          Width = 113
          Height = 25
          Caption = '&Cancelar Efetivação'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 482
      Height = 73
      inherited Bevel1: TBevel
        Top = 63
        Width = 482
      end
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 93
        Height = 13
        Caption = 'Tipo de Pagamento'
      end
      object Label2: TLabel
        Left = 178
        Top = 14
        Width = 38
        Height = 13
        Caption = 'Período'
      end
      object ComboBoxTpPagto: TComboBox
        Left = 8
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'Dentista'
          'Protético')
      end
      object BitBtn1: TBitBtn
        Left = 262
        Top = 25
        Width = 153
        Height = 25
        Caption = '&Efetivar Pagamento'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object EditReferencia: TMaskEdit
        Left = 178
        Top = 32
        Width = 67
        Height = 21
        EditMask = '!99/0000;1;_'
        MaxLength = 7
        TabOrder = 1
        Text = '  /    '
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 73
      Width = 482
      Height = 227
      Columns = <
        item
          Expanded = False
          FieldName = 'id_pagto'
          PickList.Strings = ()
          Title.Caption = 'Indice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tp_pagto'
          PickList.Strings = ()
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'periodo'
          PickList.Strings = ()
          Title.Caption = 'Período'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_pagto'
          PickList.Strings = ()
          Title.Caption = 'Data Efetivação'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_pagto'
          PickList.Strings = ()
          Title.Caption = 'Valor'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'operador'
          PickList.Strings = ()
          Width = 105
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from EfetivaPagto where tp_pagto ='
      #39'D'#39
      'order by 1 desc')
    object Query1id_pagto: TIntegerField
      FieldName = 'id_pagto'
    end
    object Query1tp_pagto: TStringField
      FieldName = 'tp_pagto'
      FixedChar = True
      Size = 1
    end
    object Query1periodo: TStringField
      FieldName = 'periodo'
      FixedChar = True
      Size = 7
    end
    object Query1dt_pagto: TDateTimeField
      FieldName = 'dt_pagto'
    end
    object Query1vr_pagto: TFloatField
      FieldName = 'vr_pagto'
      currency = True
    end
    object Query1operador: TStringField
      FieldName = 'operador'
    end
  end
end
