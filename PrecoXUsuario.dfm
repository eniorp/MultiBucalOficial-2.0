inherited FmPrecoXusuario: TFmPrecoXusuario
  Left = 25
  Top = 0
  Width = 746
  Height = 445
  Caption = 
    'Valor  de mensalidade por usu'#225'rio(Data base para o aumento -> in' +
    'clus'#227'o do Contratante Titular)'
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 406
  end
  inherited PanelRigth: TPanel
    Left = 720
    Height = 406
  end
  inherited PanelCenter: TPanel
    Width = 710
    Height = 406
    inherited DBGrid1: TDBGrid [0]
      Top = 122
      Width = 710
      Height = 218
      Font.Color = clNavy
      ParentFont = False
      TitleFont.Color = clNavy
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 213
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
          FieldName = 'dg_usuario'
          Title.Caption = 'DG'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtinicio'
          Title.Caption = 'Dt Ini'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtfim'
          Title.Caption = 'Dt Fim'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_nascimento'
          Title.Caption = 'Nasc'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_inclusao'
          Title.Caption = 'Inclus'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_exclusao'
          Title.Caption = 'Exclus'#227'o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_acrescimo'
          Title.Caption = 'Id Acr'#233'scimo'
          Visible = True
        end>
    end
    inherited PanelBotton: TPanel [1]
      Top = 340
      Width = 710
      Height = 66
      object Label2: TLabel [0]
        Left = 12
        Top = 14
        Width = 104
        Height = 13
        Caption = 'Valor mensalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 396
        Top = 14
        Width = 81
        Height = 13
        Caption = 'Qtde Usu'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel [2]
        Left = 153
        Top = 12
        Width = 55
        Height = 13
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel [3]
        Left = 279
        Top = 12
        Width = 93
        Height = 13
        Caption = 'Mensalidade Liq'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel [4]
        Left = 508
        Top = 14
        Width = 60
        Height = 13
        Caption = 'Data Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        Left = 618
        Height = 66
        inherited BitBtnSair: TBitBtn
          Top = 32
          Height = 28
          Font.Style = [fsBold]
        end
      end
      object PanelVrTotal: TPanel
        Left = 12
        Top = 29
        Width = 105
        Height = 25
        BevelInner = bvLowered
        Caption = 'R$ 0,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object PanelQtUsu: TPanel
        Left = 396
        Top = 30
        Width = 105
        Height = 25
        BevelInner = bvLowered
        Caption = '0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object PanelDesconto: TPanel
        Left = 150
        Top = 29
        Width = 105
        Height = 25
        BevelInner = bvLowered
        Caption = 'R$ 0,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object PanelVrLiq: TPanel
        Left = 276
        Top = 29
        Width = 105
        Height = 25
        BevelInner = bvLowered
        Caption = 'R$ 0,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel4: TPanel
        Left = 127
        Top = 40
        Width = 12
        Height = 4
        BevelOuter = bvNone
        Color = clHighlight
        TabOrder = 5
      end
      object Panel5: TPanel
        Left = 258
        Top = 37
        Width = 12
        Height = 3
        BevelOuter = bvNone
        Color = clHighlight
        TabOrder = 6
      end
      object Panel6: TPanel
        Left = 258
        Top = 43
        Width = 12
        Height = 3
        BevelOuter = bvNone
        Color = clHighlight
        TabOrder = 7
      end
      object MaskEditDtBase: TMaskEdit
        Left = 509
        Top = 31
        Width = 93
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 8
        Text = '  /  /    '
      end
    end
    inherited PanelTop: TPanel [2]
      Width = 710
      Height = 122
      OnClick = PanelTopClick
      inherited Bevel1: TBevel
        Top = 112
        Width = 710
      end
      object Label44: TLabel
        Left = 5
        Top = 22
        Width = 92
        Height = 13
        Caption = 'C'#243'd contratante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 13
        Top = 73
        Width = 102
        Height = 13
        Caption = 'Nome contratante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 22
        Top = 48
        Width = 70
        Height = 13
        Caption = 'C'#243'd Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditContratante: TEdit
        Left = 101
        Top = 18
        Width = 91
        Height = 21
        Hint = 'Informe o c'#243'digo do contratante e pressione [ENTER]'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = EditContratanteChange
        OnKeyPress = EditContratanteKeyPress
      end
      object BitBtnPesquisar: TBitBtn
        Left = 197
        Top = 19
        Width = 24
        Height = 21
        Caption = ' '
        TabOrder = 1
        OnClick = BitBtnPesquisarClick
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
      object EditNmContratante: TEdit
        Left = 13
        Top = 88
        Width = 366
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 482
        Top = 16
        Width = 228
        Height = 62
        Caption = '&Pesquisar'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
      object GroupBox1: TGroupBox
        Left = 261
        Top = 10
        Width = 213
        Height = 69
        TabOrder = 4
        object CheckBox1: TCheckBox
          Left = 11
          Top = 10
          Width = 196
          Height = 17
          Hint = 
            'Se marcada esta op'#231#227'o ser'#227'o mostrado apenas a mensalidade v'#225'lida' +
            ', caso contr'#225'rio ser'#225' mostrado o hist'#243'rico de mensalidades'
          Caption = '&Mostrar somente o valor atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object CheckBoxUsuExclu: TCheckBox
          Left = 12
          Top = 31
          Width = 196
          Height = 17
          Hint = 'Se marcada, mostra os usu'#225'rios j'#225' excluido do plano'
          Caption = '&Mostar Usu'#225'rios exclu'#237'dos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = CheckBox1Click
        end
        object CheckBoxVrZero: TCheckBox
          Left = 13
          Top = 49
          Width = 196
          Height = 17
          Hint = 'Se marcada, mostra os usu'#225'rios j'#225' excluido do plano'
          Caption = '&N'#227'o mostrar valor zerado'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox1Click
        end
      end
      object EditPlano: TEdit
        Left = 388
        Top = 88
        Width = 320
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 5
      end
      object EditUsu: TEdit
        Left = 101
        Top = 45
        Width = 91
        Height = 21
        Hint = 'Informe o c'#243'digo do contratante e pressione [ENTER]'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnChange = EditContratanteChange
        OnEnter = EditUsuEnter
        OnExit = EditUsuExit
        OnKeyPress = EditUsuKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 197
        Top = 46
        Width = 24
        Height = 21
        Caption = ' '
        TabOrder = 7
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
    object PageControl1: TPageControl
      Left = 0
      Top = 122
      Width = 710
      Height = 218
      ActivePage = TbsValores
      Align = alClient
      TabOrder = 3
      OnChange = PageControl1Change
      object TbsValores: TTabSheet
        Caption = '&Valores'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 702
          Height = 190
          Align = alClient
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Width = 213
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
              FieldName = 'dg_usuario'
              Title.Caption = 'DG'
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtinicio'
              Title.Caption = 'Dt Ini'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtfim'
              Title.Caption = 'Dt Fim'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_nascimento'
              Title.Caption = 'Nasc'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_inclusao'
              Title.Caption = 'Inclus'#227'o Contrat'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_exclusao'
              Title.Caption = 'Exclus'#227'o'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_acrescimo'
              Title.Caption = 'Id Acr'#233'scimo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grau_parentesco'
              Title.Caption = 'Grau Parentesco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VrBruto'
              Title.Caption = 'Vr Bruto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InclusaoUsuario'
              Title.Caption = 'Dt Inc. Usu'#225'rio'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 8
          Top = 96
          Width = 681
          Height = 41
          Caption = 
            'O form FmPrecoXUsuario esta sendo herdado pelo form FmPrecoXUsua' +
            'rioDtUsu'
          TabOrder = 1
          Visible = False
        end
      end
      object TbsAumento: TTabSheet
        Caption = '&Aumentos deste plano'
        ImageIndex = 1
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 710
          Height = 211
          Align = alClient
          Color = clInfoBk
          DataSource = DsAumento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'Plano'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Aumento'
              Title.Caption = 'Data do Aumento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dias'
              Title.Caption = 'Qtde Dias'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentual'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_acrescimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dtinclusao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Data Inclus'#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 118
              Visible = True
            end>
        end
      end
      object TbsPrecoPlano: TTabSheet
        Caption = '&Pre'#231'o do plano'
        ImageIndex = 2
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 710
          Height = 211
          Color = clInfoBk
          DataSource = DsPrecoPlano
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo_plano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Plano'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clActiveCaption
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo_grau_parentesco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Grau'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clActiveCaption
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clActiveCaption
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clActiveCaption
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clActiveCaption
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object TbsHistorico: TTabSheet
        Caption = '&Hist'#243'rico Pre'#231'o plano'
        ImageIndex = 3
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 710
          Height = 211
          Align = alClient
          DataSource = DsHistorico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo_Plano'
              Title.Caption = 'Plano'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Codigo_Grau_Parentesco'
              Title.Caption = 'Grau'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'desc_grau'
              Title.Caption = 'Descri'#231#227'o Grau'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtAtualizacao'
              Title.Caption = 'Data atualiza'#231'ao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited Query1: TQuery
    AfterOpen = Query1AfterOpen
    SQL.Strings = (
      ' set dateformat dmy select  c.nome as nmConratante,'
      #9'u.nome'#9#9' ,'
      #9'u.codigo_completo,'
      #9'm.* '#9#9' ,'
      #9'u.data_nascimento,'
      #9'c.Inclusao as data_inclusao,'
      #9'u.data_exclusao,'
      '        p.descricao as DescPlano,'
      #9'p.codigo as CodPlano,'
      '         u.grau_parentesco,u.data_inclusao as InclusaoUsuario'
      'from'
      #9'contratante c'
      'left join plano p'
      'on'
      '   p.codigo = c.plano'
      ''
      'left join usuario u'
      'on'
      #9'c.codigo = u.contratante_titular'
      #9'and u.data_exclusao is null '
      ''
      'left join mensalidade_usuario m'
      'on'
      #9'  u.codigo = m.cd_usuario'
      '      and u.digito = m.dg_usuario'
      ''
      'where c.codigo = :cdContratante'
      ''
      ''
      'order by'
      #9'u.codigo,'
      '        u.digito,'
      #9'u.nome,'
      #9'm.dtinicio desc'
      ' ')
    Left = 242
    ParamData = <
      item
        DataType = ftString
        Name = 'cdContratante'
        ParamType = ptUnknown
        Value = '4270'
      end>
    object Query1nome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object Query1codigo_completo: TIntegerField
      FieldName = 'codigo_completo'
    end
    object Query1cd_usuario: TIntegerField
      FieldName = 'cd_usuario'
    end
    object Query1dg_usuario: TIntegerField
      FieldName = 'dg_usuario'
    end
    object Query1id_acrescimo: TIntegerField
      FieldName = 'id_acrescimo'
    end
    object Query1dtinicio: TDateTimeField
      FieldName = 'dtinicio'
    end
    object Query1dtfim: TDateTimeField
      FieldName = 'dtfim'
    end
    object Query1valor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object Query1data_nascimento: TDateTimeField
      FieldName = 'data_nascimento'
    end
    object Query1data_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object Query1data_exclusao: TDateTimeField
      FieldName = 'data_exclusao'
    end
    object Query1nmConratante: TStringField
      FieldName = 'nmConratante'
      Size = 50
    end
    object Query1DescPlano: TStringField
      FieldName = 'DescPlano'
      Size = 50
    end
    object Query1CodPlano: TIntegerField
      FieldName = 'CodPlano'
    end
    object Query1grau_parentesco: TSmallintField
      FieldName = 'grau_parentesco'
    end
    object Query1VrBruto: TFloatField
      FieldName = 'VrBruto'
      currency = True
    end
    object Query1InclusaoUsuario: TDateTimeField
      FieldName = 'InclusaoUsuario'
    end
  end
  inherited DataSource1: TDataSource
    Left = 194
  end
  object SpVrMensalidade: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'SpVrMensalidade'
    Left = 466
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CdContratante'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@DtBase'
        ParamType = ptInput
      end>
  end
  object QueryAumento: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from acrescimo_inclusao  where plano ='
      '40'
      'order by data_aumento')
    Left = 370
    Top = 208
  end
  object DsAumento: TDataSource
    DataSet = QueryAumento
    Left = 302
    Top = 209
  end
  object QueryPrecoPlano: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select codigo_plano, codigo_grau_parentesco,g.descricao,data, ro' +
        'und(valor,2) as Valor '
      'from '
      #9'preco_plano pp,'
      #9'Grau_Parentesco g'
      ''
      'where pp.codigo_plano ='
      '40'
      'and g.codigo = pp.codigo_grau_parentesco'
      'order by 2')
    Left = 394
    Top = 264
    object QueryPrecoPlanocodigo_plano: TSmallintField
      FieldName = 'codigo_plano'
    end
    object QueryPrecoPlanocodigo_grau_parentesco: TSmallintField
      FieldName = 'codigo_grau_parentesco'
    end
    object QueryPrecoPlanodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object QueryPrecoPlanodata: TDateTimeField
      FieldName = 'data'
    end
    object QueryPrecoPlanoValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
  end
  object DsPrecoPlano: TDataSource
    DataSet = QueryPrecoPlano
    Left = 302
    Top = 265
  end
  object DsHistorico: TDataSource
    DataSet = QueryHistorico
    Left = 572
    Top = 255
  end
  object QueryHistorico: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select '
      #9'h.*, g.descricao as desc_grau '
      'from '
      #9'historico_preco_plano h, '
      #9'grau_parentesco g'
      'where '
      #9'    g.codigo '#9#9'     = h.Codigo_Grau_Parentesco'
      #9'and h.codigo_plano '#9'     = :plano'
      '        and h.codigo_grau_parentesco = :grau'
      '  '
      '  order by h.dtatualizacao')
    Left = 500
    Top = 239
    ParamData = <
      item
        DataType = ftString
        Name = 'plano'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'grau'
        ParamType = ptUnknown
        Value = '0'
      end>
    object QueryHistoricoCodigo_Plano: TSmallintField
      FieldName = 'Codigo_Plano'
      Origin = 'MULTI.historico_preco_plano.Codigo_Plano'
    end
    object QueryHistoricoCodigo_Grau_Parentesco: TSmallintField
      FieldName = 'Codigo_Grau_Parentesco'
      Origin = 'MULTI.historico_preco_plano.Codigo_Grau_Parentesco'
    end
    object QueryHistoricodesc_grau: TStringField
      FieldName = 'desc_grau'
      Size = 40
    end
    object QueryHistoricoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'MULTI.historico_preco_plano.Data'
    end
    object QueryHistoricoValor: TFloatField
      FieldName = 'Valor'
      Origin = 'MULTI.historico_preco_plano.Valor'
      currency = True
    end
    object QueryHistoricoDtAtualizacao: TDateTimeField
      FieldName = 'DtAtualizacao'
      Origin = 'MULTI.historico_preco_plano.DtAtualizacao'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 302
    Top = 161
    object Mostrartelacomregistrosantigos1: TMenuItem
      Caption = 'Mostrar tela com registros antigos'
      Hint = 
        'Mostra uma tela similar, onde a data base era a data de inclus'#227'o' +
        ' do usu'#225'rio e n'#227'o do contratante titular'
      OnClick = Mostrartelacomregistrosantigos1Click
    end
  end
end
