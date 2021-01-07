inherited FmPrecoXusuarioDtUsu: TFmPrecoXusuarioDtUsu
  Caption = 
    'Valor  de mensalidade por usuário(Data base para o aumento -> Da' +
    'ta de Inclusão do usuário)'
  PopupMenu = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelTop: TPanel
      Color = clGray
    end
    inherited PageControl1: TPageControl
      inherited TbsValores: TTabSheet
        inherited DBGrid2: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              PickList.Strings = ()
              Title.Caption = 'Nome'
              Width = 213
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_usuario'
              PickList.Strings = ()
              Title.Caption = 'Cód'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dg_usuario'
              PickList.Strings = ()
              Title.Caption = 'DG'
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtinicio'
              PickList.Strings = ()
              Title.Caption = 'Dt Ini'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfim'
              PickList.Strings = ()
              Title.Caption = 'Dt Fim'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              PickList.Strings = ()
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nascimento'
              PickList.Strings = ()
              Title.Caption = 'Nasc'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_inclusao'
              PickList.Strings = ()
              Title.Caption = 'Inclusão Usu'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_exclusao'
              PickList.Strings = ()
              Title.Caption = 'Exclusão'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_acrescimo'
              PickList.Strings = ()
              Title.Caption = 'Id Acréscimo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grau_parentesco'
              PickList.Strings = ()
              Title.Caption = 'Grau Parentesco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VrBruto'
              PickList.Strings = ()
              Title.Caption = 'Vr Bruto'
              Visible = True
            end>
        end
        inherited Panel2: TPanel
          Top = 32
          Caption = 'Este Form herda do FmPrecoXUsuario'
        end
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      ' set dateformat dmy select  c.nome as nmConratante,'
      #9'u.nome'#9#9' ,'
      #9'u.codigo_completo,'
      #9'm.* '#9#9' ,'
      #9'u.data_nascimento,'
      #9'u.data_inclusao,'
      #9'u.data_exclusao,'
      '        p.descricao as DescPlano,'
      #9'p.codigo as CodPlano,'
      '         u.grau_parentesco'
      'from'
      #9'contratante c'
      'left join plano p'
      'on'
      '   p.codigo = c.plano'
      ''
      'left join usuario u'
      'on'
      #9'c.codigo = u.contratante_titular'
      #9'and u.data_exclusao is null'
      ''
      'left join mensalidade_usuario_dt_usu m'
      'on'
      #9'  u.codigo = m.cd_usuario'
      '      and u.digito = m.dg_usuario'
      ''
      'where c.codigo = :cdContratante'
      ''
      ''
      'order by'
      #9'u.codigo,'
      '        u.digito,'
      #9'u.nome,'
      #9'm.dtinicio desc')
  end
  inherited SpVrMensalidade: TStoredProc
    StoredProcName = 'SpVrMensalidade_dt_usu'
    Left = 482
  end
end
