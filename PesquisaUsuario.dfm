�
 TFORMPESQUISAUSUARIOS 0w  TPF0TFormPesquisaUsuariosFormPesquisaUsuariosLeftTopBorderIconsbiSystemMenu BorderStylebsSingleCaption   Pesquisa UsuáriosClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TDBGridDBGridPesquisaUsuariosLeft Top Width�Height3AlignalClientColorclInfoBk
DataSourceDataSourceUsuariosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 	OnKeyDownDBGridPesquisaUsuariosKeyDownColumnsExpanded	FieldNameCodigo_CompletoTitle.CaptionCodigoWidthIVisible	 Expanded	FieldNameNomeWidth>Visible	 Expanded	FieldNamefone1Title.CaptionTel 1WidthSVisible	 Expanded	FieldNamefone2Title.CaptionTel 2WidthcVisible	 Expanded	FieldNamefaxTitle.CaptionFAXWidthcVisible	    TPanelPanelNavigatorPesquisaLeft Top3Width�Height!AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthCaptionPanelNavigatorPesquisaTabOrder TDBNavigatorDBNavigatorUsuariosLeftTopWidth�Height
DataSourceDataSourceUsuariosVisibleButtonsnbFirstnbPriornbNextnbLast AlignalClientHints.StringsPrimeiroAnterior   Próximo   ÚltimoInserirExcluirEditarGravarCancelar	Atualizar  ParentShowHintShowHint	TabOrder    TPanelPanelLocalizarProdutoLeft TopTWidth�HeightVAlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneBorderWidthTabOrder  TLabelLabel2LeftTop
Width�HeightCaptionV   Informe o código ou o início do nome ou utilize o símbolo % para pesquisa detalhadaFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TBitBtn
BitBtnSairLeft�Top1WidthNHeightCaption&SairFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderKindbkClose  TEditEditUsuarioLeftTopWidth�HeightCharCaseecUpperCaseTabOrder OnExitEditUsuarioExit	OnKeyDownEditUsuarioKeyDown  	TGroupBox	GroupBox1LeftTop.WidthHeight!TabOrder 	TCheckBox	CheckBox1LeftTopWidth� HeightTabStopCaption$&Mostrar somente contratantes ativosChecked	Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontState	cbCheckedTabOrder     TQueryQueryUsuariosDatabaseNameMultiSQL.Stringsfselect u.Nome, u.Codigo_Completo, u.Codigo, u.Digito,c.fone1,c.fone2,fax from Usuario u, contratante cwhere u.Nome like 'MARIA%'and c.codigo = u.codigoorder by u.Nome LeftBTop�  TIntegerFieldQueryUsuariosCodigo_Completo	FieldNameCodigo_CompletoOriginMULTI.Usuario.Codigo_Completo  TStringFieldQueryUsuariosNome	FieldNameNomeOriginMULTI.Usuario.NomeSize(  TIntegerFieldQueryUsuariosCodigo	FieldNameCodigoOriginMULTI.Usuario.Codigo  TIntegerFieldQueryUsuariosDigito	FieldNameDigitoOriginMULTI.Usuario.Digito  TStringFieldQueryUsuariosfone1	FieldNamefone1Size  TStringFieldQueryUsuariosfone2	FieldNamefone2Size  TStringFieldQueryUsuariosfax	FieldNamefaxSize   TDataSourceDataSourceUsuariosDataSetQueryUsuariosLeft� Top�    