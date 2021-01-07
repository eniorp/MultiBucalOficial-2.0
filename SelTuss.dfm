inherited FmSelTuss: TFmSelTuss
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Selecione o Codigo TUSS correspondente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelBotton: TPanel
      object Button1: TButton
        Left = 345
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Selecionar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel
      Height = 80
      inherited Bevel1: TBevel
        Top = 70
      end
      object Label1: TLabel
        Left = 56
        Top = 32
        Width = 358
        Height = 16
        Caption = 'SELECIONE O C'#211'DIGO TUSS CORRESPONDENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 8
        Width = 393
        Height = 55
        Caption = 'Informe o c'#243'digo ou descri'#231#227'o do c'#243'digo TUSS'
        TabOrder = 0
        Visible = False
        object Edit1: TEdit
          Left = 16
          Top = 24
          Width = 241
          Height = 21
          TabOrder = 0
        end
        object Button2: TButton
          Left = 264
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 80
      Height = 216
      OnDblClick = Button1Click
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Title.Caption = 'C'#243'd TUSS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 331
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'rol'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'servico_id'
          Title.Caption = 'C'#243'd Servi'#231'o'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preferencial'
          Visible = False
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryTuss
  end
  object ADOQueryTuss: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tuss where servico_id ='
      '0'
      '')
    Left = 177
    Top = 153
  end
end
