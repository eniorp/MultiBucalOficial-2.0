object FormCancArqSusep: TFormCancArqSusep
  Left = 252
  Top = 176
  Width = 306
  Height = 166
  BorderIcons = [biSystemMenu]
  Caption = 'Cancela '#218'ltima Gera'#231#227'o de arquivo SUSEP'
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
  object Bevel1: TBevel
    Left = 5
    Top = 7
    Width = 260
    Height = 58
  end
  object Bevel2: TBevel
    Left = 5
    Top = 69
    Width = 261
    Height = 42
  end
  object Label1: TLabel
    Left = 14
    Top = 15
    Width = 221
    Height = 13
    Caption = 'Data da gera'#231#227'o do '#250'ltimo arquivo SIB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MaskEditData: TMaskEdit
    Left = 86
    Top = 36
    Width = 90
    Height = 21
    EditMask = '!90/90/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
    OnKeyDown = MaskEditDataKeyDown
  end
  object BitBtnCancela: TBitBtn
    Left = 16
    Top = 75
    Width = 130
    Height = 31
    Caption = '&Cancela arquivo'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnCancelaClick
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
  object BitBtn2: TBitBtn
    Left = 151
    Top = 75
    Width = 102
    Height = 31
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Kind = bkClose
  end
  object QueryUsuarios: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'select top 1 * from usuario'
      'where inclusao_susep >= :Data1'
      'or exclusao_susep >= :Data2'
      'or alteracao_susep >=:Data1')
    Left = 200
    Top = 24
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Data1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Data2'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Data1'
        ParamType = ptInput
      end>
  end
  object StoredPCancelaSucep: TADOStoredProc
    Connection = DM.ADOConn
    ProcedureName = 'SpCancArqSusep'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@data'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 152
    Top = 24
  end
end
