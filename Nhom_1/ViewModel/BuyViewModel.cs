using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nhom_1.ViewModel
{
    internal class BuyViewModel:ViewModelBase
    {
        private decimal _totalAmount;
        private bool _isQrVisible ;
        public decimal TotalAmount
        {
            get { return _totalAmount; }
            set
            {
                _totalAmount = value;
                OnPropertyChanged(nameof(TotalAmount));
            }
        }
        public bool IsQrVisible
        {
            get { return _isQrVisible; }
            set
            {
                _isQrVisible = value;
                OnPropertyChanged(nameof(IsQrVisible));
            }
        }
        public BuyViewModel()
        {
            TotalAmount = 12345.67M;
        }
    }
}
