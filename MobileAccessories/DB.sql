USE [master]
GO
/****** Object:  Database [DairyFarms_Data]    Script Date: 3/12/2020 9:58:02 am ******/
CREATE DATABASE [DairyFarms_Data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DairyFarms_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DairyFarms_Data.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DairyFarms_Data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DairyFarms_Data_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DairyFarms_Data] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DairyFarms_Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DairyFarms_Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DairyFarms_Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DairyFarms_Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DairyFarms_Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DairyFarms_Data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET RECOVERY FULL 
GO
ALTER DATABASE [DairyFarms_Data] SET  MULTI_USER 
GO
ALTER DATABASE [DairyFarms_Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DairyFarms_Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DairyFarms_Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DairyFarms_Data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DairyFarms_Data] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DairyFarms_Data', N'ON'
GO
ALTER DATABASE [DairyFarms_Data] SET QUERY_STORE = OFF
GO
USE [DairyFarms_Data]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/12/2020 9:58:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/12/2020 9:58:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryCode] [nvarchar](max) NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 3/12/2020 9:58:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/12/2020 9:58:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/12/2020 9:58:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201026064801_Init', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201128083841_today', N'3.1.9')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (1, N'PB100', N'Power Bank')
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (2, N'EPH2', N'Earphone')
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (3, N'MCSSD', N'Memory Card')
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (4, N'WCAV', N'Wireless Charger')
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (5, N'UC2', N'Micro-USB Connector')
INSERT [dbo].[Categories] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (6, N'TCC', N'Type-C Cable')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'Ambrane')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Sony')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'Syska')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (4, N'SanDisk')
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (5, N'Samsung')
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (1, 1, 2, N'Mahesh Goyal ', N'9963458250', CAST(N'2020-11-22T00:21:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (2, 4, 1, N'Abhishek ', N'6400115253', CAST(N'2020-11-23T00:23:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (3, 6, 1, N'Sumit ', N'6963635285', CAST(N'2020-11-25T00:20:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (1, N'10000 mAh Power Bank', 32, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (2, N'22000 mAh Power Bank', 55, 1, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (3, N'128 GB Memory Card', 77, 3, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (4, N'1 TB Memory Card', 45, 3, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (5, N'5V-9V variable Charger', 62, 4, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (6, N'Bass Booster EarPhone', 12, 2, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (7, N'USB to Micro USB Connector', 18, 5, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (8, N'USB to USB Type-C Datacable', 16, 6, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_Orders_ProductID]    Script Date: 3/12/2020 9:58:03 am ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ProductID] ON [dbo].[Orders]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 3/12/2020 9:58:03 am ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CompanyID]    Script Date: 3/12/2020 9:58:03 am ******/
CREATE NONCLUSTERED INDEX [IX_Products_CompanyID] ON [dbo].[Products]
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([CompanyID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompanyID]
GO
USE [master]
GO
ALTER DATABASE [DairyFarms_Data] SET  READ_WRITE 
GO
