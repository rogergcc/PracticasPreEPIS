USE [BD_LEGAL]
GO
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


GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] 
)
); 


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
/****** Object:  Table [dbo].[CabeceraPiePagina]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[CatalogacionArchivo]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[CentroCosto]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Clausula]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[ControlStatus]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[CuentaOrigen]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[DispositivoUsuario]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Documento]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[DocumentoCabeceraPieValor]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[DocumentoClausulaValor]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[DocumentoParametroValor]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[DocumentoTraza]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Empresa]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[EstadoProceso]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Etapa]    Script Date: 22/11/2018 16:28:40 ******/

GO
CREATE TABLE [dbo].[Etapa](
	[EtapaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varbinary](255) NULL,
 CONSTRAINT [PK_Etapa] PRIMARY KEY CLUSTERED 
(
	[EtapaId] 
)
); 

/****** Object:  Table [dbo].[GestionTramite]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[HistorialAcceso]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[HistorialDocumento]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Parametro]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Pregunta]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[ProgramacionAtencion]    Script Date: 22/11/2018 16:28:40 ******/

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

/****** Object:  Table [dbo].[Proveedor]    Script Date: 22/11/2018 16:28:40 ******/

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
GO