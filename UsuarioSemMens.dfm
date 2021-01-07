inherited FMUsuarioSemMens: TFMUsuarioSemMens
  Left = 172
  Top = 55
  Width = 595
  Height = 404
  Caption = 'Usuários sem valor de mensalidade'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 377
  end
  inherited PanelRigth: TPanel
    Left = 577
    Height = 377
  end
  inherited PanelCenter: TPanel
    Width = 567
    Height = 377
    inherited PanelBotton: TPanel
      Top = 293
      Width = 567
      Height = 84
      inherited Panel1: TPanel
        Left = 475
        Height = 84
        inherited BitBtnSair: TBitBtn
          Top = 24
          Height = 40
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 475
        Height = 84
        Align = alClient
        BorderStyle = bsNone
        Color = clMenu
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Lines.Strings = (
          '    Caso haja usuários sem mensalidades, entrar em '
          'contato com o responsável pelo desenvolvimento  do '
          'sistema pois todos os usuários devem ter um  valor '
          'para uma data de validade superior a data de inclu-'
          'são do mesmo')
        ParentFont = False
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 567
      inherited Bevel1: TBevel
        Width = 567
      end
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Data Base'
      end
      object DTPBase: TDateTimePicker
        Left = 65
        Top = 12
        Width = 91
        Height = 21
        CalAlignment = dtaLeft
        Date = 38163.5025508102
        Time = 38163.5025508102
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
        OnChange = DTPBaseChange
      end
      object BitBtn1: TBitBtn
        Left = 172
        Top = 10
        Width = 381
        Height = 25
        Caption = 'Pesquisar por usuários sem mensalidade na data base'
        Default = True
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 567
      Height = 231
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Completo'
          PickList.Strings = ()
          Title.Caption = 'Cód Compl'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Nascimento'
          PickList.Strings = ()
          Title.Caption = 'Nascimento'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Inclusao'
          PickList.Strings = ()
          Title.Caption = 'Inclusão'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Exclusao'
          PickList.Strings = ()
          Title.Caption = 'Exclusão'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contratante_Titular'
          PickList.Strings = ()
          Title.Caption = 'Contratante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Mae'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_Civil'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo_Cancelamento'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vendedor'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexo'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grau_Parentesco'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Inclusao_Susep'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Exclusao_Susep'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alteracao_Susep'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alterado'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situacao'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Inclusao'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Alteracao'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Operador_Exclusao'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Manutencao'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PIS_PASEP'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo'
          PickList.Strings = ()
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Digito'
          PickList.Strings = ()
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      'select * from usuario u'
      'where not exists'
      '(select * from mensalidade_usuario m'
      ' where     u.codigo = m.cd_usuario '
      '       and u.digito = m.dg_usuario'
      '       and :data between dtinicio and dtFim '
      '       )'
      'and :data >= data_inclusao'
      ''
      '--tb mensalidade_usuario')
    ParamData = <
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
        Value = '24/06/2004'
      end
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
end
