�
 TFORMPESQUISACONTRATANTE 0  TPF0TFormPesquisaContratanteFormPesquisaContratanteLeftZTopKActiveControlEditLocalizarContratanteBorderIconsbiSystemMenu BorderStylebsSingleCaptionPesquisa ContratanteClientHeight�ClientWidth2Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivatePixelsPerInch`
TextHeight TLabelLabel2Left@TopXWidth8HeightCaption
Vencimento  TLabelLabel3Left@Top� Width(HeightCaptionInclusao  TLabelLabel4Left@Top� Width+HeightCaptionExclusao  TLabelLabel5Left@Top� WidthbHeightCaptionEndereco_Comercial  TLabelLabel6Left@TopWidthOHeightCaptionBairro_Comercial  TLabelLabel7Left@TopHWidthkHeightCaptionEndereco_Residencial  TLabelLabel8Left@TopxWidthHeightCaptionFone1  TLabelLabel9Left@Top�WidthHeightCaptionFone2  TDBGridDBGridPesquisaContratanteLeft Top Width2Height
AlignalClientColorclInfoBk
DataSourceDataSourceContratanteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OnExitDBGridPesquisaContratanteExit	OnKeyDownEditLocalizarContratanteKeyDownColumnsExpanded	FieldNameCodigoTitle.Caption   CódigoWidth9Visible	 Expanded	FieldNameNomeWidthrVisible	 Expanded	FieldName
nmFantasiaTitle.CaptionNome FantasiaVisible	 Expanded	FieldNameFone1WidthPVisible	 Expanded	FieldNameFone2WidthYVisible	 Expanded	FieldNameInclusaoWidthUVisible	 Expanded	FieldNameExclusaoVisible	 Expanded	FieldNameEndereco_ComercialVisible	 Expanded	FieldNameBairro_ComercialVisible	 Expanded	FieldNameEndereco_ResidencialVisible	 Expanded	FieldName
VencimentoVisible	    TPanelPanelNavigatorPesquisaLeft Top
Width2Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorDentistaLeftTopWidth,Height
DataSourceDataSourceContratanteVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft Top+Width2Height[AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder TLabelLabel1LeftTop
Width�HeightCaptionF   Informe o código ou o início do nome ou nome fantasia do contratanteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TEditEditLocalizarContratanteLeftTopWidthHeightCharCaseecUpperCaseTabOrder OnExitEditLocalizarContratanteExit	OnKeyDownEditLocalizarContratanteKeyDown  TBitBtn
BitBtnSairLeft�Top4WidthKHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose  	TGroupBox	GroupBox1LeftTop0WidthHeight"TabOrder 	TCheckBox	CheckBox1LeftTopWidth� HeightTabStopCaption$&Mostrar somente contratantes ativosChecked	Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontState	cbCheckedTabOrder     TQueryQueryContratanteDatabaseNameMultiRequestLive	SQL.Stringsselect * from Contratantewhere Nome LIKE ' 'order by Nome LeftJTopu TStringFieldQueryContratanteNome	FieldNameNomeOriginMULTI.Contratante.NomeSize2  TIntegerFieldQueryContratanteCodigo	FieldNameCodigoOriginMULTI.Contratante.Codigo  TIntegerFieldQueryContratanteVencimento	FieldName
VencimentoOriginMULTI.Contratante.Vencimento  TDateTimeFieldQueryContratanteInclusao	FieldNameInclusaoOriginMULTI.Contratante.Inclusao  TDateTimeFieldQueryContratanteExclusao	FieldNameExclusaoOriginMULTI.Contratante.Exclusao  TStringField"QueryContratanteEndereco_Comercial	FieldNameEndereco_ComercialOrigin$MULTI.Contratante.Endereco_ComercialSize2  TStringField QueryContratanteBairro_Comercial	FieldNameBairro_ComercialOrigin"MULTI.Contratante.Bairro_ComercialSize2  TStringField$QueryContratanteEndereco_Residencial	FieldNameEndereco_ResidencialOrigin&MULTI.Contratante.Endereco_ResidencialSize2  TStringFieldQueryContratanteFone1	FieldNameFone1OriginMULTI.Contratante.Fone1Size  TStringFieldQueryContratanteFone2	FieldNameFone2OriginMULTI.Contratante.Fone2Size  TStringFieldQueryContratantenmFantasia	FieldName
nmFantasiaOriginMULTI.Contratante.nmFantasiaSize2   TDataSourceDataSourceContratanteDataSetQueryContratanteLeft� Topm   