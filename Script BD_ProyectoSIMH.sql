USE [master]
GO
/****** Object:  Database [BD.SIMH]    Script Date: 15/10/2022 02:06:37 a. m. ******/
CREATE DATABASE [BD.SIMH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD.SIMH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD.SIMH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD.SIMH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD.SIMH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD.SIMH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD.SIMH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD.SIMH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD.SIMH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD.SIMH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD.SIMH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD.SIMH] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD.SIMH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD.SIMH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD.SIMH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD.SIMH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD.SIMH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD.SIMH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD.SIMH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD.SIMH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD.SIMH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD.SIMH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD.SIMH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD.SIMH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD.SIMH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD.SIMH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD.SIMH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD.SIMH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD.SIMH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD.SIMH] SET RECOVERY FULL 
GO
ALTER DATABASE [BD.SIMH] SET  MULTI_USER 
GO
ALTER DATABASE [BD.SIMH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD.SIMH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD.SIMH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD.SIMH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD.SIMH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD.SIMH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD.SIMH', N'ON'
GO
ALTER DATABASE [BD.SIMH] SET QUERY_STORE = OFF
GO
USE [BD.SIMH]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[IdCargo] [int] NOT NULL,
	[Descripción] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleRegistroEgreso]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRegistroEgreso](
	[IdDetalleEgreso] [int] NOT NULL,
	[IdRegistro] [int] NOT NULL,
	[CantidadEgreso] [int] NOT NULL,
	[IdMedicamento] [int] NOT NULL,
	[FechaEgreso] [date] NOT NULL,
 CONSTRAINT [PK_DetalleEgreso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleEgreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleRegistroIngreso]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRegistroIngreso](
	[IdDetalleIngreso] [int] NOT NULL,
	[IdRegistro] [int] NOT NULL,
	[CantidadIngreso] [int] NOT NULL,
	[IdMedicamento] [int] NOT NULL,
	[FechaIngreso] [int] NOT NULL,
 CONSTRAINT [PK_DetalleIngreso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[IdMedicamento] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Presentacion] [varchar](50) NOT NULL,
	[Concentracion] [varchar](50) NOT NULL,
	[Laboratorio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[IdMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificacion]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificacion](
	[IdNotificacion] [int] NOT NULL,
	[DescripcionNotificacion] [varchar](max) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[FechaNotificacion] [date] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Notificacion] PRIMARY KEY CLUSTERED 
(
	[IdNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[IdRegistro] [int] NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Registro] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/10/2022 02:06:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[IdCargo] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cargo] ([IdCargo], [Descripción]) VALUES (1, N'Medico')
INSERT [dbo].[Cargo] ([IdCargo], [Descripción]) VALUES (2, N'Enfermera jefe')
INSERT [dbo].[Cargo] ([IdCargo], [Descripción]) VALUES (3, N'Enfermera auxiliar')
GO
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [IdCargo]) VALUES (1, N'Maritza', N'Gil', N'marig@gmail.com', N'3146987450', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Email], [Telefono], [IdCargo]) VALUES (2, N'Juan', N'Ramirez', N'jpramirez@gmail.com', N'3165874093', 2)
GO
ALTER TABLE [dbo].[DetalleRegistroEgreso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleEgreso_Medicamentos] FOREIGN KEY([IdMedicamento])
REFERENCES [dbo].[Medicamentos] ([IdMedicamento])
GO
ALTER TABLE [dbo].[DetalleRegistroEgreso] CHECK CONSTRAINT [FK_DetalleEgreso_Medicamentos]
GO
ALTER TABLE [dbo].[DetalleRegistroEgreso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleEgreso_Registro] FOREIGN KEY([IdRegistro])
REFERENCES [dbo].[Registro] ([IdRegistro])
GO
ALTER TABLE [dbo].[DetalleRegistroEgreso] CHECK CONSTRAINT [FK_DetalleEgreso_Registro]
GO
ALTER TABLE [dbo].[DetalleRegistroIngreso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleIngreso_Medicamentos] FOREIGN KEY([IdMedicamento])
REFERENCES [dbo].[Medicamentos] ([IdMedicamento])
GO
ALTER TABLE [dbo].[DetalleRegistroIngreso] CHECK CONSTRAINT [FK_DetalleIngreso_Medicamentos]
GO
ALTER TABLE [dbo].[DetalleRegistroIngreso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleIngreso_Registro] FOREIGN KEY([IdRegistro])
REFERENCES [dbo].[Registro] ([IdRegistro])
GO
ALTER TABLE [dbo].[DetalleRegistroIngreso] CHECK CONSTRAINT [FK_DetalleIngreso_Registro]
GO
ALTER TABLE [dbo].[Notificacion]  WITH CHECK ADD  CONSTRAINT [FK_Notificacion_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Notificacion] CHECK CONSTRAINT [FK_Notificacion_Usuario]
GO
ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [FK_Registro_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Cargo] FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Cargo] ([IdCargo])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Cargo]
GO
USE [master]
GO
ALTER DATABASE [BD.SIMH] SET  READ_WRITE 
GO
