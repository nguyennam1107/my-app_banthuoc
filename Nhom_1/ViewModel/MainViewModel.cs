using GalaSoft.MvvmLight;
using FontAwesome.Sharp;
using System.Windows.Input;
using System.Threading;
using Nhom_1.Model;
using System;
using GalaSoft.MvvmLight.Messaging;
using System.Windows.Forms;
using static Nhom_1.ViewModel.MainViewModel;
using System.Windows.Data;
using System.Windows;

namespace Nhom_1.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        private ViewModelBase _currentChildView;
        private string _caption;
        private IconChar _icon;
        private TaiKhoan _currentUserAccount;

        public class ChangeChildViewMessage
        {
            public Type ChildViewModelType { get; }

            public ChangeChildViewMessage(Type childViewModelType)
            {
                ChildViewModelType = childViewModelType;
            }
        }
        public ViewModelBase CurrentChildView
        {
            get { return _currentChildView; }
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }
        public string Caption
        {
            get { return _caption; }
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }

        public IconChar Icon
        {
            get { return _icon; }
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }

        public TaiKhoan CurrentUserAccount
        {
            get { return _currentUserAccount; }
            set
            {
                _currentUserAccount = value;
                OnPropertyChanged(nameof(CurrentUserAccount));
            }
        }

        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowCustomerViewCommand { get; }
        public ICommand ShowDashBoardViewCommand { get; }
        public ICommand ShowOderViewCommand { get; }
        public ICommand BuyCommand { get; }
        public ICommand ShowSettingViewCommand { get; }
        public MainViewModel()
        {
            CurrentUserAccount = new TaiKhoan();
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowCustomerViewCommand = new ViewModelCommand(ExecuteShowCustomerViewCommand);
            ShowDashBoardViewCommand = new ViewModelCommand(ExecuteShowDashBoardViewCommand);
            ShowOderViewCommand = new ViewModelCommand(ExecuteShowOderViewCommand);
            ShowSettingViewCommand = new ViewModelCommand(ExecuteShowSettngViewCommand);
            BuyCommand = new ViewModelCommand(ExecuteShowBuyViewCommand);
            ExecuteShowHomeViewCommand(null);
            LoadCurrentUserData();

            // Đăng ký để nhận thông điệp từ HomeViewModel
            Messenger.Default.Register<ChangeChildViewMessage>(this, message =>
            {
                // Xử lý thông điệp và thực hiện thay đổi child của MainView
                if (message.ChildViewModelType == typeof(BuyViewModel))
                {
                    CurrentChildView = new BuyViewModel();
                    Caption = "Giao Dịch";
                    Icon = IconChar.CreditCard;
                }
            });
        }

        private void ExecuteShowCustomerViewCommand(object obj)
        {
            CurrentChildView = new CustomerViewModel();
            Caption = "Tìm Kiếm";
            Icon = IconChar.UserGroup;
        }

        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Trang Chủ";
            Icon = IconChar.Home;
        }

        private void ExecuteShowDashBoardViewCommand(object obj)
        {
            CurrentChildView = new DashBoardViewModel();
            Caption = "DashBoard";
            Icon = IconChar.ChartLine;
        }

        private void ExecuteShowOderViewCommand(object obj)
        {
            CurrentChildView = new OderViewModel();
            Caption = "Giỏ Hàng";
            Icon = IconChar.BagShopping;
        }

        private void ExecuteShowBuyViewCommand(object obj)
        {
            CurrentChildView = new BuyViewModel();
            Caption = "Giao Dịch";
            Icon = IconChar.CreditCard;
        }
        private void ExecuteShowSettngViewCommand(object obj)
        {
            CurrentChildView = new SettingViewModel();
            Caption = "Cài Đặt";
            Icon = IconChar.Gear;
        }
        private void LoadCurrentUserData()
        {
            try
            {
                TaiKhoan user = DataProvider.Instance.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
                if (user != null)
                {
                    CurrentUserAccount.TenDangNhap = user.TenDangNhap;
                    CurrentUserAccount.TenHienThi = $"Welcome {user.TenHienThi}";
                }
                else
                {
                    CurrentUserAccount.TenDangNhap = "";
                    CurrentUserAccount.TenHienThi = "Invalid user, not logged in";
                }
            }
            catch (Exception ex)
            {
                CurrentUserAccount.TenDangNhap = "";
                CurrentUserAccount.TenHienThi = "Error loading user data";
            }
        }
        public class BoolToSidebarWidthConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
            {
                return (bool)value ? 200 : 50; // Sidebar width when expanded and collapsed
            }

            public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }
        public class BoolToVisibilityConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
            {
                return (bool)value ? Visibility.Visible : Visibility.Collapsed;
            }

            public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }

    }
}
