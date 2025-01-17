USE [master]
GO
/****** Object:  Database [DBGiaChiFinal]    Script Date: 4/30/2024 2:49:56 AM ******/
CREATE DATABASE [DBGiaChiFinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBGiaChiFinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBGiaChiFinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBGiaChiFinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBGiaChiFinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBGiaChiFinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBGiaChiFinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBGiaChiFinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBGiaChiFinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBGiaChiFinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBGiaChiFinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBGiaChiFinal] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBGiaChiFinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBGiaChiFinal] SET  MULTI_USER 
GO
ALTER DATABASE [DBGiaChiFinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBGiaChiFinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBGiaChiFinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBGiaChiFinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBGiaChiFinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBGiaChiFinal] SET QUERY_STORE = OFF
GO
USE [DBGiaChiFinal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/30/2024 2:49:56 AM ******/
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
/****** Object:  Table [dbo].[About]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[ProductId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CustomerId] [bigint] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[PickupLocation] [nvarchar](max) NULL,
	[DropoffLocation] [nvarchar](max) NULL,
	[Qty] [int] NOT NULL,
	[PickupDate] [datetime2](7) NULL,
	[ReturnDate] [datetime2](7) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[PickupDateTime] [time](7) NULL,
	[ReturnDateTime] [time](7) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Year] [int] NOT NULL,
	[Cost] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[BrandId] [bigint] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[DriverId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsAuto] [bit] NOT NULL,
	[Km] [int] NOT NULL,
	[Seat] [int] NOT NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ProductId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StarOfDriver]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StarOfDriver](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Star] [int] NOT NULL,
	[DriverId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_StarOfDriver] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StarOfProduct]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StarOfProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Star] [int] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_StarOfProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Avartar] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[IsSupperAdmin] [bit] NOT NULL,
	[Type] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViewOfProduct]    Script Date: 4/30/2024 2:49:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViewOfProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[View] [int] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ViewOfProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240324020722_InnitDB', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326094953_addTableRequest', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240327041043_AddColumnIntoTableProduct', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240328064802_addColumn2803', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240328065604_addColumn2803-01', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240328093231_addColumn2803-02', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([Id], [Content], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'<section class="section about-sec">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 aos-init aos-animate" data-aos="fade-down">
<div class="about-img">
<div class="about-exp"><span>12+ years of experiences</span></div>

<div class="abt-img"><img alt="About us" class="img-fluid" src="Images/about-us.png" /></div>
</div>
</div>

<div class="col-lg-6 aos-init aos-animate" data-aos="fade-down">
<div class="about-content">
<h6>ABOUT OUR COMPANY</h6>

<h2>Best Solution For Cleaning Services L&ecirc; Gia Chi</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim minim veniam, quis nostrud exercitation ullamco laboris nisi esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>

<div class="row">
<div class="col-md-6">
<ul>
	<li>At vero et accusamus iusto dignissimos</li>
	<li>At vero et accusamus iusto dignissimos</li>
</ul>
</div>

<div class="col-md-6">
<ul>
	<li>Nam libero tempore, cum soluta nobis</li>
	<li>Nam libero tempore, cum soluta nobis</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
', CAST(N'2024-03-28T16:32:30.5090269' AS DateTime2), CAST(N'2024-03-28T16:32:30.5090272' AS DateTime2), 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [ImageURL], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Toyota', N'~/Uploads/Brand/220e75fc-19d7-430b-b1b6-38616f45fb8b.jpg', CAST(N'2024-03-26T10:21:56.8722926' AS DateTime2), CAST(N'2024-03-26T10:21:57.4064501' AS DateTime2), 0, 1, 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [ImageURL], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'Lexus', N'~/Uploads/Brand/c15c0b9e-ea06-4349-a16a-b4e20a4e4961.jpg', CAST(N'2024-03-26T10:18:38.8303658' AS DateTime2), CAST(N'2024-03-26T10:18:38.8303696' AS DateTime2), 0, 1, 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [ImageURL], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, N'Kia morning', N'~/Uploads/Brand/fc637999-c558-422c-bf56-f22d1ea2e46d.jpg', CAST(N'2024-03-26T10:19:54.7343179' AS DateTime2), CAST(N'2024-03-26T10:19:54.7343208' AS DateTime2), 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Luxury', CAST(N'2024-03-26T10:23:49.2002221' AS DateTime2), CAST(N'2024-03-26T10:23:49.2002261' AS DateTime2), 0, 1, 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'Normal', CAST(N'2024-03-26T10:23:56.8822208' AS DateTime2), CAST(N'2024-03-26T10:23:56.8822250' AS DateTime2), 0, 1, 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, N'Basic', CAST(N'2024-03-26T10:24:07.9118460' AS DateTime2), CAST(N'2024-03-26T10:24:07.9118509' AS DateTime2), 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Content], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'<div class="contact-info-area">
<div class="row">
<div class="col-lg-3 col-md-6 col-12 d-flex aos-init aos-animate" data-aos="fade-down" data-aos-delay="0.1" data-aos-duration="1200">
<div class="single-contact-info flex-fill">
<h3>Phone Number</h3>
<strong><a href="tel:(888)888-8888">(888) 888-8888</a></strong></div>
</div>

<div class="col-lg-3 col-md-6 col-12 d-flex aos-init aos-animate" data-aos="fade-down" data-aos-delay="0.2" data-aos-duration="1200">
<div class="single-contact-info flex-fill">
<h3>Email Address&nbsp;</h3>
<strong><a href="mailto:johnsmith@example.com"><strong>johnsmith@example.com</strong></a></strong></div>
</div>

<div class="col-lg-3 col-md-6 col-12 d-flex aos-init aos-animate" data-aos="fade-down" data-aos-delay="0.3" data-aos-duration="1200">
<div class="single-contact-info flex-fill">
<h3>Location</h3>
<strong><a href="javascript:void(0);">367 Hillcrest Lane,USA</a></strong></div>
</div>

<div class="col-lg-3 col-md-6 col-12 d-flex aos-init aos-animate" data-aos="fade-down" data-aos-delay="0.4" data-aos-duration="1200">
<div class="single-contact-info flex-fill">
<h3>Opening Hours</h3>
<strong><a href="javascript:void(0);">Mon - Sat (10.00AM - 05.30PM)</a></strong></div>
</div>
</div>
</div>
', CAST(N'2024-03-28T16:32:30.5090851' AS DateTime2), CAST(N'2024-03-28T16:32:30.5090854' AS DateTime2), 0, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Code], [Price], [Qty], [CustomerName], [Phone], [Address], [Email], [Status], [Description], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete], [CustomerId]) VALUES (3, N'', CAST(800000.00 AS Decimal(18, 2)), 1, N'guts tu', N'0989410324', N'HCM', N'tunx@devblock.net', 0, N'', CAST(N'2024-04-30T02:10:01.5271944' AS DateTime2), CAST(N'2024-04-30T02:10:01.5271968' AS DateTime2), 0, 0, 1, 1, NULL)
INSERT [dbo].[Order] ([Id], [Code], [Price], [Qty], [CustomerName], [Phone], [Address], [Email], [Status], [Description], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete], [CustomerId]) VALUES (4, N'', CAST(800000.00 AS Decimal(18, 2)), 1, N'guts tu', N'0989410324', N'HCM', N'tunx@devblock.net', 0, N'', CAST(N'2024-04-30T02:09:59.3919054' AS DateTime2), CAST(N'2024-04-30T02:09:59.3919074' AS DateTime2), 0, 0, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Phone], [Location], [Year], [Cost], [Description], [Status], [BrandId], [CategoryId], [DriverId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete], [IsAuto], [Km], [Seat], [Code]) VALUES (1, N'Toyota grosss', N'0987654321', N'Đà Nẵng City', 2021, 800000, N'<div>
<h4>Description of Listing</h4>
</div>

<div>
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>

<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
</div>
', 0, 1, 1, 3, CAST(N'2024-03-26T23:38:19.0425396' AS DateTime2), CAST(N'2024-03-26T23:38:19.7294803' AS DateTime2), 0, 0, 1, 0, 0, 0, 0, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Phone], [Location], [Year], [Cost], [Description], [Status], [BrandId], [CategoryId], [DriverId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete], [IsAuto], [Km], [Seat], [Code]) VALUES (2, N'Gia Chi Buon Ngu', N'0987654321', N'Ho Chi Minh', 2023, 50000, N'<p>Xe ghe</p>
', 0, 2, 3, 3, CAST(N'2024-03-27T00:57:13.7689913' AS DateTime2), CAST(N'2024-03-27T00:57:13.7689915' AS DateTime2), 1, NULL, 1, 0, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([Id], [ImageURL], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'~/Uploads/Product/c5e06084-c20f-4a33-bf9d-cd83efce79b0.jpg', 1, CAST(N'2024-03-26T10:29:04.0100835' AS DateTime2), CAST(N'2024-03-26T10:29:04.0100871' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[ProductImage] ([Id], [ImageURL], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'~/Uploads/Product/35999b57-79bf-41e7-bc7e-fc28f3502db2.jpg', 1, CAST(N'2024-03-26T10:29:49.5431287' AS DateTime2), CAST(N'2024-03-26T10:29:49.5431308' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[ProductImage] ([Id], [ImageURL], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, N'~/Uploads/Product/de64d7b0-8a44-45fe-9362-64b06763ef40.jpg', 1, CAST(N'2024-03-26T10:29:55.2203606' AS DateTime2), CAST(N'2024-03-26T10:29:55.2203616' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[ProductImage] ([Id], [ImageURL], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (4, N'~/Uploads/Product/aa862162-3e3e-48d3-83e9-a00fb89f6b25.jpg', 2, CAST(N'2024-03-27T00:57:21.2374699' AS DateTime2), CAST(N'2024-03-27T00:57:21.2374709' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[ProductImage] ([Id], [ImageURL], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (5, N'~/Uploads/Product/9d537f1d-a2c1-4e26-b72e-5b5eebec193e.jpg', 2, CAST(N'2024-03-27T00:57:21.2720478' AS DateTime2), CAST(N'2024-03-27T00:57:21.2720486' AS DateTime2), 1, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([Id], [UserId], [Name], [Email], [Phone], [Comment], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, NULL, N'Lê Gia Chi', N'2onlyhubi@gmail.com', N'0987654321', N'Tôi muốn thuê 1 chiếc Toyata gross năm 2020 ngày 26/04/2024', CAST(N'2024-03-26T23:22:04.1518968' AS DateTime2), CAST(N'2024-03-26T23:22:04.1519011' AS DateTime2), 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'Employee', CAST(N'2024-03-28T16:32:30.5088408' AS DateTime2), CAST(N'2024-03-28T16:32:30.5088452' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'Admin', CAST(N'2024-03-28T16:32:30.5089166' AS DateTime2), CAST(N'2024-03-28T16:32:30.5089169' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, N'Customer', CAST(N'2024-03-28T16:32:30.5089171' AS DateTime2), CAST(N'2024-03-28T16:32:30.5089172' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[Role] ([Id], [Name], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (4, N'Driver', CAST(N'2024-03-28T16:32:30.5089174' AS DateTime2), CAST(N'2024-03-28T16:32:30.5089175' AS DateTime2), 1, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, N'admin@gmail.com', N'123', N'098765432', N'admin@gmail.com', NULL, NULL, NULL, 0, 0, CAST(N'2024-03-28T16:32:30.5065866' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, N'GiaChi@gmail.com', N'123456', N'0987654321', N'GiaChi', N'', N'Đà Nẵng', CAST(N'2024-01-15T09:11:00.0000000' AS DateTime2), 0, 0, CAST(N'2024-03-24T09:12:04.5245553' AS DateTime2), CAST(N'2024-03-24T09:12:04.5245585' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, N'driver1@gmail.com', N'123456', N'0987654321', N'driver1', N'', N'Đà Nẵng 2', CAST(N'2024-03-19T09:12:00.0000000' AS DateTime2), 0, 0, CAST(N'2024-03-24T09:18:43.7653622' AS DateTime2), CAST(N'2024-03-24T09:18:43.7653645' AS DateTime2), 1, 1, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (4, N'driver2@gmail.com', N'123456', N'0987654321', N'driver2', N'', N'ĐN2', CAST(N'2024-03-19T09:15:00.0000000' AS DateTime2), 0, 0, CAST(N'2024-03-24T09:16:00.3608161' AS DateTime2), CAST(N'2024-03-24T09:16:00.3608182' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (5, N'Customer1@gmail.com', N'123456', N'', N'Customer1', N'', N'ĐN', CAST(N'2024-03-19T09:19:00.0000000' AS DateTime2), 0, 0, CAST(N'2024-03-24T09:19:12.3028450' AS DateTime2), CAST(N'2024-03-24T09:19:12.3028549' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (6, N'Customer2@gmail.com', N'123456', N'0987654321', N'Customer2', N'', N'ĐN', CAST(N'2024-03-24T09:19:00.0000000' AS DateTime2), 0, 0, CAST(N'2024-03-24T09:20:03.5105737' AS DateTime2), CAST(N'2024-03-24T09:20:03.5105963' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (8, N'giachi@gmail.com', N'123456', N'0999999999', N'Gia chi', N'', N'', NULL, 0, 0, CAST(N'2024-03-26T23:13:40.1257512' AS DateTime2), CAST(N'2024-03-26T23:13:40.1257533' AS DateTime2), 0, NULL, 1, 0)
INSERT [dbo].[User] ([Id], [Email], [Password], [Phone], [FullName], [Avartar], [Address], [DateOfBirth], [IsSupperAdmin], [Type], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (9, N'2onlyhubi@gmail.com', N'123456', N'0987654321', N'Lê Gia Chi', N'', N'', NULL, 0, 0, CAST(N'2024-03-26T23:18:10.2656854' AS DateTime2), CAST(N'2024-03-26T23:18:10.2656868' AS DateTime2), 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, 2, 1, CAST(N'2024-03-28T16:32:30.5089628' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 1, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (2, 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (3, 4, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 1, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (4, 4, 4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (5, 3, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (6, 3, 6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, NULL, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (7, 3, 7, CAST(N'2024-04-30T02:09:23.3501175' AS DateTime2), CAST(N'2024-04-30T02:09:23.3501188' AS DateTime2), 0, NULL, 0, 1)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (8, 3, 8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, 0)
INSERT [dbo].[UserRole] ([Id], [RoleId], [UserId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (9, 3, 9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[ViewOfProduct] ON 

INSERT [dbo].[ViewOfProduct] ([Id], [View], [ProductId], [CreatedAt], [UpdatedAt], [CreatedBy], [UpdatedBy], [IsActive], [IsDelete]) VALUES (1, 95, 1, CAST(N'2024-03-27T14:08:56.4368033' AS DateTime2), CAST(N'2024-03-27T14:08:56.4468851' AS DateTime2), 0, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ViewOfProduct] OFF
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAuto]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Km]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Seat]
GO
USE [master]
GO
ALTER DATABASE [DBGiaChiFinal] SET  READ_WRITE 
GO
