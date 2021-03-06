USE [DB_Seguros]
GO
/****** Object:  Table [dbo].[tb_Afp]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Afp](
	[CodigoAfp] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoAfp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_BeneficiarioPoliza]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BeneficiarioPoliza](
	[CodigoBeneficiario] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPoliza] [int] NOT NULL,
	[CodigoPersona] [int] NOT NULL,
	[CodigoRelacion] [int] NOT NULL,
	[CodigoTipoPersona] [int] NOT NULL,
	[CodigoEstado] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoBeneficiario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_CiaSeguro]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CiaSeguro](
	[CodigoCiaSeguro] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[SimboloCia] [char](5) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCiaSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Cobertura]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Cobertura](
	[CodigoCobertura] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_DocumentoIdentidad]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_DocumentoIdentidad](
	[CodigoDocumentoIdentidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoDocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Estado]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Estado](
	[CodigoEstado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Modalidad]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Modalidad](
	[CodigoModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Moneda]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Moneda](
	[CodigoMoneda] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Simbolo] [char](5) NOT NULL,
	[Simbolo2] [char](5) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Persona]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Persona](
	[CodigoPersona] [int] IDENTITY(1,1) NOT NULL,
	[CUSSPP] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](100) NOT NULL,
	[ApellidoMaterno] [varchar](100) NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[FechaFallecimiento] [datetime] NOT NULL,
	[CodigoSexo] [int] NOT NULL,
	[CodigoDocumentoIdentidad] [int] NOT NULL,
	[CodigoSalud] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Poliza]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Poliza](
	[CodigoPoliza] [int] IDENTITY(1,1) NOT NULL,
	[NumeroPoliza] [int] NOT NULL,
	[FechaDevengue] [datetime] NOT NULL,
	[FechaDevengueSolicitud] [datetime] NOT NULL,
	[FechaNotificacion] [datetime] NOT NULL,
	[FechaEmision] [datetime] NOT NULL,
	[PrimaUnica] [numeric](15, 8) NOT NULL,
	[PeriodoDiferido] [int] NOT NULL,
	[PeriodoGarantizado] [int] NOT NULL,
	[PorcentajaGarantizado] [numeric](15, 8) NOT NULL,
	[Gratificacion] [char](1) NOT NULL,
	[DerechoCrecer] [char](1) NOT NULL,
	[PensionDevengue] [numeric](15, 8) NOT NULL,
	[CIC] [numeric](15, 8) NOT NULL,
	[CodigoPersona] [int] NOT NULL,
	[CodigoAfp] [int] NOT NULL,
	[CodigoEstado] [int] NOT NULL,
	[CodigoMoneda] [int] NOT NULL,
	[CodigoCobertura] [int] NOT NULL,
	[CodigoModalidad] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Relacion]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Relacion](
	[CodigoRelacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[SimboloRelacion] [char](5) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoRelacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Salud]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Salud](
	[CodigoSalud] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[SimboloSalud] [char](5) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSalud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Sexo]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Sexo](
	[CodigoSexo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[SimboloSexo] [char](5) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_SolicitudCotizacion]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SolicitudCotizacion](
	[CodigoSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[PrimaUnica] [numeric](15, 8) NOT NULL,
	[TasaVenta] [numeric](15, 8) NOT NULL,
	[CIC] [numeric](15, 8) NOT NULL,
	[CodigoPersona] [int] NOT NULL,
	[CodigoAfp] [int] NOT NULL,
	[CodigoCiaSeguro] [int] NOT NULL,
	[CodigoModalidad] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_TipoPersona]    Script Date: 8/10/2017 00:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_TipoPersona](
	[CodigoTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Estado] FOREIGN KEY([CodigoEstado])
REFERENCES [dbo].[tb_Estado] ([CodigoEstado])
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza] CHECK CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Estado]
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Persona] FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[tb_Persona] ([CodigoPersona])
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza] CHECK CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Persona]
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Poliza] FOREIGN KEY([CodigoPoliza])
REFERENCES [dbo].[tb_Poliza] ([CodigoPoliza])
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza] CHECK CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Poliza]
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Relacion] FOREIGN KEY([CodigoRelacion])
REFERENCES [dbo].[tb_Relacion] ([CodigoRelacion])
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza] CHECK CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_Relacion]
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_TipoPersona] FOREIGN KEY([CodigoTipoPersona])
REFERENCES [dbo].[tb_TipoPersona] ([CodigoTipoPersona])
GO
ALTER TABLE [dbo].[tb_BeneficiarioPoliza] CHECK CONSTRAINT [FK_tb_BeneficiarioPoliza_tb_TipoPersona]
GO
ALTER TABLE [dbo].[tb_Persona]  WITH CHECK ADD  CONSTRAINT [FK_tb_Persona_tb_DocumentoIdentidad] FOREIGN KEY([CodigoDocumentoIdentidad])
REFERENCES [dbo].[tb_DocumentoIdentidad] ([CodigoDocumentoIdentidad])
GO
ALTER TABLE [dbo].[tb_Persona] CHECK CONSTRAINT [FK_tb_Persona_tb_DocumentoIdentidad]
GO
ALTER TABLE [dbo].[tb_Persona]  WITH CHECK ADD  CONSTRAINT [FK_tb_Persona_tb_Salud] FOREIGN KEY([CodigoSalud])
REFERENCES [dbo].[tb_Salud] ([CodigoSalud])
GO
ALTER TABLE [dbo].[tb_Persona] CHECK CONSTRAINT [FK_tb_Persona_tb_Salud]
GO
ALTER TABLE [dbo].[tb_Persona]  WITH CHECK ADD  CONSTRAINT [FK_tb_Persona_tb_Sexo] FOREIGN KEY([CodigoSexo])
REFERENCES [dbo].[tb_Sexo] ([CodigoSexo])
GO
ALTER TABLE [dbo].[tb_Persona] CHECK CONSTRAINT [FK_tb_Persona_tb_Sexo]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Afp] FOREIGN KEY([CodigoAfp])
REFERENCES [dbo].[tb_Afp] ([CodigoAfp])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Afp]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Cobertura] FOREIGN KEY([CodigoCobertura])
REFERENCES [dbo].[tb_Cobertura] ([CodigoCobertura])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Cobertura]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Estado] FOREIGN KEY([CodigoEstado])
REFERENCES [dbo].[tb_Estado] ([CodigoEstado])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Estado]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Modalidad] FOREIGN KEY([CodigoModalidad])
REFERENCES [dbo].[tb_Modalidad] ([CodigoModalidad])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Modalidad]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Moneda] FOREIGN KEY([CodigoMoneda])
REFERENCES [dbo].[tb_Moneda] ([CodigoMoneda])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Moneda]
GO
ALTER TABLE [dbo].[tb_Poliza]  WITH CHECK ADD  CONSTRAINT [FK_tb_Poliza_tb_Persona] FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[tb_Persona] ([CodigoPersona])
GO
ALTER TABLE [dbo].[tb_Poliza] CHECK CONSTRAINT [FK_tb_Poliza_tb_Persona]
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion]  WITH CHECK ADD  CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Afp] FOREIGN KEY([CodigoAfp])
REFERENCES [dbo].[tb_Afp] ([CodigoAfp])
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion] CHECK CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Afp]
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion]  WITH CHECK ADD  CONSTRAINT [FK_tb_SolicitudCotizacion_tb_CiaSeguro] FOREIGN KEY([CodigoCiaSeguro])
REFERENCES [dbo].[tb_CiaSeguro] ([CodigoCiaSeguro])
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion] CHECK CONSTRAINT [FK_tb_SolicitudCotizacion_tb_CiaSeguro]
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion]  WITH CHECK ADD  CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Modalidad] FOREIGN KEY([CodigoModalidad])
REFERENCES [dbo].[tb_Modalidad] ([CodigoModalidad])
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion] CHECK CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Modalidad]
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion]  WITH CHECK ADD  CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Persona] FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[tb_Persona] ([CodigoPersona])
GO
ALTER TABLE [dbo].[tb_SolicitudCotizacion] CHECK CONSTRAINT [FK_tb_SolicitudCotizacion_tb_Persona]
GO
