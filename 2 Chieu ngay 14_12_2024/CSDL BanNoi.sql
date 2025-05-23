CREATE DATABASE [QLBanNoi]
USE [QLBanNoi]
GO
/****** Object:  Table [dbo].[AnhChiTietSP]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhChiTietSP](
	[MaAnh] [varchar](20) NOT NULL,
	[MaSPTheoMau] [varchar](20) NULL,
	[TenFileAnh] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AnhChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDonHang] [varchar](20) NOT NULL,
	[MaChiTietSP] [varchar](20) NOT NULL,
	[SoLuongMua] [int] NULL,
	[DonGiaBan] [bigint] NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSPBan]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSPBan](
	[MaChiTietSP] [varchar](20) NOT NULL,
	[MaSPTheoMau] [varchar](20) NULL,
	[KichCo] [varchar](5) NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [bigint] NULL,
 CONSTRAINT [PK_ChiTietSPBan] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [varchar](20) NOT NULL,
	[NgayDatHang] [date] NULL,
	[MaNguoiDung] [varchar](20) NULL,
	[DiaChiGiaoHang] [nvarchar](100) NULL,
	[PTThanhToan] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[TenNguoiNhanHang] [nvarchar](50) NOT NULL,
	[SoDienThoaiNhanHang] [varchar](20) NOT NULL,
	[TongTien] [bigint] NULL,
	[GiamGia] [tinyint] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [pk_donhang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [varchar](20) NOT NULL,
	[TenMau] [nvarchar](20) NOT NULL,
 CONSTRAINT [pkmausac] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [varchar](20) NOT NULL,
	[TenDangNhap] [varchar](30) NULL,
	[TenNguoiDung] [nvarchar](30) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Email] [varchar](30) NULL,
	[MatKhau] [varchar](30) NULL,
	[DiaChi] [nvarchar](max) NULL,
 CONSTRAINT [pknguoidung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoai]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[MaPhanLoai] [varchar](20) NOT NULL,
	[PhanLoaiChinh] [nvarchar](50) NULL,
 CONSTRAINT [pk_phanloai] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoaiPhu]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiPhu](
	[MaPhanLoaiPhu] [varchar](20) NOT NULL,
	[TenPhanLoaiPhu] [nvarchar](50) NULL,
	[MaPhanLoai] [varchar](20) NULL,
 CONSTRAINT [pk_phanloaiphu] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoaiPhu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](20) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaPhanLoai] [varchar](20) NULL,
	[GiaNhap] [bigint] NULL,
	[DonGiaBanNhoNhat] [bigint] NULL,
	[DonGiaBanLonNhat] [bigint] NULL,
	[TrangThai] [bit] NULL,
	[MoTaNgan] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[NoiBat] [bit] NULL,
	[MaPhanLoaiPhu] [varchar](20) NULL,
 CONSTRAINT [pk_sanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPtheoMau]    Script Date: 25-May-22 2:54:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPtheoMau](
	[MaSPTheoMau] [varchar](20) NOT NULL,
	[MaSanPham] [varchar](20) NOT NULL,
	[MaMau] [varchar](20) NOT NULL,
 CONSTRAINT [pkphanloaimssp] PRIMARY KEY CLUSTERED 
(
	[MaSPTheoMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'001', N'Bình đựng')
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'002', N'Điện gia dụng')
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'003', N'Nồi')
GO
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'011', N'Bình nước', N'001')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'012', N'Bình giữ nhiệt', N'001')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'021', N'Ấm siêu tốc', N'002')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'022', N'Máy say', N'002')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'031', N'Nồi chảo', N'003')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'032', N'Nồi chiên không dầu', N'003')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00001', N'Hộp cơm giữ nhiệt Lock & Lock, 500ml, màu đỏ', N'001', 500000, 1000000, 2000000, NULL, N'LHC8029RED- Hộp cơm giữ nhiệt thương hiệu Lock & Lock, 500ml, màu đỏ', N'00001.jpg', NULL, N'011')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00002', N'Hộp bảo quản thủy tinh LocknLock 1L', N'001', 500000, 1000000, 2000000, NULL, N'LBG445BLU - Hộp bảo quản thủy tinh LocknLock Top Class 1L - Màu xanh dương', N'00002.jpg', NULL, N'011')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00003', N'Bình nhựa Lock&Lock (690ML)', N'001', 500000, 1000000, 2000000, NULL, N'HPL934MBK-PR- Bình nhựa đụng nước Lock&Lock (690ML)', N'00003.jpg', NULL, N'012')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00004', N'Bình nước thể thao Lock&Lock ABF610PBK (1L)', N'001', 500000, 1000000, 2000000, NULL, N'Bình nước thể thao Lock&Lock ABF610PBK (1L)', N'00004.jpg', NULL, N'012')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00005', N'Bình Đun Siêu Tốc 2 Lớp Lock&Lock EJK738BLK (1.7L)', N'002', 500000, 1000000, 2000000, NULL, N'Bình Đun Siêu Tốc 2 Lớp Lock&Lock EJK738BLK (1.7L)', N'00005.jpg', NULL, N'021')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00006', N'Nồi Điện Đa Năng Lock&Lock EJC141 (1.5 Lít)', N'002', 500000, 1000000, 2000000, NULL, N'Nồi Điện Đa Năng Lock&Lock EJC141 (1.5 Lít)', N'00006.jpg', NULL, N'022')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00007', N'Máy Xay Thịt 2 Lưỡi Dao Kép Lock&Lock EJM171 (2L)', N'002', 500000, 1000000, 2000000, NULL, N'Máy Xay Thịt 2 Lưỡi Dao Kép Lock&Lock EJM171 (2L)', N'00007.jpg', NULL, N'022')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00008', N'Máy Xay Sinh Tố Lock&Lock EJM436MIT (250W - 600ml)', N'002', 500000, 1000000, 2000000, NULL, N'Máy Xay Sinh Tố Lock&Lock EJM436MIT (250W - 600ml)', N'00008.jpg', NULL, N'022')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00009', N'Nồi Nhôm Chống Dính Nắp Thủy Tinh 24cm', N'003', 500000, 1000000, 2000000, NULL, N'Nồi Nhôm Chống Dính Nắp Thủy Tinh Lock & Lock CCA202 24cm - Màu Mint', N'00009.jpg', NULL, N'031')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00010', N'Chảo Nhôm Chống Dính Lock & Lock24cm', N'003', 500000, 1000000, 2000000, NULL, N'Chảo Nhôm Chống Dính Lock & Lock CCA204 24cm - Màu Mint', N'00010.jpg', NULL, N'032')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00011', N'Nồi Chiên Không Dầu Lock&Lock EJF137FU (3 Lít)', N'003', 500000, 1000000, 2000000, NULL, N'Nồi Chiên Không Dầu Lock&Lock EJF137FU (3 Lít)', N'00011.jpg', NULL, N'032')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00012', N'Nồi chiên không dầu, 7.2L, 220V, 50HZ, 1800W', N'003', 500000, 1000000, 2000000, NULL, N'EJF596BLK - Nồi chiên không dầu, Visible stirring air fryer, 7.2L, 220V, 50HZ, 1800W - màu đen', N'00012.jpg', NULL, N'032')
GO
ALTER TABLE [dbo].[AnhChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_AnhChiTietSP_SPtheoMau1] FOREIGN KEY([MaSPTheoMau])
REFERENCES [dbo].[SPtheoMau] ([MaSPTheoMau])
GO
ALTER TABLE [dbo].[AnhChiTietSP] CHECK CONSTRAINT [FK_AnhChiTietSP_SPtheoMau1]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_ChiTietSPBan] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[ChiTietSPBan] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_ChiTietSPBan]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietSPBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSPBan_SPtheoMau] FOREIGN KEY([MaSPTheoMau])
REFERENCES [dbo].[SPtheoMau] ([MaSPTheoMau])
GO
ALTER TABLE [dbo].[ChiTietSPBan] CHECK CONSTRAINT [FK_ChiTietSPBan_SPtheoMau]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoai] FOREIGN KEY([MaPhanLoai])
REFERENCES [dbo].[PhanLoai] ([MaPhanLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoaiPhu] FOREIGN KEY([MaPhanLoaiPhu])
REFERENCES [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoaiPhu]
GO
ALTER TABLE [dbo].[SPtheoMau]  WITH CHECK ADD  CONSTRAINT [FK_SPtheoMau_MauSac] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[SPtheoMau] CHECK CONSTRAINT [FK_SPtheoMau_MauSac]
GO
ALTER TABLE [dbo].[SPtheoMau]  WITH CHECK ADD  CONSTRAINT [FK_SPtheoMau_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SPtheoMau] CHECK CONSTRAINT [FK_SPtheoMau_SanPham]
GO
