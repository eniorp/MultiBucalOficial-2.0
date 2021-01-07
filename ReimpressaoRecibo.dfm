inherited FmReimpressaoRec: TFmReimpressaoRec
  Left = 146
  Top = 128
  Caption = 'Reimpressão de Recibos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelBotton: TPanel
      inherited Panel1: TPanel
        Left = 168
        Width = 348
        inherited BitBtnSair: TBitBtn
          Left = 265
        end
        object BitBtn2: TBitBtn
          Left = 185
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object BitBtn3: TBitBtn
          Left = 107
          Top = 9
          Width = 75
          Height = 25
          Hint = 
            'Exluir registro de recibo que não foi impresso corretamente(Sem ' +
            'as baixas vinculadas)'
          Caption = '&Excluir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn4: TBitBtn
          Left = 25
          Top = 9
          Width = 75
          Height = 25
          Hint = 'Cancela um recibo '
          Caption = '&Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
    end
    inherited PanelTop: TPanel
      Height = 94
      inherited Bevel1: TBevel
        Top = 84
      end
      object Label1: TLabel
        Left = 1
        Top = 37
        Width = 55
        Height = 13
        Caption = '&Contratante'
        FocusControl = EditContr
      end
      object Label6: TLabel
        Left = 4
        Top = 5
        Width = 415
        Height = 13
        Caption = 
          'Informe um ou mais critério para a pesquisa(Não é necessário inf' +
          'ormar todos os campos)'
      end
      object Bevel2: TBevel
        Left = 2
        Top = 20
        Width = 511
        Height = 5
      end
      object EditContr: TEdit
        Left = 0
        Top = 53
        Width = 65
        Height = 21
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 268
        Top = 28
        Width = 180
        Height = 51
        Caption = 'I&ntervalo de datas do recibo'
        TabOrder = 2
        object Label2: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label3: TLabel
          Left = 97
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 25
          Top = 21
          Width = 66
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 109
          Top = 20
          Width = 65
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object GroupBox2: TGroupBox
        Left = 72
        Top = 28
        Width = 185
        Height = 51
        Caption = '&Intervalo de numeração de Recibos'
        TabOrder = 1
        object Label4: TLabel
          Left = 56
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label5: TLabel
          Left = 122
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object EditRec1: TEdit
          Left = 77
          Top = 22
          Width = 37
          Height = 21
          TabOrder = 0
          OnChange = EditRec1Change
          OnExit = EditRec1Exit
        end
        object EditRec2: TEdit
          Left = 135
          Top = 21
          Width = 37
          Height = 21
          TabOrder = 1
          OnExit = EditRec1Exit
        end
      end
      object BitBtn1: TBitBtn
        Left = 452
        Top = 32
        Width = 58
        Height = 47
        Caption = '&Pesquisar'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 94
      Height = 206
      Columns = <
        item
          Expanded = False
          FieldName = 'status'
          PickList.Strings = ()
          Title.Caption = 'ST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_recibo'
          PickList.Strings = ()
          Title.Caption = 'Recibo'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_recibo'
          PickList.Strings = ()
          Title.Caption = 'Data Rec'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_recibo'
          PickList.Strings = ()
          Title.Caption = 'Valor'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_contratante'
          PickList.Strings = ()
          Title.Caption = 'Contratante'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_contratante'
          PickList.Strings = ()
          Title.Caption = 'Nome'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'titulo'
          PickList.Strings = ()
          Title.Caption = 'Título'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desd'
          PickList.Strings = ()
          Title.Caption = 'Desd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'operador'
          PickList.Strings = ()
          Title.Caption = 'Operador'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_vencimento'
          PickList.Strings = ()
          Title.Caption = 'Vencto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_pagamento'
          PickList.Strings = ()
          Title.Caption = 'Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_pago'
          PickList.Strings = ()
          Title.Caption = 'Vr Pagto'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    AfterScroll = Query1AfterScroll
    SQL.Strings = (
      'set dateformat dmy select'
      #9'r.nr_recibo,'
      #9'r.dt_recibo,'
      #9'r.vr_recibo,'
      #9'i.numero_titulo as titulo,'
      #9'i.desdobramento as desd,'
      #9'r.operador,'
      #9'c.codigo as cd_contratante,'
      #9'c.nome as nm_contratante,'
      '        re.data_vencimento,'
      #9're.data_pagamento,'
      #9're.valor_pago,'
      '        r.status'
      'from recibo r'
      'left join i_recibo i'
      '   on r.nr_recibo = i.nr_recibo'
      ''
      'left join receber re'
      'on      re.numero_titulo = i.numero_titulo'
      '    and re.desdobramento = i.desdobramento'
      'left join contratante c'
      'on    c.codigo = re.codigo_contratante'
      'where 1 = 1'
      'order by r.nr_recibo'
      ' '
      ' ')
    object Query1status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object Query1nr_recibo: TIntegerField
      FieldName = 'nr_recibo'
    end
    object Query1dt_recibo: TDateTimeField
      FieldName = 'dt_recibo'
    end
    object Query1vr_recibo: TFloatField
      FieldName = 'vr_recibo'
      currency = True
    end
    object Query1titulo: TIntegerField
      FieldName = 'titulo'
    end
    object Query1desd: TStringField
      FieldName = 'desd'
      Size = 2
    end
    object Query1operador: TStringField
      FieldName = 'operador'
    end
    object Query1cd_contratante: TIntegerField
      FieldName = 'cd_contratante'
    end
    object Query1nm_contratante: TStringField
      FieldName = 'nm_contratante'
      Size = 50
    end
    object Query1data_vencimento: TDateTimeField
      FieldName = 'data_vencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object Query1data_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
      EditMask = '!99/99/0000;1;_'
    end
    object Query1valor_pago: TFloatField
      FieldName = 'valor_pago'
      currency = True
    end
  end
end
