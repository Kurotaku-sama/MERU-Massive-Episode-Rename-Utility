   M S B A M L   `   `   `  ���� `  \MERU - Massive Episode Rename Utility, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MERUMERU      MERU.MainWindow   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:MERU       � Title$E  ?MERU - Massive Episode Rename Utility [V1.2 - Made by Kurotaku]��$	��500��$	��800��$	��800��$	��500��.��� $	��790��$	��1,0q����	#FF272727.+��� $��Series name��$
��Left=�$��6,17,0,0q�$	��Top=��� -    ��Name$ btnSearchOnline��$
��🔍�� � ToolTip$, &Search on fernsehserien.de this series��$
��Left=�$��	94,52,0,0q�$	��Top=�$��40��$��26��$
��Bold"��� $��Start episode��$
��Left=�$��
429,19,0,0q�$	��Top=��� $��Episode number length��$
��Left=�$��
583,19,0,0q�$	��Top=��� $1��+Path (all files in this directory are used)��$
��Left=�$��
10,146,0,0q�$	��Top=�$��26���� $'��!Text before episode number (S02E)��$
��Left=�$��248,180,0,0q�$	��Top=��� $��Episode names:
��$
��Left=�$��
10,179,0,0q�$	��Top=�$��26���� -    ��Name$ tbSeriesname��$
��Left=�$��23��$��	94,17,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��330���� -   $ tbStartepisode��$
��Left=�$��23��$��
521,17,0,0q�$
 Wrap=�$��1��$	��Top=�$��58��$��Center=�$��Center=��� -   $ tbNumbersize��$
��Left=�$��23��$��
738,17,0,0q�$
 Wrap=�$��2��$	��Top=�$��42��$��Center=�$��Center=��� -    ��Name$ cbUsefirstfile��$!��First file is start episode��$� �If checked it always start with first matching file in the directory, else it uses the file which is matching the start episode number��$
��Left=�$��
433,52,0,0q�$	��Top=� d� 	IsChecked$
 TrueY��� -   $ cbReplaceSpecialChars��$(��"Use alternative special characters��$` ZReplace special characters with similar looking characters that are allowed by the most OS��$
��Left=�$��433,82,-11,0q�$	��Top=�$	��368��$��20�� J� RenderTransformOrigin$ 1.159,-0.144&�$
 TrueY��� -   $ tbType��$
��Left=�$��23��$��581,108,0,0q�$
 Wrap=�$	��Top=�$��58��$	��???��{�.  $��Center=�$��Center=�$y�Hidden=��� -   $ 	cbOwnType��$��Custom filetype��$< 6If not checked, it uses every media file in the folder��$
��Left=�$��433,112,0,0q�$	��Top=�$	��143��$��20���� -	   $ tbPath��$
��Left=�$��23��$��248,144,0,0q�$
 Wrap=�$	��Top=�$	��532��$��10(��� -
   $ tbBeforeEpisode��$
��Left=�$��23��$��465,179,0,0q�$
 Wrap=�$	��Top=�$	��109��$��Center=�$��Center=��� -   $ tbEpisodenames��$��10,214,10,10q�$
 Wrap=� �� AcceptsReturn . "	 �� VerticalScrollBarVisibility$
	 Auto=�$
 �� HorizontalScrollBarVisibility$
 Visible=�$��Stretch=�$��9(��� -   $ btnStart��$��START RENAME��$
��Left=�$��650,179,0,0q�$	��Top=�$	��130��$��26��$
��Bold"