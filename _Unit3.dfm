unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask;

type
  TFmPadrao2 = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    BitBtnOk: TBitBtn;
    procedure BitBtnOkClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPadrao2: TFmPadrao2;

implementation

uses Udm;

{$R *.dfm}

procedure TFmPadrao2.BitBtnOkClick(Sender: TObject);
begin
  inherited;
   AdoQuery1.Close;
   AdoQuery1.sql[30] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + '''';
   AdoQuery1.open;   
end;

procedure TFmPadrao2.DBGrid1DblClick(Sender: TObject);
var nrTitulo : integer;
begin
  inherited;

  if AdoQuery1.FieldByName('lg_ir').AsBoolean = false then
      dm.execmd('update orcamento set lg_ir = 1 where numero = ' + AdoQuery1.FieldByName('orcamento').AsString)
  else
     dm.execmd('update orcamento set lg_ir = 0 where numero = ' + AdoQuery1.FieldByName('orcamento').AsString);
  nrTitulo := AdoQuery1.FieldByName('numero_titulo').AsInteger;
  AdoQuery1.Close;
  AdoQuery1.Open;
  AdoQuery1.locate('numero_titulo',nrTitulo,[]);
end;

procedure TFmPadrao2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

If not  AdoQuery1.FieldByName('lg_ir').AsBoolean then
   Dbgrid1.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
   
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

end;

end.
                                           �c����I�?��0��_:�b��D}�1;����F�3�Yb�i�fڕ����ұ��Ǜ$�����>�*�,ò|\݊�7d�֦·�~�U�nr��C�|g�4ciy�r��"v��$����Rc����o�����W�fs]��L�$��������ؑЦ?��J7A��������^������6�ך��4�&~8�;�`X?4����-�8>���5�G���A�����x�:�5��������	����1������=l�rSZB|����ƻ.�Gx��w�'��B���F`�~�{��KF�T~��C��|�@�JD0�h���|"� �N>�ź�-��ϝ���7��;�ʀ��'�M�p� _��H��R݇o��?��b��������m�7Y�|\��.�{�D�� �"1y	Z�g�;�i$_������݈����Hutb�d��P�#����F��RM�R�X�׍0�#a|��[��.��86##��dpS�?���_ֻ^'��}t�� _��Ȕf��ϑ�q#���N�"���_ �d	%��r^a{���0 O[�Qh��y�T�m����)��~��R�/���o������t���R��k͸��?�;����ӭ&�W�;�B��_���f��g����V��u�M�L���B�ŢYd��8�%1a�G�t,�[7 hh�{8|��;I� �9~����b��w�)�۫ �ϗ��>�V��lY�zH���z�Ͳ�� sN �lB������l8�1���-.[n�ӷ}c\�����'k$���� ~~��fp(j�MMJDе�ܔ��{�>��E�Ƙ4�Y��K���2.��_`�^r�]͞��q#ō4�<̉ƗdǾf����9���o$�4���t�T�_�1���}��F��E�ӿ�[�3�'��A��%݌:��f���Sfw"���ƕ��E��W �i"H	���]dJ�B�\wf��o^�ML�i0� M\��W݊�+���Rn���룀��-����z�l�ω��{��c��bY�w�x�k}�b�%�\�<#���酇l�Fb�>�u�$���2�y���yL���7�Q�mE/8��R���i��.d*���s���z��n:�æ%k$���8�����xx�5��;��ۯ��͙�<w�Mh������퉈1s7Ɵ�������s�d�2�?>��7� �@=ȓ}vµ(<(C�iv�>�D�����d�
7[O�)����Q�!?����h9'��3�Ǽ-�1�x��9n��<��
�`c�Y�qb��XB����sg���v0o8w)�1節9#峰w�L<т2�<)��o-�q��Ywh����XE}M-L�r��~��*��s�� �Ul
|9��c,.��0e�j�۽;��ݷ�p�X��@��/>�e\X�V�����.����p^a��S̽�X˩m�:�5`�y6�i�{;��?	�����F��@v��ވ^x���.���<��Đ>��_w���a���� Ü�X��i��G"脽����.���N>�hIQ���>�ᡷ��Q�C�ڱ�}�`Ȇ�.��sKg	d.͢��t��W�qܪ`#A�4������`m������a�����쌓��śZ���?}>{(N@���/7G�E }�q��i�� ^�<��7��$�45����Y�18��Bg�Fl�]���nD/.��6��bAhr�A{/�ˋ�?^l�a �cc�ߨ=Y2�9��/�� ����%�I�|�A6tz?r#��w��v�]�������
�M�^����Ѧ=�On������YjxJm�I�������v��ZMʐd�r8}���~7S��| ��?5^$�����ʂ��A��ɨ��^ls�C/�xP�p6Χç� LS/����fd�C �GJ���77lOsl)W֓2(G�)�L��܎7|��f��iqY,��$����3�8y�,����#9 ~��&�c���9�D$�T$��WL 3��{����ƃ�^[Í@ SQ�ڋ��٠���<$ t��Z[Ë�SVQ��؋ԋ�輠����<$ ��Z^[Í@ SVQ��؋ԋ��������V�<$ ��Z^[á�gL �������u)j��gL �   ���@ ��������gL ���@ ������gL ������u)j��gL �   �܃@ �L�������gL � �@ �δ��� ����   True    ����   False   U��QSVW�E� ���| F�؋E�@���'�����t�E����Nu�E�_^[Y]Ë�U����S�ډE��U��E��q  �Є�t�m��č@ �����I����U��gL ������С�gL �z���Y�Є�t��!U��gL ������С�gL �W���Y�Є�t� ��[��]�      ����   0   ����   -1  SV��؄�t,������t�Ƌ�gL �貳���$�Ƌ�gL �衳��^[Ë�3ҊӋ�81L 茳��^[ÐSVW�ڋ���������w?�Ӂ��   ��@w2j h�   jj ��%�   ����L1L P��@1L P��觷��P����_^[ÐS��j h�   jj j h   ���耷��P�����[������Ë�SVWQ�����j �D$PWVS������u�$�����$Z_^[�SVWQ�����j �D$PWVS�������u�$�����$Z_^[�U����SV��؋E�E��E�E�V�E�P�E�PS�����E��E��U�^[YY]� P�2���ÐSV�����ʹ���؅�t�K�Ӌ��A  <t�D�^[�3�^[Í@ SVWU��؋�虴������萶�����~(�\>���t�Ӌ���  ��t�׋��dA  <uOO��؋�]_^[Í@ SVW���؋Ӹ��@ ������W�V������蓶��_^[�   ����   \:  SVW�����ָD�@ �e����؅�~�|�.uW�����Ӌ��Q�������(���_^[�����   .\: SV���������T�D$Ph  ��躵��P������ȍT$���ױ����  ^[Ë�U����S�E��u3��U�R�U�R�U�R�U�RP�����؋E��m�3҉E�U�E�3�RP�E�U��0����M��Q�E�3�RP�E�U������M��Q��[��]� ����ǹ����2������)ȉ�Ð���ǹ����2��G���ÐV��蟘����^Í@ WV�Ɖ׹����2���щ��։ʉ����у��^_�WVS�Ɖ׉�2���t�uA)ˉ��։������ك�󤪉�[^_Í@ SV�ڋ���胲��P���{����Ћ�Y����^[Ë�SVW����؋��\����Ћϋ�����_^[ÐSV��؋��/������L�����^[Í@ WV�׉ƹ����1���щ�1��F��W�)�^_Ë�WV�׉ƹ����1���щ�1��t!�F�<ar<zw, �W���ar��zw�� )�t�^_Í@ WVS�׉Ɖ�1�	�t/�)ˉى�1��t!�F�<ar<zw, �W���ar��zw�� )�t�[^_Ë����u3��@�:�u�Í@ WVS	�tD	�t@�É�2���������It.�Ή߹�������)�v�ߍ^��֬�u��W���_��u�G��1�[^_Í@ SV��؋Ƌ��I���^[Ë�S�؃���诔�����[Ã�� ��Í@ SV�؅�u3�^[Ë�������F��������΋������^[Ë���t
���肔��ÐSVW