USE [BD_LEGAL]
GO
/****** Object:  Table [dbo].[Alerta]    Script Date: 22/11/2018 16:51:46 ******/
CREATE TABLE [dbo].[Alerta](
	[AlertaId] [int] IDENTITY(1,1) NOT NULL,
	[Asunto] [varbinary](255) NULL,
	[Mensaje] [varbinary](255) NULL,
	[TipoAlertaId] [int] NULL,
	[Codigo] [int] NULL,
 CONSTRAINT [PK_Alerta] PRIMARY KEY CLUSTERED 
(
	[AlertaId]
)
);

GO
/****** Object:  Table [dbo].[AlertaAdjunto]    Script Date: 22/11/2018 16:51:46 ******/
CREATE TABLE [dbo].[AlertaAdjunto](
	[AlertaAdjuntoId] [int] IDENTITY(1,1) NOT NULL,
	[AlertaId] [int] NULL,
	[Nombre] [varbinary](255) NULL,
	[Ruta] [varbinary](255) NULL,
 CONSTRAINT [PK_AlertaAdjunto] PRIMARY KEY CLUSTERED 
(
	[AlertaAdjuntoId]
)
);


/****** Object:  Table [dbo].[AlertaDestinatario]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[AlertaDestinatario](
	[AlertaDestinatarioId] [int] IDENTITY(1,1) NOT NULL,
	[AlertaId] [int] NULL,
	[Correo] [varbinary](255) NULL,
	[Nombre] [varbinary](255) NULL,
 CONSTRAINT [PK_AlertaDestinatario] PRIMARY KEY CLUSTERED 
(
	[AlertaDestinatarioId]
)
);


/****** Object:  Table [dbo].[Area]    Script Date: 22/11/2018 16:51:46 ******/


CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId]
)
);


