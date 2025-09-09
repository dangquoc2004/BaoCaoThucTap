USE [SITE]
GO
/****** Object:  Table [dbo].[dmCanBo]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmCanBo](
	[ID] [int] NOT NULL,
	[MaCanBo] [nvarchar](50) NULL,
 CONSTRAINT [PK_CanBoChamSoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChuongTrinhNopHoSoXetTuyen]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChuongTrinhNopHoSoXetTuyen](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
 CONSTRAINT [PK__ChuongTr__75F3543A1D873735] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChuyenNganhChuyenSau]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChuyenNganhChuyenSau](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmChuyenNganhChuyenSau] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmNguonData]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmNguonData](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguonGioiThieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmNhomTruong]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmNhomTruong](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmNhomTruong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmPhuongThucXetTuyen]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmPhuongThucXetTuyen](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](250) NULL,
 CONSTRAINT [PK_PhuongThuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmTinhTP]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmTinhTP](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmTinhTP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmTruong]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmTruong](
	[ID] [int] NOT NULL,
	[TinhID] [int] NOT NULL,
	[Ten] [nvarchar](500) NULL,
 CONSTRAINT [PK_dmTruong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 09/09/2025 4:20:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CanBoID] [int] NULL,
	[TinhID] [int] NULL,
	[TruongID] [int] NULL,
	[NguonDataID] [int] NULL,
	[NhomTruongID] [int] NULL,
	[PhuongThucXetTuyenID] [int] NULL,
	[ChuongTrinhNopHoSoXetTuyenID] [int] NULL,
	[ChuyenNganhChuyenSauID] [int] NULL,
	[NguoiRaQuyetDinh] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
	[HoVaTen] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](250) NULL,
	[SDT] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[KetQuaIelts] [nvarchar](250) NULL,
	[DoiTuongGioiThieu] [nvarchar](250) NULL,
	[ThanhToanChinhSachGioiThieu] [nvarchar](250) NULL,
	[ChuTaiKhoan] [nvarchar](250) NULL,
	[STK] [nvarchar](250) NULL,
	[ChiNhanhBank] [nvarchar](250) NULL,
	[ThanhToanChiPhiGioiThieu] [nvarchar](250) NULL,
	[MucDoTiemNang] [nvarchar](50) NULL,
	[LOA] [nvarchar](250) NULL,
	[HoatDongDeoBam] [nvarchar](250) NULL,
	[SoLuongHoatDongDeoBamThamGia] [int] NULL,
	[DuKienThuTuNguyenVongDangKy] [int] NULL,
	[ChiTietChamSoc] [nvarchar](250) NULL,
	[NguoiThucHien] [nvarchar](50) NULL,
	[ThoiGianTao] [datetime] NULL,
	[ThoiGianCapNhat] [datetime] NULL,
 CONSTRAINT [PK_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
