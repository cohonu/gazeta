USE [master]
GO
/****** Object:  Database [gazeta]    Script Date: 08/02/2014 17:58:22 ******/
CREATE DATABASE [gazeta] ON  PRIMARY 
( NAME = N'test', FILENAME = N'c:\db\gazeta.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'c:\db\gazeta.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gazeta] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gazeta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gazeta] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [gazeta] SET ANSI_NULLS OFF
GO
ALTER DATABASE [gazeta] SET ANSI_PADDING OFF
GO
ALTER DATABASE [gazeta] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [gazeta] SET ARITHABORT OFF
GO
ALTER DATABASE [gazeta] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [gazeta] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [gazeta] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [gazeta] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [gazeta] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [gazeta] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [gazeta] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [gazeta] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [gazeta] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [gazeta] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [gazeta] SET  DISABLE_BROKER
GO
ALTER DATABASE [gazeta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [gazeta] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [gazeta] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [gazeta] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [gazeta] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [gazeta] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [gazeta] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [gazeta] SET  READ_WRITE
GO
ALTER DATABASE [gazeta] SET RECOVERY FULL
GO
ALTER DATABASE [gazeta] SET  MULTI_USER
GO
ALTER DATABASE [gazeta] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [gazeta] SET DB_CHAINING OFF
GO
USE [gazeta]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 08/02/2014 17:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetimeoffset](7) NULL,
	[IssueNumber] [int] NOT NULL,
	[ComradeFrom] [uniqueidentifier] NOT NULL,
	[ComradeTo] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Operation] ON
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (1, CAST(0x0700E0349564A9380B0000 AS DateTimeOffset), 82, N'5e48bf05-dcf4-4edc-9b66-09c16e090072', N'f6a566f7-d1c3-452a-b685-de04937d413d', 13, NULL)
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (2, CAST(0x0700E0349564A9380B0000 AS DateTimeOffset), 82, N'5e48bf05-dcf4-4edc-9b66-09c16e090072', N'f6a566f7-d1c3-452a-b685-de04937d413d', 141, NULL)
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (3, CAST(0x070076526D7EA9380B0000 AS DateTimeOffset), 82, N'f6a566f7-d1c3-452a-b685-de04937d413d', N'474e60ac-23d8-4317-961f-27d8f573ae86', 141, N'м. "Преображенская площадь"')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (14, CAST(0x07E006E397A2AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3edf5dcf-8449-4883-b98d-10ba93b93423', 6, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (15, CAST(0x07A09A5CACA2AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (16, CAST(0x07A0C8DDB1A2AE380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (17, CAST(0x0780066DB9A2AE380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 12, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (18, CAST(0x07A0EA36BEA2AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 12, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (19, CAST(0x07E04CD5C8A2AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e7842bb5-4da2-422c-9832-342096b0ef71', 1, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (20, CAST(0x0720FE5925A3AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (21, CAST(0x07C0A0C12FA3AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'78ca242a-6318-4096-82fd-5712277b6d10', 4, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (22, CAST(0x07C02B7B72A3AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 8, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (23, CAST(0x07E043658CA3AE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'У Хомяковых')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (24, CAST(0x074042FBBEB8AE380BF000 AS DateTimeOffset), 81, N'f6a566f7-d1c3-452a-b685-de04937d413d', N'474e60ac-23d8-4317-961f-27d8f573ae86', 154, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (25, CAST(0x07E0152ECDB8AE380BF000 AS DateTimeOffset), 81, N'f6a566f7-d1c3-452a-b685-de04937d413d', N'474e60ac-23d8-4317-961f-27d8f573ae86', 141, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (27, CAST(0x07E081E314B9AE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e56240d5-78df-4818-a5af-278c3640e84b', 1, N'Забрать у Павла')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (28, CAST(0x07E0EC622AB9AE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3edf5dcf-8449-4883-b98d-10ba93b93423', 6, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (29, CAST(0x0700088C2FB9AE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'005c29b9-96c8-49ef-8eeb-0590dd7e62d4', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (30, CAST(0x0740FFB537B9AE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'39c854a2-fca0-4eca-bc31-b5f58d4f3266', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (31, CAST(0x07208ACA3FB9AE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'adba537c-f12b-43b7-95d3-8786daf5b081', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (32, CAST(0x07804C7A9AB9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'd0a87e11-1731-464b-9380-87463f27ab3d', 3, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (33, CAST(0x07A04BE9A2B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (34, CAST(0x07E06237B2B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (35, CAST(0x07A05DBBBEB9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e7842bb5-4da2-422c-9832-342096b0ef71', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (36, CAST(0x07E0CDB6C7B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 20, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (37, CAST(0x07000C4ED2B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (39, CAST(0x07201FB9E8B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'42d0b218-2375-4468-b6ed-4dffd4fe7ee9', 6, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (40, CAST(0x07A01B6AF7B9AE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'78ca242a-6318-4096-82fd-5712277b6d10', 3, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (41, CAST(0x07C0FE1E03BAAE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'adba537c-f12b-43b7-95d3-8786daf5b081', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (42, CAST(0x07A0765709BAAE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3edf5dcf-8449-4883-b98d-10ba93b93423', 6, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (43, CAST(0x07A0A84D2CBAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e77062dd-4a27-4010-83c7-2a1c4050c8db', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (44, CAST(0x0780E92632BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (45, CAST(0x07E0C9D0A1BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'2b13738a-f7f6-45b4-aa43-5497d7c224be', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (46, CAST(0x07804BFFABBAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (47, CAST(0x07C09542B1BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'78ca242a-6318-4096-82fd-5712277b6d10', 4, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (48, CAST(0x07A078EFB9BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 12, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (49, CAST(0x0760A553C3BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', 3, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (50, CAST(0x07E09706CBBAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e7842bb5-4da2-422c-9832-342096b0ef71', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (51, CAST(0x074073FAD7BAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'ad083780-399c-44d3-8329-2b2f511dc27a', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (52, CAST(0x07601552DCBAAE380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'ad083780-399c-44d3-8329-2b2f511dc27a', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (53, CAST(0x07C09F56DEBAAE380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'ad083780-399c-44d3-8329-2b2f511dc27a', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (54, CAST(0x0780955BE7BAAE380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'ad083780-399c-44d3-8329-2b2f511dc27a', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (55, CAST(0x0780054FEDBAAE380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (56, CAST(0x0760ECA9004AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'a497fb6d-bb99-4def-83be-025178220810', 1, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (57, CAST(0x0780E9F9294AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3edf5dcf-8449-4883-b98d-10ba93b93423', 6, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (58, CAST(0x0740A555344AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3edf5dcf-8449-4883-b98d-10ba93b93423', 6, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (59, CAST(0x07C06F26464AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e7842bb5-4da2-422c-9832-342096b0ef71', 1, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (60, CAST(0x0760D250554AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (61, CAST(0x07801E455E4AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'78ca242a-6318-4096-82fd-5712277b6d10', 4, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (62, CAST(0x07603F05704AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 8, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (63, CAST(0x07804987784AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'36a3e6bd-321f-4dcc-be65-837062e863e6', 1, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (64, CAST(0x07A0C75B7E4AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'd0a87e11-1731-464b-9380-87463f27ab3d', 3, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (65, CAST(0x0720F16D864AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'adba537c-f12b-43b7-95d3-8786daf5b081', 5, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (66, CAST(0x070061E89D4AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (67, CAST(0x0780F459AF4AAF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c6a2c955-79d4-4a5d-878d-df577c59f57b', 3, N'МДОО 17 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (73, CAST(0x0700A9651775AF380BF000 AS DateTimeOffset), 82, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'a497fb6d-bb99-4def-83be-025178220810', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (74, CAST(0x07A0F79E2B75AF380BF000 AS DateTimeOffset), 82, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'239f227c-0d51-4580-a285-97ff2b676c34', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (75, CAST(0x070082A32D75AF380BF000 AS DateTimeOffset), 81, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'239f227c-0d51-4580-a285-97ff2b676c34', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (76, CAST(0x0700ABA52F75AF380BF000 AS DateTimeOffset), 80, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'239f227c-0d51-4580-a285-97ff2b676c34', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (77, CAST(0x07A093DE3175AF380BF000 AS DateTimeOffset), 79, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'239f227c-0d51-4580-a285-97ff2b676c34', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (78, CAST(0x076074D23375AF380BF000 AS DateTimeOffset), 78, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'239f227c-0d51-4580-a285-97ff2b676c34', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (79, CAST(0x07E0D0E44475AF380BF000 AS DateTimeOffset), 79, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'd761a0c0-2aad-4af2-956a-f265ee9385a4', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (80, CAST(0x07A0D2114775AF380BF000 AS DateTimeOffset), 80, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'd761a0c0-2aad-4af2-956a-f265ee9385a4', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (81, CAST(0x07A0E5ED4875AF380BF000 AS DateTimeOffset), 81, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'd761a0c0-2aad-4af2-956a-f265ee9385a4', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (82, CAST(0x07C011BE4A75AF380BF000 AS DateTimeOffset), 82, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'd761a0c0-2aad-4af2-956a-f265ee9385a4', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (83, CAST(0x0780EB085775AF380BF000 AS DateTimeOffset), 80, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'b88779d0-db38-4344-80ac-34a8c793f5ee', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (84, CAST(0x07A001B35875AF380BF000 AS DateTimeOffset), 81, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'b88779d0-db38-4344-80ac-34a8c793f5ee', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (85, CAST(0x072084725A75AF380BF000 AS DateTimeOffset), 82, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'b88779d0-db38-4344-80ac-34a8c793f5ee', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (86, CAST(0x07C00C556D75AF380BF000 AS DateTimeOffset), 82, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'bf6d0285-4ac8-4740-9986-15a956cdf75a', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (87, CAST(0x0780D7226F75AF380BF000 AS DateTimeOffset), 81, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'bf6d0285-4ac8-4740-9986-15a956cdf75a', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (88, CAST(0x076034B67175AF380BF000 AS DateTimeOffset), 80, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'bf6d0285-4ac8-4740-9986-15a956cdf75a', 1, N'Метро 20 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (89, CAST(0x07A0B9CB6A83AF380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', 1, N'МДОО 24 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (90, CAST(0x074052356E83AF380BF000 AS DateTimeOffset), 81, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', 1, N'МДОО 24 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (91, CAST(0x0780AAD57183AF380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', 1, N'МДОО 24 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (92, CAST(0x076014B17983AF380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', 1, N'МДОО 24 июня')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (93, CAST(0x0700CD6AD083AF380BF000 AS DateTimeOffset), 82, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e7842bb5-4da2-422c-9832-342096b0ef71', 1, N'МДОО 24 июня дополнительно, по просьбе')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (94, CAST(0x0760B34B9F42B0380BF000 AS DateTimeOffset), 80, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (97, CAST(0x070063B64A5FD5380BF000 AS DateTimeOffset), 83, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (98, CAST(0x07409F9C515FD5380BF000 AS DateTimeOffset), 84, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (99, CAST(0x072054C8545FD5380BF000 AS DateTimeOffset), 85, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (100, CAST(0x0720B1DF585FD5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (101, CAST(0x07607A885B5FD5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (102, CAST(0x07E075195E5FD5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (103, CAST(0x07A0AB5B625FD5380BF000 AS DateTimeOffset), 79, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 1, N'Для Гамазкова Александра Сергеевича')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (104, CAST(0x0740C9C9725FD5380BF000 AS DateTimeOffset), 84, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 12, N'Для выдачи в метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (105, CAST(0x070039B5755FD5380BF000 AS DateTimeOffset), 85, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 12, N'Для выдачи в метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (106, CAST(0x0760479E785FD5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 12, N'Для выдачи в метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (107, CAST(0x0780239F7B5FD5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 12, N'Для выдачи в метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (108, CAST(0x07E026757E5FD5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 12, N'Для выдачи в метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (109, CAST(0x0700A73A0393D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (110, CAST(0x0720D8890893D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (111, CAST(0x0700CF270C93D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (112, CAST(0x07009E671B93D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 8, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (113, CAST(0x0740D5CE1E93D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 8, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (114, CAST(0x07E0E6092393D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'5817daea-7327-4b3b-98e5-75c513c64fa7', 8, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (115, CAST(0x07E0B7894A93D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'd0a87e11-1731-464b-9380-87463f27ab3d', 3, N'Через Василия (31 июля, метро)')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (116, CAST(0x07203C764E93D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'd0a87e11-1731-464b-9380-87463f27ab3d', 3, N'Через Василия (31 июля, метро)')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (117, CAST(0x0700FCB45193D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'd0a87e11-1731-464b-9380-87463f27ab3d', 3, N'Через Василия (31 июля, метро)')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (121, CAST(0x07E062D55294D5380BF000 AS DateTimeOffset), 84, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (122, CAST(0x0780C1955794D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'Ячейка РПО 1 августа')
GO
print 'Processed 100 total records'
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (123, CAST(0x07C0EDE95A94D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (124, CAST(0x0700E3DE5D94D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 6, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (125, CAST(0x0720E2587994D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', 3, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (126, CAST(0x076037AF7E94D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', 3, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (127, CAST(0x0740ECDA8194D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', 3, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (128, CAST(0x078034F49494D5380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (129, CAST(0x0700B4699894D5380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (130, CAST(0x0760B73F9B94D5380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 10, N'Ячейка РПО 1 августа')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (131, CAST(0x0740D5D6E794D5380BF000 AS DateTimeOffset), 86, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'87d6bd7e-b303-4cee-b9d2-d8fcbd3d9413', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (132, CAST(0x07A00F0CEB94D5380BF000 AS DateTimeOffset), 87, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'87d6bd7e-b303-4cee-b9d2-d8fcbd3d9413', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (133, CAST(0x07006067EE94D5380BF000 AS DateTimeOffset), 88, N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'87d6bd7e-b303-4cee-b9d2-d8fcbd3d9413', 1, N'')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (134, CAST(0x0700A1714B47D6380BF000 AS DateTimeOffset), 87, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'В метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (135, CAST(0x0700CA734D47D6380BF000 AS DateTimeOffset), 86, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'В метро')
INSERT [dbo].[Operation] ([Id], [Date], [IssueNumber], [ComradeFrom], [ComradeTo], [Quantity], [Comment]) VALUES (136, CAST(0x07A03E5A5247D6380BF000 AS DateTimeOffset), 88, N'474e60ac-23d8-4317-961f-27d8f573ae86', N'375b6499-a990-4883-bd64-c83a7e2fef2d', 5, N'В метро')
SET IDENTITY_INSERT [dbo].[Operation] OFF
/****** Object:  Table [dbo].[Issue]    Script Date: 08/02/2014 17:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue](
	[Number] [int] NOT NULL,
	[Date] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Issue] ([Number], [Date]) VALUES (79, CAST(0x0700A8E76F4B94380B0000 AS DateTimeOffset))
INSERT [dbo].[Issue] ([Number], [Date]) VALUES (80, CAST(0x0700A8E76F4B9B380B0000 AS DateTimeOffset))
INSERT [dbo].[Issue] ([Number], [Date]) VALUES (81, CAST(0x0700A8E76F4BA2380B0000 AS DateTimeOffset))
INSERT [dbo].[Issue] ([Number], [Date]) VALUES (82, CAST(0x0700A8E76F4BA9380B0000 AS DateTimeOffset))
/****** Object:  Table [dbo].[InStock]    Script Date: 08/02/2014 17:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IssueNumber] [int] NOT NULL,
	[IssueDate] [datetimeoffset](7) NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comrade]    Script Date: 08/02/2014 17:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comrade](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[SecondName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Charged] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'73747099-c6c7-4a99-ae88-011ce9bccc59', N'Владимир', N'Юрьевич', N'Нургалиев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'a497fb6d-bb99-4def-83be-025178220810', N'Михаил', N'Юрьевич', N'Быковец', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'005c29b9-96c8-49ef-8eeb-0590dd7e62d4', N'Игорь', N'Николаевич', N'Трунькин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'022225ff-4cea-4848-a2b0-090e174fbe0b', N'Владимир', N'Владимирович', N'Прибытков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'5e48bf05-dcf4-4edc-9b66-09c16e090072', N'Дмитрий', NULL, N'Бобнев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'6dfad40c-daf8-4f37-b987-0ba4a735550b', N'Владимир', N'', N'Якименко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'3093a1d5-f8ed-466d-b536-0d6d40434aa4', N'Андрей', N'', N'Шеин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'3edf5dcf-8449-4883-b98d-10ba93b93423', N'Олег', N'Геннадьевич', N'Выродов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'bf6d0285-4ac8-4740-9986-15a956cdf75a', N'Стас', N'', N'Калашников', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'c11b6896-33dc-4b11-a71e-1b0723c80c7d', N'Андрей', N'', N'Жиров', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'a7637a97-9800-4a25-998f-26598f9a6078', N'Александр', NULL, N'Александров', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'e56240d5-78df-4818-a5af-278c3640e84b', N'Ваган', N'', N'Караханян', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'474e60ac-23d8-4317-961f-27d8f573ae86', N'Дмитрий', N'Александрович', N'Данилов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'6d3ab2ba-1e19-4018-b9dc-2936d72e2edd', N'Вадим', N'Викторович', N'Арутюнов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', N'Валентина', N'Георгиевна', N'Ныркова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'e77062dd-4a27-4010-83c7-2a1c4050c8db', N'Роман', N'Львович', N'Ефремов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'ad083780-399c-44d3-8329-2b2f511dc27a', N'Лев', N'', N'Карев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'05e95e39-eacc-47f0-bb84-2cff6d59f6b0', N'Анатолий', N'', N'Верещетин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', N'Александр', N'Евгеньевич', N'Рудаков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', N'Елена', N'', N'Зинченко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'e7842bb5-4da2-422c-9832-342096b0ef71', N'Андрей', N'', N'Козлов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'b88779d0-db38-4344-80ac-34a8c793f5ee', N'Игорь', N'Витальевич', N'Чайковский', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'c1ac5209-8eac-451b-8946-377c9b366ec6', N'Павел', N'', N'Хорцев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'a7bd08d5-7661-4ab8-954d-3f081a16667d', N'Сергей', N'', N'Кораблин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'7b32b7ea-5564-4d3f-a3a4-40ab43e937a9', N'Петр', N'', N'Мельниченко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'3054fae5-adbb-435a-8d02-440ad26b84fb', N'Андрей', N'', N'Шудинов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'67571030-4c15-4980-8ac5-45858b16c5e5', N'Анатолий', NULL, N'Ащёкин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'78c2565e-2bac-48cd-964d-49d608a35334', N'Валентина', N'Борисовна', N'Иванова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'b535346d-3c81-4940-8c82-4b32dba4e272', N'Юрий', N'', N'Артёменко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', N'Александр', N'', N'Бобков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'0834245a-f325-49bd-a848-4df55515de63', N'Андрей', N'', N'Малахов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'42d0b218-2375-4468-b6ed-4dffd4fe7ee9', N'Ания', N'', N'Еналеева', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'3223dea6-3f0c-4297-acfd-4f19d2010c3f', N'Сергей', N'Владиславович', N'Шушунин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'f3357b3f-d3fb-4eb2-869a-4f3772dfdc07', N'Михаил', N'Юрьевич', N'Баранов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'c8007718-bea3-419d-abef-500b7bf3a0d8', N'Ольга', N'Александровна', N'Романенкова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', N'Василий', N'Александрович', N'Хомяков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'2b13738a-f7f6-45b4-aa43-5497d7c224be', N'Николай', N'Владимирович', N'Сомин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'78ca242a-6318-4096-82fd-5712277b6d10', N'Игорь', N'Витальевич', N'Моряков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'48e0cd31-b682-41ac-a703-58501bc4f12c', N'Нонна(?)', N'Ивановна', N'Макарова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'4ed35d5b-5e4b-4bfb-b273-668930d8c46e', N'Елена', N'', N'Милова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'34c16f7e-2fdf-4209-a387-686f4e4dac64', N'Юрий', N'', N'Кочубеев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'8af54497-75b9-41e5-aa8c-6a07cda3af4b', N'Дмитрий', N'', N'Руденко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'f8d4b4e6-c151-43e2-9735-6aebf3b29ddc', N'Антон', N'Евгеньевич', N'Симачков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'ae70b68b-ed09-43b8-ab68-716446547d6a', N'Александр', N'', N'Теренков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'5817daea-7327-4b3b-98e5-75c513c64fa7', N'Алексей', N'Андреевич', N'Санников', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'f39d3364-d47e-4984-a561-7cdcc4e948db', N'Борис', N'Андреевич', N'Ищенко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'279deb0f-c541-4002-8897-7efc4826f104', N'Виктория', N'Владимировна', N'Павленко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'd3fd8972-75be-4af8-85e4-7f7d713b9827', N'Владимир', N'', N'Лебедев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'36a3e6bd-321f-4dcc-be65-837062e863e6', N'Петр', N'', N'Субботин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'd0a87e11-1731-464b-9380-87463f27ab3d', N'Дмитрий', N'Анатольевич', N'Долгих', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'adba537c-f12b-43b7-95d3-8786daf5b081', N'Сергей', N'Сергеевич', N'Елагин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'239f227c-0d51-4580-a285-97ff2b676c34', N'Александр', N'Сергеевич', N'Гамазков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', N'Антон', N'Игоревич', N'Жуменко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'9f2390b9-c639-4e3c-8ddd-9d6a23b8f490', N'Наталья', NULL, N'Бубнова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'58cae39e-ef6c-4963-8aeb-a1e6c987809b', N'Владимир', N'Борисович', N'Павленко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'eae69930-91ef-49dd-a89e-a84349596e47', N'Александр', N'Сергеевич', N'Пастух', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'824e5d02-ef30-4539-b9b7-a9417635e411', N'Нина', N'', N'Тимофеенко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'39c854a2-fca0-4eca-bc31-b5f58d4f3266', N'Александр', N'', N'Родионов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'792afcfc-2ee3-454d-88ec-b89408c57fe0', N'Светлана', N'', N'Лобынцева', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'7307b9fd-86ad-4606-a888-b9dce86b5ac4', N'Кирилл', N'', N'Чернобривец', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'cd6d15be-308d-4d5a-baca-bce300128b4f', N'', N'', N'Махиборода', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'375b6499-a990-4883-bd64-c83a7e2fef2d', N'Павел', N'', N'Поляков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'bf4e1128-0231-4862-80cb-c911bcf16359', N'Иван', N'', N'Трегуб', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'87d6bd7e-b303-4cee-b9d2-d8fcbd3d9413', N'Екатерина', N'Юрьевна', N'Панявина', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'e1866835-e339-4b95-8747-dbe3be41aa32', N'Михаил', N'', N'Нетов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'f6a566f7-d1c3-452a-b685-de04937d413d', N'Дмитрий', N'Владимирович', N'Трушин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'c6a2c955-79d4-4a5d-878d-df577c59f57b', N'Владимир', N'Викторович', N'Карельский', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'91715ede-99d9-41b4-baaf-e48c32dd237c', N'Андрей', N'', N'Алексеенко', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'adfc2145-33b1-44d7-af86-e7c07b76be28', N'Дмитрий', N'Валерьевич', N'Репин', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'd761a0c0-2aad-4af2-956a-f265ee9385a4', N'Николай', N'Евгеньевич', N'Кривенцов', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'38813261-090b-425e-b6ed-f60d27e87f3a', N'Дмитрий', N'Владимирович', N'Сидорков', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'ce5e5783-0c45-4d1d-8d5c-f6424c0f8573', N'Андрей', N'Викторович', N'Пономарёв', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'14e81dec-3f16-476c-891f-f66ba466b642', N'Оксана', N'', N'Куликова', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'45a63867-78be-4087-a821-f76225158efc', N'Евгений', N'', N'', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'bb8d47b6-6005-4651-b2e2-f817696789f5', N'Юрий', N'Владимирович', N'Бухарев', 0)
INSERT [dbo].[Comrade] ([Id], [FirstName], [SecondName], [LastName], [Charged]) VALUES (N'a7160c64-9c46-44af-9fa9-fc0021d0f983', N'Андрей', N'Геннадьевич', N'Масолов', 0)
/****** Object:  Table [dbo].[Demand]    Script Date: 08/02/2014 17:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demand](
	[Created] [datetimeoffset](7) NULL,
	[Comrade] [uniqueidentifier] NOT NULL,
	[IssueNumberFrom] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Demand_Comrade_IssueNumberFrom] PRIMARY KEY CLUSTERED 
(
	[Comrade] ASC,
	[IssueNumberFrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x076679ECB26DAF380BF000 AS DateTimeOffset), N'73747099-c6c7-4a99-ae88-011ce9bccc59', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x078629BC666FAF380BF000 AS DateTimeOffset), N'a497fb6d-bb99-4def-83be-025178220810', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0756B7EFCD6CAF380BF000 AS DateTimeOffset), N'005c29b9-96c8-49ef-8eeb-0590dd7e62d4', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'022225ff-4cea-4848-a2b0-090e174fbe0b', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'5e48bf05-dcf4-4edc-9b66-09c16e090072', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07867F11236CAF380BF000 AS DateTimeOffset), N'6dfad40c-daf8-4f37-b987-0ba4a735550b', 79, 2)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'3093a1d5-f8ed-466d-b536-0d6d40434aa4', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0776F5A3596FAF380BF000 AS DateTimeOffset), N'3edf5dcf-8449-4883-b98d-10ba93b93423', 79, 6)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0716E87DB66EAF380BF000 AS DateTimeOffset), N'bf6d0285-4ac8-4740-9986-15a956cdf75a', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'c11b6896-33dc-4b11-a71e-1b0723c80c7d', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07E69424B06FAF380BF000 AS DateTimeOffset), N'a7637a97-9800-4a25-998f-26598f9a6078', 79, 9)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07A689C8A86EAF380BF000 AS DateTimeOffset), N'e56240d5-78df-4818-a5af-278c3640e84b', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0726961C4A6FAF380BF000 AS DateTimeOffset), N'474e60ac-23d8-4317-961f-27d8f573ae86', 79, 18)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07B64508836FAF380BF000 AS DateTimeOffset), N'6d3ab2ba-1e19-4018-b9dc-2936d72e2edd', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07364FC5AC6DAF380BF000 AS DateTimeOffset), N'991a87c4-8e3c-4967-8e53-29fe14b1fed8', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706B0FDF16EAF380BF000 AS DateTimeOffset), N'e77062dd-4a27-4010-83c7-2a1c4050c8db', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07262C8FA16EAF380BF000 AS DateTimeOffset), N'ad083780-399c-44d3-8329-2b2f511dc27a', 79, 5)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'05e95e39-eacc-47f0-bb84-2cff6d59f6b0', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x074668571F6DAF380BF000 AS DateTimeOffset), N'e492741c-c0d0-4185-9e41-2e3f9d0ee6e1', 79, 5)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07161264CE6EAF380BF000 AS DateTimeOffset), N'9c7ab6ec-98b7-4cb4-bc65-31db79906831', 79, 10)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706C8C8916EAF380BF000 AS DateTimeOffset), N'e7842bb5-4da2-422c-9832-342096b0ef71', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07A63B35A56CAF380BF000 AS DateTimeOffset), N'b88779d0-db38-4344-80ac-34a8c793f5ee', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'c1ac5209-8eac-451b-8946-377c9b366ec6', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07662F6B8C6EAF380BF000 AS DateTimeOffset), N'a7bd08d5-7661-4ab8-954d-3f081a16667d', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'7b32b7ea-5564-4d3f-a3a4-40ab43e937a9', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0726BF492471AF380BF000 AS DateTimeOffset), N'3054fae5-adbb-435a-8d02-440ad26b84fb', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07C6CFF1C071AF380BF000 AS DateTimeOffset), N'67571030-4c15-4980-8ac5-45858b16c5e5', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07769379C36EAF380BF000 AS DateTimeOffset), N'78c2565e-2bac-48cd-964d-49d608a35334', 79, 2)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'b535346d-3c81-4940-8c82-4b32dba4e272', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07761D8A786FAF380BF000 AS DateTimeOffset), N'f5fccd17-b6c5-46b3-bdfe-4d61503e4a0c', 79, 3)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07969EBC556EAF380BF000 AS DateTimeOffset), N'0834245a-f325-49bd-a848-4df55515de63', 79, 4)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0746509D086FAF380BF000 AS DateTimeOffset), N'42d0b218-2375-4468-b6ed-4dffd4fe7ee9', 79, 4)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0786339A316CAF380BF000 AS DateTimeOffset), N'3223dea6-3f0c-4297-acfd-4f19d2010c3f', 79, 5)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'f3357b3f-d3fb-4eb2-869a-4f3772dfdc07', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07B6C4482A6DAF380BF000 AS DateTimeOffset), N'c8007718-bea3-419d-abef-500b7bf3a0d8', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706607FB36CAF380BF000 AS DateTimeOffset), N'c58a82b9-0026-4e9e-a9e2-50ca0470d943', 79, 10)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07F68378FB6CAF380BF000 AS DateTimeOffset), N'2b13738a-f7f6-45b4-aa43-5497d7c224be', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07B6E829C06DAF380BF000 AS DateTimeOffset), N'78ca242a-6318-4096-82fd-5712277b6d10', 79, 4)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0796F8E2616EAF380BF000 AS DateTimeOffset), N'48e0cd31-b682-41ac-a703-58501bc4f12c', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x074678FC046EAF380BF000 AS DateTimeOffset), N'4ed35d5b-5e4b-4bfb-b273-668930d8c46e', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'34c16f7e-2fdf-4209-a387-686f4e4dac64', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706E99C166DAF380BF000 AS DateTimeOffset), N'8af54497-75b9-41e5-aa8c-6a07cda3af4b', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07F6A74E016DAF380BF000 AS DateTimeOffset), N'f8d4b4e6-c151-43e2-9735-6aebf3b29ddc', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'ae70b68b-ed09-43b8-ab68-716446547d6a', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07660CFD0F6DAF380BF000 AS DateTimeOffset), N'5817daea-7327-4b3b-98e5-75c513c64fa7', 79, 4)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'f39d3364-d47e-4984-a561-7cdcc4e948db', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07D6E2039F6DAF380BF000 AS DateTimeOffset), N'279deb0f-c541-4002-8897-7efc4826f104', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0776E933726EAF380BF000 AS DateTimeOffset), N'd3fd8972-75be-4af8-85e4-7f7d713b9827', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0746AA54F46CAF380BF000 AS DateTimeOffset), N'36a3e6bd-321f-4dcc-be65-837062e863e6', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07E610E8166FAF380BF000 AS DateTimeOffset), N'd0a87e11-1731-464b-9380-87463f27ab3d', 79, 3)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0736C814106FAF380BF000 AS DateTimeOffset), N'adba537c-f12b-43b7-95d3-8786daf5b081', 79, 5)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706BD17526FAF380BF000 AS DateTimeOffset), N'239f227c-0d51-4580-a285-97ff2b676c34', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07D6205CD56EAF380BF000 AS DateTimeOffset), N'3c0fb05e-26e5-4bfe-a148-9d363cae8935', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'9f2390b9-c639-4e3c-8ddd-9d6a23b8f490', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07263C3FA66DAF380BF000 AS DateTimeOffset), N'58cae39e-ef6c-4963-8aeb-a1e6c987809b', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'eae69930-91ef-49dd-a89e-a84349596e47', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x077627FBE66CAF380BF000 AS DateTimeOffset), N'824e5d02-ef30-4539-b9b7-a9417635e411', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0736C45B336DAF380BF000 AS DateTimeOffset), N'39c854a2-fca0-4eca-bc31-b5f58d4f3266', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'792afcfc-2ee3-454d-88ec-b89408c57fe0', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07A6AF289D6CAF380BF000 AS DateTimeOffset), N'7307b9fd-86ad-4606-a888-b9dce86b5ac4', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'cd6d15be-308d-4d5a-baca-bce300128b4f', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07A6C9308E6DAF380BF000 AS DateTimeOffset), N'375b6499-a990-4883-bd64-c83a7e2fef2d', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x074646E9D76CAF380BF000 AS DateTimeOffset), N'bf4e1128-0231-4862-80cb-c911bcf16359', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0706A874986DAF380BF000 AS DateTimeOffset), N'87d6bd7e-b303-4cee-b9d2-d8fcbd3d9413', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x074666D3B86DAF380BF000 AS DateTimeOffset), N'e1866835-e339-4b95-8747-dbe3be41aa32', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0776A958C66CAF380BF000 AS DateTimeOffset), N'f6a566f7-d1c3-452a-b685-de04937d413d', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0736FA3B996EAF380BF000 AS DateTimeOffset), N'c6a2c955-79d4-4a5d-878d-df577c59f57b', 79, 3)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0796B9ECA46FAF380BF000 AS DateTimeOffset), N'91715ede-99d9-41b4-baaf-e48c32dd237c', 79, 4)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x073656F0396DAF380BF000 AS DateTimeOffset), N'adfc2145-33b1-44d7-af86-e7c07b76be28', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07E605FA7E6EAF380BF000 AS DateTimeOffset), N'd761a0c0-2aad-4af2-956a-f265ee9385a4', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0786B157096DAF380BF000 AS DateTimeOffset), N'38813261-090b-425e-b6ed-f60d27e87f3a', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0736D092686DAF380BF000 AS DateTimeOffset), N'ce5e5783-0c45-4d1d-8d5c-f6424c0f8573', 79, 2)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'14e81dec-3f16-476c-891f-f66ba466b642', 79, 0)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x07B6B45E116CAF380BF000 AS DateTimeOffset), N'45a63867-78be-4087-a821-f76225158efc', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0726056B6E6FAF380BF000 AS DateTimeOffset), N'bb8d47b6-6005-4651-b2e2-f817696789f5', 79, 1)
INSERT [dbo].[Demand] ([Created], [Comrade], [IssueNumberFrom], [Quantity]) VALUES (CAST(0x0780B6F0A3A793380BF000 AS DateTimeOffset), N'a7160c64-9c46-44af-9fa9-fc0021d0f983', 79, 0)
/****** Object:  StoredProcedure [dbo].[Comrade_Update]    Script Date: 08/02/2014 17:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Comrade_Update]
	@Id						UNIQUEIDENTIFIER
	,@FirstName				NVARCHAR(256)	= NULL
	,@SecondName			NVARCHAR(256)	= NULL
	,@LastName				NVARCHAR(256)	= NULL
AS

	UPDATE Comrade SET
		FirstName = ISNULL(@FirstName, FirstName)
		,SecondName = ISNULL(@SecondName, SecondName)
		,LastName = ISNULL(@LastName, LastName)
	WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Comrade_Get]    Script Date: 08/02/2014 17:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Comrade_Get]
	@Id UNIQUEIDENTIFIER = NULL
AS
	SELECT
		c.Id
		,c.FirstName
		,c.SecondName
		,c.LastName
		,c.DemandQuantity
		,c.DemandSetDate
		,c.DemandSetIssueNumber
	FROM
		Comrade c
	WHERE
		c.Id = @Id OR @Id IS NULL
GO
/****** Object:  StoredProcedure [dbo].[Comrade_Add]    Script Date: 08/02/2014 17:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Comrade_Add]
	@Id						UNIQUEIDENTIFIER
	,@FirstName				NVARCHAR(256)
	,@SecondName			NVARCHAR(256)
	,@LastName				NVARCHAR(256)

AS

	INSERT Comrade(
		Id
		,FirstName
		,SecondName
		,LastName
	) VALUES (
		@Id
		,@FirstName
		,@SecondName
		,@LastName
	)
GO
/****** Object:  StoredProcedure [dbo].[Operation_Get]    Script Date: 08/02/2014 17:59:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Operation_Get]
	@Id INT = NULL
AS
	SELECT
		o.Id
		,o.[Date]
		,o.IssueNumber
		,o.ComradeFrom
		,o.ComradeTo
		,o.Quantity
		,o.Comment
	FROM
		Operation o
	WHERE
		o.Id = @Id OR @Id IS NULL
GO
/****** Object:  StoredProcedure [dbo].[Operation_Delete]    Script Date: 08/02/2014 17:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Operation_Delete]
	@Id INT = NULL
AS
	DELETE
		Operation
	WHERE
		Id = @id
GO
/****** Object:  StoredProcedure [dbo].[Operation_Add]    Script Date: 08/02/2014 17:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Operation_Add]
	@Date			DATETIMEOFFSET
	,@IssueNumber	INT
	,@ComradeFrom	UNIQUEIDENTIFIER
	,@ComradeTo		UNIQUEIDENTIFIER
	,@Quantity		INT
	,@Comment		NVARCHAR(256) = NULL
AS

	INSERT Operation(
		[Date]
		,IssueNumber
		,ComradeFrom
		,ComradeTo
		,Quantity
		,Comment
	) VALUES (
		@Date
		,@IssueNumber
		,@ComradeFrom
		,@ComradeTo
		,@Quantity
		,@Comment
	)
	
	SELECT SCOPE_IDENTITY() Id
GO
/****** Object:  Table [dbo].[DistributionHierarchy]    Script Date: 08/02/2014 17:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionHierarchy](
	[Created] [datetimeoffset](7) NOT NULL,
	[Comrade] [uniqueidentifier] NOT NULL,
	[Parent] [uniqueidentifier] NULL,
	[Comment] [nvarchar](1024) NULL,
 CONSTRAINT [PK_DistributionHierarchy_Comrade] PRIMARY KEY CLUSTERED 
(
	[Comrade] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Demand_Update]    Script Date: 08/02/2014 17:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Demand_Update]
	@Comrade			UNIQUEIDENTIFIER
	,@IssueNumberFrom	INT
	,@Quantity			INT
AS
	
	UPDATE Demand SET
		Quantity = @Quantity
	WHERE
		Comrade = @Comrade
		AND 
		IssueNumberFrom = @IssueNumberFrom
GO
/****** Object:  StoredProcedure [dbo].[Demand_Get]    Script Date: 08/02/2014 17:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Demand_Get]
	@Comrade	UNIQUEIDENTIFIER
AS

	SELECT
		Created
		,Comrade
		,IssueNumberFrom
		,Quantity
	FROM
		Demand
	WHERE
		Comrade = @Comrade
	ORDER BY
		IssueNumberFrom
GO
/****** Object:  StoredProcedure [dbo].[Demand_Fill]    Script Date: 08/02/2014 17:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Demand_Fill] 
	@Comrade			UNIQUEIDENTIFIER
	,@IssueNumberFrom	INT
	,@Quantity			INT
AS

	INSERT
		Demand (Comrade, IssueNumberFrom, Quantity)
	SELECT
		@Comrade, @IssueNumberFrom, @Quantity
GO
/****** Object:  StoredProcedure [dbo].[DistributionHierarchy_Update]    Script Date: 08/02/2014 17:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DistributionHierarchy_Update]
	@Comrade	UNIQUEIDENTIFIER
	,@Parent	UNIQUEIDENTIFIER	= NULL
	,@Comment	NVARCHAR(1024)		= NULL
AS
	UPDATE DistributionHierarchy SET
		Parent = @Parent
		,Comment = ISNULL(@Comment, Comment)
	WHERE
		Comrade = @Comrade
GO
/****** Object:  StoredProcedure [dbo].[DistributionHierarchy_Add]    Script Date: 08/02/2014 17:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DistributionHierarchy_Add]
	@Comrade	UNIQUEIDENTIFIER
	,@Parent	UNIQUEIDENTIFIER
	,@Created	DATETIMEOFFSET
	,@Comment	NVARCHAR(1024)
AS
	INSERT
		DistributionHierarchy (Created, Comrade, Parent, Comment)
	SELECT
		@Created, @Comrade, @Parent, @Comment
GO
/****** Object:  Default [DF__Comrade__charged__3E52440B]    Script Date: 08/02/2014 17:58:36 ******/
ALTER TABLE [dbo].[Comrade] ADD  DEFAULT ((0)) FOR [Charged]
GO
/****** Object:  ForeignKey [FK__Demand__Comrade__4316F928]    Script Date: 08/02/2014 17:58:36 ******/
ALTER TABLE [dbo].[Demand]  WITH CHECK ADD FOREIGN KEY([Comrade])
REFERENCES [dbo].[Comrade] ([Id])
GO
/****** Object:  ForeignKey [FK__Distribut__Comra__4AB81AF0]    Script Date: 08/02/2014 17:59:23 ******/
ALTER TABLE [dbo].[DistributionHierarchy]  WITH CHECK ADD FOREIGN KEY([Comrade])
REFERENCES [dbo].[Comrade] ([Id])
GO
/****** Object:  ForeignKey [FK__Distribut__Paren__4BAC3F29]    Script Date: 08/02/2014 17:59:23 ******/
ALTER TABLE [dbo].[DistributionHierarchy]  WITH CHECK ADD FOREIGN KEY([Parent])
REFERENCES [dbo].[Comrade] ([Id])
GO
