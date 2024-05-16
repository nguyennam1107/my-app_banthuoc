using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Drawing;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using FontAwesome.Sharp;
using Nhom_1.Model;
using Nhom_1.View;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Window;
using GalaSoft.MvvmLight.Messaging;
using static Nhom_1.ViewModel.MainViewModel;
using System.Threading;
namespace Nhom_1.ViewModel
{
    class HomeViewModel : ViewModelBase
    {
        public ObservableCollection<Thuoc> ListProducts { get; set; }
        public ICommand ClosePopupCommand { get; }
        public ICommand BuyCommand { get; }
        public ICommand AddToCartCommand {  get; }
        private bool _isPopupVisible =false;
        private Thuoc _selectedProduct=new Thuoc();
        
        private void ExecuteShowBuyViewCommand(object obj)
        {
            IsPopupVisible=false;
            Messenger.Default.Send(new ChangeChildViewMessage(typeof(BuyViewModel)));
        }
        public bool IsPopupVisible
        {
            get { return _isPopupVisible; }
            set
            {
                _isPopupVisible = value;
                OnPropertyChanged(nameof(IsPopupVisible));
            }
        }
        public Thuoc SelectedProduct
        {
            get
            {
                return _selectedProduct;
            }
            set
            {
                if (SelectedProduct != value)
                {
                    _selectedProduct = value;
                    OnPropertyChanged(nameof(SelectedProduct));
                    IsPopupVisible = true;
                }
            }
        }
        private void AddToCart(object obj)
        {
            TaiKhoan taiKhoan = DataProvider.Instance.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
            var order = new Order
            {
                ProductID = SelectedProduct.IdThuoc,
                TaiKhoanID = taiKhoan.IdTaiKhoan,
                Quantity = null,
                OrderDate = DateTime.Now,
            };
           DataProvider.Instance.AddOrder(order);
        }
        private void ClosePopup(object obj)
        {
            IsPopupVisible = false;
        }
        public HomeViewModel() {
            List<Thuoc> listThuocs = DataProvider.Instance.DB.Thuocs.ToList();
            ListProducts= new ObservableCollection<Thuoc>(listThuocs);
            ClosePopupCommand = new ViewModelCommand(ClosePopup);
            BuyCommand = new ViewModelCommand(ExecuteShowBuyViewCommand);
            AddToCartCommand = new ViewModelCommand(AddToCart);
        }
    }
}


