inherited FmSelecionaNovoTitular: TFmSelecionaNovoTitular
  Width = 441
  Caption = 'Seleciona Novo Titular'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 423
  end
  inherited PanelCenter: TPanel
    Width = 413
    inherited PanelBotton: TPanel
      Width = 413
      inherited Panel1: TPanel
        Left = 160
        Width = 253
        inherited BitBtnSair: TBitBtn
          Left = 169
        end
        object Button1: TButton
          Left = 40
          Top = 8
          Width = 119
          Height = 25
          Caption = 'Eleger Novo Titular'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 413
      inherited Bevel1: TBevel
        Width = 413
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 381
        Height = 13
        Caption = 
          'O usu'#225'rio titular desse cntratante est'#225' sendo exclu'#237'do, voc'#234' dev' +
          'e '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 57
        Top = 28
        Width = 269
        Height = 13
        Caption = 'eleger novo titular para concluir essa opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 413
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_completo'
          Title.Caption = 'C'#243'digo'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 227
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'CPF'
          Width = 90
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
      'select codigo_completo, nome,cpf from usuario where codigo ='
      '0'
      
        'and data_exclusao is null and grau_parentesco <> 1 and (situacao' +
        ' <> '#39'Titular'#39' or situacao is null)')
    Left = 274
    Top = 208
  end
end
