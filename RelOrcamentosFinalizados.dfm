�
 TFORMRELORCAMENTOSFINALIZADOS 0!  TPF0TFormRelOrcamentosFinalizadosFormRelOrcamentosFinalizadosLeftTop� BorderIconsbiSystemMenu BorderStylebsSingleCaption"   Relatório Orçamentos FinalizadosClientHeight>ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel3LeftGTopcWidth1HeightCaption	Vendedor:  	TGroupBoxGroupBoxIntervaloLeftTopWidth�Height,Caption	IntervaloFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder  TLabelLabel5Left#TopWidthHeightCaption   Mês  TLabelLabel1Left� TopWidthHeightCaption   Mês  TLabelLabel2LeftTop3WidthHeightCaptionDe:   TLabelLabel4Left� Top3WidthHeightCaption   à   TLabelLabel6LeftCTop,WidthHeightCaption/Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel7Left� Top,WidthHeightCaption/Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel8Left]TopWidthHeightCaptionAno  TLabelLabel9Left� TopWidthHeightCaptionAno  TBitBtnBitBtnImprimirLeft3Top� WidthnHeightCaptionImprimirFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrderOnClickBitBtnImprimirClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      7wwwwwws�������3333337��������������        wwwwwwww�������333333��������3333377��������������        wwwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�3s3330�� 33337��w33330  33337wws333	NumGlyphs  TBitBtn
BitBtnSairLeft� Top� WidthnHeightCaption&SairFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.StylefsBold 
ParentFontTabOrder	OnClickBitBtnSairClickKindbkClose  TEdit
EditMesIniLeft#Top+WidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength
ParentFontTabOrder OnExitEditMesIniExit	OnKeyDownMaskEditPrimeiroKeyDown  TEdit
EditAnoIniLeftOTop+Width6HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength
ParentFontTabOrderOnExitEditMesIniExit	OnKeyDownMaskEditPrimeiroKeyDown  TEdit
EditMesFimLeft� Top+WidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength
ParentFontTabOrderOnExitEditMesIniExit	OnKeyDownMaskEditPrimeiroKeyDown  TEdit
EditAnoFimLeft� Top+Width6HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 	MaxLength
ParentFontTabOrderOnExitEditMesIniExit	OnKeyDownMaskEditPrimeiroKeyDown  	TGroupBox	GroupBox1LeftTopHWidthvHeightACaption   RegiãoTabOrder TDBLookupComboBoxDBLookupComboBoxRegiaoLeftTopWidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style KeyField	cd_regiao	ListField	ds_regiao
ListSourceDsRegiao
ParentFontTabOrder 	OnKeyDownMaskEditPrimeiroKeyDown   	TGroupBox	GroupBox2LeftTop� WidthyHeightACaptionDentistaTabOrder TEdit
EditCodigoLeftTopWidth<HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder Text0	OnKeyDownMaskEditPrimeiroKeyDown
OnKeyPressEditCodigoKeyPress  TBitBtnBitBtnPesquisarLeftJTopWidthHeightTabOrderOnClickBitBtnPesquisarClick
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 ?����37w 0  330 w�ww?37w���333ws3?33?࿿ 33 w�3ws�3w�����33 w�3?���w࿿   33w�3www??�������w�?���sw�    3�w�wwww3w �3333ws�s333?30 3333 37w3333w3333333 3333333w333333333333333�3333330 3333337w3333330 3333337w3333333333333333	NumGlyphs  TEditEditNomeDentistaLeftfTopWidthHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder	OnKeyDownMaskEditPrimeiroKeyDown   	TCheckBoxCheckBox_apenasAtivosLeftTop� Width� HeightCaptionApenas clientes ativosChecked	State	cbCheckedTabOrder  	TCheckBoxCheckBox_ExcelLeft@TopWidthQHeightCaptionEm ExcelTabOrder   TDataSourceDsRegiaoDataSetADOQueryRegiaoLeftzTop  	TADOQueryADOQueryRegiao
Connection
DM.ADOConn
CursorTypectStatic
Parameters SQL.Stringsselect * from regiao unionselect 0,' Todas'
order by 2  Left� Top   