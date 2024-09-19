using Nhom_1.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Nhom_1.ViewModel
{
    internal class DashBoardViewModel : ViewModelBase
    {
        public TaiKhoan TaiKhoan { get; set; }
        private string _tenThuoc;
        private DateTime _hanSuDung;
        private int _soLuong;
        private int _idDonVi;
        private decimal _giaNhap;
        private decimal _giaBan;
        private string _image;
        private string _ghiChu;
        private Thuoc _selectedProduct = new Thuoc();
        public string TenThuoc
        {
            get => _tenThuoc;
            set
            {
                _tenThuoc = value;
                OnPropertyChanged(nameof(TenThuoc));
            }
        }

        public DateTime HanSuDung
        {
            get => _hanSuDung;
            set
            {
                _hanSuDung = value;
                OnPropertyChanged(nameof(HanSuDung));
            }
        }

        public int SoLuong
        {
            get => _soLuong;
            set
            {
                _soLuong = value;
                OnPropertyChanged(nameof(SoLuong));
            }
        }

        public int IdDonVi
        {
            get => _idDonVi;
            set
            {
                _idDonVi = value;
                OnPropertyChanged(nameof(IdDonVi));
            }
        }

        public decimal GiaNhap
        {
            get => _giaNhap;
            set
            {
                _giaNhap = value;
                OnPropertyChanged(nameof(GiaNhap));
            }
        }

        public decimal GiaBan
        {
            get => _giaBan;
            set
            {
                _giaBan = value;
                OnPropertyChanged(nameof(GiaBan));
            }
        }

        public string Image
        {
            get => _image;
            set
            {
                _image = value;
                OnPropertyChanged(nameof(Image));
            }
        }

        public string GhiChu
        {
            get => _ghiChu;
            set
            {
                _ghiChu = value;
                OnPropertyChanged(nameof(GhiChu));
            }
        }

        public ObservableCollection<string> DonViList { get; set; }
        public ObservableCollection<Thuoc> AllItems { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand RemoveItemCommand { get; set; }
        private void Save(object parameter)
        {
            try
            {
                DonVi donVi= DataProvider.Instance.GetByDonVi(IdDonVi);
                if (donVi == null)
                {
                    throw new InvalidOperationException("Đơn vị không hợp lệ");
                }

                var thuoc = new Thuoc
                {
                    TenThuoc = TenThuoc,
                    HanSuDung = HanSuDung,
                    SoLuong = SoLuong,
                    IdDonVi = IdDonVi,
                    GiaNhap = GiaNhap,
                    GiaBan = GiaBan,
                    Image = Image,
                    GhiChu = GhiChu
                };

                DataProvider.Instance.DB.Thuocs.Add(thuoc);
              
                DataProvider.Instance.DB.SaveChanges();
                MessageBox.Show("Lưu thành công!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                TenThuoc= null;
                SoLuong = 0;
                GiaBan= 0;
                GiaNhap= 0;
                Image = null;
                GhiChu = null; 
            }
            catch (DbUpdateException ex)
            {
                Console.WriteLine(ex.Message);
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
                }
            }
        }
        private void Delete(object parameter)
        {
            try
            {
                if (SelectedProduct== null)
                { 
                    MessageBox.Show("Vui lòng chọn một sản phẩm để xóa.", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                DataProvider.Instance.DB.Thuocs.Remove(SelectedProduct);
                DataProvider.Instance.DB.SaveChanges();

                MessageBox.Show("Xóa thành công!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                List<Thuoc> listThuocs = DataProvider.Instance.DB.Thuocs.ToList();
                AllItems = new ObservableCollection<Thuoc>(listThuocs);
            }
            catch (DbUpdateException ex)
            {
                MessageBox.Show("Lỗi khi xóa dữ liệu: " + ex.Message, "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool CanDelete(object parameter)
        {
            return SelectedProduct != null;
        }
        public DashBoardViewModel() {
            var taikhoan = DataProvider.Instance.GetByUsername(Thread.CurrentPrincipal.Identity.Name);
            TaiKhoan = taikhoan;
            HanSuDung = DateTime.Now;
            DonViList = DataProvider.Instance.GetByTenDonViAll();
            SaveCommand = new ViewModelCommand(Save);
            List<Thuoc> listThuocs = DataProvider.Instance.DB.Thuocs.ToList();
            AllItems = new ObservableCollection<Thuoc>(listThuocs);
            RemoveItemCommand = new ViewModelCommand(Delete, CanDelete);
        }
    }
}
