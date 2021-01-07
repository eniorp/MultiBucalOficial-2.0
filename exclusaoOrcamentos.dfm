inherited FmExclusaoOrcamentos: TFmExclusaoOrcamentos
  Left = 10
  Top = 95
  Width = 749
  Height = 475
  Caption = 'Exclus'#227'o de Or'#231'amentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 436
  end
  inherited PanelRigth: TPanel
    Left = 723
    Height = 436
  end
  inherited PanelCenter: TPanel
    Width = 713
    Height = 436
    inherited PanelBotton: TPanel
      Top = 395
      Width = 713
      inherited Panel1: TPanel
        Left = 621
        inherited BitBtnSair: TBitBtn
          Font.Color = clNavy
          Font.Style = [fsBold]
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 713
      object Bevel3: TBevel [0]
        Left = 615
        Top = 8
        Width = 105
        Height = 26
      end
      inherited Bevel1: TBevel
        Width = 713
      end
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 186
        Height = 13
        Caption = 'Excluir or'#231'amentos com mais de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 230
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 3
        Top = 5
        Width = 262
        Height = 32
      end
      object LabelQtdeorc: TLabel
        Left = 620
        Top = 14
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 192
        Top = 13
        Width = 29
        Height = 21
        TabOrder = 0
        Text = '90'
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 285
        Top = 9
        Width = 158
        Height = 25
        Caption = '&Selecionar Or'#231'amentos'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 448
        Top = 9
        Width = 158
        Height = 25
        Cancel = True
        Caption = 'Excluir or'#231'amentos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn2Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 713
      Height = 333
      Columns = <
        item
          Expanded = False
          FieldName = 'numero'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dias'
          Title.Caption = 'Dias'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StatusOrcamento'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StatusPagto'
          Title.Caption = 'Status Pagto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_hora'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuario'
          Title.Caption = 'C'#243'd Usu'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'operador_cadastro'
          Title.Caption = 'C'#243'd Oper'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dentista'
          Title.Caption = 'C'#243'd Dentista'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select  o.numero,'
      #9'datediff(day, o.data_hora, getdate()) as dias , '
      #9'o.status, '
      #9's.descricao as StatusOrcamento,'
      '        sp.descricao as StatusPagto,'
      '        o.data_hora,'
      #9'o.usuario,'
      #9'u.nome,'
      '        o.operador_cadastro,'
      '        o.dentista'
      ''
      'from '
      '      orcamento o'
      ''
      'left join status_Orcamento s'
      'on'
      '   s.codigo = o.status'
      ''
      'left join usuario u'
      'on'
      '   u.codigo_completo = o.usuario'
      'left join status_pagto sp'
      'on'
      '   o.status_pagamento = sp.codigo'
      ''
      'where '
      ''
      '---tb usuario'
      '  datediff(day,data_hora,getdate()) >= :Dias'
      '  and o.status = :Status'
      
        'and status_pagamento = 3 order by numero -- status_pagamento = 3' +
        ' tratamento(status inicial)')
    ParamData = <
      item
        DataType = ftString
        Name = 'Dias'
        ParamType = ptUnknown
        Value = '90'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptUnknown
        Value = '8'
      end>
  end
  object sp_excluiOrcamento: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'delete_orcamento'
    Left = 370
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@orc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@cdFuncExcl'
        ParamType = ptInput
      end>
  end
end
