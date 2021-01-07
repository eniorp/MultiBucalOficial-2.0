inherited FmErroAtualizacao: TFmErroAtualizacao
  Width = 700
  Height = 500
  Caption = 'Erro de atualizações de versões'
  OnShow = CheckBox1Click
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 473
  end
  inherited PanelRigth: TPanel
    Left = 682
    Height = 473
  end
  inherited PanelCenter: TPanel
    Width = 672
    Height = 473
    inherited PanelBotton: TPanel
      Top = 432
      Width = 672
      inherited Panel1: TPanel
        Left = 580
      end
    end
    inherited PanelTop: TPanel
      Width = 672
      Height = 40
      inherited Bevel1: TBevel
        Top = 30
        Width = 672
      end
      object CheckBox1: TCheckBox
        Left = 7
        Top = 8
        Width = 201
        Height = 17
        Caption = 'Mostrar somente não revisadas'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 40
      Width = 298
      Height = 392
      Align = alLeft
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NrInstrucao'
          PickList.Strings = ()
          Title.Caption = 'Nº Instrução'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtAtualizacao'
          PickList.Strings = ()
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NmFuncionario'
          PickList.Strings = ()
          Title.Caption = 'Funcionário'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NmMaquina'
          PickList.Strings = ()
          Title.Caption = 'Máquina'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indice'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Revisada'
          PickList.Strings = ()
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 298
      Top = 40
      Width = 10
      Height = 392
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel3: TPanel
      Left = 308
      Top = 40
      Width = 364
      Height = 392
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      object DBRichEdit1: TDBRichEdit
        Left = 0
        Top = 185
        Width = 364
        Height = 207
        Align = alClient
        DataField = 'msgErro'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 0
        Top = 160
        Width = 364
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Erro'
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 364
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Instrução'
        TabOrder = 2
      end
      object DBRichEdit2: TDBRichEdit
        Left = 0
        Top = 15
        Width = 364
        Height = 145
        Align = alTop
        DataField = 'Instrucao'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select * from erro_atualizacao  '
      'where revisada = 0'
      'order by 1')
    Top = 176
  end
end
