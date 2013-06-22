FasdUAS 1.101.10   ��   ��    k             l     ��  ��   mg This script tells me to get back to work when I'm goofing off too much.  Every two minutes, it checks if I am actively using Google Chrome.  It keeps track of these checks for the past twenty minutes, and if 80% or more of the checks say "yes," it scolds me.  But it only scolds me at ten minute intervals, at most.  It is implemented using a circular queue.     � 	 	�   T h i s   s c r i p t   t e l l s   m e   t o   g e t   b a c k   t o   w o r k   w h e n   I ' m   g o o f i n g   o f f   t o o   m u c h .     E v e r y   t w o   m i n u t e s ,   i t   c h e c k s   i f   I   a m   a c t i v e l y   u s i n g   G o o g l e   C h r o m e .     I t   k e e p s   t r a c k   o f   t h e s e   c h e c k s   f o r   t h e   p a s t   t w e n t y   m i n u t e s ,   a n d   i f   8 0 %   o r   m o r e   o f   t h e   c h e c k s   s a y   " y e s , "   i t   s c o l d s   m e .     B u t   i t   o n l y   s c o l d s   m e   a t   t e n   m i n u t e   i n t e r v a l s ,   a t   m o s t .     I t   i s   i m p l e m e n t e d   u s i n g   a   c i r c u l a r   q u e u e .   
  
 l     ��������  ��  ��        l     ��  ��    2 , Finds the sum of the elements in the queue.     �   X   F i n d s   t h e   s u m   o f   t h e   e l e m e n t s   i n   t h e   q u e u e .      i         I      �� ���� 0 sum     ��  o      ���� 	0 queue  ��  ��    k     -       r         I    �� ��
