inherited FmCadMensagemSMS: TFmCadMensagemSMS
  Height = 526
  Caption = 'Cadastro de mensagens de SMS'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 499
  end
  inherited PanelRigth: TPanel
    Height = 499
  end
  inherited PanelCenter: TPanel
    Height = 499
    inherited PanelBotton: TPanel
      Top = 311
      Height = 188
      object Label1: TLabel [0]
        Left = 6
        Top = 10
        Width = 97
        Height = 13
        Caption = 'Texto da Mensagem'
      end
      inherited Panel1: TPanel
        Height = 188
        inherited BitBtnSair: TBitBtn
          Top = 160
        end
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 28
        Width = 511
        Height = 122
        DataField = 'ds_mensagem'
        DataSource = DataSource1
        MaxLength = 300
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 159
        Width = 264
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
        TabOrder = 2
      end
    end
    inherited PanelTop: TPanel
      Height = 19
      inherited Bevel1: TBevel
        Top = 9
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 19
      Height = 292
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_mensagem'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lg_ativo'
          Title.Caption = 'Ativo?'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_mensagem'
          Title.Caption = 'Descri'#231#227'o Mensagem'
          Width = 292
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_mensagem'
          Title.Caption = 'Texto Mensagem'
          Width = 300
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryMsg
  end
  object ADOQueryMsg: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    OnNewRecord = ADOQueryMsgNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from mensagemSMS order by lg_ativo desc, cd_mensagem')
    Left = 256
    Top = 104
  end
end
