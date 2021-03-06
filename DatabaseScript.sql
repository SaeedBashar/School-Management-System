USE [master]
GO
/****** Object:  Database [SchoolManagement]    Script Date: 14-Sep-21 14:21:53 PM ******/
CREATE DATABASE [SchoolManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SchoolManagement.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SchoolManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SchoolManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SchoolManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SchoolManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchoolManagement] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SchoolManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SchoolManagement] SET QUERY_STORE = OFF
GO
USE [SchoolManagement]
GO
/****** Object:  Table [dbo].[Core_Mathematics]    Script Date: 14-Sep-21 14:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Mathematics](
	[std_id] [char](5) NOT NULL,
	[class_work] [decimal](5, 2) NOT NULL,
	[mid_term] [decimal](5, 2) NOT NULL,
	[end_term] [decimal](5, 2) NOT NULL,
	[Sub_id] [char](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[sub_id] [int] IDENTITY(200,1) NOT NULL,
	[sub_name] [varchar](20) NULL,
	[Teacher_id] [int] NULL,
 CONSTRAINT [PK__Courses__694106B0174E03D4] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[Fname] [varchar](15) NOT NULL,
	[Lname] [varchar](15) NOT NULL,
	[Mname] [varchar](10) NULL,
	[DOB] [date] NULL,
	[Gender] [char](10) NULL,
	[House_id] [int] NULL,
	[Program_id] [char](1) NULL,
	[Guardian_name] [varchar](30) NULL,
	[Guardian_contact] [varchar](15) NULL,
	[Email] [varchar](40) NULL,
	[Student_id] [int] IDENTITY(1000,1) NOT NULL,
	[Total_fees] [decimal](10, 2) NULL,
	[Balance_fees] [decimal](10, 2) NULL,
 CONSTRAINT [PK__STUDENTS__A2F7EDF4D0B80FFF] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.Core_Mathematics.Sub_id AS Expr1
FROM            dbo.STUDENTS CROSS JOIN
                         dbo.Courses CROSS JOIN
                         dbo.Core_Mathematics
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[Fname] [varchar](15) NOT NULL,
	[lname] [varchar](15) NOT NULL,
	[Mname] [varchar](15) NULL,
	[Phone] [varchar](15) NOT NULL,
	[Email] [varchar](40) NULL,
	[Dob] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Admin_id] [int] IDENTITY(9000,1) NOT NULL,
 CONSTRAINT [PK__Administ__4A311D2FEAFE01BA] PRIMARY KEY CLUSTERED 
(
	[Admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminPasswordTable]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminPasswordTable](
	[uname] [varchar](20) NOT NULL,
	[pword] [varchar](20) NOT NULL,
	[adm_id] [int] NULL,
	[loginStatus] [bit] NULL,
 CONSTRAINT [NonRepeat] UNIQUE NONCLUSTERED 
(
	[uname] ASC,
	[pword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[title] [varchar](50) NULL,
	[content] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[course_id] [int] NULL,
	[title] [varchar](100) NULL,
	[content] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Biology]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biology](
	[std_id] [int] NULL,
	[class_work] [decimal](5, 2) NULL,
	[mid_term] [decimal](5, 2) NULL,
	[end_term] [decimal](5, 2) NULL,
	[sub_id] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chemistry]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chemistry](
	[std_id] [int] NULL,
	[class_work] [decimal](5, 2) NULL,
	[mid_term] [decimal](5, 2) NULL,
	[end_term] [decimal](5, 2) NULL,
	[sub_id] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elect_Math]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elect_Math](
	[std_id] [int] NULL,
	[class_work] [decimal](5, 2) NULL,
	[mid_term] [decimal](5, 2) NULL,
	[end_term] [decimal](5, 2) NULL,
	[sub_id] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[English]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[English](
	[std_id] [int] NULL,
	[class_work] [decimal](5, 2) NULL,
	[mid_term] [decimal](5, 2) NULL,
	[end_term] [decimal](5, 2) NULL,
	[sub_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTable]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTable](
	[title] [varchar](50) NULL,
	[content] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guardians]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guardians](
	[Address] [varchar](40) NULL,
	[Ward_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Houses]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Houses](
	[House_id] [int] IDENTITY(20,10) NOT NULL,
	[House_name] [varchar](20) NULL,
	[House_master_id] [char](5) NULL,
 CONSTRAINT [PK__Houses__E396AFE1866C7165] PRIMARY KEY CLUSTERED 
(
	[House_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inter_science]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inter_science](
	[std_id] [int] NOT NULL,
	[class_work] [decimal](5, 2) NOT NULL,
	[mid_term] [decimal](5, 2) NOT NULL,
	[end_term] [decimal](5, 2) NOT NULL,
	[Sub_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Physics]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physics](
	[std_id] [int] NULL,
	[class_work] [decimal](5, 2) NULL,
	[mid_term] [decimal](5, 2) NULL,
	[end_term] [decimal](5, 2) NULL,
	[sub_id] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Prog_id] [int] IDENTITY(100,1) NOT NULL,
	[Prog_name] [varchar](30) NULL,
	[Head_id] [char](1) NULL,
 CONSTRAINT [PK__Programs__C7E22E566C59B8FB] PRIMARY KEY CLUSTERED 
(
	[Prog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School_Fees]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School_Fees](
	[Total_Fees] [decimal](6, 2) NULL,
	[Amount_Paid] [decimal](6, 2) NULL,
	[Std_id] [int] NULL,
	[Date_paid] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Social_studies]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Social_studies](
	[std_id] [int] NOT NULL,
	[class_work] [decimal](5, 2) NOT NULL,
	[mid_term] [decimal](5, 2) NOT NULL,
	[end_term] [decimal](5, 2) NOT NULL,
	[Sub_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Stat_id] [char](1) NOT NULL,
	[Stat_name] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Status__3D4E5A36D27169EF] PRIMARY KEY CLUSTERED 
(
	[Stat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAssignment]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAssignment](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[std_id] [int] NULL,
	[file_name] [varchar](50) NULL,
	[FileType] [nvarchar](200) NULL,
	[extension] [varchar](10) NULL,
	[file_path] [varchar](200) NULL,
	[Sent_date] [date] NULL,
	[Sent_time] [date] NULL,
	[File_data] [varbinary](max) NULL,
	[sub_id] [int] NULL,
 CONSTRAINT [PK_StudentAssignment] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentPasswordTable]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPasswordTable](
	[uname] [varchar](20) NULL,
	[pword] [varchar](20) NULL,
	[std_id] [int] NULL,
	[loginStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TutorPasswordTable]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorPasswordTable](
	[uname] [varchar](20) NULL,
	[pword] [varchar](20) NULL,
	[tut_id] [int] NULL,
	[loginStatus] [bit] NULL,
 CONSTRAINT [NonRepeatTutor] UNIQUE NONCLUSTERED 
(
	[uname] ASC,
	[pword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutors]    Script Date: 14-Sep-21 14:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutors](
	[Fname] [varchar](15) NOT NULL,
	[lname] [varchar](15) NOT NULL,
	[Mname] [varchar](15) NULL,
	[Phone] [varchar](15) NOT NULL,
	[Email] [varchar](40) NULL,
	[Dob] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Tutor_id] [int] IDENTITY(5000,1) NOT NULL,
	[Sub_taught_id] [int] NULL,
 CONSTRAINT [PK_Tutors] PRIMARY KEY CLUSTERED 
(
	[Tutor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[18] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "STUDENTS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 273
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Courses"
            Begin Extent = 
               Top = 6
               Left = 258
               Bottom = 136
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Core_Mathematics"
            Begin Extent = 
               Top = 6
               Left = 466
               Bottom = 163
               Right = 635
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [SchoolManagement] SET  READ_WRITE 
GO