�� .corecnte****       ****  o     ���� 	0 queue  ��    o      ���� 0 c        r         m    	����    o      ���� 0 i     ! " ! r     # $ # m    ����   $ o      ���� 	0 total   "  % & % U    * ' ( ' k    % ) )  * + * r     , - , l    .���� . [     / 0 / o    ���� 	0 total   0 l    1���� 1 n     2 3 2 4    �� 4
�� 
cobj 4 o    ���� 0 i   3 o    ���� 	0 queue  ��  ��  ��  ��   - o      ���� 	0 total   +  5�� 5 r     % 6 7 6 [     # 8 9 8 o     !���� 0 i   9 m   ! "����  7 o      ���� 0 i  ��   ( o    ���� 0 c   &  :�� : L   + - ; ; o   + ,���� 	0 total  ��     < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @4. Declare a circular queue.  The items are 0 if Google Chrome was not running, and 1 if it was running.  Before the check happens, the number at index "head" should indicate what program I was running twenty minutes ago.  After the check happens, I replace this number with the program I am running now.    A � B B\   D e c l a r e   a   c i r c u l a r   q u e u e .     T h e   i t e m s   a r e   0   i f   G o o g l e   C h r o m e   w a s   n o t   r u n n i n g ,   a n d   1   i f   i t   w a s   r u n n i n g .     B e f o r e   t h e   c h e c k   h a p p e n s ,   t h e   n u m b e r   a t   i n d e x   " h e a d "   s h o u l d   i n d i c a t e   w h a t   p r o g r a m   I   w a s   r u n n i n g   t w e n t y   m i n u t e s   a g o .     A f t e r   t h e   c h e c k   h a p p e n s ,   I   r e p l a c e   t h i s   n u m b e r   w i t h   t h e   p r o g r a m   I   a m   r u n n i n g   n o w . ?  C D C l     E���� E r      F G F J      H H  I J I m     ����   J  K L K m    ����   L  M N M m    ����   N  O P O m    ����   P  Q R Q m    ����   R  S T S m    ����   T  U V U m    ����   V  W X W m    ����   X  Y Z Y m    	����   Z  [�� [ m   	 
����  ��   G o      ���� 	0 queue  ��  ��   D  \ ] \ l    ^���� ^ r     _ ` _ m    ����  ` o      ���� 0 head  ��  ��   ]  a b a l     ��������  ��  ��   b  c�� c l   � d���� d T    � e e k    � f f  g h g l   �� i j��   i � � Check which app has been frontmost for the past twenty minutes.  If it has been Google Chrome 80% or more of the time, then display a dialog reminding me to get back to work.  However, this should only happen every fifteen minutes.    j � k k�   C h e c k   w h i c h   a p p   h a s   b e e n   f r o n t m o s t   f o r   t h e   p a s t   t w e n t y   m i n u t e s .     I f   i t   h a s   b e e n   G o o g l e   C h r o m e   8 0 %   o r   m o r e   o f   t h e   t i m e ,   t h e n   d i s p l a y   a   d i a l o g   r e m i n d i n g   m e   t o   g e t   b a c k   t o   w o r k .     H o w e v e r ,   t h i s   s h o u l d   o n l y   h a p p e n   e v e r y   f i f t e e n   m i n u t e s . h  l m l O    . n o n r    - p q p 6  + r s r n    " t u t 1     "��
�� 
pnam u 4    �� v
�� 
prcs v m    ����  s =  # * w x w 1   $ &��
�� 
pisf x m   ' )��
�� boovtrue q o      ���� 0 frontmostapp frontmostApp o m     y y�                                                                                  sevs  alis    �  Macintosh HD               �i|�H+     :System Events.app                                                ���j        ����  	                CoreServices    �i�o      �3�       :   -   ,  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   m  z { z l  / /��������  ��  ��   {  | } | Z   / D ~ �� � ~ =  / 2 � � � o   / 0���� 0 frontmostapp frontmostApp � m   0 1 � � � � �  G o o g l e   C h r o m e  r   5 ; � � � m   5 6����  � n       � � � 4   7 :�� �
�� 
cobj � o   8 9���� 0 head   � o   6 7���� 	0 queue  ��   � r   > D � � � m   > ?����   � n       � � � 4   @ C�� �
�� 
cobj � o   A B���� 0 head   � o   ? @���� 	0 queue   }  � � � r   E L � � � [   E J � � � l  E H ����� � `   E H � � � l  E F ����� � o   E F���� 0 head  ��  ��   � m   F G���� 
��  ��   � m   H I����  � o      ���� 0 head   �  � � � l  M M��������  ��  ��   �  � � � Z   M q � ����� � F   M e � � � ?  M U � � � I   M S�� ����� 0 sum   �  ��� � o   N O���� 	0 queue  ��  ��   � m   S T����  � l  X c ����� � G   X c � � � =  X [ � � � o   X Y���� 0 head   � m   Y Z����  � =  ^ a � � � o   ^ _���� 0 head   � m   _ `���� 
��  ��   � I  h m�� ���
�� .sysodlogaskr        TEXT � m   h i � � � � � 2 S h o u l d n ' t   y o u   b e   w o r k i n g ?��  ��  ��   �  � � � l  r r��������  ��  ��   �  � � � I  r w�� ���
�� .ascrcmnt****      � **** � o   r s���� 0 head  ��   �  � � � I  x }�� ���
�� .ascrcmnt****      � **** � o   x y���� 0 frontmostapp frontmostApp��   �  � � � I  ~ ��� ���
�� .ascrcmnt****      � **** � o   ~ ���� 	0 queue  ��   �  � � � l  � ���������  ��  ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� x��  ��  ��  ��  ��       �� � � ���   � ��~� 0 sum  
�~ .aevtoappnull  �   � **** � �} �|�{ � ��z�} 0 sum  �| �y ��y  �  �x�x 	0 queue  �{   � �w�v�u�t�w 	0 queue  �v 0 c  �u 0 i  �t 	0 total   � �s�r
�s .corecnte****       ****
�r 
cobj�z .�j  E�OkE�OjE�O �kh���/E�O�kE�[OY��O� � �q ��p�o � ��n
�q .aevtoappnull  �   � **** � k     � � �  C � �  \ � �  c�m�m  �p  �o   �   � �l�k�j y�i�h ��g�f ��e�d�c�b�a ��`�_�^�]�l 
�k 	0 queue  �j 0 head  
�i 
prcs
�h 
pnam �  
�g 
pisf�f 0 frontmostapp frontmostApp
�e 
cobj�d 0 sum  �c �b 
�a 
bool
�` .sysodlogaskr        TEXT
�_ .ascrcmnt****      � ****�^ x
�] .sysodelanull��� ��� nmbr�n �jjjjjjjjjj�vE�OkE�O |hZ� *�k/�,�[�,\Ze81E�UO��  k���/FY j���/FO��#kE�O*�k+ �	 �� 
 �� �&�& 
�j Y hO�j O�j O�j Oa j [OY�� ascr  ��ޭ