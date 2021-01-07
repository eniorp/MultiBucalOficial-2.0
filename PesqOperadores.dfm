inherited FmPesqOperadores: TFmPesqOperadores
  Width = 423
  Caption = 'Pesquisa de Operadores do Sistema'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRigth: TPanel
    Left = 405
  end
  inherited PanelCenter: TPanel
    Width = 395
    inherited PanelBotton: TPanel
      Width = 395
      inherited Panel1: TPanel
        Left = 303
      end
    end
    inherited PanelTop: TPanel
      Width = 395
      inherited Bevel1: TBevel
        Width = 395
      end
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Edit1: TEdit
        Left = 48
        Top = 20
        Width = 233
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 289
        Top = 17
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 395
      Hint = 'Dê um duplo clique para salvar a pesquisa'
      OnDblClick = DBGrid1DblClick
    end
  end
  inherited Query1: TQuery
    SQL.Strings = (
      'select  codigo,apelido,nome from operador where apelido like '
      #39#39)
  end
end
