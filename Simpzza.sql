USE [master]
GO
/****** Object:  Database [Simpizza]    Script Date: 05/12/2020 5:59:33 ******/
CREATE DATABASE [Simpizza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Simpizza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Simpizza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Simpizza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Simpizza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Simpizza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Simpizza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Simpizza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Simpizza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Simpizza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Simpizza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Simpizza] SET ARITHABORT OFF 
GO
ALTER DATABASE [Simpizza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Simpizza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Simpizza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Simpizza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Simpizza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Simpizza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Simpizza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Simpizza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Simpizza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Simpizza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Simpizza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Simpizza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Simpizza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Simpizza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Simpizza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Simpizza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Simpizza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Simpizza] SET RECOVERY FULL 
GO
ALTER DATABASE [Simpizza] SET  MULTI_USER 
GO
ALTER DATABASE [Simpizza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Simpizza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Simpizza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Simpizza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Simpizza] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Simpizza', N'ON'
GO
ALTER DATABASE [Simpizza] SET QUERY_STORE = OFF
GO
USE [Simpizza]
GO
/****** Object:  Table [dbo].[tbl_Combos]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Combos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[Precio] [float] NOT NULL,
 CONSTRAINT [PK_tbl_Combos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Empleados]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Pizza]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Pizza](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tamaño] [nvarchar](50) NULL,
	[Ingredientes] [nvarchar](50) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_tbl_pizza] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SU]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_SU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Combos] ON 

INSERT [dbo].[tbl_Combos] ([Id], [Nombre], [Descripcion], [Precio]) VALUES (1, N'Manuela', N'Exelente para la persona sola, pero no por eso con mala compañia', 100)
INSERT [dbo].[tbl_Combos] ([Id], [Nombre], [Descripcion], [Precio]) VALUES (2, N'Waifu', N'Especial para ti y tu besto-waifu', 200)
INSERT [dbo].[tbl_Combos] ([Id], [Nombre], [Descripcion], [Precio]) VALUES (3, N'Squad', N'Especial cuandon andas con tu escuadra para calmar el hambre ', 350)
INSERT [dbo].[tbl_Combos] ([Id], [Nombre], [Descripcion], [Precio]) VALUES (4, N'MMORPG', N'Esto es para algo bestial, para alimentar a todo una colonia', 500)
SET IDENTITY_INSERT [dbo].[tbl_Combos] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Empleados] ON 

INSERT [dbo].[tbl_Empleados] ([Id], [Nombre], [Contraseña]) VALUES (1, N'Mauricio', N'54321')
INSERT [dbo].[tbl_Empleados] ([Id], [Nombre], [Contraseña]) VALUES (2, N'Pepe', N'123')
SET IDENTITY_INSERT [dbo].[tbl_Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Pizza] ON 

INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (1, N'Chica', N'Crotolamo', 30.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (2, N'Mediana', N'Crotolamo', 80.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (3, N'Grande', N'Crotolamo', 120.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (4, N'Extra Grande', N'Crotolamo', 200.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (5, N'Chica', N'Hobo', 30.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (6, N'Mediana', N'Hobo', 60.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (7, N'Grande', N'Hobo', 100.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (8, N'Extra Grande', N'Hobo', 180.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (9, N'Chica', N'Padalustro', 50.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (10, N'Mediana', N'Padalustro', 90.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (11, N'Grande', N'Padalustro', 150.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (12, N'Extra Grande', N'Padalustro', 200.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (13, N'Chica', N'Hawaiana', 50.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (14, N'Mediana', N'Hawaiana', 80.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (15, N'Grande', N'Hawaiana', 140.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (16, N'Extra Grande', N'Hawaiana', 200.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (17, N'Chica', N'3 Quesos', 80.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (18, N'Mediana', N'3 Quesos', 100.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (19, N'Grande', N'3 Quesos', 200.0000)
INSERT [dbo].[tbl_Pizza] ([Id], [Tamaño], [Ingredientes], [Precio]) VALUES (20, N'Extra Grande', N'3 Quesos', 250.0000)
SET IDENTITY_INSERT [dbo].[tbl_Pizza] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_SU] ON 

INSERT [dbo].[tbl_SU] ([Id], [Nombre], [Contraseña]) VALUES (1, N'Manuel', N'666')
SET IDENTITY_INSERT [dbo].[tbl_SU] OFF
GO
/****** Object:  StoredProcedure [dbo].[AddCombo]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddCombo]
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Precio nvarchar(50)
AS
BEGIN
	insert into [dbo].[tbl_Combos](Nombre,Descripcion,Precio) values (@Nombre, @Descripcion,@Precio)
	select * from [dbo].[tbl_Combos] where Id = IDENT_CURRENT ('[dbo].[tbl_Combos]')
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCombos]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllCombos]
AS
BEGIN
	SELECT * FROM [dbo].[tbl_Combos]
END
GO
/****** Object:  StoredProcedure [dbo].[GetComboById]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetComboById]
@Id int
AS
BEGIN
	SELECT* FROM [dbo].[tbl_Combos] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_AddEmpleado]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_AddEmpleado] 
	@Nombre nvarchar(50),
	@Contraseña nvarchar(50)

AS
BEGIN
	insert into [dbo].[tbl_Empleados](Nombre,Contraseña) values (@Nombre, @Contraseña)
	select * from [dbo].[tbl_Empleados] where Id = IDENT_CURRENT ('[dbo].[tbl_Empleados]')
END
GO
/****** Object:  StoredProcedure [dbo].[stp_AddPizza]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_AddPizza]
	@Tamaño nvarchar(50),
	@Ingredientes nvarchar(50),
	@Precio nvarchar(50)
AS
BEGIN
	insert into [dbo].[tbl_Pizza](Tamaño,Ingredientes,Precio) values (@Tamaño, @Ingredientes,@Precio)
	select * from [dbo].[tbl_Pizza] where Id = IDENT_CURRENT ('[dbo].[tbl_Pizza]')
END
GO
/****** Object:  StoredProcedure [dbo].[stp_AddSU]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_AddSU]
	@Nombre nvarchar(50),
	@Contraseña nvarchar(50)
AS
BEGIN
	insert into [dbo].[tbl_SU](Nombre,Contraseña) values (@Nombre, @Contraseña)
	select * from [dbo].[tbl_SU] where Id = IDENT_CURRENT ('[dbo].[tbl_SU]')
END
GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteEmpleado]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_DeleteEmpleado] 
	@Id int

AS
BEGIN
	 DELETE FROM [dbo].[tbl_Empleados] WHERE id = @id
	SELECT * FROM [dbo].[tbl_Empleados] WHERE id = @id
END

GO
/****** Object:  StoredProcedure [dbo].[stp_DeletePizza]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_DeletePizza]
	@Id int
AS
BEGIN
	 DELETE FROM [dbo].[tbl_Pizza] WHERE id = @id
	SELECT * FROM [dbo].[tbl_Pizza] WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_GetAllEmpleados]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_GetAllEmpleados] 
	
AS
BEGIN
	SELECT * FROM [dbo].[tbl_Empleados]
END

GO
/****** Object:  StoredProcedure [dbo].[stp_GetAllPizza]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_GetAllPizza]

AS
BEGIN
	SELECT * FROM [dbo].[tbl_Pizza]
END
GO
/****** Object:  StoredProcedure [dbo].[stp_GetEmpleadoById]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_GetEmpleadoById]
	@Id int
AS
BEGIN
	SELECT* FROM [dbo].[tbl_Empleados] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_GetPizzaById]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_GetPizzaById]
	@Id int
AS
BEGIN
	SELECT* FROM [dbo].[tbl_Pizza] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_GetSUById]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_GetSUById]
	@Id int
AS
BEGIN
	 SELECT* FROM [dbo].[tbl_Empleados] WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_Login]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_Login]

	@Nombre nvarchar(50),
	@Contraseña nvarchar(50)

AS
BEGIN

	SELECT * FROM [dbo].[tbl_Empleados] WHERE Nombre = @Nombre AND Contraseña = @Contraseña

END
GO
/****** Object:  StoredProcedure [dbo].[stp_LoginSU]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_LoginSU] 

	@Nombre nvarchar(50),
	@Contraseña nvarchar(50)

AS
BEGIN

	SELECT * FROM [dbo].[tbl_SU] WHERE Nombre = @Nombre AND Contraseña = @Contraseña

END

GO
/****** Object:  StoredProcedure [dbo].[stp_UpdateEmpleado]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_UpdateEmpleado]
	@Id int,
	@Nombre nvarchar(50),
	@Contraseña nvarchar(50)
AS
BEGIN
	update [dbo].[tbl_Empleados] set Nombre = @Nombre,Contraseña = @Contraseña WHERE Id = @Id
	select * from [dbo].[tbl_Empleados] where Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[stp_UpdatePizza]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_UpdatePizza]
	@Id int,
	@Ingredientes nvarchar(50),
	@Tamaño nvarchar(50),
	@Precio nvarchar(50)
AS
BEGIN
	update [dbo].[tbl_Pizza] set Tamaño = @Tamaño, Ingredientes = @Ingredientes, @Precio = @Precio WHERE Id = @Id
	select * from [dbo].[tbl_Pizza] where Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCombo]    Script Date: 05/12/2020 5:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCombo]
	@Id int,
	@Nombre int,
	@Descripcion nvarchar(50),
	@Precio nvarchar(50)
AS
BEGIN
	update [dbo].[tbl_Combos] set Nombre = @Nombre,Descripcion = @Descripcion, Precio = @Precio WHERE Id = @Id
	select * from [dbo].[tbl_Combos] where Id = @Id
END
GO
USE [master]
GO
ALTER DATABASE [Simpizza] SET  READ_WRITE 
GO
