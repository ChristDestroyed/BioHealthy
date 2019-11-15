USE [DB_RegistroB20191115]
GO
/****** Object:  Table [dbo].[Tabla_Cargo]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Cargo](
	[Id_Cargo] [int] IDENTITY(1,1) NOT NULL,
	[Descripción] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ciudad]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ciudad](
	[Cod_Ciudad] [int] NOT NULL,
	[CIudad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Cod_Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Empresas]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Empresas](
	[Cod_Empresa] [nvarchar](50) NOT NULL,
	[Entidad] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Huellas]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Huellas](
	[Id_Huella] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Meñique_Izquierdo] [nvarchar](50) NULL,
	[Anular_Izquierdo] [nvarchar](50) NULL,
	[Dedo_Medio_Izquierdo] [nvarchar](50) NULL,
	[Índice_Izquierdo] [nvarchar](50) NULL,
	[Pulgar_Izquierdo] [nvarchar](50) NULL,
	[Pulgar_Derecho] [nvarchar](50) NULL,
	[Índice_Derecho] [nvarchar](50) NULL,
	[Dedo_Medio_Derecho] [nvarchar](50) NULL,
	[Anular_Derecho] [nvarchar](50) NULL,
	[Meñique_Derecho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Huella] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ingreso_Empleado]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ingreso_Empleado](
	[Id_Huella] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ingreso_Visitante]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ingreso_Visitante](
	[Documento] [nvarchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL,
	[Motivo_Visita] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Usuario]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Usuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Visitantes]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Visitantes](
	[Id_Visitante] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NULL,
	[Cod_Empresa] [nvarchar](50) NULL,
	[Cod_Ciudad] [int] NOT NULL,
	[Ruta_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Tabla_Vi__E1A81005B580DD52] PRIMARY KEY CLUSTERED 
(
	[Id_Visitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tablas_Empleados]    Script Date: 15/11/2019 12:55:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tablas_Empleados](
	[Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Id_Cargo] [int] NOT NULL,
	[Cod_Empresa] [nvarchar](50) NULL,
	[Cod_Ciudad] [int] NOT NULL,
	[Id_Huella] [int] NOT NULL,
	[Ruta_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Tablas_E__74056223DFF10E8A] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tabla_Visitantes]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ciudad] FOREIGN KEY([Cod_Ciudad])
REFERENCES [dbo].[Tabla_Ciudad] ([Cod_Ciudad])
GO
ALTER TABLE [dbo].[Tabla_Visitantes] CHECK CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ciudad]
GO
ALTER TABLE [dbo].[Tabla_Visitantes]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ingreso_Visitante] FOREIGN KEY([Documento])
REFERENCES [dbo].[Tabla_Ingreso_Visitante] ([Documento])
GO
ALTER TABLE [dbo].[Tabla_Visitantes] CHECK CONSTRAINT [FK_Tabla_Visitantes_Tabla_Ingreso_Visitante]
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
ALTER TABLE [dbo].[Tablas_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tablas_Empleados_Tabla_Empresas] FOREIGN KEY([Cod_Empresa])
REFERENCES [dbo].[Tabla_Empresas] ([Cod_Empresa])
GO
ALTER TABLE [dbo].[Tablas_Empleados] CHECK CONSTRAINT [FK_Tablas_Empleados_Tabla_Empresas]
GO
ALTER TABLE [dbo].[Tablas_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tablas_Empleados_Tabla_Huellas] FOREIGN KEY([Id_Huella])
REFERENCES [dbo].[Tabla_Huellas] ([Id_Huella])
GO
ALTER TABLE [dbo].[Tablas_Empleados] CHECK CONSTRAINT [FK_Tablas_Empleados_Tabla_Huellas]
GO
