﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Nhom_1.View
{
    /// <summary>
    /// Interaction logic for BuyView.xaml
    /// </summary>
    public partial class BuyView : UserControl
    {
        public BuyView()
        {
            InitializeComponent();
        }
        private void GenerateQRCode_Click(object sender, RoutedEventArgs e)
        {
            QRCodeImage.Visibility = Visibility.Visible;
        }
    }
}
