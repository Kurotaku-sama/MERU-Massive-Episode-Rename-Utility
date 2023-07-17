# MERU - Massive Episode Rename Utility

![MERU](https://kurotaku.de/assets/projects/meru)

I created this programm to bulk rename episodes semi-automatic.
The naming scheme this program generates is "Series - (Optional Season)Episode - Episodes name"

When pressing start rename it searches by default only for this filetypes
.mkv .avi .mpg .mp4 .wmv .mov .flv .sfw .m4v .rm
If there is another filetype you have to select custom filetype and than only this filetype will be searched.

The programm starts with the first matching file, but if you want for example to start at episode 10 than enter start episode 10 and remove the hook at "First file is start episode" and the 10 matching file will be the startpoint.

When a episode contains symbols that windows can't use in filenames : ? / \ | " * < >
than they will be replaced with this a bit similar looking ones ꞉ ？ ⧸ ⧹ ｜ ＂ ＊ ＜ ＞
This can be disabled through a option.

The magnifier icon is a searches the series name on the german site fernsehserien.de since this was made for myself to get episodenames fast.

Be carefull before renaming files, make sure that none of these is in use to prevent that an error occure!

### If an error occurs the previous rename will not be undone
## I do not give any guarantee if something does not go according to you plan if you dont feel sure create a testfolder with test txt files and try it out there
