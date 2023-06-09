USE [master]
GO
/****** Object:  Database [DapperASPNetCore]    Script Date: 19-03-2023 19:45:16 ******/
CREATE DATABASE [DapperASPNetCore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DapperASPNetCore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DapperASPNetCore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DapperASPNetCore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DapperASPNetCore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DapperASPNetCore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DapperASPNetCore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DapperASPNetCore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET ARITHABORT OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DapperASPNetCore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DapperASPNetCore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DapperASPNetCore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DapperASPNetCore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET RECOVERY FULL 
GO
ALTER DATABASE [DapperASPNetCore] SET  MULTI_USER 
GO
ALTER DATABASE [DapperASPNetCore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DapperASPNetCore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DapperASPNetCore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DapperASPNetCore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DapperASPNetCore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DapperASPNetCore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DapperASPNetCore', N'ON'
GO
ALTER DATABASE [DapperASPNetCore] SET QUERY_STORE = ON
GO
ALTER DATABASE [DapperASPNetCore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DapperASPNetCore]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 19-03-2023 19:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[DateOfBirth] [datetime] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DapperASPNetCore] SET  READ_WRITE 
GO
