/* =================================================
Database dbFacturacion
================================================= */

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'dbFacturacion')
BEGIN
	CREATE DATABASE dbFacturacion;
END
GO

USE dbFacturacion;
GO

/* ====================================
tblClientes
==================================== */

DROP TABLE IF EXISTS dbo.tblClientes;

CREATE TABLE tblClientes
(
	nCodigoCliente INT IDENTITY(1,1) PRIMARY KEY,
	cNombreCompleto NVARCHAR(150) NOT NULL,
	cNroDocumento VARCHAR(15) NOT NULL UNIQUE,
	lEstado BIT NOT NULL DEFAULT 1
);

/* ====================================
tblProductos
==================================== */

DROP TABLE IF EXISTS dbo.tblProductos;

CREATE TABLE tblProductos
(
	nCodigoProducto INT IDENTITY(1,1) PRIMARY KEY,
	cDescripcion NVARCHAR(100) NOT NULL,
	nPrecioUnitario DECIMAL(10, 2) NOT NULL,
	lEstado BIT NOT NULL DEFAULT 1
);


/* ====================================
tblTipoComprobante
==================================== */

DROP TABLE IF EXISTS dbo.tblTipoComprobante;

CREATE TABLE tblTipoComprobante
(
	nCodigoTipoComprobante INT IDENTITY(1,1) PRIMARY KEY,
	cDescripcion NVARCHAR(100) NOT NULL,
	cSerieActual VARCHAR(10) NOT NULL,
	lEstado BIT NOT NULL DEFAULT 1
);




