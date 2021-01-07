inherited FmTitBaixadosDifOrcMen: TFmTitBaixadosDifOrcMen
  Left = 284
  Top = 113
  Width = 770
  Height = 479
  Caption = 'Titulos baixados diferente de Mensalidade/Or'#231'amentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 448
  end
  inherited PanelRigth: TPanel
    Left = 752
    Height = 448
  end
  inherited PanelCenter: TPanel
    Width = 742
    Height = 448
    inherited PanelBotton: TPanel
      Top = 407
      Width = 742
      inherited Panel1: TPanel
        Left = 650
      end
      object Button1: TButton
        Left = 568
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Excel'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    inherited PanelTop: TPanel
      Width = 742
      Height = 41
      inherited Bevel1: TBevel
        Top = 31
        Width = 742
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 41
      Width = 742
      Height = 366
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'TipoDocumento'
          Title.Caption = 'Tipo Documento'
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_documento'
          Title.Caption = 'Tipo'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contratante'
          Width = 173
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_titulo'
          Title.Caption = 'Nr Titulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_acrescimo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_desconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_abatimento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'vr_pago'
          Title.Caption = 'Vr Pago'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vr_liquido'
          Title.Caption = 'Vr Liquido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_pagto'
          Title.Caption = 'Dt Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desdobramento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indice'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'flag'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_liquidacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_retorno'
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQueryH
  end
  inherited ADOQueryH: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'select tp.descricao TipoDocumento, b.tipo_documento, c.codigo, c' +
        '.nome as Contratante,a.* from RetornoCNAB a'
      ''
      ' inner join receber b'
      'on'
      
        '   b.numero_titulo = a.numero_titulo and b.Desdobramento = a.des' +
        'dobramento'
      '   inner join contratante c'
      'on'
      '    c.codigo = b.codigo_contratante'
      '   inner join tipodocumento tp on tp.codigo = b.tipo_documento'
      'where indice ='
      '991 '
      'and flag = 1'
      'and b.tipo_documento not in(1,5)'
      'order by a.indice,a.numero_titulo'
      ' '
      ' '
      '')
    Left = 272
    Top = 152
  end
end
