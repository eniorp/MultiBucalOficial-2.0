inherited FmTitBaixSemRecibo: TFmTitBaixSemRecibo
  Left = 0
  Top = 23
  Width = 550
  Caption = 'T'#237'tulos baixados sem recibo'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 524
  end
  inherited PanelCenter: TPanel
    Width = 514
    inherited PanelBotton: TPanel
      Width = 514
      inherited Panel1: TPanel
        Left = 310
        Width = 204
        inherited BitBtnSair: TBitBtn
          Left = 121
          Top = 12
        end
        object BitBtn1: TBitBtn
          Left = 41
          Top = 12
          Width = 75
          Height = 25
          Caption = '&Imprimir'
          Enabled = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
      object CheckBox1: TCheckBox
        Left = 5
        Top = 12
        Width = 125
        Height = 15
        Caption = '&Selecionar tudo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox1Click
      end
    end
    inherited PanelTop: TPanel
      Width = 514
      Height = 49
      inherited Bevel1: TBevel
        Top = 39
        Width = 514
      end
      object Label1: TLabel
        Left = 7
        Top = 13
        Width = 55
        Height = 13
        Caption = 'Contratante'
      end
      object Label2: TLabel
        Left = 151
        Top = 13
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Edit1: TEdit
        Left = 66
        Top = 9
        Width = 71
        Height = 21
        TabOrder = 0
      end
      object MaskEdit1: TMaskEdit
        Left = 184
        Top = 8
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object Button1: TButton
        Left = 275
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 49
      Width = 514
      Height = 246
      DataSource = nil
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero_Titulo'
          Title.Caption = 'T'#237'tulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desdobramento'
          Title.Caption = 'Desd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Caption = 'Vencto'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Pago'
          Title.Caption = 'Vr Pago'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Pagamento'
          Title.Caption = 'Dt Pagto'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Pago'
          Width = 90
          Visible = True
        end>
    end
    object ListView: TListView
      Left = 0
      Top = 49
      Width = 514
      Height = 246
      Cursor = crHandPoint
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          AutoSize = True
          Caption = 'T'#237'tulo'
        end
        item
          AutoSize = True
          Caption = 'Desd'
        end
        item
          AutoSize = True
          Caption = 'Vencto'
        end
        item
          Alignment = taRightJustify
          AutoSize = True
          Caption = 'Valor'
        end
        item
          Alignment = taRightJustify
          AutoSize = True
          Caption = 'Vr Pago'
        end
        item
          AutoSize = True
          Caption = 'Dt Pagto'
        end>
      FlatScrollBars = True
      TabOrder = 3
      ViewStyle = vsReport
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      'select * from'
      'Receber r,'
      'registro_baixa rb'
      ''
      'where r.Codigo_Contratante ='
      '15449'
      '   and rb.dtbaixa between'
      #39#39' and '#39#39
      '   and rb.numero_titulo = r.numero_titulo'
      '   and rb.desdobramento = r.desdobramento'
      ''
      'and r.Data_Pagamento is not null'
      'and (not exists'
      '(select * from i_recibo i, recibo rec where'
      '     rec.nr_recibo   = i.nr_recibo'
      ' and rec.status      = '#39'A'#39
      ' and i.numero_titulo = r.numero_titulo'
      ' and i.desdobramento = r.desdobramento))'
      ''
      'order by Data_Pagamento desc'
      ' ')
    Left = 218
    Top = 104
  end
  inherited DataSource1: TDataSource
    Left = 114
    Top = 120
  end
end
