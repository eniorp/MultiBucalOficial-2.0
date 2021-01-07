inherited FmEmissaoCarteirinha: TFmEmissaoCarteirinha
  Left = 278
  Top = 53
  Width = 725
  Height = 675
  Caption = 'Controle de Emiss'#227'o de Carteirinhas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLeft: TPanel
    Height = 636
  end
  inherited PanelRigth: TPanel
    Left = 699
    Height = 636
  end
  inherited PanelCenter: TPanel
    Width = 689
    Height = 636
    inherited PanelBotton: TPanel
      Top = 595
      Width = 689
      inherited Panel1: TPanel
        Left = 597
      end
      object BitBtn2: TBitBtn
        Left = 1
        Top = 8
        Width = 144
        Height = 25
        Caption = '&Emitir Carteirinhas'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object BitBtn3: TBitBtn
        Left = 153
        Top = 8
        Width = 152
        Height = 25
        Caption = 'Comprovante de Entrega'
        TabOrder = 2
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
    end
    inherited PanelTop: TPanel
      Width = 689
      Height = 332
      inherited Bevel1: TBevel
        Top = 322
        Width = 689
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 689
        Height = 192
        Align = alTop
        Caption = 'Lote/Controle de Entrega'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 33
          Width = 75
          Height = 13
          Caption = 'C'#243'digo Controle'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 105
          Top = 31
          Width = 47
          Height = 13
          Caption = 'Operador '
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 198
          Top = 32
          Width = 66
          Height = 13
          Caption = 'Data Inclus'#227'o'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 430
          Top = 32
          Width = 181
          Height = 13
          Caption = 'Pessoa que recebeu a(s) carteirinha(s)'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 294
          Top = 32
          Width = 92
          Height = 13
          Caption = 'Dt Emiss'#227'o Carteira'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 8
          Top = 76
          Width = 55
          Height = 13
          Caption = 'Contratante'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 128
          Top = 77
          Width = 86
          Height = 13
          Caption = 'Nome Contratante'
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 49
          Width = 83
          Height = 21
          DataField = 'cd_emissao'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 101
          Top = 47
          Width = 92
          Height = 21
          DataField = 'cd_operador'
          DataSource = DataSource2
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 198
          Top = 47
          Width = 91
          Height = 21
          DataField = 'dt_inclusao'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 427
          Top = 48
          Width = 188
          Height = 21
          DataField = 'nm_recepcao'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 3
        end
        object DBNavigator1: TDBNavigator
          Left = 5
          Top = 132
          Width = 164
          Height = 25
          DataSource = DataSource2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 292
          Top = 48
          Width = 108
          Height = 21
          DataField = 'dt_geracao'
          DataSource = DataSource2
          ReadOnly = True
          TabOrder = 5
        end
        object Button4: TButton
          Left = 182
          Top = 133
          Width = 111
          Height = 25
          Caption = 'Incluir Novo Lote'
          TabOrder = 6
          OnClick = Button4Click
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 92
          Width = 83
          Height = 21
          DataField = 'cd_contratante'
          DataSource = DataSource2
          TabOrder = 7
          OnExit = DBEdit8Exit
        end
        object BitBtn1: TBitBtn
          Left = 98
          Top = 91
          Width = 24
          Height = 21
          Hint = 'Pesquisa de Contratante'
          TabOrder = 8
          OnClick = BitBtn1Click
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
        object Edit2: TEdit
          Left = 128
          Top = 93
          Width = 369
          Height = 21
          ReadOnly = True
          TabOrder = 9
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 221
        Width = 689
        Height = 101
        Align = alBottom
        Caption = 'Incluir registro para emiss'#227'o de Carteirinha'
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 72
          Height = 13
          Caption = 'C'#243'digo Usu'#225'rio'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 128
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object BitBtnPesquisaContratante: TBitBtn
          Left = 101
          Top = 37
          Width = 24
          Height = 21
          Hint = 'Pesquisa de Usu'#225'rio'
          TabOrder = 0
          OnClick = BitBtnPesquisaContratanteClick
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
        object DBEdit7: TDBEdit
          Left = 8
          Top = 40
          Width = 85
          Height = 21
          DataField = 'cd_usuario'
          DataSource = DataSource3
          TabOrder = 1
          OnKeyPress = DBEdit7KeyPress
        end
        object Edit1: TEdit
          Left = 128
          Top = 40
          Width = 369
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 2
        end
        object Button2: TButton
          Left = 603
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 602
          Top = 70
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 5
          OnClick = Button3Click
        end
        object Button1: TButton
          Left = 602
          Top = 39
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 3
          OnClick = Button1Click
        end
      end
    end
    inherited DBGrid1: TDBGrid
      Top = 332
      Width = 689
      Height = 263
      DataSource = DataSource3
      ReadOnly = True
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_emissao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cd_usuario'
          Title.Caption = 'C'#243'digo Completo'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Usu'#225'rio'
          Width = 468
          Visible = True
        end>
    end
  end
  inherited Query1: TQuery
    Left = 186
    Top = 264
  end
  inherited DataSource1: TDataSource
    Left = 130
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from emissao_carteirinha  where'
      '1 = 1'
      'order by cd_emissao '
      '')
    Left = 466
    Top = 256
    object ADOQuery1cd_emissao: TIntegerField
      FieldName = 'cd_emissao'
    end
    object ADOQuery1cd_operador: TStringField
      FieldName = 'cd_operador'
    end
    object ADOQuery1dt_inclusao: TDateTimeField
      FieldName = 'dt_inclusao'
    end
    object ADOQuery1dt_geracao: TDateTimeField
      FieldName = 'dt_geracao'
    end
    object ADOQuery1nm_recepcao: TStringField
      FieldName = 'nm_recepcao'
      Size = 50
    end
    object ADOQuery1cd_contratante: TIntegerField
      FieldName = 'cd_contratante'
      OnValidate = ADOQuery1cd_contratanteValidate
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 352
    Top = 248
  end
  object ADOQueryUsuLote: TADOQuery
    Connection = DM.ADOConn
    CursorType = ctStatic
    BeforePost = ADOQueryUsuLoteBeforePost
    AfterScroll = ADOQueryUsuLoteAfterScroll
    OnNewRecord = ADOQueryUsuLoteNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'select a.*, b.nome from itens_emissao_carteirinha a, usuario b w' +
        'here b.codigo_completo = a.cd_usuario and cd_emissao ='
      '0')
    Left = 290
    Top = 208
    object ADOQueryUsuLotecd_emissao: TIntegerField
      FieldName = 'cd_emissao'
    end
    object ADOQueryUsuLotecd_usuario: TIntegerField
      FieldName = 'cd_usuario'
      OnValidate = ADOQueryUsuLotecd_usuarioValidate
    end
    object ADOQueryUsuLotenome: TStringField
      FieldName = 'nome'
      Size = 40
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQueryUsuLote
    Left = 352
    Top = 304
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.jpg'
    Filter = 'JPG|*.jpg|JPEG|*.jpeg'
    InitialDir = 'c:\multiodonto'
    Left = 418
    Top = 304
  end
end
