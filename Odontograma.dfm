object FormOdontograma: TFormOdontograma
  Left = 44
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Odontograma do Or'#231'amento'
  ClientHeight = 236
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 203
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object DBGridOdontograma: TDBGrid
      Left = 2
      Top = 2
      Width = 743
      Height = 199
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceOdontograma
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridOdontogramaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Servico'
          Title.Caption = 'Servi'#231'o'
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
          FieldName = 'Dente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Face'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Dente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Descricao'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 302
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end>
    end
    object PanelMensagem: TPanel
      Left = 160
      Top = 32
      Width = 433
      Height = 153
      Color = clRed
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 41
        Top = 10
        Width = 339
        Height = 24
        Caption = 'Esse procedimento foi executado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 42
        Width = 409
        Height = 24
        Caption = ' anteriormente para este dente e face(s).'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelData: TLabel
        Left = 139
        Top = 72
        Width = 53
        Height = 24
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtnOk: TBitBtn
        Left = 125
        Top = 113
        Width = 75
        Height = 25
        Caption = 'OK'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnOkClick
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
      object BitBtnImprimir: TBitBtn
        Left = 234
        Top = 113
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
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
        NumGlyphs = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 203
    Width = 747
    Height = 33
    Align = alBottom
    TabOrder = 1
    object DBNavigatorOdontograma: TDBNavigator
      Left = 2
      Top = 2
      Width = 664
      Height = 30
      DataSource = DataSourceOdontograma
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      TabOrder = 0
    end
    object BitBtnSair: TBitBtn
      Left = 667
      Top = 2
      Width = 78
      Height = 30
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
      OnClick = BitBtnSairClick
      Kind = bkClose
    end
  end
  object QueryOdontograma: TQuery
    BeforePost = QueryOdontogramaBeforePost
    AfterPost = QueryOdontogramaAfterPost
    OnCalcFields = QueryOdontogramaCalcFields
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Odontograma'
      'where Orcamento = :Numero_Orcamento'
      'order by Orcamento')
    Left = 7
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Numero_Orcamento'
        ParamType = ptInput
      end>
    object QueryOdontogramaOrcamento: TIntegerField
      FieldName = 'Orcamento'
      Origin = 'MULTI.Odontograma.Orcamento'
    end
    object QueryOdontogramaServico: TSmallintField
      FieldName = 'Servico'
      Origin = 'MULTI.Odontograma.Servico'
    end
    object QueryOdontogramaDente: TSmallintField
      FieldName = 'Dente'
      Origin = 'MULTI.Odontograma.Dente'
    end
    object QueryOdontogramaFace: TStringField
      FieldName = 'Face'
      Origin = 'MULTI.Odontograma.Face'
      Size = 10
    end
    object QueryOdontogramaIncremento: TIntegerField
      FieldName = 'Incremento'
      Origin = 'MULTI.Odontograma.Incremento'
    end
    object QueryOdontogramaQuantidade: TSmallintField
      FieldName = 'Quantidade'
      Origin = 'MULTI.Odontograma.Quantidade'
    end
    object QueryOdontogramaUsuario: TIntegerField
      FieldName = 'Usuario'
      Origin = 'MULTI.Odontograma.Usuario'
    end
    object QueryOdontogramaData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Odontograma.Data'
    end
    object QueryOdontogramaDescricao_Servico: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Servico'
      LookupDataSet = FormOrcamentos.QueryServicos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Servico'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object QueryOdontogramaDescricao_Dente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descricao_Dente'
      Size = 100
      Calculated = True
    end
    object QueryOdontogramaincremento_item_orc: TIntegerField
      FieldName = 'incremento_item_orc'
      Origin = 'MULTI.Odontograma.incremento_item_orc'
    end
  end
  object DataSourceOdontograma: TDataSource
    DataSet = QueryOdontograma
    OnUpdateData = DataSourceOdontogramaUpdateData
    Left = 7
    Top = 100
  end
  object QueryDenteXFaces: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from DentesxFaces'
      'where Codigo_Dente = :Dente'
      'and Codigo_Face = :Face'
      '')
    Left = 35
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'Dente'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'Face'
        ParamType = ptInput
      end>
    object QueryDenteXFacesCodigo_Dente: TSmallintField
      FieldName = 'Codigo_Dente'
      Origin = 'MULTI.DentesxFaces.Codigo_Dente'
    end
    object QueryDenteXFacesCodigo_Face: TStringField
      FieldName = 'Codigo_Face'
      Origin = 'MULTI.DentesxFaces.Codigo_Face'
      Size = 10
    end
    object QueryDenteXFacesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.DentesxFaces.Descricao'
      Size = 80
    end
  end
  object QueryOdontogramaAux: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select Odontograma.*, Orcamento.Dentista, Usuario.Nome, Dentista' +
        '.nome, Servicos.Descricao from odontograma'
      
        'left join Orcamento on (Orcamento.Numero = Odontograma.Orcamento' +
        ')'
      
        'left join usuario on (usuario.codigo_completo = Odontograma.Usua' +
        'rio)'
      'left join Dentista on (Dentista.Codigo = Orcamento.Dentista)'
      'left join Servicos on (Servicos.Codigo = Odontograma.Servico)'
      'where Odontograma.usuario = :Usuario'
      'and Odontograma.servico = :Servico'
      'and Odontograma.dente = :Dente'
      'and Odontograma.face = :Face'
      'and Orcamento.autorizado = 1')
    Left = 63
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Usuario'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Servico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Dente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Face'
        ParamType = ptInput
      end>
    object QueryOdontogramaAuxOrcamento: TIntegerField
      FieldName = 'Orcamento'
    end
    object QueryOdontogramaAuxIncremento: TIntegerField
      FieldName = 'Incremento'
    end
    object QueryOdontogramaAuxServico: TSmallintField
      FieldName = 'Servico'
    end
    object QueryOdontogramaAuxDente: TSmallintField
      FieldName = 'Dente'
    end
    object QueryOdontogramaAuxFace: TStringField
      FieldName = 'Face'
      Size = 10
    end
    object QueryOdontogramaAuxQuantidade: TSmallintField
      FieldName = 'Quantidade'
    end
    object QueryOdontogramaAuxUsuario: TIntegerField
      FieldName = 'Usuario'
    end
    object QueryOdontogramaAuxData: TDateTimeField
      FieldName = 'Data'
    end
    object QueryOdontogramaAuxDentista: TIntegerField
      FieldName = 'Dentista'
    end
    object QueryOdontogramaAuxNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object QueryOdontogramaAuxnome_1: TStringField
      FieldName = 'nome_1'
      Size = 40
    end
    object QueryOdontogramaAuxDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 40
    end
  end
  object QueryPgDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Itens_PagDentista'
      'where orcamento = :Orcamento'
      'and servico = :Servico')
    Left = 35
    Top = 100
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Orcamento'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Servico'
        ParamType = ptInput
      end>
  end
end
