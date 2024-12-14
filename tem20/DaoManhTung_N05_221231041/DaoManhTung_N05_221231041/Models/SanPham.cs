using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DaoManhTung_N05_221231041.Models;

public partial class SanPham
{
    [Display(Name = "Mã Sản Phẩm")]
    public string MaSanPham { get; set; } = null!;
    [Display(Name = "Tên Sản Phẩm")]
    [RegularExpression(@"^[a-zA-Z]+$", ErrorMessage = "Tên chỉ được nhập chữ")]

    public string TenSanPham { get; set; } = null!;
    [Display(Name = "Mã Phân Loại")]
    public string? MaPhanLoai { get; set; }
    [Display(Name = "Giá Nhập")]
    [RegularExpression(@"^[0-9]+$", ErrorMessage = "Chỉ được nhập số")]
    public long? GiaNhap { get; set; }
    [Display(Name = "Đơn Giá Bán Nhỏ Nhất")]
    [RegularExpression(@"^[0-9]+$", ErrorMessage = "Chỉ được nhập số")]
    public long? DonGiaBanNhoNhat { get; set; }
    [Display(Name = "Đơn Giá Bán Lớn Nhất")]
    [RegularExpression(@"^[0-9]+$", ErrorMessage = "Chỉ được nhập số")]
    public long? DonGiaBanLonNhat { get; set; }
    [Display(Name = "Trạng Thái")]
    public bool? TrangThai { get; set; }
    [Display(Name = "Mô Tả Ngắn")]
    [RegularExpression(@"^[a-zA-Z]+$", ErrorMessage = "Chỉ được nhập chữ")]
    public string? MoTaNgan { get; set; }
    [Display(Name = "Ảnh Đại Diện")]
    public string? AnhDaiDien { get; set; }
    [Display(Name = "Nội Bật")]
    public bool? NoiBat { get; set; }
    [Display(Name = "Mã Phân Loại Phụ")]
    public string? MaPhanLoaiPhu { get; set; }
 
    public virtual PhanLoai? MaPhanLoaiNavigation { get; set; }

    public virtual PhanLoaiPhu? MaPhanLoaiPhuNavigation { get; set; }

    public virtual ICollection<SptheoMau> SptheoMaus { get; set; } = new List<SptheoMau>();
}
