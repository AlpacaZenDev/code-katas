/* INSERT UPDATE DELETE */

USE Facturacion
GO

DECLARE @nCodigoCliente INT

DECLARE @cNombreCompleto VARCHAR(300) = 'Jean Carlos Poma Sánchez'
DECLARE @cNroDocumento VARCHAR(20) = '70213256'

INSERT INTO Clientes
(cNombreCompleto,	cNroDocumento,	lEstado)
VALUES
(@cNombreCompleto,	@cNroDocumento,	1)

SELECT 
	@nCodigoCliente = A.nCodigoCliente
FROM Clientes A
WHERE A.cNroDocumento  = @cNroDocumento

DECLARE @cNroRuc VARCHAR(20) = '10702132568'
DECLARE @cSerie VARCHAR(4) = 'F001'
DECLARE @cNumero VARCHAR(8) = '00000001'
DECLARE @nMontoBase DECIMAL(14,2) = 0
DECLARE @nIgv DECIMAL(14,2) = 0
DECLARE @nMontoTotal DECIMAL(14,2) = 0
DECLARE @nCodigoFactura INT = 0

INSERT INTO Facturas
(cNroRuc,		cSerie,		cNumero,		nCodigoCliente,
nMontoBase,		nIgv,		nMontoTotal,	lEstado)
VALUES
(@cNroRuc,		@cSerie,	@cNumero,		@nCodigoCliente,
@nMontoBase,	@nIgv,		@nMontoTotal,	1)

SELECT
	@nCodigoFactura = SCOPE_IDENTITY()

DECLARE @cDescripcion VARCHAR(200) = 'Turron'

INSERT INTO Productos
(cDescripcion,	lEstado)
VALUES
(@cDescripcion,	1)

SELECT
	@cDescripcion = 'Paneton'

INSERT INTO Productos
(cDescripcion,	lEstado)
VALUES
(@cDescripcion,	1)

SELECT
	@cDescripcion = 'Pizza'

INSERT INTO Productos
(cDescripcion,	lEstado)
VALUES
(@cDescripcion,	1)

DECLARE @nCodigoProducto INT
DECLARE @nPrecioUnitario DECIMAL(14,2)
DECLARE @nUnidades INT
DECLARE @nMontoTotalDetalle DECIMAL(14,2)

SELECT 
	@nCodigoProducto = A.nCodigoProducto
FROM Productos A
WHERE A.cDescripcion = 'Turron'

SELECT 
	@nPrecioUnitario = 10.00,
	@nUnidades = 20

SELECT 
	@nMontoTotalDetalle = @nPrecioUnitario * @nUnidades

INSERT INTO DetalleFactura
(nCodigoFactura,	nCodigoProducto,	nPrecioUnitario,
nUnidades,			nMontoTotal,		lEstado)
VALUES
(@nCodigoFactura,	@nCodigoProducto,	@nPrecioUnitario,
@nUnidades,			@nMontoTotalDetalle,	1)

SELECT 
	@nCodigoProducto = A.nCodigoProducto
FROM Productos A
WHERE A.cDescripcion = 'Paneton'

SELECT 
	@nPrecioUnitario = 30.00,
	@nUnidades = 5

SELECT 
	@nMontoTotalDetalle = @nPrecioUnitario * @nUnidades

INSERT INTO DetalleFactura
(nCodigoFactura,	nCodigoProducto,	nPrecioUnitario,
nUnidades,			nMontoTotal,		lEstado)
VALUES
(@nCodigoFactura,	@nCodigoProducto,	@nPrecioUnitario,
@nUnidades,			@nMontoTotalDetalle,	1)

SELECT 
	@nCodigoProducto = A.nCodigoProducto
FROM Productos A
WHERE A.cDescripcion = 'Pizza'

SELECT 
	@nPrecioUnitario = 40.00,
	@nUnidades = 10

SELECT 
	@nMontoTotalDetalle = @nPrecioUnitario * @nUnidades

INSERT INTO DetalleFactura
(nCodigoFactura,	nCodigoProducto,	nPrecioUnitario,
nUnidades,			nMontoTotal,		lEstado)
VALUES
(@nCodigoFactura,	@nCodigoProducto,	@nPrecioUnitario,
@nUnidades,			@nMontoTotalDetalle,	1)

SELECT 
	@nMontoTotal = SUM(A.nMontoTotal)
FROM DetalleFactura A

SELECT 
	@nMontoBase = @nMontoTotal / 1.18

SELECT 
	@nIgv = (@nMontoTotal / 1.18) * 0.18
		
UPDATE A
SET
	A.nMontoBase = @nMontoBase,
	A.nIgv = @nIgv,
	A.nMontoTotal = @nMontoTotal
FROM Facturas A
WHERE A.nCodigoFactura = @nCodigoFactura