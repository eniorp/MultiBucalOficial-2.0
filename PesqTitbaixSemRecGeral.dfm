inherited FmPesqTitbaixSemRecGeral: TFmPesqTitbaixSemRecGeral
  Width = 608
  Height = 431
  Caption = 'Pesquisa de Baixas que n'#227'o foram emitido recibos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 393
  end
  inherited PanelRigth: TPanel
    Left = 582
    Height = 393
  end
  inherited PanelCenter: TPanel
    Width = 572
    Height = 393
    inherited PageControl1: TPageControl
      Top = 75
      Width = 572
      Height = 277
      inherited TbsGrid: TTabSheet
        inherited DBGrid2: TDBGrid
          Width = 564
          Height = 246
          Columns = <
            item
              Expanded = False
              FieldName = 'apelido'
              Title.Caption = 'Operador'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero_titulo'
              Title.Caption = 'T'#237'tulo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_contratante'
              Title.Caption = 'C'#243'd'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_contratante'
              Title.Caption = 'Contratante'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtVencto'
              Title.Caption = 'Vencto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtPagto'
              Title.Caption = 'Pagto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_pago'
              Title.Caption = 'Valor'
              Visible = True
            end>
        end
      end
      inherited Texto: TTabSheet
        inherited RichEdit1: TRichEdit
          Width = 564
          Height = 246
        end
      end
    end
    inherited PanelBotton: TPanel
      Top = 352
      Width = 572
      inherited Panel1: TPanel
        Left = 316
      end
    end
    inherited PanelTop: TPanel
      Width = 572
      Height = 75
      inherited Bevel1: TBevel
        Top = 65
        Width = 572
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 9
        Width = 211
        Height = 48
        Caption = 'Operador'
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label1: TLabel
          Left = 110
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object EditOperador1: TEdit
          Left = 27
          Top = 21
          Width = 46
          Height = 21
          Hint = 'Informe o c'#243'digo inicial do Atendente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = EditOperador1Exit
        end
        object BitBtnPesquisa1: TBitBtn
          Left = 78
          Top = 22
          Width = 24
          Height = 21
          TabOrder = 1
          TabStop = False
          OnClick = BitBtnPesquisa1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object EditOperador2: TEdit
          Left = 121
          Top = 21
          Width = 53
          Height = 21
          Hint = 'Informe o C'#243'digo Final de atentende'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = EditOperador1Exit
        end
        object BitBtn2: TBitBtn
          Left = 179
          Top = 21
          Width = 24
          Height = 21
          TabOrder = 3
          TabStop = False
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 236
        Top = 8
        Width = 191
        Height = 51
        Caption = 'I&ntervalo de datas do recibo'
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 25
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label3: TLabel
          Left = 97
          Top = 25
          Width = 7
          Height = 13
          Caption = 'A'
        end
        object MaskEditDtIni: TMaskEdit
          Left = 25
          Top = 21
          Width = 66
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object MaskEditDtFim: TMaskEdit
          Left = 109
          Top = 20
          Width = 65
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object BitBtn1: TBitBtn
        Left = 439
        Top = 14
        Width = 74
        Height = 44
        Caption = '&Pesquisar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'set dateformat dmy'
      'select '
      '        r.numero_titulo,'
      #9'c.codigo as cd_contratante,'
      #9'c.nome as nm_contratante,'
      '        convert(char(10),r.data_vencimento,103) as dtVencto,'
      #9'convert(char(10),r.data_pagamento,103)  as DtPagto,'
      #9'str(r.valor_pago,10,2) as valor_pago,'
      '        o.apelido'
      ''
      ' from'
      '      Receber r'
      ''
      'inner join registro_baixa rb'
      'on'
      '       rb.numero_titulo = r.numero_titulo'
      '   and rb.desdobramento = r.desdobramento'
      ''
      'left join contratante c'
      'on    c.codigo = r.codigo_contratante'
      ''
      'left join operador o'
      'on'
      '  o.codigo = r.Operador'
      'where '
      '   rb.dtbaixa between'
      #39#39' and '#39#39
      'and rb.dtbaixa > '#39'02/04/2007'#39
      'and o.codigo between'
      '0 and 9999999'
      'and r.Data_Pagamento is not null'
      'and not exists'
      '(select * from i_recibo i, recibo re where'
      '   re.nr_recibo = i.nr_recibo'
      ' and re.status = '#39'A'#39
      ' and i.numero_titulo = r.numero_titulo'
      ' and i.desdobramento = r.desdobramento)'
      'order by o.apelido, r.data_pagamento, c.codigo'
      '')
  end
end
