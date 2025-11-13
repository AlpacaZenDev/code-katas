USE dbClientes
GO

DECLARE @tmpDatos TABLE
(
	id INT PRIMARY KEY IDENTITY(1,1),
	nCodigoGenero INT,
	cNombre VARCHAR(200),
	cApellido VARCHAR(200),
	dFechaNacimiento DATE,
	cNroDocumento VARCHAR(8)
)

DECLARE @inicio INT = 0

WHILE @inicio < 5000
BEGIN
	
	DECLARE @nCodigoGenero INT = (SELECT 
									dbo.RetornarGenero_FX(RAND()))

	DECLARE @cNombre VARCHAR(200) = (SELECT 
									dbo.RetornarNombre(RAND(), @nCodigoGenero))

	DECLARE @cApellido VARCHAR(200) = (SELECT
										dbo.RetornarApellido(RAND()))

	DECLARE @dFechaNacimiento DATE = (SELECT 
										dbo.RetornarFechaNacimiento(RAND()))

	DECLARE @cNroDocumento VARCHAR(8) = (SELECT 
											dbo.RetornarNroDocumento(RAND(), RAND()))

	INSERT INTO @tmpDatos
	SELECT 
		@nCodigoGenero, @cNombre, @cApellido, @dFechaNacimiento, @cNroDocumento

	SELECT 
		@inicio = @inicio + 1
END

SELECT 
	A.nCodigoGenero,
	COUNT(A.id)
FROM @tmpDatos A
GROUP BY A.nCodigoGenero

SELECT
	*
FROM Personas A

SELECT
	*
FROM PersonaNatural A

SELECT
	*
FROM PersonaNatural A
WHERE A.cPrimerNombre = A.cSegundoNombre

SELECT
	TOP 1 A.*
FROM PersonaNatural A
ORDER BY NEWID()

SELECT 
	A.*
FROM @tmpDatos A

EXEC InsertarPersonas_SP 100000

SELECT	
	DBO.RetornarNombre(51, 2)

SELECT 
	A.cNombres,
	COUNT(*)
FROM Personas A
GROUP BY A.cNombres
ORDER BY 2

SELECT 
	A.*
FROM Personas A
WHERE A.cNombres IS NULL

SELECT 
	A.*
FROM Personas A
WHERE A.cNombres = 'Carrasco Hidalgo, Marta Fernanda'

SELECT 
	A.cNumeroDocumento,
	COUNT(*)
FROM Personas A
GROUP BY A.cNumeroDocumento
ORDER BY 2 DESC

IF NOT EXISTS (SELECT 
					A.nCodigoPersona
				FROM Personas A
				WHERE A.cNumeroDocumento = '43627182')
BEGIN
	BREAK
END

SELECT 
	*
FROM Personas A
WHERE A.cNumeroDocumento = '22252271'