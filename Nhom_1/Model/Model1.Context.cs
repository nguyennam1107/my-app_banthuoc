﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Nhom_1.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QuanLyCuaHangThuoc_V2Entities : DbContext
    {
        public QuanLyCuaHangThuoc_V2Entities()
            : base("name=QuanLyCuaHangThuoc_V2Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ChiTietDonBanHang> ChiTietDonBanHangs { get; set; }
        public virtual DbSet<ChiTietPhieuNhapKho> ChiTietPhieuNhapKhoes { get; set; }
        public virtual DbSet<CuaHang> CuaHangs { get; set; }
        public virtual DbSet<DonBanHang> DonBanHangs { get; set; }
        public virtual DbSet<DonVi> DonVis { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<PhieuNhapKho> PhieuNhapKhoes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<Thuoc> Thuocs { get; set; }
    }
}
