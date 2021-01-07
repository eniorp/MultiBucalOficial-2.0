object FmGeraArqRPCANS: TFmGeraArqRPCANS
  Left = 192
  Top = 107
  Width = 233
  Height = 140
  Caption = 'Geração de Arquivo RPC'
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
    Left = 23
    Top = 24
    Width = 82
    Height = 13
    Caption = 'Nome do Arquivo'
  end
  object Button1: TButton
    Left = 16
    Top = 72
    Width = 193
    Height = 25
    Caption = 'Gerar Arquivo RPC'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 196
    Height = 21
    TabOrder = 0
    Text = 'C:\ANS_RPC.TXT'
  end
  object Query1: TQuery
    DatabaseName = 'multi'
    SQL.Strings = (
      'select '
      '       '#39'410058991'#39' as NrPlanoAns,'
      '       '#39'MULTIODONTO EMPRESARIAL VIP'#39' as NmPlano,'
      '    '
      '       c.codigo    as Contrato'#9'        ,'
      '       2           as CondicaoContrat'#9','
      
        '       convert(char(10),p.DtIniAplicacaoRPC,103) as DtIniAplicac' +
        'aoRPC,'
      
        '       convert(char(10),p.DtFimAplicacaoRPC,103) as DtFimAplicac' +
        'aoRPC,'
      
        '       convert(char(10),p.DtIniAnaliseRPC  ,103) as DtIniAnalise' +
        'RPC  ,'
      
        '       convert(char(10),p.DtFimAnaliseRPC  ,103) as DtFimAnalise' +
        'RPC  ,'
      '       count(u.codigo)  as QtdeBenef'#9','
      '       '#39'N'#39#9#9'as SinalPercent ,'
      '       '#39'00000'#39'          as PercentReaj'#9
      '      '
      #9
      'from '
      ''
      ''
      'plano p,'
      'contratante c,'
      'usuario'#9'    u'
      ''
      ''
      'where '
      ' '#9'  c.plano   = p.codigo'
      '      and u.Contratante_Titular = c.codigo'
      '      and p.Fis_Jur = '#39'Jurídica'#39
      '      and c.exclusao is null'
      '      and u.data_exclusao is null'
      '--and c.codigo = 11553'
      '--tb contratante'
      ''
      'group by'
      '       c.codigo   '#9#9','
      '       p.DtIniAplicacaoRPC'#9','
      '       p.DtFimAplicacaoRPC'#9','
      '       p.DtIniAnaliseRPC '#9','
      '       p.DtFimAnaliseRPC '
      ''
      ''
      'order by c.codigo')
    Left = 16
    Top = 16
  end
  object QueryPref: TQuery
    DatabaseName = 'multi'
    SQL.Strings = (
      'select * from preferencia')
    Left = 72
  end
  object QueryParamANS: TQuery
    DatabaseName = 'multi'
    SQL.Strings = (
      'select * from ParamAns')
    Left = 56
    Top = 72
  end
  object QueryGenerica: TQuery
    DatabaseName = 'Multi'
    SQL.Strings = (
      'create procedure sptesteEnioApagar'
      ''
      'as'
      ''
      'select getdate()'
      ''
      'go'
      ''
      'create table tb1 (col1 int)')
    Left = 168
    Top = 8
  end
end
