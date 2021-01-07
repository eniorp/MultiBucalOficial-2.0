object FormConsultaOrcamentos: TFormConsultaOrcamentos
  Left = 21
  Top = 24
  ActiveControl = DBGridOrcamentos
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Orçamentos'
  ClientHeight = 430
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = DBGridOrcamentosKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 78
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 2
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 775
      Height = 41
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 664
        Height = 37
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBNavigatorContratante: TDBNavigator
          Left = 0
          Top = 0
          Width = 664
          Height = 37
          DataSource = DataSourceTitulo
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          Hints.Strings = (
            'Primeiro'
            'Anterior'
            'Próximo'
            'Último'
            'Incluir'
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
      object Panel7: TPanel
        Left = 666
        Top = 2
        Width = 107
        Height = 37
        Align = alRight
        TabOrder = 1
        object BitBtnSair: TBitBtn
          Left = 1
          Top = 0
          Width = 106
          Height = 37
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
          TabOrder = 0
          Kind = bkClose
        end
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 44
      Width = 775
      Height = 31
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object LabelProcura: TLabel
        Left = 4
        Top = 13
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelNumero: TLabel
        Left = 580
        Top = 12
        Width = 75
        Height = 13
        Caption = 'LabelNumero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEditNome: TDBEdit
        Left = 51
        Top = 5
        Width = 425
        Height = 21
        DataField = 'Nome'
        DataSource = FormOrcamentos.DataSourceUsuarios
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 78
    Width = 781
    Height = 352
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 2
    ParentColor = True
    TabOrder = 1
    object DBGridOrcamentos: TDBGrid
      Left = 3
      Top = 3
      Width = 775
      Height = 346
      Align = alClient
      Color = clInfoBk
      DataSource = DataSourceTitulo
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridOrcamentosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero'
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
          FieldName = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Dentista'
          Title.Caption = 'Dentista'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
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
          FieldName = 'Numero_Parcelas'
          Title.Caption = 'Parcelas'
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
          FieldName = 'Descricao_Tipo'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DsStatusPagto'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Cadastro'
          Title.Caption = 'Op. Cadastro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end>
    end
  end
  object DataSourceTitulo: TDataSource
    DataSet = QueryOrcamentos
    Left = 40
    Top = 264
  end
  object QueryOrcamentos: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select s.descricao as DsStatusPagto,* from Orcamento o, status_p' +
        'agto s'
      'where Usuario = :Codigo_Usuario'
      'and o.Status_Pagamento = s.codigo'
      'order by Numero')
    Left = 39
    Top = 236
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Codigo_Usuario'
        ParamType = ptInput
      end>
    object QueryOrcamentosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'MULTI.Orcamento.Numero'
    end
    object QueryOrcamentosData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'MULTI.Orcamento.Data_Hora'
    end
    object QueryOrcamentosOperador_Cadastro: TSmallintField
      FieldName = 'Operador_Cadastro'
      Origin = 'MULTI.Orcamento.Operador_Cadastro'
    end
    object QueryOrcamentosUsuario: TIntegerField
      FieldName = 'Usuario'
      Origin = 'MULTI.Orcamento.Usuario'
    end
    object QueryOrcamentosData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.Orcamento.Data'
    end
    object QueryOrcamentosDentista: TIntegerField
      FieldName = 'Dentista'
      Origin = 'MULTI.Orcamento.Dentista'
    end
    object QueryOrcamentosTotal: TFloatField
      FieldName = 'Total'
      Origin = 'MULTI.Orcamento.Total'
      currency = True
    end
    object QueryOrcamentosTotal_Bruto: TFloatField
      FieldName = 'Total_Bruto'
      Origin = 'MULTI.Orcamento.Total_Bruto'
      currency = True
    end
    object QueryOrcamentosTotal_Desconto: TFloatField
      FieldName = 'Total_Desconto'
      Origin = 'MULTI.Orcamento.Total_Desconto'
      currency = True
    end
    object QueryOrcamentosStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MULTI.Orcamento.Status'
    end
    object QueryOrcamentosNumero_Parcelas: TSmallintField
      FieldName = 'Numero_Parcelas'
      Origin = 'MULTI.Orcamento.Numero_Parcelas'
    end
    object QueryOrcamentosData_Conferencia: TDateTimeField
      FieldName = 'Data_Conferencia'
      Origin = 'MULTI.Orcamento.Data_Conferencia'
    end
    object QueryOrcamentosTotal_Dentista: TFloatField
      FieldName = 'Total_Dentista'
      Origin = 'MULTI.Orcamento.Total_Dentista'
      currency = True
    end
    object QueryOrcamentosTotal_Protetico: TFloatField
      FieldName = 'Total_Protetico'
      Origin = 'MULTI.Orcamento.Total_Protetico'
      currency = True
    end
    object QueryOrcamentosTotal_Contas: TFloatField
      FieldName = 'Total_Contas'
      Origin = 'MULTI.Orcamento.Total_Contas'
      currency = True
    end
    object QueryOrcamentosAutorizado: TBooleanField
      FieldName = 'Autorizado'
      Origin = 'MULTI.Orcamento.Autorizado'
    end
    object QueryOrcamentosOperador_Aprovacao: TSmallintField
      FieldName = 'Operador_Aprovacao'
      Origin = 'MULTI.Orcamento.Operador_Aprovacao'
    end
    object QueryOrcamentosTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'MULTI.Orcamento.Tipo'
    end
    object QueryOrcamentosDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'MULTI.Orcamento.Desconto'
      currency = True
    end
    object QueryOrcamentosNome_Dentista: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Dentista'
      LookupDataSet = QueryDentista
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Dentista'
      Size = 30
      Lookup = True
    end
    object QueryOrcamentosNome_Cadastro: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Cadastro'
      LookupDataSet = QueryOperador
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Apelido'
      KeyFields = 'Operador_Cadastro'
      Lookup = True
    end
    object QueryOrcamentosNome_Aprovacao: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Aprovacao'
      LookupDataSet = QueryOperador
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Apelido'
      KeyFields = 'Operador_Aprovacao'
      Size = 25
      Lookup = True
    end
    object QueryOrcamentosDescricao_Tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Tipo'
      LookupDataSet = QueryTipoOrcamento
      LookupKeyFields = 'Tipo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo'
      Size = 15
      Lookup = True
    end
    object QueryOrcamentosDescricao_Status: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Status'
      LookupDataSet = QueryStatus
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Status'
      Lookup = True
    end
    object QueryOrcamentosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Orcamento.Contratante_Titular'
    end
    object QueryOrcamentosContratante: TIntegerField
      FieldName = 'Contratante'
      Origin = 'MULTI.Orcamento.Contratante'
    end
    object QueryOrcamentosStatus_Pagamento: TSmallintField
      FieldName = 'Status_Pagamento'
      Origin = 'MULTI.Orcamento.Status_Pagamento'
    end
    object QueryOrcamentosnro_urgencia: TIntegerField
      FieldName = 'nro_urgencia'
      Origin = 'MULTI.Orcamento.nro_urgencia'
    end
    object QueryOrcamentosData_Status: TDateTimeField
      FieldName = 'Data_Status'
      Origin = 'MULTI.Orcamento.Data_Status'
    end
    object QueryOrcamentosOperador_Status: TIntegerField
      FieldName = 'Operador_Status'
      Origin = 'MULTI.Orcamento.Operador_Status'
    end
    object QueryOrcamentosPericiaFinal: TBooleanField
      FieldName = 'PericiaFinal'
      Origin = 'MULTI.Orcamento.PericiaFinal'
    end
    object QueryOrcamentosDsStatusPagto: TStringField
      FieldName = 'DsStatusPagto'
      Size = 30
    end
  end
  object QueryDentista: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Dentista')
    Left = 70
    Top = 238
    object QueryDentistaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'MULTI.Dentista.Codigo'
    end
    object QueryDentistaNome: TStringField
      FieldName = 'Nome'
      Origin = 'MULTI.Dentista.Nome'
      Size = 40
    end
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Usuario')
    Left = 72
    Top = 266
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
    object QueryUsuariosGrau_Parentesco: TSmallintField
      FieldName = 'Grau_Parentesco'
      Origin = 'MULTI.Usuario.Grau_Parentesco'
    end
    object QueryUsuariosData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
      Origin = 'MULTI.Usuario.Data_Nascimento'
    end
    object QueryUsuariosData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
      Origin = 'MULTI.Usuario.Data_Inclusao'
    end
    object QueryUsuariosData_Exclusao: TDateTimeField
      FieldName = 'Data_Exclusao'
      Origin = 'MULTI.Usuario.Data_Exclusao'
    end
    object QueryUsuariosContratante_Titular: TIntegerField
      FieldName = 'Contratante_Titular'
      Origin = 'MULTI.Usuario.Contratante_Titular'
    end
    object QueryUsuariosVendedor: TIntegerField
      FieldName = 'Vendedor'
      Origin = 'MULTI.Usuario.Vendedor'
    end
    object QueryUsuariosE_Civil: TStringField
      FieldName = 'E_Civil'
      Origin = 'MULTI.Usuario.E_Civil'
      Size = 13
    end
    object QueryUsuariosSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'MULTI.Usuario.Sexo'
      Size = 1
    end
    object QueryUsuariosPrimeiro_Faturamento: TDateTimeField
      FieldName = 'Primeiro_Faturamento'
      Origin = 'MULTI.Usuario.Primeiro_Faturamento'
    end
    object QueryUsuariosUltimo_Faturamento: TDateTimeField
      FieldName = 'Ultimo_Faturamento'
      Origin = 'MULTI.Usuario.Ultimo_Faturamento'
    end
    object QueryUsuariosInclusao_Susep: TDateTimeField
      FieldName = 'Inclusao_Susep'
      Origin = 'MULTI.Usuario.Inclusao_Susep'
    end
    object QueryUsuariosExclusao_Susep: TDateTimeField
      FieldName = 'Exclusao_Susep'
      Origin = 'MULTI.Usuario.Exclusao_Susep'
    end
    object QueryUsuariosUsuario_Anterior: TBooleanField
      FieldName = 'Usuario_Anterior'
      Origin = 'MULTI.Usuario.Usuario_Anterior'
    end
    object QueryUsuariosBonifica_Carencia: TBooleanField
      FieldName = 'Bonifica_Carencia'
      Origin = 'MULTI.Usuario.Bonifica_Carencia'
    end
    object QueryUsuariosSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'MULTI.Usuario.Situacao'
      Size = 50
    end
    object QueryUsuariosOperador_Inclusao: TIntegerField
      FieldName = 'Operador_Inclusao'
      Origin = 'MULTI.Usuario.Operador_Inclusao'
    end
    object QueryUsuariosOperador_Alteracao: TIntegerField
      FieldName = 'Operador_Alteracao'
      Origin = 'MULTI.Usuario.Operador_Alteracao'
    end
    object QueryUsuariosOperador_Exclusao: TIntegerField
      FieldName = 'Operador_Exclusao'
      Origin = 'MULTI.Usuario.Operador_Exclusao'
    end
  end
  object QueryOperador: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from Operador')
    Left = 102
    Top = 236
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
  end
  object QueryTipoOrcamento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from TipoOrcamento')
    Left = 102
    Top = 266
    object QueryTipoOrcamentoTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'MULTI.TipoOrcamento.Tipo'
    end
    object QueryTipoOrcamentoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.TipoOrcamento.Descricao'
    end
    object QueryTipoOrcamentoTipo_Documento: TSmallintField
      FieldName = 'Tipo_Documento'
      Origin = 'MULTI.TipoOrcamento.Tipo_Documento'
    end
    object QueryTipoOrcamentoTipo_Cobranca: TSmallintField
      FieldName = 'Tipo_Cobranca'
      Origin = 'MULTI.TipoOrcamento.Tipo_Cobranca'
    end
  end
  object QueryStatus: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from Status_Orcamento'
      'order by Descricao')
    Left = 132
    Top = 238
    object QueryStatusCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'MULTI.Status_Orcamento.Codigo'
    end
    object QueryStatusDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'MULTI.Status_Orcamento.Descricao'
      Size = 30
    end
  end
end
