�
 TFORMPESQUISACENTROCUSTO 0�  TPF0TFormPesquisaCentroCustoFormPesquisaCentroCustoLeft� Top� ActiveControlEditLocalizarCentroCustoBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa Centro de CustosClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInch`
TextHeight TDBGridDBGridPesquisaCentroCustosLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceCentroCustoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaCentroCustosExit	OnKeyDown!DBGridPesquisaCentroCustosKeyDownColumnsExpanded	FieldNameId_ContaTitle.CaptionIdentificadorVisible	 Expanded	FieldNameContaVisible	 Expanded	FieldName	DescricaoTitle.Caption	Descri��oVisible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorPlanosLeftTopWidth�Height
DataSourceDataSourceCentroCustoVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnteriorPr�ximo�ltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarCentroCustoLeft@TopWidthQHeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarCentroCustoExit	OnKeyDownEditLocalizarCentroCustoKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose   TQueryQueryCentroCustoDatabaseNameMultiRequestLive	SQL.Stringsselect * from Centro_Custowhere Descricao >=  :Descricaoorder by Grupo_Conta, Conta LeftTop� 	ParamDataDataTypeftStringName	Descricao	ParamTypeptInput   TIntegerFieldQueryCentroCustoId_Conta	FieldNameId_ContaOriginMULTI.Centro_Custo.Id_Conta  TStringFieldQueryCentroCustoConta	FieldNameContaOriginMULTI.Centro_Custo.ContaSize
  TStringFieldQueryCentroCustoDescricao	FieldName	DescricaoOriginMULTI.Centro_Custo.DescricaoSize2   TDataSourceDataSourceCentroCustoDataSetQueryCentroCustoLeftTop�    