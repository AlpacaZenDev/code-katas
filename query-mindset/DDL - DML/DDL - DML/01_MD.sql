/* CREATE ALTER DROP */

USE Facturacion
GO

DROP TABLE IF EXISTS Clientes

CREATE TABLE Clientes
(
	nCodigoCliente INT PRIMARY KEY IDENTITY(1,1),
	cNombreCompleto VARCHAR(300),
	cNroDocumento VARCHAR(20)
)

ALTER TABLE Clientes ADD lEstado BIT

DROP TABLE IF EXISTS Comprobantes

CREATE TABLE Comprobantes
(
	nCodigoComprobante INT PRIMARY KEY IDENTITY(1,1),
	nCodigoTipoComprobante INT,
	cNroRuc VARCHAR(20),
	cSerie VARCHAR(4),
	cNumero VARCHAR(8),
	nCodigoCliente INT,
	nMontoBase DECIMAL(14,2),
	nIgv DECIMAL(14,2),
	nMontoTotal DECIMAL(14,2),
	lEstado BIT
)

DROP TABLE IF EXISTS Productos

CREATE TABLE Productos	
(
	nCodigoProducto	INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(200),
	nPrecioUnitario	DECIMAL(14,2),
	lEstado BIT
)

DROP TABLE IF EXISTS DetalleComprobante

CREATE TABLE DetalleComprobante	
(
	nCodigoDetalleComprobante INT PRIMARY KEY IDENTITY(1,1),
	nCodigoComprobante INT,
	nCodigoProducto	INT,	
	nUnidades INT,
	nMontoTotal DECIMAL(14,2),
	lEstado BIT
)

DROP TABLE IF EXISTS TipoComprobante

CREATE TABLE TipoComprobante
(
	nCodigoTipoComprobante INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(100),
	cSerieActual VARCHAR(100),
	lEstado BIT
)