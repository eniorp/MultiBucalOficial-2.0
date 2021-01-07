object FormValorProcedimento: TFormValorProcedimento
  Left = 48
  Top = 100
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o Valor Procedimento'
  ClientHeight = 490
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 454
    Width = 738
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel15: TPanel
      Left = 361
      Top = 0
      Width = 377
      Height = 36
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object BitBtnImprimir: TBitBtn
        Left = 193
        Top = 4
        Width = 89
        Height = 32
        Hint = 'Imprimir Cadastro'
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtnImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Spacing = -2
      end
      object BitBtnSair: TBitBtn
        Left = 287
        Top = 4
        Width = 88
        Height = 32
        Hint = 'Sair do Cadastro'
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Kind = bkClose
      end
      object BitBtn1: TBitBtn
        Left = 100
        Top = 4
        Width = 89
        Height = 32
        Hint = 'Imprimir Cadastro'
        Caption = '&Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Spacing = -2
      end
      object BitBtn2: TBitBtn
        Left = 6
        Top = 4
        Width = 89
        Height = 32
        Hint = 'Imprimir Cadastro'
        Caption = 'F2 - &Digitar VR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = DBGridValorProcedimentoDblClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Spacing = -2
      end
    end
    object Panel13: TPanel
      Left = 0
      Top = 0
      Width = 361
      Height = 36
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 1
      object DBNavigatorCadastro: TDBNavigator
        Left = 2
        Top = 2
        Width = 357
        Height = 32
        DataSource = DataSourceValorProcedimento
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
        Align = alClient
        Hints.Strings = (
          'Primeiro'
          'Anterior'
          'Pr'#243'ximo'
          #218'ltimo'
          'Acrescentar'
          'Excluir'
          'Editar'
          'Gravar'
          'Cancelar'
          'Atualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 454
    Align = alClient
    TabOrder = 1
    object DBGridValorProcedimento: TDBGrid
      Left = 1
      Top = 54
      Width = 736
      Height = 399
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceValorProcedimento
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridValorProcedimentoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Tabela'
          Title.Caption = 'Tabela'
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
          FieldName = 'Codigo_Servico'
          Title.Caption = 'Servi'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Servico'
          Title.Caption = 'Descri'#231#227'o Servi'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Cobranca'
          Title.Caption = 'Cobran'#231'a'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_cobranca'
          ReadOnly = True
          Title.Caption = 'Vr Cobran'#231'a'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Dentista'
          Title.Caption = 'Dentista'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Valor_Protetico'
          Title.Caption = 'Pr'#243't'#233'tico'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 736
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 3
        Width = 714
        Height = 45
        Caption = 'Filtros'
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 17
          Width = 36
          Height = 13
          Caption = 'Tabela '
        end
        object Label2: TLabel
          Left = 176
          Top = 17
          Width = 36
          Height = 13
          Caption = 'Servi'#231'o'
        end
        object EditTabela: TEdit
          Left = 64
          Top = 14
          Width = 90
          Height = 21
          Hint = 
            'Informe o c'#243'digo da tabela para Filtrar. Deixe em branco para mo' +
            'strar todas as tabelas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 216
          Top = 14
          Width = 90
          Height = 21
          Hint = 
            'Informe o c'#243'digo do servi'#231'o para Filtrar. Deixe em branco para m' +
            'ostrar todos os servi'#231'os'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Button1: TButton
          Left = 312
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Filtrar'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
    end
  end
  object DataSourceValorProcedimento: TDataSource
    DataSet = QueryValorProcedimento
    Left = 46
    Top = 60
  end
  object QueryValorProcedimento: TQuery
    AfterPost = QueryValorProcedimentoAfterPost
    OnCalcFields = QueryValorProcedimentoCalcFields
    OnNewRecord = QueryValorProcedimentoNewRecord
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      
        'select '#9'* from ValorxProcedimento order by Codigo_Servico, CODIG' +
        'O_TABELA')
    Left = 86
    Top = 182
    object QueryValorProcedimentoCodigo_Tabela: TIntegerField
      FieldName = 'Codigo_Tabela'
      Origin = 'MULTI.ValorxProcedimento.Codigo_Tabela'
    end
    object QueryValorProcedimentoCodigo_Servico: TIntegerField
      FieldName = 'Codigo_Servico'
      Origin = 'MULTI.ValorxProcedimento.Codigo_Servico'
    end
    object QueryValorProcedimentoValor_Cobranca: TFloatField
      FieldName = 'Valor_Cobranca'
      Origin = 'MULTI.ValorxProcedimento.Valor_Cobranca'
      EditFormat = '###,###,##0.00'
    end
    object QueryValorProcedimentoValor_Dentista: TFloatField
      FieldName = 'Valor_Dentista'
      Origin = 'MULTI.ValorxProcedimento.Valor_Dentista'
      currency = True
    end
    object QueryValorProcedimentoValor_Protetico: TFloatField
      FieldName = 'Valor_Protetico'
      Origin = 'MULTI.ValorxProcedimento.Valor_Protetico'
      currency = True
    end
    object QueryValorProcedimentoDescricao_Servico: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Descricao_Servico'
      LookupDataSet = QueryServicos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Servico'
      Size = 30
      Lookup = True
    end
    object QueryValorProcedimentovr_cobranca: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vr_cobranca'
      Calculated = True
    end
  end
  object QueryServicos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Servicos')
    Left = 154
    Top = 134
    object QueryServicosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Servicos.Codigo'
    end
    object QueryServicosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Servicos.Descricao'
      FixedChar = True
      Size = 40
    end
    object QueryServicosCategoria: TIntegerField
      FieldName = 'Categoria'
      Origin = 'MULTI.Servicos.Categoria'
    end
  end
  object QueryPermissoes: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from permissoes'
      'where codigo_operador = :Operador'
      'and codigo_grupo = :Grupo'
      'and Codigo_Procedimento = :Procedimento'
      'and Codigo_SubProcedimento = :SubProcedimento')
    Left = 60
    Top = 118
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Operador'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Procedimento'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SubProcedimento'
        ParamType = ptInput
      end>
    object QueryPermissoesCodigo_Operador: TSmallintField
      FieldName = 'Codigo_Operador'
      Origin = 'MULTI.permissoes.Codigo_Operador'
    end
    object QueryPermissoesCodigo_Grupo: TSmallintField
      FieldName = 'Codigo_Grupo'
      Origin = 'MULTI.permissoes.Codigo_Grupo'
    end
    object QueryPermissoesCodigo_Procedimento: TSmallintField
      FieldName = 'Codigo_Procedimento'
      Origin = 'MULTI.permissoes.Codigo_Procedimento'
    end
    object QueryPermissoesCodigo_SubProcedimento: TSmallintField
      FieldName = 'Codigo_SubProcedimento'
      Origin = 'MULTI.permissoes.Codigo_SubProcedimento'
    end
    object QueryPermissoesSomente_Leitura: TBooleanField
      FieldName = 'Somente_Leitura'
      Origin = 'MULTI.permissoes.Somente_Leitura'
    end
  end
end
