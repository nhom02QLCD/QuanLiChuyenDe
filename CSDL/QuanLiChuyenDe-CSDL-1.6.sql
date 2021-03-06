USE [master]
GO
/****** Object:  Database [QLCDe]    Script Date: 4/13/2018 1:06:01 PM ******/
CREATE DATABASE [QLCDe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCDe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLCDe.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLCDe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLCDe_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLCDe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCDe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCDe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCDe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCDe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCDe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCDe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCDe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLCDe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCDe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCDe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCDe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCDe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCDe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCDe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCDe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCDe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLCDe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCDe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCDe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCDe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCDe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCDe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCDe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCDe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCDe] SET  MULTI_USER 
GO
ALTER DATABASE [QLCDe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCDe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCDe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCDe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLCDe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLCDe]
GO
/****** Object:  Table [dbo].[CHUYENDE]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENDE](
	[MaChuyenDe] [nchar](10) NOT NULL,
	[TenChuyenDe] [nvarchar](50) NULL,
	[MaNganh] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUYENNGANH]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENNGANH](
	[MaNganh] [nchar](10) NOT NULL,
	[TenNganh] [nvarchar](50) NULL,
	[SLChuyenDe] [int] NULL,
	[SLSinhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANGKI]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKI](
	[IDMo] [nchar](10) NOT NULL,
	[MaSinhVien] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocChuyenNganh]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocChuyenNganh](
	[MaSinhVien] [nchar](10) NOT NULL,
	[MaNganh] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOCKI]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCKI](
	[TenHocKi] [nvarchar](50) NOT NULL,
	[NamHoc] [int] NOT NULL,
 CONSTRAINT [PK_HOCKI] PRIMARY KEY CLUSTERED 
(
	[TenHocKi] ASC,
	[NamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MO]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MO](
	[IDMo] [nchar](10) NOT NULL,
	[MaChuyenDe] [nchar](10) NULL,
	[TenHocKi] [nvarchar](50) NULL,
	[SLSV] [int] NULL,
	[NamHoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 4/13/2018 1:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSinhVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Phai] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](250) NULL,
	[MaNganh] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CHUYENDE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENDE_CHUYENNGANH] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[CHUYENNGANH] ([MaNganh])
GO
ALTER TABLE [dbo].[CHUYENDE] CHECK CONSTRAINT [FK_CHUYENDE_CHUYENNGANH]
GO
ALTER TABLE [dbo].[DANGKI]  WITH CHECK ADD  CONSTRAINT [FK_DANGKI_MO] FOREIGN KEY([IDMo])
REFERENCES [dbo].[MO] ([IDMo])
GO
ALTER TABLE [dbo].[DANGKI] CHECK CONSTRAINT [FK_DANGKI_MO]
GO
ALTER TABLE [dbo].[DANGKI]  WITH CHECK ADD  CONSTRAINT [FK_DANGKI_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DANGKI] CHECK CONSTRAINT [FK_DANGKI_SINHVIEN]
GO
ALTER TABLE [dbo].[HocChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_HocChuyenNganh_CHUYENNGANH] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[CHUYENNGANH] ([MaNganh])
GO
ALTER TABLE [dbo].[HocChuyenNganh] CHECK CONSTRAINT [FK_HocChuyenNganh_CHUYENNGANH]
GO
ALTER TABLE [dbo].[HocChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_HocChuyenNganh_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[HocChuyenNganh] CHECK CONSTRAINT [FK_HocChuyenNganh_SINHVIEN]
GO
ALTER TABLE [dbo].[MO]  WITH CHECK ADD  CONSTRAINT [FK_MO_CHUYENDE] FOREIGN KEY([MaChuyenDe])
REFERENCES [dbo].[CHUYENDE] ([MaChuyenDe])
GO
ALTER TABLE [dbo].[MO] CHECK CONSTRAINT [FK_MO_CHUYENDE]
GO
ALTER TABLE [dbo].[MO]  WITH CHECK ADD  CONSTRAINT [FK_MO_HOCKI] FOREIGN KEY([TenHocKi], [NamHoc])
REFERENCES [dbo].[HOCKI] ([TenHocKi], [NamHoc])
GO
ALTER TABLE [dbo].[MO] CHECK CONSTRAINT [FK_MO_HOCKI]
GO
USE [master]
GO
ALTER DATABASE [QLCDe] SET  READ_WRITE 
GO
