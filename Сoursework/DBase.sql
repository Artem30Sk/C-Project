USE [master]
GO
/****** Object:  Database [Sweetshop]    Script Date: 10.09.2022 15:40:36 ******/
CREATE DATABASE [Sweetshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sweetshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Sweetshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sweetshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Sweetshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Sweetshop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sweetshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sweetshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sweetshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sweetshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sweetshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sweetshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sweetshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sweetshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sweetshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sweetshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sweetshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sweetshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sweetshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sweetshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sweetshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sweetshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sweetshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sweetshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sweetshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sweetshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sweetshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sweetshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sweetshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sweetshop] SET RECOVERY FULL 
GO
ALTER DATABASE [Sweetshop] SET  MULTI_USER 
GO
ALTER DATABASE [Sweetshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sweetshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sweetshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sweetshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sweetshop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sweetshop', N'ON'
GO
ALTER DATABASE [Sweetshop] SET QUERY_STORE = OFF
GO
USE [Sweetshop]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JoinHistory]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JoinHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
 CONSTRAINT [PK_JoinHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manadgers]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manadgers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Manadgers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Counts] [int] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[Manafacturer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeProduct]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRecipes] [int] NOT NULL,
	[IdProducts] [int] NOT NULL,
 CONSTRAINT [PK_RecipeProduct_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[DataCreate] [date] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysAdmin]    Script Date: 10.09.2022 15:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysAdmin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_SysAdmin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AccountType] ([Code], [Name]) VALUES (1, N'SysAdmin')
INSERT [dbo].[AccountType] ([Code], [Name]) VALUES (2, N'Admin')
INSERT [dbo].[AccountType] ([Code], [Name]) VALUES (3, N'Manadger')
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Email], [Password], [Type]) VALUES (1, N'Борис Совун', N'admin', N'admin', 2)
INSERT [dbo].[Admin] ([Id], [Name], [Email], [Password], [Type]) VALUES (2, N'Илья Нос', N'lampa1', N'vvb123', 2)
INSERT [dbo].[Admin] ([Id], [Name], [Email], [Password], [Type]) VALUES (3, N'Евгений Колесник', N'nimpak', N'332fafc', 2)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[JoinHistory] ON 

INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (1, N'qqqwe', N'rret4', CAST(N'2021-05-10T19:07:34.677' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (2, N'jock0', N'hoha1', CAST(N'2021-05-10T19:14:28.437' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (3, N'adm1', N'amd7', CAST(N'2021-05-11T13:16:32.620' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4, N'adm1', N'amd7', CAST(N'2021-05-11T17:06:33.677' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5, N'adm1', N'amd7', CAST(N'2021-05-11T17:08:43.527' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (6, N'adm1', N'amd7', CAST(N'2021-05-11T17:11:05.300' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (7, N'adm1', N'amd7', CAST(N'2021-05-11T17:19:45.487' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (8, N'adm1', N'amd7', CAST(N'2021-05-25T10:46:46.577' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (9, N'adm1', N'amd7', CAST(N'2021-05-25T10:46:54.283' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (10, N'adm1', N'amd7', CAST(N'2021-05-25T10:55:10.290' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (11, N'adm1', N'amd7', CAST(N'2021-05-25T10:56:16.590' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (12, N'adm1', N'amd7', CAST(N'2021-05-25T11:03:28.067' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (13, N'adm1', N'amd7', CAST(N'2021-05-25T11:16:38.343' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (14, N'adm1', N'amd7', CAST(N'2021-05-25T11:16:43.357' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (15, N'adm1', N'amd7', CAST(N'2021-05-25T11:16:53.623' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (16, N'adm1', N'amd7', CAST(N'2021-05-25T11:17:27.623' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (17, N'adm1', N'amd7', CAST(N'2021-05-25T11:18:02.390' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (18, N'adm1', N'amd7', CAST(N'2021-05-26T09:29:14.230' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (19, N'adm1', N'amd7', CAST(N'2021-05-26T09:29:35.353' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (20, N'adm1', N'amd7', CAST(N'2021-05-26T09:30:47.803' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (21, N'adm1', N'amd7', CAST(N'2021-05-30T14:44:11.397' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (22, N'adm1', N'amd7', CAST(N'2021-05-30T14:45:26.603' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (23, N'adm1', N'amd7', CAST(N'2021-05-30T14:45:31.747' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (24, N'adm1', N'amd7', CAST(N'2021-05-30T14:47:43.243' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (25, N'adm1', N'amd7', CAST(N'2021-05-30T16:08:06.427' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (26, N'adm1', N'amd7', CAST(N'2021-05-30T16:20:27.900' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (27, N'adm1', N'amd7', CAST(N'2021-05-30T17:38:05.070' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (28, N'adm1', N'amd7', CAST(N'2021-05-30T18:55:57.520' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (29, N'adm1', N'amd7', CAST(N'2021-05-30T19:00:04.223' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (30, N'adm1', N'amd7', CAST(N'2021-05-30T19:03:30.507' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (31, N'adm1', N'amd7', CAST(N'2021-05-30T19:03:41.717' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (32, N'adm1', N'amd7', CAST(N'2021-05-30T21:16:07.120' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (33, N'adm1', N'amd7', CAST(N'2021-05-31T10:43:23.227' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (34, N'adm1', N'amd7', CAST(N'2021-05-31T11:47:21.897' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (35, N'nimpak', N'332fafc', CAST(N'2021-05-31T11:47:39.070' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (36, N'nimpak', N'332fafc', CAST(N'2021-05-31T11:50:00.810' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (37, N'adm1', N'amd7', CAST(N'2021-06-01T19:14:23.030' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (38, N'nimpak', N'332fafc', CAST(N'2021-06-01T19:14:36.617' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (39, N'nimpak', N'332fafc', CAST(N'2021-06-01T19:18:18.007' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (40, N'nimpak', N'332fafc', CAST(N'2021-06-01T19:39:54.367' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (41, N'nimpak', N'332fafc', CAST(N'2021-06-01T21:18:49.027' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (42, N'nimpak', N'332fafc', CAST(N'2021-06-01T21:23:09.943' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (43, N'nimpak', N'332fafc', CAST(N'2021-06-01T21:23:46.763' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (44, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:12:38.020' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (45, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:15:08.713' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (46, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:17:19.250' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (47, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:19:47.177' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (48, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:22:32.927' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (49, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:30:46.650' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (50, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:31:29.937' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (51, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:33:05.740' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (52, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:36:27.637' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (53, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:38:33.017' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (54, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:40:31.890' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (55, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:42:02.593' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (56, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:44:03.570' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (57, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:46:34.780' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (58, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:49:26.117' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (59, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:50:08.960' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (60, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:51:49.657' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (61, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:52:36.133' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (62, N'nimpak', N'332fafc', CAST(N'2021-06-02T10:53:18.223' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (63, N'nimpak', N'332fafc', CAST(N'2021-06-02T11:03:52.833' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (64, N'nimpak', N'332fafc', CAST(N'2021-06-02T11:04:37.283' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (65, N'nimpak', N'332fafc', CAST(N'2021-06-03T10:10:07.207' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (66, N'nimpak', N'332fafc', CAST(N'2021-06-03T11:06:45.810' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (67, N'nimpak', N'332fafc', CAST(N'2021-06-03T11:08:14.590' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (1008, N'nimpak', N'332fafc', CAST(N'2021-06-04T13:39:30.313' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (1009, N'nimpak', N'332fafc', CAST(N'2021-06-04T13:47:27.530' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (2008, N'nimpak', N'332fafc', CAST(N'2021-06-04T13:57:12.087' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (2009, N'nimpak', N'332fafc', CAST(N'2021-06-04T13:57:26.237' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (3008, N'nimpak', N'332fafc', CAST(N'2021-06-04T14:01:05.490' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4008, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:00:06.660' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4009, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:03:09.337' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4010, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:03:48.823' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4011, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:05:07.493' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4012, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:05:35.310' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4013, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:05:55.117' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4014, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:07:11.680' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4015, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:07:32.167' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4016, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:07:48.020' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4017, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:08:22.293' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4018, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:08:42.723' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4019, N'nimpak', N'332fafc', CAST(N'2021-06-04T18:09:07.693' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4020, N'nimpak', N'332fafc', CAST(N'2021-06-04T23:36:49.727' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4021, N'adm1', N'amd7', CAST(N'2021-06-05T00:04:27.537' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4022, N'666', N'666', CAST(N'2021-06-05T00:05:41.700' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4023, N'adm1', N'amd7', CAST(N'2021-06-05T00:05:48.447' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4024, N'nimpak', N'332fafc', CAST(N'2021-06-05T13:01:50.787' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4025, N'nimpak', N'332fafc', CAST(N'2021-06-06T19:22:55.050' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4026, N'adm1', N'amd7', CAST(N'2021-06-06T19:27:02.523' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4027, N'fafcha9', N'gg73', CAST(N'2022-02-14T09:41:10.807' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4028, N'fafcha9', N'gg73', CAST(N'2022-02-14T09:47:05.777' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4029, N'fafcha9', N'gg73', CAST(N'2022-02-14T10:23:50.463' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4030, N'fafcha9', N'gg73', CAST(N'2022-02-14T10:36:14.087' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (4031, N'fafcha9', N'gg73', CAST(N'2022-02-14T10:37:46.153' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5027, N'fafcha9', N'gg73', CAST(N'2022-06-19T13:27:02.953' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5028, N'fafcha9', N'', CAST(N'2022-06-19T13:27:06.477' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5029, N'fafcha9', N'', CAST(N'2022-06-19T13:27:08.103' AS DateTime))
GO
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5030, N'admin', N'admin', CAST(N'2022-09-10T14:58:02.897' AS DateTime))
INSERT [dbo].[JoinHistory] ([Id], [Email], [Password], [Time]) VALUES (5031, N'admin', N'admin', CAST(N'2022-09-10T14:58:19.847' AS DateTime))
SET IDENTITY_INSERT [dbo].[JoinHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Manadgers] ON 

INSERT [dbo].[Manadgers] ([Id], [Name], [Email], [Password], [Type]) VALUES (1, N'Кирилл Далекий', N'pepa99', N'erekl1', 3)
INSERT [dbo].[Manadgers] ([Id], [Name], [Email], [Password], [Type]) VALUES (2, N'Артем Синий', N'lllok', N'toch76', 3)
INSERT [dbo].[Manadgers] ([Id], [Name], [Email], [Password], [Type]) VALUES (3, N'Андрей Лютый', N'goss3', N'kol442', 3)
SET IDENTITY_INSERT [dbo].[Manadgers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [Counts], [DeliveryDate], [Manafacturer]) VALUES (1, N'Тесто', 5, CAST(N'2021-03-05' AS Date), N'Тестомастер')
INSERT [dbo].[Products] ([Id], [ProductName], [Counts], [DeliveryDate], [Manafacturer]) VALUES (2, N'Желатин', 10, CAST(N'2021-03-05' AS Date), N'МастерШеф')
INSERT [dbo].[Products] ([Id], [ProductName], [Counts], [DeliveryDate], [Manafacturer]) VALUES (3, N'Украшения', 100, CAST(N'2021-03-05' AS Date), N'МастерШеф')
INSERT [dbo].[Products] ([Id], [ProductName], [Counts], [DeliveryDate], [Manafacturer]) VALUES (4, N'Загуститель', 50, CAST(N'2021-02-10' AS Date), N'ВсеДляКондитера')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductType] ([Code], [Name]) VALUES (1, N'Кекс')
INSERT [dbo].[ProductType] ([Code], [Name]) VALUES (2, N'Торт')
INSERT [dbo].[ProductType] ([Code], [Name]) VALUES (3, N'Печенье')
GO
SET IDENTITY_INSERT [dbo].[RecipeProduct] ON 

INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (1, 1, 1)
INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (2, 1, 3)
INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (3, 1, 4)
INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (4, 2, 1)
INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (5, 2, 3)
INSERT [dbo].[RecipeProduct] ([Id], [IdRecipes], [IdProducts]) VALUES (6, 2, 4)
SET IDENTITY_INSERT [dbo].[RecipeProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([Id], [Name], [Author], [Type], [DataCreate], [Price]) VALUES (1, N'Заварной', N'Борис Поддубный', 1, CAST(N'1998-10-30' AS Date), 100.0000)
INSERT [dbo].[Recipes] ([Id], [Name], [Author], [Type], [DataCreate], [Price]) VALUES (2, N'Вишневый', N'Максим Седой', 1, CAST(N'1995-03-20' AS Date), 500.0000)
INSERT [dbo].[Recipes] ([Id], [Name], [Author], [Type], [DataCreate], [Price]) VALUES (3, N'Наполеон', N'Лев Красный', 2, CAST(N'2010-01-02' AS Date), 300.0000)
INSERT [dbo].[Recipes] ([Id], [Name], [Author], [Type], [DataCreate], [Price]) VALUES (7, N'Вишенка', N'Андрей Скольников', 1, CAST(N'2001-01-01' AS Date), 300.0000)
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
SET IDENTITY_INSERT [dbo].[SysAdmin] ON 

INSERT [dbo].[SysAdmin] ([Id], [Name], [Email], [Password], [Type]) VALUES (1, N'Валерий Копоть', N'adm1', N'amd7', 1)
INSERT [dbo].[SysAdmin] ([Id], [Name], [Email], [Password], [Type]) VALUES (2, N'Сергей Желтый', N'qqqwe', N'rret4', 1)
INSERT [dbo].[SysAdmin] ([Id], [Name], [Email], [Password], [Type]) VALUES (3, N'Анна Прямая', N'jock0', N'hoha1', 1)
SET IDENTITY_INSERT [dbo].[SysAdmin] OFF
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_AccountType] FOREIGN KEY([Type])
REFERENCES [dbo].[AccountType] ([Code])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_admin_AccountType]
GO
ALTER TABLE [dbo].[Manadgers]  WITH CHECK ADD  CONSTRAINT [FK_Manadgers_AccountType] FOREIGN KEY([Type])
REFERENCES [dbo].[AccountType] ([Code])
GO
ALTER TABLE [dbo].[Manadgers] CHECK CONSTRAINT [FK_Manadgers_AccountType]
GO
ALTER TABLE [dbo].[RecipeProduct]  WITH CHECK ADD  CONSTRAINT [FK_RecipeProduct_Products] FOREIGN KEY([IdProducts])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[RecipeProduct] CHECK CONSTRAINT [FK_RecipeProduct_Products]
GO
ALTER TABLE [dbo].[RecipeProduct]  WITH CHECK ADD  CONSTRAINT [FK_RecipeProduct_Recipes] FOREIGN KEY([IdRecipes])
REFERENCES [dbo].[Recipes] ([Id])
GO
ALTER TABLE [dbo].[RecipeProduct] CHECK CONSTRAINT [FK_RecipeProduct_Recipes]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_ProductType] FOREIGN KEY([Type])
REFERENCES [dbo].[ProductType] ([Code])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_ProductType]
GO
ALTER TABLE [dbo].[SysAdmin]  WITH CHECK ADD  CONSTRAINT [FK_SysAdmin_AccountType] FOREIGN KEY([Type])
REFERENCES [dbo].[AccountType] ([Code])
GO
ALTER TABLE [dbo].[SysAdmin] CHECK CONSTRAINT [FK_SysAdmin_AccountType]
GO
USE [master]
GO
ALTER DATABASE [Sweetshop] SET  READ_WRITE 
GO
