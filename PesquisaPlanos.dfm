�
 TFORMPESQUISAPLANOS 0�  TPF0TFormPesquisaPlanosFormPesquisaPlanosLeft� Top� ActiveControlEditLocalizarPlanosBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa PlanosClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInch`
TextHeight TDBGridDBGridPesquisaPlanosLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourcePlanosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaPlanosExit	OnKeyDownDBGridPesquisaPlanosKeyDownColumnsExpanded	FieldNameCodigoTitle.Caption   CódigoVisible	 Expanded	FieldName	DescricaoWidth�Visible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorPlanosLeftTopWidth�Height
DataSourceDataSourcePlanosVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarPlanosLeft@TopWidthQHeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarPlanosExit	OnKeyDownEditLocalizarPlanosKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose   TQueryQueryPlanosDatabaseNameMultiRequestLive	SQL.Strings#select Descricao, Codigo from Plano"where ativo = 1 and Descricao = ''order by Descricao LeftBTop�  TStringFieldQueryPlanosDescricao	FieldName	DescricaoOriginMULTI.Plano.DescricaoSize2  TIntegerFieldQueryPlanosCodigo	FieldNameCodigoOriginMULTI.Plano.Codigo   TDataSourceDataSourcePlanosDataSetQueryPlanosLeftPTop}  TQueryQuery50DatabaseNameMultiSQL.Strings*select top 50 Descricao, Codigo from Planowhere Descricao > ''order by Descricao  Left"Top_ TStringFieldQuery50Descricao	FieldName	DescricaoSize2  TIntegerFieldQuery50Codigo	FieldNameCodigo    