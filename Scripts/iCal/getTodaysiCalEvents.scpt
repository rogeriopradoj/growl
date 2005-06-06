FasdUAS 1.101.10   ��   ��    k             l     �� ��    Q K	An applescript that shows today's events from iCal as growl notifications.       	  l     �� 
��   
 a [	The script shows how to register and use multiple types of notifications from Applescript:    	     l     ������  ��        l     �� ��     		"Today's Events"         l     �� ��     			and         l     �� ��    ! 		"In-Script Notifications"         l     �� ��    D >			are the two notification types that this script registers.          l     �� ��    @ : 			The types of notification are separated functionally.          l     �� ��    | v 			So the user can disable the first informational note from the prefpane without disabling the main notifications.            l     �� !��   ! t n--------------------------------------------------------------------------------------------------------------       " # " l     �� $��   $ t n--------------------------------------------------------------------------------------------------------------    #  % & % l     ������  ��   &  ' ( ' l     ������  ��   (  ) * ) l     �� +��   + A ;	Register with growl and show the "gathering" notification.    *  , - , l     .�� . r      / 0 / J      1 1  2 3 2 m      4 4  Today's Events    3  5�� 5 m     6 6  In-Script Notification   ��   0 o      ����  0 myallnoteslist myAllNotesList��   -  7 8 7 l   
 9�� 9 r    
 : ; : m     < < - 'AppleScript iCal today's Event Notifier    ; o      ���� 0 appname appName��   8  = > = l    ?�� ? O    @ A @ l 	   B�� B I   ���� C
�� .registernull��� ��� null��   C �� D E
�� 
appl D o    ���� 0 appname appName E �� F G
�� 
anot F o    ����  0 myallnoteslist myAllNotesList G �� H I
�� 
dnot H o    ����  0 myallnoteslist myAllNotesList I �� J��
�� 
iapp J m     K K 
 iCal   ��  ��   A m     L L2null     ߀�� L�GrowlHelperApp.appP��(���`    z@   )       ��(�|���ː{GRRR   alis    �  Macintosh HD               �g�H+   L�GrowlHelperApp.app                                              L��ȞV        ����  	                	Resources     �f��      �Ȃ6     L� L�  L�� D  D  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��   >  M N M l     ������  ��   N  O P O l   % Q�� Q r    % R S R I   #������
�� .misccurdldt    ��� null��  ��   S o      ���� 0 now  ��   P  T U T l  & / V�� V r   & / W X W \   & + Y Z Y o   & '���� 0 now   Z l  ' * [�� [ n   ' * \ ] \ 1   ( *��
�� 
time ] o   ' (���� 0 now  ��   X o      ���� 0 thismorning thisMorning��   U  ^ _ ^ l  0 ? `�� ` r   0 ? a b a \   0 ; c d c [   0 9 e f e o   0 3���� 0 thismorning thisMorning f ]   3 8 g h g m   3 4����  h 1   4 7��
�� 
days d m   9 :����  b o      ���� 0 thisevening thisEvening��   _  i j i l  @ E k�� k r   @ E l m l m   @ A��
�� boovfals m o      ���� 0 foundone foundOne��   j  n o n l     ������  ��   o  p q p l  FE r�� r O   FE s t s k   LD u u  v w v l  L L�� x��   x Z T	Catch events that start today or that started before today, but have not yet ended.    w  y�� y X   LD z�� { z X   d? |�� } | k   �: ~ ~   �  r   � � � � � m   � ���
�� boovtrue � o      ���� 0 foundone foundOne �  � � � O   � � � � k   � � �  � � � r   � � � � � 1   � ���
�� 
wr1s � o      ���� 0 thedate theDate �  � � � Q   � � � � � � r   � � � � � l  � � ��� � b   � � � � � b   � � � � � 1   � ���
�� 
wr11 � m   � � � � 	  -     � n   � � � � � 1   � ���
�� 
tstr � o   � ����� 0 thedate theDate��   � o      ���� "0 theeventsummary theEventSummary � R      ������
�� .ascrerr ****      � ****��  ��   � r   � � � � � b   � � � � � m   � � � �  no summary -     � n   � � � � � 1   � ���
�� 
tstr � o   � ����� 0 thedate theDate � o      ���� "0 theeventsummary theEventSummary �  � � � l  � �������  ��   �  ��� � Q   � � � � � k   � � �  � � � r   � � � � 1   � ���
�� 
wr12 � o      ���� *0 theeventdescription theEventDescription �  ��� � I �� ���
�� .ascrcmnt****      � **** � o  ���� *0 theeventdescription theEventDescription��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � r   � � � m   � �  no description    � o      ���� *0 theeventdescription theEventDescription��   � o   � ����� 0 	thisevent 	thisEvent �  � � � l ������  ��   �  ��� � O : � � � l 	 9 ��� � I  9���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m  $' � �  Today's Events    � �� � �
�� 
titl � o  *-���� "0 theeventsummary theEventSummary � �� � �
�� 
desc � o  03���� *0 theeventdescription theEventDescription � �� ���
�� 
appl � o  45���� 0 appname appName��  ��   � m   L��  �� 0 	thisevent 	thisEvent } l  g � ��� � 6  g � � � � l  g l ��� � n   g l � � � 2   h l��
�� 
wrev � o   g h���� 0 thiscalendar thisCalendar��   � l  o � ��� � G   o � � � � l  p � ��� � F   p � � � � @   q | � � � 1   r v��
�� 
wr1s � o   w {���� 0 thismorning thisMorning � B   } � � � � 1   ~ ���
�� 
wr1s � o   � ����� 0 thisevening thisEvening��   � l  � � ��� � F   � � � � � @   � � � � � 1   � ���
�� 
wr5s � o   � ����� 0 now   � B   � � � � � 1   � ���
�� 
wr1s � o   � ����� 0 thismorning thisMorning��  ��  ��  �� 0 thiscalendar thisCalendar { 2  O T��
�� 
wres��   t m   F I � ��null     ߀��  iiCal.app����@    �P<��(���`   z@   )       ��(�|���ː{wrbt   alis    D  Macintosh HD               �g�H+    iiCal.app                                                        ��?Y�        ����  	                Applications    �f��      �?K�      i  "Macintosh HD:Applications:iCal.app    i C a l . a p p    M a c i n t o s h   H D  Applications/iCal.app   / ��  ��   q  � � � l     ������  ��   �  � � � l Fo ��� � Z Fo � ����� � H  FJ � � o  FI�� 0 foundone foundOne � O Mk � � � l 	Qj ��~ � I Qj�}�| �
�} .notifygrnull��� ��� null�|   � �{ � �
�{ 
name � m  UX � �  In-Script Notification    � �z � �
�z 
titl � m  [^ � �  No iCal events today    � �y � �
�y 
desc � m  ad � �  Go outside and play!    � �x ��w
�x 
appl � o  ef�v�v 0 appname appName�w  �~   � m  MN L��  ��  ��   �  ��u � l     �t�s�t  �s  �u       �r � ��r   � �q
�q .aevtoappnull  �   � **** � �p ��o�n � ��m
�p .aevtoappnull  �   � **** � k    o � �  , � �  7 � �  = � �  O � �  T � �  ^ � �  i � �  p � �  ��l�l  �o  �n   � �k�j�k 0 thiscalendar thisCalendar�j 0 	thisevent 	thisEvent � 1 4 6�i <�h L�g�f�e�d K�c�b�a�`�_�^�]�\�[ ��Z�Y�X�W�V ��U�T�S�R ��Q�P�O�N ��M�L�K ��J ��I�H�G � � ��i  0 myallnoteslist myAllNotesList�h 0 appname appName
�g 
appl
�f 
anot
�e 
dnot
�d 
iapp�c 
�b .registernull��� ��� null
�a .misccurdldt    ��� null�` 0 now  
�_ 
time�^ 0 thismorning thisMorning
�] 
days�\ 0 thisevening thisEvening�[ 0 foundone foundOne
�Z 
wres
�Y 
kocl
�X 
cobj
�W .corecnte****       ****
�V 
wrev �  
�U 
wr1s
�T 
wr5s�S 0 thedate theDate
�R 
wr11
�Q 
tstr�P "0 theeventsummary theEventSummary�O  �N  
�M 
wr12�L *0 theeventdescription theEventDescription
�K .ascrcmnt****      � ****
�J 
name
�I 
titl
�H 
desc
�G .notifygrnull��� ��� null�mp��lvE�O�E�O� *��������� UO*j E�O���,E` O_ k_  kE` OfE` Oa  � �*a -[a a l kh   ڠa -a [[[a ,\Z_ ;\[a ,\Z_ =A\[[a ,\Z�;\[a ,\Z_ =AB1[a a l kh eE` O� _*a ,E` O *a ,a %_ a  ,%E` !W X " #a $_ a  ,%E` !O *a %,E` &O_ &j 'W X " #a (E` &UO� *a )a *a +_ !a ,_ &��� -U[OY�s[OY�UO_  #� *a )a .a +a /a ,a 0��� -UY hascr  ��ޭ