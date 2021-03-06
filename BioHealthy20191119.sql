USE [BioHealthy]
GO
/****** Object:  Table [dbo].[Tabla_Admin]    Script Date: 19/11/2019 2:14:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Admin](
	[Id_Admin] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Tier] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Admin] PRIMARY KEY CLUSTERED 
(
	[Id_Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Cargo]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Cargo](
	[Id_Cargo] [int] IDENTITY(1,1) NOT NULL,
	[Descripción] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ciudad]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ciudad](
	[Cod_Ciudad] [int] IDENTITY(1,1) NOT NULL,
	[Ciudad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Cod_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Huellas]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Huellas](
	[Id_Huella] [int] IDENTITY(1,1) NOT NULL,
	[Meñique_Izquierdo] [varbinary](max) NULL,
	[Anular_Izquierdo] [varbinary](max) NULL,
	[Dedo_Medio_Izquierdo] [varbinary](max) NULL,
	[Índice_Izquierdo] [varbinary](max) NULL,
	[Pulgar_Izquierdo] [varbinary](max) NULL,
	[Pulgar_Derecho] [varbinary](max) NULL,
	[Índice_Derecho] [varbinary](max) NULL,
	[Dedo_Medio_Derecho] [varbinary](max) NULL,
	[Anular_Derecho] [varbinary](max) NULL,
	[Meñique_Derecho] [varbinary](max) NULL,
 CONSTRAINT [PK__Tabla_Hu__EFE1A8DCB70C8BFA] PRIMARY KEY CLUSTERED 
(
	[Id_Huella] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ingreso_Empleado]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ingreso_Empleado](
	[Fecha] [date] NOT NULL,
	[Id_Huella] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ingreso_Visitante]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ingreso_Visitante](
	[Fecha] [date] NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL,
	[Motivo_Visita] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Usuario]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Usuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Id_Admin] [int] NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Tabla_Us__63C76BE22F955F53] PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Visitantes]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Visitantes](
	[Id_Visitante] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NULL,
	[Cod_Ciudad] [int] NOT NULL,
	[Ruta_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Tabla_Vi__E1A81005B580DD52] PRIMARY KEY CLUSTERED 
(
	[Id_Visitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tablas_Empleados]    Script Date: 19/11/2019 2:14:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tablas_Empleados](
	[Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Id_Cargo] [int] NOT NULL,
	[Cod_Ciudad] [int] NOT NULL,
	[Id_Huella] [int] NOT NULL,
	[Ruta_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Tablas_E__74056223DFF10E8A] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tabla_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Usuario_Tabla_Admin] FOREIGN KEY([Id_Admin])
REFERENCES [dbo].[Tabla_Admin] ([Id_Admin])
GO
ALTER TABLE [dbo].[Tabla_Usuario] CHECK CONSTRAINT [FK_Tabla_Usuario_Tabla_Admin]
GO
ALTER TABLE [dbo].[Tabla_Visitantes]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ciudad] FOREIGN KEY([Cod_Ciudad])
REFERENCES [dbo].[Tabla_Ciudad] ([Cod_Ciudad])
GO
ALTER TABLE [dbo].[Tabla_Visitantes] CHECK CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ciudad]
GO
ALTER TABLE [dbo].[Tablas_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tablas_Empleados_Tabla_Cargo] FOREIGN KEY([Id_Cargo])
REFERENCES [dbo].[Tabla_Cargo] ([Id_Cargo])
GO
ALTER TABLE [dbo].[Tablas_Empleados] CHECK CONSTRAINT [FK_Tablas_Empleados_Tabla_Cargo]
GO
ALTER TABLE [dbo].[Tablas_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tablas_Empleados_Tabla_Ciudad] FOREIGN KEY([Cod_Ciudad])
REFERENCES [dbo].[Tabla_Ciudad] ([Cod_Ciudad])
GO
ALTER TABLE [dbo].[Tablas_Empleados] CHECK CONSTRAINT [FK_Tablas_Empleados_Tabla_Ciudad]
GO
ALTER TABLE [dbo].[Tablas_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tablas_Empleados_Tabla_Huellas] FOREIGN KEY([Id_Huella])
REFERENCES [dbo].[Tabla_Huellas] ([Id_Huella])
GO
ALTER TABLE [dbo].[Tablas_Empleados] CHECK CONSTRAINT [FK_Tablas_Empleados_Tabla_Huellas]
GO
