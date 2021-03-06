FasdUAS 1.101.10   ��   ��    k             l      ��  ��   NH

Script by Bonno Nachtegaal-Karels, June 2014
Based on OS-X-Wallpaper-Changer (https://github.com/pipwerks/OS-X-Wallpaper-Changer) by Philip Hutchison

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder or somewhere else depending on the setting below
2. You have images inside each folder

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Afternoon Early/image.jpg

GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 S c r i p t   b y   B o n n o   N a c h t e g a a l - K a r e l s ,   J u n e   2 0 1 4 
 B a s e d   o n   O S - X - W a l l p a p e r - C h a n g e r   ( h t t p s : / / g i t h u b . c o m / p i p w e r k s / O S - X - W a l l p a p e r - C h a n g e r )   b y   P h i l i p   H u t c h i s o n 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r   o r   s o m e w h e r e   e l s e   d e p e n d i n g   o n   t h e   s e t t i n g   b e l o w 
 2 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / A f t e r n o o n   E a r l y / i m a g e . j p g 
 
 G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply wallpaper folder     �   0   s u p p l y   w a l l p a p e r   f o l d e r      l     ����  r         m        �     6 P i c t u r e s : W a l l p a p e r s : R o t a t o r  o      ���� "0 wallpaperfolder wallPaperFolder��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % $  for multiple monitor support.    & � ' ' <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . $  ( ) ( l     �� * +��   * i c set to true to display the same image on all desktops, false to show unique images on each desktop    + � , , �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p )  - . - l    /���� / r     0 1 0 m    ��
�� boovtrue 1 o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   .  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   END USER CONFIGURATION    7 � 8 8 .   E N D   U S E R   C O N F I G U R A T I O N 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     ��������  ��  ��   <  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A ; 5 helper function ("handler") for getting random image    B � C C j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e @  D E D i      F G F I      �� H���� 0 getimage getImage H  I�� I o      ���� "0 wallpaperfolder wallPaperFolder��  ��   G k      J J  K L K l     ��������  ��  ��   L  M N M O      O P O L     Q Q c     R S R n     T U T 3   
 ��
�� 
file U n    
 V W V 4    
�� X
�� 
cfol X l   	 Y���� Y o    	���� "0 wallpaperfolder wallPaperFolder��  ��   W 1    ��
�� 
home S m    ��
�� 
ctxt P m      Z Z�                                                                                  MACS  alis    t  Macintosh HD               �e�H+     0
Finder.app                                                      ��"6        ����  	                CoreServices    �e
�      �"(       0   *   )  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   N  [�� [ l   ��������  ��  ��  ��   E  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     ��������  ��  ��   _  ` a ` l   ~ b���� b O    ~ c d c k    } e e  f g f l   ��������  ��  ��   g  h i h l   �� j k��   j 3 - wrapped in a try block for error suppression    k � l l Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n i  m n m Q    { o p�� o k    r q q  r s r l   ��������  ��  ��   s  t u t l   �� v w��   v 6 0 determine which picture to use for main display    w � x x `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y u  y z y r     { | { n    } ~ } I    �� ���� 0 getimage getImage   ��� � o    ���� "0 wallpaperfolder wallPaperFolder��  ��   ~  f     | o      ���� (0 maindisplaypicture mainDisplayPicture z  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � = 7 set the picture for additional monitors, if applicable    � � � � n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e �  � � � O    j � � � k    i � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � &   get a reference to all desktops    � � � � @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s �  � � � r    " � � � N      � � 2    ��
�� 
dskp � o      ���� 0 thedesktops theDesktops �  � � � l  # #��������  ��  ��   �  � � � l  # #�� � ���   � !  handle additional desktops    � � � � 6   h a n d l e   a d d i t i o n a l   d e s k t o p s �  � � � Z   # g � ����� � l  # * ����� � ?   # * � � � l  # ( ����� � I  # (�� ���
�� .corecnte****       **** � o   # $���� 0 thedesktops theDesktops��  ��  ��   � m   ( )���� ��  ��   � k   - c � �  � � � l  - -��������  ��  ��   �  � � � l  - -�� � ���   � D > loop through all desktops (beginning with the second desktop)    � � � � |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p ) �  � � � Y   - a ��� � ��� � k   ; \ � �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   � #  determine which image to use    � � � � :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e �  � � � Z   ; Q � ��� � � l  ; > ����� � =  ; > � � � o   ; <���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays � m   < =��
�� boovfals��  ��   � r   A I � � � n  A G � � � I   B G�� ����� 0 getimage getImage �  ��� � o   B C���� "0 wallpaperfolder wallPaperFolder��  ��   �  f   A B � o      ���� 20 secondarydisplaypicture secondaryDisplayPicture��   � r   L Q � � � n  L O � � � o   M O���� (0 maindisplaypicture mainDisplayPicture �  f   L M � o      ���� 20 secondarydisplaypicture secondaryDisplayPicture �  � � � l  R R��������  ��  ��   �  � � � l  R R� � ��   �   apply image to desktop    � � � � .   a p p l y   i m a g e   t o   d e s k t o p �  � � � r   R Z � � � o   R S�~�~ 20 secondarydisplaypicture secondaryDisplayPicture � n       � � � 1   W Y�}
�} 
picP � n   S W � � � 4   T W�| �
�| 
cobj � o   U V�{�{ 0 x   � l  S T ��z�y � o   S T�x�x 0 thedesktops theDesktops�z  �y   �  ��w � l  [ [�v�u�t�v  �u  �t  �w  �� 0 x   � m   0 1�s�s  � l  1 6 ��r�q � I  1 6�p ��o
�p .corecnte****       **** � o   1 2�n�n 0 thedesktops theDesktops�o  �r  �q  ��   �  ��m � l  b b�l�k�j�l  �k  �j  �m  ��  ��   �  ��i � l  h h�h�g�f�h  �g  �f  �i   � m     � ��                                                                                  sevs  alis    �  Macintosh HD               �e�H+     0System Events.app                                               7X��n�        ����  	                CoreServices    �e
�      ��`�       0   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  k k�e�d�c�e  �d  �c   �  � � � l  k k�b � ��b   � ( " set the primary monitor's picture    � � � � D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e �  � � � l  k k�a � ��a   � R L due to a Finder quirk, this has to be done AFTER setting the other displays    � � � � �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s �  � � � r   k p � � � o   k l�`�` (0 maindisplaypicture mainDisplayPicture � 1   l o�_
�_ 
dpic �  ��^ � l  q q�]�\�[�]  �\  �[  �^   p R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  ��   n  ��W � l  | |�V�U�T�V  �U  �T  �W   d m    	 � ��                                                                                  MACS  alis    t  Macintosh HD               �e�H+     0
Finder.app                                                      ��"6        ����  	                CoreServices    �e
�      �"(       0   *   )  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   a  ��S � l     �R�Q�P�R  �Q  �P  �S       �O � � ��O   � �N�M�N 0 getimage getImage
�M .aevtoappnull  �   � **** � �L G�K�J � ��I�L 0 getimage getImage�K �H �H    �G�G "0 wallpaperfolder wallPaperFolder�J   � �F�F "0 wallpaperfolder wallPaperFolder �  Z�E�D�C�B
�E 
home
�D 
cfol
�C 
file
�B 
ctxt�I � *�,�/�.�&UOP � �A�@�?�>
�A .aevtoappnull  �   � **** k     ~    -  `�=�=  �@  �?   �<�< 0 x    �;�: ��9�8 ��7�6�5�4�3�2�1�0�/�; "0 wallpaperfolder wallPaperFolder�: <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�9 0 getimage getImage�8 (0 maindisplaypicture mainDisplayPicture
�7 
dskp�6 0 thedesktops theDesktops
�5 .corecnte****       ****�4 20 secondarydisplaypicture secondaryDisplayPicture
�3 
cobj
�2 
picP
�1 
dpic�0  �/  �> �E�OeE�O� s h)�k+ E�O� O*�-E�O�j 	k ; 3l�j 	kh  �f  )�k+ E�Y )�,E�O���/�,FOP[OY��OPY hOPUO�*�,FOPW X  hOPUascr  ��ޭ