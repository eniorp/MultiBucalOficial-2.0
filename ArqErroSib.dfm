inherited FmCargaErroSib: TFmCargaErroSib
  Width = 721
  Height = 502
  Caption = 'Carga de arquivo de erro retorno SIB'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 468
  end
  inherited PanelRigth: TPanel
    Left = 703
    Height = 468
  end
  inherited PanelCenter: TPanel
    Width = 693
    Height = 468
    inherited PanelBotton: TPanel
      Top = 427
      Width = 693
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
        Left = 512
        Width = 181
        inherited BitBtnSair: TBitBtn
          Left = 105
        end
        object Button2: TButton
          Left = 26
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    inherited PanelTop: TPanel
      Width = 693
      inherited Bevel1: TBevel
        Width = 693
      end
      object Label1: TLabel
        Left = 10
        Top = 8
        Width = 129
        Height = 13
        Caption = 'Arquivo de devolu'#231#227'o CCO'
      end
      object Edit1: TEdit
        Left = 8
        Top = 24
        Width = 321
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object Button1: TButton
        Left = 344
        Top = 23
        Width = 75
        Height = 25
        Hint = 'Abrir Arquivo CCO'
        Caption = 'Processar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 693
      Height = 365
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'tp_detalhe'
          Title.Caption = 'Tipo'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_usuario'
          Title.Caption = 'C'#243'd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_usuario'
          Title.Caption = 'Nome'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_erro'
          Title.Caption = 'Erro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_causa'
          Title.Caption = 'Causa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_erro'
          Title.Caption = 'Campo Erro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_controle'
          Title.Caption = 'Reg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_erro'
          Title.Caption = 'C'#243'd Erro'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'CCO'
          Visible = False
        end
        item
          Expanded = False
          Title.Caption = 'Dig'
          Visible = False
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
      'create table'
      '#temp3'
      '('
      ' cd_usuario varchar(30),'
      ' nm_usuario varchar(60),'
      ' tp_detalhe char(1),'
      ' campo_erro varchar(70) ,'
      ' cd_erro char(3),'
      ' ds_erro varchar(40),'
      ' ds_causa varchar(70),'
      ''
      ''
      ' nr_controle char(2)'
      ')'
      'select * from'
      '#temp3')
    Left = 250
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Extens'#227'o ERR|*.err'
    Left = 466
    Top = 24
  end
end
