�
 TFORMRELCANCELAMENTO 0�  TPF0TFormRelCancelamentoFormRelCancelamentoLeft� TopuBorderIconsbiSystemMenu BorderStylebsSingleCaption   Relatório Contratos CanceladosClientHeight� ClientWidth6Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormClosePixelsPerInch`
TextHeight 	TGroupBoxGroupBoxIntervaloLeftTopWidth-Height� Caption	IntervaloFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel1Left%TopWidthUHeightCaptionCancelamento:Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4Left� TopWidthHeightCaption   � Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabelMotivoLeft2Top7Width+Height	AlignmenttaRightJustifyCaptionMotivo:  TLabelLabel2LeftTopWWidthXHeight	AlignmenttaRightJustifyCaptionRepresentante:  	TMaskEditMaskEditPrimeiroLeft~TopWidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrder Text
  /  /    	OnKeyDownMaskEditPrimeiroKeyDown  	TMaskEditMaskEditUltimoLeft� TopWidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrderText
  /  /    	OnKeyDownMaskEditPrimeiroKeyDown  TBitBtnBitBtnImprimirLeft(Top� WidthnHeightCaptionImprimirFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnImprimirClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      7wwwwwws�������3333337��������������        wwwwwwww�������333333��������3333377��������������        wwwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�3s3330�� 33337��w33330  33337wws333	NumGlyphs  TBitBtn
BitBtnSairLeft� Top� WidthnHeightCaption&SairFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderKindbkClose  	TComboBoxComboBoxMotivoLeft_Top1Width� HeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight
ParentFontTabOrder	OnKeyDownMaskEditPrimeiroKeyDown  	TComboBoxComboBoxRepresentanteLeft_TopQWidth� HeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight
ParentFontTabOrder	OnKeyDownMaskEditPrimeiroKeyDown  	TCheckBox	CheckBox1LeftToppWidthHeightCaption)   Não Considerar exclusão por RenovaçãoChecked	State	cbCheckedTabOrderVisible   TQueryQueryCancelamentoDatabaseNameMultiSQL.Stringsselect [replicate('0',3 - len(codigo)) +  cast(codigo as varchar(5)) + ' - ' + descricao as combo,*) from Cancelamento WHERE TIPO = 'USUARIO'order by Descricao Left"Top7 TIntegerFieldQueryCancelamentoCODIGO	FieldNameCODIGOOriginMULTI.Cancelamento.CODIGO  TStringFieldQueryCancelamentoDescricao	FieldName	DescricaoOriginMULTI.Cancelamento.DescricaoSize  
TMemoFieldQueryCancelamentocombo	FieldNamecomboBlobTypeftMemoSize  TBooleanFieldQueryCancelamentoativo	FieldNameativo   TQueryQueryRepresentantesDatabaseNameMultiSQL.Stringsselect Vreplicate('0',3 - len(codigo)) +  cast(codigo as varchar(5)) + ' - ' + nome as combo,* from representanteorder by codigo LeftTop! TSmallintFieldQueryRepresentantesCodigo	FieldNameCodigoOriginMULTI.Representante.Codigo  TStringFieldQueryRepresentantesNome	FieldNameNomeOriginMULTI.Representante.NomeSize(  
TMemoFieldQueryRepresentantescombo	FieldNamecomboBlobTypeftMemoSize    