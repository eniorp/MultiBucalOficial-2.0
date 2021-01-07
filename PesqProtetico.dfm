inherited FmPesqProtetico: TFmPesqProtetico
  Left = 211
  Top = 178
  Caption = 'Pesquisa de Prot'#233'tico'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCenter: TPanel
    inherited PanelBotton: TPanel
      inherited Panel1: TPanel
        Left = 352
        Width = 164
        inherited BitBtnSair: TBitBtn
          Left = 89
        end
        object BitBtn2: TBitBtn
          Left = 9
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Confirmar'
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
            44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
            00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
            33833F333383F33300003333AA463362A433333333383F333833F33300003333
            6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
            33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
            6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
            000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
            333383333333F3330000333333322AAA4333333333333833333F333300003333
            333322A4333333333333338333F333330000333333344A433333333333333338
            3F333333000033333336A24333333333333333833F333333000033333336AA43
            33333333333333833F3333330000333333336663333333333333333888333333
            0000}
          NumGlyphs = 2
        end
      end
    end
    inherited PanelTop: TPanel
      object Label1: TLabel
        Left = 2
        Top = 8
        Width = 132
        Height = 13
        Caption = 'Informe o nome do prot'#233'tico'
      end
      object EditNmProt: TEdit
        Left = 0
        Top = 24
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = EditNmProtKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 288
        Top = 20
        Width = 87
        Height = 25
        Caption = 'Pesquisar'
        Default = True
        TabOrder = 1
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
    end
    inherited DBGrid1: TDBGrid
      Hint = 'D'#234' um duplo clique para confirmar'
      ReadOnly = True
      OnDblClick = BitBtn2Click
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone1'
          Title.Caption = '1'#186' Fone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco_Comercial'
          Title.Caption = 'Endere'#231'o Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro_Comercial'
          Title.Caption = 'Bairroc Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep_Comercial'
          Title.Caption = 'Cep Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade_Comercial'
          Title.Caption = 'Cidade Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado_Comercial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco_Residencial'
          Title.Caption = 'Endereco Residencial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro_Residencial'
          Title.Caption = 'Bairro Residencial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep_Residencial'
          Title.Caption = 'Cep Residencial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade_Residencial'
          Title.Caption = 'Cidade Residencial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado_Residencial'
          Title.Caption = 'Estado Residencial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fax'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone2'
          Title.Caption = '2'#186' Fone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Especialidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Exclusao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Codigo_Clinica'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Acrescimo_NF'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Desconto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Cic'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Inss'
          Visible = False
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    Left = 170
    Top = 128
  end
end
