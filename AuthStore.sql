USE [master]
GO
/****** Object:  Database [AuthStore]    Script Date: 10/11/2023 9:23:46 CH ******/
CREATE DATABASE [AuthStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AuthStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AuthStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AuthStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AuthStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AuthStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AuthStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AuthStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AuthStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AuthStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AuthStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AuthStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [AuthStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AuthStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AuthStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AuthStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AuthStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AuthStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AuthStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AuthStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AuthStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AuthStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AuthStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AuthStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AuthStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AuthStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AuthStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AuthStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AuthStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AuthStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AuthStore] SET  MULTI_USER 
GO
ALTER DATABASE [AuthStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AuthStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AuthStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AuthStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AuthStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AuthStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AuthStore] SET QUERY_STORE = OFF
GO
USE [AuthStore]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[IDChatLieu] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[IDChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeGiay]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeGiay](
	[IDDeGiay] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_DeGiay] PRIMARY KEY CLUSTERED 
(
	[IDDeGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[IDDiaChi] [int] NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[IDNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[Duong] [nvarchar](50) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
 CONSTRAINT [PK_DiaChi] PRIMARY KEY CLUSTERED 
(
	[IDDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GotGiay]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GotGiay](
	[IDGotGiay] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_GotGiay] PRIMARY KEY CLUSTERED 
(
	[IDGotGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[IDHinhThucThanhToan] [int] NOT NULL,
	[IDHoaDon] [int] NOT NULL,
	[IDThanhToan] [int] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_HinhThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[IDHinhThucThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [int] NOT NULL,
	[IDHinhThucThanhToan] [int] NOT NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
	[NgayXacNhan] [date] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[IDNhanVien] [int] NOT NULL,
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IDHoaDonChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDSanPhamChiTiet] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
	[TongTien] [float] NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[IDHoaDonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[IDDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhichCo]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhichCo](
	[IDKhichCo] [int] IDENTITY(1,1) NOT NULL,
	[KichCo] [int] NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_KhichCo] PRIMARY KEY CLUSTERED 
(
	[IDKhichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[IDKhuyenMai] [int] NOT NULL,
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TenUuDai] [nvarchar](50) NULL,
	[GiaTriKhuyenMai] [float] NULL,
	[DieuKien] [nvarchar](50) NULL,
	[DoiTuong] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuHoaDon]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuHoaDon](
	[IDLichSuHoaDon] [int] NOT NULL,
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_LichSuHoaDon] PRIMARY KEY CLUSTERED 
(
	[IDLichSuHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopLot]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopLot](
	[IDLopLot] [int] IDENTITY(1,1) NOT NULL,
	[TenLopLot] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_LopLot] PRIMARY KEY CLUSTERED 
(
	[IDLopLot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[IDMaGiamGia] [int] NOT NULL,
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TenMaGiamGia] [nvarchar](50) NULL,
	[GiaTriMin] [float] NULL,
	[GiaTriMax] [float] NULL,
	[SoLuong] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [bit] NULL,
	[DieuKien] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaGiamGia] PRIMARY KEY CLUSTERED 
(
	[IDMaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[IDMauSac] [int] IDENTITY(1,1) NOT NULL,
	[MauSac] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[IDMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] NOT NULL,
	[IDVaiTro] [int] NOT NULL,
	[MaNhanVien] [nvarchar](20) NULL,
	[HoTen] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[IDDiaChi] [int] IDENTITY(1,1) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamChiTiet]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamChiTiet](
	[IDSanPhamChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [int] NULL,
	[IDMauSac] [int] NULL,
	[IDKichCo] [int] NULL,
	[IDTheLoai] [int] NULL,
	[IDChatLieu] [int] NULL,
	[IDLopLot] [int] NULL,
	[IDGotGiay] [int] NULL,
	[IDDeGiay] [int] NULL,
	[IDThuongHieu] [int] NULL,
	[Ma] [nvarchar](10) NULL,
	[KhoiLuong] [int] NULL,
	[SoLuong] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
	[Gia] [float] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[PhiGiaoHang] [float] NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_SanPhamChiTiet] PRIMARY KEY CLUSTERED 
(
	[IDSanPhamChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[IDThanhToan] [int] NOT NULL,
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [date] NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[IDThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[IDTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[IDTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[IDThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
	[Deleted] [nchar](10) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[IDThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 10/11/2023 9:23:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[IDVaiTro] [int] IDENTITY(1,1) NOT NULL,
	[TenVaiTro] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgaySua] [date] NULL,
	[NguoiTao] [nvarchar](50) NULL,
	[NguoiSua] [nvarchar](50) NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[IDVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  CONSTRAINT [DF_ChatLieu_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  CONSTRAINT [DF_ChatLieu_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[DeGiay] ADD  CONSTRAINT [DF_DeGiay_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DeGiay] ADD  CONSTRAINT [DF_DeGiay_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[DiaChi] ADD  CONSTRAINT [DF_DiaChi_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DiaChi] ADD  CONSTRAINT [DF_DiaChi_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[GotGiay] ADD  CONSTRAINT [DF_GotGiay_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GotGiay] ADD  CONSTRAINT [DF_GotGiay_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  CONSTRAINT [DF_HinhThucThanhToan_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  CONSTRAINT [DF_HinhThucThanhToan_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_NgayXacNhan]  DEFAULT (getdate()) FOR [NgayXacNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KhichCo] ADD  CONSTRAINT [DF_KhichCo_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhichCo] ADD  CONSTRAINT [DF_KhichCo_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  CONSTRAINT [DF_KhuyenMai_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  CONSTRAINT [DF_KhuyenMai_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[LichSuHoaDon] ADD  CONSTRAINT [DF_LichSuHoaDon_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[LopLot] ADD  CONSTRAINT [DF_LopLot_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[LopLot] ADD  CONSTRAINT [DF_LopLot_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[MaGiamGia] ADD  CONSTRAINT [DF_MaGiamGia_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MaGiamGia] ADD  CONSTRAINT [DF_MaGiamGia_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[MauSac] ADD  CONSTRAINT [DF_MauSac_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MauSac] ADD  CONSTRAINT [DF_MauSac_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  CONSTRAINT [DF_SanPhamChiTiet_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPhamChiTiet] ADD  CONSTRAINT [DF_SanPhamChiTiet_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  CONSTRAINT [DF_ThanhToan_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  CONSTRAINT [DF_ThanhToan_NguoiTao]  DEFAULT (getdate()) FOR [NguoiTao]
GO
ALTER TABLE [dbo].[TheLoai] ADD  CONSTRAINT [DF_TheLoai_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[TheLoai] ADD  CONSTRAINT [DF_TheLoai_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  CONSTRAINT [DF_ThuongHieu_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  CONSTRAINT [DF_ThuongHieu_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[VaiTro] ADD  CONSTRAINT [DF_VaiTro_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[VaiTro] ADD  CONSTRAINT [DF_VaiTro_NgaySua]  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[HinhThucThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_HinhThucThanhToan_ThanhToan] FOREIGN KEY([IDThanhToan])
REFERENCES [dbo].[ThanhToan] ([IDThanhToan])
GO
ALTER TABLE [dbo].[HinhThucThanhToan] CHECK CONSTRAINT [FK_HinhThucThanhToan_ThanhToan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HinhThucThanhToan] FOREIGN KEY([IDHinhThucThanhToan])
REFERENCES [dbo].[HinhThucThanhToan] ([IDHinhThucThanhToan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HinhThucThanhToan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet] FOREIGN KEY([IDSanPhamChiTiet])
REFERENCES [dbo].[SanPhamChiTiet] ([IDSanPhamChiTiet])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_DiaChi] FOREIGN KEY([IDDiaChi])
REFERENCES [dbo].[DiaChi] ([IDDiaChi])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_DiaChi]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_HoaDon]
GO
ALTER TABLE [dbo].[LichSuHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_LichSuHoaDon_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[LichSuHoaDon] CHECK CONSTRAINT [FK_LichSuHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[MaGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_MaGiamGia_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[MaGiamGia] CHECK CONSTRAINT [FK_MaGiamGia_HoaDon]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DiaChi] FOREIGN KEY([IDDiaChi])
REFERENCES [dbo].[DiaChi] ([IDDiaChi])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_DiaChi]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_VaiTro] FOREIGN KEY([IDVaiTro])
REFERENCES [dbo].[VaiTro] ([IDVaiTro])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_VaiTro]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_ChatLieu] FOREIGN KEY([IDChatLieu])
REFERENCES [dbo].[ChatLieu] ([IDChatLieu])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_ChatLieu]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_DeGiay] FOREIGN KEY([IDDeGiay])
REFERENCES [dbo].[DeGiay] ([IDDeGiay])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_DeGiay]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_GotGiay] FOREIGN KEY([IDGotGiay])
REFERENCES [dbo].[GotGiay] ([IDGotGiay])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_GotGiay]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_KhichCo] FOREIGN KEY([IDKichCo])
REFERENCES [dbo].[KhichCo] ([IDKhichCo])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_KhichCo]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_LopLot] FOREIGN KEY([IDLopLot])
REFERENCES [dbo].[LopLot] ([IDLopLot])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_LopLot]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_MauSac] FOREIGN KEY([IDMauSac])
REFERENCES [dbo].[MauSac] ([IDMauSac])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_MauSac]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_SanPham]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_TheLoai] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[TheLoai] ([IDTheLoai])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_TheLoai]
GO
ALTER TABLE [dbo].[SanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamChiTiet_ThuongHieu] FOREIGN KEY([IDThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([IDThuongHieu])
GO
ALTER TABLE [dbo].[SanPhamChiTiet] CHECK CONSTRAINT [FK_SanPhamChiTiet_ThuongHieu]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_HoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_HoaDon]
GO
USE [master]
GO
ALTER DATABASE [AuthStore] SET  READ_WRITE 
GO
