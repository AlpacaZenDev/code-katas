USE dbClientes
GO

DROP TABLE IF EXISTS NombresDisponibles 
GO

CREATE TABLE NombresDisponibles 
(
	nCodigoNombreDisponible INT PRIMARY KEY IDENTITY(1,1),
	cNombre VARCHAR(100),
	nCodigoGenero INT,
	dFechaRegistro DATETIME DEFAULT GETDATE(),
	lEstado BIT DEFAULT 1	
)
GO

DROP TABLE IF EXISTS ApellidosDisponibles 
GO

CREATE TABLE ApellidosDisponibles 
(
	nCodigoApellidoDisponible INT PRIMARY KEY IDENTITY(1,1),
	cApellido VARCHAR(100),
	dFechaRegistro DATETIME,
	lEstado BIT	
)
GO

DROP TABLE IF EXISTS Generos
GO

CREATE TABLE Generos
(
	nCodigoGenero INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(100),
	cSimbolo CHAR(1),
	dFechaRegistro DATETIME,
	lEstado BIT	
)
GO

DROP TABLE IF EXISTS Personas
GO

CREATE TABLE Personas (
	nCodigoPersona INT PRIMARY KEY IDENTITY(1,1),
	cNombres VARCHAR(300),
	nCodigoTipoDocumento INT,
	cNumeroDocumento VARCHAR(20),
	dFechaRegistro DATETIME DEFAULT GETDATE(),
	lEstado	BIT DEFAULT 1
)
GO

DROP TABLE IF EXISTS TipoDocumento	
GO

CREATE TABLE TipoDocumento	
(
	nCodigoTipoDocumento INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(100),
	cAbreviacion VARCHAR(50),
	lEstado BIT
)
GO

DROP TABLE IF EXISTS PersonaNatural
GO

CREATE TABLE PersonaNatural	
(
	nCodigoPersonaNatural INT PRIMARY KEY IDENTITY(1,1),
	nCodigoPersona INT,
	cPrimerNombre VARCHAR(100),
	cSegundoNombre VARCHAR(100),
	cApellidoPaterno VARCHAR(100),
	cApellidoMaterno VARCHAR(100),
	nCodigoGenero INT,
	dFechaNacimiento DATE,
	dFechaRegistro DATETIME DEFAULT GETDATE(),
	lEstado	BIT DEFAULT 1
)
GO