/****** Object:  Table [dbo].[AreaLegal]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[AreaLegal](
	[AreaLegalId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_AreaLegal] PRIMARY KEY CLUSTERED 
(
	[AreaLegalId]
)
);


/****** Object:  Table [dbo].[AreaLegalEmpresa]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[AreaLegalEmpresa](
	[AreaLegalEmpresaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaLegalId] [int] NULL,
	[EmpresaId] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_AreaLegalEmpresa] PRIMARY KEY CLUSTERED 
(
	[AreaLegalEmpresaId]
)
);

GO
/****** Object:  Table [dbo].[CabeceraPiePagina]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[CabeceraPiePagina](
	[CabeceraPiePaginaId] [int] IDENTITY(1,1) NOT NULL,
	[CabeceraDescripcion] [varbinary](255) NULL,
	[PieDescripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[SubTipoServicioId] [int] NULL,
 CONSTRAINT [PK__Cabecera__A72547B57BE69B4D] PRIMARY KEY CLUSTERED 
(
	[CabeceraPiePaginaId]
)
);


/****** Object:  Table [dbo].[CatalogacionArchivo]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[CatalogacionArchivo](
	[CatalogacionArchivoId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[Nemonico] [varbinary](255) NULL,
	[NombreDocumento] [nchar](10) NULL,
	[NombreResumen] [nchar](10) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_CatalogacionArchivo] PRIMARY KEY CLUSTERED 
(
	[CatalogacionArchivoId]
)
);


/****** Object:  Table [dbo].[CentroCosto]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[CentroCosto](
	[CentroCostoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
	[EmpresaId] [int] NULL,
 CONSTRAINT [PK_CentroCosto] PRIMARY KEY CLUSTERED 
(
	[CentroCostoId]
)
);


/****** Object:  Table [dbo].[Clausula]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Clausula](
	[ClausulaId] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionCorta] [varbinary](255) NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nombre] [varbinary](255) NULL,
 CONSTRAINT [PK_Clausula] PRIMARY KEY CLUSTERED 
(
	[ClausulaId]
)
);


/****** Object:  Table [dbo].[ControlStatus]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[ControlStatus](
	[ControlStatusId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[Nemonico] [varbinary](255) NULL,
	[TipoDocumentoId] [int] NULL,
	[TipoDocumento] [varbinary](255) NULL,
	[TipoServicioId] [int] NULL,
	[TipoServicio] [varbinary](255) NULL,
	[SubTipoServicioId] [int] NULL,
	[SubTipoServicio] [varbinary](255) NULL,
	[Objeto] [varbinary](255) NULL,
	[SolicitanteId] [int] NULL,
	[SolicitanteResponsable] [varbinary](255) NULL,
	[SolicitanteFechaHora] [varbinary](255) NULL,
	[NegociacionResponsableId] [int] NULL,
	[NegociacionResponsable] [varbinary](255) NULL,
	[ResponsableInternoId] [int] NULL,
	[ResponsableInterno] [varbinary](255) NULL,
	[ResponsableExternoId] [int] NULL,
	[ResponsableExterno] [varbinary](255) NULL,
	[Documento] [varbinary](255) NULL,
	[Aval] [varbinary](255) NULL,
	[RedaccionResponsableId] [int] NULL,
	[RedaccionResponsable] [varbinary](255) NULL,
	[RedaccionFechaHora] [varbinary](255) NULL,
	[RedaccionEstado] [int] NULL,
	[RevisionDocumentoResponsableId] [int] NULL,
	[RevisionDocumentoResponsable] [varbinary](255) NULL,
	[RevisionDocumentoFechaHora] [varbinary](255) NULL,
	[RevisionDocumentoEstado] [int] NULL,
	[VbFinancieroResponsableId] [int] NULL,
	[VbFinancieroResponsable] [varbinary](255) NULL,
	[VbFinancieroFechaHora] [varbinary](255) NULL,
	[VbFinancieroEstado] [int] NULL,
	[VbLegalResponsableId] [int] NULL,
	[VbLegalResponsable] [varbinary](255) NULL,
	[VbLegalFechaHora] [varbinary](255) NULL,
	[VbLegalEstado] [int] NULL,
	[VbTecnicoResponsableId] [int] NULL,
	[VbTecnicoResponsable] [varbinary](255) NULL,
	[VbTecnicoFechaHora] [varbinary](255) NULL,
	[VbTecnicoEstado] [int] NULL,
	[VbTributarioResponsableId] [int] NULL,
	[VbTributarioResponsable] [varbinary](255) NULL,
	[VbTributarioFechaHora] [varbinary](255) NULL,
	[VbTributarioEstado] [int] NULL,
	[FirmaRlResponsable] [varbinary](255) NULL,
	[FirmaRlFechaHora] [varbinary](255) NULL,
	[FirmaRlEstado] [int] NULL,
	[TerceroResponsableId] [int] NULL,
	[FirmaTerceroResponsable] [varbinary](255) NULL,
	[FirmaTerceroFechaHora] [varbinary](255) NULL,
	[FirmaTerceroEstado] [int] NULL,
	[LegalizacionFirmasFechaHora] [varbinary](255) NULL,
	[LegalizacionFirmasEstado] [int] NULL,
	[EscrituraPublicaFechaHora] [varbinary](255) NULL,
	[EscrituraPublicaEstado] [int] NULL,
	[CatalogacionResponsableId] [int] NULL,
	[CatalogacionResponsable] [varbinary](255) NULL,
	[CatalogacionFechaHora] [varbinary](255) NULL,
	[CatalogacionEstado] [int] NULL,
	[ArchivoResponsableId] [int] NULL,
	[ArchivoResponsable] [varbinary](255) NULL,
	[ArchivoFechaHora] [varbinary](255) NULL,
	[ArchivoEstado] [int] NULL,
 CONSTRAINT [PK_ControlStatus] PRIMARY KEY CLUSTERED 
(
	[ControlStatusId]
)
);


/****** Object:  Table [dbo].[CuentaOrigen]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[CuentaOrigen](
	[CuentaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varbinary](255) NULL,
	[DE] [varbinary](255) NULL,
	[SSL1] [bit] NULL,
	[Port] [int] NULL,
	[Clave] [varbinary](255) NULL,
	[Cuenta] [varbinary](255) NULL,
	[sHost] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_CuentaOrigen] PRIMARY KEY CLUSTERED 
(
	[CuentaId]
)
);


/****** Object:  Table [dbo].[DispositivoUsuario]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[DispositivoUsuario](
	[DispositivoId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[Codigo] [varbinary](255) NULL,
	[TipoDispositivoId] [int] NULL,
	[Estado] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[TokenDispositivo] [varbinary](255) NULL,
 CONSTRAINT [PK_DispositivoUsuario] PRIMARY KEY CLUSTERED 
(
	[DispositivoId]
)
);


/****** Object:  Table [dbo].[Documento]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Documento](
	[DocumentoId] [bigint] IDENTITY(1,1) NOT NULL,
	[SubTipoServicioId] [int] NULL,
	[NombreArchivo] [varbinary](255) NULL,
	[FechaRegistro] [datetime] NULL,
	[EstadoProcesoId] [int] NULL,
	[Nemonico] [varbinary](255) NULL,
	[TipoDocumentoId] [int] NULL,
	[ProgramacionAtencionId] [int] NULL,
	[EsBorrador] [bit] NULL,
	[Version] [varbinary](255) NULL,
	[Moneda] [varbinary](255) NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[DocumentoId]
)
);


/****** Object:  Table [dbo].[DocumentoCabeceraPieValor]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[DocumentoCabeceraPieValor](
	[DocumentoCabeceraPieValorId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[CabeceraDescripcion] [varbinary](255) NULL,
	[PieDescripcion] [varbinary](255) NULL,
	[ObservacionFinanciera] [varbinary](255) NULL,
	[ObservacionTecnico] [varbinary](255) NULL,
	[ObservacionLegal] [varbinary](255) NULL,
	[ObservacionTributario] [varbinary](255) NULL,
	[ObservacionRevision] [varbinary](255) NULL,
 CONSTRAINT [PK_DocumentoCabeceraPieValor] PRIMARY KEY CLUSTERED 
(
	[DocumentoCabeceraPieValorId]
)
);


/****** Object:  Table [dbo].[DocumentoClausulaValor]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[DocumentoClausulaValor](
	[DocumentoClausulaValorId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[Orden] [int] NULL,
	[ClausulaId] [int] NULL,
	[ObservacionFinanciera] [varbinary](255) NULL,
	[ObservacionTecnico] [varbinary](255) NULL,
	[ObservacionLegal] [varbinary](255) NULL,
	[ObservacionTributario] [varbinary](255) NULL,
	[Valor] [varbinary](255) NULL,
	[ObservacionRevision] [varbinary](255) NULL,
 CONSTRAINT [PK_DocumentoClausulaValor] PRIMARY KEY CLUSTERED 
(
	[DocumentoClausulaValorId]
)
);


/****** Object:  Table [dbo].[DocumentoParametroValor]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[DocumentoParametroValor](
	[DocumentoParametroValorId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[ParametroId] [int] NULL,
	[Valor] [varbinary](255) NULL,
	[ObservacionFinanciera] [varbinary](255) NULL,
	[ObservacionTecnico] [varbinary](255) NULL,
	[ObservacionLegal] [varbinary](255) NULL,
	[ObservacionTributario] [varbinary](255) NULL,
	[ObservacionRevision] [varbinary](255) NULL,
 CONSTRAINT [PK_ContratoParametroValor] PRIMARY KEY CLUSTERED 
(
	[DocumentoParametroValorId]
)
);


/****** Object:  Table [dbo].[DocumentoTraza]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[DocumentoTraza](
	[DocumentoTrazaId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentoOrigenNemonico] [varbinary](255) NULL,
	[DocumentoNemonico] [varbinary](255) NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_DocumentoTraza] PRIMARY KEY CLUSTERED 
(
	[DocumentoTrazaId]
)
);


/****** Object:  Table [dbo].[Empresa]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaId] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varbinary](255) NULL,
	[NombreComercial] [varbinary](255) NULL,
	[RepresentanteLegal] [varbinary](255) NULL,
	[Ruc] [varbinary](255) NULL,
	[Direccion] [varbinary](255) NULL,
	[Telefono] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[EmpresaId]
)
);


/****** Object:  Table [dbo].[EstadoProceso]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[EstadoProceso](
	[EstadoProcesoId] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varbinary](255) NULL,
	[Nombre] [varbinary](255) NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_EstadoProceso] PRIMARY KEY CLUSTERED 
(
	[EstadoProcesoId]
)
);


/****** Object:  Table [dbo].[Etapa]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Etapa](
	[EtapaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
 CONSTRAINT [PK_Etapa] PRIMARY KEY CLUSTERED 
(
	[EtapaId]
)
);


/****** Object:  Table [dbo].[GestionTramite]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[GestionTramite](
	[GestionTramiteId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_GestionTramite] PRIMARY KEY CLUSTERED 
(
	[GestionTramiteId]
)
);


/****** Object:  Table [dbo].[HistorialAcceso]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[HistorialAcceso](
	[HistorialAccesoId] [bigint] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[Clave] [varbinary](255) NULL,
	[IMEI] [varbinary](255) NULL,
	[MAC] [varbinary](255) NULL,
	[FechaRegistro] [datetime] NULL,
	[Latitud] [varbinary](255) NULL,
	[Longitud] [varbinary](255) NULL,
	[Pais] [varbinary](255) NULL,
	[Ciudad] [varbinary](255) NULL,
	[Direccion] [varbinary](255) NULL,
	[Exito] [bit] NULL,
 CONSTRAINT [PK_HistorialAcceso] PRIMARY KEY CLUSTERED 
(
	[HistorialAccesoId]
)
);


/****** Object:  Table [dbo].[HistorialDocumento]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[HistorialDocumento](
	[HistorialDocumentoId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[EstadoProcesoId] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Nemonico] [varbinary](255) NULL,
	[UsuarioId] [int] NULL,
	[ObservacionGeneral] [varbinary](255) NULL,
	[Version] [varbinary](255) NULL,
 CONSTRAINT [PK_HistorialDocumento] PRIMARY KEY CLUSTERED 
(
	[HistorialDocumentoId]
)
);


/****** Object:  Table [dbo].[Parametro]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Parametro](
	[ParametroId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[ClausulaId] [int] NULL,
	[Descripcion] [varbinary](255) NULL,
 CONSTRAINT [PK_ParametroDocumento] PRIMARY KEY CLUSTERED 
(
	[ParametroId]
)
);


/****** Object:  Table [dbo].[Pregunta]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Pregunta](
	[PreguntaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[PreguntaId]
)
);


/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[PreguntaUsuario](
	[PreguntaId] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[Respuesta] [varbinary](255) NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaUpdate] [datetime] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_PreguntaUsuario] PRIMARY KEY CLUSTERED 
(
	[PreguntaId],
	[UsuarioID]
)
);


/****** Object:  Table [dbo].[ProgramacionAtencion]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[ProgramacionAtencion](
	[ProgramacionAtencionId] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varbinary](255) NULL,
	[Fecha] [date] NULL,
	[TipoServicio] [int] NULL,
	[SubTipoServicio] [int] NULL,
	[Objeto] [varbinary](255) NULL,
	[Solicitante] [int] NULL,
	[Area] [int] NULL,
	[ContratanteA] [int] NULL,
	[RucA] [varbinary](255) NULL,
	[ContratanteB] [int] NULL,
	[RucB] [varbinary](255) NULL,
	[Tercero] [int] NULL,
	[RucT] [varbinary](255) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[Importe] [varbinary](255) NULL,
	[FormaPago] [varbinary](255) NULL,
	[InteresCondicionesEspeciales] [varbinary](255) NULL,
	[RequireAnticipo] [varbinary](255) NULL,
	[RequireAval] [varbinary](255) NULL,
	[Flujoproyectado] [varbinary](255) NULL,
	[Presupuestado] [varbinary](255) NULL,
	[ResponsableNegociacion] [int] NULL,
	[ResponsableAprobacion] [int] NULL,
	[ResponsableTramiteInterno] [int] NULL,
	[ResponsableTramiteExterno] [int] NULL,
	[OpinionFinanciera] [int] NULL,
	[OpinionTributaria] [int] NULL,
	[OpinionLegal] [int] NULL,
	[OpinionTecnica] [int] NULL,
	[Contacto] [int] NULL,
	[AreaLegalAsignada] [varbinary](255) NULL,
	[Observaciones] [varbinary](255) NULL,
	[ResponsableRedactar] [int] NULL,
	[ResponsableRevisar] [int] NULL,
	[ResponsableArchivar] [int] NULL,
	[Status] [int] NULL,
	[DescripcionOpinionFinanciera] [varbinary](255) NULL,
	[DescripcionOpinionTributaria] [varbinary](255) NULL,
	[DescripcionOpinionLegal] [varbinary](255) NULL,
	[DescripcionOpinionTecnica] [varbinary](255) NULL,
	[TiempoOpinionFinanciera] [int] NULL,
	[TiempoOpinionTributaria] [int] NULL,
	[TiempoOpinionLegal] [int] NULL,
	[TiempoOpinionTecnica] [int] NULL,
	[TipoDocumento] [int] NULL,
	[RequiereLegalizacionFirmas] [varbinary](255) NULL,
	[RequerimientoServicioId] [int] NULL,
	[ProgramacionAtencionArchivo] [varbinary](255) NULL,
 CONSTRAINT [PK_ProgramacionAtencion] PRIMARY KEY CLUSTERED 
(
	[ProgramacionAtencionId]
)
);


/****** Object:  Table [dbo].[Proveedor]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[Proveedor](
	[ProveedorID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ProveedorID]
)
);


/****** Object:  Table [dbo].[RequerimientoServicio]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[RequerimientoServicio](
	[RequerimientoServicioId] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varbinary](255) NULL,
	[TipoServicio] [int] NULL,
	[Objeto] [varbinary](255) NULL,
	[Solicitante] [int] NULL,
	[Area] [int] NULL,
	[ContratanteA] [int] NULL,
	[RucA] [varbinary](255) NULL,
	[ContratanteB] [int] NULL,
	[RucB] [varbinary](255) NULL,
	[Tercero] [int] NULL,
	[RucT] [varbinary](255) NULL,
	[FechaInicio] [varbinary](255) NULL,
	[FechaFin] [varbinary](255) NULL,
	[Importe] [varbinary](255) NULL,
	[FormaPago] [varbinary](255) NULL,
	[InteresCondicionesEspeciales] [varbinary](255) NULL,
	[RequireAnticipo] [varbinary](255) NULL,
	[RequireAval] [varbinary](255) NULL,
	[Flujoproyectado] [varbinary](255) NULL,
	[Presupuestado] [varbinary](255) NULL,
	[ResponsableNegociacion] [int] NULL,
	[ResponsableAprobacion] [int] NULL,
	[OpinionFinanciera] [int] NULL,
	[OpinionTributaria] [int] NULL,
	[OpinionLegal] [int] NULL,
	[OpinionTecnica] [int] NULL,
	[Contacto] [int] NULL,
	[Observaciones] [varbinary](255) NULL,
	[ExcelNombre] [varbinary](255) NULL,
	[ProformaNombre] [varbinary](255) NULL,
	[FlujoNombre] [varbinary](255) NULL,
	[Estado] [int] NULL,
	[Correlativo] [bigint] NULL,
	[FechaRegistro] [varbinary](255) NULL,
	[CodigoRequerimiento] [varbinary](255) NULL,
	[RequerimientoServicioArchivo] [varbinary](255) NULL,
 CONSTRAINT [PK_RequerimientoServicio] PRIMARY KEY CLUSTERED 
(
	[RequerimientoServicioId]
)
);


/****** Object:  Table [dbo].[SEG_Auditoria]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Auditoria](
	[codAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[fechaRegistro] [datetime] NULL,
	[usuario] [varbinary](255) NULL,
	[proceso] [varbinary](255) NULL,
	[descripcion] [varbinary](255) NULL,
	[subsistema] [varbinary](255) NULL,
	[ip] [varbinary](255) NULL,
	[usuariodata] [text] NULL,
	[datainicial] [text] NULL,
	[datafinal] [text] NULL,
	[codSala] [int] NULL,
	[sala] [varbinary](255) NULL,
	[formularioID] [int] NULL,
 CONSTRAINT [PK_SEG_Auditoria] PRIMARY KEY CLUSTERED 
(
	[codAuditoria]
)
);


/****** Object:  Table [dbo].[SEG_Cargo]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Cargo](
	[CargoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK__SEG_Carg__B4E665ED160B819E] PRIMARY KEY CLUSTERED 
(
	[CargoID]
)
);


/****** Object:  Table [dbo].[SEG_Configuracion_Seguridad]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Configuracion_Seguridad](
	[codWebConfiguracionSeguridad] [int] IDENTITY(1,1) NOT NULL,
	[linkInterno] [varbinary](255) NULL,
	[linkExterno] [varbinary](255) NULL,
	[cantidadLetraNombre] [int] NULL,
	[cantidadLetraApePaterno] [int] NULL,
	[cantidadLetraApeMaterno] [int] NULL,
	[cantidadLetraDNI] [int] NULL,
	[ordenNombre] [int] NULL,
	[ordenApePaterno] [int] NULL,
	[ordenApeMaterno] [int] NULL,
	[ordenDNI] [int] NULL,
	[mensajeEmail] [varbinary](255) NULL,
	[MinExpiraToken] [int] NULL,
	[RadioAcceso] [int] NULL,
	[TiempoRevisionResponsable] [int] NULL,
	[TiempoRevisionEspecialista] [int] NULL,
 CONSTRAINT [PK_WEB_Configuracion_Seguridad] PRIMARY KEY CLUSTERED 
(
	[codWebConfiguracionSeguridad]
)
);


/****** Object:  Table [dbo].[SEG_Empleado]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Empleado](
	[EmpleadoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varbinary](255) NOT NULL,
	[ApellidosPaterno] [varbinary](255) NOT NULL,
	[ApellidosMaterno] [varbinary](255) NOT NULL,
	[CargoID] [int] NOT NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [varbinary](255) NOT NULL,
	[FechaContratacion] [date] NULL,
	[TarjetaRFID] [varbinary](255) NULL,
	[EstadoEmpleado] [int] NULL,
	[DOIID] [int] NULL,
	[DOI] [varbinary](255) NULL,
	[Telefono] [varbinary](255) NOT NULL,
	[OperadoraMovil] [int] NULL,
	[Movil] [varbinary](255) NULL,
	[Genero] [varbinary](255) NOT NULL,
	[MailPersonal] [varbinary](255) NULL,
	[MailJob] [varbinary](255) NULL,
	[FechaAlta] [date] NOT NULL,
	[NombreFoto] [varbinary](255) NULL,
 CONSTRAINT [PK__SEG_Empl__958BE6F0123AF0BA] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID]
)
);


/****** Object:  Table [dbo].[SEG_Permiso]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Permiso](
	[WEB_PermID] [int] IDENTITY(1,1) NOT NULL,
	[WEB_PermNombre] [varbinary](255) NULL,
	[WEB_PermTipo] [varbinary](255) NULL,
	[WEB_PermControlador] [varbinary](255) NULL,
	[WEB_PermDescripcion] [varbinary](255) NULL,
	[WEB_PermEstado] [char](1) NULL,
	[WEB_PermFechaRegistro] [datetime] NULL,
	[WEB_PermNombreR] [varbinary](255) NULL,
	[WEB_ModuloNombre] [varbinary](255) NULL,
 CONSTRAINT [PK_WEB_Permiso] PRIMARY KEY CLUSTERED 
(
	[WEB_PermID]
)
);


/****** Object:  Table [dbo].[SEG_PermisoMenu]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_PermisoMenu](
	[WEB_PMeID] [int] IDENTITY(1,1) NOT NULL,
	[WEB_PMeNombre] [varbinary](255) NULL,
	[WEB_PMeEstado] [varbinary](255) NULL,
	[WEB_PMeFechaRegistro] [datetime] NULL,
	[WEB_PMeDataMenu] [varbinary](255) NULL,
	[WEB_RolID] [int] NULL,
	[WEB_ModuloNombre] [varbinary](255) NULL,
 CONSTRAINT [PK_WEB_PermisoMenu] PRIMARY KEY CLUSTERED 
(
	[WEB_PMeID]
)
);


/****** Object:  Table [dbo].[SEG_PermisoRol]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[SEG_PermisoRol](
	[WEB_PRolID] [int] IDENTITY(1,1) NOT NULL,
	[WEB_PermID] [int] NULL,
	[WEB_RolID] [int] NULL,
	[WEB_PRolFechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_WEB_PermisoRol] PRIMARY KEY CLUSTERED 
(
	[WEB_PRolID]
)
);

GO
/****** Object:  Table [dbo].[SEG_Rol]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Rol](
	[WEB_RolID] [int] IDENTITY(1,1) NOT NULL,
	[WEB_RolNombre] [varbinary](255) NULL,
	[WEB_RolDescripcion] [varbinary](255) NULL,
	[WEB_RolEstado] [char](1) NULL,
	[WEB_RolFechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_WEB_Rol] PRIMARY KEY CLUSTERED 
(
	[WEB_RolID]
)
);


/****** Object:  Table [dbo].[SEG_RolUsuario]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[SEG_RolUsuario](
	[WEB_RUsuID] [int] IDENTITY(1,1) NOT NULL,
	[WEB_RolID] [int] NULL,
	[UsuarioID] [int] NULL,
	[WEB_RUsuFechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_WEB_RolUsuario] PRIMARY KEY CLUSTERED 
(
	[WEB_RUsuID]
)
);

GO
/****** Object:  Table [dbo].[SEG_Usuario]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SEG_Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[PerfilID] [int] NULL,
	[EmpleadoID] [int] NULL,
	[ClienteID] [int] NULL,
	[TipoUsuarioID] [int] NULL,
	[UsuarioNombre] [varbinary](255) NULL,
	[UsuarioContraseña] [varchar](255) NULL,
	[FechaRegistro] [varbinary](255) NULL,
	[FailedAttempts] [int] NULL,
	[Estado] [int] NULL,
	[EstadoContrasena] [int] NULL,
	[Expira] [bit] NULL,
	[FechaExpiracion] [date] NULL,
	[ExpiraMes] [int] NULL,
	[SesionActiva] [bit] NULL,
 CONSTRAINT [PK__SEG_Usua__2B3DE798282A31D9] PRIMARY KEY CLUSTERED 
(
	[UsuarioID]
)
);


/****** Object:  Table [dbo].[SubClausula]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[SubClausula](
	[SubClausulaId] [int] IDENTITY(1,1) NOT NULL,
	[ClausulaId] [int] NULL,
	[Estado] [bit] NULL,
	[DescripcionCorta] [varbinary](255) NULL,
	[Descripcion] [varbinary](255) NULL,
 CONSTRAINT [PK_SubClausula] PRIMARY KEY CLUSTERED 

(
	[SubClausulaId]
)
);


/****** Object:  Table [dbo].[SubTipoServicio]    Script Date: 22/11/2018 16:51:46 ******/


