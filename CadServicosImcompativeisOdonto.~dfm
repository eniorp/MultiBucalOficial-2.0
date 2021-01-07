object FmCadServIncompativeisOdonto: TFmCadServIncompativeisOdonto
  Left = 192
  Top = 126
  Width = 505
  Height = 248
  Caption = 'Cadastro de servi'#231'os incompativeis - Odontograma'
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 481
    Height = 161
    Caption = 'Regra'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 146
      Height = 13
      Caption = 'Se em um or'#231'amento o servi'#231'o'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 74
      Height = 13
      Caption = 'estiver digitado '
    end
    object Label3: TLabel
      Left = 136
      Top = 72
      Width = 163
      Height = 13
      Caption = 'vezes, n'#227'o deixar digitar o servi'#231'o '
    end
    object Label4: TLabel
      Left = 336
      Top = 104
      Width = 101
      Height = 13
      Caption = 'no mesmo or'#231'amento'
    end
    object Label5: TLabel
      Left = 16
      Top = 134
      Width = 57
      Height = 13
      Caption = 'Limitar Face'
    end
    object DBEdit1: TDBEdit
      Left = 157
      Top = 29
      Width = 74
      Height = 21
      DataField = 'cd_servico1'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 237
      Top = 29
      Width = 228
      Height = 21
      TabStop = False
      Color = clBtnShadow
      DataField = 'ds_servico1'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 95
      Top = 70
      Width = 31
      Height = 21
      DataField = 'qt_servico1'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 21
      Top = 101
      Width = 74
      Height = 21
      DataField = 'cd_Servico2'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 101
      Top = 101
      Width = 228
      Height = 21
      TabStop = False
      Color = clBtnShadow
      DataField = 'ds_servico2'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 79
      Top = 131
      Width = 74
      Height = 21
      CharCase = ecUpperCase
      DataField = 'face'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 10
    Top = 178
    Width = 340
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 414
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    Kind = bkClose
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 392
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    Parameters = <>
    SQL.Strings = (
      
        'select sio.*, s.descricao as ds_servico1, s1.descricao as ds_ser' +
        'vico2 '
      'from '
      '     ServIncompativeisOdonto sio, '
      '     servicos s, '
      '     servicos s1'
      'where '
      '         sio.cd_servico1 = s.codigo'
      '     and sio.cd_servico2 = s1.codigo '
      ''
      'order by sio.cd_servico1')
    Left = 352
    Top = 24
  end
end
