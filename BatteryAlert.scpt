FasdUAS 1.101.10   ��   ��    k             l     ��  ��    #  Ensure Logs directory exists     � 	 	 :   E n s u r e   L o g s   d i r e c t o r y   e x i s t s   
  
 l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   . m k d i r   - p   ~ / L i b r a r y / L o g s��  ��  ��        l     ��������  ��  ��        l     ��  ��    6 0 Define the path for the state file and log file     �   `   D e f i n e   t h e   p a t h   f o r   t h e   s t a t e   f i l e   a n d   l o g   f i l e      l    ����  r        b        l    ����  I   ��   
�� .earsffdralis        afdr  m    ��
�� afdrcusr   �� !��
�� 
rtyp ! m    	��
�� 
ctxt��  ��  ��    m     " " � # # : L i b r a r y : L o g s : b a t t e r y S t a t e . t x t  o      ���� 0 	statefile 	stateFile��  ��     $ % $ l    &���� & r     ' ( ' b     ) * ) l    +���� + I   �� , -
�� .earsffdralis        afdr , m    ��
�� afdrcusr - �� .��
�� 
rtyp . m    ��
�� 
ctxt��  ��  ��   * m     / / � 0 0 : L i b r a r y : L o g s : b a t t e r y A l e r t . l o g ( o      ���� 0 logfile logFile��  ��   %  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5   Get battery percentage    6 � 7 7 .   G e t   b a t t e r y   p e r c e n t a g e 4  8 9 8 l   J :���� : Q    J ; < = ; r   ! * > ? > c   ! ( @ A @ l  ! & B���� B I  ! &�� C��
�� .sysoexecTEXT���     TEXT C m   ! " D D � E E � / u s r / b i n / p m s e t   - g   b a t t   |   / u s r / b i n / g r e p   - E o   " \ d + % "   |   / u s r / b i n / c u t   - d %   - f 1��  ��  ��   A m   & '��
�� 
long ? o      ���� 
0 pct Pct < R      �� F��
�� .ascrerr ****      � **** F o      ���� 0 errmsg errMsg��   = k   2 J G G  H I H I  2 G�� J��
�� .sysoexecTEXT���     TEXT J b   2 C K L K b   2 9 M N M b   2 5 O P O m   2 3 Q Q � R R b e c h o   " $ ( d a t e ) :   E r r o r   g e t t i n g   b a t t e r y   p e r c e n t a g e :   P o   3 4���� 0 errmsg errMsg N m   5 8 S S � T T 
 "   > >   L n   9 B U V U 1   > B��
�� 
strq V n   9 > W X W 1   : >��
�� 
psxp X o   9 :���� 0 logfile logFile��   I  Y�� Y L   H J����  ��  ��  ��   9  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ / ) Check if the laptop is charging (Yes/No)    _ � ` ` R   C h e c k   i f   t h e   l a p t o p   i s   c h a r g i n g   ( Y e s / N o ) ]  a b a l  K { c���� c Q   K { d e f d r   N Y g h g l  N U i���� i I  N U�� j��
�� .sysoexecTEXT���     TEXT j m   N Q k k � l l � / u s r / s b i n / i o r e g   - w 0   - l   |   / u s r / b i n / g r e p   E x t e r n a l C h a r g e C a p a b l e   |   / u s r / b i n / g r e p   - o   ' Y e s \ | N o '��  ��  ��   h o      ���� 0 	wallpower 	wallPower e R      �� m��
�� .ascrerr ****      � **** m o      ���� 0 errmsg errMsg��   f k   a { n n  o p o I  a x�� q��
�� .sysoexecTEXT���     TEXT q b   a t r s r b   a j t u t b   a f v w v m   a d x x � y y \ e c h o   " $ ( d a t e ) :   E r r o r   g e t t i n g   c h a r g i n g   s t a t u s :   w o   d e���� 0 errmsg errMsg u m   f i z z � { { 
 "   > >   s n   j s | } | 1   o s��
�� 
strq } n   j o ~  ~ 1   k o��
�� 
psxp  o   j k���� 0 logfile logFile��   p  ��� � L   y {����  ��  ��  ��   b  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Log current status    � � � � &   L o g   c u r r e n t   s t a t u s �  � � � l  | � ����� � I  | ��� ���
�� .sysoexecTEXT���     TEXT � b   | � � � � b   | � � � � b   | � � � � b   | � � � � b   | � � � � m   |  � � � � � 0 e c h o   " $ ( d a t e ) :   B a t t e r y :   � o    ����� 
0 pct Pct � m   � � � � � � �  % ,   C h a r g i n g :   � o   � ����� 0 	wallpower 	wallPower � m   � � � � � � � 
 "   > >   � n   � � � � � 1   � ���
�� 
strq � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 logfile logFile��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � @ : Read the previous state from the state file, if it exists    � � � � t   R e a d   t h e   p r e v i o u s   s t a t e   f r o m   t h e   s t a t e   f i l e ,   i f   i t   e x i s t s �  � � � l  � � ����� � Q   � � � � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  / b i n / c a t   � n   � � � � � 1   � ���
�� 
strq � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 	statefile 	stateFile��  ��  ��   � o      ���� 0 	prevstate 	prevState � R      ������
�� .ascrerr ****      � ****��  ��   � r   � � � � � m   � � � � � � �   � o      ���� 0 	prevstate 	prevState��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Initialize new state    � � � � *   I n i t i a l i z e   n e w   s t a t e �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 newstate newState��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + Check conditions and display notifications    � � � � V   C h e c k   c o n d i t i o n s   a n d   d i s p l a y   n o t i f i c a t i o n s �  � � � l  �� ����� � Z   �� � � � � � F   � � � � � =  � � � � � o   � ����� 0 	wallpower 	wallPower � m   � � � � � � �  Y e s � @   � � � � � o   � ����� 
0 pct Pct � m   � ����� P � k   � � �  � � � r   � � � � � m   � � � � � � �  c h a r g e d _ 8 0 � o      ���� 0 newstate newState �  ��� � Z   � � ����� � >  � � � � � o   � ����� 0 	prevstate 	prevState � m   � � � � � � �  c h a r g e d _ 8 0 � k   � � �  � � � I  �	�� � �
�� .sysonotfnull��� ��� TEXT � m   � � � � � � � X B a t t e r y   h a s   r e a c h e d   8 0 % .   U n p l u g   t h e   c h a r g e r . � � � �
� 
appr � m   � � � � � � �  B a t t e r y   A l e r t � �~ ��}
�~ 
nsou � m    � � � � �  P i n g�}   �  ��| � I 
�{ ��z
�{ .sysoexecTEXT���     TEXT � b  
 �  � m  
 � � e c h o   " $ ( d a t e ) :   N o t i f i c a t i o n :   B a t t e r y   a t   8 0 % ,   u n p l u g   c h a r g e r "   > >    n   1  �y
�y 
strq n   1  �x
�x 
psxp o  �w�w 0 logfile logFile�z  �|  ��  ��  ��   �  F  "5	
	 = ") o  "%�v�v 0 	wallpower 	wallPower m  %( �  N o
 B  ,1 o  ,-�u�u 
0 pct Pct m  -0�t�t <  k  8{  r  8? m  8; �  l o w _ 6 0 o      �s�s 0 newstate newState �r Z  @{�q�p > @G o  @C�o�o 0 	prevstate 	prevState m  CF �    l o w _ 6 0 k  Jw!! "#" I J_�n$%
�n .sysonotfnull��� ��� TEXT$ m  JM&& �'' ` B a t t e r y   i s   a t   6 0 %   o r   b e l o w .   P l u g   i n   t h e   c h a r g e r .% �m()
�m 
appr( m  PS** �++  B a t t e r y   A l e r t) �l,�k
�l 
nsou, m  VY-- �..  P i n g�k  # /�j/ I `w�i0�h
�i .sysoexecTEXT���     TEXT0 b  `s121 b  `i343 b  `e565 m  `c77 �88 P e c h o   " $ ( d a t e ) :   N o t i f i c a t i o n :   B a t t e r y   a t  6 o  cd�g�g 
0 pct Pct4 m  eh99 �:: . % ,   p l u g   i n   c h a r g e r "   > >  2 n  ir;<; 1  nr�f
�f 
strq< n  in=>= 1  jn�e
�e 
psxp> o  ij�d�d 0 logfile logFile�h  �j  �q  �p  �r   ?@? F  ~�ABA = ~�CDC o  ~��c�c 0 	wallpower 	wallPowerD m  ��EE �FF  N oB ?  ��GHG o  ���b�b 
0 pct PctH m  ���a�a <@ I�`I k  ��JJ KLK r  ��MNM m  ��OO �PP  n o r m a lN o      �_�_ 0 newstate newStateL Q�^Q l ���]RS�]  R A ; Explicitly suppress notification for non-charging and >60%   S �TT v   E x p l i c i t l y   s u p p r e s s   n o t i f i c a t i o n   f o r   n o n - c h a r g i n g   a n d   > 6 0 %�^  �`   � r  ��UVU m  ��WW �XX  n o r m a lV o      �\�\ 0 newstate newState��  ��   � YZY l     �[�Z�Y�[  �Z  �Y  Z [\[ l     �X]^�X  ] + % Save the new state to the state file   ^ �__ J   S a v e   t h e   n e w   s t a t e   t o   t h e   s t a t e   f i l e\ `�W` l �a�V�Ua Z  �bc�T�Sb > ��ded o  ���R�R 0 newstate newStatee m  ��ff �gg  c Q  �hijh k  ��kk lml I ���Qn�P
�Q .sysoexecTEXT���     TEXTn b  ��opo b  ��qrq b  ��sts m  ��uu �vv  / b i n / e c h o  t n  ��wxw 1  ���O
�O 
strqx o  ���N�N 0 newstate newStater m  ��yy �zz    >  p n  ��{|{ 1  ���M
�M 
strq| n  ��}~} 1  ���L
�L 
psxp~ o  ���K�K 0 	statefile 	stateFile�P  m �J I ���I��H
�I .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� m  ���� ��� 4 e c h o   " $ ( d a t e ) :   N e w   s t a t e :  � o  ���G�G 0 newstate newState� m  ���� ��� 
 "   > >  � n  ����� 1  ���F
�F 
strq� n  ����� 1  ���E
�E 
psxp� o  ���D�D 0 logfile logFile�H  �J  i R      �C��B
�C .ascrerr ****      � ****� o      �A�A 0 errmsg errMsg�B  j I ��@��?
�@ .sysoexecTEXT���     TEXT� b  ���� b  ����� b  ����� m  ���� ��� H e c h o   " $ ( d a t e ) :   E r r o r   w r i t i n g   s t a t e :  � o  ���>�> 0 errmsg errMsg� m  ���� ��� 
 "   > >  � n  ���� 1  �=
�= 
strq� n  ���� 1  ��<
�< 
psxp� o  ���;�; 0 logfile logFile�?  �T  �S  �V  �U  �W       
�:�����9��O�8�:  � �7�6�5�4�3�2�1�0
�7 .aevtoappnull  �   � ****�6 0 	statefile 	stateFile�5 0 logfile logFile�4 
0 pct Pct�3 0 	wallpower 	wallPower�2 0 	prevstate 	prevState�1 0 newstate newState�0  � �/��.�-���,
�/ .aevtoappnull  �   � ****� k    ��  
��  ��  $��  8��  a��  ���  ���  ���  ��� `�+�+  �.  �-  � �*�* 0 errmsg errMsg� @ �)�(�'�&�% "�$ /�# D�"�!� � Q S�� k� x z � � � ��� � �� ��� � � �� �� ����&*-79EOWfuy����
�) .sysoexecTEXT���     TEXT
�( afdrcusr
�' 
rtyp
�& 
ctxt
�% .earsffdralis        afdr�$ 0 	statefile 	stateFile�# 0 logfile logFile
�" 
long�! 
0 pct Pct�  0 errmsg errMsg�  
� 
psxp
� 
strq� 0 	wallpower 	wallPower� 0 	prevstate 	prevState�  � 0 newstate newState� P
� 
bool
� 
appr
� 
nsou� 
� .sysonotfnull��� ��� TEXT� <�,�j O���l �%E�O���l �%E�O �j �&E�W X  �%a %�a ,a ,%j OhO a j E` W !X  a �%a %�a ,a ,%j OhOa �%a %_ %a %�a ,a ,%j O a �a ,a ,%j E` W X  a E` Oa E` O_ a   	 �a !a "& Ba #E` O_ a $ ,a %a &a 'a (a )a * +Oa ,�a ,a ,%j Y hY �_ a - 	 �a .a "& Ha /E` O_ a 0 2a 1a &a 2a (a 3a * +Oa 4�%a 5%�a ,a ,%j Y hY +_ a 6 	 �a .a "& a 7E` OPY 	a 8E` O_ a 9 ^ <a :_ a ,%a ;%�a ,a ,%j Oa <_ %a =%�a ,a ,%j W X  a >�%a ?%�a ,a ,%j Y h� ��� r M a c i n t o s h   H D : U s e r s : b l a m e j e n : L i b r a r y : L o g s : b a t t e r y S t a t e . t x t� ��� r M a c i n t o s h   H D : U s e r s : b l a m e j e n : L i b r a r y : L o g s : b a t t e r y A l e r t . l o g�9 c� ���  N o� ���  n o r m a l�8   ascr  ��ޭ