�
 TFORMPESQUISADENTISTAS 0�  TPF0TFormPesquisaDentistasFormPesquisaDentistasLeft� Top� ActiveControlEditLocalizarDentistasBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa DentistasClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivate	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TDBGridDBGridPesquisaDentistasLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceDentistasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaDentistasExit	OnKeyDownEditLocalizarDentistasKeyDownColumnsExpanded	FieldNameCodigoTitle.Caption   CódigoVisible	 Expanded	FieldNameNomeWidth�Visible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorDentistaLeftTopWidth�Height
DataSourceDataSourceDentistasVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarDentistasLeft@TopWidth?HeightCharCaseecUpperCaseTabOrder OnChangeEditLocalizarDentistasChangeOnEnterEditLocalizarDentistasChangeOnExitEditLocalizarDentistasExit	OnKeyDownEditLocalizarDentistasKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose   TQueryQueryDentistasDatabaseNameMultiRequestLive	SQL.Stringsselect *  from Dentistawhere Nome >= ''and Data_Exclusao is nullorder by Nome LeftTop�  TIntegerFieldQueryDentistasCodigo	FieldNameCodigoOriginMULTI.Dentista.Codigo  TStringFieldQueryDentistasNome	FieldNameNomeOriginMULTI.Dentista.NomeSize(  TDateTimeFieldQueryDentistasData_Exclusao	FieldNameData_ExclusaoOriginMULTI.Dentista.Data_Exclusao   TDataSourceDataSourceDentistasDataSetQueryDentistasLeftTop�   TQueryQuery50DatabaseNameMultiSQL.Strings(select top 50 Nome, Codigo from Dentistawhere Nome > ''order by Nome  LeftTop�  TStringFieldQuery50Nome	FieldNameNomeSize(  TIntegerFieldQuery50Codigo	FieldNameCodigo   TDataSourceDataSource50DataSetQuery50LeftTop�    