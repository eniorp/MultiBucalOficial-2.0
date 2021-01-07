inherited FmConsEventoOdonto: TFmConsEventoOdonto
  Left = 201
  Top = 215
  Width = 548
  Height = 387
  Caption = 'Consulta de Eventos autorizadosdo or'#231'amento/Odontograma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 353
  end
  inherited PanelRigth: TPanel
    Left = 530
    Height = 353
  end
  inherited PanelCenter: TPanel
    Width = 520
    Height = 353
    inherited PanelBotton: TPanel
      Top = 216
      Width = 520
      Height = 137
      object Label4: TLabel [0]
        Left = 14
        Top = 20
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Bevel3: TBevel [1]
        Left = 0
        Top = 0
        Width = 520
        Height = 11
        Align = alTop
        Shape = bsBottomLine
      end
      inherited Panel1: TPanel
        Left = 0
        Top = 104
        Width = 520
        Height = 33
        Align = alBottom
        object Bevel2: TBevel [0]
          Left = 0
          Top = 0
          Width = 520
          Height = 3
          Align = alTop
          Shape = bsBottomLine
        end
        inherited BitBtnSair: TBitBtn
          Left = 443
          Top = 5
          Height = 24
        end
      end
      object DBMemo1: TDBMemo
        Left = 66
        Top = 16
        Width = 447
        Height = 80
        DataField = 'tx_evento'
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    inherited PanelTop: TPanel
      Width = 520
      Height = 67
      inherited Bevel1: TBevel
        Top = 57
        Width = 520
      end
      object LabelNumero: TLabel
        Left = 9
        Top = 5
        Width = 67
        Height = 13
        Caption = 'N'#186' Or'#231'amento'
      end
      object EditProcura: TEdit
        Left = 9
        Top = 19
        Width = 76
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 7
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditProcuraKeyPress
      end
      object GroupBox1: TGroupBox
        Left = 135
        Top = 3
        Width = 378
        Height = 48
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 56
          Height = 13
          Caption = 'Usu'#225'rio : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 30
          Width = 60
          Height = 13
          Caption = 'Dentista : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 272
          Top = 30
          Width = 40
          Height = 13
          Caption = 'Data : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelUsu: TLabel
          Left = 64
          Top = 10
          Width = 3
          Height = 13
        end
        object LabelDent: TLabel
          Left = 65
          Top = 30
          Width = 3
          Height = 13
        end
        object LabelDt: TLabel
          Left = 319
          Top = 27
          Width = 3
          Height = 13
        end
      end
      object Button1: TButton
        Left = 92
        Top = 19
        Width = 34
        Height = 22
        Caption = 'OK'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 67
      Width = 520
      Height = 149
      Columns = <
        item
          Expanded = False
          FieldName = 'orcamento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tp_evento'
          Title.Caption = 'Tp Evento'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_servico'
          Title.Caption = 'C'#243'd Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_servico'
          Title.Caption = 'Servi'#231'o'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apelido'
          Title.Caption = 'Operador'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'resumo'
          Title.Caption = 'Resumo'
          Width = 650
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tx_evento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tp_criterio'
          Title.Caption = 'Tipo Crit'#233'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'incremento'
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select'
      '   e.orcamento,'
      '   e.incremento,'
      '   case tp_evento '
      '     when '#39'S'#39' then '#39'Autorizado com Senha'#39
      '     when '#39'A'#39' then '#39'Usu'#225'rio Avisado'#39
      '     when '#39'B'#39' then '#39'Evento Bloqueado'#39
      '   end tp_evento,'
      '   cast(substring(tx_evento,1,150) as varchar(150)) as resumo,'
      '   tx_evento,'
      '   o.apelido,'
      '   e.tp_criterio,'
      '   s.codigo  cd_servico,'
      '   s.descricao ds_servico'
      ''
      ''
      ''
      ''
      ' from '
      ''
      '     eventOdontograma e '
      
        '     left join itens_orcamento i on      i.orcamento  = e.orcame' +
        'nto and i.incremento = e.incremento'
      '     left join operador o on  o.codigo     = e.cd_operador'
      '     left join servicos s on  s.codigo     = i.servico'
      ''
      'where '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' e.orcamento ='
      #39'99196'#39)
    Left = 410
    Top = 120
  end
  inherited DataSource1: TDataSource
    Left = 322
    Top = 120
  end
end
