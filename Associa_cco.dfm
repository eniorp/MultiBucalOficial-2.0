inherited FmAssociaCCO: TFmAssociaCCO
  Left = 354
  Top = 97
  Width = 618
  Height = 477
  Caption = 'Associa'#231#227'o do C'#243'digo CCO - SIB - ANS'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 443
  end
  inherited PanelRigth: TPanel
    Left = 600
    Height = 443
  end
  inherited PanelCenter: TPanel
    Width = 590
    Height = 443
    inherited PanelBotton: TPanel
      Top = 402
      Width = 590
      object Labemmsg: TLabel [0]
        Left = 16
        Top = 16
        Width = 3
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 360
        Width = 230
        inherited BitBtnSair: TBitBtn
          Left = 153
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 590
      Height = 97
      inherited Bevel1: TBevel
        Top = 87
        Width = 590
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 129
        Height = 13
        Caption = 'Arquivo de devolu'#231#227'o CCO'
      end
      object Edit1: TEdit
        Left = 8
        Top = 32
        Width = 321
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object Button1: TButton
        Left = 336
        Top = 32
        Width = 75
        Height = 25
        Hint = 'Abrir Arquivo CCO'
        Caption = 'Processar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 97
      Width = 590
      Height = 305
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cco'
          Title.Caption = 'C.C.O.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dg_cco'
          Title.Caption = 'D'#237'gito'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Extens'#227'o CCO|*.cco'
    Left = 434
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'create table '
      '#cco '
      '(codigo int, nome varchar(60), cco varchar(10),dg_cco char(2))'
      'select * from '
      '#cco')
    Left = 418
    Top = 224
  end
end