CREATE TABLE [dbo].[SubTipoServicio](
	[SubTipoServicioId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
	[TipoServicioId] [int] NULL,
 CONSTRAINT [PK_SubTipoServicio] PRIMARY KEY CLUSTERED 
(
	[SubTipoServicioId]
)
);

/****** Object:  Table [dbo].[SubTipoServicioCabeceraPie]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[SubTipoServicioCabeceraPie](
	[SubTipoServicioCabeceraPieId] [int] IDENTITY(1,1) NOT NULL,
	[SubTipoServicioId] [int] NULL,
	[CabeceraPiePaginaId] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_SubTipoServicioCabeceraPie] PRIMARY KEY CLUSTERED 
(
	[SubTipoServicioCabeceraPieId]
)
);

GO
/****** Object:  Table [dbo].[SubTipoServicioClausula]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[SubTipoServicioClausula](
	[SubTipoServicioClausulaId] [int] IDENTITY(1,1) NOT NULL,
	[SubTipoServicioId] [int] NULL,
	[ClausulaId] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoContratoClausula] PRIMARY KEY CLUSTERED 
(
	[SubTipoServicioClausulaId]
)
);

GO
/****** Object:  Table [dbo].[SubTipoServicioParametro]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[SubTipoServicioParametro](
	[SubTipoServicioParametroId] [int] IDENTITY(1,1) NOT NULL,
	[SubTipoServicioId] [int] NULL,
	[ParametroId] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoContratoParametro] PRIMARY KEY CLUSTERED 
(
	[SubTipoServicioParametroId]
)
);

GO
/****** Object:  Table [dbo].[TipoAlerta]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[TipoAlerta](
	[TipoAlertaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Mensaje] [varbinary](255) NULL,
	[Adjuntar] [bit] NULL,
 CONSTRAINT [PK_TipoAlerta] PRIMARY KEY CLUSTERED 
(
	[TipoAlertaId]
)
);


/****** Object:  Table [dbo].[TipoAlertaTipoDestinatario]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[TipoAlertaTipoDestinatario](
	[TipoAlertaTipoDestinatadioId] [int] NULL,
	[TipoAlertaId] [int] NULL,
	[TipoDestinatarioId] [int] NULL
);

GO
/****** Object:  Table [dbo].[TipoDestinatario]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[TipoDestinatario](
	[TipoDestinatarioId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoDestinatario] PRIMARY KEY CLUSTERED 
(
	[TipoDestinatarioId]
)
);


/****** Object:  Table [dbo].[TipoDispositivo]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[TipoDispositivo](
	[TipoDispositivoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Correlativo] [int] NULL,
 CONSTRAINT [PK_TipoDispositivo] PRIMARY KEY CLUSTERED 
(
	[TipoDispositivoId]
)
);


/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[TipoDocumento](
	[TipoDocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
	[correlativo] [bigint] NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoId]
)
);


/****** Object:  Table [dbo].[TipoDOI]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[TipoDOI](
	[DOIID] [varchar](6) NOT NULL,
	[DESCRIPCION] [varbinary](255) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK__TipoDOI__CF2F17F43F7D3AE6] PRIMARY KEY CLUSTERED 
(
	[DOIID]
)
);


/****** Object:  Table [dbo].[TipoEmpresa]    Script Date: 22/11/2018 16:51:46 ******/


CREATE TABLE [dbo].[TipoEmpresa](
	[TipoEmpresaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TipoEmpresa] PRIMARY KEY CLUSTERED 
(
	[TipoEmpresaId]
)
);


/****** Object:  Table [dbo].[TipoServicio]    Script Date: 22/11/2018 16:51:46 ******/


CREATE TABLE [dbo].[TipoServicio](
	[TipoServicioId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
	[TipoDocumentoId] [int] NULL,
 CONSTRAINT [PK_TipoServicio] PRIMARY KEY CLUSTERED 
(
	[TipoServicioId]
)
);


/****** Object:  Table [dbo].[TipoTramite]    Script Date: 22/11/2018 16:51:46 ******/


CREATE TABLE [dbo].[TipoTramite](
	[TipoTramiteId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[Nemonico] [varbinary](255) NULL,
 CONSTRAINT [PK_TipoTramite] PRIMARY KEY CLUSTERED 
(
	[TipoTramiteId]
)
);


/****** Object:  Table [dbo].[Token]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[Token](
	[Token] [nvarchar](255) NULL,
	[UsuarioID] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaExpira] [datetime] NULL
);

GO
/****** Object:  Table [dbo].[UsuarioCentroCosto]    Script Date: 22/11/2018 16:51:46 ******/

GO
CREATE TABLE [dbo].[UsuarioCentroCosto](
	[UsuarioCentroCostoId] [int] IDENTITY(1,1) NOT NULL,
	[CentroCostoId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.UsuarioSala] PRIMARY KEY CLUSTERED 
(
	[UsuarioCentroCostoId]
)
);

GO
/****** Object:  Table [dbo].[ZonaTrabajo]    Script Date: 22/11/2018 16:51:46 ******/


GO
CREATE TABLE [dbo].[ZonaTrabajo](
	[ZonaTrabajoId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NULL,
	[Descripcion] [varbinary](255) NULL,
	[Direccion] [varbinary](255) NULL,
	[Latitud] [varbinary](255) NULL,
	[Longitud] [varbinary](255) NULL,
	[Estado] [bit] NULL,
	[UbicadoZona] [bit] NULL,
	[Radio] [varchar](255) NULL,
 CONSTRAINT [PK_ZonaTrabajo] PRIMARY KEY CLUSTERED 
(
	[ZonaTrabajoId]
)
);


ALTER TABLE [dbo].[Alerta]  WITH CHECK ADD  CONSTRAINT [FK_Alerta_TipoAlerta] FOREIGN KEY([TipoAlertaId])
REFERENCES [dbo].[TipoAlerta] ([TipoAlertaId])
GO
ALTER TABLE [dbo].[Alerta] CHECK CONSTRAINT [FK_Alerta_TipoAlerta]
GO
ALTER TABLE [dbo].[AlertaAdjunto]  WITH CHECK ADD  CONSTRAINT [FK_AlertaAdjunto_Alerta] FOREIGN KEY([AlertaId])
REFERENCES [dbo].[Alerta] ([AlertaId])
GO
ALTER TABLE [dbo].[AlertaAdjunto] CHECK CONSTRAINT [FK_AlertaAdjunto_Alerta]
GO
ALTER TABLE [dbo].[AlertaDestinatario]  WITH CHECK ADD  CONSTRAINT [FK_AlertaDestinatario_Alerta] FOREIGN KEY([AlertaId])
REFERENCES [dbo].[Alerta] ([AlertaId])
GO
ALTER TABLE [dbo].[AlertaDestinatario] CHECK CONSTRAINT [FK_AlertaDestinatario_Alerta]
GO
ALTER TABLE [dbo].[AreaLegalEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_AreaLegalEmpresa_AreaLegal] FOREIGN KEY([AreaLegalId])
REFERENCES [dbo].[AreaLegal] ([AreaLegalId])
GO
ALTER TABLE [dbo].[AreaLegalEmpresa] CHECK CONSTRAINT [FK_AreaLegalEmpresa_AreaLegal]
GO
ALTER TABLE [dbo].[AreaLegalEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_AreaLegalEmpresa_Empresa] FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresa] ([EmpresaId])
GO
ALTER TABLE [dbo].[AreaLegalEmpresa] CHECK CONSTRAINT [FK_AreaLegalEmpresa_Empresa]
GO
ALTER TABLE [dbo].[CatalogacionArchivo]  WITH CHECK ADD  CONSTRAINT [FK_CatalogacionArchivo_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[CatalogacionArchivo] CHECK CONSTRAINT [FK_CatalogacionArchivo_Documento]
GO
ALTER TABLE [dbo].[DispositivoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_DispositivoUsuario_SEG_Usuario1] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[SEG_Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[DispositivoUsuario] CHECK CONSTRAINT [FK_DispositivoUsuario_SEG_Usuario1]
GO
ALTER TABLE [dbo].[DispositivoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_DispositivoUsuario_TipoDispositivo] FOREIGN KEY([TipoDispositivoId])
REFERENCES [dbo].[TipoDispositivo] ([TipoDispositivoId])
GO
ALTER TABLE [dbo].[DispositivoUsuario] CHECK CONSTRAINT [FK_DispositivoUsuario_TipoDispositivo]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_SubTipoServicio] FOREIGN KEY([SubTipoServicioId])
REFERENCES [dbo].[SubTipoServicio] ([SubTipoServicioId])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_SubTipoServicio]
GO
ALTER TABLE [dbo].[DocumentoCabeceraPieValor]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoCabeceraPieValor_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[DocumentoCabeceraPieValor] CHECK CONSTRAINT [FK_DocumentoCabeceraPieValor_Documento]
GO
ALTER TABLE [dbo].[DocumentoClausulaValor]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoClausulaValor_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[DocumentoClausulaValor] CHECK CONSTRAINT [FK_DocumentoClausulaValor_Documento]
GO
ALTER TABLE [dbo].[DocumentoParametroValor]  WITH CHECK ADD  CONSTRAINT [FK_ContratoParametroValor_Contrato] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[DocumentoParametroValor] CHECK CONSTRAINT [FK_ContratoParametroValor_Contrato]
GO
ALTER TABLE [dbo].[HistorialAcceso]  WITH CHECK ADD  CONSTRAINT [FK_HistorialAcceso_SEG_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[SEG_Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[HistorialAcceso] CHECK CONSTRAINT [FK_HistorialAcceso_SEG_Usuario]
GO
ALTER TABLE [dbo].[HistorialDocumento]  WITH CHECK ADD  CONSTRAINT [FK_HistorialDocumento_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[HistorialDocumento] CHECK CONSTRAINT [FK_HistorialDocumento_Documento]
GO
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_Pregunta] FOREIGN KEY([PreguntaId])
REFERENCES [dbo].[Pregunta] ([PreguntaId])
GO
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_SEG_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[SEG_Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_SEG_Usuario]
GO
ALTER TABLE [dbo].[SubClausula]  WITH CHECK ADD  CONSTRAINT [FK_SubClausula_Clausula] FOREIGN KEY([ClausulaId])
REFERENCES [dbo].[Clausula] ([ClausulaId])
GO
ALTER TABLE [dbo].[SubClausula] CHECK CONSTRAINT [FK_SubClausula_Clausula]
GO
ALTER TABLE [dbo].[SubTipoServicio]  WITH CHECK ADD  CONSTRAINT [FK_SubTipoServicio_TipoServicio] FOREIGN KEY([TipoServicioId])
REFERENCES [dbo].[TipoServicio] ([TipoServicioId])
GO
ALTER TABLE [dbo].[SubTipoServicio] CHECK CONSTRAINT [FK_SubTipoServicio_TipoServicio]
GO
ALTER TABLE [dbo].[SubTipoServicioCabeceraPie]  WITH CHECK ADD  CONSTRAINT [FK_SubTipoServicioCabeceraPie_CabeceraPiePagina] FOREIGN KEY([CabeceraPiePaginaId])
REFERENCES [dbo].[CabeceraPiePagina] ([CabeceraPiePaginaId])
GO
ALTER TABLE [dbo].[SubTipoServicioCabeceraPie] CHECK CONSTRAINT [FK_SubTipoServicioCabeceraPie_CabeceraPiePagina]
GO
ALTER TABLE [dbo].[SubTipoServicioCabeceraPie]  WITH CHECK ADD  CONSTRAINT [FK_SubTipoServicioCabeceraPie_SubTipoServicio] FOREIGN KEY([SubTipoServicioId])
REFERENCES [dbo].[SubTipoServicio] ([SubTipoServicioId])
GO
ALTER TABLE [dbo].[SubTipoServicioCabeceraPie] CHECK CONSTRAINT [FK_SubTipoServicioCabeceraPie_SubTipoServicio]
GO
ALTER TABLE [dbo].[SubTipoServicioClausula]  WITH CHECK ADD  CONSTRAINT [FK_TipoContratoClausula_Clausula] FOREIGN KEY([ClausulaId])
REFERENCES [dbo].[Clausula] ([ClausulaId])
GO
ALTER TABLE [dbo].[SubTipoServicioClausula] CHECK CONSTRAINT [FK_TipoContratoClausula_Clausula]
GO
ALTER TABLE [dbo].[SubTipoServicioClausula]  WITH CHECK ADD  CONSTRAINT [FK_TipoContratoClausula_TipoContrato] FOREIGN KEY([SubTipoServicioId])
REFERENCES [dbo].[SubTipoServicio] ([SubTipoServicioId])
GO
ALTER TABLE [dbo].[SubTipoServicioClausula] CHECK CONSTRAINT [FK_TipoContratoClausula_TipoContrato]
GO
ALTER TABLE [dbo].[SubTipoServicioParametro]  WITH CHECK ADD  CONSTRAINT [FK_TipoContratoParametro_ParametroContrato] FOREIGN KEY([ParametroId])
REFERENCES [dbo].[Parametro] ([ParametroId])
GO
ALTER TABLE [dbo].[SubTipoServicioParametro] CHECK CONSTRAINT [FK_TipoContratoParametro_ParametroContrato]
GO
ALTER TABLE [dbo].[SubTipoServicioParametro]  WITH CHECK ADD  CONSTRAINT [FK_TipoContratoParametro_TipoContrato] FOREIGN KEY([SubTipoServicioId])
REFERENCES [dbo].[SubTipoServicio] ([SubTipoServicioId])
GO
ALTER TABLE [dbo].[SubTipoServicioParametro] CHECK CONSTRAINT [FK_TipoContratoParametro_TipoContrato]
GO
ALTER TABLE [dbo].[TipoAlertaTipoDestinatario]  WITH CHECK ADD  CONSTRAINT [FK_TipoAlertaTipoDestinatario_TipoAlerta] FOREIGN KEY([TipoAlertaId])
REFERENCES [dbo].[TipoAlerta] ([TipoAlertaId])
GO
ALTER TABLE [dbo].[TipoAlertaTipoDestinatario] CHECK CONSTRAINT [FK_TipoAlertaTipoDestinatario_TipoAlerta]
GO
ALTER TABLE [dbo].[TipoAlertaTipoDestinatario]  WITH CHECK ADD  CONSTRAINT [FK_TipoAlertaTipoDestinatario_TipoDestinatario] FOREIGN KEY([TipoDestinatarioId])
REFERENCES [dbo].[TipoDestinatario] ([TipoDestinatarioId])
GO
ALTER TABLE [dbo].[TipoAlertaTipoDestinatario] CHECK CONSTRAINT [FK_TipoAlertaTipoDestinatario_TipoDestinatario]
GO
ALTER TABLE [dbo].[TipoServicio]  WITH CHECK ADD  CONSTRAINT [FK_TipoServicio_TipoDocumento] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumento] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[TipoServicio] CHECK CONSTRAINT [FK_TipoServicio_TipoDocumento]
GO
ALTER TABLE [dbo].[Token]  WITH CHECK ADD  CONSTRAINT [FK_Token_SEG_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[SEG_Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Token] CHECK CONSTRAINT [FK_Token_SEG_Usuario]
GO
ALTER TABLE [dbo].[ZonaTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_ZonaTrabajo_SEG_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[SEG_Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[ZonaTrabajo] CHECK CONSTRAINT [FK_ZonaTrabajo_SEG_Usuario]
GO
