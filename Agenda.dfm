object FormAgenda: TFormAgenda
  Left = 17
  Top = 101
  ActiveControl = DBEditCodigoContratante
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contatos Agendados'
  ClientHeight = 412
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 207
    Width = 768
    Height = 205
    Align = alClient
    TabOrder = 2
    object Label67: TLabel
      Left = 8
      Top = 42
      Width = 76
      Height = 13
      Caption = 'Data Contato'
      FocusControl = DBEditDataContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label68: TLabel
      Left = 90
      Top = 42
      Width = 28
      Height = 13
      Caption = 'Hora'
      FocusControl = DBEditHoraContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label69: TLabel
      Left = 8
      Top = 80
      Width = 33
      Height = 13
      Caption = 'Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label70: TLabel
      Left = 136
      Top = 42
      Width = 66
      Height = 13
      Caption = 'Profissional'
      FocusControl = DBEditHoraContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label46: TLabel
      Left = 302
      Top = 42
      Width = 75
      Height = 13
      Caption = 'Data Agenda'
      FocusControl = DBEditDataAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 430
      Top = 42
      Width = 26
      Height = 13
      Caption = 'Tipo'
      FocusControl = DBEditDataAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 67
      Height = 13
      Caption = 'Contratante'
      FocusControl = DBEditCodigoContratante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 156
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Nome'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 88
      Top = 5
      Width = 24
      Height = 13
      Caption = 'Dig.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 79
      Top = 24
      Width = 5
      Height = 13
      Caption = '-'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 386
      Top = 42
      Width = 28
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 575
      Top = 41
      Width = 46
      Height = 13
      Caption = 'Liga'#231#227'o'
      FocusControl = DBEditDataAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditDataContato: TDBEdit
      Left = 8
      Top = 56
      Width = 79
      Height = 21
      DataField = 'Data_Contato'
      DataSource = DataSourceContato
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditHoraContato: TDBEdit
      Left = 90
      Top = 56
      Width = 42
      Height = 21
      DataField = 'Hora_Contato'
      DataSource = DataSourceContato
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditDataAgenda: TDBEdit
      Left = 302
      Top = 56
      Width = 79
      Height = 21
      DataField = 'Data_Agenda'
      DataSource = DataSourceContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBMemoTexto: TDBMemo
      Left = 8
      Top = 94
      Width = 743
      Height = 68
      DataField = 'Texto_Contato'
      DataSource = DataSourceContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEditNomeOperador: TDBEdit
      Left = 136
      Top = 56
      Width = 162
      Height = 21
      DataField = 'Nome_Operador'
      DataSource = DataSourceContato
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBoxTipo: TDBLookupComboBox
      Left = 429
      Top = 56
      Width = 142
      Height = 21
      DataField = 'Tipo'
      DataSource = DataSourceContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSourceTipoContato
      ParentFont = False
      TabOrder = 4
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditCodigoContratante: TDBEdit
      Left = 8
      Top = 18
      Width = 66
      Height = 21
      DataField = 'Codigo_Contratante'
      DataSource = DataSourceContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object BitBtnPesquisar: TBitBtn
      Left = 124
      Top = 19
      Width = 24
      Height = 21
      TabOrder = 10
      OnClick = BitBtnPesquisarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object DBEditDigito: TDBEdit
      Left = 88
      Top = 18
      Width = 31
      Height = 21
      DataField = 'Digito_Usuario'
      DataSource = DataSourceContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = DBEditDigitoExit
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBEditNome: TDBEdit
      Left = 156
      Top = 18
      Width = 437
      Height = 21
      DataField = 'Nome'
      DataSource = DataSourceContato
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object GroupBoxPesquisa: TGroupBox
      Left = 624
      Top = 1
      Width = 142
      Height = 45
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      Visible = False
      object Label5: TLabel
        Left = 6
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MaskEditData: TMaskEdit
        Left = 42
        Top = 16
        Width = 90
        Height = 21
        EditMask = '!90/90/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MaskEditDataExit
        OnKeyDown = DBEditCodigoContratanteKeyDown
      end
    end
    object DBEditHoraSaida: TDBEdit
      Left = 384
      Top = 56
      Width = 42
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'Hora_Agenda'
      DataSource = DataSourceContato
      ParentBiDiMode = False
      TabOrder = 3
      OnKeyDown = DBEditCodigoContratanteKeyDown
    end
    object DBLookupComboBoxTp_Ligacao: TDBLookupComboBox
      Left = 575
      Top = 55
      Width = 176
      Height = 21
      DataField = 'Ligacao'
      DataSource = DataSourceContato
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource_Tipo_Ligacao
      TabOrder = 12
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 207
    Align = alTop
    TabOrder = 0
    object DBGridContato: TDBGrid
      Left = 1
      Top = 1
      Width = 766
      Height = 205
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceContato
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Data_Agenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Data Agenda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora_Agenda'
          Title.Caption = 'Hora Agenda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Contratante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Operador'
          Title.Caption = 'Operador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Contato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora_Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Hora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 377
    Width = 768
    Height = 35
    TabOrder = 1
    object Panel4: TPanel
      Left = 491
      Top = 2
      Width = 274
      Height = 33
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtnSair: TBitBtn
        Left = 184
        Top = 0
        Width = 90
        Height = 33
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Kind = bkClose
      end
      object BitBtnProcura: TBitBtn
        Left = 94
        Top = 0
        Width = 90
        Height = 33
        Caption = '&Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtnProcuraClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000070000000007777777000000070FFFFFFF07777700000000070F7
          7777F07777000000000070F77777F07770007000000070F77780008700077000
          000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
          08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
          EFEFFF0770777000000077780000000708777000000077770077777807777000
          0000777770077700777770000000777777800087777770000000777777777777
          777770000000}
      end
      object BitBtnRelatorio: TBitBtn
        Left = 3
        Top = 0
        Width = 90
        Height = 33
        Caption = '&Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
    end
    object Panel5: TPanel
      Left = 1
      Top = 2
      Width = 492
      Height = 33
      BevelOuter = bvNone
      TabOrder = 1
      object DBNavigatorAgenda: TDBNavigator
        Left = 0
        Top = 0
        Width = 492
        Height = 33
        DataSource = DataSourceContato
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object QueryContato: TQuery
    AfterInsert = QueryContatoAfterInsert
    BeforePost = QueryContatoBeforePost
    AfterPost = QueryContatoAfterPost
    OnCalcFields = QueryContatoCalcFields
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Contato'
      'where Data_Agenda = :Agenda'
      
        'order by Data_Agenda, Hora_Agenda, Tipo, Codigo_Contratante, Dig' +
        'ito_Usuario ')
    Left = 10
    Top = 48
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Agenda'
        ParamType = ptInput
      end>
    object QueryContatoNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 40
      Calculated = True
    end
    object QueryContatoIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Contato.Incremento'
    end
    object QueryContatoData_Contato: TDateTimeField
      FieldName = 'Data_Contato'
      Origin = 'MULTI.Contato.Data_Contato'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryContatoHora_Contato: TDateTimeField
      FieldName = 'Hora_Contato'
      Origin = 'MULTI.Contato.Hora_Contato'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object QueryContatoCodigo_Contratante: TIntegerField
      FieldName = 'Codigo_Contratante'
      Origin = 'MULTI.Contato.Codigo_Contratante'
    end
    object QueryContatoDigito_Usuario: TSmallintField
      FieldName = 'Digito_Usuario'
      Origin = 'MULTI.Contato.Digito_Usuario'
    end
    object QueryContatoData_Agenda: TDateTimeField
      FieldName = 'Data_Agenda'
      Origin = 'MULTI.Contato.Data_Agenda'
      EditMask = '!90/90/0000;1;_'
    end
    object QueryContatoHora_Agenda: TDateTimeField
      FieldName = 'Hora_Agenda'
      Origin = 'MULTI.Contato.Hora_Agenda'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object QueryContatoOperador: TIntegerField
      FieldName = 'Operador'
      Origin = 'MULTI.Contato.Operador'
    end
    object QueryContatoTexto_Contato: TMemoField
      FieldName = 'Texto_Contato'
      Origin = 'MULTI.Contato.Texto_Contato'
      BlobType = ftMemo
      Size = 1
    end
    object QueryContatoTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'MULTI.Contato.Tipo'
    end
    object QueryContatoNome_Operador: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Operador'
      LookupDataSet = QueryOperador
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Apelido'
      KeyFields = 'Operador'
      Lookup = True
    end
    object QueryContatoDescricao_Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Tipo'
      LookupDataSet = QueryTipoContato
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo'
      Lookup = True
    end
    object QueryContatoHora_Alteracao: TDateTimeField
      FieldName = 'Hora_Alteracao'
      Origin = 'MULTI.Contato.Hora_Alteracao'
    end
    object QueryContatoData_Alteracao: TDateTimeField
      FieldName = 'Data_Alteracao'
      Origin = 'MULTI.Contato.Data_Alteracao'
    end
    object QueryContatoOperador_Alteracao: TIntegerField
      FieldName = 'Operador_Alteracao'
      Origin = 'MULTI.Contato.Operador_Alteracao'
    end
    object QueryContatoLigacao: TIntegerField
      FieldName = 'Ligacao'
      Origin = 'MULTI.Contato.Ligacao'
    end
  end
  object QueryOperador: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Operador')
    Left = 64
    Top = 49
    object QueryOperadorCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Operador.Codigo'
    end
    object QueryOperadorNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Operador.Nome'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorApelido: TStringField
      FieldName = 'Apelido'
      Origin = 'MULTI.Operador.Apelido'
    end
    object QueryOperadorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'MULTI.Operador.Endereco'
      FixedChar = True
      Size = 40
    end
    object QueryOperadorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'MULTI.Operador.Bairro'
      FixedChar = True
    end
    object QueryOperadorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'MULTI.Operador.Cidade'
      FixedChar = True
      Size = 30
    end
    object QueryOperadorUF: TStringField
      FieldName = 'UF'
      Origin = 'MULTI.Operador.UF'
      FixedChar = True
      Size = 2
    end
    object QueryOperadorCep: TStringField
      FieldName = 'Cep'
      Origin = 'MULTI.Operador.Cep'
      FixedChar = True
      Size = 9
    end
    object QueryOperadorFone: TStringField
      FieldName = 'Fone'
      Origin = 'MULTI.Operador.Fone'
      FixedChar = True
      Size = 18
    end
    object QueryOperadorSenha: TStringField
      FieldName = 'Senha'
      Origin = 'MULTI.Operador.Senha'
      Size = 10
    end
  end
  object QueryTipoContato: TQuery
    Active = True
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Tipo_Contato'
      'order by Descricao')
    Left = 92
    Top = 49
    object QueryTipoContatoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Tipo_Contato.Codigo'
    end
    object QueryTipoContatoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Tipo_Contato.Descricao'
      Size = 30
    end
  end
  object QueryContratanteAuxiliar: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Nome from Contratante'
      'where Nome= :Nome')
    Left = 120
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'Nome'
        ParamType = ptInput
      end>
    object QueryContratanteAuxiliarCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Contratante.Codigo'
    end
    object QueryContratanteAuxiliarNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Contratante.Nome'
      Size = 50
    end
  end
  object DataSourceContato: TDataSource
    DataSet = QueryContato
    Left = 10
    Top = 76
  end
  object DataSourceTipoContato: TDataSource
    DataSet = QueryTipoContato
    Left = 91
    Top = 77
  end
  object DataSourceContratante: TDataSource
    DataSet = QueryContratanteAuxiliar
    Left = 120
    Top = 77
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select Codigo, Digito, Nome from Usuario'
      'where Codigo = :Codigo'
      'and Digito = :Digito')
    Left = 148
    Top = 49
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Digito'
        ParamType = ptInput
      end>
    object QueryUsuariosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Usuario.Codigo'
    end
    object QueryUsuariosDigito: TIntegerField
      FieldName = 'Digito'
      Origin = 'MULTI.Usuario.Digito'
    end
    object QueryUsuariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Usuario.Nome'
      Size = 40
    end
  end
  object QueryContatosAux: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Contato'
      'where data_agenda =  :Data'
      'and Hora_agenda =  convert(datetime, '#39'1899/12/30 '#39' + :Hora,20)  '
      'and ((tipo = 2) or (tipo = 4))'
      '')
    Left = 176
    Top = 49
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Hora'
        ParamType = ptInput
      end>
  end
  object QueryTipo_Ligacao: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Tipo_Ligacao'
      'order by Descricao')
    Left = 204
    Top = 49
    object QueryTipo_LigacaoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Tipo_Ligacao.Codigo'
    end
    object QueryTipo_LigacaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Tipo_Ligacao.Descricao'
    end
  end
  object DataSource_Tipo_Ligacao: TDataSource
    DataSet = QueryTipo_Ligacao
    Left = 203
    Top = 77
  end
end
