�
 TFORMPESQUISASERVICOS 0.  TPF0TFormPesquisaServicosFormPesquisaServicosLeft\Top� ActiveControlEditLocalizarServicosBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa ServicosClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivatePixelsPerInch`
TextHeight TDBGridDBGridPesquisaServicosLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceServicosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold ColumnsExpanded	FieldNameCodigoTitle.CaptionC�digoVisible	 Expanded	FieldName	DescricaoTitle.Caption	Descri��oWidthSVisible	 Expanded	FieldName	CategoriaVisible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorClienteLeftTopWidth�Height
DataSourceDataSourceServicosVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnteriorPr�ximo�ltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarServicosLeft@TopWidthHeightTabOrder OnChangeEditLocalizarServicosChangeOnEnterEditLocalizarServicosChange  TBitBtnBitBtnOKLeft`TopWidthIHeightCaption&OKFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkOK  TBitBtnBitBtnCancelarLeft�TopWidthIHeightCaption	&CancelarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnCancelarClickKindbkCancelSpacing�   TQueryQueryServicosDatabaseNameMultiRequestLive	SQL.Stringsselect *  from Servicoswhere Descricao >= ''order by Descricao  LeftBTop�  TIntegerFieldQueryServicosCodigo	FieldNameCodigoOriginMULTI.Servicos.Codigo  TStringFieldQueryServicosDescricao	FieldName	DescricaoOriginMULTI.Servicos.Descricao	FixedChar	Size(  TIntegerFieldQueryServicosCategoria	FieldName	CategoriaOriginMULTI.Servicos.Categoria   TDataSourceDataSourceServicosDataSetQueryServicosLeft^Top�   TQueryQuery50DatabaseNameMultiSQL.Strings-select top 50 Descricao, Codigo from Servicoswhere Descricao > ''order by Descricao  LeftBTop�  TStringFieldQuery50Descricao	FieldName	Descricao	FixedChar	Size(  TIntegerFieldQuery50Codigo	FieldNameCodigo   TDataSourceDataSource50DataSetQuery50Left_Top�    