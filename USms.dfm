object FmEnviaSMS: TFmEnviaSMS
  Left = 210
  Top = 139
  Width = 386
  Height = 439
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'SMS'
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
  object Label1: TLabel
    Left = 16
    Top = 5
    Width = 27
    Height = 16
    Caption = 'ddd:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 58
    Top = 5
    Width = 42
    Height = 16
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 54
    Width = 121
    Height = 16
    Caption = 'Tipo de Mensagem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelCaracter: TLabel
    Left = 73
    Top = 262
    Width = 18
    Height = 13
    Caption = '160'
  end
  object Label6: TLabel
    Left = 16
    Top = 262
    Width = 51
    Height = 13
    Caption = 'Caracteres'
  end
  object Label4: TLabel
    Left = 16
    Top = 100
    Width = 71
    Height = 16
    Caption = 'Mensagem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 319
    Width = 345
    Height = 25
    Caption = 'Verificar Quantidade de Cr'#233'ditos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 288
    Width = 345
    Height = 25
    Caption = 'Enviar Mensagem'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object EditDD: TEdit
    Left = 16
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 2
  end
  object EditFone: TEdit
    Left = 55
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditMensagem: TMemo
    Left = 16
    Top = 121
    Width = 345
    Height = 135
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 160
    ParentFont = False
    TabOrder = 4
    OnChange = EditMensagemChange
  end
  object ButtonCadastrarMsgSMS: TButton
    Left = 16
    Top = 351
    Width = 345
    Height = 25
    Caption = 'Cadastrar Mensagens'
    Enabled = False
    TabOrder = 5
    OnClick = ButtonCadastrarMsgSMSClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 70
    Width = 265
    Height = 21
    KeyField = 'cd_mensagem'
    ListField = 'ds_mensagem'
    ListSource = DataSource1
    TabOrder = 6
    OnClick = DBLookupComboBox1Click
  end
  object CheckBoxPersonalizarSMS: TCheckBox
    Left = 217
    Top = 262
    Width = 140
    Height = 17
    Caption = 'Perssonalizar Mensagem'
    Enabled = False
    TabOrder = 7
    OnClick = CheckBoxPersonalizarSMSClick
  end
  object Button2: TButton
    Left = 16
    Top = 383
    Width = 345
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = Button2Click
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'http://www.byjg.com.br/site/webservice.php/ws/sms?WSDL'
    Service = 'SMSService'
    Port = 'SMSServicePort'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 144
    Top = 151
  end
  object ADOQueryMsg: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from mensagemSMS where lg_ativo = '#39'S'#39' order by nm_mensa' +
        'gem')
    Left = 296
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryMsg
    Left = 242
    Top = 24
  end
end
