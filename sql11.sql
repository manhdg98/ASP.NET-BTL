USE [master]
GO
/****** Object:  Database [Nhom11BTL]    Script Date: 11/30/19 20:02:49 ******/
CREATE DATABASE [Nhom11BTL]
GO
USE [Nhom11BTL]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ghe](
	[SoPhong] [varchar](30) NOT NULL,
	[SoGhe] [varchar](30) NOT NULL,
	[MoTa] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC,
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaLichChieu] [varchar](30) NOT NULL,
	[NgayChieu] [nvarchar](30) NOT NULL,
	[ThoiGianChieu] [nvarchar](30) NOT NULL,
	[MaPhim] [nvarchar](50) NOT NULL,
	[SoPhong] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [nvarchar](50) NOT NULL,
	[TenPhim] [nvarchar](100) NOT NULL,
	[TheLoai] [nvarchar](20) NOT NULL,
	[GioiThieu] [ntext] NOT NULL,
	[DaoDien] [nvarchar](60) NULL,
	[DienVien] [nvarchar](65) NULL,
	[NgonNgu] [nvarchar](20) NULL,
	[ThoiLuong] [nvarchar](10) NOT NULL,
	[NgayKhoiChieu] [datetime] NOT NULL,
	[Image] [char](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phong](
	[SoPhong] [varchar](30) NOT NULL,
	[ViTri] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [int] IDENTITY(1,1) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[TenTV] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Sdt] [nvarchar](15) NULL,
	[Cmnd] [nvarchar](20) NULL,
	[NgaySinh] [nvarchar](20) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [ntext] NULL,
	[LoaiTK] [int] NOT NULL,
	[TinhTrang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ve]    Script Date: 11/30/19 20:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ve](
	[MaTV] [int] NOT NULL,
	[MaLichChieu] [varchar](30) NOT NULL,
	[SoGhe] [varchar](30) NOT NULL,
	[GiaTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC,
	[MaLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'01', N'1')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'01', N'1')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'02', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'02', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'03', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'03', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'04', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'04', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'05', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'05', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'06', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'06', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'07', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'07', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'08', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'08', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'09', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'09', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'10', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R02', N'10', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'11', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'12', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'13', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'14', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'15', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'16', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'17', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'18', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'19', N'0')
INSERT [dbo].[Ghe] ([SoPhong], [SoGhe], [MoTa]) VALUES (N'R01', N'20', N'0')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC001', N'2019-12-01', N'7:00-9:01', N'P001', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC002', N'2019-12-01', N'9:00-11:00', N'P002', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC003', N'2019-12-01', N'11:00-14:00', N'P003', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC004', N'2019-12-01', N'13:00-15:00', N'P004', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC005', N'2019-12-01', N'15:00-18:00', N'P005', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC006', N'2019-12-01', N'17:00-20:00', N'P006', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC007', N'2019-12-01', N'19:00-21:00', N'P007', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC008', N'2019-12-01', N'21:00-23:00', N'P008', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC009', N'2019-12-01', N'23:00-2:00', N'P009', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC010', N'2019-12-02', N'7:00-9:00', N'P010', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC011', N'2019-12-02', N'9:00-11:00', N'P011', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC012', N'2019-12-02', N'11:00-13:00', N'P012', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC013', N'2019-12-02', N'13:00-15:00', N'P013', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC014', N'2019-12-02', N'15:00-18:00', N'P014', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC015', N'2019-12-02', N'17:00-19:00', N'P015', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC016', N'2019-12-02', N'19:00-21:00', N'P016', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC017', N'2019-12-02', N'21:00-23:00', N'P017', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC018', N'2019-12-02', N'23:00-2:00', N'P018', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC019', N'2019-12-03', N'7:00-9:00', N'P019', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC020', N'2019-12-03', N'9:00-11:00', N'P020', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC021', N'2019-12-03', N'11:00-1:00', N'P021', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC022', N'2019-12-03', N'13:00-15:00', N'P022', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC023', N'2019-12-03', N'15:00-17:00', N'P023', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC024', N'2019-12-03', N'17:00-19:00', N'P024', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC025', N'2019-12-03', N'19:00-21:00', N'P025', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC026', N'2019-12-03', N'21:00-23:00', N'P026', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC027', N'2019-12-03', N'23:00-2:00', N'P027', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC028', N'2019-12-04', N'7:00-9:00', N'P028', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC029', N'2019-12-04', N'9:00-11:00', N'P029', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC030', N'2019-12-04', N'11:00-13:00', N'P030', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC031', N'2019-12-04', N'13:00-15:00', N'P031', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC032', N'2019-12-04', N'15:00-17:00', N'P032', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC033', N'2019-12-04', N'17:00-19:00', N'P033', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC034', N'2019-12-04', N'19:00-21:00', N'P034', N'R01')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC035', N'2019-12-04', N'21:00-23:00', N'P001', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC036', N'2019-12-04', N'23:00-1:00', N'P002', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC037', N'2019-12-05', N'7:00-9:00', N'P003', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC038', N'2019-12-05', N'9:00-11:00', N'P004', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC039', N'2019-12-05', N'11:00-13:00', N'P005', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC040', N'2019-12-05', N'13:00-15:00', N'P006', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC041', N'2019-12-05', N'15:00-17:00', N'P007', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC042', N'2019-12-05', N'17:00-19:00', N'P008', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC043', N'2019-12-05', N'19:00-21:00', N'P009', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC044', N'2019-12-05', N'21:00-23:00', N'P010', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC045', N'2019-12-05', N'23:00-2:00', N'P011', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC046', N'2019-12-06', N'7:00-9:00', N'P012', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC047', N'2019-12-06', N'9:00-11:00', N'P013', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC048', N'2019-12-06', N'11:00-14:00', N'P014', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC049', N'2019-12-06', N'13:00-16:00', N'P015', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC050', N'2019-12-06', N'15:00-17:00', N'P016', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC051', N'2019-12-06', N'17:00-19:00', N'P017', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC052', N'2019-12-06', N'19:00-22:00', N'P018', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC053', N'2019-12-06', N'21:00-23:00', N'P019', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC054', N'2019-12-06', N'23:00-3:00', N'P020', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC055', N'2019-12-07', N'7:00-9:00', N'P021', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC056', N'2019-12-07', N'9:00-10:00', N'P022', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC057', N'2019-12-07', N'11:00-14:00', N'P023', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC058', N'2019-12-07', N'13:00-15:00', N'P024', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC059', N'2019-12-07', N'15:00-18:00', N'P025', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC060', N'2019-12-07', N'17:00-19:00', N'P026', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC061', N'2019-12-07', N'19:00-22:00', N'P027', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC062', N'2019-12-07', N'21:00-24:00', N'P028', N'R02')
INSERT [dbo].[LichChieu] ([MaLichChieu], [NgayChieu], [ThoiGianChieu], [MaPhim], [SoPhong]) VALUES (N'LC063', N'2019-12-07', N'23:00-3:00', N'P029', N'R02')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P001', N'Sát Thủ Anna', N'Hành động', N'Với một cuộc đời bế tắc, Anna Poliatova (Sasha Luss) miễn cưỡng nhận lời đề nghị từ Alex (Luke Evans) gia nhập vào KGB ( Ủy ban An Ninh Quốc Gia Xô Viết). Tại đây, Anna được đào tạo để trở thành một sát thủ cho tổ chức, và cô được trực tiếp huấn luyện bởi Olga (Helen Mirren). Cô được hứa hẹn sẽ giải ngũ sau 5 năm phục vụ cho KGB. Thế nhưng, tổ chức KGB quay lưng lại với cô. Sau đó, mỉa mai như một trò đùa số phận, cô được CIA thuê ám sát Vassiliev – tay cầm đầu của KGB. Liệu con đường nào là đúng đắn cho Anna? Cô có thể thoát khỏi vòng quay tội lỗi này để trở về với cuộc sống bình thường?', N'Luc Besson', N'Sasha Luss, Helen Mirren, Luke Evans', NULL, N'119 phút', CAST(0x0000AC3100000000 AS DateTime), N'anna.png                                                                                                                                                                                                                                                  ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P002', N'Ngoài Hành tinh ', N'Hoạt hình, Phiêu lưu', N'Shaun the Sheep Movie: Người Bạn Ngoài Hành Tinh trong lần trở lại này, bên cạnh Shaun, đàn cừu và những nhân vật quen thuộc, bộ phim sẽ có sự xuất hiện của một nhân vật mới thú vị mang tên Lu-la, một cô bé ngoài hành tinh hết sức đáng yêu rơi từ chiếc phi thuyền không gian xuống trang trại Mossy Bottom. Thế là chú cừu thông minh Shaun cùng những người bạn bắt tay vào công cuộc giúp đỡ Lu-la về với quê hương', N'Will Becher, Richard Phelan', N'Justin Fletcher, John Sparkes, Kate Harbour', N'Tiếng Anh', N'86 phút', CAST(0x0000AAD500000000 AS DateTime), N'nguoituyetbenho.jpg                                                                                                                                                                                                                                       ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P003', N'Gã Hề Ma Quái 2 ', N'Kinh dị', N'Lấy bối cảnh 27 năm sau sự kiện It, It: Chapter Two vẫn là câu chuyện về những cô cậu bé của nhóm “The Losers Club”, lúc này đã trưởng thành và đối mặt với vô số vấn đề trong cuộc sống. Chưa dừng lại ở đó, ám ảnh ma hề Pennywise cứ 27 năm lại xuất hiện một lần tại thị trấn Derry buộc 7 cô cậu bé ngày nào phải tiếp tục cuốn vào cuộc chạm trán tiếp theo giữa hai bên thiện và ác. Mặc dù có thể cả nhóm đã trưởng thành và khôn ngoan hơn, nhưng cuộc chiến của họ với Pennywise vẫn còn đó những hậu quả bất ngờ, thậm chí khiến một số thành viên phải trải qua đau đớn đến tột cùng.', N'Andrés Muschietti', N'James McAvoy, Javier Botet, Jessica Chastain', N'Tiếng Anh', N'172 phút', CAST(0x0000AAC000000000 AS DateTime), N'gahemaquai2.png                                                                                                                                                                                                                                           ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P004', N'Người Lạ Ơi', N'Hài hước, Tình cảm', N'Bộ phim xoay quanh anh chàng “bad boy” Đăng DJ (Karik) – một anh chàng nghệ sĩ tài hoa, đa tình và không tin vào sự tồn tại của tình yêu. Với Đăng tình yêu đôi khi chỉ là tình cảm thoáng qua hoặc thậm chí chỉ là tình một đêm. Ngày nọ, một cô gái xinh đẹp nhưng có vẻ bất bình thường đột nhiên xuất hiện trước mặt anh và đòi “động phòng”. Cô gái này toát lên một khí chất khác thường khiến cho Đăng không thể giữ được sự tự tin cũng như khí chất phong lưu nổi tiếng của mình. Cô gái này là ai? Cô ấy có khả năng đặc biệt gì mà có thể khiến một tay chơi khét tiếng phải trốn chạy trối chết theo nghĩa đen', N'Trương Chí Bình', N'Karik, Thuỳ Anh, Trịnh Thảo, Trương Thế Vinh, Mỹ Duyên', N'Tiếng Việt', N'89 phút', CAST(0x0000AAC700000000 AS DateTime), N'nguoilaoi.png                                                                                                                                                                                                                                             ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P005', N'Thách Yêu 2 Năm', N'Hài hước, Tình cảm', N'Than là một nhân viên phân tích bảo hiểm, chỉ tin vào con số và thống kê, Than đưa sản phẩm bảo hiểm tình yêu 2 năm lên đỉnh cao cho công ty. Tuy nhiên, Jeed nữ đồng nghiệp của anh lại không nghĩ vậy, cô bằng mọi cách phá đám anh để công ty hủy bỏ sản phẩm bảo hiểm đó. Tưởng chừng là hai địch thủ trái ngược nhau, cả hai dần khám phá ra tình yêu là cân bằng của lý trí và con tim. Sau Friendzone, Love Battle đã tạo nên một cơn sóng mùa hè tại các rạp chiếu phim Thái Lan.', N'Wirat Hengkongdee', N'Esther Supreeleela, Prama Imanotai', N'Tiếng Thái', N'130 phút', CAST(0x0000AAC700000000 AS DateTime), N'thachyeu2nam.png                                                                                                                                                                                                                                          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P006', N'The Angry Birds Movie 2 ', N'Hoạt hình', N'Sau 4 năm vắng bóng, chú chim giận dữ Red cùng những người bạn tinh quái và dễ thương đã quay trở lại và lần đầu tiên trong lịch sử Angry Birds, hai kẻ thù "không đội trời chung" Chim và Heo quyết định bắt tay họp tác với nhau để chống lại kẻ thù chung là nữ hoàng băng giá Zeta.', N'Thurop Van Orman', N'Jason Sudeikis, Josh Gad,', N'Tiếng Anh', N'96 phút', CAST(0x0000AAB200000000 AS DateTime), N'angry.png                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P007', N'Anh Thầy Ngôi Sao', N'Hài hước', N'Hoàng là một chàng trai trẻ ôm mộng thành ngôi sao ca nhạc, vì chưa gặp thời nên tạm kiếm sống bằng công việc làm thầy giáo dạy nhạc. Sau biến cố, Hoàng buộc phải chuyển công tác ra một hòn đảo cách xa đất liền và tiếp quản một lớp học đặc biệt với vỏn vẹn 5 học trò. Cảm thấy cuộc sống mới chỉ mang lại phiền toái, Hoàng nhiều lần bỏ về nhưng không thành vì đám trẻ và người dân đảo luôn tìm cách giữ chân thầy giáo. Đến khi anh dần thích nghi với hòn đảo này cũng là lúc cơ hội trở thành ca sĩ tìm đến, buộc Hoàng phải đưa ra lựa chọn.', N'Đỗ Đức Thịnh', N'uyme, Miu Lê, Xuân Nghị, Gil Lê', N'Tiếng Việt', N'104 phút', CAST(0x0000AAB900000000 AS DateTime), N'anhthayngoisao.png                                                                                                                                                                                                                                        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P008', N' Chú Chó  Enzo', N'Hài hước, Lãng mạn', N'Dựa trên tiểu thuyết ăn khách của Garth Stein, bộ phim đặt người xem vào góc nhìn và lời kể của chú chó Golden Retriever tên Enzo ( Kevin Costner lồng tiếng ). Enzo được Denny Swift ( Milo Ventimiglia ) nhận nuôi từ khi còn rất nhỏ và cả hai như một đôi bạn thân cùng nhau lớn lên. Denny là một tay đua thể thức một dày dạn kinh nghiệm, đây cũng chính duyên cơ đưa cuộc đời Enzo đi theo hướng một cách rất phi thường, khi niềm đam mê môn thể thao tốc độ trong chú chó này được khai phá…', N'Simon Curtis', N'Milo Ventimiglia, Amanda Seyfried, Kevin Costner', N'Tiếng Anh', N'113 phút', CAST(0x0000AAC700000000 AS DateTime), N'chuchoenzo.jpg                                                                                                                                                                                                                                            ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P009', N'Đứa Con Của Thời Tiết', N'Hoạt hình', N'Bộ phim xoay quanh hai nhân vật: Hodaka và Hina. Hodaka là cậu thiếu niên sống trên một hòn đảo nhỏ, đã rời khỏi quê hương để đến Tokyo sầm uất. Tại đây, cậu quen biết với Hina – một cô gái kì lạ có năng lực thanh lọc bầu trời mỗi khi “cầu nguyện”. Cô có khả năng chặn đứng cơn mưa và xua tan mây đen theo ý muốn.', N'Makoto Shinkai', NULL, N'Tiếng Nhật', N'112 phút', CAST(0x0000AAB900000000 AS DateTime), N'duaconcuathoitiet.png                                                                                                                                                                                                                                     ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P010', N'Lạc Hồn', N'Hồi hộp, Ly kì', N'Lạc Hồn là chuyến hành trình đi ngược quá khứ của "hồn ma" Hye-jung - cô gái trẻ chết một cách bí ẩn. Từng sống một cuộc đời cô độc và tẻ nhạt, Hye-jung cắt đứt liên lạc với gia đình, từ chối tình cảm từ anh chàng đồng nghiệp, và lặp lại công việc thường ngày tại một nhà máy mà không có mục đích sống nào. Mọi chuyện đảo lộn khi Hye-jung bị giết hại và trở thành hồn ma lang thang ở nơi cô từng sinh sống. Trong những ngày cuối đời, cô nhận ra rằng những thay đổi trong suy nghĩ của mình sẽ có thể tạo ra những đổi thay trong cuộc đời của những người khác.', N'Yu Eun-jeong', N'Han Hae-in, Jeon So-nee, Gam So-hyun', N'Tiếng Hàn', N'85 phút', CAST(0x0000AAC700000000 AS DateTime), N'lachon.png                                                                                                                                                                                                                                                ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P011', N'Lời Nguyền 8 Chân', N'Kinh dị', N'Dựa trên bài thơ cổ từ nhiều thế kỷ trước, LỜI NGUYỀN 8 CHÂN xoay quanh một gia đình chuyển đến căn biệt thự hẻo lánh và bị tấn công bởi con quái vật nhện khổng lồ. Trỗi dậy từ màn đêm, nó lao vào cuộc cuồng sát khốc liệt. Liệu ba mẹ con xấu số có thoát khỏi nanh vuốt của con nhện quỷ tàn ác?', N'Micah Gallo', N'Bruca Davision', N'Tiếng Anh', N'90 phút', CAST(0x0000AAC700000000 AS DateTime), N'loinguyen8chan.png                                                                                                                                                                                                                                        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P012', N'Sứ Mệnh Nội Gián 2', N'Hành động, Tâm lý', N'Bộ ba lão đại tiếp tục bước vào một tình huống vô cùng đặc biệt: nội gián trong nội gián. Một thương vụ giữa thiện ác và sáng tối, giữa kẻ thi hành chính nghĩa và những tên cớm bẩn.', N'Jazz Boon', N'Cổ Thiên Lạc, Mã Đức Chung, Trương Gia Huy', N'Tiếng Trung', N'100 phút', CAST(0x0000AAC000000000 AS DateTime), N'sumenhnoigian.png                                                                                                                                                                                                                                         ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P013', N'Trò Đùa Tử Thần ', N'Hài hước, Kinh dị', N'DEADTECTIVES sẽ theo chân một nhóm chuyên gia hay tìm hiểu những hiện tượng siêu nhiên và phát sóng trên các chương trình thực tế TV. Lần này, cả nhóm lên đường đến Mexico và khám phá căn nhà bí ẩn nhất quốc gia này, hòng tăng lượt xem cho chương trình của họ. Tuy nhiên, khi những bí mật đen tối nhất của căn nhà dần dần lộ rõ, các chuyên gia nhanh chóng nhận ra rằng …đây là chuyện hệ trọng chứ chẳng phải đùa bỡn như bao lần. Kỹ năng săn ma chưa có, một tí kiến thức thực tế lại càng không, cả nhóm phải chật vật tìm cách thoát khỏi căn nhà quỷ quái này.', N'Tony West', N'Martha Higareda, Chris Geere, Tina Ivlev', N'Tiếng Anh', N'92 phút', CAST(0x0000AAC700000000 AS DateTime), N'troduatuthan.png                                                                                                                                                                                                                                          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P014', N'Tươi Lên Đi, Mr.Lee', N'Gia đình, Tình cảm', N'Chul-soo là một người đàn ông đặc biệt. Mọi chuyện bất ngờ bắt đầu xảy đến với anh khi con gái anh- Saet-byeol xuất hiện. Saet-byeol đang bị ốm và phải nằm viện. Từng chuyện trong quá khứ và mối quan hệ cha con của Chul-soo bắt đầu được hé mở.', N'Lee Gye - Byeok', N'Cha Seung Won, Park Hae Joon', N'Tiếng Hàn', N'111 phút', CAST(0x0000AAC700000000 AS DateTime), N'tuoilendi.png                                                                                                                                                                                                                                             ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P015', N'Đảo Săn MồiKinh dị', N'Kinh dị', N'Tony- một thanh niên 17 tuổi phải trải qua thử thách trong một chương trình khám phá thiên nhiên: Ở một mình 3 đêm trên một hòn đảo hoang. Nhưng ngay lập tức cậu cảm nhận được mình đang phải đối mặt với một trong những bí mật khiếp đảm nhất của hòn đảo.', N'Franck Khalfoun', N'Jolene Anderson, Vela Cluff, Phodiso Dintwe', N'Tiếng Anh', N'85 phút', CAST(0x0000AACE00000000 AS DateTime), N'daosanmoi.png                                                                                                                                                                                                                                             ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P016', N'Quản gia người dơi', N'Hành động', N'Pennyworth là serie phim tiền truyện của Batman kể về Alfred Pennyworth, quản gia tại Dinh Thự nhà Wayne, không chỉ thế, Alfred còn được xem như một người thầy, người anh, người cha, và là một trong những trợ thủ đắc lực nhất của Kỵ Sĩ Bóng Đêm. Ông là một con người đa tài - không chỉ giỏi giang trong những việc nhỏ nhắn như bếp núc mà còn thành thạo trong việc chữa thương (vốn là sở trường của ông).

