�
 TFORMPESQUISACLINICA 05  TPF0TFormPesquisaClinicaFormPesquisaClinicaLeft� Top� ActiveControlEditLocalizarClinicaBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa ClinicaClientHeightSClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivatePixelsPerInch`
TextHeight TDBGridDBGridPesquisaClinicasLeft Top Width�HeightAlignalClientColorclInfoBk
DataSourceDataSourceClinicasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaClinicasExit	OnKeyDownEditLocalizarClinicaKeyDownColumnsExpanded	FieldNameCodigoVisible	 Expanded	FieldName	DescricaoWidth�Visible	    TPanelPanelNavigatorPesquisaLeft TopWidth�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorClinicaLeftTopWidth�Height
DataSourceDataSourceClinicasVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnteriorPr�ximo�ltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top1Width�Height"AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width2HeightCaptionConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarClinicaLeft@TopWidth?HeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarClinicaExit	OnKeyDownEditLocalizarClinicaKeyDown  TBitBtn
BitBtnSairLeft�TopWidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnSairClickKindbkClose   TQueryQueryClinicasDatabaseNameMultiRequestLive	SQL.Stringsselect *  from Clinicaswhere Descricao >= ''order by Descricao LeftTop�  TIntegerFieldQueryClinicasCodigo	FieldNameCodigoOriginMULTI.Clinicas.Codigo  TStringFieldQueryClinicasDescricao	FieldName	DescricaoOriginMULTI.Clinicas.DescricaoSize2  TStringFieldQueryClinicasCGC	FieldNameCGCOriginMULTI.Clinicas.CGCSize2  TStringFieldQueryClinicasIE	FieldNameIEOriginMULTI.Clinicas.IESize2  TStringFieldQueryClinicasEndereco	FieldNameEnderecoOriginMULTI.Clinicas.EnderecoSize2  TStringFieldQueryClinicasBairro	FieldNameBairroOriginMULTI.Clinicas.BairroSize2  TStringFieldQueryClinicasCEP	FieldNameCEPOriginMULTI.Clinicas.CEPSize2  TStringFieldQueryClinicasCidade	FieldNameCidadeOriginMULTI.Clinicas.CidadeSize2  TStringFieldQueryClinicasEstado	FieldNameEstadoOriginMULTI.Clinicas.EstadoSize  TStringFieldQueryClinicasTelefone	FieldNameTelefoneOriginMULTI.Clinicas.TelefoneSize2  TStringFieldQueryClinicasFax	FieldNameFaxOriginMULTI.Clinicas.FaxSize  TStringFieldQueryClinicasEmail	FieldNameEmailOriginMULTI.Clinicas.EmailSize   TDataSourceDataSourceClinicasDataSetQueryClinicasLeftTop�   TQueryQuery50DatabaseNameMultiSQL.Strings-select top 50 Descricao, Codigo from Clinicaswhere Descricao > ''order by Descricao  LeftTop�  TStringFieldQuery50Descricao	FieldName	DescricaoSize2  TIntegerFieldQuery50Codigo	FieldNameCodigo   TDataSourceDataSource50DataSetQuery50LeftTop�    