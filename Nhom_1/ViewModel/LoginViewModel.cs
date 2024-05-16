using System.Net;
using System.Security.Principal;
using System.Security;
using System.Windows.Input;
using System.Threading;
using Nhom_1.Model;
using Nhom_1.ViewModel;
namespace Nhom_1.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        private string _username;
        private SecureString _password;
        private string _errorMessage;
        private bool _isViewVisible = true;
        public ICommand LoginCommand { get; }
        public LoginViewModel()
        {
            LoginCommand = new ViewModelCommand(Check_Login, Check_Login_Data);
            // RecoverPasswordCommand = new ViewModelCommand(p => QuenMatKhau("", ""));
        }
        public string Username
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
        public SecureString Password
        {
            get
            {
                return _password;
            }

            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {
            get
            {
                return _errorMessage;
            }

            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible
        {
            get
            {
                return _isViewVisible;
            }

            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }

        private bool Check_Login_Data(object obj)
        {
            bool checkData;
            if (string.IsNullOrWhiteSpace(Username) || Username.Length < 3 ||
                Password == null || Password.Length < 3)
                checkData = false;
            else
                checkData = true;
            return checkData;
        }
        private void Check_Login(object obj)
        {
            DataProvider dataProvider = new DataProvider();
            var isValidUser = dataProvider.KiemtraUser(new NetworkCredential(Username, Password));
            if (isValidUser)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(
                 new GenericIdentity(Username), null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "* Tài khoản hoặc mật khẩu không chính xác";
            }
        }

    }
}
