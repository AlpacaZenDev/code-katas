USE Facturacion
GO

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
	@cPrimerNombre, @cSegundoNombre