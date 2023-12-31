# MERU - Massive Episode Rename Utility

![MERU](https://kurotaku.de/assets/projects/meru)

I created this program to bulk rename episodes semi-automatic.<br>
The naming scheme this program generates is <br>
"Series - (Optional Season)Episode - Episodes name"

But why did I make just another program to bulk rename files?<br>
The Answer is: Because I wanted to keep it simple, other tools require mostly additional work like creating txt files with original file name and new file name and other various preparation.<br>
On this tool you just can copy all episode names from a site of your choice and rename all your new downloaded files in seconds.<br>


### Options / Instructions
When pressing start rename it searches by default only for this filetypes<br>
.mkv .avi .mpg .mp4 .wmv .mov .flv .sfw .m4v .rm<br>
If there is another filetype you have to select custom filetype and than only this filetype will be searched.

The programm starts with the first matching file, but if you want for example to start at episode 10 than enter start episode 10 and remove the hook at "First file is start episode" and the 10 matching file will be the startpoint.

When a episode contains symbols that windows can't use in filenames : ? / \ | " * < ><br>
than they will be replaced with this a bit similar looking ones ꞉ ？ ⧸ ⧹ ｜ ＂ ＊ ＜ ＞<br>
This can be disabled through a option.

The magnifier icon is a searches the series name on the german site fernsehserien.de since this was made for myself to get episodenames fast.

**Be carefull before renaming files, make sure that none of these is in use to prevent that an error occure!**

### If an error occurs the previous rename will not be undone!
## I do not give any guarantee if something does not go according to you plan if you dont feel sure create a testfolder with test txt files and try it out there

**The programm uses following Packages:**
- Costura.Fody 4.1.0
- Fody 6.0.0
- Infragistics.Themes.MetroDark.Wpf 1.0.0
