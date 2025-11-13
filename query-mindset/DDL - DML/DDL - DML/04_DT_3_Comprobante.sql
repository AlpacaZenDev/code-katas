USE Facturacion
GO

/* ======================== */
/* Determinar el cliente */
/* ======================== */

DECLARE @nCodigoCliente INT
DECLARE @nCantidadClientes INT

SELECT 
	@nCantidadClientes = (SELECT 
							COUNT(A.nCodigoCliente)
							FROM Clientes A)

SELECT 
	@nCodigoCliente = RAND() * @nCantidadClientes + 1

SELECT 
	'Soy el cliente seleccionado para la Comprobante', A.*
FROM Clientes A
WHERE A.nCodigoCliente = @nCodigoCliente

/* ======================== */
/* Determinar el producto */
/* ======================== */

DECLARE @nCodigoProducto INT
DECLARE @nCantidadProductos INT

SELECT 
	@nCantidadProductos = (SELECT 
							COUNT(A.nCodigoProducto)
						FROM Productos A)

SELECT 
	@nCodigoProducto = RAND() * @nCantidadProductos + 1

SELECT 
	'Soy el producto seleccionado para la Comprobante', A.*
FROM Productos A
WHERE A.nCodigoProducto = @nCodigoProducto

/* ===================== */
/* Determinar la Comprobante */
/* ===================== */

DECLARE @nCodigoTipoComprobante INT = 0
DECLARE @cSerie VARCHAR(4) = ''
DECLARE @cNumero VARCHAR(20) = ''
DECLARE @cNroRuc VARCHAR(20) = '104326754398'
DECLARE @nCodigoComprobante INT

DECLARE @nCantidadTipoComprobante INT -- Variable auxiliar

SELECT 
	@nCantidadTipoComprobante = (SELECT 
									COUNT(A.nCodigoTipoComprobante)
								FROM TipoComprobante A)

SELECT 
	@nCodigoTipoComprobante = RAND() * @nCantidadTipoComprobante + 1

SELECT 
	@cSerie = A.cSerieActual
FROM TipoComprobante A
WHERE A.nCodigoTipoComprobante = @nCodigoTipoComprobante

DECLARE @cNumeroInicial VARCHAR(10) -- Variable auxiliar

SELECT 
	@cNumeroInicial = ISNULL((SELECT 
						COUNT(A.nCodigoComprobante)
						FROM Comprobantes A
						WHERE A.cSerie = @cSerie), 0) + 1

SELECT 
	@cNumero = RIGHT('0000000' + @cNumeroInicial, 8)

INSERT INTO Comprobantes
(nCodigoTipoComprobante,	cNroRuc,	cSerie,		cNumero,	nCodigoCliente,		lEstado)
VALUES
(@nCodigoTipoComprobante,	@cNroRuc,	@cSerie,	@cNumero,	@nCodigoCliente,	1)

SELECT 
	@nCodigoComprobante = SCOPE_IDENTITY()

SELECT 
	'Datos de la Comprobante',
	A.cNroRuc,
	A.cSerie,
	A.cNumero,
	A.nCodigoCliente
FROM Comprobantes A
WHERE A.cSerie = @cSerie	
	AND A.cNumero = @cNumero

/* ======================================= */
/* Determinar el detalle de la Comprobante */
/* ======================================= */

DECLARE @nUnidades INT 
DECLARE @nMontoTotal DECIMAL(14,2)
DECLARE @nPrecioUnitario DECIMAL(14,2)

SELECT 
	@nPrecioUnitario = A.nPrecioUnitario
FROM Productos A
WHERE A.nCodigoProducto = @nCodigoProducto

SELECT 
	@nUnidades = RAND()*10 + 1

SELECT 
	@nMontoTotal = @nPrecioUnitario * @nUnidades

SELECT 
	@nCodigoComprobante, @nUnidades, @nMontoTotal

INSERT INTO DetalleComprobante
(nCodigoComprobante,	nCodigoProducto,	nUnidades,		nMontoTotal,	lEstado)
VALUES
(@nCodigoComprobante,	@nCodigoProducto,	@nUnidades,		@nMontoTotal,		1)

/* ===================== */
/* Actualizar la Comprobante */
/* ===================== */

DECLARE @nMontoTotalComprobante DECIMAL(14,2)

SELECT 
	@nMontoTotalComprobante = (SELECT 
							SUM(A.nMontoTotal)
						FROM DetalleComprobante A
						WHERE A.nCodigoComprobante = @nCodigoComprobante)

UPDATE A
SET 
	A.nMontoBase = @nMontoTotalComprobante / 1.18,
	A.nIgv = (@nMontoTotalComprobante / 1.18) * 18 / 100,
	A.nMontoTotal = @nMontoTotalComprobante
FROM Comprobantes A
WHERE A.nCodigoComprobante = @nCodigoComprobante