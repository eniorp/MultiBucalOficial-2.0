inherited FmConfFaturamento: TFmConfFaturamento
  Left = 94
  Top = 108
  Width = 644
  Height = 425
  Caption = 'Conferência de Faturamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 391
  end
  inherited PanelRigth: TPanel
    Left = 626
    Height = 391
  end
  inherited PanelCenter: TPanel
    Width = 616
    Height = 391
    inherited PageControl1: TPageControl
      Top = 77
      Width = 616
      Height = 273
      ActivePage = TbsGrid
      inherited TbsGrid: TTabSheet
        inherited DBGrid2: TDBGrid
          Width = 608
          Height = 242
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              PickList.Strings = ()
              Title.Caption = 'Cód Contrat'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              PickList.Strings = ()
              Title.Caption = 'Contratante'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'inclusao'
              PickList.Strings = ()
              Title.Caption = 'Inclusão'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'exclusao'
              PickList.Strings = ()
              Title.Caption = 'Exclusão'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tpcobranca'
              PickList.Strings = ()
              Title.Caption = 'Tp cobrança'
              Width = 83
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'vencimento'
              PickList.Strings = ()
              Title.Caption = 'Dia Vencto'
              Width = 59
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'GeraReceber'
              PickList.Strings = ()
              Title.Caption = 'Gera Receber?'
              Width = 75
              Visible = True
            end>
        end
      end
      inherited Texto: TTabSheet
        inherited RichEdit1: TRichEdit
          Width = 608
          Height = 242
        end
      end
    end
    inherited PanelBotton: TPanel
      Top = 350
      Width = 616
      object LabelQt: TLabel [1]
        Left = 277
        Top = 12
        Width = 4
        Height = 16
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 360
      end
    end
    inherited PanelTop: TPanel
      Width = 616
      Height = 77
      inherited Bevel1: TBevel
        Top = 70
        Width = 616
        Height = 7
      end
      object Label4: TLabel
        Left = 0
        Top = 7
        Width = 50
        Height = 13
        Caption = 'Data Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 125
        Top = 7
        Width = 19
        Height = 13
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 78
        Top = 7
        Width = 20
        Height = 13
        Caption = 'Mês'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 110
        Top = 25
        Width = 5
        Height = 13
        Caption = '/'
      end
      object MaskEditDtBase: TMaskEdit
        Left = 0
        Top = 22
        Width = 68
        Height = 21
        EditMask = '!90/90/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnChange = MaskEditDtBaseChange
      end
      object EditAno: TEdit
        Left = 122
        Top = 22
        Width = 43
        Height = 21
        TabOrder = 2
        OnChange = EditMesChange
      end
      object EditMes: TEdit
        Left = 74
        Top = 22
        Width = 30
        Height = 21
        TabOrder = 1
        OnChange = EditMesChange
      end
      object RadioGroupTp: TRadioGroup
        Left = 174
        Top = 6
        Width = 229
        Height = 42
        Caption = 'Tipo'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          '&Faturamento'
          '&Contas a Receber')
        ParentFont = False
        TabOrder = 3
        OnClick = EditMesChange
      end
      object Button1: TButton
        Left = 409
        Top = 11
        Width = 127
        Height = 36
        Caption = '&Processar'
        Enabled = False
        TabOrder = 5
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 3
        Top = 49
        Width = 383
        Height = 17
        Caption = 
          '&Considerar somente tipo de Cobrança que Geram Faturamento(Gerar' +
          ' receber)'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = EditMesChange
      end
    end
  end
  inherited Query1: TQuery
    AfterClose = Query1AfterClose
    SQL.Strings = (
      'set dateformat dmy select'
      #9'c.codigo,'
      #9'c.nome,'
      #9'c.inclusao,'
      #9'convert(char(10),c.exclusao,103) as exclusao,'
      #9't.Descricao as Tpcobranca,'
      
        #9'case Gera_Receber when 1 then '#39'SIM'#39'else '#39'NÃO'#39' end as GeraRecebe' +
        'r,'
      '        vencimento'
      'from'
      '   Contratante c,'
      '   TipoCobranca t'
      'where'
      '          (c.exclusao is null or c.exclusao >='
      '          '#39'01/02/2007'#39
      '          )'
      '       and c.forma_cobranca = T.codigo'
      '       and t.gera_receber = 1'
      '       and Inclusao <='
      '       '#39'01/02/2007 23:59:59'#39
      '       and Vencimento between 1 and 30'
      '       and exists'
      '       (select top 1 u.codigo'
      '        from usuario u'
      '        where'
      #9'      u.contratante_titular = c.codigo'
      '              and (u.data_exclusao is null or u.data_exclusao >='
      '             '#39'01/02/2007'#39
      '              ))'
      '       and not exists'
      '       (select * from'
      '        faturamento f'
      '        where'
      '                  f.codigo_contratante = c.codigo'
      
        '              --and f.data_vencimento between '#39'01/02/2007'#39' and  ' +
        #39'28/02/2007 23:59:59'#39
      
        '              and f.numero_titulo = cast(c.codigo as varchar(10)' +
        ') +'
      '              '#39'1206'#39
      '              and f.desdobramento = '#39'M'#39')'
      ''
      'order by 1'
      ' ')
  end
  object sp_lastDayMonth: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_lastDayMonth'
    Left = 374
    Top = 212
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@MesAno'
        ParamType = ptInput
        Value = '06/2006'
      end>
  end
end
