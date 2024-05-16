using Nhom_1.Model;
using Nhom_1.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nhom_1.ViewModel
{
    class OderViewModel : ViewModelBase
    {
        public ObservableCollection<Thuoc> CartItems { get; set; }

        public OderViewModel()
        {
            List<Order> listoder = DataProvider.Instance.DB.Orders.ToList();
            List<Thuoc> thuocs = new List<Thuoc>(); // Khởi tạo danh sách thuốc

            foreach (var order in listoder)
            {
                Thuoc thuoc = DataProvider.Instance.TimThuocTheoId(order.ProductID); // Tìm thuốc theo ID của từng đơn hàng
                if (thuoc != null)
                {
                    thuocs.Add(thuoc); // Thêm thuốc vào danh sách nếu tìm thấy
                }
            }

            CartItems = new ObservableCollection<Thuoc>(thuocs); // Khởi tạo ObservableCollection từ danh sách thuốc
        }
    }
}
