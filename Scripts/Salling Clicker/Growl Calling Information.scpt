FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Salling Clicker script to log phone calls to Growl
	� 2004 Robert Leslie
	Inspired by George (Ty) Tempel's first implementation

	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
	
	--Changes to work with growl: Jeremy Rossi
	
       	  j     �� 
�� 0 currentcalls currentCalls 
 J     ����   	     l     ������  ��        i        I      �������� 0 	connected  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i        I      �������� 0 entered_proximity  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i         I      �� !���� "0 phone_call_status_notification   !  "�� " o      ���� 0 
event_info  ��  ��     k    I # #  $ % $ r      & ' & m      ( (  Growl Calling Information    ' o      ���� 0 appname appName %  ) * ) r     + , + m     - -  Call Status    , o      ���� $0 notificationname notificationName *  . / . r     0 1 0 J     2 2  3�� 3 o    	���� $0 notificationname notificationName��   1 o      ���� 
0 notifs   /  4 5 4 l   ������  ��   5  6 7 6 O      8 9 8 I   ���� :
�� .registernull��� ��� null��   : �� ; <
�� 
appl ; o    ���� 0 appname appName < �� = >
�� 
anot = o    ���� 
0 notifs   > �� ? @
�� 
dnot ? o    ���� 
0 notifs   @ �� A��
�� 
iapp A m     B B ! Bluetooth File Exchange.app   ��   9 m     C C2null     ߀�� -GrowlHelperApp.app�����հ    {@(   )       �(��������GRRR   alis    �  Macintosh HD               �g�H+   -GrowlHelperApp.app                                              - ��7H        ����  	                	Resources     �f��      ��(     - - - D  D  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   7  D E D l  ! !������  ��   E  F G F w   ! H I H k   # J J  K L K l  # #�� M��   M @ :- "the_call_status" can have the following keyword values:    L  N O N l  # #�� P��   P D >- alerting/calling/connecting/holding/waiting/active/idle/busy    O  Q R Q r   # & S T S m   # $ U U       T o      ���� 0 call_status   R  V W V r   ' , X Y X n   ' * Z [ Z o   ( *���� 0 the_call_status   [ o   ' (���� 0 
event_info   Y o      ���� 0 event_call_status   W  \ ] \ Z   - � ^ _ `�� ^ =  - 0 a b a o   - .���� 0 event_call_status   b m   . /��
�� CSxxCSal _ r   3 6 c d c m   3 4 e e  alerting    d o      ���� 0 call_status   `  f g f =  9 < h i h o   9 :���� 0 event_call_status   i m   : ;��
�� CSxxCScl g  j k j r   ? D l m l m   ? B n n  calling    m o      ���� 0 call_status   k  o p o =  G L q r q o   G H���� 0 event_call_status   r m   H K��
�� CSxxCSct p  s t s r   O T u v u m   O R w w  
connecting    v o      ���� 0 call_status   t  x y x =  W \ z { z o   W X���� 0 event_call_status   { m   X [��
�� CSxxCShd y  | } | r   _ d ~  ~ m   _ b � �  holding     o      ���� 0 call_status   }  � � � =  g l � � � o   g h���� 0 event_call_status   � m   h k��
�� CSxxCSwt �  � � � r   o t � � � m   o r � �  waiting    � o      ���� 0 call_status   �  � � � =  w | � � � o   w x���� 0 event_call_status   � m   x {��
�� CSxxCSac �  � � � r    � � � � m    � � �  active    � o      ���� 0 call_status   �  � � � =  � � � � � o   � ����� 0 event_call_status   � m   � ���
�� CSxxCSid �  � � � r   � � � � � m   � � � � 
 idle    � o      ���� 0 call_status   �  � � � =  � � � � � o   � ����� 0 event_call_status   � m   � ���
�� CSxxCSbs �  ��� � r   � � � � � m   � � � � 
 busy    � o      ���� 0 call_status  ��  ��   ]  � � � l  � �������  ��   �  � � � l  � ��� ���   � > 8- "the_call_type" can have the following keyword values:    �  � � � l  � ��� ���   � &  - voice/data/fax/alternate voice    �  � � � r   � � � � � m   � � � �       � o      ���� 0 	call_type   �  � � � r   � � � � � n   � � � � � o   � ����� 0 the_call_type   � o   � ����� 0 
event_info   � o      ���� 0 event_call_type   �  � � � Z   � � � � ��� � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTvc � r   � � � � � m   � � � �  voice    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTda �  � � � r   � � � � � m   � � � � 
 data    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTfx �  � � � r   � � � � � m   � � � � 	 fax    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTv2 �  ��� � r   � � � � � m   � � � �  alternate voice    � o      ���� 0 	call_type  ��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � J D- "the_cid" is a numerical identifier represeting the call that this    �  � � � l  � ��� ���   � ; 5- event corresponds to (useful for tracking events in    �  � � � l  � ��� ���   �  - multi-party calls)    �  � � � r   �  � � � n   � � � � � o   � ����� 0 the_cid   � o   � ����� 0 
event_info   � o      ���� 0 event_call_id   �  � � � l ������  ��   �  � � � l �� ���   � 8 2- Additionally the "the_phone_number" string value    �  � � � l �� ���   � ; 5- is sometimes available (at least for "alerting" and    �  � � � l �� ���   �  - "calling")    �  � � � r   � � � m   � �       � o      ���� 0 event_caller_id   �  ��� � Q   � ��� � r  
 �  � n  
 o  ���� 0 the_phone_number   o  
���� 0 
event_info    o      ���� 0 event_caller_id   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   I6null      � �� 
��SEC Helper.app   ���X̿�� � 4{@(  ����P    ���
����D JSCL  alis    �  Macintosh HD               �g�H+   
��SEC Helper.app                                                  
���{        ����  	                	Resources     �f��      ��[     
�� 
�� 
�� D  D  _Macintosh HD:Library:PreferencePanes:Salling Clicker.prefPane:Contents:Resources:SEC Helper.app     S E C   H e l p e r . a p p    M a c i n t o s h   H D  RLibrary/PreferencePanes/Salling Clicker.prefPane/Contents/Resources/SEC Helper.app  / ��   G �� Z  I�� E % J  #		 

 m    alerting    �� m  !  calling   ��   o  #$���� 0 call_status   k  (T  Z  (=�� = (- o  ()���� 0 call_status   m  ),  alerting    r  05 m  03  incoming    o      ���� 0 	direction  ��   r  8= m  8;  outgoing    o      ���� 0 	direction    r  >C !  m  >A""      ! o      ���� 0 
thesummary 
theSummary #$# r  DL%&% I  DJ�'�~� 0 formatnumber formatNumber' (�}( o  EF�|�| 0 event_caller_id  �}  �~  & o      �{�{ 0 thelocation theLocation$ )*) r  MU+,+ I  MS�z-�y�z 0 	getperson 	getPerson- .�x. o  NO�w�w 0 event_caller_id  �x  �y  , o      �v�v 0 	theperson 	thePerson* /0/ Z  V�12�u31 = V[454 o  VW�t�t 0 	theperson 	thePerson5 m  WZ�s
�s 
msng2 r  ^e676 b  ^c898 o  ^_�r�r 0 
thesummary 
theSummary9 m  _b::  unknown   7 o      �q�q 0 
thesummary 
theSummary�u  3 w  h�;<; k  l�== >?> r  lu@A@ b  lsBCB o  lm�p�p 0 
thesummary 
theSummaryC n  mrDED 1  nr�o
�o 
pnamE o  mn�n�n 0 	theperson 	thePersonA o      �m�m 0 
thesummary 
theSummary? FGF r  v�HIH b  vJKJ m  vyLL  addressbook://   K n  y~MNM 1  z~�l
�l 
ID  N o  yz�k�k 0 	theperson 	thePersonI o      �j�j 0 theurl theURLG OPO l ���i�h�i  �h  P QRQ r  ��STS I  ���gU�f�g 0 getphone getPhoneU VWV o  ���e�e 0 event_caller_id  W X�dX o  ���c�c 0 	theperson 	thePerson�d  �f  T o      �b�b 0 thephone thePhoneR Y�aY Z  ��Z[�`�_Z > ��\]\ o  ���^�^ 0 thephone thePhone] m  ���]
�] 
msng[ r  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf o  ���\�\ 0 thelocation theLocationg 1  ���[
�[ 
space m  ��hh  (   c n  ��iji 1  ���Z
�Z 
az18j o  ���Y�Y 0 thephone thePhonea m  ��kk  )   _ o      �X�X 0 thelocation theLocation�`  �_  �a  <�null      � ��  iAddress Book.app ���X̿�� � 4{@P  ���P    ���
����D adrb  alis    d  Macintosh HD               �g�H+    iAddress Book.app                                                x�@��        ����  	                Applications    �f��      �@��      i  *Macintosh HD:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    M a c i n t o s h   H D  Applications/Address Book.app   / ��  0 lml l ���W�V�W  �V  m non r  ��pqp K  ��rr �Ust�U 0 thecid theCIDs o  ���T�T 0 event_call_id  t �Suv�S 0 thetype theTypeu o  ���R�R 0 	call_type  v �Qwx�Q 0 	thenumber 	theNumberw o  ���P�P 0 event_caller_id  x �Oyz�O 0 thedirection theDirectiony o  ���N�N 0 	direction  z �M{|�M 0 	starttime 	startTime{ I ���L�K�J
�L .misccurdldt    ��� null�K  �J  | �I}~�I 0 answeredtime answeredTime} m  ���H
�H 
msng~ �G��G 0 endtime endTime m  ���F
�F 
msng� �E���E 0 	theperson 	thePerson� o  ���D�D 0 
thesummary 
theSummary� �C��B�C 0 thelocation theLocation� o  ���A�A 0 thelocation theLocation�B  q o      �@�@ 0 thecall theCallo ��� s  ����� o  ���?�? 0 thecall theCall� n      ���  :  ��� o  ���>�> 0 currentcalls currentCalls� ��� l ���=�<�=  �<  � ��� r  ����� m  ����      � o      �;�;  0 thedescription theDescription� ��� Z  ����:�9� > ����� o  ���8�8 0 thelocation theLocation� m  ���7
�7 
msng� r  ���� b  ���� 1  ��6
�6 
dscr� o  �5�5 0 thelocation theLocation� 1  
�4
�4 
dscr�:  �9  � ��� Z  1���3�2� > ��� o  �1�1 0 
thesummary 
theSummary� m  �0
�0 
msng� r  -��� c  '��� b  #��� b  !��� 1  �/
�/ 
dscr� o   �.
�. 
ret � o  !"�-�- 0 
thesummary 
theSummary� m  #&�,
�, 
TEXT� 1  ',�+
�+ 
dscr�3  �2  � ��*� O  2T��� I 6S�)�(�
�) .notifygrnull��� ��� null�(  � �'��
�' 
name� o  :;�&�& $0 notificationname notificationName� �%��
�% 
titl� b  >G��� b  >C��� o  >?�$�$ 0 	direction  � 1  ?B�#
�# 
spac� m  CF�� 
 call   � �"��
�" 
appl� o  HI�!�! 0 appname appName� � ��
�  
desc� o  LO��  0 thedescription theDescription�  � m  23 C�*  ��   k  WI�� ��� r  Wa��� I  W]���� 0 getcallrecord getCallRecord� ��� o  XY�� 0 event_call_id  �  �  � o      �� 0 thecall theCall� ��� r  bk��� I bg���
� .misccurdldt    ��� null�  �  � o      �� 0 thetime theTime� ��� Z  lI����� = lq��� o  lm�� 0 call_status  � m  mp��  active   � k  t��� ��� Z  t������ = t��� n  t{��� o  w{�� 0 answeredtime answeredTime� o  tw�� 0 thecall theCall� m  {~�
� 
msng� r  ����� o  ���� 0 thetime theTime� n      ��� o  ���� 0 answeredtime answeredTime� o  ���
�
 0 thecall theCall�  �  � ��	� O  ����� I �����
� .notifygrnull��� ��� null�  � ���
� 
name� o  ���� $0 notificationname notificationName� ���
� 
titl� b  ����� b  ����� n  ����� o  ���� 0 thedirection theDirection� o  ���� 0 thecall theCall� 1  ���
� 
spac� m  ����  answered   � � ��
�  
appl� o  ������ 0 appname appName� �����
�� 
desc� l ������ c  ����� b  ����� b  ����� n  ����� o  ������ 0 thelocation theLocation� o  ������ 0 thecall theCall� o  ����
�� 
ret � n  ����� o  ������ 0 	theperson 	thePerson� o  ������ 0 thecall theCall� m  ����
�� 
TEXT��  ��  � m  �� C�	  � ��� = ����� o  ������ 0 call_status  � m  ���� 
 idle   � ���� k  �E�� ��� r  ����� o  ������ 0 thetime theTime� n         o  ������ 0 endtime endTime o  ������ 0 thecall theCall�  r  �� I  �������� 0 englishtime englishTime �� \  ��	 l ��
��
 n  �� o  ������ 0 endtime endTime o  ������ 0 thecall theCall��  	 l ���� n  �� o  ������ 0 answeredtime answeredTime o  ������ 0 thecall theCall��  ��  ��   o      ���� 0 theduration theDuration  O  �> I =����
�� .notifygrnull��� ��� null��   ��
�� 
name o  ���� $0 notificationname notificationName ��
�� 
titl b  
 b  
 n  
 o  ���� 0 thedirection theDirection o  
���� 0 thecall theCall 1  ��
�� 
spac m    hungup    �� !
�� 
appl  o  ���� 0 appname appName! ��"��
�� 
desc" l 9#��# c  9$%$ b  5&'& b  1()( b  -*+* b  ),-, n  %./. o  !%���� 0 thelocation theLocation/ o  !���� 0 thecall theCall- o  %(��
�� 
ret + m  ),00  Time:   ) 1  -0��
�� 
spac' o  14���� 0 theduration theDuration% m  58��
�� 
TEXT��  ��   m  �� C 1��1 I  ?E��2���� $0 deletecallrecord deleteCallRecord2 3��3 o  @A���� 0 event_call_id  ��  ��  ��  ��  �  �  ��    454 l     ������  ��  5 676 l     ������  ��  7 898 l     ��:��  : ( "-tell application "GrowlHelperApp"   9 ;<; l     ��=��  = � �-notify with name notificationName title call_type application name appName description event_caller_id & ":  " & call_status with sticky   < >?> l     ��@��  @  	-end tell   ? ABA l     ������  ��  B CDC l     ������  ��  D EFE i    GHG I      ��I���� 0 getcallrecord getCallRecordI J��J o      ���� 0 cid  ��  ��  H k     2KK LML X     'N��ON Z    "PQ����P =   RSR n    TUT o    ���� 0 thecid theCIDU o    ���� 0 acall aCallS o    ���� 0 cid  Q L    VV o    ���� 0 acall aCall��  ��  �� 0 acall aCallO o    ���� 0 currentcalls currentCallsM WXW l  ( (������  ��  X Y��Y R   ( 2��Z��
�� .ascrerr ****      � ****Z b   * 1[\[ b   * /]^] b   * -_`_ m   * +aa   Missing call record for id   ` 1   + ,��
�� 
spac^ o   - .���� 0 cid  \ m   / 0bb  .   ��  ��  F cdc l     ������  ��  d efe i    ghg I      ��i���� $0 deletecallrecord deleteCallRecordi j��j o      ���� 0 cid  ��  ��  h k     8kk lml r     non J     ����  o o      ���� 0 newcalls newCallsm pqp X    0r��sr Z    +tu����t >   vwv n    xyx o    ���� 0 thecid theCIDy o    ���� 0 acall aCallw o    ���� 0 cid  u s   ! 'z{z n   ! $|}| 1   " $��
�� 
pcnt} o   ! "���� 0 acall aCall{ n      ~~  ;   % & o   $ %���� 0 newcalls newCalls��  ��  �� 0 acall aCalls o    ���� 0 currentcalls currentCallsq ��� l  1 1������  ��  � ���� r   1 8��� o   1 2���� 0 newcalls newCalls� o      ���� 0 currentcalls currentCalls��  f ��� l     ������  ��  � ��� i    ��� I      ������� 0 logcall logCall� ���� o      ���� 0 thecall theCall��  ��  � k    m�� ��� r     ��� m     ��      � o      ���� 0 
thesummary 
theSummary� ��� r    	��� n    ��� o    ���� 0 thelog theLog� o    ���� 0 thecall theCall� o      ���� 0 thelog theLog� ��� l  
 
������  ��  � ��� Z   
 N������ =  
 ��� n   
 ��� o    ���� 0 answeredtime answeredTime� o   
 ���� 0 thecall theCall� m    ��
�� 
msng� k    3�� ��� Z    ������� H    �� o    ���� (0 logunansweredcalls logUnansweredCalls� L    ����  ��  ��  � ��� l   ������  ��  � ���� Z    3������ =   #��� n    !��� o    !���� 0 thedirection theDirection� o    ���� 0 thecall theCall� m   ! "��  incoming   � r   & +��� b   & )��� m   & '��  missed   � 1   ' (�
� 
spac� o      �~�~ 0 
thesummary 
theSummary��  � r   . 3��� b   . 1��� m   . /��  
unanswered   � 1   / 0�}
�} 
spac� o      �|�| 0 
thesummary 
theSummary��  ��  � r   6 N��� b   6 L��� b   6 J��� b   6 =��� b   6 ;��� b   6 9��� o   6 7�{�{ 0 thelog theLog� o   7 8�z
�z 
ret � m   9 :��  call duration   � 1   ; <�y
�y 
spac� l 	 = I��x� I   = I�w��v�w 0 englishtime englishTime� ��u� \   > E��� l  > A��t� n   > A��� o   ? A�s�s 0 endtime endTime� o   > ?�r�r 0 thecall theCall�t  � l  A D��q� n   A D��� o   B D�p�p 0 answeredtime answeredTime� o   A B�o�o 0 thecall theCall�q  �u  �v  �x  � o   J K�n
�n 
ret � o      �m�m 0 thelog theLog� ��� l  O O�l�k�l  �k  � ��� Z   O ������ =  O T��� n   O R��� o   P R�j�j 0 thetype theType� o   O P�i�i 0 thecall theCall� m   R S�� 	 fax   � r   W ^��� b   W \��� b   W Z��� o   W X�h�h 0 
thesummary 
theSummary� m   X Y�� 	 fax   � 1   Z [�g
�g 
spac� o      �f�f 0 
thesummary 
theSummary� ��� =  a h��� n   a d��� o   b d�e�e 0 thetype theType� o   a b�d�d 0 thecall theCall� m   d g�� 
 data   � ��c� r   k t��� b   k r��� b   k p��� o   k l�b�b 0 
thesummary 
theSummary� m   l o��  	data call   � 1   p q�a
�a 
spac� o      �`�` 0 
thesummary 
theSummary�c  � r   w ���� b   w ~��� b   w |��� o   w x�_�_ 0 
thesummary 
theSummary� m   x {   
 call   � 1   | }�^
�^ 
spac� o      �]�] 0 
thesummary 
theSummary�  l  � ��\�[�\  �[    Z   � ��Z =  � �	 n   � �

 o   � ��Y�Y 0 thedirection theDirection o   � ��X�X 0 thecall theCall	 m   � �  incoming    r   � � b   � � b   � � o   � ��W�W 0 
thesummary 
theSummary m   � � 
 from    1   � ��V
�V 
spac o      �U�U 0 
thesummary 
theSummary�Z   r   � � b   � � b   � � o   � ��T�T 0 
thesummary 
theSummary m   � �  to    1   � ��S
�S 
spac o      �R�R 0 
thesummary 
theSummary  l  � ��Q�P�Q  �P    r   � �  I   � ��O!�N�O 0 formatnumber formatNumber! "�M" n   � �#$# o   � ��L�L 0 	thenumber 	theNumber$ o   � ��K�K 0 thecall theCall�M  �N    o      �J�J 0 thelocation theLocation %&% r   � �'(' I   � ��I)�H�I 0 	getperson 	getPerson) *�G* n   � �+,+ o   � ��F�F 0 	thenumber 	theNumber, o   � ��E�E 0 thecall theCall�G  �H  ( o      �D�D 0 	theperson 	thePerson& -.- r   � �/0/ m   � ��C
�C 
msng0 o      �B�B 0 theurl theURL. 121 l  � ��A�@�A  �@  2 343 Z   � �56�?�>5 I   � ��=7�<�= 0 shouldnotlog shouldNotLog7 8�;8 o   � ��:�: 0 	theperson 	thePerson�;  �<  6 L   � ��9�9  �?  �>  4 9:9 l  � ��8�7�8  �7  : ;<; Z   �$=>�6?= =  � �@A@ o   � ��5�5 0 	theperson 	thePersonA m   � ��4
�4 
msng> r   � �BCB b   � �DED o   � ��3�3 0 
thesummary 
theSummaryE m   � �FF  unknown   C o      �2�2 0 
thesummary 
theSummary�6  ? w   �$G<G k   �$HH IJI r   � �KLK b   � �MNM o   � ��1�1 0 
thesummary 
theSummaryN n   � �OPO 1   � ��0
�0 
pnamP o   � ��/�/ 0 	theperson 	thePersonL o      �.�. 0 
thesummary 
theSummaryJ QRQ r   � �STS b   � �UVU m   � �WW  addressbook://   V n   � �XYX 1   � ��-
�- 
ID  Y o   � ��,�, 0 	theperson 	thePersonT o      �+�+ 0 theurl theURLR Z[Z l  � ��*�)�*  �)  [ \]\ r   �^_^ I   ��(`�'�( 0 getphone getPhone` aba n   � �cdc o   � ��&�& 0 	thenumber 	theNumberd o   � ��%�% 0 thecall theCallb e�$e o   � �#�# 0 	theperson 	thePerson�$  �'  _ o      �"�" 0 thephone thePhone] f�!f Z  $gh� �g > 
iji o  �� 0 thephone thePhonej m  	�
� 
msngh r   klk b  mnm b  opo b  qrq b  sts o  �� 0 thelocation theLocationt 1  �
� 
spacr m  uu  (   p n  vwv 1  �
� 
az18w o  �� 0 thephone thePhonen m  xx  )   l o      �� 0 thelocation theLocation�   �  �!  < yzy l %%���  �  z {�{ O %m|}| I +l��~
� .corecrel****      � null�  ~ ��
� 
kocl m  /2�
� 
wrev� ���
� 
insh� n  5<���  ;  ;<� n 5;��� I  6;���� 0 getcalendar getCalendar� ��� o  67�� $0 logcalendartitle logCalendarTitle�  �  �  f  56� ���

� 
prdt� K  ?f�� �	��
�	 
wr11� n BH��� I  CH���� 0 
capitalize  � ��� o  CD�� 0 
thesummary 
theSummary�  �  �  f  BC� ���
� 
wr14� o  KL�� 0 thelocation theLocation� ���
� 
wr1s� n  OT��� o  PT�� 0 	starttime 	startTime� o  OP� �  0 thecall theCall� ����
�� 
wr5s� n  WZ��� o  XZ���� 0 endtime endTime� o  WX���� 0 thecall theCall� ����
�� 
wr16� o  ]^���� 0 theurl theURL� �����
�� 
wr12� o  ab���� 0 thelog theLog��  �
  } m  %(���null     ߀��  iiCal.app���Ր    ������հ  �{@(   )       �(��������wrbt  alis    D  Macintosh HD               �g�H+    iiCal.app                                                        ��?Y�        ����  	                Applications    �f��      �?K�      i  "Macintosh HD:Applications:iCal.app    i C a l . a p p    M a c i n t o s h   H D  Applications/iCal.app   / ��  �  � ��� l     ������  ��  � ��� i    ��� I      ������� 0 getcalendar getCalendar� ���� o      ���� 0 thetitle theTitle��  ��  � O     1��� k    0�� ��� e    �� 6   ��� 2   ��
�� 
wres� =   ��� 1   	 ��
�� 
wr02� o    ���� 0 thetitle theTitle� ���� Z    0������ ?    ��� n    ��� 1    ��
�� 
leng� 1    ��
�� 
rslt� m    ����  � L     �� n    ��� 4   ���
�� 
cobj� m    ���� � 1    ��
�� 
rslt��  � L   # 0�� I  # /�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   % &��
�� 
wres� �����
�� 
prdt� K   ' +�� �����
�� 
wr02� o   ( )���� 0 thetitle theTitle��  ��  ��  � m     �� ��� l     ������  ��  � ��� i     #��� I      ������� 0 	getperson 	getPerson� ���� o      ���� 0 	thenumber 	theNumber��  ��  � k     (�� ��� Q     %����� k    �� ��� O   ��� r    ��� I   �����
�� .seClLUabnull��� ��� obj � o    ���� 0 	thenumber 	theNumber��  � o      ���� 0 theuid theUID� m     I� ���� O   ��� L    �� 5    �����
�� 
azf4� o    ���� 0 theuid theUID
�� kfrmID  � m    <��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  & &������  ��  � ���� L   & (�� m   & '��
�� 
msng��  � ��� l     ������  ��  � ��� i   $ '��� I      ������� 0 getphone getPhone� ��� o      ���� 0 	thenumber 	theNumber� ���� o      ���� 0 	theperson 	thePerson��  ��  � k     ]�� ��� r     ��� I     ������� 0 digitsof digitsOf� ���� o    ���� 0 	thenumber 	theNumber��  ��  � o      ���� 0 	thenumber 	theNumber� ��� l  	 	������  ��  � ��� Z   	 -������� F   	 ��� =  	 ��� n   	 ��� 1   
 ��
�� 
leng� o   	 
���� 0 	thenumber 	theNumber� m    ���� � =   � � n     l 	  �� 4    ��
�� 
cha  m    ���� ��   o    ���� 0 	thenumber 	theNumber  m      1   � r    ) n    '	 7   '��

�� 
ctxt
 m   ! #����  m   $ &���� 	 o    ���� 0 	thenumber 	theNumber o      ���� 0 	thenumber 	theNumber��  ��  �  l  . .������  ��    w   . Z< X   0 Z�� Z   B U���� E   B L n  B J I   C J������ 0 digitsof digitsOf �� n   C F 1   D F��
�� 
az17 o   C D���� 0 aphone aPhone��  ��    f   B C o   J K���� 0 	thenumber 	theNumber L   O Q o   O P���� 0 aphone aPhone��  ��  �� 0 aphone aPhone n   3 6 2  4 6��
�� 
az20 o   3 4���� 0 	theperson 	thePerson  !  l  [ [������  ��  ! "��" L   [ ]## m   [ \��
�� 
msng��  � $%$ l     ������  ��  % &'& i   ( +()( I      ��*���� 0 ismember isMember* +,+ o      ���� 0 	theentity 	theEntity, -��- o      ���� 0 thegroup theGroup��  ��  ) k     6.. /0/ w     31<1 X    32��32 Z    .45����4 G    %676 =    898 n    :;: 1    ��
�� 
pcnt; o    ���� 0 agroup aGroup9 o    ���� 0 thegroup theGroup7 l 	  #<��< I    #��=���� 0 ismember isMember= >?> o    ���� 0 agroup aGroup? @��@ o    ���� 0 thegroup theGroup��  ��  ��  5 L   ( *AA m   ( )��
�� boovtrue��  ��  �� 0 agroup aGroup3 n    BCB 2   ��
�� 
azf5C o    ���� 0 	theentity 	theEntity0 DED l  4 4������  ��  E F��F L   4 6GG m   4 5��
�� boovfals��  ' HIH l     ��~�  �~  I JKJ i   , /LML I      �}N�|�} 0 shouldnotlog shouldNotLogN O�{O o      �z�z 0 	theperson 	thePerson�{  �|  M k     iPP QRQ Z     ST�y�xS =    UVU o     �w�w 0 	theperson 	thePersonV m    �v
�v 
msngT L    
WW >   	XYX o    �u�u 0 loggroup logGroupY m    �t
�t 
msng�y  �x  R Z[Z l   �s�r�s  �r  [ \]\ O    f^_^ k    e`` aba Q    ;cd�qc Z    2ef�p�oe F    )ghg >   iji o    �n�n 0 
nologgroup 
noLogGroupj m    �m
�m 
msngh l 	  'k�lk n   'lml I    '�kn�j�k 0 ismember isMembern opo o    �i�i 0 	theperson 	thePersonp q�hq 5    #�gr�f
�g 
azf5r o     !�e�e 0 
nologgroup 
noLogGroup
�f kfrmname�h  �j  m  f    �l  f L   , .ss m   , -�d
�d boovtrue�p  �o  d R      �c�b�a
�c .ascrerr ****      � ****�b  �a  �q  b t�`t Q   < euv�_u Z   ? \wx�^�]w F   ? Syzy >  ? B{|{ o   ? @�\�\ 0 loggroup logGroup| m   @ A�[
�[ 
msngz l 	 E Q}�Z} H   E Q~~ n  E P� I   F P�Y��X�Y 0 ismember isMember� ��� o   F G�W�W 0 	theperson 	thePerson� ��V� 5   G L�U��T
�U 
azf5� o   I J�S�S 0 loggroup logGroup
�T kfrmname�V  �X  �  f   E F�Z  x L   V X�� m   V W�R
�R boovtrue�^  �]  v R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O  �_  �`  _ m    <] ��� l  g g�N�M�N  �M  � ��L� L   g i�� m   g h�K
�K boovfals�L  K ��� l     �J�I�J  �I  � ��� i   0 3��� I      �H��G�H 0 digitsof digitsOf� ��F� o      �E�E 0 	thestring 	theString�F  �G  � k     1�� ��� r     ��� m     ��  
0123456789   � o      �D�D 0 validdigits validDigits� ��� r    ��� m    ��      � o      �C�C 0 	newstring 	newString� ��� X    .��B�� Z    )���A�@� E   ��� o    �?�? 0 validdigits validDigits� o    �>�> 0 adigit aDigit� r     %��� b     #��� o     !�=�= 0 	newstring 	newString� o   ! "�<�< 0 adigit aDigit� o      �;�; 0 	newstring 	newString�A  �@  �B 0 adigit aDigit� n    ��� 2   �:
�: 
cha � o    �9�9 0 	thestring 	theString� ��� l  / /�8�7�8  �7  � ��6� L   / 1�� o   / 0�5�5 0 	newstring 	newString�6  � ��� l     �4�3�4  �3  � ��� i   4 7��� I      �2��1�2 0 formatnumber formatNumber� ��0� o      �/�/ 0 	thenumber 	theNumber�0  �1  � k     ��� ��� r     ��� I     �.��-�. 0 digitsof digitsOf� ��,� o    �+�+ 0 	thenumber 	theNumber�,  �-  � o      �*�* 0 	thenumber 	theNumber� ��� l  	 	�)�(�)  �(  � ��� Z   	 �����'� =  	 ��� n   	 ��� 1   
 �&
�& 
leng� o   	 
�%�% 0 	thenumber 	theNumber� m    �$�$  � L    �� m    �#
�# 
msng� ��� F    &��� =   ��� n    ��� 1    �"
�" 
leng� o    �!�! 0 	thenumber 	theNumber� m    � �  � =   $��� n    "��� l 	  "��� 4    "��
� 
cha � m     !�� �  � o    �� 0 	thenumber 	theNumber� m   " #��  1   � ��� L   ) >�� b   ) =��� b   ) ,��� m   ) *��  +1   � 1   * +�
� 
spac� l 	 , <��� I   , <���� 0 formatnumber formatNumber� ��� n   - 8��� 7  . 8���
� 
ctxt� m   2 4�� � m   5 7�� � o   - .�� 0 	thenumber 	theNumber�  �  �  � ��� =  A F��� n   A D��� 1   B D�
� 
leng� o   A B�� 0 	thenumber 	theNumber� m   D E�� 
� ��� L   I h�� b   I g��� b   I V��� l 	 I T��� l  I T��� n   I T��� 7  J T���
� 
ctxt� m   N P�� � m   Q S�� � o   I J�
�
 0 	thenumber 	theNumber�  �  � 1   T U�	
�	 
spac� l 	 V f��� I   V f���� 0 formatnumber formatNumber� ��� n   W b� � 7  X b�
� 
ctxt m   \ ^��  m   _ a�� 
  o   W X�� 0 	thenumber 	theNumber�  �  �  �  =  k p n   k n 1   l n� 
�  
leng o   k l���� 0 	thenumber 	theNumber m   n o����  	��	 L   s �

 b   s � b   s � l 	 s ~�� l  s ~�� n   s ~ 7  t ~��
�� 
ctxt m   x z����  m   { }����  o   s t���� 0 	thenumber 	theNumber��  ��   m   ~   -    l 	 � ��� l  � ��� n   � � 7  � ���
�� 
ctxt m   � �����  m   � �����  o   � ����� 0 	thenumber 	theNumber��  ��  ��  �'  �  l  � �������  ��   �� L   � � o   � ����� 0 	thenumber 	theNumber��  �  !  l     ������  ��  ! "#" i   8 ;$%$ I      ��&���� 0 englishcount englishCount& '(' o      ���� 0 howmany howMany( )��) o      ���� 0 
unitstring 
unitString��  ��  % k     ** +,+ r     	-.- c     /0/ b     121 b     343 o     ���� 0 howmany howMany4 1    ��
�� 
spac2 o    ���� 0 
unitstring 
unitString0 m    ��
�� 
TEXT. o      ���� 0 	thestring 	theString, 565 Z   
 78����7 >   
 9:9 o   
 ���� 0 howmany howMany: m    ���� 8 r    ;<; b    =>= o    ���� 0 	thestring 	theString> m    ??  s   < o      ���� 0 	thestring 	theString��  ��  6 @A@ l   ������  ��  A B��B L    CC o    ���� 0 	thestring 	theString��  # DED l     ������  ��  E FGF i   < ?HIH I      ��J���� 0 englishtime englishTimeJ K��K o      ���� 0 
numseconds 
numSeconds��  ��  I k     �LL MNM r     OPO J     ����  P o      ���� 0 theelements theElementsN QRQ Z    !ST����S @    UVU o    ���� 0 
numseconds 
numSecondsV 1    ��
�� 
hourT k    WW XYX s    Z[Z I    ��\���� 0 englishcount englishCount\ ]^] _    _`_ o    ���� 0 
numseconds 
numSeconds` 1    ��
�� 
hour^ a��a m    bb 
 hour   ��  ��  [ n      cdc  ;    d o    ���� 0 theelements theElementsY e��e r    fgf `    hih o    ���� 0 
numseconds 
numSecondsi 1    ��
�� 
hourg o      ���� 0 
numseconds 
numSeconds��  ��  ��  R jkj l  " "������  ��  k lml Z   " >no����n @   " %pqp o   " #���� 0 
numseconds 
numSecondsq 1   # $��
�� 
min o k   ( :rr sts s   ( 4uvu I   ( 1��w���� 0 englishcount englishCountw xyx _   ) ,z{z o   ) *���� 0 
numseconds 
numSeconds{ 1   * +��
�� 
min y |��| m   , -}}  minute   ��  ��  v n      ~~  ;   2 3 o   1 2���� 0 theelements theElementst ���� r   5 :��� `   5 8��� o   5 6���� 0 
numseconds 
numSeconds� 1   6 7��
�� 
min � o      ���� 0 
numseconds 
numSeconds��  ��  ��  m ��� l  ? ?������  ��  � ��� Z   ? ]������� G   ? L��� ?   ? B��� o   ? @���� 0 
numseconds 
numSeconds� m   @ A����  � =  E J��� n   E H��� l 	 F H���� 1   F H��
�� 
leng��  � o   E F���� 0 theelements theElements� m   H I����  � s   O Y��� I   O V������� 0 englishcount englishCount� ��� o   P Q���� 0 
numseconds 
numSeconds� ���� m   Q R��  second   ��  ��  � n      ���  ;   W X� o   V W���� 0 theelements theElements��  ��  � ��� l  ^ ^������  ��  � ���� Z   ^ ������ =   ^ c��� n   ^ a��� 1   _ a��
�� 
leng� o   ^ _���� 0 theelements theElements� m   a b���� � L   f }�� b   f |��� b   f w��� b   f u��� b   f s��� b   f n��� b   f l��� n   f j��� l 	 g j���� 4   g j���
�� 
cobj� m   h i���� ��  � o   f g���� 0 theelements theElements� m   j k��  ,   � 1   l m��
�� 
spac� n   n r��� l 	 o r���� 4   o r���
�� 
cobj� m   p q���� ��  � o   n o���� 0 theelements theElements� m   s t��  , and   � 1   u v��
�� 
spac� n   w {��� l 	 x {���� 4   x {���
�� 
cobj� m   y z���� ��  � o   w x���� 0 theelements theElements� ��� =   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� 0 theelements theElements� m   � ����� � ���� L   � ��� b   � ���� b   � ���� b   � ���� b   � ���� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements� 1   � ���
�� 
spac� m   � ��� 	 and   � 1   � ���
�� 
spac� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements��  � L   � ��� n   � ���� l 	 � ���� 4   � ��~�
�~ 
cobj� m   � ��}�} �  � o   � ��|�| 0 theelements theElements��  G ��� l     �{�z�{  �z  � ��� i   @ C��� I      �y��x�y 0 
capitalize  � ��w� o      �v�v 0 	thestring 	theString�w  �x  � k     O�� ��� Z     L���u�t� ?     ��� n     ��� 1    �s
�s 
leng� o     �r�r 0 	thestring 	theString� m    �q�q  � k    H�� ��� r    ��� I   �p��o
�p .sysoctonshor       TEXT� l   ��n� n    ��� 4   	 �m�
�m 
cha � m   
 �l�l � o    	�k�k 0 	thestring 	theString�n  �o  � o      �j�j 	0 ascii  � ��� l   �i�h�i  �h  � ��g� Z    H� �f�e� F    & @     l 	  �d o    �c�c 	0 ascii  �d   l   �b I   �a�`
�a .sysoctonshor       TEXT m      a   �`  �b   B    $	
	 l 	  �_ o    �^�^ 	0 ascii  �_  
 l   #�] I   #�\�[
�\ .sysoctonshor       TEXT m      z   �[  �]    r   ) D b   ) B l 	 ) :�Z l  ) :�Y I  ) :�X�W
�X .sysontocTEXT       shor l  ) 6�V [   ) 6 \   ) 0 o   ) *�U�U 	0 ascii   l  * /�T I  * /�S�R
�S .sysoctonshor       TEXT m   * +  a   �R  �T   l  0 5�Q I  0 5�P�O
�P .sysoctonshor       TEXT m   0 1    A   �O  �Q  �V  �W  �Y  �Z   l  : A!�N! c   : A"#" n   : ?$%$ 1   = ?�M
�M 
rest% n   : =&'& 2  ; =�L
�L 
cha ' o   : ;�K�K 0 	thestring 	theString# m   ? @�J
�J 
TEXT�N   o      �I�I 0 	thestring 	theString�f  �e  �g  �u  �t  � ()( l  M M�H�G�H  �G  ) *�F* L   M O++ o   M N�E�E 0 	thestring 	theString�F  � ,�D, l     �C�B�C  �B  �D       �A-./0123456789:;<=>�A  - �@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�@ 0 currentcalls currentCalls�? 0 	connected  �> 0 entered_proximity  �= "0 phone_call_status_notification  �< 0 getcallrecord getCallRecord�; $0 deletecallrecord deleteCallRecord�: 0 logcall logCall�9 0 getcalendar getCalendar�8 0 	getperson 	getPerson�7 0 getphone getPhone�6 0 ismember isMember�5 0 shouldnotlog shouldNotLog�4 0 digitsof digitsOf�3 0 formatnumber formatNumber�2 0 englishcount englishCount�1 0 englishtime englishTime�0 0 
capitalize  . �/�.�/  �.  / �- �,�+?@�*�- 0 	connected  �,  �+  ?  @  �* 	jvEc   0 �) �(�'AB�&�) 0 entered_proximity  �(  �'  A  B  �& 	jvEc   1 �%  �$�#CD�"�% "0 phone_call_status_notification  �$ �!E�! E  � �  0 
event_info  �#  C ��������������������� 0 
event_info  � 0 appname appName� $0 notificationname notificationName� 
0 notifs  � 0 call_status  � 0 event_call_status  � 0 	call_type  � 0 event_call_type  � 0 event_call_id  � 0 event_caller_id  � 0 	direction  � 0 
thesummary 
theSummary� 0 thelocation theLocation� 0 	theperson 	thePerson� 0 theurl theURL� 0 thephone thePhone� 0 thecall theCall�  0 thedescription theDescription� 0 thetime theTime� 0 theduration theDurationD [ ( - C��
�	� B�� I U�� e� n� w� ��  ��� ��� ��� � ����� ��� ��� ��� ��� �������"������:<��L������h��k���������������������������������������������0��
� 
appl
�
 
anot
�	 
dnot
� 
iapp� 
� .registernull��� ��� null� 0 the_call_status  
� CSxxCSal
� CSxxCScl
� CSxxCSct
� CSxxCShd
�  CSxxCSwt
�� CSxxCSac
�� CSxxCSid
�� CSxxCSbs�� 0 the_call_type  
�� CTxxCTvc
�� CTxxCTda
�� CTxxCTfx
�� CTxxCTv2�� 0 the_cid  �� 0 the_phone_number  ��  ��  �� 0 formatnumber formatNumber�� 0 	getperson 	getPerson
�� 
msng
�� 
pnam
�� 
ID  �� 0 getphone getPhone
�� 
spac
�� 
az18�� 0 thecid theCID�� 0 thetype theType�� 0 	thenumber 	theNumber�� 0 thedirection theDirection�� 0 	starttime 	startTime
�� .misccurdldt    ��� null�� 0 answeredtime answeredTime�� 0 endtime endTime�� 0 	theperson 	thePerson�� 0 thelocation theLocation�� 
�� 
dscr
�� 
ret 
�� 
TEXT
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� 0 getcallrecord getCallRecord�� 0 englishtime englishTime�� $0 deletecallrecord deleteCallRecord�"J�E�O�E�O�kvE�O� *������ 	UO�Z�E�O��,E�O��  �E�Y q��  
a E�Y c�a   
a E�Y S�a   
a E�Y C�a   
a E�Y 3�a   
a E�Y #�a   
a E�Y �a   
a E�Y hOa E�O�a ,E�O�a   
a  E�Y 3�a !  
a "E�Y #�a #  
a $E�Y �a %  
a &E�Y hO�a ',E�Oa (E�O �a ),E�W X * +hOa ,a -lv�1�a .  
a /E�Y a 0E�Oa 1E�O*�k+ 2E�O*�k+ 3E�O�a 4  �a 5%E�Y Ga 6Z��a 7,%E�Oa 8�a 9,%E�O*��l+ :E�O�a 4 �_ ;%a <%�a =,%a >%E�Y hOa ?�a @�a A�a B�a C*j Da Ea 4a Fa 4a G�a H�a IE^ O] b   5GOa JE^ O�a 4 *a K,�%*a K,FY hO�a 4 *a K,_ L%�%a M&*a K,FY hO� *a N�a O�_ ;%a P%�a Q] � RUY �*�k+ SE^ O*j DE^ O�a T  _] a E,a 4  ] ] a E,FY hO� 9*a N�a O] a B,_ ;%a U%�a Q] a H,_ L%] a G,%a M&� RUY z�a V  q] ] a F,FO*] a F,] a E,k+ WE^ O� =*a N�a O] a B,_ ;%a X%�a Q] a H,_ L%a Y%_ ;%] %a M&� RUO*�k+ ZY h2 ��H����FG���� 0 getcallrecord getCallRecord�� ��H�� H  ���� 0 cid  ��  F ������ 0 cid  �� 0 acall aCallG ��������a��b
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 thecid theCID
�� 
spac�� 3 &b   [��l kh ��,�  �Y h[OY��O)j��%�%�%3 ��h����IJ���� $0 deletecallrecord deleteCallRecord�� ��K�� K  ���� 0 cid  ��  I �������� 0 cid  �� 0 newcalls newCalls�� 0 acall aCallJ ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 thecid theCID
�� 
pcnt�� 9jvE�O *b   [��l kh ��,� ��,�6GY h[OY��O�Ec   4 �������LM���� 0 logcall logCall�� ��N�� N  ���� 0 thecall theCall��  L 	�������������������� 0 thecall theCall�� 0 
thesummary 
theSummary�� 0 thelog theLog�� (0 logunansweredcalls logUnansweredCalls�� 0 thelocation theLocation�� 0 	theperson 	thePerson�� 0 theurl theURL�� 0 thephone thePhone�� $0 logcalendartitle logCalendarTitleM 4��������������������������� ��������F<��W����u��x����������������������������������� 0 thelog theLog�� 0 answeredtime answeredTime
�� 
msng�� 0 thedirection theDirection
�� 
spac
�� 
ret �� 0 endtime endTime�� 0 englishtime englishTime�� 0 thetype theType�� 0 	thenumber 	theNumber�� 0 formatnumber formatNumber�� 0 	getperson 	getPerson�� 0 shouldnotlog shouldNotLog
�� 
pnam
�� 
ID  �� 0 getphone getPhone
�� 
az18
�� 
kocl
�� 
wrev
�� 
insh�� 0 getcalendar getCalendar
�� 
prdt
�� 
wr11�� 0 
capitalize  
�� 
wr14
�� 
wr1s�� 0 	starttime 	startTime
�� 
wr5s
�� 
wr16
�� 
wr12�� �� 
�� .corecrel****      � null��n�E�O��,E�O��,�  &� hY hO��,�  
��%E�Y ��%E�Y ��%�%�%*��,��,k+ %�%E�O��,�  ��%�%E�Y !��,a   �a %�%E�Y �a %�%E�O��,a   �a %�%E�Y �a %�%E�O*�a ,k+ E�O*�a ,k+ E�O�E�O*�k+  hY hO��  �a %E�Y Ga Z��a ,%E�Oa �a ,%E�O*�a ,�l+ E�O�� ��%a  %�a !,%a "%E�Y hOa # C*a $a %a &)�k+ '6a (a ))�k+ *a +�a ,�a -,a .��,a /�a 0�a 1a 2 3U5 �������OP���� 0 getcalendar getCalendar�� ��Q�� Q  ���� 0 thetitle theTitle��  O ���� 0 thetitle theTitleP ���R����������~�}�|
�� 
wresR  
�� 
wr02
�� 
rslt
�� 
leng
�� 
cobj
� 
kocl
�~ 
prdt�} 
�| .corecrel****      � null�� 2� .*�-�[�,\Z�81EO��,j ��k/EY *����l� 
U6 �{��z�yST�x�{ 0 	getperson 	getPerson�z �wU�w U  �v�v 0 	thenumber 	theNumber�y  S �u�t�u 0 	thenumber 	theNumber�t 0 theuid theUIDT  I�s<�r�q�p�o�n
�s .seClLUabnull��� ��� obj 
�r 
azf4
�q kfrmID  �p  �o  
�n 
msng�x ) � 	�j E�UO� 	*��0EUW X  hO�7 �m��l�kVW�j�m 0 getphone getPhone�l �iX�i X  �h�g�h 0 	thenumber 	theNumber�g 0 	theperson 	thePerson�k  V �f�e�d�f 0 	thenumber 	theNumber�e 0 	theperson 	thePerson�d 0 aphone aPhoneW �c�b�a�`�_�^<�]�\�[�Z�Y�X�c 0 digitsof digitsOf
�b 
leng�a 
�` 
cha 
�_ 
bool
�^ 
ctxt
�] 
az20
�\ 
kocl
�[ 
cobj
�Z .corecnte****       ****
�Y 
az17
�X 
msng�j ^*�k+  E�O��,� 	 
��k/� �& �[�\[Zl\Z�2E�Y hO�Z )��-[��l kh )��,k+  � �Y h[OY��O�8 �W)�V�UYZ�T�W 0 ismember isMember�V �S[�S [  �R�Q�R 0 	theentity 	theEntity�Q 0 thegroup theGroup�U  Y �P�O�N�P 0 	theentity 	theEntity�O 0 thegroup theGroup�N 0 agroup aGroupZ <�M�L�K�J�I�H�G
�M 
azf5
�L 
kocl
�K 
cobj
�J .corecnte****       ****
�I 
pcnt�H 0 ismember isMember
�G 
bool�T 7�Z 0��-[��l kh ��,� 
 *��l+ �& eY h[OY��Of9 �FM�E�D\]�C�F 0 shouldnotlog shouldNotLog�E �B^�B ^  �A�A 0 	theperson 	thePerson�D  \ �@�?�>�@ 0 	theperson 	thePerson�? 0 loggroup logGroup�> 0 
nologgroup 
noLogGroup] �=<�<�;�:�9�8�7
�= 
msng
�< 
azf5
�; kfrmname�: 0 ismember isMember
�9 
bool�8  �7  �C j��  	��Y hO� T !��	 )�*��0l+ �& eY hW X  hO "��	 )�*��0l+ �& eY hW X  hUOf: �6��5�4_`�3�6 0 digitsof digitsOf�5 �2a�2 a  �1�1 0 	thestring 	theString�4  _ �0�/�.�-�0 0 	thestring 	theString�/ 0 validdigits validDigits�. 0 	newstring 	newString�- 0 adigit aDigit` ���,�+�*�)
�, 
cha 
�+ 
kocl
�* 
cobj
�) .corecnte****       ****�3 2�E�O�E�O %��-[��l kh �� 
��%E�Y h[OY��O�; �(��'�&bc�%�( 0 formatnumber formatNumber�' �$d�$ d  �#�# 0 	thenumber 	theNumber�&  b �"�" 0 	thenumber 	theNumberc �!� �������������! 0 digitsof digitsOf
�  
leng
� 
msng� 
� 
cha 
� 
bool
� 
spac
� 
ctxt� 0 formatnumber formatNumber� 
� � �% �*�k+  E�O��,j  �Y }��,� 	 
��k/� �& ��%*�[�\[Zl\Z�2k+ 
%Y R��,�  $�[�\[Zk\Zm2�%*�[�\[Z�\Z�2k+ 
%Y (��,�  �[�\[Zk\Zm2�%�[�\[Z�\Z�2%Y hO�< �%��ef�� 0 englishcount englishCount� �g� g  ��� 0 howmany howMany� 0 
unitstring 
unitString�  e ���� 0 howmany howMany� 0 
unitstring 
unitString� 0 	thestring 	theStringf ��
?
� 
spac
�
 
TEXT� ��%�%�&E�O�k 
��%E�Y hO�= �	I��hi��	 0 englishtime englishTime� �j� j  �� 0 
numseconds 
numSeconds�  h ��� 0 
numseconds 
numSeconds� 0 theelements theElementsi �b� ��}������������
� 
hour�  0 englishcount englishCount
�� 
min 
�� 
leng
�� 
bool
�� 
cobj
�� 
spac� �jvE�O�� *��"�l+ �6GO��#E�Y hO�� *��"�l+ �6GO��#E�Y hO�j
 	��,j �& *��l+ �6GY hO��,m  ��k/�%�%��l/%�%�%��m/%Y #��,l  ��k/�%�%�%��l/%Y ��k/E> �������kl���� 0 
capitalize  �� ��m�� m  ���� 0 	thestring 	theString��  k ������ 0 	thestring 	theString�� 	0 ascii  l �������� ������
�� 
leng
�� 
cha 
�� .sysoctonshor       TEXT
�� 
bool
�� .sysontocTEXT       shor
�� 
rest
�� 
TEXT�� P��,j E��k/j E�O��j 	 ��j �&  ��j �j j ��-�,�&%E�Y hY hO�ascr  ��ޭ