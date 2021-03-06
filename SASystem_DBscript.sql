USE [master]
GO
/****** Object:  Database [SASystem]    Script Date: 9/3/2021 7:44:18 PM ******/
CREATE DATABASE [SASystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SASystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SASystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SASystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SASystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SASystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SASystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SASystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SASystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SASystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SASystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SASystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SASystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SASystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SASystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SASystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SASystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SASystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SASystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SASystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SASystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SASystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SASystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SASystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SASystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SASystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SASystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SASystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SASystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SASystem] SET RECOVERY FULL 
GO
ALTER DATABASE [SASystem] SET  MULTI_USER 
GO
ALTER DATABASE [SASystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SASystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SASystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SASystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SASystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SASystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SASystem', N'ON'
GO
ALTER DATABASE [SASystem] SET QUERY_STORE = OFF
GO
USE [SASystem]
GO
/****** Object:  Table [dbo].[tblApplicants]    Script Date: 9/3/2021 7:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicants](
	[Id] [bigint] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[Email] [varchar](150) NULL,
	[Phone] [varchar](15) NULL,
	[Disability] [varchar](150) NULL,
	[State] [varchar](50) NULL,
	[LGA] [varchar](50) NULL,
	[NOKName] [varchar](255) NULL,
	[NOKPhone] [varchar](50) NULL,
	[Address] [varchar](255) NULL,
	[Status] [bit] NULL,
	[DateSubmitted] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblApplicationDetails]    Script Date: 9/3/2021 7:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationDetails](
	[Id] [bigint] NULL,
	[Email] [varchar](150) NULL,
	[JambNo] [varchar](50) NULL,
	[AdmissionNo] [varchar](50) NULL,
	[SchoolName] [varchar](255) NULL,
	[YearAdmitted] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[AdmissionLetter] [varchar](255) NULL,
	[AcademicSession] [varchar](25) NULL,
	[ApplicationStatus] [varchar](25) NULL,
	[Paid] [varchar](15) NULL,
	[IndigeneLetter] [varchar](150) NULL,
	[SchoolCategory] [varchar](50) NULL,
	[DateSubmitted] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegister]    Script Date: 9/3/2021 7:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegister](
	[Id] [bigint] NULL,
	[Email] [varchar](150) NULL,
	[Phone] [varchar](50) NULL,
	[DOB] [date] NULL,
	[EducationLevel] [varchar](50) NULL,
	[RegCode] [varchar](50) NULL,
	[RegCodeStatus] [bit] NULL,
	[BioStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 9/3/2021 7:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Email] [varchar](150) NULL,
	[Phone] [varchar](15) NULL,
	[Pass_word] [varchar](50) NULL,
	[LoginStatus] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SASystem] SET  READ_WRITE 
GO
