using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Net;
namespace Nhom_1.Model
{
    public class DataProvider :DbContext
    {
        private static DataProvider instance;
        public static DataProvider Instance
        {
            get { if (instance == null)
                    instance = new DataProvider();
                    return instance;}
            set { instance = value; }
        }
        public QuanLyCuaHangThuoc_V2Entities DB { get; set; }
        public DataProvider() : base("QuanLyCuaHangThuoc_V2Entities")
        {
            DB= new QuanLyCuaHangThuoc_V2Entities();
        }
        public bool KiemtraUser(NetworkCredential credential)
        {
            var user = DB.TaiKhoans.FirstOrDefault(u => u.TenDangNhap == credential.UserName && u.MatKhau == credential.Password);
            return user != null;
        }
        public TaiKhoan GetByUsername(string username)
        {  TaiKhoan taiKhoan = DB.TaiKhoans.FirstOrDefault(u => u.TenDangNhap == username);
            return taiKhoan;
        }
        public DonVi GetByDonVi(int IdDonVi)
        {
            var donVi = DB.DonVis.FirstOrDefault(dv => dv.IdDonVi == IdDonVi);
            return donVi;
        }
        public List<Thuoc> GetByProductName(string searchText)
        {
            List<Thuoc> thuocs = DB.Thuocs.Where(p => p.TenThuoc.Contains(searchText)).ToListAsync().Result;
            return thuocs;
        }
        public ObservableCollection<string> GetByTenDonViAll()
        {
            ObservableCollection<string> DonViList;
            var donViList = DataProvider.Instance.DB.DonVis.ToList();
            DonViList = new ObservableCollection<string>(donViList.Select(dv => dv.TenDonVi).ToList());
            return DonViList;
        }
        public void AddOrder(Order order)
        {
            try
            {
                DB.Orders.Add(order);
                DB.SaveChanges();
            }
            catch (Exception ex)
            {
            }
        }
        public Thuoc TimThuocTheoId(int? id)
        {
            foreach (var thuoc in DB.Thuocs.ToList())
            {
                if (thuoc.IdThuoc == id)
                {
                    return thuoc; 
                }
            }
            return null; 
        }
    }
}
