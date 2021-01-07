object FmConfANS: TFmConfANS
  Left = 167
  Top = 118
  Width = 808
  Height = 580
  Caption = 'Sincroniza'#231#227'o dados sistema SIB da ANS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 117
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    OnDblClick = PanelTopDblClick
    object Label1: TLabel
      Left = 400
      Top = 17
      Width = 118
      Height = 13
      Caption = 'Qtde registros no arquivo'
    end
    object Label2: TLabel
      Left = 439
      Top = 40
      Width = 77
      Height = 13
      Caption = 'Qtde importados'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 109
      Width = 792
      Height = 8
      Align = alBottom
      Shape = bsTopLine
    end
    object EditQtdeANS: TEdit
      Left = 522
      Top = 13
      Width = 59
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object Edit4: TEdit
      Left = 522
      Top = 37
      Width = 59
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
    object GroupBox1: TGroupBox
      Left = 624
      Top = 6
      Width = 164
      Height = 97
      Caption = 'Usu'#225'rios ativos(N'#227'o exclu'#237'dos)'
      TabOrder = 3
      object Label10: TLabel
        Left = 15
        Top = 21
        Width = 39
        Height = 13
        Caption = 'Na ANS'
      end
      object Label11: TLabel
        Left = 13
        Top = 45
        Width = 41
        Height = 13
        Caption = 'Na Base'
      end
      object Label15: TLabel
        Left = 8
        Top = 71
        Width = 46
        Height = 13
        Caption = 'Diferen'#231'a'
      end
      object EditQtANS: TEdit
        Left = 60
        Top = 17
        Width = 59
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 0
        Text = '0'
      end
      object EditQtBase: TEdit
        Left = 60
        Top = 42
        Width = 59
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
        Text = '0'
      end
      object Button7: TButton
        Left = 125
        Top = 18
        Width = 32
        Height = 69
        Caption = 'OK'
        TabOrder = 2
        OnClick = Button7Click
      end
      object EditDiferenca: TEdit
        Left = 60
        Top = 67
        Width = 59
        Height = 21
        TabStop = False
        Color = clInfoBk
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        Text = '0'
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 0
      Width = 344
      Height = 106
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 313
        Top = 57
        Width = 23
        Height = 22
        Hint = 'Pesquisar arquivo medicamentos da federa'#231#227'o'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SpeedButton1Click
      end
      object Label3: TLabel
        Left = 10
        Top = 39
        Width = 150
        Height = 13
        Caption = 'Arquivo de confer'#234'ncia da ANS'
        Visible = False
      end
      object Label8: TLabel
        Left = 12
        Top = 17
        Width = 178
        Height = 13
        Caption = 'Data Base do Arquivo de confer'#234'ncia'
      end
      object EditArq: TEdit
        Left = 8
        Top = 57
        Width = 300
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object MaskEditDtBaseANS: TMaskEdit
        Left = 198
        Top = 14
        Width = 72
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 493
    Width = 792
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 792
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object LabelStatus: TLabel
      Left = 16
      Top = 8
      Width = 4
      Height = 16
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Pb: TProgressBar
      Left = 0
      Top = 33
      Width = 792
      Height = 16
      Align = alBottom
      Step = 1
      TabOrder = 0
    end
    object Panel12: TPanel
      Left = 475
      Top = 2
      Width = 317
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      OnDblClick = Panel12DblClick
      object Button2: TButton
        Left = 199
        Top = 3
        Width = 113
        Height = 25
        Caption = '&Sair'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 81
        Top = 4
        Width = 113
        Height = 25
        Caption = '&Processar'
        TabOrder = 1
        Visible = False
        OnClick = Button1Click
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 117
    Width = 792
    Height = 376
    ActivePage = TbsExBaseXNaoANS
    Align = alClient
    MultiLine = True
    TabOrder = 2
    object TabSheetDivergentes: TTabSheet
      Hint = 
        'Compara os registros contidos na ANS e na Multiodonto e mostra o' +
        's com diverg'#234'ncia relevante'
      Caption = 'Dados Divergentes'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      object DBGrid2: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsRegDiverg
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_completo'
            Title.Caption = 'C'#243'd Compl'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Nome ANS'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 182
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'DtNasc ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_nascimento'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Sexo ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'CPF ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'PIS/PASEP ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS PASEP'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Nm MAE ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nm_Mae'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Nr Reg Plan ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Susep'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'DT Adesao ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Inclusao'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Dt Cancel ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_exclusao'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'endereco_ans'
            Title.Caption = 'Endere'#231'o ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'num_ans'
            Title.Caption = 'N'#186' ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num'
            Title.Caption = 'N'#186
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Compl ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Compl'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Bairro ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'CEP ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Cidade ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade_Residencial'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'UF ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado_Residencial'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Tp Contrat Plano ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TpContratPlano'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Vinc ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grau_parentesco'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'Motivo Cancel ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'motivo_cancelamento'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'CD Anterior ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cd_ans_anterior'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'SegAssistCobPl ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SegAssistCobPl'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'AbrangGeogCobPl ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AbrangGeogCobPl'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'TpContratPlano ANS'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'IndExistCobParcTemp ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCobParcTemp'
            Visible = True
          end
          item
            Color = clGray
            Expanded = False
            FieldName = 'IndExistCoPart ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCoPart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CdContrat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NmContrat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'plano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'flag_envio_ans'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CpDivergentes'
            Title.Caption = 'Campos Divergentes'
            Width = 400
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 1
        object Button4: TButton
          Left = 5
          Top = 4
          Width = 212
          Height = 25
          Caption = 'Marcar registros para envio '#224' ANS'
          TabOrder = 0
          OnClick = Button4Click
        end
        object Panel8: TPanel
          Left = 607
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 1
          object Label5: TLabel
            Left = 40
            Top = 11
            Width = 80
            Height = 13
            Caption = 'Qtde de registros'
          end
          object EditQtdeDiverg: TEdit
            Left = 126
            Top = 7
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Os registros abaixos est'#227'o com alguma diverg'#234'ncia e devem ser en' +
            'viados para a ANS para altera'#231'ao, clique no '
          'bot'#227'o "Marcar registros para envio '#224' ANS".')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheetRegSoMulti: TTabSheet
      Hint = 
        'Mostra os registros que n'#227'o est'#227'o na ANS mas est'#227'o com data de e' +
        'nvio'
      Caption = 'Registros somente na Base'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      object Panel5: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 0
        object Button6: TButton
          Left = 5
          Top = 4
          Width = 268
          Height = 25
          Caption = 'Marcar registros para envio como inclus'#227'o '#224' ANS'
          TabOrder = 0
          OnClick = Button6Click
        end
        object Panel9: TPanel
          Left = 607
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 1
          object Label6: TLabel
            Left = 17
            Top = 11
            Width = 98
            Height = 13
            Caption = 'Qtde de registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditQtdeSoMulti: TEdit
            Left = 124
            Top = 7
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object CheckBox1: TCheckBox
          Left = 288
          Top = 8
          Width = 233
          Height = 17
          Caption = '&Somente registros n'#227'o excluidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = CheckBox1Click
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsRegSoMulti
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Digito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Completo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Inclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alteracao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grau_Parentesco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contratante_Titular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_Civil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alterado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Alteracao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Manutencao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nm_Mae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_PASEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Motivo_Cancelamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Mens'
            Visible = True
          end>
      end
      object Memo4: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Os registros abaixos est'#227'o marcados com j'#225' enviados '#224' ANS por'#233'm ' +
            'n'#227'o se encontram no arquivo de confer'#234'ncia '
          
            'da ANS. Clique no bot'#227'o "Marcar registros para envio como inclus' +
            #227'o '#224' ANS"')
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheetExANSXAtivo: TTabSheet
      Caption = 'Excluido ANS e ativo na base'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 0
        object Button3: TButton
          Left = 5
          Top = 4
          Width = 212
          Height = 25
          Caption = 'Marcar registros para reinclus'#227'o na ANS'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Panel7: TPanel
          Left = 607
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 1
          object Label14: TLabel
            Left = 23
            Top = 11
            Width = 98
            Height = 13
            Caption = 'Qtde de registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditQtdeExANSXAtivo: TEdit
            Left = 125
            Top = 7
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Os registros abaixos est'#227'o com data de exclus'#227'o na ANS, por'#233'm en' +
            'contram-se ativo na base de dados clique no '
          
            'bot'#227'o "Marcar registros como reinclus'#227'o" para que os mesmo sejam' +
            ' reativados na ANS')
        ParentFont = False
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsExANSXAtivo
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Digito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Completo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Inclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alteracao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grau_Parentesco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contratante_Titular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_Civil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alterado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Alteracao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Manutencao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nm_Mae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_PASEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Motivo_Cancelamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Mens'
            Visible = True
          end>
      end
    end
    object TbsExBaseXNaoANS: TTabSheet
      Caption = 'Exlu'#237'dos na Base mas Ativos na ANS'
      ImageIndex = 5
      object Memo6: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Os registros abaixos est'#227'o marcados com j'#225' enviados '#224' ANS como e' +
            'xclu'#237'dos, porem na ANS eles est'#227'o como ativos, clique no bot'#227'o '
          '"Enviar registros como exclu'#237'dos" para envio a ANS')
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsExBAseXNaoANS
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cdIdentBenef'
            Title.Caption = 'C'#243'd ANS'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome ANS'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Digito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Completo'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Inclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alteracao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exclusao_Susep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grau_Parentesco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contratante_Titular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_Civil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alterado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Inclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Alteracao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Operador_Exclusao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Manutencao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nm_Mae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_PASEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Motivo_Cancelamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Mens'
            Visible = True
          end>
      end
      object Panel13: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 2
        object Button5: TButton
          Left = 5
          Top = 4
          Width = 268
          Height = 25
          Caption = 'Marcar registros para envio como exclus'#227'o '#224' ANS'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Panel14: TPanel
          Left = 599
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 1
          object Label7: TLabel
            Left = 18
            Top = 11
            Width = 98
            Height = 13
            Caption = 'Qtde de registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditQtdeBaseXNAns: TEdit
            Left = 124
            Top = 7
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
    object TabSheetRegNaANS: TTabSheet
      Hint = 
        'Mostra os registros que est'#227'o na ANS e n'#227'o est'#227'o na base multiod' +
        'onto'
      Caption = 'Registros somentes na ANS'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      object Panel4: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 0
        object Label12: TLabel
          Left = 19
          Top = 11
          Width = 139
          Height = 13
          Caption = 'Desses registros apenas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 220
          Top = 11
          Width = 117
          Height = 13
          Caption = 'est'#227'o ativos na ANS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel10: TPanel
          Left = 607
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 0
          object Label9: TLabel
            Left = 19
            Top = 11
            Width = 98
            Height = 13
            Caption = 'Qtde de registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditQtdeNEncontr: TEdit
            Left = 123
            Top = 7
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Edit1: TEdit
          Left = 162
          Top = 7
          Width = 52
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Os registros abaixos vieram no arquivo de confer'#234'ncia da ANS, po' +
            'r'#234'm n'#227'o se encontram na base de dados.Ligar '
          'na ANS para sabermos o que fazer neste caso'
          'para envio '#224' ANS".')
        ParentFont = False
        TabOrder = 1
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsNaoEncontr
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cdIdentBenef'
            Title.Caption = 'C'#243'd Benef'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NmBenef'
            Title.Caption = 'Nome'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndDetalhe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtNasc'
            Title.Caption = 'Dt Nasc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NmMaeBenef'
            Title.Caption = 'Nome M'#227'e'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrRegPlanoANS'
            Title.Caption = 'N'#186' Reg plano ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrRegPlanoOper'
            Title.Caption = 'N'#186' Reg Plano Oper'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtAdesaoPlano'
            Title.Caption = 'Data Ades'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtCancelamento'
            Title.Caption = 'Data Cancel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtReinclusao'
            Title.Caption = 'Data Reinclus'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SegAssistCobPl'
            Title.Caption = 'Seg Assist Cober Plano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AbrangGeogCobPl'
            Title.Caption = 'Agrang. Geografica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TpContratPlano'
            Title.Caption = 'Tipo Contrat Plano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VinculoBenef'
            Title.Caption = 'V'#237'nculo Benef'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MotivoCancel'
            Title.Caption = 'Motivo Cancel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCobParcTemp'
            Title.Caption = ' Existe Cobert. parcial?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCoPart'
            Title.Caption = 'Existe Co-particip.?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndItensRolProc'
            Title.Caption = 'Itens do Rol proced. ANS?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtTermCobert'
            Title.Caption = 'Data T'#233'rm. Cobert'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndItensProcExc'
            Title.Caption = 'Itens Proc. Exclu'#237'dos?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrSeqArq'
            Title.Caption = 'Sequencial Arq'
            Visible = True
          end>
      end
    end
    object TabSheetTodos: TTabSheet
      Hint = 'Mostra todos os registros do arquivo de confer'#234'ncia ANS'
      Caption = 'Todos os Registros Importados'
      ParentShowHint = False
      ShowHint = True
      object Panel2: TPanel
        Left = 0
        Top = 297
        Width = 784
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clAppWorkSpace
        TabOrder = 0
        object Panel11: TPanel
          Left = 607
          Top = 0
          Width = 185
          Height = 33
          Align = alRight
          BevelOuter = bvNone
          Color = clAppWorkSpace
          TabOrder = 0
          object Label4: TLabel
            Left = 17
            Top = 11
            Width = 98
            Height = 13
            Caption = 'Qtde de registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditTodos: TEdit
            Left = 120
            Top = 6
            Width = 52
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 26
        Width = 784
        Height = 271
        Align = alClient
        DataSource = DsANS_CONF
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cdIdentBenef'
            Title.Caption = 'C'#243'd Benef'
            Width = 191
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NmBenef'
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndDetalhe'
            Title.Caption = 'Situa'#231#227'o'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtNasc'
            Title.Caption = 'Dt Nasc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NmMaeBenef'
            Title.Caption = 'Nome M'#227'e'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrRegPlanoANS'
            Title.Caption = 'N'#186' Reg plano ANS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrRegPlanoOper'
            Title.Caption = 'N'#186' Reg Plano Oper'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtAdesaoPlano'
            Title.Caption = 'Data Ades'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtCancelamento'
            Title.Caption = 'Data Cancel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtReinclusao'
            Title.Caption = 'Data Reinclus'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Logradouro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrEndereco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ComplLog'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SegAssistCobPl'
            Title.Caption = 'Seg Assist Cober Plano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AbrangGeogCobPl'
            Title.Caption = 'Agrang. Geografica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TpContratPlano'
            Title.Caption = 'Tipo Contrat Plano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VinculoBenef'
            Title.Caption = 'V'#237'nculo Benef'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MotivoCancel'
            Title.Caption = 'Motivo Cancel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCobParcTemp'
            Title.Caption = ' Existe Cobert. parcial?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndExistCoPart'
            Title.Caption = 'Existe Co-particip.?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IndItensProcExc'
            Title.Caption = 'Itens Proc. Exclu'#237'dos?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrSeqArq'
            Title.Caption = 'Sequencial Arq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NrRegPlanoOper'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cns'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Identidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OrgaoEmissorCI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cdPaisEmissorCI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cdtitular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtAdaptacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'flag_compara'
            Visible = True
          end>
      end
      object Memo5: TMemo
        Left = 0
        Top = 0
        Width = 784
        Height = 26
        Align = alTop
        BorderStyle = bsNone
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Abaixo est'#227'o todos os registros que vieram no arquivo de confer'#234 +
            'ncia da ANS')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object QueryAnsConf: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from ANS_CONF')
    Left = 592
    Top = 192
  end
  object QueryGeral: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'begin tran'
      'select max(indice) MaxIndice from ANS_CONF'
      'commit')
    Left = 496
    Top = 200
  end
  object OpenDialog1: TOpenDialog
    Title = 'Selecione o Arquivo de importa'#231#227'o'
    Left = 537
    Top = 256
  end
  object DsANS_CONF: TDataSource
    DataSet = QueryANS_CONF
    Left = 77
    Top = 435
  end
  object DsRegDiverg: TDataSource
    DataSet = QueryRegDiverg
    Left = 68
    Top = 235
  end
  object QueryRegDiverg: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      
        'select D.* from DivergANSXBase D, usuario u where divergente = 1' +
        '  and u.codigo_completo = d.codigo_completo and alterado = 0 ord' +
        'er by 1'
      ' ')
    Left = 294
    Top = 187
  end
  object QueryANS_CONF: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select  * from ANS_CONF order by 1')
    Left = 227
    Top = 415
  end
  object QueryNaoEncontr: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select * from ans_conf a where flag_compara = 1'
      'and not exists'
      '(select codigo_completo from usuario u where '
      ' u.codigo_completo = a.cdIdentBenef)'
      ''
      'union'
      ''
      'select * from ans_conf where flag_compara = 0'
      'order by cdIdentBenef'
      ''
      '')
    Left = 171
    Top = 387
  end
  object DsNaoEncontr: TDataSource
    DataSet = QueryNaoEncontr
    Left = 76
    Top = 387
  end
  object DsRegSoMulti: TDataSource
    DataSet = QueryRegSoMulti
    Left = 74
    Top = 195
  end
  object QueryRegSoMulti: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select u.* from usuario u'
      'where not exists'
      '(select cdIdentBenef from ANS_CONF a'
      ''
      ' where     a.cdIdentBenef = u.codigo_completo'
      '       and a.flag_compara = 1'
      ')'
      ' and u.inclusao_susep is not null '
      'and exists(select top 1 * from ans_conf)'
      'order by u.codigo_completo'
      ' ')
    Left = 172
    Top = 211
  end
  object QueryExANSXAtivo: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select u.* from'
      'usuario u,'
      'ans_conf a'
      ''
      'where     '
      '    '#9'   a.cdIdentBenef = u.codigo_completo'
      '       and a.flag_compara = 1'
      '       and u.exclusao_susep is null'
      '       and a.dtcancelamento is not null'
      '       and u.alterado = 0'
      ' ')
    Left = 188
    Top = 267
  end
  object DsExANSXAtivo: TDataSource
    DataSet = QueryExANSXAtivo
    Left = 74
    Top = 283
  end
  object StoredProcUpdateNull: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'SpAtualizaNullANS'
    Left = 388
    Top = 192
  end
  object QueryUpdateAlter: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'update usuario set alterado = 1,data_alteracao = getdate()'
      'from'
      #9'DivergANSXBase d'
      'where'
      #9'    d.codigo_completo = usuario.codigo_completo'
      #9'and divergente = 1'
      '        and alterado   = 0'
      ''
      ' ')
    Left = 390
    Top = 251
  end
  object QueryUpdSoMult: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'update usuario'
      'set'
      #9'inclusao_susep = null,'
      #9'exclusao_susep = null,'
      #9'alteracao_susep = null,'
      '        dtReinclusao    = null,'
      '        alterado = 0'
      ''
      'where not exists'
      '(select cdIdentBenef from ANS_CONF a'
      ''
      ' where     a.cdIdentBenef = usuario.codigo_completo'
      '       and a.flag_compara = 1'
      ')'
      ' and usuario.inclusao_susep is not null'
      'and exists(select top 1 * from ans_conf)'
      ' '
      ' '
      ' ')
    Left = 390
    Top = 307
  end
  object QueryUpdExANSXBase: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'update usuario set alterado = 1'
      'from'
      'ans_conf a'
      ''
      'where     '
      '    '#9'   a.cdIdentBenef = usuario.codigo_completo'
      '       and a.flag_compara = 1'
      '       and usuario.exclusao_susep is null'
      '       and a.dtcancelamento is not null'
      '       and usuario.alterado = 0'
      ' '
      ' ')
    Left = 390
    Top = 363
  end
  object DsExBAseXNaoANS: TDataSource
    DataSet = QueryExBAseXNaoANS
    Left = 62
    Top = 320
  end
  object QueryExBAseXNaoANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select'
      #9'a.cdIdentBenef,'
      #9'a.nmBenef as '#39'Nome ANS'#39','
      #9'u.nome, '
      #9'u.* from '
      'usuario u,'
      'ANS_CONF a'
      ''
      ' where     a.cdIdentBenef = u.codigo_completo'
      '       and a.flag_compara = 1'
      ''
      ' and u.Exclusao_Susep is not null'
      ' and a.DtCancelamento  is null'
      ' '
      ' ')
    Left = 195
    Top = 320
  end
  object QueryUpdExBaseXNANS: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'update usuario set Exclusao_Susep = null'
      'from'
      'ANS_CONF a'
      ''
      ' where     a.cdIdentBenef = usuario.codigo_completo'
      '       and a.flag_compara = 1'
      ''
      ' and usuario.Exclusao_Susep is not null'
      ' and a.DtCancelamento is null'
      ' ')
    Left = 390
    Top = 419
  end
  object QueryDivergANSXBase: TQuery
    DatabaseName = 'Multi'
    RequestLive = True
    SQL.Strings = (
      'select * from DivergANSXBase order by codigo_completo'
      ' ')
    Left = 294
    Top = 243
  end
  object sp_regAnsXBase: TStoredProc
    DatabaseName = 'Multi'
    StoredProcName = 'sp_regAnsXBase'
    Left = 300
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
  end
end
