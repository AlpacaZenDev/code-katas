USE Facturacion
GO

DROP PROCEDURE IF EXISTS RetornarNombresVaron_SP
GO

CREATE PROCEDURE RetornarNombresVaron_SP
AS
BEGIN
	
	DECLARE @tmpNombre TABLE
	(
		nCodigoNombre INT PRIMARY KEY IDENTITY(1,1),
		cDescripcion VARCHAR(100)
	)

	INSERT INTO @tmpNombre
	(cDescripcion)
	VALUES
	('Liam'),
	('Thiago'),
	('Dylan'),
	('Gael'),
	('Mateo'),
	('Luis'),
	('Juan'),
	('Axel'),
	('Ian'),
	('Ángel'),
	('Santiago'),
	('Lucas'),
	('Carlos'),
	('José'),
	('Iker'),
	('Gabriel'),
	('Mathias'),
	('Sebastián'),
	('Diego'),
	('Joaquín'),
	('Daniel'),
	('David'),
	('Álvaro'),
	('Antonio'),
	('Emilio'),
	('Felipe'),
	('Javier'),
	('Marco'),
	('Samuel'),
	('Ricardo'),
	('Fernando'),
	('Jean'),
	('Eduardo'),
	('Raúl'),
	('Miguel'),
	('Jorge'),
	('Pedro'),
	('Víctor'),
	('Óscar'),
	('Hugo'),
	('Héctor'),
	('Manuel'),
	('Nicolás'),
	('Owen'),
	('Martín'),
	('Roberto'),
	('Francisco'),
	('Gilberto'),
	('Ignacio'),
	('Sergio')

	DECLARE @nCodigoNombre1 INT
	DECLARE @nCodigoNombre2 INT
	DECLARE @cPrimerNombre VARCHAR(100)
	DECLARE @cSegundoNombre VARCHAR(100)
	DECLARE @nCantidadNombres INT
	DECLARE @lContinuar BIT = 1

	SELECT 
		@nCantidadNombres = (SELECT 
							COUNT(A.nCodigoNombre)
						FROM @tmpNombre A)

	SELECT 
		@nCodigoNombre1 = RAND() * @nCantidadNombres + 1

	SELECT	
		@cPrimerNombre = A.cDescripcion
	FROM @tmpNombre A
	WHERE A.nCodigoNombre = @nCodigoNombre1

	WHILE @lContinuar = 1
	BEGIN
		SELECT 
			@nCodigoNombre2 = RAND() * @nCantidadNombres + 1

		IF @nCodigoNombre1 != @nCodigoNombre2
		BEGIN
			SELECT 
				@lContinuar = 0
		END
	END

	SELECT	
		@cSegundoNombre = A.cDescripcion
	FROM @tmpNombre A
	WHERE A.nCodigoNombre = @nCodigoNombre2

	SELECT 
		 CONCAT(@cPrimerNombre, ' ', @cSegundoNombre) AS 'cNombres'
END
GO

DROP PROCEDURE IF EXISTS RetornarNombresMujer_SP
GO

CREATE PROCEDURE RetornarNombresMujer_SP
AS
BEGIN

	DECLARE @tmpNombres TABLE
	(
		nCodigoNombre INT PRIMARY KEY IDENTITY(1,1),
		cDescripcion VARCHAR(100)
	)

	INSERT INTO @tmpNombres
	(cDescripcion)
	VALUES
	('Mía'),
	('Alessia'),
	('Camila'),
	('Danna'),
	('Zoe'),
	('Luciana'),
	('Aitana'),
	('María'),
	('Briana'),
	('Luz'),
	('Ariana'),
	('Valentina'),
	('Luana'),
	('Sofía'),
	('Emma'),
	('Antonella'),
	('Emily'),
	('Lía'),
	('Kiara'),
	('Ana'),
	('Isabel'),
	('Renata'),
	('Juliana'),
	('Gabriela'),
	('Carmen'),
	('Natalia'),
	('Valeria'),
	('Andrea'),
	('Carla'),
	('Paola'),
	('Fernanda'),
	('Victoria'),
	('Mariana'),
	('Margarita'),
	('Ruth'),
	('Diana'),
	('Elizabeth'),
	('Milagros'),
	('Laura'),
	('Lina'),
	('Verónica'),
	('Susana'),
	('Marta'),
	('Patricia'),
	('Ivana'),
	('Carla'),
	('Alejandra'),
	('Natividad'),
	('Lourdes'),
	('Jessica')

	DECLARE @nCodigoNombre1 INT
	DECLARE @nCodigoNombre2 INT
	DECLARE @nCantidadNombres INT
	DECLARE @cPrimerNombre VARCHAR(100)
	DECLARE @cSegunNombre VARCHAR(100)
	DECLARE @lContinuar BIT = 1

	SELECT 
		@nCantidadNombres = (SELECT 
								COUNT(A.nCodigoNombre)
							FROM @tmpNombres A)

	SELECT 
		@nCodigoNombre1 = RAND() * @nCantidadNombres + 1

	SELECT 
		@cPrimerNombre = A.cDescripcion
	FROM @tmpNombres A
	WHERE A.nCodigoNombre = @nCodigoNombre1

	WHILE @lContinuar = 1
	BEGIN
		SELECT 
			@nCodigoNombre2 = RAND() * @nCantidadNombres + 1
		IF @nCodigoNombre1 != @nCodigoNombre2
		BEGIN
			SELECT 
				@lContinuar = 0
		END
	END

	SELECT 
		@cSegunNombre = A.cDescripcion
	FROM @tmpNombres A
	WHERE A.nCodigoNombre = @nCodigoNombre2

	SELECT 
		CONCAT(@cPrimerNombre, ' ', @cSegunNombre) AS 'cNombres'

END
GO

DROP PROCEDURE IF EXISTS RetornaNombres_SP
GO

CREATE PROCEDURE RetornaNombres_SP
AS
BEGIN

	DECLARE @tmpGeneros TABLE
	(
		nCodigoGenero INT PRIMARY KEY IDENTITY(1,1),
		cDescripcion VARCHAR(100),
		cSimbolo CHAR(1),
		lEstado BIT
	)

	INSERT INTO @tmpGeneros
	(cDescripcion,	cSimbolo,	lEstado)
	VALUES
	('Femenino',	'F',	1),
	('Masculino',	'M',	1)

	DECLARE @nCodigoGenero INT 
	DECLARE @nCantidadGeneros INT
	DECLARE @cSimbolo CHAR(1)

	SELECT 
		@nCantidadGeneros = (SELECT 
									COUNT(A.nCodigoGenero)
								FROM @tmpGeneros A)

	SELECT 
		@nCodigoGenero = RAND() * @nCantidadGeneros + 1

	SELECT 
		@cSimbolo = A.cSimbolo
	FROM @tmpGeneros A
	WHERE A.nCodigoGenero = @nCodigoGenero

	SELECT 
		@cSimbolo AS cSimbolo

	IF @cSimbolo = 'F'
	BEGIN
		EXEC RetornarNombresMujer_SP
	END
	ELSE
	BEGIN
		EXEC RetornarNombresVaron_SP
	END
END
GO