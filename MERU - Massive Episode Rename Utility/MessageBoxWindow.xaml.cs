using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace MERU
{ 
    public partial class MessageBoxWindow
    {
        private MessageBoxWindow(String text, String title = "", String btnoktext = "OK")
        {
            InitializeComponent();
            Title = title;
            tbContent.Text = text;
            btnOK.Content = btnoktext;
        }

        private void BtnOK_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        public static void Show(String text, String title = "", String btnoktext = "OK")
        {
            MessageBoxWindow mbw = new MessageBoxWindow(text, title = "", btnoktext = "OK");
            mbw.ShowDialog();
        }
    }
}
