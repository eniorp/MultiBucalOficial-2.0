inherited FmPesqLogAltUsu: TFmPesqLogAltUsu
  Width = 803
  Height = 482
  Caption = 'Pesquisa de log de altera'#231#245'es de cadastro de usu'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 448
  end
  inherited PanelRigth: TPanel
    Left = 785
    Height = 448
  end
  inherited PanelCenter: TPanel
    Width = 775
    Height = 448
    inherited PanelBotton: TPanel
      Top = 407
      Width = 775
      inherited Panel1: TPanel
        Left = 683
      end
    end
    inherited PanelTop: TPanel
      Width = 775
      Height = 28
      inherited Bevel1: TBevel
        Top = 18
        Width = 775
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 28
      Width = 775
      Height = 379
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Respons'#225'vel Alt'
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
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Digito'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grau_Parentesco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Exclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contratante_Titular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vendedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_Civil'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Inclusao_Susep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Exclusao_Susep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alteracao_Susep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alterado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Alteracao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Exclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Manutencao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Mae'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PIS_PASEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo_Cancelamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Mens'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtReinclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_alteracao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_ans'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_motivo_inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Completo'
          Title.Caption = 'C'#243'd completo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_migracao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cei'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_exclusao_orig'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NrPlanoOUtOp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dg_cco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'novo_cod_usu_plano'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'reinclusao_sib'
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
      
        'select o.apelido, u.* from usuariolog u, operador o where o.codi' +
        'go = u.operador_alteracao'
      'and u.codigo_completo ='
      '154490'
      'order by dataAlteracao desc')
    Left = 314
    Top = 144
  end
end
