USE [DB_Registro71119]
GO
/****** Object:  Table [dbo].[Tabla_Cargo]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Cargo](
	[Id_Cargo] [int] NOT NULL,
	[Descripición] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Contacto]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Contacto](
	[Id_Contacto] [int] NOT NULL,
	[Teléfono_Personal] [nvarchar](50) NOT NULL,
	[Teléfono_Laboral] [nvarchar](50) NULL,
	[Extención_Oficina] [nchar](10) NULL,
 CONSTRAINT [PK_Tabla_Contacto] PRIMARY KEY CLUSTERED 
(
	[Id_Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Huella]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Huella](
	[Id_Huella] [int] NOT NULL,
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
 CONSTRAINT [PK_Tabla_Huella] PRIMARY KEY CLUSTERED 
(
	[Id_Huella] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Persona]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Persona](
	[Id_Persona] [int] NOT NULL,
	[Tipo_Documento] [nvarchar](20) NOT NULL,
	[Documento] [nvarchar](50) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Sexo] [nvarchar](50) NOT NULL,
	[Id_Contacto] [int] NOT NULL,
	[Id_Ubicación] [int] NULL,
	[Id_Cargo] [int] NOT NULL,
	[Id_Huella] [int] NULL,
	[Dirección_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tabla_Persona] PRIMARY KEY CLUSTERED 
(
	[Id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Registro_Empleados]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Registro_Empleados](
	[Id_Persona] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL,
	[Justificación] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tabla_Registro_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Registro_Visitantes]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Registro_Visitantes](
	[Id_Persona] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Ingreso] [datetime] NOT NULL,
	[Hora_Salida] [datetime] NOT NULL,
	[Justificación] [nvarchar](max) NOT NULL,
	[Dirrección_Imagen] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tabla_Registro_Visitantes] PRIMARY KEY CLUSTERED 
(
	[Id_Persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Ubicación]    Script Date: 8/11/2019 4:11:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Ubicación](
	[Id_Ubicación] [int] NOT NULL,
	[Dirección_Oficina] [nvarchar](50) NULL,
	[Dirreción_Personal] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tabla_Ubicación] PRIMARY KEY CLUSTERED 
(
	[Id_Ubicación] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tabla_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Persona_Tabla_Cargo2] FOREIGN KEY([Id_Cargo])
REFERENCES [dbo].[Tabla_Cargo] ([Id_Cargo])
GO
ALTER TABLE [dbo].[Tabla_Persona] CHECK CONSTRAINT [FK_Tabla_Persona_Tabla_Cargo2]
GO
ALTER TABLE [dbo].[Tabla_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Persona_Tabla_Contacto] FOREIGN KEY([Id_Contacto])
REFERENCES [dbo].[Tabla_Contacto] ([Id_Contacto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tabla_Persona] CHECK CONSTRAINT [FK_Tabla_Persona_Tabla_Contacto]
GO
ALTER TABLE [dbo].[Tabla_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Persona_Tabla_Huella] FOREIGN KEY([Id_Huella])
REFERENCES [dbo].[Tabla_Huella] ([Id_Huella])
GO
ALTER TABLE [dbo].[Tabla_Persona] CHECK CONSTRAINT [FK_Tabla_Persona_Tabla_Huella]
GO
ALTER TABLE [dbo].[Tabla_Persona]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Persona_Tabla_Ubicación] FOREIGN KEY([Id_Ubicación])
REFERENCES [dbo].[Tabla_Ubicación] ([Id_Ubicación])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tabla_Persona] CHECK CONSTRAINT [FK_Tabla_Persona_Tabla_Ubicación]
GO
ALTER TABLE [dbo].[Tabla_Registro_Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Registro_Empleados_Tabla_Persona] FOREIGN KEY([Id_Persona])
REFERENCES [dbo].[Tabla_Persona] ([Id_Persona])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tabla_Registro_Empleados] CHECK CONSTRAINT [FK_Tabla_Registro_Empleados_Tabla_Persona]
GO
ALTER TABLE [dbo].[Tabla_Registro_Visitantes]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Registro_Visitantes_Tabla_Persona] FOREIGN KEY([Id_Persona])
REFERENCES [dbo].[Tabla_Persona] ([Id_Persona])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tabla_Registro_Visitantes] CHECK CONSTRAINT [FK_Tabla_Registro_Visitantes_Tabla_Persona]
GO
