inherited FmPesqLogContratante: TFmPesqLogContratante
  Left = 45
  Top = 88
  Width = 866
  Height = 500
  Caption = 'Pesquisa de Log de altera'#231#245'es de contrantante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 466
  end
  inherited PanelRigth: TPanel
    Left = 848
    Height = 466
  end
  inherited PanelCenter: TPanel
    Width = 838
    Height = 466
    inherited PanelBotton: TPanel
      Top = 425
      Width = 838
      inherited Panel1: TPanel
        Left = 746
      end
    end
    inherited PanelTop: TPanel
      Width = 838
      Height = 41
      inherited Bevel1: TBevel
        Top = 31
        Width = 838
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 41
      Width = 838
      Height = 384
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Operador Altera'#231#227'o'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataAlteracao'
          Title.Caption = 'Dt Altera'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF'
          Title.Caption = 'CGC/CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vencimento'
          Title.Caption = 'Vencto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Inclusao'
          Title.Caption = 'Dt Inclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Exclusao'
          Title.Caption = 'Dt Exclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco_Comercial'
          Title.Caption = 'Endere'#231'o Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro_Comercial'
          Title.Caption = 'Bairro Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade_Comercial'
          Title.Caption = 'Cidade Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado_Comercial'
          Title.Caption = 'UF Com'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep_Comercial'
          Title.Caption = 'CEP Com'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco_Residencial'
          Title.Caption = 'Endere'#231'o Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro_Residencial'
          Title.Caption = 'Bairro Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade_Residencial'
          Title.Caption = 'Cidade Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado_Residencial'
          Title.Caption = 'UF Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_Residencial'
          Title.Caption = 'CEP Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone1'
          Title.Caption = 'Fone 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone2'
          Title.Caption = 'Fone 2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fax'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo_Correspondencia'
          Title.Caption = 'Tipo Corresp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vendedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Digito'
          Title.Caption = 'D'#237'gito'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titular_Conta'
          Title.Caption = 'Titular Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contrato_Anterior'
          Title.Caption = 'Contrato Anterior'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Caption = 'Email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Cartao'
          Title.Caption = 'N'#186' Cart'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Seguranca'
          Title.Caption = 'C'#243'd Seg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo_Cancelamento'
          Title.Caption = 'C'#243'd Mot Cancel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situacao'
          Title.Caption = 'Situa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Forma_Cobranca'
          Title.Caption = 'Forma cobran'#231'a'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ultimo_Faturamento'
          Title.Caption = 'Ult Fat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Plano'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grupo_Contratante'
          Title.Caption = 'Grupo Contrat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Inclusao'
          Title.Caption = 'Op Inclus'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Alteracao'
          Title.Caption = 'C'#243'd Op Altera'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Exclusao'
          Title.Caption = 'C'#243'd Op Excl'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'perc_desconto'
          Title.Caption = 'Perc Desc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Empresa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Res'
          Title.Caption = 'Nr Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento_Res'
          Title.Caption = 'Compl Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Com'
          Title.Caption = 'Nr Com'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento_Com'
          Title.Caption = 'Compl Com'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc_boleto'
          Title.Caption = 'Desc Boleto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_cidade_res'
          Title.Caption = 'C'#243'd Cidade Res'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_cidade_com'
          Title.Caption = 'C'#243'd Cidade Com'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'profissao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lg_geraFat'
          Title.Caption = 'Gera Fat?'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lg_restricao'
          Title.Caption = 'Restri'#231#227'o?'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_termino_desconto'
          Title.Caption = 'T'#233'rmino Desconto'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select o.apelido, c.* from contratantelog c, operador o where o.' +
        'codigo = c.operador_alteracao'
      'and c.codigo ='
      '15449'
      'order by dataAlteracao desc')
    Left = 298
    Top = 168
  end
end