Không những thế, điều khiến Alfred nổi bật hơn cả chính quá khứ khá là huy hoàng của ông. Alfred từng là một điệp viên của MI-5 trước khi ông quyết định nghỉ hưu và theo đuổi nghiệp Sân Khấu Điện Ảnh. Sau đó, khi cha ông qua đời, Alfred đã đến Dinh Thự Wayne để nối nghiệp bố trở thành Quản Gia của gia đình nhà Wayne, lúc này Bruce Wayne vẫn chỉ còn là một đứa trẻ.', N'Bruno Heller', N'JackBanner, Palona Faith', N'Tiếng Anh', N'120 phút', CAST(0x0000AABB00000000 AS DateTime), N'quangianguoidoi.jpg                                                                                                                                                                                                                                       ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P017', N'Kẻ liều mạng', N'Hành động', N'Kẻ Báo Thù kể về lực lượng cảnh sát đang cố gắng ngăn chặn một tên tội phạm nguy hiểm đang mang trong cơ thể mình một quả bom. Điều tra phía cảnh sát cho biết hắn từng là một kẻ liều mạng, và đang mất trí nhớ', N'Behzad Khambata', N'Ishita Dutta', N'Tiếng Anh', N'107 phút', CAST(0x0000AAC400000000 AS DateTime), N'kelieumang.jpg                                                                                                                                                                                                                                            ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P018', N'Siêu anh hùng ShaZam', N'Hành động', N'Tất cả chúng ta đều là người hùng, vấn đề ở chỗ chúng ta phải biết cách phát huy năng lực của mình. Trong trường hợp của Bill Batson (Angel), với sự giúp đỡ của một phù thủy cổ xưa, chỉ cần nói lớn từ “Shazam!” là đứa trẻ 14 tuổi này có thể biến thành siêu anh hùng Shazam trưởng thành (Levi). Nhưng bên trong thân hình như một vị thần đó vẫn là trái tim của một đứa trẻ.

