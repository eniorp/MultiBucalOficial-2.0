�
 TQUICKREPORT2 0v  TPF0TQuickReport2QuickReport2Left Top Width�Height�Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetQueryTituloFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeCustomPage.Values       �@      @�
@       �@       �	@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	
SnapToGrid	UnitsMMZoomd TQRBandvLeft&Top&Width.Height[Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ �������@ BandTyperbDetail 	TQRDBText	QRDBText1LeftTopWidth&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@       �@      x�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldNomeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText2LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@��������@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldEndereco_ComercialFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText3LeftTop%Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@��������@��������@      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldBairro_ComercialFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText4Left� Top%WidthLHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ؒ@��������@ PUUUU�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldCEP_ComercialFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText5LeftTop8WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@ �����*�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldCidade_ComercialFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText6LeftTop7WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ XUUUUE�@UUUUUU��@UUUUUUu�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataFieldEstado_ComercialFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText7Left� TopWidth2HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ �����
�@ �������@ �����J�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQueryTitulo	DataField
numero_comFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparent	WordWrap	FontSize   TQueryQueryTituloActive	CachedUpdates	DatabaseNameMultiFiltered	SQL.Strings�select top 20 Usuario.Nome, Endereco_comercial, bairro_comercial, numero_com, cidade_comercial, cep_comercial, estado_comercial from ManutencaoCleft join Usuario on (Manutencao.Usuario = Usuario.Codigo_Completo)>left join Contratante on (contratante.codigo = usuario.codigo)"where data_Inicial <= '2003/05/12'and Data_Final >= '2003/05/12']and ((manutencao.servico = 1301) or (manutencao.servico = 1302) or manutencao.servico = 1304)order by Manutencao.usuario  LeftTop TStringFieldQueryTituloNome	FieldNameNomeSize2  TStringFieldQueryTituloEndereco_Comercial	FieldNameEndereco_ComercialSize2  TStringFieldQueryTituloBairro_Comercial	FieldNameBairro_ComercialSize2  TStringFieldQueryTituloCidade_Comercial	FieldNameCidade_ComercialSize2  TStringFieldQueryTituloEstado_Comercial	FieldNameEstado_ComercialSize2  TStringFieldQueryTituloCEP_Comercial	FieldNameCEP_ComercialSize2  TStringFieldQueryTitulonumero_com	FieldName
numero_comSize   	TDatabaseDatabaseMultiOdonto	AliasNameMultiodonto	Connected	DatabaseNameMultiParams.StringsUSER NAME=sa SessionNameDefaultLeftx   