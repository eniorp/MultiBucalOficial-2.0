�
 TFORMRELVENDAS 0,  TPF0TFormRelVendasFormRelVendasLeft� TopzBorderIconsbiSystemMenu BorderStylebsSingleCaption   Relatórios ComissõesClientHeight� ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight 	TGroupBoxGroupBoxIntervaloLeftTopWidth�Height� Caption'Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel1LeftTopWidthDHeightCaption
Pagamento:Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4Left� TopWidthHeightCaption   � Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTopMWidthXHeightCaptionRepresentante:  TLabelLabel3LeftTop/Width@HeightCaption
Data Base:Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontVisible  TLabelLabel5Left� Top/WidthKHeightCaptionTipo Pessoa:Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontVisible  TLabelLabel6LeftTopfWidthLHeightCaptionCidade ResidVisible  	TMaskEditMaskEditPrimeiroLeftfTopWidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrder Text
  /  /    OnChangeMaskEditPrimeiroChange	OnKeyDownMaskEditPrimeiroKeyDown  	TMaskEditMaskEditUltimoLeft� TopWidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrderText
  /  /    OnChangeMaskEditPrimeiroChange	OnKeyDownMaskEditPrimeiroKeyDown  TBitBtnBitBtnImprimirLeftTop� WidthnHeightCaptionImprimirEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnImprimirClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      7wwwwwws�������3333337��������������        wwwwwwww�������333333��������3333377��������������        wwwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�3s3330�� 33337��w33330  33337wws333	NumGlyphs  TBitBtn
BitBtnSairLeftTop� WidthnHeightCaption&SairFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderKindbkClose  	TComboBoxComboBoxRepresentanteLeftgTopGWidthHeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight
ParentFontTabOrderOnChangeMaskEditPrimeiroChange	OnKeyDownComboBoxRepresentanteKeyDown  TBitBtnBitBtnEtiquetasLeft� Top� WidthnHeightCaption	EtiquetasEnabledFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnEtiquetasClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      7wwwwwws�������3333337��������������        wwwwwwww�������333333��������3333377��������������        wwwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�3s3330�� 33337��w33330  33337wws333	NumGlyphs  	TCheckBox	CheckBox1LeftTop� Width� HeightCaption   Quebrar página por vendedorTabOrderVisible  	TMaskEditMaskEditDtBaseLeftfTop-WidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrderText
  /  /    Visible  	TComboBox	ComboBox1Left Top+Width� HeightStylecsDropDownList
ItemHeight	ItemIndex TabOrderTextTodasVisibleItems.StringsTodas   Pessoa Física   Pessoa Jurídica   TDBLookupComboBoxDBLookupComboBox1LefthTopbWidthHeightHintCidade ResidencialKeyField	cd_cidade	ListField	ds_cidade
ListSourceDsCidadeParentShowHintShowHint	TabOrder	Visible  TMemoMemo1Left�Top� Width� HeightYLines.StringsMemo1 TabOrder
   TQueryQueryRepresentanteDatabaseNameMultiSQL.StringsBselect Codigo, Nome from Representante where data_exclusao is nullorder by nome Left`Top TSmallintFieldQueryRepresentanteCodigo	FieldNameCodigoOriginMULTI.Representante.Codigo  TStringFieldQueryRepresentanteNome	FieldNameNomeOriginMULTI.Representante.NomeSize(   	TADOQueryADOQueryCidade
Connection
DM.ADOConn
Parameters SQL.Stringsnselect 'A' gambi,0 cd_cidade, 'TODAS' ds_cidade union select 'B', cd_cidade,ds_cidade from cidade order by 1,3 Left.Top5  TDataSourceDsCidadeDataSetADOQueryCidadeLeft.Topu   