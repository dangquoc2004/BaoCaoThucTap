USE [BCQT_TruyenThong]
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[Trang] [nvarchar](500) NULL,
	[ChuyenMucTin] [nvarchar](500) NULL,
	[TacGia] [nvarchar](500) NULL,
	[EmailNguoiTao] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[GioTao] [time](7) NULL,
	[NgayDuyet] [date] NULL,
	[GioDuyet] [time](7) NULL,
	[NgayChinhSuaLanCuoi] [date] NULL,
	[GioChinhSuaLanCuoi] [time](7) NULL,
 CONSTRAINT [PK_BaiBao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoBaiDang] [int] NULL,
	[SoBaiDangThuocNQ900] [int] NULL,
	[TyLeBaiDangCoNoiDungThuocNQ900TrenTongSoBaiDang] [float] NULL,
	[LuotTiepCan] [int] NULL,
	[TyLeTangGiamLuotTiepCanSoVoiThangTruoc] [float] NULL,
	[LuotTuongTac] [int] NULL,
	[TyLeTangGiamLuotTuongTacSoVoiThangTruoc] [float] NULL,
	[LuotXem] [int] NULL,
	[TyLeTangGiamLuotXemVideoSoVoiThangTruoc] [float] NULL,
	[LuotTheoDoi] [int] NULL,
	[TyLeTangGiamLuotTheoDoiSoVoiThangTruoc] [float] NULL,
	[NguoiTheoDoiHSSV] [int] NULL,
	[TyLeTangGiamNguoiTheoDoiHSSVSoVoiThangTruoc] [float] NULL,
	[NguoiTheoDoiPHHS] [int] NULL,
	[TyLeTangGiamNguoiTheoDoiPHHSSoVoiThangTruoc] [float] NULL,
 CONSTRAINT [PK_BaoCao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoFanpage]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoFanpage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TGBaoCao] [date] NULL,
 CONSTRAINT [PK_dmBaoCao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoMXH]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoMXH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TGBaoCao] [date] NULL,
 CONSTRAINT [PK_BaoCaoMXH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoSEO]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoSEO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBaoCao] [date] NULL,
 CONSTRAINT [PK_BaoCaoSEO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoWebsite]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoWebsite](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBaoCao] [date] NULL,
	[XepHangTenMienTaiVietNam] [int] NULL,
	[TenMienGioiThieu] [int] NULL,
	[LienKetNguoc] [int] NULL,
	[LuuLuongTruyCapTuNhien] [int] NULL,
	[TyLeTangGiamLuuLuongTruyCapTuNhien] [float] NULL,
	[SoLuongTuKhoaTuNhien] [int] NULL,
	[TyLeTangGiamSoLuongTuKhoaTuNhien] [float] NULL,
	[KetQuaTimKiemDacTrungDuocGoogleUuTiem] [int] NULL,
	[Top1_3] [int] NULL,
	[Top4_10] [int] NULL,
	[Top11_20] [int] NULL,
	[Top21_50] [int] NULL,
	[Top51_100] [int] NULL,
	[LuotHienThi] [int] NULL,
	[LuotNhapChuot] [int] NULL,
 CONSTRAINT [PK_BaoCaoWeb] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChienDichChuyenDoi]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChienDichChuyenDoi](
	[ID] [int] NOT NULL,
	[BaoCaoFanpageID] [int] NULL,
	[ChienDichID] [int] NULL,
	[NgayKetThucChienDich] [date] NULL,
	[Impressions] [int] NULL,
	[Reach] [int] NULL,
	[Leads] [int] NULL,
	[Cost] [int] NULL,
	[CostPerLead] [float] NULL,
	[Frequency] [float] NULL,
	[LeadConversionRate] [float] NULL,
 CONSTRAINT [PK_ChienDichChuyenDoi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChienDichTiepCan]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChienDichTiepCan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoFanpgeID] [int] NULL,
	[ChienDichID] [int] NULL,
	[NgayKetThucChienDich] [date] NULL,
	[Impressions] [int] NULL,
	[Views] [int] NULL,
	[Reach] [int] NULL,
	[Cost] [int] NULL,
	[CostPerReach] [float] NULL,
	[Frequency] [float] NULL,
	[ReachConversionRate] [float] NULL,
 CONSTRAINT [PK_ChienDichTiepCan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuThichWebsite]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuThichWebsite](
	[ID] [int] NULL,
	[ThuatNgu] [nvarchar](500) NULL,
	[DanhGia] [nvarchar](500) NULL,
	[YNghia] [nvarchar](500) NULL,
	[GiaiThich] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMS]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoLoi] [int] NULL,
	[ThoiGianSuaLoi] [float] NULL,
 CONSTRAINT [PK_CMS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChienDich]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChienDich](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loai] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
 CONSTRAINT [PK_ChienDich] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChuThichFanpage]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChuThichFanpage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Kenh] [nchar](10) NULL,
	[MucTieu] [nvarchar](50) NULL,
	[LoaiNoiDung] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NoiDungChinh] [nvarchar](500) NULL,
 CONSTRAINT [PK_ChuThichFanpage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChuThichMXH]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChuThichMXH](
	[ID] [int] NULL,
	[ThuatNgu] [nvarchar](500) NULL,
	[DanhGia] [nvarchar](500) NULL,
	[YNghia] [nvarchar](500) NULL,
	[GiaiThich] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmChuThichSEO]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmChuThichSEO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThuatNgu] [nvarchar](500) NULL,
	[DanhGia] [nvarchar](500) NULL,
	[YNghia] [nvarchar](500) NULL,
	[GiaiThich] [nvarchar](500) NULL,
 CONSTRAINT [PK_ChuThichSEO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmDonVi]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmDonVi](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](500) NULL,
 CONSTRAINT [PK_dmDonVi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmNguoiTao]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmNguoiTao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DonVi] [nvarchar](500) NULL,
 CONSTRAINT [PK_NguoiTao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmThanhPho]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmThanhPho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_dmThanhPho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmThuatNguFanpage]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmThuatNguFanpage](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[DanhGia] [nvarchar](250) NULL,
	[YNghia] [nvarchar](250) NULL,
	[GiaiThich] [nvarchar](500) NULL,
 CONSTRAINT [PK_ThuatNguFanpage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dmTuKhoa]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dmTuKhoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
 CONSTRAINT [PK_dmTuKhoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facebook]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facebook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoMXHID] [int] NULL,
	[SoBaiDang] [int] NULL,
	[SoBaiDangThuocNQ900] [int] NULL,
	[TyLeSoBaiDangCoNoiDungThuocNQ900TrenTongSoBaiDang] [float] NULL,
	[LuotTiepCan] [int] NULL,
	[TyLeTangGiamLuotTiepCanSoVoiThangTruoc] [float] NULL,
	[LuotTuongTac] [int] NULL,
	[TyLeTangGiamLuotTuongTacSoVoiThangTruoc] [float] NULL,
	[LuotXem] [int] NULL,
	[TyLeTangGiamLuotXemSoVoiThangTruoc] [float] NULL,
	[LuotTheoDoi] [int] NULL,
	[TyLeTangGiamLuotTheoDoiSoVoiThangTruoc] [float] NULL,
	[NguoiTheoDoiHSSV] [int] NULL,
	[TyLeTangGiamLuotTheoDoiLaHSSVSoVoiThangTruoc] [float] NULL,
	[NguoiTheoDoiPHHS] [int] NULL,
	[TyLeTangGiamLuotTheoDoiLaPHHSSoVoiThangTruoc] [float] NULL,
 CONSTRAINT [PK_Facebook] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguonThanhPho]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguonThanhPho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoSEOID] [int] NULL,
	[ThanhPhoID] [int] NULL,
	[SoLuongTruyCap] [int] NULL,
 CONSTRAINT [PK_NguonThanhPho] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguonTruyCap]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguonTruyCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoSEOID] [int] NULL,
	[SoPhienTruyCapTrungBinh] [int] NULL,
	[ThoiGianTrungBinhTrenTrang] [int] NULL,
	[Referral] [int] NULL,
	[OrganicSearch] [int] NULL,
	[Direct] [int] NULL,
	[OrganicSocial] [int] NULL,
 CONSTRAINT [PK_NguonTruyCAp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[col1] [int] NULL,
	[col2] [int] NULL,
	[col3] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietBiTruyCap]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBiTruyCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoSEOID] [int] NULL,
	[Mobile] [int] NULL,
	[Desktop] [int] NULL,
	[Tablet] [int] NULL,
	[SmartTV] [int] NULL,
 CONSTRAINT [PK_ThietBiTruyCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Threads]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Threads](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoMXHID] [int] NULL,
	[SoBaiDang] [int] NULL,
	[SoBaiDangCoNoiDungThuocNQ900] [int] NULL,
	[TyLeBaiDangCoNoiDungThuocNQ900TrenTongSoBaiDang] [float] NULL,
	[TangGiamTyLeBaiDangTrongDiem] [float] NULL,
	[LuotXem] [int] NULL,
	[TyLeTangGiamLuotXemSoVoiThangTruoc] [float] NULL,
	[LuotTuongTac] [int] NULL,
	[TyLeTangGiamLuotTuongTacSoVoiThangTruoc] [float] NULL,
	[LuotTheoDoi] [int] NULL,
	[TyLeTangGiamLuotTheoDoiSoVoiThangTruoc] [float] NULL,
 CONSTRAINT [PK_Threads] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TikTok]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TikTok](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoMXHID] [int] NULL,
	[SoBaiDang] [int] NULL,
	[SoBaiDangTrongDiemNQ900] [int] NULL,
	[TyLeBaiDangTrongDiemNQ900] [float] NULL,
	[LuotTiepCan] [int] NULL,
	[TyLeTangGiamLuotTiepCanSoVoiThangTruoc] [float] NULL,
	[LuotTuongTac] [int] NULL,
	[TyLeTangGiamLuotTuongTacSoVoiThangTruoc] [float] NULL,
	[LuotXem] [int] NULL,
	[TyLeTangGiamLuotXemSoVoiThangTruoc] [float] NULL,
	[LuotTheoDoi] [int] NULL,
	[TyLeTangGiamLuotTheoDoiSoVoiThangTruoc] [float] NULL,
 CONSTRAINT [PK_TikTok] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XepHang]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoWebsiteID] [int] NULL,
	[TuKhoaID] [int] NULL,
	[XepHang] [int] NULL,
 CONSTRAINT [PK_XepHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Youtube]    Script Date: 09/09/2025 3:41:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Youtube](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCaoMXHID] [int] NULL,
	[SoBaiDang] [int] NULL,
	[TyLeTangGiamSoBaiDangSoVoiThangTruoc] [float] NULL,
	[LuotHienThi] [int] NULL,
	[TyLeTangGiamLuotTiepCanSoVoiThangTruoc] [float] NULL,
	[PhutXem] [int] NULL,
	[TyLeTangGiamSoPhutXemSoVoiThangTruoc] [float] NULL,
	[LuotXem] [int] NULL,
	[TyLeTangGiamLuotXemSoVoiThangTruoc] [float] NULL,
	[LuotDangKy] [int] NULL,
	[TyLeTangGiamLuotDangKySoVoiThangTruoc] [float] NULL,
 CONSTRAINT [PK_Youtube] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
