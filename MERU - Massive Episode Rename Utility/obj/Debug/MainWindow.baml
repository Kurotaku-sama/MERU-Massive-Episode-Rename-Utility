   M S B A M L   `   `   `  ����`  \MERU - Massive Episode Rename Utility, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MERUMERU  5   	       MERU.MainWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:MERU     5   	     � Title$E  ?MERU - Massive Episode Rename Utility [V1.2 - Made by Kurotaku]��5   	   $	��500��6Q   $	��800��6^   $	��800��6j   $	��500��6y   .��5	      � $	��790��6   $	��1,0q�6   ���	#FF272727.+�5
   
   �� $��Series name��6   $
��Left=�6&   $��6,17,0,0q�6A   $	��Top=�6S   �� 5   
   -   5         ��Name$ btnSearchOnline��5      $
��🔍��6*    � ToolTip$, &Search on fernsehserien.de this series��67   $
��Left=�6h   $��	94,52,0,0q�6�   $	��Top=�6�   $��40��6�   $��26��6�   $
��Bold"�6�   6�   �� 5   
   $��Start episode��6   $
��Left=�6(   $��
429,19,0,0q�6C   $	��Top=�6W   �� 5   
   $��Episode number length��6   $
��Left=�60   $��
583,19,0,0q�6K   $	��Top=�6_   �� 5   
   $1��+Path (all files in this directory are used)��6   $
��Left=�6F   $��
10,146,0,0q�6a   $	��Top=�6u   $��26��6�   �� 5   
   $'��!Text before episode number (S02E)��6   $
��Left=�6<   $��248,180,0,0q�6W   $	��Top=�6l   �� 5   
   $��Episode names:
��6   $
��Left=�6.   $��
10,179,0,0q�6I   $	��Top=�6]   $��26��6u   �� 5   
   -   5         ��Name$ tbSeriesname��5      $
��Left=�6(   $��23��6C   $��	94,17,0,0q�6O    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $	��330��6�   6�   �� 5   
   -   5        $ tbStartepisode��5      $
��Left=�6*   $��23��6E   $��
521,17,0,0q�6Q   $
 Wrap=�6e   $��1��6y   $	��Top=�6�   $��58��6�   $��Center=�6�   $��Center=�6�   6�   �� 5   
   -   5        $ tbNumbersize��5      $
��Left=�6(   $��23��6C   $��
738,17,0,0q�6O   $
 Wrap=�6c   $��2��6w   $	��Top=�6�   $��42��6�   $��Center=�6�   $��Center=�6�   6�   �� 5   
   -   5         ��Name$ cbUsefirstfile��5      $!��First file is start episode��6+   $� �If checked it always start with first matching file in the directory, else it uses the file which is matching the start episode number��6Q   $
��Left=�6�   $��
433,52,0,0q�6�   $	��Top=�6   d� 	IsChecked$
 TrueY�6)  �� 5   
   -   5        $ cbReplaceSpecialChars��5      $(��"Use alternative special characters��62   $` ZReplace special characters with similar looking characters that are allowed by the most OS��6_   $
��Left=�6�   $��433,82,-11,0q�6�   $	��Top=�6�   $	��368��6  $��20��6   J� RenderTransformOrigin$ 1.159,-0.144&�6E  $
 TrueY�6j  �� 5   
   -   5        $ tbType��5      $
��Left=�6"   $��23��6=   $��581,108,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $��58��6�   $	��???��6�   {�.  $��Center=�6�   $��Center=�6�   $y�Hidden=�6�   6  �� 5   
   -   5        $ 	cbOwnType��5      $��Custom filetype��6&   $< 6If not checked, it uses every media file in the folder��6@   $
��Left=�6�   $��433,112,0,0q�6�   $	��Top=�6�   $	��143��6�   $��20��6�   6  �� 5   
   -	   5        $ tbPath��5      $
��Left=�6"   $��23��6=   $��248,144,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $	��532��6�   $��10(�6�   6�   �� 5   
   -
   5        $ tbBeforeEpisode��5      $
��Left=�6+   $��23��6F   $��465,179,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $	��109��6�   $��Center=�6�   $��Center=�6�   6�   �� 5    
   -   5        $ tbEpisodenames��5       $��10,214,10,10q�6*   $
 Wrap=�6@    �� AcceptsReturn . "	 �� VerticalScrollBarVisibility$
	 Auto=�6i   $
 �� HorizontalScrollBarVisibility$
 Visible=�6�   $��Stretch=�6�   $��9(�6�   �� 5"   
   -   5        $ btnStart��5"      $��START RENAME��6#   $
��Left=�6:   $��650,179,0,0q�6U   $	��Top=�6j   $	��130��6�   $��26��6�   $
��Bold"�6�   6�   5#      5$      