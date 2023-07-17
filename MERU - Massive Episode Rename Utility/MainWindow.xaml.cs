using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MERU
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private String BuildName(int current_episode)
        {
            String episode;
            episode = (current_episode).ToString();

            // Append as many zeros until the number of digits is reached.
            while (episode.Length != Convert.ToInt32(tbNumbersize.Text))
                episode = "0" + episode;

            String seriesname = tbSeriesname.Text.Trim();
            seriesname = cbReplaceSpecialChars.IsChecked == true ? ReplaceSpecialChars(seriesname) : RemoveSpecialChars(seriesname);

            String beforeepisode = tbBeforeEpisode.Text.TrimStart();
            beforeepisode = cbReplaceSpecialChars.IsChecked == true ? ReplaceSpecialChars(beforeepisode) : RemoveSpecialChars(beforeepisode);

            String episodename = tbEpisodenames.GetLineText(current_episode-1 - (Convert.ToInt32(tbStartepisode.Text) - 1));
            episodename = episodename.Contains("\r\n") ? episodename.Remove(episodename.Length - 2).Trim() : episodename.Trim();            
            episodename = cbReplaceSpecialChars.IsChecked == true ? ReplaceSpecialChars(episodename) : RemoveSpecialChars(episodename);

            return $"{seriesname} - {beforeepisode}{episode} - {episodename}";
        }


        private void BtnStart_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbSeriesname.Text.Trim().Equals(""))
                    throw new Exception("Series name is empty");
                else if (tbStartepisode.Text.Trim().Equals(""))
                    throw new Exception("Startepisode is empty");
                else if (tbNumbersize.Text.Trim().Equals(""))
                    throw new Exception("Episode number length is empty");
                else if(tbType.Text.Trim().Equals("") && cbOwnType.IsChecked == true)
                    throw new Exception("Own filetype is empty");
                else if (tbPath.Text.Trim().Equals(""))
                    throw new Exception("Path is empty");
                else if (tbEpisodenames.Text.Trim().Equals(""))
                    throw new Exception("Episode names field is empty");

                // Get Path and filetype
                String path = tbPath.Text.Trim() + "\\";
                String type = tbType.Text.Trim();

                DirectoryInfo d = new DirectoryInfo(path);
                FileInfo[] files;

                // Get files
                if (cbOwnType.IsChecked == true)
                    files = d.GetFiles($"*.{type}");
                else
                {
                    FileInfo[] all_files = d.GetFiles();
                    List<FileInfo> required_files = new List<FileInfo>();

                    foreach (FileInfo fi in all_files)
                        if (fi.Extension.ToLower().Equals(".mkv") || fi.Extension.ToLower().Equals(".avi") || fi.Extension.ToLower().Equals(".mpg") ||
                            fi.Extension.ToLower().Equals(".mp4") || fi.Extension.ToLower().Equals(".wmv") || fi.Extension.ToLower().Equals(".mov") ||
                            fi.Extension.ToLower().Equals(".flv") || fi.Extension.ToLower().Equals(".sfw") || fi.Extension.ToLower().Equals(".m4v") ||
                            fi.Extension.ToLower().Equals(".rm"))
                            required_files.Add(fi);

                    files = new FileInfo[required_files.Count];

                    Int32 i = 0;
                    foreach (FileInfo fi in required_files)
                    {
                        files[i] = fi;
                        i++;
                    }
                }
                
                Array.Sort(files, (f1, f2) => f1.Name.CompareTo(f2.Name));

                Boolean? rename_from_first_file = cbUsefirstfile.IsChecked;

                Int32 amount_files = files.Count();
                tbEpisodenames.Text = Regex.Replace(tbEpisodenames.Text, @"^\s+$[\r\n]*", string.Empty, RegexOptions.Multiline).Trim(); // Remove all empty lines
                Int32 amount_lines = tbEpisodenames.LineCount;

                Int32 current_file = amount_files - amount_lines;
                Int32 current_episode = Convert.ToInt32(tbStartepisode.Text);
                Int32 amount_files_to_rename = rename_from_first_file==true ? files.Count() : amount_files - current_file;

                if (amount_files_to_rename == amount_lines) // If the number of files to be processed is as large as the number of names for the files
                {
                    for (int i = 0; i < amount_files_to_rename; i++)
                    {
                        String buildname;
                        buildname = $"{BuildName(current_episode)}{files[i].Extension}";

                        if (cbUsefirstfile.IsChecked == true && amount_files == tbEpisodenames.LineCount)
                            File.Move(files[i].FullName, path + buildname);
                        else if (cbUsefirstfile.IsChecked == false)
                            File.Move(files[current_file].FullName, path + buildname);
                        else
                            throw new Exception("Error at renaming function");

                        current_episode++;
                        current_file++;
                    }
                    MessageBoxWindow.Show("Done");
                }
                else
                    throw new Exception($"Amount of episode names doesn't match the amount of files");
            }
            catch (Exception r)
            {
                MessageBoxWindow.Show(r.Message);
            }

        }

        private String ReplaceSpecialChars(String str)
        {
            str = str.Replace(":", "꞉");
            str = str.Replace("?", "？");
            str = str.Replace("/", "⧸");
            str = str.Replace("\\", "⧹");
            str = str.Replace("|", "｜");
            str = str.Replace("\"", "＂");
            str = str.Replace("*", "＊");
            str = str.Replace("<", "＜");
            str = str.Replace(">", "＞");

            return str;
        }

        private String RemoveSpecialChars(String str)
        {
            str = str.Replace(":", "");
            str = str.Replace("?", "");
            str = str.Replace("/", "");
            str = str.Replace("\\", "");
            str = str.Replace("|", "");
            str = str.Replace("\"", "");
            str = str.Replace("*", "");
            str = str.Replace("<", "");
            str = str.Replace(">", "");

            return str;
        }

        private void btnSearchOnline_Click(object sender, RoutedEventArgs e)
        {
            String url = $"www.fernsehserien.de/suche/{tbSeriesname.Text.Replace(" ", "-")}";
            Process.Start(url);
        }

        private void cbOwnType_Unchecked(object sender, RoutedEventArgs e)
        {
            try
            {
                tbType.IsEnabled = false;
                tbType.Visibility = Visibility.Hidden;
            }
            catch { }
        }

        private void cbOwnType_Checked(object sender, RoutedEventArgs e)
        {
            try
            {
                tbType.IsEnabled = true;
                tbType.Visibility = Visibility.Visible;
            }
            catch { }
        }

        private void tb_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox s = (TextBox)sender;
            s.SelectAll();
        }
    }
}