Cái tên Shazam được dựa trên chữ cái đầu của những vị thần dũng mãnh là Solomon, Hercules, Atlas, Zeus, Achilles cùng Mercury.', N'David F. Sandberg', N'Zachary Levi, Mark Strong', N'Tiếng Anh', N'132 phút', CAST(0x0000AAB800000000 AS DateTime), N'sieuanhhungshazam.jpg                                                                                                                                                                                                                                     ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P019', N'Hồn ma trở lại', N'Kinh dị', N'Tạm biệt cuộc sống phố thị, gia đình nhà John dọn đến sống tại một ngôi nhà cổ được xây dựng từ thời Victoria ở ngoại ô thành phố. Trong lúc dọn dẹp, cả nhà tình cờ phát hiện ra một chiếc rương cũ trên gác mái. Những vật dụng bên trong thuộc về gia đình người chủ trước từng qua đời không rõ nguyên nhân. Hàng loạt chuyện lạ thường, cùng các ám ảnh kinh hoàng bất đầu tấn công các thành viên khi lũ trẻ vô tình mở chiếc rương bí ẩn ấy…', N'Thomas Della Bella', N'Todd Lowe, Brooke Bulter, Lisa Brenner', N'Tiếng Anh', N'85 phút', CAST(0x0000AAAA00000000 AS DateTime), N'honmatrolai.jpg                                                                                                                                                                                                                                           ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P020', N'Vợ quỷ', N'Kinh dị', N'Một đôi vợ chồng trẻ vừa kết hôn không lâu thì người chồng phát giác ra những biểu hiện kỳ lạ của vợ mình. Những gì anh trông thấy chứng tỏ vợ anh đang bị quỷ ám. Liệu tình yêu và lòng kiên trì của chàng trai có khiến người vợ trẻ quay lại?', N'Pisut Praesangeam', N'Harin Suth, Fandee Chany', N'Tiếng Thái', N'100 phút', CAST(0x0000AAB800000000 AS DateTime), N'voquy.jpg                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P021', N'Mầm sống hiểm họa', N'Kinh dị', N'Một nhóm các phi hành gia sau nhiệm vụ thám hiểm sao Hỏa đã tình cờ phát hiện một mầm sống trên hành tinh này. Mầm sống có hình cây nấm tưởng chừng như vô hại bỗng hóa trở thành một sinh vật nguy hiểm, có khả năng xóa sạch sự sống trên Trái đất nếu để nó trở về..', N'Daniel Espinosa,', N'Hiroyuki Sanada, Ryan Reyolds', N'Tiếng Nhật', N'104 phút', CAST(0x0000AABB00000000 AS DateTime), N'mamsonghiemhoa.jpg                                                                                                                                                                                                                                        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P022', N'Phương thuốc kỳ bí', N'Kinh dị', N'Lấy bối cảnh ở một tương lai giả định, phim xoay quanh Một chàng nhân viên trẻ tuổi tham vọng (Dane DeHaan) được cử tới đón CEO của công ty về từ một “trung tâm điều trị” tại vùng núi Alps, Thụy Sĩ. Tưởng như đây là một chuyến đi đơn giản, anh đã không lường trước được những bí mật chết người mà nơi này đang cố che giấu. Bị ép buộc ở lại, chàng trai sớm hiểu rằng các phương thức chữa trị thần kì của nơi đây không giống như vẻ bề ngoài tốt đẹp của nó. Nhưng càng đào sâu tìm kiếm, anh càng chìm đắm vào những bí mật kinh hoàng đó.', N'Gore Verbinski', N'Dane Dehaan, Jason Íaacs', N'Tiếng Anh', N'146 phút', CAST(0x0000AAB600000000 AS DateTime), N'phuongthuockybi.jpg                                                                                                                                                                                                                                       ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P023', N'Gia tộc thần bí', N'Kinh dị', N'Câu chuyện xoay quanh gia đình Miêu Miêu, một gia đình đang sống bình an hạnh phúc. Cho đến một đêm Giáng Sinh, buổi sum họp gia đình ấm áp bỗng trở thành bữa cơm cuối cùng, cả nhà Miêu Miêu đều bị chết thảm, chỉ có mình Miêu Miêu là người sống sót.

