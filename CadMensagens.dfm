object FmCadMensagens: TFmCadMensagens
  Left = 66
  Top = 56
  Width = 859
  Height = 565
  Caption = 'Cadastro de Mensagens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 499
    Width = 843
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 240
      Height = 28
      DataSource = DsMensagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 402
      Top = 2
      Width = 65
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Kind = bkClose
    end
  end
  object DBGrid1: TDBGrid
    Left = 486
    Top = 0
    Width = 357
    Height = 499
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cd_codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Descri'#231#227'o/Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtcriacao'
        Title.Caption = 'Cria'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtValidade'
        Title.Caption = 'Validade'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ds_mensagem'
        Title.Caption = 'Mensagem'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 499
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 198
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 130
      Top = 195
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 16
      Top = 261
      Width = 52
      Height = 13
      Caption = 'Mensagem'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 16
      Top = 8
      Width = 185
      Height = 105
      Caption = '&Tipo de mensagem'
      DataField = 'cd_tipo'
      DataSource = DsMensagem
      Items.Strings = (
        'Para &Usu'#225'rio'
        'Para &Contratante'
        'Para C&ontratante Titular'
        'Para &Grupo de Contratante')
      TabOrder = 0
      Values.Strings = (
        'US'
        'CO'
        'CT'
        'GC')
      OnClick = DBRadioGroup1Click
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 215
      Width = 74
      Height = 21
      DataField = 'cd_codigo'
      DataSource = DsMensagem
      TabOrder = 1
      OnExit = DBEdit1Exit
    end
    object ButtonPesqCoop: TButton
      Left = 90
      Top = 215
      Width = 19
      Height = 21
      Hint = 'Pesquisar por Nome/Descri'#231#227'o'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = ButtonPesqCoopClick
    end
    object Edit1: TEdit
      Left = 127
      Top = 215
      Width = 341
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 284
      Top = 8
      Width = 185
      Height = 129
      TabOrder = 4
      object Label4: TLabel
        Left = 9
        Top = 11
        Width = 97
        Height = 13
        Caption = 'Data Cadastramento'
      end
      object Label5: TLabel
        Left = 10
        Top = 86
        Width = 44
        Height = 13
        Caption = 'Operador'
      end
      object Label6: TLabel
        Left = 10
        Top = 50
        Width = 122
        Height = 13
        Caption = 'Data Validade Mensagem'
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 29
        Width = 168
        Height = 21
        DataField = 'dtcriacao'
        DataSource = DsMensagem
        Enabled = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 9
        Top = 102
        Width = 168
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 9
        Top = 65
        Width = 168
        Height = 21
        DataField = 'dtValidade'
        DataSource = DsMensagem
        TabOrder = 2
      end
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 279
      Width = 455
      Height = 192
      DataField = 'ds_mensagem'
      DataSource = DsMensagem
      MaxLength = 300
      TabOrder = 5
      OnKeyPress = DBMemo1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 480
      Width = 241
      Height = 17
      Caption = 'Mostrar somente mensagens n'#227'o vencidas'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = CheckBox1Click
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 121
      Width = 185
      Height = 17
      Hint = 
        'Se marcada essa op'#231#227'o, habilita caixa de checagem  perguntando s' +
        'e deseja ou n'#227'o visualizar essa mensagem novamente'
      Caption = 'Permite desabilitar a mensagem'
      DataField = 'permite_desabilitar'
      DataSource = DsMensagem
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 15
      Top = 143
      Width = 449
      Height = 46
      Caption = '&Avisar na terla de'
      Columns = 3
      DataField = 'tipo_aviso'
      DataSource = DsMensagem
      Items.Strings = (
        'Or'#231'amentos'
        'Contratantes'
        'Todas as Telas')
      TabOrder = 8
      Values.Strings = (
        'O'
        'C'
        'T')
      OnClick = DBRadioGroup1Click
    end
  end
  object DsMensagem: TDataSource
    DataSet = QueryMensagem
    Left = 408
    Top = 208
  end
  object QueryMensagem: TADOQuery
    Connection = DM.ADOConn
    CursorLocation = clUseServer
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    AfterScroll = ADOQuery1AfterScroll
    OnNewRecord = QueryMensagemNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select * from mensagem where dtvalidade > getdate() -1 order by ' +
        'dtcriacao desc'
      '')
    Left = 256
    Top = 160
  end
  object ADOQueryMsg: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    AfterScroll = ADOQueryMsgAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select m.permite_desabilitar,m.cd_tipo,'#39'Usu'#225'rio'#39' tipo, m.cd_codi' +
        'go, u.nome, m.ds_mensagem, m.dtcriacao,dtValidade from mensagem ' +
        'm'
      'left join usuario u'
      'on u.codigo_completo = m.cd_codigo'
      'where cd_tipo = '#39'US'#39
      'and dtvalidade > getdate() -1'
      'UNION'
      
        'select m.permite_desabilitar,m.cd_tipo,'#39'Contratante'#39' tipo, m.cd_' +
        'codigo, c.nome, m.ds_mensagem, m.dtcriacao,dtValidade from mensa' +
        'gem m'
      'left join contratante c'
      'on C.codigo = m.cd_codigo'
      'where cd_tipo = '#39'CO'#39
      'and dtvalidade > getdate() -1'
      'UNION'
      
        'select m.permite_desabilitar,m.cd_tipo,'#39'Contratante Titular'#39' tip' +
        'o, m.cd_codigo, c.nome, m.ds_mensagem, m.dtcriacao,dtValidade fr' +
        'om mensagem m'
      'left join contratante c'
      'on C.codigo = m.cd_codigo'
      'where cd_tipo = '#39'CT'#39
      'and dtvalidade > getdate() -1'
      'UNION'
      
        'select m.permite_desabilitar,m.cd_tipo,'#39'Grupo de contratante'#39' ti' +
        'po, m.cd_codigo, gc.descricao, m.ds_mensagem, m.dtcriacao,dtVali' +
        'dade from mensagem m'
      'left join grupo_contratante gc'
      'on gc.CODIGO = m.cd_codigo'
      'where cd_tipo = '#39'GC'#39
      'and dtvalidade > getdate() -1'
      'order by dtcriacao')
    Left = 224
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryMsg
    Left = 224
    Top = 88
  end
end
