USE [master]
GO
/****** Object:  Database [CricketDB2]    Script Date: 6/23/2022 5:32:49 PM ******/
CREATE DATABASE [CricketDB2]
 
GO
ALTER DATABASE [CricketDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CricketDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CricketDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CricketDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CricketDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [CricketDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CricketDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CricketDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CricketDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CricketDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CricketDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CricketDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CricketDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CricketDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CricketDB2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CricketDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CricketDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CricketDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CricketDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CricketDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CricketDB2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CricketDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CricketDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [CricketDB2] SET  MULTI_USER 
GO
ALTER DATABASE [CricketDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CricketDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CricketDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CricketDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CricketDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CricketDB2] SET QUERY_STORE = OFF
GO
USE [CricketDB2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/23/2022 5:32:49 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BallsTypes]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BallsTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_BallsTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boundary]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boundary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfBoundary] [int] NOT NULL,
	[BoundaryType] [int] NOT NULL,
	[UserID] [nvarchar](450) NOT NULL,
	[Date] [nvarchar](12) NOT NULL,
	[BallsTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Boundary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DotBall]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotBall](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DotBalls] [int] NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[Date] [nvarchar](12) NULL,
	[BallsTypeId] [int] NOT NULL,
 CONSTRAINT [PK_DotBall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrikeRate]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrikeRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Runs] [int] NOT NULL,
	[Balls] [int] NOT NULL,
	[Date] [nvarchar](12) NULL,
	[UserID] [nvarchar](450) NULL,
	[BallsTypeId] [int] NOT NULL,
 CONSTRAINT [PK_StrikeRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wicket]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wicket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfWicket] [int] NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[Date] [nvarchar](12) NULL,
	[BallsTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Wicket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621164456_init', N'6.0.6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'11b2f72f-e282-4c24-a181-2f9c10b9a916', N'string', N'STRING', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEBCLyU0BhTCg2rF6jwejWDCqv4kgywmtT2Dant0TRHxf3xof+Lj+h98hIASDoBe9pA==', N'H6OONA5VVLPF6S5XVSIJLSWKCVU52PK3', N'd37de7d0-ff7d-40ab-ab02-63c5ae875ac8', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'Mostafa', N'MOSTAFA', N'gmostafa358@gmail.com', N'GMOSTAFA358@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEASPUyyd0BIKj4S8WbOnk8ph/mK7xSpGU2W7t1HoZUz4nPDrswfegku/+cHkaRkgXQ==', N'LPCXEFWVQOT4D7RBGTI74OZM2NQPA7IF', N'83597adc-fbeb-4b6b-9fc8-5bc9d0e8f13b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c086f98c-82e0-40ae-9ee9-6d959f72febb', N'User', N'USER', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJxfbX84NQ9l2Q+Y5ZVAJOw1Rwm34NlgwFC/FbCJdDDqakJbIauFSx7oRWyytC1LMQ==', N'CDHPACP6EU6SHTNOTC7Q4K6GU4ZW3C6F', N'8e5a82d4-5706-4629-8739-0eb7df5dc4b4', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BallsTypes] ON 
