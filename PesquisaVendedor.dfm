�
 TFORMPESQUISAVENDEDOR 0�  TPF0TFormPesquisaVendedorFormPesquisaVendedorLeft� Top� ActiveControlEditLocalizarVendedoresBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa VendedoresClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInch`
TextHeight TDBGridDBGridPesquisaVendedoresLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceVendedoresFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaVendedoresExit	OnKeyDownDBGridPesquisaVendedoresKeyDownColumnsExpanded	FieldNameCodigoTitle.Caption   CódigoVisible	 Expanded	FieldNameNomeWidth�Visible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorVendedoresLeftTopWidth�Height
DataSourceDataSourceVendedoresVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarVendedoresLeft@TopWidthQHeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarVendedoresExit	OnKeyDownEditLocalizarVendedoresKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose   TQueryQueryVendedoresDatabaseNameMultiRequestLive	SQL.Strings!select Nome, Codigo from Vendedorwhere Nome = '''and data_exclusao is null order by Nome Left"Top�  TStringFieldQueryVendedoresNome	FieldNameNomeOriginMULTI.Vendedor.NomeSize(  TIntegerFieldQueryVendedoresCodigo	FieldNameCodigoOriginMULTI.Vendedor.Codigo   TDataSourceDataSourceVendedoresDataSetQueryVendedoresLeftpTop�   TQueryQuery50DatabaseNameMultiSQL.Strings(select top 50 Nome, Codigo from Vendedorwhere Nome > ''order by Nome  Left"Top TStringFieldQuery50Nome	FieldNameNomeSize(  TIntegerFieldQuery50Codigo	FieldNameCodigo    