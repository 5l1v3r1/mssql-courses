USE [master]
GO
/****** Object:  Database [CUST_DB]    Script Date: 20.03.2017 13:25:21 ******/
CREATE DATABASE [CUST_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CUST_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\CUST_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CUST_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\CUST_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CUST_DB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CUST_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CUST_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CUST_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CUST_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CUST_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CUST_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CUST_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CUST_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CUST_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CUST_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CUST_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CUST_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CUST_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CUST_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CUST_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CUST_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CUST_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CUST_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CUST_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CUST_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CUST_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CUST_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CUST_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CUST_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CUST_DB] SET  MULTI_USER 
GO
ALTER DATABASE [CUST_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CUST_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CUST_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CUST_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CUST_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CUST_DB] SET QUERY_STORE = OFF
GO
USE [CUST_DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CUST_DB]
GO
/****** Object:  Table [dbo].[CUST_TB]    Script Date: 20.03.2017 13:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUST_TB](
	[cust_id] [uniqueidentifier] NOT NULL,
	[ad] [nvarchar](20) NULL,
	[soyad] [nvarchar](20) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CUST_TB] ADD  DEFAULT (newid()) FOR [cust_id]
GO
USE [master]
GO
ALTER DATABASE [CUST_DB] SET  READ_WRITE 
GO
