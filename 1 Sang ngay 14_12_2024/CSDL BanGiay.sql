CREATE DATABASE [QLBanGiay]
USE [QLBanGiay]
GO
/****** Object:  Table [dbo].[AnhChiTietSP]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[ChiTietSPBan]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[MauSac]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[PhanLoai]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[PhanLoaiPhu]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 25-May-22 11:48:54 AM ******/
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
/****** Object:  Table [dbo].[SPtheoMau]    Script Date: 25-May-22 11:48:54 AM ******/
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
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'001', N'Giày da')
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'002', N'Giày thể thao')
INSERT [dbo].[PhanLoai] ([MaPhanLoai], [PhanLoaiChinh]) VALUES (N'003', N'Sandals')
GO
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'011', N'Giày da', N'001')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'012', N'Bốt', N'001')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'021', N'Adidas', N'002')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'022', N'Lacoste', N'002')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'031', N'Dép bệt', N'003')
INSERT [dbo].[PhanLoaiPhu] ([MaPhanLoaiPhu], [TenPhanLoaiPhu], [MaPhanLoai]) VALUES (N'032', N'Cao gót', N'003')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00001', N'Giày da nữ Aokang ', N'001', 500000, 1000000, 2000000, NULL, N'Giới tính:Nữ, Màu sắc: Đen, Chất liệu: Da bò', N'00001.jpg', NULL, N'011')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00002', N'Giày Cao Gót Nữ Pazzion', N'001', 500000, 1000000, 2000000, NULL, N'Giới tính:Nữ, Màu sắc: Bạc, Chất liệu: Da bò', N'00002.jpg', NULL, N'011')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00003', N'Boots Nữ Geox D ANNYA H.F SMO.LEA', N'001', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Giày bốt, Giới tính:Nữ, Màu sắc: Đen, Chất liệu: Da bò', N'00003.jpg', NULL, N'012')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00004', N'Boots Cao Gót Nữ Geox D FAVIOLA E', N'001', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Giày bốt, Giới tính:Nữ, Màu sắc: Đen, Chất liệu: Da bò', N'00004.jpg', NULL, N'012')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00005', N'Giày Thể Thao Adidas UltraBoost 21 FZ1917', N'002', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Giày thể thao, Giới tính: Nữ, Màu sắc: Cam', N'00005.jpg', NULL, N'021')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00007', N'Giày Thể Thao Lacoste Jump Serve Slip On 0121', N'002', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Giày thể thao, Giới tính: Nam, Màu sắc: Nam', N'00007.jpg', NULL, N'022')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00008', N'Giày Thể Thao Lacoste T-Clip 0721', N'002', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Giày thể thao, Giới tính: Nam, Màu sắc: Trắng - đỏ', N'00008.jpg', NULL, N'022')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00009', N'Sandals Nữ Geox Sand Vega A D72R6A', N'003', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Sandals, Giới tính: Nữ, Màu sắc: Vàng kim', N'00009.jpg', NULL, N'031')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00010', N'Sandals Nữ Geox Jearl Sand A NAPPA+GOA.SUE D92DRA', N'003', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Sandals, Giới tính: Nữ, Màu sắc: Đen', N'00010.jpg', NULL, N'032')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00011', N'Sandals Cao Gót Nữ Geox D Felyxa A 9cm', N'003', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Sandals, Giới tính: Nữ, Màu sắc: Vàng kim', N'00011.jpg', NULL, N'032')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaPhanLoai], [GiaNhap], [DonGiaBanNhoNhat], [DonGiaBanLonNhat], [TrangThai], [MoTaNgan], [AnhDaiDien], [NoiBat], [MaPhanLoaiPhu]) VALUES (N'00012', N'Sandals Cao Gót Geox D JENIEVE A', N'003', 500000, 1000000, 2000000, NULL, N'Kiểu dáng: Sandals, Giới tính: Nữ, Màu sắc: Đen', N'00012.jpg', NULL, N'032')
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
