�
 TFORMTABPRECOXPLANO 0  TPF0TFormTabPrecoxPlanoFormTabPrecoxPlanoLeftxTop� BorderIconsbiSystemMenu BorderStylebsSingleCaption   Tabela Preço X PlanoClientHeight\ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top8Width�Height$AlignalBottom
BevelOuterbvNoneTabOrder  TPanelPanel15LeftTop Width� Height$AlignalClient
BevelInner	bvLoweredTabOrder  TBitBtn
BitBtnSairLeftTopWidthJHeight HintSair do CadastroCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintShowHint	TabOrder KindbkClose   TPanelPanel13Left Top WidthHeight$AlignalLeft
BevelInner	bvLoweredTabOrder TDBNavigatorDBNavigatorCadastroLeftTopWidthHeight 
DataSourceDataSourceTabPrecoXPlanoVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbPostnbCancel AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoAcrescentarExcluirEditarGravarCancelar	Atualizar ParentShowHintShowHint	TabOrder     TPanelPanel8Left Top Width�Height1AlignalTop
BevelOuterbvNoneTabOrder TLabelLabel27LeftTopWidth(HeightCaptionTabelaFocusControlDBEditTabelaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel1LeftTopWidth!HeightCaptionPlanoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TDBEditDBEditTabelaLeftTopWidthMHeight	DataFieldTabelaPreco
DataSourceDataSourceTabPrecoXPlanoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder	OnKeyDownDBEditTabelaKeyDown  TDBCheckBoxDBCheckBoxAtivaLeft`TopWidth;HeightCaptionAtiva	DataFieldAtiva
DataSourceDataSourceTabPrecoXPlanoFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderValueCheckedTrueValueUncheckedFalse	OnKeyDownDBCheckBoxAtivaKeyDown  TDBLookupComboBoxDBLookupComboBoxPlanoLeftTopWidth� Height	DataFieldDescricaoPlano
DataSourceDataSourceTabPrecoXPlano	ListField	DescricaoTabOrder    TPanelPanel10Left Top1Width�HeightAlignalClient
BevelWidthCaptionPanel14TabOrder TDBGridDBGridTabPrecoPlanoLeftTopWidth�HeightAlignalClientColorclInfoBk
DataSourceDataSourceTabPrecoXPlanoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold ColumnsExpanded	FieldNamePlanoTitle.Caption   CódigoWidthPVisible	 Expanded	FieldNameDescricaoPlanoWidthvVisible	 Expanded	FieldNameTabelaPrecoTitle.CaptionTabelaVisible	 Expanded	FieldName	Ativa_AuxTitle.CaptionAtivaWidth2Visible	     TDataSourceDataSourcePlanoLeft� Top�   TQueryQueryTabPrecoXPlanoAfterInsertQueryTabPrecoXPlanoAfterInsert	AfterPostQueryTabPrecoXPlanoAfterPostOnCalcFieldsQueryTabPrecoXPlanoCalcFieldsDatabaseNameMultiFiltered	OnFilterRecordQueryTabPrecoXPlanoFilterRecordRequestLive	SQL.Stringsselect * from TabPrecoXPlanoorder by Plano Left.TopU TIntegerFieldQueryTabPrecoXPlanoPlano	FieldNamePlanoOrigin!MULTI.TabelaCoberturaXPlano.Plano  TStringField!QueryTabPrecoXPlanoDescricaoPlano	FieldKindfkLookup	FieldNameDescricaoPlanoLookupDataSet
QueryPlanoLookupKeyFieldsCodigoLookupResultField	Descricao	KeyFieldsPlanoSize2Lookup	  TBooleanFieldQueryTabPrecoXPlanoAtiva	FieldNameAtivaOrigin!MULTI.TabelaCoberturaXPlano.Ativa  TStringFieldQueryTabPrecoXPlanoAtiva_Aux	FieldKindfkCalculated	FieldName	Ativa_AuxSize
Calculated	  TIntegerFieldQueryTabPrecoXPlanoTabelaPreco	FieldNameTabelaPrecoOrigin MULTI.TabPrecoXPlano.TabelaPreco   TDataSourceDataSourceTabPrecoXPlanoDataSetQueryTabPrecoXPlanoLeft-Top�   TQuery
QueryPlanoDatabaseNameMultiSQL.Stringsselect * from Planoorder by Codigo  Left� Top]   