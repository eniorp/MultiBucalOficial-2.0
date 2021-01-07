object FmFrEtiquetas: TFmFrEtiquetas
  Left = -4
  Top = -4
  Width = 1032
  Height = 742
  VertScrollBar.Position = 5
  Caption = 'FmFrEtiquetas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = -5
    Width = 813
    Height = 1179
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DsEtiq
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 215.000000000000000000
    PageSetup.PaperHeight = 312.000000000000000000
    object RLDetailGrid1: TRLDetailGrid
      Left = 5
      Top = 5
      Width = 803
      Height = 101
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      ColCount = 2
      object RLDBText4: TRLDBText
        Left = 13
        Top = 16
        Width = 72
        Height = 16
        DataField = 'endereco'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 13
        Top = 2
        Width = 80
        Height = 16
        DataField = 'cdUsuario'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 84
        Top = 2
        Width = 40
        Height = 16
        DataField = 'nome'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 13
        Top = 31
        Width = 48
        Height = 16
        DataField = 'compl'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 13
        Top = 46
        Width = 56
        Height = 16
        DataField = 'bairro'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 269
        Top = 46
        Width = 32
        Height = 16
        DataField = 'cep'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 299
        Top = 16
        Width = 56
        Height = 16
        Alignment = taRightJustify
        DataField = 'numero'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 13
        Top = 61
        Width = 56
        Height = 16
        DataField = 'cidade'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 269
        Top = 61
        Width = 56
        Height = 16
        DataField = 'estado'
        DataSource = DsEtiq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object sp_listaEtiq: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_listaEtiq'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@cdidSession'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
      end>
    Left = 272
    Top = 168
  end
  object DsEtiq: TDataSource
    DataSet = sp_listaEtiq
    Left = 168
    Top = 136
  end
  object sp_listaEtiqContrat: TADOStoredProc
    Connection = DM.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_listaEtiqContrat'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CdContrat'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end>
    Left = 376
    Top = 168
  end
end
