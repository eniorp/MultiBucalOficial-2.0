�
 TFORMPESQUISACOBERTURA 0\  TPF0TFormPesquisaCoberturaFormPesquisaCoberturaLeft� Top� ActiveControlEditLocalizarCoberturaBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa CoberturaClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivatePixelsPerInch`
TextHeight TDBGridDBGridPesquisaCoberturaLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceCoberturaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaCoberturaExit	OnKeyDownEditLocalizarCoberturaKeyDownColumnsExpanded	FieldNameCodigoTabelaTitle.CaptionC�digoVisible	 Expanded	FieldName	DescricaoWidth�Visible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorCoberturaLeftTopWidth�Height
DataSourceDataSourceCoberturaVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnteriorPr�ximo�ltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarCoberturaLeft@TopWidth?HeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarCoberturaExit	OnKeyDownEditLocalizarCoberturaKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnSairClickKindbkClose   TQueryQueryCoberturaDatabaseNameMultiRequestLive	SQL.Stringsselect *  from TabelaCoberturawhere Descricao >= ''order by Descricao LeftTop�  TIntegerFieldQueryCoberturaCodigoTabela	FieldNameCodigoTabelaOrigin"MULTI.TabelaCobertura.CodigoTabela  TStringFieldQueryCoberturaDescricao	FieldName	DescricaoOriginMULTI.TabelaCobertura.Descricao	FixedChar	Size2   TDataSourceDataSourceCoberturaDataSetQueryCoberturaLeftTop�   TQueryQuery50DatabaseNameMultiSQL.Strings:select top 50 Descricao, CodigoTabela from TabelaCoberturawhere Descricao > ''order by Descricao  LeftTop�  TStringFieldQuery50Descricao	FieldName	Descricao	FixedChar	Size2  TIntegerFieldQuery50CodigoTabela	FieldNameCodigoTabela   TDataSourceDataSource50DataSetQuery50LeftTop�    