GO
INSERT [dbo].[BallsTypes] ([Id], [Name]) VALUES (1, N'Fast Medium')
GO
INSERT [dbo].[BallsTypes] ([Id], [Name]) VALUES (2, N'Spin')
GO
SET IDENTITY_INSERT [dbo].[BallsTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Boundary] ON 
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (5, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-01', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (6, 3, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-01', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (7, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-02', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (8, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-02', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (9, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-03', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (10, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-03', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (11, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-04', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (12, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-04', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (13, 5, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-05', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (14, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-05', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (15, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-06', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (16, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-06', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (17, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-07', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (18, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-07', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (19, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-08', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (20, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-08', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (21, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-09', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (22, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-09', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (23, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-10', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (24, 6, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-10', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (25, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-11', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (26, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-11', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (27, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-12', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (28, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-12', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (29, 5, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-13', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (30, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-13', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (31, 1, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-14', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (32, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-14', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (33, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-15', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (34, 8, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-15', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (35, 5, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-16', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (36, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-16', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (37, 6, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-17', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (38, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-17', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (39, 7, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-18', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (40, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-18', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (41, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-19', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (42, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-19', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (43, 5, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-20', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (44, 1, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-20', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (45, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-21', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (46, 3, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-21', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (47, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-22', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (48, 3, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-22', 2)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (49, 5, 6, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-23', 1)
GO
INSERT [dbo].[Boundary] ([Id], [NumberOfBoundary], [BoundaryType], [UserID], [Date], [BallsTypeId]) VALUES (50, 3, 4, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-23', 2)
GO
SET IDENTITY_INSERT [dbo].[Boundary] OFF
GO
SET IDENTITY_INSERT [dbo].[DotBall] ON 
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (6, 20, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-01', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (7, 17, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-01', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (8, 9, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-02', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (9, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-02', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (10, 5, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-03', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (11, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-03', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (12, 20, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-05', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (13, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-05', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (14, 20, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-08', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (15, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-08', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (16, 10, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-10', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (17, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-10', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (18, 5, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-12', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (19, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-12', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (20, 14, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-16', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (21, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-16', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (22, 20, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-17', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (23, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-17', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (24, 25, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-18', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (25, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-18', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (26, 18, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-19', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (27, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-19', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (28, 13, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-20', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (29, 11, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-20', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (30, 17, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-21', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (31, 15, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-21', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (32, 17, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-22', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (33, 12, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-22', 1)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (34, 20, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-23', 2)
GO
INSERT [dbo].[DotBall] ([Id], [DotBalls], [UserID], [Date], [BallsTypeId]) VALUES (35, 10, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-23', 1)
GO
SET IDENTITY_INSERT [dbo].[DotBall] OFF
GO
SET IDENTITY_INSERT [dbo].[StrikeRate] ON 
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (27, 120, 60, N'2022-06-01', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (28, 100, 30, N'2022-06-01', N'11b2f72f-e282-4c24-a181-2f9c10b9a916', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (30, 70, 30, N'2022-06-01', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (47, 120, 60, N'2022-06-02', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (48, 70, 30, N'2022-06-02', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (49, 120, 60, N'2022-06-03', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (50, 70, 30, N'2022-06-03', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (51, 120, 60, N'2022-06-04', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (52, 70, 30, N'2022-06-04', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (53, 120, 60, N'2022-06-05', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (54, 70, 30, N'2022-06-05', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (55, 120, 60, N'2022-06-06', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (56, 70, 30, N'2022-06-06', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (57, 120, 60, N'2022-06-07', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (58, 70, 30, N'2022-06-07', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (59, 120, 60, N'2022-06-08', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (60, 70, 30, N'2022-06-08', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (61, 120, 60, N'2022-06-09', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (62, 70, 30, N'2022-06-09', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (63, 120, 60, N'2022-06-10', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (64, 70, 30, N'2022-06-10', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (65, 120, 60, N'2022-06-11', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (66, 70, 30, N'2022-06-11', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (67, 120, 60, N'2022-06-12', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (68, 70, 30, N'2022-06-12', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (69, 120, 60, N'2022-06-13', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (70, 70, 30, N'2022-06-13', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (71, 10, 60, N'2022-06-14', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (72, 70, 30, N'2022-06-14', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (73, 88, 60, N'2022-06-15', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (74, 70, 30, N'2022-06-15', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (75, 120, 60, N'2022-06-16', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (76, 70, 30, N'2022-06-16', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (77, 77, 60, N'2022-06-17', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (78, 70, 30, N'2022-06-17', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (79, 120, 60, N'2022-06-18', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (80, 70, 30, N'2022-06-18', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (81, 99, 60, N'2022-06-19', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (82, 70, 30, N'2022-06-19', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (83, 85, 60, N'2022-06-20', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (84, 70, 30, N'2022-06-20', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (85, 75, 60, N'2022-06-21', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (86, 40, 30, N'2022-06-21', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (87, 33, 60, N'2022-06-22', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (88, 20, 30, N'2022-06-22', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (89, 100, 60, N'2022-06-23', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 1)
GO
INSERT [dbo].[StrikeRate] ([Id], [Runs], [Balls], [Date], [UserID], [BallsTypeId]) VALUES (90, 150, 30, N'2022-06-23', N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', 2)
GO
SET IDENTITY_INSERT [dbo].[StrikeRate] OFF
GO
SET IDENTITY_INSERT [dbo].[Wicket] ON 
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (18, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-01', 1)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (19, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-02', 2)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (20, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-03', 1)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (21, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-08', 1)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (22, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-10', 1)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (23, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-15', 2)
GO
INSERT [dbo].[Wicket] ([Id], [NumberOfWicket], [UserID], [Date], [BallsTypeId]) VALUES (24, 1, N'2b3e95d5-235e-4d7b-b32d-7c4023ce6b64', N'2022-06-20', 2)
GO
SET IDENTITY_INSERT [dbo].[Wicket] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Boundary_BallsTypeId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Boundary_BallsTypeId] ON [dbo].[Boundary]
(
	[BallsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DotBall_BallsTypeId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_DotBall_BallsTypeId] ON [dbo].[DotBall]
(
	[BallsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StrikeRate_BallsTypeId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_StrikeRate_BallsTypeId] ON [dbo].[StrikeRate]
(
	[BallsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Wicket_BallsTypeId]    Script Date: 6/23/2022 5:32:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Wicket_BallsTypeId] ON [dbo].[Wicket]
(
	[BallsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Boundary]  WITH CHECK ADD  CONSTRAINT [FK_Boundary_BallsTypes_BallsTypeId] FOREIGN KEY([BallsTypeId])
REFERENCES [dbo].[BallsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Boundary] CHECK CONSTRAINT [FK_Boundary_BallsTypes_BallsTypeId]
GO
ALTER TABLE [dbo].[DotBall]  WITH CHECK ADD  CONSTRAINT [FK_DotBall_BallsTypes_BallsTypeId] FOREIGN KEY([BallsTypeId])
REFERENCES [dbo].[BallsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DotBall] CHECK CONSTRAINT [FK_DotBall_BallsTypes_BallsTypeId]
GO
ALTER TABLE [dbo].[StrikeRate]  WITH CHECK ADD  CONSTRAINT [FK_StrikeRate_BallsTypes_BallsTypeId] FOREIGN KEY([BallsTypeId])
REFERENCES [dbo].[BallsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StrikeRate] CHECK CONSTRAINT [FK_StrikeRate_BallsTypes_BallsTypeId]
GO
ALTER TABLE [dbo].[Wicket]  WITH CHECK ADD  CONSTRAINT [FK_Wicket_BallsTypes_BallsTypeId] FOREIGN KEY([BallsTypeId])
REFERENCES [dbo].[BallsTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wicket] CHECK CONSTRAINT [FK_Wicket_BallsTypes_BallsTypeId]
GO
/****** Object:  StoredProcedure [dbo].[spGetDashboards]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  -- spGetDashboards '11b2f72f-e282-4c24-a181-2f9c10b9a916'
  -- spGetDashboards  '2b3e95d5-235e-4d7b-b32d-7c4023ce6b64'
CREATE PROC [dbo].[spGetDashboards]
(@UserID Nvarchar(450))
AS
BEGIN


---************●	His overall strike rate as well as strike rate against Fast Medium and Spin ball. -- Last 4 days
--Select * from [dbo].[StrikeRate] 

Select * into #FastMedium from (Select Date,  BallsTypeId, cast(Runs as float)/cast(Balls as float)Rate from [dbo].[StrikeRate] where BallsTypeId=1 
AND UserID=@UserID
and Date between  format((GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
group by Date,BallsTypeId,Runs,Balls
) as t
Select * into #Spin from (Select Date,BallsTypeId,cast(Runs as float)/cast(Balls as float)Rate from [dbo].[StrikeRate] where BallsTypeId=2
AND UserID=@UserID
and Date between  format(  (GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
group by Date,BallsTypeId,Runs,Balls
) as t
Select * into #OverallStrikeRate  from (Select Date,3 as BallsTypeId ,cast(sum(Runs) as float)/cast(sum(Balls) as float)Rate from [dbo].[StrikeRate] where
UserID=@UserID and
 Date between  format(  (GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
group by Date
) as t

SELECT 0 as A,* INTO #StrikeRate FROM(
SELECT b.Name,t.* from #FastMedium t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
Union
SELECT b.Name,t.*  from #Spin t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
union
SELECT 'Overall Strike Rate' as [Name] ,*  from #overallStrikeRate
) T

Select * from #StrikeRate
order by Date,BallsTypeId


---************●	●	Most of boundary run from Fast Medium/Spin  -- Last 4 days
-- Select * from [dbo].[Boundary] 

SELECT 0 as A,* INTO #Mostofboundary FROM(
Select Date,Sum(NumberOfBoundary)NumberOfBoundary,Name,BallsTypeId from [dbo].Boundary t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where BallsTypeId=1 
AND UserID=@UserID
and Date between  format((GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
Group by Date,BallsTypeId,Name
union
Select Date,Sum(NumberOfBoundary)NumberOfBoundary,Name,BallsTypeId from [dbo].Boundary t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where BallsTypeId=2
AND UserID=@UserID
and Date between  format((GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
Group by Date,BallsTypeId,Name
) t

Select * from #Mostofboundary
order by Date,BallsTypeId


---************●	●	Most dot ball against  Fast Medium/Spin   -- Last 4 days
  -- spGetDashboards '11b2f72f-e282-4c24-a181-2f9c10b9a916'
--Select * from [dbo].DotBall 

SELECT 0 as A,* INTO #Mostdotball FROM(
Select Date,Sum(DotBalls)DotBalls,Name,BallsTypeId from [dbo].DotBall t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where BallsTypeId=1 
AND UserID=@UserID
and Date between  format((GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
Group by Date,BallsTypeId,Name
union
Select Date,Sum(DotBalls)DotBalls,Name,BallsTypeId from [dbo].DotBall t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where BallsTypeId=2
AND UserID=@UserID
and Date between  format((GETDATE()-4),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
Group by Date,BallsTypeId,Name
) t


Select * from #Mostdotball
order by Date,BallsTypeId

---************●	●	Sum of score by week.  -- Last 7 days
  -- spGetDashboards '11b2f72f-e282-4c24-a181-2f9c10b9a916'

--Select * from [dbo].StrikeRate 
SELECT 0 as A,* INTO #Sumofscore FROM(

Select Sum(Runs)Score  from [dbo].StrikeRate where 
UserID=@UserID
and Date between  format((GETDATE()-6),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
) t

Select * from #Sumofscore
---************●	●	Number of times the bowler gets his wicket.   -- Last 7 days

--Select * from [dbo].Wicket 
SELECT 0 as A,* INTO #Numberoftimes FROM(
Select Sum(NumberOfWicket) NumberOfWicket from [dbo].Wicket where Date between  format((GETDATE()-6),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
) t

Select * from #Numberoftimes




---************●	●	In which type of bowler gets his wicket most.  

--   spGetDashboards '11b2f72f-e282-4c24-a181-2f9c10b9a916' 

SELECT 0 as A,* INTO #bowler FROM(
SELECT  top 1 * FROM (
Select Sum(NumberOfWicket)NumberOfWicket,BallsTypeId,Name from [dbo].Wicket t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where Date between  format((GETDATE()-6),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
and BallsTypeId=1
group by BallsTypeId,Name
union
Select Sum(NumberOfWicket)NumberOfWicket,BallsTypeId,Name from [dbo].Wicket t join [dbo].[BallsTypes] b on t.BallsTypeId=b.Id
where Date between  format((GETDATE()-6),'yyyyMMdd') and format(  GETDATE(),'yyyyMMdd')
and BallsTypeId=2
group by BallsTypeId,Name) t  order by t.NumberOfWicket DESC
) t

Select * from #bowler

END
GO
/****** Object:  StoredProcedure [dbo].[spGetRsult]    Script Date: 6/23/2022 5:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


  -- spGetRsult '11b2f72f-e282-4c24-a181-2f9c10b9a916'
CREATE PROC [dbo].[spGetRsult]
(@UserID Nvarchar(450))
AS
BEGIN

Select * into #TodayRun FROM (
Select sum(Runs) Runs  from [dbo].[StrikeRate] where UserID=@UserID and [Date] = format(GETDATE(),'yyyyMMdd')
) t


Select * into #LastRuns FROM (
Select sum(Runs) Runs  from [dbo].[StrikeRate] where
UserID=@UserID and [Date] = format((GETDATE()-1),'yyyyMMdd')
) as t
;

if( (Select isnull(Runs,0) from #TodayRun) >(Select isnull(Runs,0) from #LastRuns))
Select 1;
else
Select 0;

END
GO
USE [master]
GO
ALTER DATABASE [CricketDB2] SET  READ_WRITE 
GO
