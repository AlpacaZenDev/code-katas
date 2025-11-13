USE dbClientes
GO

DROP FUNCTION IF EXISTS RetornarGenero_FX
GO

CREATE FUNCTION dbo.RetornarGenero_FX(@nNumeroAleatorio DECIMAL(14,3))
RETURNS INT
AS
BEGIN	
	DECLARE @nCodigoGenero INT 
	DECLARE @nCantidadGeneros INT

	SELECT 
		@nCantidadGeneros = (SELECT 
									COUNT(A.nCodigoGenero)
								FROM Generos A)
	SELECT 
		@nCodigoGenero = FLOOR(@nNumeroAleatorio * @nCantidadGeneros) + 1
	RETURN IIF(@nCodigoGenero > @nCantidadGeneros, @nCantidadGeneros, @nCodigoGenero)
END
GO

DROP FUNCTION IF EXISTS dbo.RetornarNombre
GO

CREATE FUNCTION dbo.RetornarNombre(@nCodigoNombreDisponible INT, @nCodigoGenero INT)
RETURNS VARCHAR(200)
AS
BEGIN
	
	DECLARE @cNombre VARCHAR(200)

	DECLARE @tmpNombresGenero TABLE
	(
		id INT PRIMARY KEY IDENTITY(1,1),
		cNombre VARCHAR(100)
	)
	INSERT INTO @tmpNombresGenero
	SELECT 
		A.cNombre
	FROM NombresDisponibles A
	WHERE A.nCodigoGenero = @nCodigoGenero
	
	SELECT 
		@cNombre = A.cNombre
	FROM @tmpNombresGenero A
	WHERE A.id = @nCodigoNombreDisponible	

	RETURN @cNombre

END 
GO

DROP FUNCTION IF EXISTS dbo.RetornarApellido
GO

CREATE FUNCTION dbo.RetornarApellido(@nNumeroAleatorio DECIMAL(14,4))
RETURNS VARCHAR(200)
AS
BEGIN
	DECLARE @cApellido VARCHAR(200)
	DECLARE @nCodigoApellidoDisponible INT
	DECLARE @nCantidadApellidos INT

	SELECT 
		@nCantidadApellidos = (SELECT 
								COUNT(A.nCodigoApellidoDisponible)
								FROM ApellidosDisponibles A) 

	SELECT 
		@nCodigoApellidoDisponible = @nNumeroAleatorio * @nCantidadApellidos + 1

	SELECT @nCodigoApellidoDisponible = IIF(@nCodigoApellidoDisponible > @nCantidadApellidos, @nCantidadApellidos, @nCodigoApellidoDisponible)

	SELECT 
		@cApellido = A.cApellido
	FROM ApellidosDisponibles A
	WHERE A.nCodigoApellidoDisponible = @nCodigoApellidoDisponible	

	RETURN @cApellido

END 
GO

DROP FUNCTION IF EXISTS dbo.RetornarFechaNacimiento
GO

CREATE FUNCTION dbo.RetornarFechaNacimiento(@nNumeroAleatorio DECIMAL(14,6))
RETURNS DATE
AS
BEGIN
	
	DECLARE @dFechaNacimiento DATE

	DECLARE @nCantidadDias INT = @nNumeroAleatorio*83*365 + 18*365 + 4

	SELECT 
		@dFechaNacimiento = DATEADD(DAY, @nCantidadDias*-1, GETDATE())

	RETURN @dFechaNacimiento
END
GO

DROP FUNCTION IF EXISTS dbo.RetornarNroDocumento
GO

CREATE FUNCTION dbo.RetornarNroDocumento(@nNumeroAleatorio1 DECIMAL(14,4), @nNumeroAleatorio2 DECIMAL(14,4))
RETURNS VARCHAR(8)
AS
BEGIN
	DECLARE @cNroDocumento VARCHAR(8)

	DECLARE @cNroDocumento1 VARCHAR(4) = ''
	DECLARE @cNroDocumento2 VARCHAR(4) = ''

	DECLARE @nNumeroObtenido1 INT
	DECLARE @nNumeroObtenido2 INT

	SELECT 
		@nNumeroObtenido1 = @nNumeroAleatorio1*9900 + 100

	SELECT 
		@cNroDocumento1 = RIGHT('0000' + CAST(@nNumeroObtenido1 AS VARCHAR(4)), 4)

	SELECT 
		@nNumeroObtenido2 = @nNumeroAleatorio2*9999 + 1

	SELECT 
		@cNroDocumento2 = RIGHT('0000' + CAST(@nNumeroObtenido2 AS VARCHAR(4)), 4)

	SELECT 
		@cNroDocumento = @cNroDocumento1 + @cNroDocumento2

	RETURN @cNroDocumento 
END
