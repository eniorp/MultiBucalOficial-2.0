inherited FmPesqGrupoContrat: TFmPesqGrupoContrat
  Caption = 'Pesquisa por Grupo de contratantes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelTop: TPanel
      object Label1: TLabel
        Left = 12
        Top = 8
        Width = 253
        Height = 13
        Caption = 'Informe o Grupo de Contratante que deseja Pesquisar'
      end
      object Edit1: TEdit
        Left = 8
        Top = 24
        Width = 321
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Button1: TButton
        Left = 339
        Top = 21
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Hint = 'Dê um duplo clique'
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          PickList.Strings = ()
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          PickList.Strings = ()
          Title.Caption = 'Descrição'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Flag_Envio_Ans'
          PickList.Strings = ()
          Title.Caption = 'Flag Envio ANS'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from grupo_contratante where descricao like '
      #39#39)
  end
end
