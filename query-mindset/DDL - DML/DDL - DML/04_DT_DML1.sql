/* INSERT UPDATE DELETE (TRUNCATE) */
USE Facturacion
GO
-- ==============================
--		Clasica o directa
--
--		INSERT INTO Clientes
--		(cNombreCompleto, cNroDocumento)
--		VALUES
--		('Jean Carlos Poma Sánchez', '42153478')
-- ==============================

-- ==============================
--		Variables (1)

--		DECLARE @cNombreCompleto VARCHAR(300) = 'Jean Carlos Poma Sánchez',
--				@cNroDocumento VARCHAR(20) = '42153478'

--		INSERT INTO Clientes
--		(cNombreCompleto, cNroDocumento)
--		VALUES
--		(@cNombreCompleto, @cNroDocumento)
-- ==============================

-- ==============================
--		Variables (2)

--		DECLARE @cNombreCompleto VARCHAR(300),
--				@cNroDocumento VARCHAR(20)

--		SELECT 
--			@cNombreCompleto = 'Jean Carlos Poma Sánchez',
--			@cNroDocumento = '42153478'

--		INSERT INTO Clientes
--		(cNombreCompleto, cNroDocumento)
--		VALUES
--		(@cNombreCompleto, @cNroDocumento)

-- ==============================
--		Mediante "Select"

DECLARE @cNombreCompleto VARCHAR(300),
		@cNroDocumento VARCHAR(20)

SELECT 
	@cNombreCompleto = 'Jean Carlos Poma Sánchez',
	@cNroDocumento = '42153478'

INSERT INTO Clientes
SELECT 
	@cNombreCompleto, @cNroDocumento

DECLARE @cDescripcion VARCHAR(200)

SELECT 
	@cDescripcion = 'Turrón'

INSERT INTO Productos
SELECT 
	@cDescripcion, 1

DECLARE @nCodigoFactura INT,
		@nCodigoProducto INT,
		@nPrecioUnitario DECIMAL(14,2),
		@nUnidades INT,
		@nMontoTotal DECIMAL(14,2)

SELECT 
	@nCodigoFactura = 0,
	@nCodigoProducto = 1,
	@nPrecioUnitario = 20.00,
	@nUnidades = 5

SELECT		
	@nMontoTotal = @nPrecioUnitario * @nUnidades

INSERT INTO DetalleFactura
SELECT 
	@nCodigoFactura, @nCodigoProducto, @nPrecioUnitario, @nUnidades, @nMontoTotal, 1

DECLARE @cNroRuc VARCHAR(20),
		@cSerie VARCHAR(4),
		@cNumero VARCHAR(8),
		@nCodigoCliente INT,
		@nMontoBase DECIMAL(14,2),
		@nIgv DECIMAL(14,2)

SELECT 
	@cNroRuc = '10421534787',
	@cSerie = 'F001',
	@cNumero = '00000001',
	@nCodigoCliente = 1

SELECT 
	@nMontoBase = @nMontoTotal / 1.18

SELECT 
	@nIgv = @nMontoTotal - @nMontoBase

INSERT INTO Facturas
SELECT 
	@cNroRuc, @cSerie, @cNumero, @nCodigoCliente, @nMontoBase, @nIgv, @nMontoTotal, 1

UPDATE A
SET
	A.nCodigoFactura = 1
FROM DetalleFactura A