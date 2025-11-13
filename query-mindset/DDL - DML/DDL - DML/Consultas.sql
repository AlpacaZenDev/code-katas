USE Facturacion
GO

DECLARE @texto1 VARCHAR(20) = 'Hola mundo',
		@texto2 CHAR(20) = 'Hola mundo'

SELECT 
	LEN(@texto1)

SELECT 
	LEN(@texto2)

DECLARE @texto3 VARCHAR(20) = '     Hola mundo     ',
		@texto4 CHAR(100) = '   Hola mundo   '

SELECT 
	@texto4, RTRIM(@texto3), LTRIM(@texto4), LTRIM(RTRIM(@texto4))

SELECT 
	LEN(@texto4), LEN(RTRIM(@texto3)), LEN(LTRIM(@texto4)), LEN(LTRIM(RTRIM(@texto4)))

DECLARE 
	@texto5 VARCHAR(20) = '     Hola mundo     '

SELECT 
	REPLACE(@texto5, ' ', '')

SELECT 
	LTRIM(RTRIM(REPLACE(@texto5, 'O', 'X')))

DECLARE 
	@texto6 VARCHAR(50) = 'Jean Carlos Poma Sanchez'

DECLARE @nombres VARCHAR(20) = (SELECT 
									SUBSTRING(@texto6, 1, 11))

SELECT 
	LEFT(@texto6, 4)

SELECT 
	RIGHT(@texto6, 7)

DECLARE 
	@texto7 VARCHAR(50) = 'Jean Carlos, Poma Sanchez'

SELECT 
	CHARINDEX(',', @texto7)

SELECT 
	SUBSTRING(@texto7, 1, CHARINDEX(',', @texto7) - 1)

SELECT 
	SUBSTRING(@texto7, CHARINDEX(',', @texto7) + 2, LEN(@texto7) - (CHARINDEX(',', @texto7) + 1))

DECLARE 
	@texto8 VARCHAR(50) = 'Max Luis, Ramos Quispe'

SELECT 
	CHARINDEX(',', @texto8)

SELECT 
	SUBSTRING(@texto8, 1, CHARINDEX(',', @texto8) - 1)

SELECT 
	SUBSTRING(@texto8, CHARINDEX(',', @texto8) + 2, LEN(@texto8) - (CHARINDEX(',', @texto8) + 1))

DECLARE @NombresSeparados VARCHAR(50) = (SELECT 
										SUBSTRING(@texto8, 1, CHARINDEX(',', @texto8) - 1))

SELECT 
	SUBSTRING(@NombresSeparados, 1, CHARINDEX(' ', @NombresSeparados))

SELECT 
	SUBSTRING(@NombresSeparados, CHARINDEX(' ', @NombresSeparados) + 1, LEN(@NombresSeparados) - CHARINDEX(' ', @NombresSeparados))

DECLARE @ApellidosSeparados VARCHAR(50) = (SELECT 
			SUBSTRING(@texto8, CHARINDEX(',', @texto8) + 2, LEN(@texto8) - (CHARINDEX(',', @texto8) + 1)))

SELECT 
	SUBSTRING(@ApellidosSeparados, 1, CHARINDEX(' ', @ApellidosSeparados))

SELECT 
	SUBSTRING(@ApellidosSeparados, CHARINDEX(' ', @ApellidosSeparados) + 1, LEN(@ApellidosSeparados) - CHARINDEX(' ', @ApellidosSeparados))
	
DECLARE 
	@texto9 VARCHAR(50) = 'Rosa Maria, Galarza Torres'

SELECT 
	CHARINDEX(',', @texto9)

SELECT 
	SUBSTRING(@texto9, 1, CHARINDEX(',', @texto9) - 1)

SELECT 
	SUBSTRING(@texto9, CHARINDEX(',', @texto9) + 2, LEN(@texto9) - (CHARINDEX(',', @texto9) + 1))

DECLARE @NombresSeparados1 VARCHAR(50) = (SELECT 
										SUBSTRING(@texto9, 1, CHARINDEX(',', @texto9) - 1))

SELECT 
	SUBSTRING(@NombresSeparados1, 1, CHARINDEX(' ', @NombresSeparados1))

SELECT 
	SUBSTRING(@NombresSeparados1, CHARINDEX(' ', @NombresSeparados1) + 1, LEN(@NombresSeparados1) - CHARINDEX(' ', @NombresSeparados1))

DECLARE @ApellidosSeparados1 VARCHAR(50) = (SELECT 
			SUBSTRING(@texto9, CHARINDEX(',', @texto9) + 2, LEN(@texto9) - (CHARINDEX(',', @texto9) + 1)))

SELECT 
	SUBSTRING(@ApellidosSeparados1, 1, CHARINDEX(' ', @ApellidosSeparados1))

SELECT 
	SUBSTRING(@ApellidosSeparados1, CHARINDEX(' ', @ApellidosSeparados1) + 1, LEN(@ApellidosSeparados1) - CHARINDEX(' ', @ApellidosSeparados1))

--EXEC RetornaNombres_SP

--SELECT	
--	A.*
--FROM TipoComprobante A

--IF EXISTS (SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.cSerie = 'FA01'
--	AND A.cNumero = '0000222s1')
--BEGIN
--	SELECT 
--		'Existe el dato'
--END

--SELECT	
--	A.*
--FROM Comprobantes A

--SELECT 
--	*
--FROM Clientes A
--WHERE A.nCodigoCliente = 47400

--SELECT 
--	COUNT(A.nCodigoTipoComprobante)
--FROM TipoComprobante A

--SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.nCodigoTipoComprobante = 1

--SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.nCodigoTipoComprobante = 2

--SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.nCodigoTipoComprobante = 3

--SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.nCodigoTipoComprobante = 4

--SELECT	
--	A.*
--FROM Comprobantes A
--WHERE A.nCodigoTipoComprobante = 5

--/* SUM */
--SELECT 
--	SUM(A.nMontoBase) nMontoBase
--FROM Facturas A

--SELECT 
--	SUM(A.nIgv) nIgv
--FROM Facturas A

--SELECT 
--	SUM(A.nMontoTotal) nMontoTotal
--FROM Facturas A

--/* AVG */
--SELECT 
--	AVG(A.nMontoTotal) nMontoTotal
--FROM Facturas A

--/* MIN */
--SELECT 
--	MIN(A.nMontoTotal) nMontoTotal
--FROM Facturas A

--/* MAX */
--SELECT 
--	MAX(A.nMontoTotal) nMontoTotal
--FROM Facturas A

--/* COUNT */
--SELECT 
--	COUNT(*)
--FROM Facturas A

---- =====================

--SELECT 
--	*
--FROM Comprobantes A
--INNER JOIN Clientes B
--	ON A.nCodigoCliente = B.nCodigoCliente
--WHERE B.cNombreCompleto LIKE '%Luzmila%'

--SELECT 
--	B.*, C.*
--FROM Comprobantes A
--INNER JOIN DetalleComprobante B
--	ON A.nCodigoComprobante = B.nCodigoComprobante
--INNER JOIN Productos C
--	ON B.nCodigoProducto = C.nCodigoProducto
--WHERE C.cDescripcion LIKE 'Pastel'