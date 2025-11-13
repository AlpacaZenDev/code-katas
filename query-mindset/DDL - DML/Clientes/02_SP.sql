USE dbClientes
GO

DROP PROCEDURE IF EXISTS InsertarPersona_SP
GO

CREATE PROCEDURE InsertarPersona_SP
AS
BEGIN

	DECLARE 
		@nCodigoPersona INT,
		@cNombres VARCHAR(300) = 'Jean Carlos Poma Sanchez',
		@nCodigoTipoDocumento INT = 1,
		@cNumeroDocumento VARCHAR(20)
--
	-- Bloque SQL para insertar personas
	DECLARE @FLAG BIT = 1
	WHILE @FLAG = 1
	BEGIN
		SELECT 
			@cNumeroDocumento = dbo.RetornarNroDocumento(RAND(), RAND())
		IF NOT EXISTS (SELECT 
							1
						FROM Personas A
						WHERE A.cNumeroDocumento = @cNumeroDocumento)
		BEGIN
			SET @FLAG = 0
		END
	END
--

	INSERT INTO Personas
	(cNombres,	nCodigoTipoDocumento,	cNumeroDocumento)
	VALUES
	(@cNombres,	@nCodigoTipoDocumento,	@cNumeroDocumento)

	SELECT 
		@nCodigoPersona = SCOPE_IDENTITY()

	DECLARE
		@nCodigoPersonaNatural INT,
		@cPrimerNombre VARCHAR(100),
		@cSegundoNombre VARCHAR(100),
		@cApellidoPaterno VARCHAR(100),
		@cApellidoMaterno VARCHAR(100),
		@nCodigoGenero INT,
		@dFechaNacimiento DATE,
		@nCodigoPrimerNombre INT,
		@nCodigoSegundoNombre INT

	SELECT 
		@nCodigoGenero = dbo.RetornarGenero_FX(RAND())	

	SELECT
		TOP 1 
		@nCodigoPrimerNombre = A.nCodigoNombreDisponible
	FROM NombresDisponibles A
	WHERE A.nCodigoGenero = @nCodigoGenero
	ORDER BY NEWID()

	SELECT
		TOP 1 
		@nCodigoSegundoNombre = A.nCodigoNombreDisponible
	FROM NombresDisponibles A
	WHERE A.nCodigoNombreDisponible != @nCodigoPrimerNombre
		AND A.nCodigoGenero = @nCodigoGenero
	ORDER BY NEWID()

	SELECT
		@nCodigoPrimerNombre = IIF(@nCodigoPrimerNombre > 50, @nCodigoPrimerNombre - 50, @nCodigoPrimerNombre)

	SELECT
		@nCodigoSegundoNombre = IIF(@nCodigoSegundoNombre > 50, @nCodigoSegundoNombre - 50, @nCodigoSegundoNombre)

	SELECT 
		@cPrimerNombre = dbo.RetornarNombre(@nCodigoPrimerNombre, @nCodigoGenero)		

	SELECT 
		@cSegundoNombre = dbo.RetornarNombre(@nCodigoSegundoNombre, @nCodigoGenero)		

	SELECT 
		@cApellidoPaterno = dbo.RetornarApellido(RAND())

	SELECT 
		@cApellidoMaterno = dbo.RetornarApellido(RAND())

	SELECT 
		@dFechaNacimiento = dbo.RetornarFechaNacimiento(RAND())

	INSERT INTO PersonaNatural
	(nCodigoPersona,	cPrimerNombre,	cSegundoNombre,		cApellidoPaterno,
	cApellidoMaterno,	nCodigoGenero,	dFechaNacimiento)
	VALUES
	(@nCodigoPersona,	@cPrimerNombre,	@cSegundoNombre,	@cApellidoPaterno,
	@cApellidoMaterno,	@nCodigoGenero,	@dFechaNacimiento)

	UPDATE A
	SET
		A.cNombres = @cApellidoPaterno + ' '  + @cApellidoMaterno + ', ' + @cPrimerNombre + ' ' + @cSegundoNombre
	FROM Personas A
	WHERE A.nCodigoPersona = @nCodigoPersona
	
END
GO

DROP PROCEDURE IF EXISTS InsertarPersonas_SP
GO

CREATE PROCEDURE InsertarPersonas_SP
	@n_CantidadPersonas INT
AS
BEGIN	
	DECLARE @inicio INT = 1
	WHILE @inicio <= @n_CantidadPersonas
	BEGIN
		EXEC InsertarPersona_SP
		SELECT 
			@inicio = @inicio + 1
		PRINT(@inicio)
	END
END
GO