Trong quá trình kiếm tìm chân tướng của vụ thảm sát, Miêu Miêu phát hiện ra mỗi thành viên trong gia đình đều đang cất giấu một bí mật to lớn. Bố, mẹ, và cậu em trai, giữa họ tựa như đang tồn tại một mối quan hệ mù mờ phức tạp, mà tất cả những điều này xuất phát từ vụ Miêu Miêu bị một người đàn ông bí ẩn cưỡng hiếp từ mấy tháng trước…', N'Hồ Trung ', N'Triệu Lộ Tư, Chí Bình', N'Tiếng Trung', N'93 phút', CAST(0x0000AAB300000000 AS DateTime), N'giatocthanbi.jpg                                                                                                                                                                                                                                          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P024', N' Nữ Hoàng Tuyết 3', N' Hoạt hình, Hài hước', N'Phim Nữ Hoàng Tuyết 3: Lửa và Băng (2016): Vướng phải đủ loại rắc rối là món quà hiếm có của gia đình Kai và Gerda. Lần này, họ phải trưởng thành và đối mặt với những vấn đề mang tầm toàn cầu', N'Aleksey Tsitsilin', N'Garik Kharlamov, Ivan Okhlobystin, Olga Zubkova', N'Tiếng Anh', N'89 phút', CAST(0x0000AAB200000000 AS DateTime), N'nuhoangtuyet3luavabang.jpg                                                                                                                                                                                                                                ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P025', N' Nữ Hoàng Tuyết 3:', N'Hoạt hình', N'Trong Dirge of Cerberus: Final Fantasy VII, người hùng của bạn sẽ không còn là chàng dũng sỹ Cloud Strife với thanh gươm to vật vã đeo đằng sau lưng', N' Takayoshi Nakazato', N' Beau Billingslea, Bob Joles', N'Tiếng Nhật', N'36 phút', CAST(0x0000AAB600000000 AS DateTime), N'finalfantasyviibannhactuthan.jpg                                                                                                                                                                                                                          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P026', N'Yêu tinh đại chiến', N'Hoạt hình', N'Khi Chloe phát hiện ra rằng gnomes vườn tại ngôi nhà mới của cô không chỉ đơn giản như vẻ bề ngoài của nó. Lúc này, cô phải quyết định giữa việc theo đuổi một cuộc sống trung học như cô mong muốn và tham gia cuộc chiến chống lại Troggs', N' Peter Lepeniotis', N'Becky G., Josh Peck, Tara Strong', N'Tiếng Anh', N'120 phút', CAST(0x0000AABB00000000 AS DateTime), N'yeutinhdaichien.jpg                                                                                                                                                                                                                                       ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P027', N'Giải Mã Giấc Mơ', N'Hoạt hình', N'Trước ngày diễn ra Thế vận hội Olympics tại Tokyo, cha của Kokone, một nữ sinh cấp 3, đột ngột biến mất một cách bí ẩn. Sở hữu khả năng kì lạ khi ngủ, Kokone vô tình tìm được những manh mối về cha mình trong giấc mơ. Kịch tính và đầy bất ngờ, Kokone bước vào hành trình giải mã những mảnh ghép để khám phá ra bí mật đằng sau', N' Kenji Kamiyama', N' Mitsuki Takahata, Rie Kugimiya', N'Tiếng Nhật', N'90 phút', CAST(0x0000AAC300000000 AS DateTime), N'giaimagiacmo.jpg                                                                                                                                                                                                                                          ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P028', N'Chân Nhỏ, Bạn Ở Đâu?', N'Hoạt hình, Hài hước', N'Sau lần chạm trán với Percy, một sinh vật với đôi chân bé nhỏ, người tuyết Migo quyết tâm thực hiện chuyến phiêu lưu của mình đến vùng đất xa xôi để chứng minh với cộng đồng của mình rằng Chân Nhỏ là có thật. Liệu Chân Nhỏ có thật sự đáng sợ như họ đã nghĩ? Hãy cùng Migo đi tìm sinh vật huyền bí này vào tháng 9 nhé!', N'Jason Reisig, Karey Kirkpatrick', N'Channing Tatum, Common, Danny DeVito, Ely Henry, Gina Rodriguez', N'Tiếng Anh', N'165 phút', CAST(0x0000AAC400000000 AS DateTime), N'channhobanodau.jpg                                                                                                                                                                                                                                        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P029', N'Đội Đặc Nhiệm Thỏ Rừng', N'Hoạt hình, Hành động', N'Botasky và Packy là các nhà thầu tư nhân, làm việc tại Trung Đông, với sự hỗ trợ từ một căn cứ trực thăng-di động xa xôi. Công việc của họ là “bắn tỉa” và “chỉ huy”, người chỉ huy là đội trưởng (theo giao thức quân sự chính xác). Nhiệm vụ của họ là trích xuất hai tù nhân, một đồng minh và một người địa phương', N'Kazuya Sasahara', N'Satoshi Hino, Tom Flynn, Will Prescott', N'Tiếng Anh', N'80 phút', CAST(0x0000AABB00000000 AS DateTime), N'doidacnhiemthorung.jpg                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P030', N'Những Chú Chó Hoàng Gia', N'Hoạt hình, Hài hước', N'Cuộc phưu lưu của Rex, chú chó corgi đáng yêu nhất nước Anh. Trong một lần vô tình, Rex bị lưu lạc ra thế giới bên ngoài nơi mà có rất nhiều thử thách cũng như các nguy hiểm rình rập.', N'Ben Stassen', N' Anthony Skordi, Colin Mcfarlane, Debra StephensonIain Mckee', N'Mỹ', N'85 phút', CAST(0x0000AABF00000000 AS DateTime), N'nhungchuchohoanggia.jpg                                                                                                                                                                                                                                   ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P031', N'Giáng Sinh Của Angela', N'Hoạt hình, Hài hước', N'Lấy bối cảnh ở Ireland vào những năm 1900, “Angela’s Christmas” là câu chuyện hài hước, ấm áp và thú vị về sức mạnh của gia đình và ước vọng trong sáng của một đứa trẻ mong rằng mỗi người trong gia đình mình đều được an toàn, ấm áp và hạnh phúc trong khoảng thời gian cuối năm đầy thiêng liêng và tươi đẹp', N' Damien O''Connor', N' Malachy Mccourt, Ruth Negga', N'Tiếng Anh', N'45 phút', CAST(0x0000AAB200000000 AS DateTime), N'giangsinhcuaangela.jpg                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P032', N'Học Viện Chống Khủng Bố', N' Hoạt hình', N'Grisaia: Phantom Trigger là sequel của bộ anime 3 phần Grisaia, kể về một nhóm nhân vật chính hoàn toàn mới. Câu chuyện theo chân các nữ sinh tại học viện Mihama.', N'Motoki Tanaka', N' Atsumi Tanezaki, Maaya Uchida, Yoshino Nanjô', N'Tiếng Nhật', N'95 phút', CAST(0x0000AACE00000000 AS DateTime), N'hocvienchongkhungbo.jpg                                                                                                                                                                                                                                   ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P033', N' Hội Siêu Quái Vật: Giải Cứu ', N'Hoạt hình', N'Hội Siêu Quái Vật cùng bạn bè dùng sức mạnh của mình để giúp cho 1 người bạn của mình hiểu rằng Halloween không có gì đáng sợ.', N'Jan Trump', N'Elyse Maloway, Erin Matthews, Vincent Tong', N'Tiếng Anh', N'45 phút', CAST(0x0000AABB00000000 AS DateTime), N'hoisieuquaivatgiaicuuhalloween.jpg                                                                                                                                                                                                                        ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P034', N'Lớp Học Ám Sát: 365 Ngày', N'Hoạt hình', N'Assassination Classroom The Movie: 365 Days 2016: bộ phim sẽ diễn ra vào ngày trước ngày họp lớp sau 7 năm tốt nghiệp của các học sinh lớp E. Yusei Matsui sẽ tham gia vào dự án phim. Nhà sản xuất cũng đã hé lộ tạo hình của hai nhân vật chính là Nagisa và Karma sau 7 năm.', N' Seiji Kishi', N' JUN FUKUYAMA, Mai Fuchigami, Nobuhiko Okamoto', N'Tiếng Nhật', N'93 phút', CAST(0x0000AAB800000000 AS DateTime), N'lophocamsat365ngay.jpg                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P035', N'Em đã yêu anh từ rất lâu', N'Tình cảm , Lãng Mạn', N'Zutto Mae kara Suki deshita kể về một nhóm bạn học sinh trung học mà tập trung vào nhất là hai người bạn thuở nhỏ Natsuki và Yuu. Bộ phim bắt đầu khi Natsuki thú nhận tình cảm của mình với Yuu nhưng không dám thẳng thắn bày tỏ mà lại nói với Yuu rằng cậu là đối tượng “thực hành” để tỏ tình. Vì vậy mà cả hai tiến tới và trở thành một “cặp đôi thực hành”, nhưng có vẻ rằng Natsuki đang tự lừa dối cảm xúc thật sự của bản thân.', N'Tetsuya Yanagisawa', N'Natsuki ', N'Tiếng Nhật', N'104 phút', CAST(0x0000AB5700000000 AS DateTime), N'35.JPG                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P036', N'Không Phải Lúc Chết', N'Hành Động', N'Trong "No Time To Die", Bond không còn hoạt động tình báo mà đang tận hưởng cuộc sống yên bình ở Jamaica. Tuy nhiên, quãng thời gian nghỉ ngơi của anh không kéo dài được lâu khi người bạn cũ Felix Leiter từ CIA xuất hiện, cầu xin sự giúp đỡ. Bond sẽ thực hiện nhiệm vụ giải cứu nhà khoa học bị bắt cóc, và từ đó dẫn anh đến với tên ác nhân sở hữu một loại công nghệ nguy hiểm.', N'Cary Joji Fukunaga', N'Micheal Jon', N'Mỹ ', N'134 phút', CAST(0x0000AB3300000000 AS DateTime), N'36.JPG                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [TheLoai], [GioiThieu], [DaoDien], [DienVien], [NgonNgu], [ThoiLuong], [NgayKhoiChieu], [Image]) VALUES (N'P037', N'Bond 25', N'Hành Động', N'Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', N'Joker Ken', N'Lux Anna', N'Mỹ', N'110 phút', CAST(0x0000AB3200000000 AS DateTime), N'37.JPG                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R01', N'Tầng 1')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R02', N'Tầng 1')
INSERT [dbo].[Phong] ([SoPhong], [ViTri]) VALUES (N'R03', N'Tầng 2')
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (1, N'123', N'Trần Thảo Nguyên', N'nguyen@gmail.com', N'012121212', N'111111', N'21-02-1998', N'nữ', N'Hà Nam', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (2, N'123', N'Nguyễn Thị Nhung', N'nhung@gmail.com', N'023232323', N'222222', N'13-06-1998', N'nữ', N'Hà Nam', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (3, N'manhdg98', N'Tả Huynh', N'manhdg98@gmail.com', N'0359741555', N'028098001235', N'10-12-1998', N'Nam', N'Hà Nội', 1, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (4, N'123', N'Nguyễn Văn Tiến', N'tien@gmail.com', N'01654226857', N'1982174642', N'10-12-1998', N'Nữ', N'Hà Nội', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (5, N'123', N'Nguyễn Thị Kim Chi', N'chi@gmail.com', N'0165277456', N'0351980002', N'06-06-1998', N'Nữ', N'Hà Nội', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (6, N'123', N'Nguyễn Tuấn Anh', N'anh@gmail.com', N'097362577', N'1987362526', N'11-11-2000', N'Nam', N'Hải Dương', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (7, N'123', N'Nguyễn Thị Nhung', N'nhungnguyen@gmail.com', N'0165422432', N'03512000288', N'06-06-1998', N'Nữ', N'Hải Dương', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (8, N'123', N'Nguyễn Thị Toan', N'toan@gmail.com', N'035110389', N'0192838299', N'01-01-2000', N'Nữ', N'Hưng Yên', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (9, N'123', N'Phạm Hồng Phi', N'phi@gmail.com', N'0167389290', N'02838177288', N'01-10-1999', N'Nam', N'Hà Nội', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (10, N'123', N'Ngô Tiến Mạnh', N'manh@gmail.com', N'094873628', N'16899273389', N'02-03-1995', N'Nam', N'Vĩnh Phúc', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (11, N'123', N'Nguyễn Thị Dạ Thảo', N'thao@gmail.com', N'0165488399', N'12908347733', N'01-03-1998', N'Nữ', N'Quảng Ninh', 0, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (12, N'123', N'Nguyễn Thị Hồng Nhung', N'nguyennhung@gmail.com', N'01633217722', N'03519800388', N'01-06-1998', N'Nữ', N'Hà Nam', 1, 1)
INSERT [dbo].[ThanhVien] ([MaTV], [MatKhau], [TenTV], [Email], [Sdt], [Cmnd], [NgaySinh], [GioiTinh], [DiaChi], [LoaiTK], [TinhTrang]) VALUES (17, N'123', N'Nguyễn Văn Tú', N'tu@gmail.com', N'016928373', N'0193746475', N'02-03-1990', N'Nam', N'Hải Phòng', 0, 0)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
INSERT [dbo].[Ve] ([MaTV], [MaLichChieu], [SoGhe], [GiaTien]) VALUES (1, N'LC002', N'01', 45000.0000)
ALTER TABLE [dbo].[LichChieu] ADD  DEFAULT ('2019-12-01') FOR [NgayChieu]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaTV])
REFERENCES [dbo].[ThanhVien] ([MaTV])
GO
USE [master]
GO
ALTER DATABASE [Nhom11BTL] SET  READ_WRITE 
GO
