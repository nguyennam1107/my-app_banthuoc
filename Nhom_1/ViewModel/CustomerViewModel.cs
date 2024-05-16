using GalaSoft.MvvmLight.Messaging;
using Nhom_1.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using static Nhom_1.ViewModel.MainViewModel;
namespace Nhom_1.ViewModel
{
    class CustomerViewModel : ViewModelBase
    {
        public ObservableCollection<Thuoc> ListProducts { get; set; }
        public ICommand SearchCommand { get; }
        public ICommand ClosePopupCommand { get; }
        public ICommand BuyCommand { get; }
        public ICommand AddToCartCommand { get; }
        private bool _isPopupVisible = false;
        private string _searchText;
        private Thuoc _selectedProduct=new Thuoc();
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
        public string SearchText
        {
            get { return _searchText; }
            set
            {
                    _searchText = value;
                    OnPropertyChanged(nameof(SearchText));
                    UpdateFilteredProducts();
                
            }
        }

        private void ClosePopup(object obj)
        {
            IsPopupVisible = false;
        }
        private void tímanpham(object obj)
        {
            if (SearchText == null)
            {
                FilteredProducts = new ObservableCollection<Thuoc>(ListProducts);
            }
            else
            {
                FilteredProducts = new ObservableCollection<Thuoc>(DataProvider.Instance.GetByProductName(SearchText));
            }
        }
        private void UpdateFilteredProducts()
        {
            FilteredProducts = new ObservableCollection<Thuoc>(DataProvider.Instance.GetByProductName(SearchText));
        }
        private ObservableCollection<Thuoc> _filteredProducts;
        public ObservableCollection<Thuoc> FilteredProducts
        {
            get { return _filteredProducts; }
            set
            {
                _filteredProducts = value;
                OnPropertyChanged(nameof(FilteredProducts));
            }
        }
        private void ExecuteShowBuyViewCommand(object obj)
        {
            IsPopupVisible = false;
            Messenger.Default.Send(new ChangeChildViewMessage(typeof(BuyViewModel)));
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
        public CustomerViewModel()
        {  
            List<Thuoc> listThuocs = DataProvider.Instance.DB.Thuocs.ToList();
            ListProducts = new ObservableCollection<Thuoc>(listThuocs);
            FilteredProducts = new ObservableCollection<Thuoc>(ListProducts);
            SearchCommand = new ViewModelCommand(tímanpham);
            ClosePopupCommand = new ViewModelCommand(ClosePopup);
            BuyCommand = new ViewModelCommand(ExecuteShowBuyViewCommand);
            AddToCartCommand = new ViewModelCommand(AddToCart);
            IsPopupVisible = false;
        }
    }
       
}
