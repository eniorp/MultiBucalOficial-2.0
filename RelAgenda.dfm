�
 TFORMRELAGENDA 0a  TPF0TFormRelAgendaFormRelAgendaLeft�Top� BorderIconsbiSystemMenu BorderStylebsSingleCaption   Relatório de AgendaClientHeightpClientWidthFColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight 	TGroupBoxGroupBoxIntervaloLeftTopWidth=Height_Caption	IntervaloFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel1LeftTopCWidth3HeightCaption	IntervaloFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel4Left� TopCWidthHeightCaption   � Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabelMotivoLeftTopdWidthJHeight	AlignmenttaRightJustifyCaptionTipo Contato  TLabelLabel2LeftTop� Width5Height	AlignmenttaRightJustifyCaptionOperador  TLabelLabel5LeftTop� WidthCHeight	AlignmenttaRightJustifyCaptionContratante  TLabelLabel6LeftTopWidth:HeightCaption	Qual DataFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel3Left'Top� Width)Height	AlignmenttaRightJustifyCaption   Região  	TMaskEditMaskEditPrimeiroLeftVTop;WidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrderText
  /  /    OnChangeMaskEditPrimeiroChange	OnKeyDownMaskEditPrimeiroKeyDown  	TMaskEditMaskEditUltimoLeft� Top;WidthCHeightEditMask!99/99/0000;1;_Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength

ParentFontTabOrderText
  /  /    	OnKeyDownMaskEditPrimeiroKeyDown  TBitBtnBitBtnImprimirLeftTop1WidthnHeightCaptionImprimirFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnImprimirClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      7wwwwwws�������3333337��������������        wwwwwwww�������333333��������3333377��������������        wwwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�3s3330�� 33337��w33330  33337wws333	NumGlyphs  TBitBtn
BitBtnSairLeft� Top1WidthoHeightCaption&SairFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderKindbkClose  	TComboBoxComboBoxTipoContatoLeftVTop^Width� HeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight
ParentFontTabOrder	OnKeyDownMaskEditPrimeiroKeyDown  TRadioGroupRadioGroupAgendaLeft	Top� Width(HeightQCaption   Relatórios	ItemIndex Items.Strings   Relatório Tipo de Contato&   Relatório Tipo Ligação - Sintético&   Relatório Tipo Ligação - Analítico TabOrderOnClickRadioGroupAgendaClick  	TComboBoxComboBoxOperadorLeftWTop{Width� HeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight
ParentFontTabOrder	OnKeyDownMaskEditPrimeiroKeyDown  TEditEditCdContrLeftTTop� Width1HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnExitEditCdContrExit
OnKeyPressEditCdContrKeyPress  TBitBtnBitBtn2Left� Top� WidthHeightTabOrder
OnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 ?����37w 0  330 w�ww?37w���333ws3?33?࿿ 33 w�3ws�3w�����33 w�3?���w࿿   33w�3www??�������w�?���sw�    3�w�wwww3w �3333ws�s333?30 3333 37w3333w3333333 3333333w333333333333333�3333330 3333337w3333330 3333337w3333333333333333	NumGlyphs  TEditEdit2Left� Top� Width� HeightTabStopFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontReadOnly	TabOrder  	TComboBoxcboTipoDataLeftWTopWidth� HeightStylecsOwnerDrawFixedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeight	ItemIndex 
ParentFontTabOrder TextData da Agenda	OnKeyDownMaskEditPrimeiroKeyDownItems.StringsData da AgendaData do Contato   TDBLookupComboBoxDBLookupComboBoxRegiaoLeftUTop� Width� Height	DataField	cd_regiao
DataSource	dsRegiao1KeyField	cd_regiao	ListField	ds_regiao
ListSourceDsRegiaoTabOrder	  TMemoMemo1Left5TopPWidth� HeightColor	clBtnFaceLines.StringsMemo1 TabOrder  	TCheckBox	CheckBox1Left'Top|WidthHeightHintMostrar operadores excluidosTabOrderOnClickCheckBox1Click   TQueryQueryTipoContatoDatabaseNameMultiSQL.Stringsselect * from Tipo_Contatoorder by Descricao  Left� TopE TIntegerFieldQueryTipoContatoCodigo	FieldNameCodigoOriginMULTI.Tipo_Contato.Codigo  TStringFieldQueryTipoContatoDescricao	FieldName	DescricaoOriginMULTI.Tipo_Contato.DescricaoSize   TQueryQueryOperadorDatabaseNameMultiSQL.Stringsselect * from Operadorwhere dtexclusao is nullorder by Nome  Left� Top�  TIntegerFieldQueryOperadorCodigo	FieldNameCodigoOriginMULTI.Operador.Codigo  TStringFieldQueryOperadorApelido	FieldNameApelidoOriginMULTI.Operador.Apelido   	TADOQueryADOQueryRegiao
Connection
DM.ADOConn
CursorTypectStatic
Parameters SQL.Stringsselect * from regiao unionselect 0,' Todas'
order by 2 Left� TopP  TDataSourceDsRegiaoDataSetADOQueryRegiaoLeftjTop�   	TADOQueryADOQueryRegiao1
Connection
DM.ADOConn
Parameters SQL.Strings!select * from regiao  where 2 = 1 Left� Top�   TDataSource	dsRegiao1DataSetADOQueryRegiao1LeftjTop�    