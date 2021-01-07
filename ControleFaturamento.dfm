inherited FmFaturamento: TFmFaturamento
  Left = 246
  Top = 135
  Width = 778
  Height = 505
  Caption = 'Controle de Faturamento'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 471
  end
  inherited PanelRigth: TPanel
    Left = 760
    Height = 471
  end
  inherited PanelCenter: TPanel
    Width = 750
    Height = 471
    inherited PanelBotton: TPanel
      Top = 430
      Width = 750
      inherited Panel1: TPanel
        Left = 559
        Width = 191
        inherited BitBtnSair: TBitBtn
          Left = 113
        end
      end
      object BitBtnProcessar: TBitBtn
        Left = 12
        Top = 5
        Width = 90
        Height = 27
        Caption = ' &Atualizar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnProcessarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
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
        Spacing = 0
      end
      object ButtonDesmarcarEmitidoDoc: TButton
        Left = 110
        Top = 5
        Width = 219
        Height = 25
        Caption = 'Desmarcar emitido documento'
        TabOrder = 2
        OnClick = ButtonDesmarcarEmitidoDocClick
      end
    end
    inherited PanelTop: TPanel
      Width = 750
      inherited Bevel1: TBevel
        Width = 750
      end
      object GroupBox1: TGroupBox
        Left = 5
        Top = 0
        Width = 146
        Height = 48
        TabOrder = 0
        object Label3: TLabel
          Left = 71
          Top = 18
          Width = 19
          Height = 13
          Caption = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 18
          Width = 20
          Height = 13
          Caption = 'M'#234's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditAno: TEdit
          Left = 95
          Top = 17
          Width = 43
          Height = 21
          TabOrder = 1
        end
        object EditMes: TEdit
          Left = 31
          Top = 17
          Width = 35
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 154
        Top = -1
        Width = 172
        Height = 50
        TabOrder = 1
        object CheckBox1: TCheckBox
          Left = 10
          Top = 18
          Width = 159
          Height = 17
          Caption = 'Mostrar Somente Pendentes'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object Button1: TButton
        Left = 329
        Top = 7
        Width = 93
        Height = 39
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 441
      Height = 368
      ReadOnly = True
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_status'
          Title.Caption = 'Status'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seq_periodo_fat'
          Title.Caption = 'Seq'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mes'
          Title.Caption = 'M'#234's'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ano'
          Title.Caption = 'Ano'
          Width = 27
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'desdobramento'
          Title.Caption = 'Desd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_base'
          Title.Caption = 'Data Base'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dia_ini'
          Title.Caption = 'Ini'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dia_fim'
          Title.Caption = 'Fim'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tp_pessoa'
          Title.Caption = 'PJ/F'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_tit'
          Title.Caption = 'Qtde T'#237't'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_contrat'
          Title.Caption = 'C'#243'd Contrat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Title.Caption = 'Cidade'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_operador'
          Title.Caption = 'OPerador'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_processamento'
          Title.Caption = 'Ini Processamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim_proc'
          Title.Caption = 'Fim Processamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_finalizacao'
          Title.Caption = 'Conclu'#237'do em'
          Width = 78
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 441
      Top = 62
      Width = 10
      Height = 368
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
    object DBGrid2: TDBGrid
      Left = 451
      Top = 62
      Width = 299
      Height = 368
      Align = alRight
      DataSource = DataSource2
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
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
  inherited DataSource1: TDataSource
    DataSet = ADOQueryPeriodoFat
    Left = 290
  end
  object ADOQueryPeriodoFat: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    AfterScroll = ADOQueryPeriodoFatAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from periodo_fat where '
      'seq_periodo_fat > 0'
      'order by 1 desc')
    Left = 272
    Top = 112
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
  object DataSource2: TDataSource
    DataSet = AdoQueryevento_fat
    Left = 82
    Top = 208
  end
end
